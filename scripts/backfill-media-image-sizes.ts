import 'dotenv/config'

import fs from 'fs/promises'
import path from 'path'
import { fileURLToPath } from 'url'

import config from '../src/payload.config'
import { getPayload } from 'payload'

const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(__filename)
const projectRoot = path.resolve(__dirname, '..')
const mediaDir = path.join(projectRoot, 'media')

async function main() {
  const payload = await getPayload({
    config,
  })

  const result = await payload.find({
    collection: 'media',
    depth: 0,
    limit: 500,
    pagination: false,
    where: {
      mimeType: {
        contains: 'image/',
      },
    },
  })

  const docs = Array.isArray(result.docs) ? result.docs : []

  let processed = 0
  let skipped = 0

  for (const doc of docs) {
    if (!doc.filename) {
      skipped += 1
      continue
    }

    const filePath = path.join(mediaDir, doc.filename)

    try {
      await fs.access(filePath)
    } catch {
      console.warn(`Skipping media ${doc.id}: file not found at ${filePath}`)
      skipped += 1
      continue
    }

    const videoPosterId =
      typeof doc.videoPoster === 'object' && doc.videoPoster
        ? doc.videoPoster.id
        : doc.videoPoster ?? undefined

    await payload.update({
      collection: 'media',
      id: doc.id,
      data: {
        alt: doc.alt ?? undefined,
        ...(videoPosterId ? { videoPoster: videoPosterId } : {}),
      },
      depth: 0,
      filePath,
      overwriteExistingFiles: true,
    })

    processed += 1
    console.log(`Processed ${processed}/${docs.length}: media ${doc.id} (${doc.filename})`)
  }

  console.log(`Done. Processed ${processed}, skipped ${skipped}.`)
  process.exit(0)
}

main().catch((error) => {
  console.error(error)
  process.exit(1)
})
