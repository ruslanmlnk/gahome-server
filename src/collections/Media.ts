import type { CollectionConfig } from 'payload'
import fs from 'fs'
import path from 'path'

export const Media: CollectionConfig = {
  slug: 'media',
  access: {
    read: () => true,
  },
  hooks: {
    afterChange: [
      ({ doc, req, operation }) => {
        if (req.file?.tempFilePath && req.file.data?.length === 0) {
          try {
            const mediaDir = path.resolve(process.cwd(), 'media')
            const finalPath = path.join(mediaDir, doc.filename)
            fs.copyFileSync(req.file.tempFilePath, finalPath)
          } catch (err) {
            req.payload.logger.error(`Failed to copy temp media file: ${(err as Error).message || err}`)
          }
        }
      }
    ]
  },
  upload: {
    staticDir: 'media',
    adminThumbnail: 'thumbnail',
    modifyResponseHeaders: ({ headers }) => {
      const nextHeaders = new Headers(headers)

      nextHeaders.set('Cache-Control', 'public, max-age=2678400, s-maxage=2678400, stale-while-revalidate=86400, immutable')

      return nextHeaders
    },
    formatOptions: {
      format: 'webp',
      options: {
        quality: 82,
      },
    },
    imageSizes: [
      {
        name: 'thumbnail',
        width: 400,
        height: undefined,
        withoutEnlargement: true,
        formatOptions: {
          format: 'webp',
          options: {
            quality: 76,
          },
        },
      },
      {
        name: 'card',
        width: 960,
        height: undefined,
        withoutEnlargement: true,
        formatOptions: {
          format: 'webp',
          options: {
            quality: 80,
          },
        },
      },
      {
        name: 'tablet',
        width: 1440,
        height: undefined,
        withoutEnlargement: true,
        formatOptions: {
          format: 'webp',
          options: {
            quality: 82,
          },
        },
      },
      {
        name: 'desktop',
        width: 1920,
        height: undefined,
        withoutEnlargement: true,
        formatOptions: {
          format: 'webp',
          options: {
            quality: 84,
          },
        },
      },
    ],
  },
  fields: [
    {
      name: 'alt',
      type: 'text',
      required: false,
    },
    {
      name: 'videoPoster',
      label: 'Video Poster',
      type: 'upload',
      relationTo: 'media',
      admin: {
        description: 'Select the poster image used for video previews.',
        condition: (_, siblingData) =>
          typeof siblingData?.mimeType === 'string' && siblingData.mimeType.startsWith('video/'),
      },
    },
  ],
}
