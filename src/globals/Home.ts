import type { GlobalConfig } from 'payload'
import { seoFields } from '../fields/seo'

export const Home: GlobalConfig = {
  slug: 'home',
  label: 'Home',
  access: {
    read: () => true,
  },
  graphQL: {
    name: 'Home',
  },
  fields: [seoFields],
}

