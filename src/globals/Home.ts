import type { GlobalConfig } from 'payload'
import { seoFields } from '../fields/seo'

export const Home: GlobalConfig = {
  slug: 'home',
  label: 'Home',
  access: {
    read: () => true,
  },
  graphQL: { name: 'Home' },
  fields: [
    seoFields,

    {
      name: 'gridSection',
      label: 'Grid Section',
      type: 'group',
      fields: [
        {
          name: 'item1',
          label: 'Block 1',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            { name: 'image', label: 'Image', type: 'upload', relationTo: 'media', required: true },
          ],
        },
        {
          name: 'item2',
          label: 'Block 2',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            { name: 'image', label: 'Image', type: 'upload', relationTo: 'media', required: true },
          ],
        },
        {
          name: 'item3',
          label: 'Block 3',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            { name: 'image', label: 'Image', type: 'upload', relationTo: 'media', required: true },
          ],
        },
        {
          name: 'item4',
          label: 'Block 4',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            { name: 'image', label: 'Image', type: 'upload', relationTo: 'media', required: true },
          ],
        },
        {
          name: 'item5',
          label: 'Block 5',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            { name: 'image', label: 'Image', type: 'upload', relationTo: 'media', required: true },
          ],
        },
        {
          name: 'item6',
          label: 'Block 6',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            { name: 'image', label: 'Image', type: 'upload', relationTo: 'media', required: true },
          ],
        },
        {
          name: 'item7',
          label: 'Block 7',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            { name: 'image', label: 'Image', type: 'upload', relationTo: 'media', required: true },
          ],
        },
      ],
    },
  ],
}
