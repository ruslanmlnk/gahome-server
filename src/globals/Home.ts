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
            {
              name: 'image',
              label: 'Media',
              type: 'upload',
              relationTo: 'media',
              required: true,
              admin: {
                description: 'Choose an image or a video. For videos, set the poster inside the selected Media item.',
              },
            },
          ],
        },
        {
          name: 'item2',
          label: 'Block 2',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            {
              name: 'image',
              label: 'Media',
              type: 'upload',
              relationTo: 'media',
              required: true,
              admin: {
                description: 'Choose an image or a video. For videos, set the poster inside the selected Media item.',
              },
            },
          ],
        },
        {
          name: 'item3',
          label: 'Block 3',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            {
              name: 'image',
              label: 'Media',
              type: 'upload',
              relationTo: 'media',
              required: true,
              admin: {
                description: 'Choose an image or a video. For videos, set the poster inside the selected Media item.',
              },
            },
          ],
        },
        {
          name: 'item4',
          label: 'Block 4',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            {
              name: 'image',
              label: 'Media',
              type: 'upload',
              relationTo: 'media',
              required: true,
              admin: {
                description: 'Choose an image or a video. For videos, set the poster inside the selected Media item.',
              },
            },
          ],
        },
        {
          name: 'item5',
          label: 'Block 5',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            {
              name: 'image',
              label: 'Media',
              type: 'upload',
              relationTo: 'media',
              required: true,
              admin: {
                description: 'Choose an image or a video. For videos, set the poster inside the selected Media item.',
              },
            },
          ],
        },
        {
          name: 'item6',
          label: 'Block 6',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            {
              name: 'image',
              label: 'Media',
              type: 'upload',
              relationTo: 'media',
              required: true,
              admin: {
                description: 'Choose an image or a video. For videos, set the poster inside the selected Media item.',
              },
            },
          ],
        },
        {
          name: 'item7',
          label: 'Block 7',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            {
              name: 'image',
              label: 'Media',
              type: 'upload',
              relationTo: 'media',
              required: true,
              admin: {
                description: 'Choose an image or a video. For videos, set the poster inside the selected Media item.',
              },
            },
          ],
        },
        {
          name: 'item8',
          label: 'Block 8',
          type: 'group',
          fields: [
            { name: 'title', label: 'Text', type: 'text', required: true },
            {
              name: 'image',
              label: 'Media',
              type: 'upload',
              relationTo: 'media',
              required: true,
              admin: {
                description: 'Choose an image or a video. For videos, set the poster inside the selected Media item.',
              },
            },
            {
              name: 'href',
              label: 'Link',
              type: 'text',
              required: false,
              admin: {
                placeholder: '/new-page',
                description: 'Optional link for this full-width block.',
              },
            },
          ],
        },
      ],
    },
  ],
}
