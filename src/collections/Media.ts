import type { CollectionConfig } from 'payload'

export const Media: CollectionConfig = {
  slug: 'media',
  access: {
    read: () => true,
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
      validate: (
        value: unknown,
        { siblingData }: { siblingData?: { mimeType?: string | null } },
      ) => {
        if (
          typeof siblingData?.mimeType === 'string' &&
          siblingData.mimeType.startsWith('video/') &&
          !value
        ) {
          return 'Poster is required for video files.'
        }

        return true
      },
    },
  ],
  upload: true,
}
