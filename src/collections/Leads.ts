import type { CollectionConfig } from 'payload'

const Lead: CollectionConfig = {
  slug: 'leads',
  labels: {
    singular: 'Lead',
    plural: 'Leads',
  },
  access: {
    read: () => true,     // дозволяє переглядати (можеш обмежити потім)
    create: () => true,   // дозволяє додавати дані з форми
  },
  fields: [
    { name: 'fullName', label: 'Full Name', type: 'text', required: true },
    { name: 'email', label: 'Email', type: 'email', required: true },
    { name: 'phone', label: 'Phone', type: 'text' },
    { name: 'message', label: 'Message', type: 'textarea' },
  ],
}

export default Lead
