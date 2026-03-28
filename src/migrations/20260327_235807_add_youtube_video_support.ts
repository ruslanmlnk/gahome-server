import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db, payload, req }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   ALTER TABLE "home" ADD COLUMN IF NOT EXISTS "grid_section_item1_youtube_url" varchar;
  
  CREATE TABLE IF NOT EXISTS "pages_blocks_video" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"title" varchar,
  	"youtube_url" varchar NOT NULL,
  	"poster_id" integer NOT NULL,
  	"block_name" varchar
  );
  
  DO $$
  BEGIN
    IF NOT EXISTS (
      SELECT 1
      FROM pg_constraint
      WHERE conname = 'pages_blocks_video_poster_id_media_id_fk'
    ) THEN
      ALTER TABLE "pages_blocks_video"
      ADD CONSTRAINT "pages_blocks_video_poster_id_media_id_fk"
      FOREIGN KEY ("poster_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
    END IF;
  END $$;

  DO $$
  BEGIN
    IF NOT EXISTS (
      SELECT 1
      FROM pg_constraint
      WHERE conname = 'pages_blocks_video_parent_id_fk'
    ) THEN
      ALTER TABLE "pages_blocks_video"
      ADD CONSTRAINT "pages_blocks_video_parent_id_fk"
      FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
    END IF;
  END $$;

  CREATE INDEX IF NOT EXISTS "pages_blocks_video_order_idx" ON "pages_blocks_video" USING btree ("_order");
  CREATE INDEX IF NOT EXISTS "pages_blocks_video_parent_id_idx" ON "pages_blocks_video" USING btree ("_parent_id");
  CREATE INDEX IF NOT EXISTS "pages_blocks_video_path_idx" ON "pages_blocks_video" USING btree ("_path");
  CREATE INDEX IF NOT EXISTS "pages_blocks_video_poster_idx" ON "pages_blocks_video" USING btree ("poster_id");`)
}

export async function down({ db, payload, req }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   DROP TABLE IF EXISTS "pages_blocks_video" CASCADE;
  ALTER TABLE "home" DROP COLUMN IF EXISTS "grid_section_item1_youtube_url";`)
}
