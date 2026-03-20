import type { CollectionConfig } from 'payload'
import { seoFields } from '../fields/seo'


const Pages: CollectionConfig = {
  slug: 'pages',
  access: {
    read: () => true,
  },
  labels: {
    singular: 'Page',
    plural: 'Pages',
  },
  fields: [
    seoFields,
    {
      name: 'main_title',
      type: 'text',
      required: false,
    },
    {
      name: 'slug',
      type: 'text',
      unique: true,
      required: true,
    },
    {
      name: 'hero_image',
      type: 'upload',
      relationTo: 'media',
      required: false,
      admin: { description: 'Главная картинка' },
    },
    {
      name: 'gridcont',
      type: 'array',
      labels: { singular: 'Card', plural: 'Cards' },
      fields: [
        { name: 'title', type: 'text', required: true },
        { name: 'description', type: 'textarea' },
      ],
    },
    {
      name: 'file_download',
      type: 'group',
      fields: [
        {
          name: 'text',
          type: 'text',
          admin: { description: 'Текстове поле' },
        },
        {
          name: 'file',
          type: 'upload',
          relationTo: 'media',
        },
      ],
    },

        {
          name: 'videos',
          type: 'array',
          labels: { singular: 'Video item', plural: 'Video items' },
          fields: [
            {
              name: 'poster',
              type: 'upload',
              relationTo: 'media',
              required: true,
            },
            {
              name: 'video_file',
              type: 'upload',
              relationTo: 'media',
              required: true,
            },
          ],
        },
    {
      name: 'content',
      type: 'blocks',
      minRows: 1,
      blocks: [
        {
          slug: 'title',
          labels: { singular: 'Title block', plural: 'Titles' },
          fields: [
            {
              name: 'title',
              type: 'text',
              required: true,
              admin: { description: 'Заголовок сторінки' },
            },
          ],
        },
        {
          slug: 'paragraph',
          labels: { singular: 'Paragraph block', plural: 'Paragraphs' },
          fields: [
            {
              name: 'paragraph',
              type: 'textarea',
              admin: { description: 'Параграф тексту. Можна використовувати HTML-теги, наприклад <strong>, <em>, <br>, <a>.' },
            },
            {
              name: 'strong',
              type: 'checkbox',
              label: 'Strong',
              defaultValue: false,
              admin: { description: 'Позначте, щоб зробити параграф жирнішим (font-medium)' },
            },
          ],
        },
        {
          slug: 'imageGallery',
          labels: { singular: 'Image gallery', plural: 'Image galleries' },
          fields: [
            {
              name: 'items',
              label: 'Images',
              type: 'array',
              minRows: 1,
              fields: [
                {
                  name: 'image',
                  label: 'Image',
                  type: 'upload',
                  relationTo: 'media',
                  required: true,
                },
              ],
              admin: {
                description: 'Add one or more images. On desktop they render up to 3 in a row.',
              },
            },
          ],
        },
        {
          slug: 'renders',
          labels: { singular: 'Renders block', plural: 'Renders blocks' },
          fields: [
            {
              name: 'items',
              label: 'Renders',
              type: 'array',
              minRows: 1,
              fields: [
                {
                  name: 'mainImage',
                  label: 'Main image',
                  type: 'upload',
                  relationTo: 'media',
                  required: true,
                },
                {
                  name: 'gallery',
                  label: 'Gallery images',
                  type: 'array',
                  fields: [
                    {
                      name: 'image',
                      label: 'Image',
                      type: 'upload',
                      relationTo: 'media',
                      required: true,
                    },
                  ],
                  admin: {
                    description: 'Additional views that open in the gallery modal.',
                  },
                },
              ],
              admin: {
                description: 'Add render cards with one main image and extra gallery images for the modal.',
              },
            },
          ],
        },
        {
          slug: 'disclaimer',
          labels: { singular: 'Disclaimer', plural: 'Disclaimers' },
          fields: [
            {
              name: 'text',
              type: 'textarea',
              required: true,
              admin: { description: 'Disclaimer text to show in the Read more area' },
            },
          ],
        },
        {
          slug: 'readMore',
          labels: { singular: 'Read more marker', plural: 'Read more markers' },
          fields: [
            {
              name: 'label',
              type: 'text',
              admin: { description: 'Текст кнопки (наприклад: Read more / Read less)' },
              defaultValue: 'Read more',
            },
          ],
        },
      ],
    },
  ],
};

export default Pages;
