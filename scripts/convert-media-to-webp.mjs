import 'dotenv/config'

import fs from 'fs/promises'
import path from 'path'
import pg from 'pg'
import sharp from 'sharp'
import { fileURLToPath } from 'url'

const { Client } = pg

const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(__filename)
const projectRoot = path.resolve(__dirname, '..')
const mediaDir = path.join(projectRoot, 'media')

const rasterMimeTypes = new Set(['image/jpeg', 'image/jpg', 'image/png'])
const rasterExtensions = new Set(['.jpg', '.jpeg', '.png'])

function toSafeBaseName(filename) {
  const parsed = path.parse(filename)

  return (
    parsed.name
      .normalize('NFKD')
      .replace(/[^\w.-]+/g, '-')
      .replace(/-+/g, '-')
      .replace(/^-|-$/g, '')
      .toLowerCase() || 'image'
  )
}

async function main() {
  if (!process.env.DATABASE_URI) {
    throw new Error('DATABASE_URI is not set')
  }

  const client = new Client({
    connectionString: process.env.DATABASE_URI,
  })

  await client.connect()

  const result = await client.query(`
    select id, filename, mime_type
    from media
    where mime_type in ('image/jpeg', 'image/jpg', 'image/png')
    order by id
  `)

  if (!result.rows.length) {
    console.log('No JPEG or PNG media records found.')
    await client.end()
    return
  }

  const usedTargetFilenames = new Set()
  const conversions = []

  try {
    for (const row of result.rows) {
      if (!row.filename || !rasterMimeTypes.has(row.mime_type)) {
        continue
      }

      const sourceFilename = row.filename
      const sourcePath = path.join(mediaDir, sourceFilename)

      await fs.access(sourcePath)

      const baseName = toSafeBaseName(sourceFilename)
      let targetFilename = `${baseName}-${row.id}.webp`
      let suffix = 1

      while (usedTargetFilenames.has(targetFilename)) {
        suffix += 1
        targetFilename = `${baseName}-${row.id}-${suffix}.webp`
      }

      usedTargetFilenames.add(targetFilename)

      const targetPath = path.join(mediaDir, targetFilename)

      await fs.rm(targetPath, { force: true })
      await sharp(sourcePath).rotate().webp({ quality: 86, effort: 6 }).toFile(targetPath)

      const metadata = await sharp(targetPath).metadata()
      const stat = await fs.stat(targetPath)

      conversions.push({
        id: row.id,
        sourceFilename,
        sourcePath,
        targetFilename,
        targetPath,
        filesize: stat.size,
        width: metadata.width ?? null,
        height: metadata.height ?? null,
      })
    }

    await client.query('BEGIN')

    for (const conversion of conversions) {
      await client.query(
        `
          update media
          set
            filename = $1,
            mime_type = 'image/webp',
            filesize = $2,
            width = $3,
            height = $4,
            updated_at = now()
          where id = $5
        `,
        [
          conversion.targetFilename,
          conversion.filesize,
          conversion.width,
          conversion.height,
          conversion.id,
        ],
      )
    }

    await client.query('COMMIT')
  } catch (error) {
    await client.query('ROLLBACK')

    for (const conversion of conversions) {
      await fs.rm(conversion.targetPath, { force: true })
    }

    throw error
  } finally {
    await client.end()
  }

  for (const conversion of conversions) {
    await fs.rm(conversion.sourcePath, { force: true })
  }

  const mediaFiles = await fs.readdir(mediaDir)

  for (const file of mediaFiles) {
    const ext = path.extname(file).toLowerCase()

    if (rasterExtensions.has(ext)) {
      await fs.rm(path.join(mediaDir, file), { force: true })
    }
  }

  console.log(`Converted ${conversions.length} media records to WebP.`)
}

main().catch((error) => {
  console.error(error)
  process.exitCode = 1
})
