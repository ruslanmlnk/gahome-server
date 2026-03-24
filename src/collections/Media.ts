import type { CollectionConfig } from 'payload'

export const Media: CollectionConfig = {
  slug: 'media',
  access: {
    read: () => true,
  },
  upload: {
    staticDir: 'media',
    adminThumbnail: 'thumbnail',
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
