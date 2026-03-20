import 'dotenv/config'

import { pushDevSchema } from '@payloadcms/drizzle'
import { getPayload } from 'payload'

import config from '../src/payload.config'

async function main() {
  process.env.PAYLOAD_FORCE_DRIZZLE_PUSH = 'true'

  const payload = await getPayload({
    config,
  })

  if (!payload.db) {
    throw new Error('No database adapter found.')
  }

  await pushDevSchema(payload.db as never)
  payload.logger.info('Schema push completed.')

  await payload.destroy()
  process.exit(0)
}

main().catch(async (error) => {
  console.error(error)
  process.exit(1)
})
