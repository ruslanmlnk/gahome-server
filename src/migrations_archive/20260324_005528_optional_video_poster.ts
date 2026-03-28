import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db, payload, req }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   CREATE TABLE "users_sessions" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"created_at" timestamp(3) with time zone,
  	"expires_at" timestamp(3) with time zone NOT NULL
  );
  
  CREATE TABLE "users" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"email" varchar NOT NULL,
  	"reset_password_token" varchar,
  	"reset_password_expiration" timestamp(3) with time zone,
  	"salt" varchar,
  	"hash" varchar,
  	"login_attempts" numeric DEFAULT 0,
  	"lock_until" timestamp(3) with time zone
  );
  
  CREATE TABLE "media" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"alt" varchar,
  	"video_poster_id" integer,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"url" varchar,
  	"thumbnail_u_r_l" varchar,
  	"filename" varchar,
  	"mime_type" varchar,
  	"filesize" numeric,
  	"width" numeric,
  	"height" numeric,
  	"focal_x" numeric,
  	"focal_y" numeric,
  	"sizes_thumbnail_url" varchar,
  	"sizes_thumbnail_width" numeric,
  	"sizes_thumbnail_height" numeric,
  	"sizes_thumbnail_mime_type" varchar,
  	"sizes_thumbnail_filesize" numeric,
  	"sizes_thumbnail_filename" varchar,
  	"sizes_card_url" varchar,
  	"sizes_card_width" numeric,
  	"sizes_card_height" numeric,
  	"sizes_card_mime_type" varchar,
  	"sizes_card_filesize" numeric,
  	"sizes_card_filename" varchar,
  	"sizes_tablet_url" varchar,
  	"sizes_tablet_width" numeric,
  	"sizes_tablet_height" numeric,
  	"sizes_tablet_mime_type" varchar,
  	"sizes_tablet_filesize" numeric,
  	"sizes_tablet_filename" varchar,
  	"sizes_desktop_url" varchar,
  	"sizes_desktop_width" numeric,
  	"sizes_desktop_height" numeric,
  	"sizes_desktop_mime_type" varchar,
  	"sizes_desktop_filesize" numeric,
  	"sizes_desktop_filename" varchar
  );
  
  CREATE TABLE "pages_gridcont" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"title" varchar NOT NULL,
  	"description" varchar
  );
  
  CREATE TABLE "pages_videos" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"poster_id" integer NOT NULL,
  	"video_file_id" integer NOT NULL
  );
  
  CREATE TABLE "pages_blocks_title" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"title" varchar NOT NULL,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_paragraph" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"paragraph" varchar,
  	"strong" boolean DEFAULT false,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_image_gallery_items" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer NOT NULL
  );
  
  CREATE TABLE "pages_blocks_image_gallery" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_renders_items_gallery" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer NOT NULL
  );
  
  CREATE TABLE "pages_blocks_renders_items" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"main_image_id" integer NOT NULL
  );
  
  CREATE TABLE "pages_blocks_renders" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_disclaimer" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"text" varchar NOT NULL,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_read_more" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"label" varchar DEFAULT 'Read more',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"meta_meta_title" varchar,
  	"meta_meta_description" varchar,
  	"main_title" varchar,
  	"slug" varchar NOT NULL,
  	"hero_image_id" integer,
  	"file_download_text" varchar,
  	"file_download_file_id" integer,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL
  );
  
  CREATE TABLE "leads" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"full_name" varchar NOT NULL,
  	"email" varchar NOT NULL,
  	"phone" varchar,
  	"message" varchar,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL
  );
  
  CREATE TABLE "payload_locked_documents" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"global_slug" varchar,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL
  );
  
  CREATE TABLE "payload_locked_documents_rels" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"order" integer,
  	"parent_id" integer NOT NULL,
  	"path" varchar NOT NULL,
  	"users_id" integer,
  	"media_id" integer,
  	"pages_id" integer,
  	"leads_id" integer
  );
  
  CREATE TABLE "payload_preferences" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"key" varchar,
  	"value" jsonb,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL
  );
  
  CREATE TABLE "payload_preferences_rels" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"order" integer,
  	"parent_id" integer NOT NULL,
  	"path" varchar NOT NULL,
  	"users_id" integer
  );
  
  CREATE TABLE "payload_migrations" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"name" varchar,
  	"batch" numeric,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL
  );
  
  CREATE TABLE "home" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"meta_meta_title" varchar,
  	"meta_meta_description" varchar,
  	"grid_section_item1_title" varchar NOT NULL,
  	"grid_section_item1_image_id" integer NOT NULL,
  	"grid_section_item2_title" varchar NOT NULL,
  	"grid_section_item2_image_id" integer NOT NULL,
  	"grid_section_item3_title" varchar NOT NULL,
  	"grid_section_item3_image_id" integer NOT NULL,
  	"grid_section_item4_title" varchar NOT NULL,
  	"grid_section_item4_image_id" integer NOT NULL,
  	"grid_section_item5_title" varchar NOT NULL,
  	"grid_section_item5_image_id" integer NOT NULL,
  	"grid_section_item6_title" varchar NOT NULL,
  	"grid_section_item6_image_id" integer NOT NULL,
  	"grid_section_item7_title" varchar NOT NULL,
  	"grid_section_item7_image_id" integer NOT NULL,
  	"grid_section_item8_title" varchar NOT NULL,
  	"grid_section_item8_image_id" integer NOT NULL,
  	"grid_section_item8_href" varchar,
  	"updated_at" timestamp(3) with time zone,
  	"created_at" timestamp(3) with time zone
  );
  
  ALTER TABLE "users_sessions" ADD CONSTRAINT "users_sessions_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."users"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "media" ADD CONSTRAINT "media_video_poster_id_media_id_fk" FOREIGN KEY ("video_poster_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_gridcont" ADD CONSTRAINT "pages_gridcont_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_videos" ADD CONSTRAINT "pages_videos_poster_id_media_id_fk" FOREIGN KEY ("poster_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_videos" ADD CONSTRAINT "pages_videos_video_file_id_media_id_fk" FOREIGN KEY ("video_file_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_videos" ADD CONSTRAINT "pages_videos_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_title" ADD CONSTRAINT "pages_blocks_title_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_paragraph" ADD CONSTRAINT "pages_blocks_paragraph_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_items" ADD CONSTRAINT "pages_blocks_image_gallery_items_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_items" ADD CONSTRAINT "pages_blocks_image_gallery_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_image_gallery"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery" ADD CONSTRAINT "pages_blocks_image_gallery_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_renders_items_gallery" ADD CONSTRAINT "pages_blocks_renders_items_gallery_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_renders_items_gallery" ADD CONSTRAINT "pages_blocks_renders_items_gallery_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_renders_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_renders_items" ADD CONSTRAINT "pages_blocks_renders_items_main_image_id_media_id_fk" FOREIGN KEY ("main_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_renders_items" ADD CONSTRAINT "pages_blocks_renders_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_renders"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_renders" ADD CONSTRAINT "pages_blocks_renders_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_disclaimer" ADD CONSTRAINT "pages_blocks_disclaimer_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_read_more" ADD CONSTRAINT "pages_blocks_read_more_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages" ADD CONSTRAINT "pages_hero_image_id_media_id_fk" FOREIGN KEY ("hero_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages" ADD CONSTRAINT "pages_file_download_file_id_media_id_fk" FOREIGN KEY ("file_download_file_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."payload_locked_documents"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_users_fk" FOREIGN KEY ("users_id") REFERENCES "public"."users"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_media_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_leads_fk" FOREIGN KEY ("leads_id") REFERENCES "public"."leads"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_preferences_rels" ADD CONSTRAINT "payload_preferences_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."payload_preferences"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_preferences_rels" ADD CONSTRAINT "payload_preferences_rels_users_fk" FOREIGN KEY ("users_id") REFERENCES "public"."users"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home" ADD CONSTRAINT "home_grid_section_item1_image_id_media_id_fk" FOREIGN KEY ("grid_section_item1_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home" ADD CONSTRAINT "home_grid_section_item2_image_id_media_id_fk" FOREIGN KEY ("grid_section_item2_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home" ADD CONSTRAINT "home_grid_section_item3_image_id_media_id_fk" FOREIGN KEY ("grid_section_item3_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home" ADD CONSTRAINT "home_grid_section_item4_image_id_media_id_fk" FOREIGN KEY ("grid_section_item4_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home" ADD CONSTRAINT "home_grid_section_item5_image_id_media_id_fk" FOREIGN KEY ("grid_section_item5_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home" ADD CONSTRAINT "home_grid_section_item6_image_id_media_id_fk" FOREIGN KEY ("grid_section_item6_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home" ADD CONSTRAINT "home_grid_section_item7_image_id_media_id_fk" FOREIGN KEY ("grid_section_item7_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home" ADD CONSTRAINT "home_grid_section_item8_image_id_media_id_fk" FOREIGN KEY ("grid_section_item8_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  CREATE INDEX "users_sessions_order_idx" ON "users_sessions" USING btree ("_order");
  CREATE INDEX "users_sessions_parent_id_idx" ON "users_sessions" USING btree ("_parent_id");
  CREATE INDEX "users_updated_at_idx" ON "users" USING btree ("updated_at");
  CREATE INDEX "users_created_at_idx" ON "users" USING btree ("created_at");
  CREATE UNIQUE INDEX "users_email_idx" ON "users" USING btree ("email");
  CREATE INDEX "media_video_poster_idx" ON "media" USING btree ("video_poster_id");
  CREATE INDEX "media_updated_at_idx" ON "media" USING btree ("updated_at");
  CREATE INDEX "media_created_at_idx" ON "media" USING btree ("created_at");
  CREATE UNIQUE INDEX "media_filename_idx" ON "media" USING btree ("filename");
  CREATE INDEX "media_sizes_thumbnail_sizes_thumbnail_filename_idx" ON "media" USING btree ("sizes_thumbnail_filename");
  CREATE INDEX "media_sizes_card_sizes_card_filename_idx" ON "media" USING btree ("sizes_card_filename");
  CREATE INDEX "media_sizes_tablet_sizes_tablet_filename_idx" ON "media" USING btree ("sizes_tablet_filename");
  CREATE INDEX "media_sizes_desktop_sizes_desktop_filename_idx" ON "media" USING btree ("sizes_desktop_filename");
  CREATE INDEX "pages_gridcont_order_idx" ON "pages_gridcont" USING btree ("_order");
  CREATE INDEX "pages_gridcont_parent_id_idx" ON "pages_gridcont" USING btree ("_parent_id");
  CREATE INDEX "pages_videos_order_idx" ON "pages_videos" USING btree ("_order");
  CREATE INDEX "pages_videos_parent_id_idx" ON "pages_videos" USING btree ("_parent_id");
  CREATE INDEX "pages_videos_poster_idx" ON "pages_videos" USING btree ("poster_id");
  CREATE INDEX "pages_videos_video_file_idx" ON "pages_videos" USING btree ("video_file_id");
  CREATE INDEX "pages_blocks_title_order_idx" ON "pages_blocks_title" USING btree ("_order");
  CREATE INDEX "pages_blocks_title_parent_id_idx" ON "pages_blocks_title" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_title_path_idx" ON "pages_blocks_title" USING btree ("_path");
  CREATE INDEX "pages_blocks_paragraph_order_idx" ON "pages_blocks_paragraph" USING btree ("_order");
  CREATE INDEX "pages_blocks_paragraph_parent_id_idx" ON "pages_blocks_paragraph" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_paragraph_path_idx" ON "pages_blocks_paragraph" USING btree ("_path");
  CREATE INDEX "pages_blocks_image_gallery_items_order_idx" ON "pages_blocks_image_gallery_items" USING btree ("_order");
  CREATE INDEX "pages_blocks_image_gallery_items_parent_id_idx" ON "pages_blocks_image_gallery_items" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_image_gallery_items_image_idx" ON "pages_blocks_image_gallery_items" USING btree ("image_id");
  CREATE INDEX "pages_blocks_image_gallery_order_idx" ON "pages_blocks_image_gallery" USING btree ("_order");
  CREATE INDEX "pages_blocks_image_gallery_parent_id_idx" ON "pages_blocks_image_gallery" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_image_gallery_path_idx" ON "pages_blocks_image_gallery" USING btree ("_path");
  CREATE INDEX "pages_blocks_renders_items_gallery_order_idx" ON "pages_blocks_renders_items_gallery" USING btree ("_order");
  CREATE INDEX "pages_blocks_renders_items_gallery_parent_id_idx" ON "pages_blocks_renders_items_gallery" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_renders_items_gallery_image_idx" ON "pages_blocks_renders_items_gallery" USING btree ("image_id");
  CREATE INDEX "pages_blocks_renders_items_order_idx" ON "pages_blocks_renders_items" USING btree ("_order");
  CREATE INDEX "pages_blocks_renders_items_parent_id_idx" ON "pages_blocks_renders_items" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_renders_items_main_image_idx" ON "pages_blocks_renders_items" USING btree ("main_image_id");
  CREATE INDEX "pages_blocks_renders_order_idx" ON "pages_blocks_renders" USING btree ("_order");
  CREATE INDEX "pages_blocks_renders_parent_id_idx" ON "pages_blocks_renders" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_renders_path_idx" ON "pages_blocks_renders" USING btree ("_path");
  CREATE INDEX "pages_blocks_disclaimer_order_idx" ON "pages_blocks_disclaimer" USING btree ("_order");
  CREATE INDEX "pages_blocks_disclaimer_parent_id_idx" ON "pages_blocks_disclaimer" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_disclaimer_path_idx" ON "pages_blocks_disclaimer" USING btree ("_path");
  CREATE INDEX "pages_blocks_read_more_order_idx" ON "pages_blocks_read_more" USING btree ("_order");
  CREATE INDEX "pages_blocks_read_more_parent_id_idx" ON "pages_blocks_read_more" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_read_more_path_idx" ON "pages_blocks_read_more" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_slug_idx" ON "pages" USING btree ("slug");
  CREATE INDEX "pages_hero_image_idx" ON "pages" USING btree ("hero_image_id");
  CREATE INDEX "pages_file_download_file_download_file_idx" ON "pages" USING btree ("file_download_file_id");
  CREATE INDEX "pages_updated_at_idx" ON "pages" USING btree ("updated_at");
  CREATE INDEX "pages_created_at_idx" ON "pages" USING btree ("created_at");
  CREATE INDEX "leads_updated_at_idx" ON "leads" USING btree ("updated_at");
  CREATE INDEX "leads_created_at_idx" ON "leads" USING btree ("created_at");
  CREATE INDEX "payload_locked_documents_global_slug_idx" ON "payload_locked_documents" USING btree ("global_slug");
  CREATE INDEX "payload_locked_documents_updated_at_idx" ON "payload_locked_documents" USING btree ("updated_at");
  CREATE INDEX "payload_locked_documents_created_at_idx" ON "payload_locked_documents" USING btree ("created_at");
  CREATE INDEX "payload_locked_documents_rels_order_idx" ON "payload_locked_documents_rels" USING btree ("order");
  CREATE INDEX "payload_locked_documents_rels_parent_idx" ON "payload_locked_documents_rels" USING btree ("parent_id");
  CREATE INDEX "payload_locked_documents_rels_path_idx" ON "payload_locked_documents_rels" USING btree ("path");
  CREATE INDEX "payload_locked_documents_rels_users_id_idx" ON "payload_locked_documents_rels" USING btree ("users_id");
  CREATE INDEX "payload_locked_documents_rels_media_id_idx" ON "payload_locked_documents_rels" USING btree ("media_id");
  CREATE INDEX "payload_locked_documents_rels_pages_id_idx" ON "payload_locked_documents_rels" USING btree ("pages_id");
  CREATE INDEX "payload_locked_documents_rels_leads_id_idx" ON "payload_locked_documents_rels" USING btree ("leads_id");
  CREATE INDEX "payload_preferences_key_idx" ON "payload_preferences" USING btree ("key");
  CREATE INDEX "payload_preferences_updated_at_idx" ON "payload_preferences" USING btree ("updated_at");
  CREATE INDEX "payload_preferences_created_at_idx" ON "payload_preferences" USING btree ("created_at");
  CREATE INDEX "payload_preferences_rels_order_idx" ON "payload_preferences_rels" USING btree ("order");
  CREATE INDEX "payload_preferences_rels_parent_idx" ON "payload_preferences_rels" USING btree ("parent_id");
  CREATE INDEX "payload_preferences_rels_path_idx" ON "payload_preferences_rels" USING btree ("path");
  CREATE INDEX "payload_preferences_rels_users_id_idx" ON "payload_preferences_rels" USING btree ("users_id");
  CREATE INDEX "payload_migrations_updated_at_idx" ON "payload_migrations" USING btree ("updated_at");
  CREATE INDEX "payload_migrations_created_at_idx" ON "payload_migrations" USING btree ("created_at");
  CREATE INDEX "home_grid_section_item1_grid_section_item1_image_idx" ON "home" USING btree ("grid_section_item1_image_id");
  CREATE INDEX "home_grid_section_item2_grid_section_item2_image_idx" ON "home" USING btree ("grid_section_item2_image_id");
  CREATE INDEX "home_grid_section_item3_grid_section_item3_image_idx" ON "home" USING btree ("grid_section_item3_image_id");
  CREATE INDEX "home_grid_section_item4_grid_section_item4_image_idx" ON "home" USING btree ("grid_section_item4_image_id");
  CREATE INDEX "home_grid_section_item5_grid_section_item5_image_idx" ON "home" USING btree ("grid_section_item5_image_id");
  CREATE INDEX "home_grid_section_item6_grid_section_item6_image_idx" ON "home" USING btree ("grid_section_item6_image_id");
  CREATE INDEX "home_grid_section_item7_grid_section_item7_image_idx" ON "home" USING btree ("grid_section_item7_image_id");
  CREATE INDEX "home_grid_section_item8_grid_section_item8_image_idx" ON "home" USING btree ("grid_section_item8_image_id");`)
}

export async function down({ db, payload, req }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   DROP TABLE "users_sessions" CASCADE;
  DROP TABLE "users" CASCADE;
  DROP TABLE "media" CASCADE;
  DROP TABLE "pages_gridcont" CASCADE;
  DROP TABLE "pages_videos" CASCADE;
  DROP TABLE "pages_blocks_title" CASCADE;
  DROP TABLE "pages_blocks_paragraph" CASCADE;
  DROP TABLE "pages_blocks_image_gallery_items" CASCADE;
  DROP TABLE "pages_blocks_image_gallery" CASCADE;
  DROP TABLE "pages_blocks_renders_items_gallery" CASCADE;
  DROP TABLE "pages_blocks_renders_items" CASCADE;
  DROP TABLE "pages_blocks_renders" CASCADE;
  DROP TABLE "pages_blocks_disclaimer" CASCADE;
  DROP TABLE "pages_blocks_read_more" CASCADE;
  DROP TABLE "pages" CASCADE;
  DROP TABLE "leads" CASCADE;
  DROP TABLE "payload_locked_documents" CASCADE;
  DROP TABLE "payload_locked_documents_rels" CASCADE;
  DROP TABLE "payload_preferences" CASCADE;
  DROP TABLE "payload_preferences_rels" CASCADE;
  DROP TABLE "payload_migrations" CASCADE;
  DROP TABLE "home" CASCADE;`)
}
