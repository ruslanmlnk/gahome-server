import type { CollectionConfig } from 'payload'
import { seoFields } from '../fields/seo'


const generateSlug = (str?: string) =>
  (str || '')
    .toString()
    .toLowerCase()
    .trim()
    .replace(/[^\w\s-]/g, '')
    .replace(/\s+/g, '-')
    .replace(/-+/g, '-')

const Pages: CollectionConfig = {
  slug: 'pages',
  access: {
    read: () => true,
  },
  labels: {
    singular: 'Page',
    plural: 'Pages',
  },
   hooks: {
   beforeValidate: [
     async ({ data }) => {
       const metaTitle =
         data?.metaTitle ||
         data?.seo?.metaTitle ||
         data?.seoFields?.metaTitle ||
         data?.seo_data?.metaTitle

       if (metaTitle && !data.slug) {
         data.slug = generateSlug(metaTitle)
       }

       return data
     },
   ],
 },
  fields: [
    seoFields,
    {
     name: 'slug',
     type: 'text',
     unique: true,
     required: true,
     admin: {
       description: 'URI slug (генерується з metaTitle, можна редагувати вручну)',
     },
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
              admin: { description: 'Параграф тексту' },
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
          slug: 'textWithFile',
          labels: { singular: 'Text File block', plural: 'Text Files' },
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
              admin: { description: 'Файл (будь-який)' },
            },
          ],
        },
         {
          slug: 'image',
          labels: { singular: 'Image block', plural: 'Images' },
          fields: [
            {
              name: 'image',
              type: 'upload',
              relationTo: 'media',
              required: true,
              admin: { description: 'Зображення' },
            },
            {
              name: 'alt',
              type: 'text',
              admin: { description: 'Alt текст для зображення' },
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