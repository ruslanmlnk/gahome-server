--
-- PostgreSQL database dump
--

\restrict dC5bllaZhBEnZxesvGQSSTV1ktLx3x4tROjI7ufqcey0WQTRY4BhuPntpEQR4BK

-- Dumped from database version 15.17 (Debian 15.17-1.pgdg13+1)
-- Dumped by pg_dump version 15.17 (Debian 15.17-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.users_sessions DROP CONSTRAINT IF EXISTS users_sessions_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.payload_preferences_rels DROP CONSTRAINT IF EXISTS payload_preferences_rels_users_fk;
ALTER TABLE IF EXISTS ONLY public.payload_preferences_rels DROP CONSTRAINT IF EXISTS payload_preferences_rels_parent_fk;
ALTER TABLE IF EXISTS ONLY public.payload_locked_documents_rels DROP CONSTRAINT IF EXISTS payload_locked_documents_rels_users_fk;
ALTER TABLE IF EXISTS ONLY public.payload_locked_documents_rels DROP CONSTRAINT IF EXISTS payload_locked_documents_rels_parent_fk;
ALTER TABLE IF EXISTS ONLY public.payload_locked_documents_rels DROP CONSTRAINT IF EXISTS payload_locked_documents_rels_pages_fk;
ALTER TABLE IF EXISTS ONLY public.payload_locked_documents_rels DROP CONSTRAINT IF EXISTS payload_locked_documents_rels_media_fk;
ALTER TABLE IF EXISTS ONLY public.payload_locked_documents_rels DROP CONSTRAINT IF EXISTS payload_locked_documents_rels_leads_fk;
ALTER TABLE IF EXISTS ONLY public.pages_videos DROP CONSTRAINT IF EXISTS pages_videos_video_file_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_videos DROP CONSTRAINT IF EXISTS pages_videos_poster_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_videos DROP CONSTRAINT IF EXISTS pages_videos_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages DROP CONSTRAINT IF EXISTS pages_hero_image_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_gridcont DROP CONSTRAINT IF EXISTS pages_gridcont_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages DROP CONSTRAINT IF EXISTS pages_file_download_file_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_title DROP CONSTRAINT IF EXISTS pages_blocks_title_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_read_more DROP CONSTRAINT IF EXISTS pages_blocks_read_more_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_paragraph DROP CONSTRAINT IF EXISTS pages_blocks_paragraph_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_image_gallery DROP CONSTRAINT IF EXISTS pages_blocks_image_gallery_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_image_gallery_items DROP CONSTRAINT IF EXISTS pages_blocks_image_gallery_items_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_image_gallery_items DROP CONSTRAINT IF EXISTS pages_blocks_image_gallery_items_image_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_disclaimer DROP CONSTRAINT IF EXISTS pages_blocks_disclaimer_parent_id_fk;
ALTER TABLE IF EXISTS ONLY public.media DROP CONSTRAINT IF EXISTS media_video_poster_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.home DROP CONSTRAINT IF EXISTS home_grid_section_item8_image_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.home DROP CONSTRAINT IF EXISTS home_grid_section_item7_image_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.home DROP CONSTRAINT IF EXISTS home_grid_section_item6_image_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.home DROP CONSTRAINT IF EXISTS home_grid_section_item5_image_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.home DROP CONSTRAINT IF EXISTS home_grid_section_item4_image_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.home DROP CONSTRAINT IF EXISTS home_grid_section_item3_image_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.home DROP CONSTRAINT IF EXISTS home_grid_section_item2_image_id_media_id_fk;
ALTER TABLE IF EXISTS ONLY public.home DROP CONSTRAINT IF EXISTS home_grid_section_item1_image_id_media_id_fk;
DROP INDEX IF EXISTS public.users_updated_at_idx;
DROP INDEX IF EXISTS public.users_sessions_parent_id_idx;
DROP INDEX IF EXISTS public.users_sessions_order_idx;
DROP INDEX IF EXISTS public.users_email_idx;
DROP INDEX IF EXISTS public.users_created_at_idx;
DROP INDEX IF EXISTS public.payload_preferences_updated_at_idx;
DROP INDEX IF EXISTS public.payload_preferences_rels_users_id_idx;
DROP INDEX IF EXISTS public.payload_preferences_rels_path_idx;
DROP INDEX IF EXISTS public.payload_preferences_rels_parent_idx;
DROP INDEX IF EXISTS public.payload_preferences_rels_order_idx;
DROP INDEX IF EXISTS public.payload_preferences_key_idx;
DROP INDEX IF EXISTS public.payload_preferences_created_at_idx;
DROP INDEX IF EXISTS public.payload_migrations_updated_at_idx;
DROP INDEX IF EXISTS public.payload_migrations_created_at_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_updated_at_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_rels_users_id_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_rels_path_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_rels_parent_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_rels_pages_id_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_rels_order_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_rels_media_id_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_rels_leads_id_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_global_slug_idx;
DROP INDEX IF EXISTS public.payload_locked_documents_created_at_idx;
DROP INDEX IF EXISTS public.pages_videos_video_file_idx;
DROP INDEX IF EXISTS public.pages_videos_poster_idx;
DROP INDEX IF EXISTS public.pages_videos_parent_id_idx;
DROP INDEX IF EXISTS public.pages_videos_order_idx;
DROP INDEX IF EXISTS public.pages_updated_at_idx;
DROP INDEX IF EXISTS public.pages_slug_idx;
DROP INDEX IF EXISTS public.pages_hero_image_idx;
DROP INDEX IF EXISTS public.pages_gridcont_parent_id_idx;
DROP INDEX IF EXISTS public.pages_gridcont_order_idx;
DROP INDEX IF EXISTS public.pages_file_download_file_download_file_idx;
DROP INDEX IF EXISTS public.pages_created_at_idx;
DROP INDEX IF EXISTS public.pages_blocks_title_path_idx;
DROP INDEX IF EXISTS public.pages_blocks_title_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_title_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_read_more_path_idx;
DROP INDEX IF EXISTS public.pages_blocks_read_more_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_read_more_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_paragraph_path_idx;
DROP INDEX IF EXISTS public.pages_blocks_paragraph_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_paragraph_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_image_gallery_path_idx;
DROP INDEX IF EXISTS public.pages_blocks_image_gallery_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_image_gallery_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_image_gallery_items_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_image_gallery_items_order_idx;
DROP INDEX IF EXISTS public.pages_blocks_image_gallery_items_image_idx;
DROP INDEX IF EXISTS public.pages_blocks_disclaimer_path_idx;
DROP INDEX IF EXISTS public.pages_blocks_disclaimer_parent_id_idx;
DROP INDEX IF EXISTS public.pages_blocks_disclaimer_order_idx;
DROP INDEX IF EXISTS public.media_video_poster_idx;
DROP INDEX IF EXISTS public.media_updated_at_idx;
DROP INDEX IF EXISTS public.media_filename_idx;
DROP INDEX IF EXISTS public.media_created_at_idx;
DROP INDEX IF EXISTS public.leads_updated_at_idx;
DROP INDEX IF EXISTS public.leads_created_at_idx;
DROP INDEX IF EXISTS public.home_grid_section_item8_grid_section_item8_image_idx;
DROP INDEX IF EXISTS public.home_grid_section_item7_grid_section_item7_image_idx;
DROP INDEX IF EXISTS public.home_grid_section_item6_grid_section_item6_image_idx;
DROP INDEX IF EXISTS public.home_grid_section_item5_grid_section_item5_image_idx;
DROP INDEX IF EXISTS public.home_grid_section_item4_grid_section_item4_image_idx;
DROP INDEX IF EXISTS public.home_grid_section_item3_grid_section_item3_image_idx;
DROP INDEX IF EXISTS public.home_grid_section_item2_grid_section_item2_image_idx;
DROP INDEX IF EXISTS public.home_grid_section_item1_grid_section_item1_image_idx;
ALTER TABLE IF EXISTS ONLY public.users_sessions DROP CONSTRAINT IF EXISTS users_sessions_pkey;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_pkey;
ALTER TABLE IF EXISTS ONLY public.payload_preferences_rels DROP CONSTRAINT IF EXISTS payload_preferences_rels_pkey;
ALTER TABLE IF EXISTS ONLY public.payload_preferences DROP CONSTRAINT IF EXISTS payload_preferences_pkey;
ALTER TABLE IF EXISTS ONLY public.payload_migrations DROP CONSTRAINT IF EXISTS payload_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.payload_locked_documents_rels DROP CONSTRAINT IF EXISTS payload_locked_documents_rels_pkey;
ALTER TABLE IF EXISTS ONLY public.payload_locked_documents DROP CONSTRAINT IF EXISTS payload_locked_documents_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_videos DROP CONSTRAINT IF EXISTS pages_videos_pkey;
ALTER TABLE IF EXISTS ONLY public.pages DROP CONSTRAINT IF EXISTS pages_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_gridcont DROP CONSTRAINT IF EXISTS pages_gridcont_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_title DROP CONSTRAINT IF EXISTS pages_blocks_title_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_read_more DROP CONSTRAINT IF EXISTS pages_blocks_read_more_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_paragraph DROP CONSTRAINT IF EXISTS pages_blocks_paragraph_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_image_gallery DROP CONSTRAINT IF EXISTS pages_blocks_image_gallery_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_image_gallery_items DROP CONSTRAINT IF EXISTS pages_blocks_image_gallery_items_pkey;
ALTER TABLE IF EXISTS ONLY public.pages_blocks_disclaimer DROP CONSTRAINT IF EXISTS pages_blocks_disclaimer_pkey;
ALTER TABLE IF EXISTS ONLY public.media DROP CONSTRAINT IF EXISTS media_pkey;
ALTER TABLE IF EXISTS ONLY public.leads DROP CONSTRAINT IF EXISTS leads_pkey;
ALTER TABLE IF EXISTS ONLY public.home DROP CONSTRAINT IF EXISTS home_pkey;
ALTER TABLE IF EXISTS public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payload_preferences_rels ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payload_preferences ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payload_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payload_locked_documents_rels ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payload_locked_documents ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.media ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.leads ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.home ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS public.users_sessions;
DROP SEQUENCE IF EXISTS public.users_id_seq;
DROP TABLE IF EXISTS public.users;
DROP SEQUENCE IF EXISTS public.payload_preferences_rels_id_seq;
DROP TABLE IF EXISTS public.payload_preferences_rels;
DROP SEQUENCE IF EXISTS public.payload_preferences_id_seq;
DROP TABLE IF EXISTS public.payload_preferences;
DROP SEQUENCE IF EXISTS public.payload_migrations_id_seq;
DROP TABLE IF EXISTS public.payload_migrations;
DROP SEQUENCE IF EXISTS public.payload_locked_documents_rels_id_seq;
DROP TABLE IF EXISTS public.payload_locked_documents_rels;
DROP SEQUENCE IF EXISTS public.payload_locked_documents_id_seq;
DROP TABLE IF EXISTS public.payload_locked_documents;
DROP TABLE IF EXISTS public.pages_videos;
DROP SEQUENCE IF EXISTS public.pages_id_seq;
DROP TABLE IF EXISTS public.pages_gridcont;
DROP TABLE IF EXISTS public.pages_blocks_title;
DROP TABLE IF EXISTS public.pages_blocks_read_more;
DROP TABLE IF EXISTS public.pages_blocks_paragraph;
DROP TABLE IF EXISTS public.pages_blocks_image_gallery_items;
DROP TABLE IF EXISTS public.pages_blocks_image_gallery;
DROP TABLE IF EXISTS public.pages_blocks_disclaimer;
DROP TABLE IF EXISTS public.pages;
DROP SEQUENCE IF EXISTS public.media_id_seq;
DROP TABLE IF EXISTS public.media;
DROP SEQUENCE IF EXISTS public.leads_id_seq;
DROP TABLE IF EXISTS public.leads;
DROP SEQUENCE IF EXISTS public.home_id_seq;
DROP TABLE IF EXISTS public.home;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: home; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.home (
    id integer NOT NULL,
    meta_meta_title character varying,
    meta_meta_description character varying,
    grid_section_item1_title character varying NOT NULL,
    grid_section_item1_image_id integer NOT NULL,
    grid_section_item2_title character varying NOT NULL,
    grid_section_item2_image_id integer NOT NULL,
    grid_section_item3_title character varying NOT NULL,
    grid_section_item3_image_id integer NOT NULL,
    grid_section_item4_title character varying NOT NULL,
    grid_section_item4_image_id integer NOT NULL,
    grid_section_item5_title character varying NOT NULL,
    grid_section_item5_image_id integer NOT NULL,
    grid_section_item6_title character varying NOT NULL,
    grid_section_item6_image_id integer NOT NULL,
    grid_section_item7_title character varying NOT NULL,
    grid_section_item7_image_id integer NOT NULL,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone,
    grid_section_item8_title character varying NOT NULL,
    grid_section_item8_image_id integer NOT NULL,
    grid_section_item8_href character varying
);


--
-- Name: home_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.home_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.home_id_seq OWNED BY public.home.id;


--
-- Name: leads; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.leads (
    id integer NOT NULL,
    full_name character varying NOT NULL,
    email character varying NOT NULL,
    phone character varying,
    message character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: leads_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.leads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: leads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.leads_id_seq OWNED BY public.leads.id;


--
-- Name: media; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.media (
    id integer NOT NULL,
    alt character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    url character varying,
    thumbnail_u_r_l character varying,
    filename character varying,
    mime_type character varying,
    filesize numeric,
    width numeric,
    height numeric,
    focal_x numeric,
    focal_y numeric,
    video_poster_id integer
);


--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    meta_meta_title character varying,
    meta_meta_description character varying,
    main_title character varying,
    slug character varying NOT NULL,
    hero_image_id integer,
    file_download_text character varying,
    file_download_file_id integer,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: pages_blocks_disclaimer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_disclaimer (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    text character varying NOT NULL,
    block_name character varying
);


--
-- Name: pages_blocks_image_gallery; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_image_gallery (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying
);


--
-- Name: pages_blocks_image_gallery_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_image_gallery_items (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    image_id integer NOT NULL
);


--
-- Name: pages_blocks_paragraph; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_paragraph (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    paragraph character varying,
    strong boolean DEFAULT false,
    block_name character varying
);


--
-- Name: pages_blocks_read_more; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_read_more (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    label character varying DEFAULT 'Read more'::character varying,
    block_name character varying
);


--
-- Name: pages_blocks_title; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_blocks_title (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    title character varying NOT NULL,
    block_name character varying
);


--
-- Name: pages_gridcont; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_gridcont (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    title character varying NOT NULL,
    description character varying
);


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: pages_videos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_videos (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    poster_id integer NOT NULL,
    video_file_id integer NOT NULL
);


--
-- Name: payload_locked_documents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_locked_documents (
    id integer NOT NULL,
    global_slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_locked_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_locked_documents_id_seq OWNED BY public.payload_locked_documents.id;


--
-- Name: payload_locked_documents_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_locked_documents_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer,
    media_id integer,
    pages_id integer,
    leads_id integer
);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_locked_documents_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_locked_documents_rels_id_seq OWNED BY public.payload_locked_documents_rels.id;


--
-- Name: payload_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_migrations (
    id integer NOT NULL,
    name character varying,
    batch numeric,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_migrations_id_seq OWNED BY public.payload_migrations.id;


--
-- Name: payload_preferences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_preferences (
    id integer NOT NULL,
    key character varying,
    value jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_preferences_id_seq OWNED BY public.payload_preferences.id;


--
-- Name: payload_preferences_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payload_preferences_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer
);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payload_preferences_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payload_preferences_rels_id_seq OWNED BY public.payload_preferences_rels.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    email character varying NOT NULL,
    reset_password_token character varying,
    reset_password_expiration timestamp(3) with time zone,
    salt character varying,
    hash character varying,
    login_attempts numeric DEFAULT 0,
    lock_until timestamp(3) with time zone
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users_sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_sessions (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    created_at timestamp(3) with time zone,
    expires_at timestamp(3) with time zone NOT NULL
);


--
-- Name: home id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home ALTER COLUMN id SET DEFAULT nextval('public.home_id_seq'::regclass);


--
-- Name: leads id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.leads ALTER COLUMN id SET DEFAULT nextval('public.leads_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: payload_locked_documents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_id_seq'::regclass);


--
-- Name: payload_locked_documents_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_rels_id_seq'::regclass);


--
-- Name: payload_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_migrations ALTER COLUMN id SET DEFAULT nextval('public.payload_migrations_id_seq'::regclass);


--
-- Name: payload_preferences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_id_seq'::regclass);


--
-- Name: payload_preferences_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_rels_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: home; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.home (id, meta_meta_title, meta_meta_description, grid_section_item1_title, grid_section_item1_image_id, grid_section_item2_title, grid_section_item2_image_id, grid_section_item3_title, grid_section_item3_image_id, grid_section_item4_title, grid_section_item4_image_id, grid_section_item5_title, grid_section_item5_image_id, grid_section_item6_title, grid_section_item6_image_id, grid_section_item7_title, grid_section_item7_image_id, updated_at, created_at, grid_section_item8_title, grid_section_item8_image_id, grid_section_item8_href) FROM stdin;
1	best location Premium Land Lots Available near Poconos PA	\N	BEST LOCATION	2	LOCATION	8	Mortgage Programs	1	3D visualisatioN	9	double savings	3	Our Clients	4	innovations 	10	2026-03-20 06:33:02.022+00	2025-10-28 21:55:26.44+00	double savings	11	/the-process
\.


--
-- Data for Name: leads; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.leads (id, full_name, email, phone, message, updated_at, created_at) FROM stdin;
68	John Loh	john@jeev.net	263652299	Hi there,\r\n\r\nI noticed you recently got started with homegudzdesign.com - congratulations! Starting something new is thrilling but challenging, and I bet you're balancing numerous priorities these days.\r\n\r\nHaving been in your shoes, I understand that relationship management - be it with customers, partners, suppliers, or vendors - gets messy fast when you're using disconnected systems or memory alone.\r\n\r\nWhich is why I'm getting in touch and offer you our **no-cost business relationship tool** - totally free. Not a trial, no card needed, just free access to help you manage everything as you grow.\r\n\r\n**You'll receive:**\r\n- A straightforward system to maintain all your business connections in one spot\r\n- Maintain records of your customers, suppliers, and collaborators\r\n- Pipeline tracking for opportunities and deals\r\n- $0 cost while you concentrate on growing your venture\r\n\r\nWe created this because we believe startups need support, not another pricey subscription. What's more, when you're ready, you'll have access to our expanded community where businesses link up for connections and deals.\r\n\r\nIf you'd like this, visit this link to sign up for a free account: https://ln.run/crm-info\r\n\r\nThanks,\r\nJohn	2025-10-30 23:43:11.927+00	2025-10-30 23:43:11.927+00
69	Deandre Shumaker	register@domains-submit.net	417301486	Hello,\r\n\r\nSubmit your homegudzdesign.com website to Google Search Index and have it displayed in Web Search Results.\r\n\r\nAdd homegudzdesign.com at https://searchregister.org	2025-11-05 18:11:18.472+00	2025-11-05 18:11:18.472+00
70	Doug Hurd	join@seoregister.app	4557934756	Hello,\r\n\r\nAdd homegudzdesign.com website to SEODIRECTORY to get a better ranking in Web Searches and an improvement in traffic:\r\n\r\nTry it free:\r\n\r\n https://seodir.pro	2025-11-07 01:23:46.603+00	2025-11-07 01:23:46.603+00
71	Gemma Marshall	gemmamarshall811@gmail.com	211644997	Hi,\r\n\r\nWe run an Instagram service, which grows your followers both safely and practically.\r\n\r\nBy engaging with real users based on their location, age, gender, and interests, we help you attract genuine followers who are truly interested in what you do.\r\n\r\nI'd be happy to forward you some further information if that would be of interest?\r\n\r\nKind Regards,\r\nGemma	2025-11-11 18:10:16.109+00	2025-11-11 18:10:16.109+00
72	Joanna Riggs	joannariggs278@gmail.com	30386424	Hi,\r\n\r\nI just visited homegudzdesign.com and wondered if you've ever considered an impactful video to advertise your business? Our videos can generate impressive results on both your website and across social media.\r\n\r\nOur prices start from just $195 (USD).\r\n\r\nLet me know if you're interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna\r\n\r\nUnsubscribe: https://unsubscribe.video/unsubscribe.php?d=homegudzdesign.com	2025-11-13 10:03:56.202+00	2025-11-13 10:03:56.202+00
73	sonam Prajapati	sonam.dgtlsolution@gmail.com	9266141479	Hi http://homegudzdesign.com,\r\n\r\nIf you’re looking to boost your website’s visibility, I can help you achieve top Google rankings.\r\n\r\nI’ll prepare a complete SEO plan with actionable steps and potential growth insights for your products or services.\r\n\r\nOnce you share your website URL and target market, I’ll send a full proposal.\r\n\r\nBest Regards,\r\n\r\nSonam\r\n\r\nOnline SEO Consultant	2025-11-14 09:28:39.747+00	2025-11-14 09:28:39.747+00
74	Deepak Parcha	parchad78@gmail.com	092171 27210	Hi http://homegudzdesign.com,\r\n\r\nI help businesses build modern, high-performing websites that attract more customers and strengthen their online presence. With 8 years of experience in custom website design and development, I can help you create a fast, responsive, and user-friendly website that effectively represents your brand and drives results.\r\n\r\nIf you’re interested, please share:\r\n1.Reference websites you like.\r\n2.Your business type or niche.\r\n3.Any specific features or goals for the new website.\r\n\r\nIf you are interested, please share your WhatsApp number so I can send you our portfolio,pricing details and strategies.\r\n\r\nLooking forward to hearing from you.\r\n\r\nThank you,\r\nDeepak	2025-11-15 03:01:57.221+00	2025-11-15 03:01:57.221+00
75	Stacie Swope	contact@domainsubmit.pro	7901853484	Hello,\r\n\r\nAdd homegudzdesign.com web site to Google Search Index in order to have it displayed in Web Search Results.\r\n\r\nRegister homegudzdesign.com at https://searchregister.org	2025-11-17 19:36:52.172+00	2025-11-17 19:36:52.172+00
76	Keri Whitefoord	join@simplyseo.pro	7711480602	Hello,\r\n\r\nAdd homegudzdesign.com website to SEODIRECTORY fort a better position in Web Search results order and to get an improvement in traffic:\r\n\r\n https://seodir.pro	2025-11-18 20:58:32.988+00	2025-11-18 20:58:32.988+00
77	Deepa	darryl.dove@msn.com	7042514198	Hi http://homegudzdesign.com,\r\n\r\nI specialize in creating clean, responsive website designs that help businesses make a strong first impression online. If you can share your website link, I’ll take a quick look and suggest how it can be improved for better engagement and results.\r\n\r\nCan I share a few design suggestions for your site? Please share you'r Website Link and Whatsapp Number.\r\n\r\nThank You,\r\nDeepa	2025-11-28 07:40:30.496+00	2025-11-28 07:40:30.496+00
78	Dontae SEO	dontae.lucas2@gmail.com	2102102101	Hello,\r\nI spent some time looking at your website and noticed a few areas where you could gain better visibility on Google. These aren’t complicated fixes, but they can make a real difference in how often potential customers find you.\r\n\r\nI’d be happy to share a detailed REPORT that covers:\r\n\r\n1.How your site is currently performing\r\n2.Technical points that may be holding back your rankings\r\n3.Keyword opportunities you’re not fully using\r\n4.Changes that can help you get more traffic\r\n5.Clear pricing so you know exactly what the improvements would cost\r\n6.The report is straightforward and shows the specific steps needed to move your site higher in the search results.\r\n\r\nIf you prefer, I can also walk you through everything on a short Google Meet call, explain the findings, and answer any questions.\r\n\r\nWould you like me to send the FULL REPORT or a PROPOSAL?\r\n\r\nThanks and regards	2025-11-30 04:38:47.685+00	2025-11-30 04:38:47.685+00
79	Kate Armstrong	katearmstrong1976@gmail.com	2122871890	Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 400+ new subscribers each month.\r\n- Real, human subscribers who subscribe because they are interested in your channel/videos.\r\n- Safe: All actions are done, without using any automated tasks / bots.\r\n\r\nOur price is just $90 (USD) per month and we can start immediately.\r\n\r\nIf you are interested then we can discuss further.\r\n\r\nKind Regards,\r\nKate	2025-12-21 01:24:51.283+00	2025-12-21 01:24:51.283+00
80	Gemma Marshall	gemmamarshall811@gmail.com	7936401499	Hi,\r\n\r\nWe run a hands-on agency that helps clients' Instagram accounts build authority and reach new audiences. Rather than just "adding numbers," we focus on tangible benefits:\r\n\r\n1. Cheaper than Ads: We deliver targeted eyes on your profile for a fraction of the cost of running Instagram Ads.\r\n2. Real Community: We target users genuinely interested in your niche, leading to higher engagement and potential sales.\r\n3. 100% Account Safety: We don't use bots. Our team performs every action manually on actual smartphones, keeping your account secure.\r\n4. Consistent Results: Expect 300+ new, high-quality followers every month who actually stick around.\r\n\r\nI'd be happy to forward you some further information if that would be of interest?\r\n\r\nNote: We also work with Youtube Channels.\r\n\r\nKind Regards,\r\nGemma\r\n\r\nhttps://unsubscribe.social/unsubscribe.php?d=homegudzdesign.com	2025-12-31 23:26:02.549+00	2025-12-31 23:26:02.549+00
81	Joanna Riggs	joannariggs83@gmail.com	5646760437	Hi,\r\n\r\nI just visited homegudzdesign.com and wondered if you've ever considered an impactful video to advertise your business? Our videos can generate impressive results on both your website and across social media.\r\n\r\nOur videos cost just $195 (USD) for a 30 second video ($239 for 60 seconds) and include a full script, voice-over and video.\r\n\r\nI can show you some previous videos we've done if you want me to send some over. Let me know if you're interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna\r\n\r\nUnsubscribe: https://unsubscribe.video/unsubscribe.php?d=homegudzdesign.com	2026-01-06 22:57:38.328+00	2026-01-06 22:57:38.328+00
82	Sonam Prajapati	sonam.websolution12@gmail.com	890206020	Hi http://homegudzdesign.com, \r\n\r\nI hope you’re doing well. \r\n\r\nI came across your business online and thought you might be interested in improving your visibility and traffic on search engines.\r\n\r\nWe specialize in helping businesses strengthen their online presence through effective SEO strategies. \r\n\r\nOnce you share your target keywords and target market, I’ll send a full proposal. \r\n\r\nWarm regards, \r\nSonam	2026-01-11 02:54:52.762+00	2026-01-11 02:54:52.761+00
83	StephenWramp	jacksrenome@gmx.com	86894521138	Vertyowdiwjodko kofkosfjwgojfsjf oijwfwsfjowehgewjiofwj jewfkwkfdoeguhrfkadwknfew ijedkaoaswnfeugjfkadcajsfn homegudzdesign.com	2026-01-15 03:11:52.711+00	2026-01-15 03:11:52.711+00
84	Miriam Messina	messina.miriam@gmail.com	4236578	We improve MOZ  Domain authority 40+ in 25 Days its help to improve google rank, improve your website SEO, and you get traffic from google \r\n\r\nDA - 0 to 40 - (Only $29) -\r\n\r\n\r\n\r\n Yes, Limited time !!\r\n\r\n>> 100% Guarantee \r\n>> Improve Ranking \r\n>> White Hat Process \r\n>> Permanent Work\r\n>> 100% Manual Work \r\n>> 0% Spam score increase \r\n\r\n\r\n⚡ From our work your website keyword get rank on google and get organic traffic from google through keywords\r\n\r\nContact now: intrug@gmail.com	2026-01-24 00:04:37.947+00	2026-01-24 00:04:37.947+00
85	To the http://homegudzdesign.com/fekal0911 Administrator	pirduhina96@gmail.com	391805653	Hi http://homegudzdesign.com/fekal0911 Owner	2026-01-26 04:01:27.825+00	2026-01-26 04:01:27.824+00
86	Joanna Riggs	joannariggs278@gmail.com	4506594286	Hi,\r\n\r\nI just visited homegudzdesign.com and wondered if you've ever considered an impactful video to advertise your business? Our videos can generate impressive results on both your website and across social media.\r\n\r\nOur videos cost just $195 (USD) for a 30 second video ($239 for 60 seconds) and include a full script, voice-over and video.\r\n\r\nI can show you some previous videos we've done if you want me to send some over. Let me know if you're interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna\r\n\r\nUnsubscribe: https://unsubscribe.video/unsubscribe.php?d=homegudzdesign.com	2026-02-13 05:58:57.642+00	2026-02-13 05:58:57.642+00
87	Werner Coneybeer	werner.coneybeer@yahoo.com	3549407692	Increase homegudzdesign.com SEO standings, grow your search visibility and generate powerful backlinks! \r\nBonusBacklinks.com - we provide daily backlinks and drive organic visits to your website EVERY DAY: \r\n\r\nUse 85% SALE \r\nTrusted daily backlinks \r\nOrganic website traffic \r\nPrices only from $1 \r\nBonus coupon codes: \r\n\r\nhttps://BonusBacklinks.com/85COUPON\r\n\r\nBonusBacklinks.com - daily seo backlinks and website traffic to increase your page everyday	2026-02-15 08:09:27.319+00	2026-02-15 08:09:27.318+00
88	Anaya	anaya.dgtlsolution@gmail.com	9266141479	Hi http://homegudzdesign.com,\r\n \r\nWe can place your website on Google 1st page.\r\n \r\nI can give you our Complete SEO Action Plan along with a customary reach and add great value to your product/ service.\r\n \r\nI may send you a SEO Packages & price list. If interested.\r\n \r\nBest Regards,\r\nAnaya\r\nOnline SEO Consultant	2026-02-16 10:04:32.553+00	2026-02-16 10:04:32.553+00
89	Joanna Riggs	joannariggs278@gmail.com	3624465909	Hi,\r\n\r\nI just visited homegudzdesign.com and wondered if you'd ever thought about having an engaging video to explain what you do?\r\n\r\nOur videos cost just $195 (USD) for a 30 second video ($239 for 60 seconds) and include a full script, voice-over and video.\r\n\r\nI can show you some previous videos we've done if you want me to send some over. Let me know if you're interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna	2026-02-25 21:25:54.785+00	2026-02-25 21:25:54.785+00
90	Marie McCann	Lafuentes.marie@gmail.com	2166189232	Hi, my boyfriend and I were looking for a home together and I came across your site on Instagram. Whats the pricing for a 3 or 4 bedroom? And do you have some photos of building styles? Do you find the land or do we?	2026-02-26 12:26:36.014+00	2026-02-26 12:26:36.014+00
91	Marie McCann	Lafuentes.marie@gmail.com	2166189232	Hello, I came across your site on Instagram. I was wondering if you have photos of your models, do you find the land or do I? Whats the cost of a 3 or 4 bedroom home?	2026-02-26 12:27:59.138+00	2026-02-26 12:27:59.137+00
92	Jayrn Smith	shoshana.pohlman17@gmail.com	623384320	Hi, it’s Jayrn.\r\n\r\nWant to find "hidden money" in your business? Dan shares exactly how to exponentially increase your cashflow and the value of your company with these 5 Key Strategies. \r\n\r\nFind out how to find your customer "trigger points" so you know how to market and sell to them. And the best part is... it's way easier than you think!\r\n\r\nLearn More: https://marketersmentor.com/hidden-money.php?refer=homegudzdesign.com\r\n\r\nJayrn\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=homegudzdesign.com	2026-03-06 06:02:38.381+00	2026-03-06 06:02:38.38+00
93	Theresa and Richard Williams	remo18062@yahoo.com	5708998691	Interested in finding out more about your custom homes	2026-03-07 23:27:50.318+00	2026-03-07 23:27:50.318+00
94	Theresa and Richard Williams	remo18062@yahoo.com	5708998691	Interested in finding out more about your custom homes	2026-03-07 23:29:03.298+00	2026-03-07 23:29:03.298+00
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.media (id, alt, updated_at, created_at, url, thumbnail_u_r_l, filename, mime_type, filesize, width, height, focal_x, focal_y, video_poster_id) FROM stdin;
1	\N	2025-10-28 21:44:13.081+00	2025-10-28 21:44:13.081+00	\N	\N	3.png	image/png	713840	1280	719	50	50	\N
2	\N	2025-10-28 21:51:52.277+00	2025-10-28 21:51:52.277+00	\N	\N	1.png	image/png	3529629	2034	1140	50	50	\N
3	\N	2025-10-28 21:52:18.795+00	2025-10-28 21:52:18.795+00	\N	\N	5.png	image/png	2360989	1536	1024	50	50	\N
4	\N	2025-10-28 21:52:21.745+00	2025-10-28 21:52:21.744+00	\N	\N	6.jpg	image/jpeg	9908537	4096	2731	50	50	\N
5	\N	2025-10-28 21:52:23.636+00	2025-10-28 21:52:23.636+00	\N	\N	7821796-hd_1080_1920_30fps.mp4	video/mp4	9681663	\N	\N	\N	\N	\N
6	\N	2025-10-28 21:52:25.105+00	2025-10-28 21:52:25.104+00	\N	\N	f3f5c601af5650c7d162737b2b60da9ae47c9ac2.jpg	image/jpeg	8170222	2731	4096	50	50	\N
7	\N	2025-10-28 21:52:25.364+00	2025-10-28 21:52:25.364+00	\N	\N	test_document.pdf	application/pdf	1775	\N	\N	\N	\N	\N
8	\N	2025-10-28 21:52:26.059+00	2025-10-28 21:52:26.059+00	\N	\N	2.png	image/png	3262063	1536	1024	50	50	\N
9	\N	2025-10-28 21:52:26.469+00	2025-10-28 21:52:26.469+00	\N	\N	4.png	image/png	1546357	1024	1024	50	50	\N
10	\N	2025-10-28 21:55:23.702+00	2025-10-28 21:55:23.702+00	\N	\N	7.jpg	image/jpeg	5648988	4096	3277	50	50	\N
11	\N	2026-03-20 06:25:58.641+00	2026-03-20 06:25:58.64+00	\N	\N	Quantum Azure.jpeg	image/jpeg	21302	736	414	50	50	\N
12	\N	2026-03-20 06:33:56.218+00	2026-03-20 06:33:56.218+00	\N	\N	2-1.png	image/png	100131	1080	1080	50	50	\N
13	\N	2026-03-20 06:34:17.901+00	2026-03-20 06:34:17.901+00	\N	\N	3-1.png	image/png	102787	1080	1080	50	50	\N
14	\N	2026-03-20 06:34:47.627+00	2026-03-20 06:34:47.627+00	\N	\N	4-1.png	image/png	101361	1080	1080	50	50	\N
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages (id, meta_meta_title, meta_meta_description, main_title, slug, hero_image_id, file_download_text, file_download_file_id, updated_at, created_at) FROM stdin;
7	dream house	dream house	dream house	dream	2	\N	\N	2025-10-28 22:47:49.42+00	2025-10-28 22:47:49.42+00
2	 Mortgage Programs Tailored to Your Goals	 Mortgage Programs Tailored to Your Goals	 Mortgage Programs Tailored to Your Goals	mortgage	1	\N	\N	2025-10-29 04:48:07.629+00	2025-10-28 22:40:09.433+00
1	best location Premium Land Lots Available near Poconos PA	Before you even start designing your home, you can choose from our exclusive collection of land lots	best location. \\nPremium Land Lots Available near Poconos PA	location	8	\N	\N	2025-12-17 22:06:46.121+00	2025-10-28 22:37:10.355+00
5	Innovations	Innovations	Innovations	innovations	10	\N	\N	2026-03-20 06:25:14.848+00	2025-10-28 22:45:59.379+00
8	Our Process	\N	Our Process	the-process	\N	\N	\N	2026-03-20 06:30:38.878+00	2026-03-20 06:29:20.65+00
4	Happy clients	Happy clients	Our Clients	owners	\N	\N	\N	2026-03-20 07:14:46.531+00	2025-10-28 22:44:39.636+00
6	3D visualisation (customise your home for 0$)	3D visualisation\n(customise your home for 0$)	Custom Home Visualization	visualisation	9	\N	\N	2026-03-20 07:20:13.545+00	2025-10-28 22:47:04.308+00
3	Save Twice with Smart Investing	Save Twice with Smart Investing	Building your home through our process allows you to benefit from two built-in cost advantages that are rarely available when purchasing a completed house. 	savings	3	Check the Materials (PDF)	7	2026-03-20 07:43:02.474+00	2025-10-28 22:41:44.748+00
\.


--
-- Data for Name: pages_blocks_disclaimer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_disclaimer (_order, _parent_id, _path, id, text, block_name) FROM stdin;
12	2	content	690197b00f69f48ea213d5ce	Program availability and requirements depend on your profile, property type, and lender policies. Switching between programs may require additional approvals or updated documentation. Our team manages this process end-to-end to keep you secure and informed.	\N
\.


--
-- Data for Name: pages_blocks_image_gallery; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_image_gallery (_order, _parent_id, _path, id, block_name) FROM stdin;
1	4	content	69bcefadae75d02900837d38	\N
\.


--
-- Data for Name: pages_blocks_image_gallery_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_image_gallery_items (_order, _parent_id, id, image_id) FROM stdin;
1	69bcefadae75d02900837d38	69bcefb2ae75d02900837d3a	12
2	69bcefadae75d02900837d38	69bcefb4ae75d02900837d3c	13
3	69bcefadae75d02900837d38	69bcefbfae75d02900837d3e	14
\.


--
-- Data for Name: pages_blocks_paragraph; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_paragraph (_order, _parent_id, _path, id, paragraph, strong, block_name) FROM stdin;
1	7	content	690148118fbbf6d06638878a	very home we build meets the highest standards of thermal and sound insulation. That means your house stays warm in the winter, cool in the summer, and peaceful all year round. These cutting-edge technologies don’t just make life more comfortable – they also significantly reduce your energy bills. With us, you’re not only investing in a home, but in a lifestyle of comfort, efficiency, and long-term savings that will exceed your expectations.	f	\N
3	2	content	690146188fbbf6d066388771	Life happens—and your mortgage program can adapt. If you start with an investment property and later decide to move in yourself (or the other way around), our specialists know how to safely transition you into the right program. In many cases, this adjustment can even be made before construction is completed.	f	\N
5	2	content	690146238fbbf6d066388773	We operate under the high standards of Granite Risk Management, a national leader in construction lending oversight. Granite provides contractor verification, funds control (draw disbursement), inspections, and compliance checks. Being Granite-approved means our construction company meets these rigorous standards—giving you access to smoother financing, faster disbursements, and lower risks throughout the building process.	f	\N
6	2	content	6901462a8fbbf6d066388774	Many lenders require contractors to be Granite-approved before releasing funds. Granite then coordinates inspections and manages staged disbursements—keeping your project on time and on budget.	f	\N
7	2	content	6901462f8fbbf6d066388775	Granite even supports remote video inspections, helping reduce delays and ensuring funds flow as work progresses.	f	\N
9	2	content	6901463a8fbbf6d066388777	• Licenses, insurance, and proven experience of your builder or contractor. \n• Detailed budget, schedule, and documentation tied to each construction phase. \n• Readiness for stage inspections, since banks disburse funds only after verified completion.	f	\N
11	2	content	690146458fbbf6d066388779	 1. We match you with the best mortgage program for your needs (residence, rental, or investment).\n 2. We validate your builder and project under lender and Granite standards.\n 3. Construction begins with staged disbursements tied to progress milestones.\n 4. If your goals change mid-project, we can transition you to another program—all within lender requirements.	f	\N
1	1	content	690145718fbbf6d066388766	1Before you even start designing your home, you can choose from our exclusive collection of land lots. We offer properties with private lakes, forest surroundings, and stunning scenic views—all carefully selected to combine the peace of nature with the convenience of nearby infrastructure.	f	\N
3	1	content	690145848fbbf6d066388768	Every lot is chosen with lifestyle in mind:	t	\N
4	1	content	6901458a8fbbf6d066388769	• A tranquil retreat, surrounded by nature.\n• Just 10–15 minutes from restaurants, shopping, and schools.\n• Close to resorts, recreation areas, and urban amenities.	f	\N
5	1	content	690145928fbbf6d06638876a	This balance allows you to enjoy the serenity of your own home while staying connected to everything your family needs.	f	\N
1	5	content	69bce2abe889b03a7724eb90	Our homes are designed not only with architectural precision, but also with <strong>advanced\nengineering systems that elevate comfort, efficiency, and long-term performance.</strong>\nEach property is built with high construction standards by default, while additional\ntechnologies and lifestyle features can be integrated depending on your preferences.\nDuring the <strong>3D design phase</strong>, we review these systems together and incorporate the\nselected options directly into the digital model of your future home.\nThis approach allows you to clearly understand how each feature improves the home\n— both functionally and architecturally	f	\N
3	5	content	69bce655e889b03a7724eb94	<strong>Energy Efficiency & Climate Engineering</strong>\nThese systems focus on <strong>thermal performance, energy efficiency, and indoor\ncomfort</strong> throughout the year. \n\n<strong>TPO Energy-Efficient Roofing — $40,000</strong>\nA high-performance TPO roofing system with a <strong>30-year warranty.</strong> Its reflective\nsurface reduces heat absorption, helping keep the home cooler during summer while\nensuring long-term durability.\n\n<strong>Closed-Cell Spray Foam Insulation (Walls R-21 / Roof R-49) — $26,000</strong>\nAdvanced insulation that significantly reduces energy loss and improves indoor\ntemperature stability.\n• Walls: R-21\n• Roof: R-49Hyper-Heating Mini-Split HVAC System — $31,000\nA powerful climate control system designed to operate in extreme winter conditions\ndown to –27°C. The system can function on electricity or propane, ensuring reliable\nheating regardless of conditions.\n\n<strong>Radiant Floor Heating — $32,000</strong>\nA water-based radiant heating system that distributes warmth evenly through the\nfloors, creating a consistent and comfortable indoor environment. \n\n<strong>Propane Heating Boiler — $17,000</strong>\nA highly efficient heating solution supported by an underground propane tank. This\ndesign keeps the property visually clean while providing reliable energy supply. \n\n<strong>Energy Recovery Ventilation System (ERV) — $18,000</strong>\nA continuous ventilation system that maintains fresh indoor air while preserving\nenergy efficiency by recovering heat from outgoing air.\n\n<strong>Individual Climate Zones — $9,000</strong>\nSeparate climate zones allow each room to have its own thermostat, giving\nhomeowners full control over temperature and comfort.\n\n<strong>Comfort & Interior Performance</strong>\n\nThese features enhance <strong>acoustic comfort, natural light, and interior living quality.\nLuxury European Energy-Efficient Windows — $30,000</strong>\n\nPremium European window systems engineered for superior insulation, noise\nreduction, and optimal natural light.\n\n<strong>Enhanced Sound Insulation Between Rooms — Included</strong>\nAdditional sound insulation between rooms improves privacy and creates a quieter\nindoor environment — ideal for family living or working from home. \n\n>stromg>Exterior Comfort & Lifestyle Features</strong>\nThese upgrades expand the home’s functionality and elevate everyday living. \n\n<strong>Snow-Melt Heated Driveway System — $22,000</strong>\nA built-in driveway heating system that automatically melts snow and ice, keeping\nthe surface clear and safe during winter.\n<strong>Heated Concrete Swimming Pool — $26,000</strong>\n\nA durable concrete pool with integrated heating that extends the swimming season\nand enhances outdoor living.\n\n<strong>Architectural Customization</strong>\nArchitecture is not only about structure, but about <strong>identity and visual character.\nCustom Architectural Façade — $30,000</strong>\n\nA distinctive exterior design developed specifically for your home. Carefully selected\nmaterials, balanced proportions, and refined architectural lines create a timeless and\nelegant appearance.\n\n<strong>Fully Integrated Into Your Home Design</strong>\nAll technologies, upgrades, and architectural options are reviewed during the <strong>3D\nvisualization and planning stage.</strong>\n\n<strong>This allows you to see how every feature integrates into the overall design of the</strong>\nhome — from engineering systems to architectural details — before construction\nbegins.\nThe result is a home that is <strong>not only visually striking, but intelligently engineered\nfor comfort, efficiency, and long-term performance. </strong>	f	\N
1	8	content	69bce8c1e889b03a7724eb96	<strong>Consultation & Location Tour</strong>\nWe begin with a consultation to understand your goals, lifestyle, and vision for your future home. If\nyou are interested in the location, we can also arrange a private tour of the available land,\nallowing you to explore the area and see the setting in person.\n\n<strong>Mortgage Planning</strong>\nIf financing is needed, we help connect you with the right <strong>mortgage program</strong> for your project —\nwhether for a primary residence, second home, or investment property.\n\n<strong>3D Design & Visualization</strong>\nYour home is fully modeled in <strong>3D before construction begins</strong>, allowing you to review the layout,\nmaterials, and architectural details before any building starts.\n\n<strong>Planning & Engineering</strong>\nAll materials, systems, and architectural elements are finalized, ensuring the project is carefully\nplanned and ready for construction.\n\n<strong>Construction</strong>\nprocess.\nThe home is built with professional oversight, controlled financing, and a structured construction\n\n<strong>Completion & Delivery</strong>\nYour fully customized home is completed and ready for move-in.\n<br><br>	f	\N
2	4	content	690147478fbbf6d066388782	We value the relationships we build with our clients just as much as the homes we create.\nHere are a few words from people who have worked with our team and experienced our approach to\ndesign, planning, and construction.\n<br><br>	f	\N
1	6	content	690147dd8fbbf6d066388788	Every project begins with <strong>a complete 3D architectural visualization of your future\nhome.</strong>\nBefore construction begins, we create a detailed digital model that allows you to\nreview and refine every aspect of the house. This process ensures that the layout,\narchitecture, and functionality are clearly defined before building starts.\nInstead of relying only on drawings, you will see a <strong>realistic 3D representation of\nthe entire home</strong>, helping you make confident decisions about the design.\n<strong>Fully Custom Architecture</strong>\nYour home is not selected from a catalog — it is <strong>designed specifically for you.</strong>\nDuring the visualization stage, we work with you to define all key architectural\nelements, including:\n• overall layout and floor plan\n• number and purpose of rooms\n• architectural style\n• exterior façade design• windows and doors\n• materials and finishes\nEvery detail is developed within the <strong>3D architectural model</strong>, allowing you to review\nproportions, materials, and design choices from multiple perspectives.\n<strong>Example Architectural Concepts</strong>\nBelow are examples of architectural concepts developed during the visualization\nstage. These renderings illustrate how different architectural styles, materials, and\nlayouts can be explored before finalizing the design.	f	\N
2	6	content	690147e48fbbf6d066388789	Our innovative system allows you to see your home before it’s built, so you can explore, customize, and perfect it in real time.  No stress. No complicated processes. Just a comfortable, enjoyable experience where your dream becomes a plan – and your plan becomes a reality.	f	\N
1	3	content	690146a58fbbf6d06638877a	<strong>1. Early Construction Investment</strong>\nWhen you begin your project during the construction stage, you avoid the premium\ntypically added to fully completed homes.\nInstead of paying the final retail price of a finished property, you invest in the home\nwhile it is being developed.\nThis approach allows you to <strong>control design decisions while keeping the overall\nproject cost more efficient. </strong>	f	\N
2	3	content	69bcfa4a55b61c451b0a6883	<strong>2. Direct Manufacturer Pricing</strong>\nWe work directly with trusted manufacturers for many of the key elements of the\nhome, including:\n• windows\n• doors\n• interior finishes\n• fixtures and hardware\nBy sourcing materials directly from manufacturers, clients benefit from <strong>wholesalelevel pricing without additional retail markups.</strong>\nThe result is a home that reflects your design vision while maintaining <strong>greater cost\nefficiency throughout the building process. </strong>	f	\N
\.


--
-- Data for Name: pages_blocks_read_more; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_read_more (_order, _parent_id, _path, id, label, block_name) FROM stdin;
1	2	content	690146048fbbf6d06638876f	Read more	\N
2	1	content	6901457f8fbbf6d066388767	Read more	\N
2	5	content	69bce650e889b03a7724eb92	Read more	\N
\.


--
-- Data for Name: pages_blocks_title; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_blocks_title (_order, _parent_id, _path, id, title, block_name) FROM stdin;
2	2	content	6901460e8fbbf6d066388770	Flexibility Throughout Your Project	\N
4	2	content	6901461d8fbbf6d066388772	Why Work With Us	\N
8	2	content	690146358fbbf6d066388776	What You Should Always Check	\N
10	2	content	690146418fbbf6d066388778	Our Process	\N
\.


--
-- Data for Name: pages_gridcont; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_gridcont (_order, _parent_id, id, title, description) FROM stdin;
1	2	690145b68fbbf6d06638876b	Primary Residence	Financing options designed for purchasing your first or primary home, with clear terms and a smooth approval process.
2	2	690145b78fbbf6d06638876c	Second Home	Programs for purchasing a second residence or vacation home, with flexible terms and usage  guidelines.
3	2	690145ce8fbbf6d06638876d	Short-Term Rental (Airbnb / Vacation Rental)	Specialized mortgage solutions for properties intended for short-term rental income, aligned with lender requirements for STR properties.
4	2	690145d88fbbf6d06638876e	Investment\\nProperty	Financing options for investors—whether you’re building a rental portfolio, pursuing long-term leasing, or following a build-to-rent strategy.
\.


--
-- Data for Name: pages_videos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pages_videos (_order, _parent_id, id, poster_id, video_file_id) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents (id, global_slug, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_locked_documents_rels (id, "order", parent_id, path, users_id, media_id, pages_id, leads_id) FROM stdin;
\.


--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_migrations (id, name, batch, updated_at, created_at) FROM stdin;
1	dev	-1	2026-03-20 06:55:11.321+00	2025-10-28 21:26:55.885+00
\.


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences (id, key, value, updated_at, created_at) FROM stdin;
1	global-home	{"editViewType": "default"}	2025-10-28 21:35:35.857+00	2025-10-28 21:35:35.858+00
2	collection-users	{}	2025-10-28 21:37:47.451+00	2025-10-28 21:37:47.449+00
4	collection-leads	{"limit": 100}	2025-10-29 02:25:20.124+00	2025-10-28 21:39:54.11+00
6	collection-pages-7	{"fields": {"content": {"collapsed": ["690148118fbbf6d06638878a"]}}}	2025-10-29 04:07:06.653+00	2025-10-29 04:07:06.654+00
3	collection-media	{"limit": 25, "editViewType": "default"}	2026-03-20 05:37:16.509+00	2025-10-28 21:39:52.438+00
5	collection-pages	{"limit": 10, "editViewType": "default"}	2026-03-20 05:55:38.769+00	2025-10-28 21:39:55.133+00
8	collection-pages-5	{"fields": {"content": {"collapsed": []}}}	2026-03-20 06:15:14.003+00	2026-03-20 06:15:02.254+00
9	collection-pages-4	{"fields": {"videos": {"collapsed": ["690147368fbbf6d06638877f", "690147388fbbf6d066388780", "6901473e8fbbf6d066388781"]}, "content": {"collapsed": ["69bcefadae75d02900837d38"]}}}	2026-03-20 07:14:21.749+00	2026-03-20 06:57:12.242+00
7	collection-pages-6	{"fields": {"content": {"collapsed": ["690147e48fbbf6d066388789"]}}}	2026-03-20 07:17:53.089+00	2025-11-30 20:17:22.177+00
\.


--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payload_preferences_rels (id, "order", parent_id, path, users_id) FROM stdin;
1	\N	1	user	1
2	\N	2	user	1
11	\N	4	user	1
12	\N	6	user	1
16	\N	3	user	1
17	\N	5	user	1
19	\N	8	user	1
22	\N	9	user	1
23	\N	7	user	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, updated_at, created_at, email, reset_password_token, reset_password_expiration, salt, hash, login_attempts, lock_until) FROM stdin;
1	2026-03-20 05:54:14.433+00	2025-10-28 21:35:30.329+00	kanevgoga2@gmail.com	\N	\N	671db57fe5682159ee84e9ca81267ae2a934b6e8e7d25d105edc4c771641acba	fc7274cec429b1aa75d6ed91061cd453b5a28e61d584ed9054b0725dbb1a5efa9d92132a4b536ab15502997291afb22f7ea410c71a214bd581487b044a1055524a509514d959a3473355cec51c859db6d947a3e438b6d57411d6ef5f04554c0d8f36321957a37833bb1047e041b988826819e6c0085f2cff5afc35a18883cb354fef9d917d52880f45eb38b764afb50a1d3d4fcc405b75eeb1195cd123d21eed3c62426a06cd8e1f0d1eea45dd7c0bc2977579caf2c3e6e0055f38ff77744f4e78c42bd073474306ab1a86df9801f2be8e7feb2324bba983ab1680078c920049b0883d78a0a4aa899b9f610eb40f6e2f700f31625a7ba89429b2e3d832ce0fa3351ded9586a8b467ef9486360a1ebaa4d9d68c8af7c7b54a6c44fc19c4e10b5924bc66650c3dceaa546e9dcc1a4d6d47b3b9cc48accd7b95500ea240fe62982102c00bf7090a219f78eee4538bc6e52e788367641a5e8bb685de4abd4feec94aeb7d08ad3e948caaad5059dd1b20dcfd97e45db6b90f44ca1909e9161acec150af769b0f165881ab8b16d4f51d8d3c4923f60a47a42ae5d8fc9d92a6e7ab055a33129d33b197432d8c5d8496047e90f88261a1d5198a08c5e49e3d5204512a0c59ad4d83ff0d509a5f1a178b51f35941651a3e7f255a7cb6157d66acaf0f38178b283f40f82284ee66a8a7e150bd229bae2d940923efa088543f041d8d14faab	0	\N
\.


--
-- Data for Name: users_sessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_sessions (_order, _parent_id, id, created_at, expires_at) FROM stdin;
1	1	00c32b65-c26c-4504-94bb-9a260ae33f8c	2026-03-20 05:54:14.433+00	2026-03-20 07:54:14.433+00
\.


--
-- Name: home_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_id_seq', 1, true);


--
-- Name: leads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.leads_id_seq', 94, true);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.media_id_seq', 14, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_id_seq', 8, true);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_id_seq', 35, true);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_rels_id_seq', 62, true);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_migrations_id_seq', 1, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_id_seq', 9, true);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_rels_id_seq', 23, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: home home_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_pkey PRIMARY KEY (id);


--
-- Name: leads leads_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.leads
    ADD CONSTRAINT leads_pkey PRIMARY KEY (id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_disclaimer pages_blocks_disclaimer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_disclaimer
    ADD CONSTRAINT pages_blocks_disclaimer_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_image_gallery_items pages_blocks_image_gallery_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_items
    ADD CONSTRAINT pages_blocks_image_gallery_items_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_image_gallery pages_blocks_image_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery
    ADD CONSTRAINT pages_blocks_image_gallery_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_paragraph pages_blocks_paragraph_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_paragraph
    ADD CONSTRAINT pages_blocks_paragraph_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_read_more pages_blocks_read_more_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_read_more
    ADD CONSTRAINT pages_blocks_read_more_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_title pages_blocks_title_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_title
    ADD CONSTRAINT pages_blocks_title_pkey PRIMARY KEY (id);


--
-- Name: pages_gridcont pages_gridcont_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_gridcont
    ADD CONSTRAINT pages_gridcont_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages_videos pages_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_videos
    ADD CONSTRAINT pages_videos_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents payload_locked_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents
    ADD CONSTRAINT payload_locked_documents_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_migrations payload_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_migrations
    ADD CONSTRAINT payload_migrations_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences payload_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences
    ADD CONSTRAINT payload_preferences_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences_rels payload_preferences_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_sessions users_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_pkey PRIMARY KEY (id);


--
-- Name: home_grid_section_item1_grid_section_item1_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_grid_section_item1_grid_section_item1_image_idx ON public.home USING btree (grid_section_item1_image_id);


--
-- Name: home_grid_section_item2_grid_section_item2_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_grid_section_item2_grid_section_item2_image_idx ON public.home USING btree (grid_section_item2_image_id);


--
-- Name: home_grid_section_item3_grid_section_item3_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_grid_section_item3_grid_section_item3_image_idx ON public.home USING btree (grid_section_item3_image_id);


--
-- Name: home_grid_section_item4_grid_section_item4_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_grid_section_item4_grid_section_item4_image_idx ON public.home USING btree (grid_section_item4_image_id);


--
-- Name: home_grid_section_item5_grid_section_item5_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_grid_section_item5_grid_section_item5_image_idx ON public.home USING btree (grid_section_item5_image_id);


--
-- Name: home_grid_section_item6_grid_section_item6_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_grid_section_item6_grid_section_item6_image_idx ON public.home USING btree (grid_section_item6_image_id);


--
-- Name: home_grid_section_item7_grid_section_item7_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_grid_section_item7_grid_section_item7_image_idx ON public.home USING btree (grid_section_item7_image_id);


--
-- Name: home_grid_section_item8_grid_section_item8_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX home_grid_section_item8_grid_section_item8_image_idx ON public.home USING btree (grid_section_item8_image_id);


--
-- Name: leads_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX leads_created_at_idx ON public.leads USING btree (created_at);


--
-- Name: leads_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX leads_updated_at_idx ON public.leads USING btree (updated_at);


--
-- Name: media_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_created_at_idx ON public.media USING btree (created_at);


--
-- Name: media_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX media_filename_idx ON public.media USING btree (filename);


--
-- Name: media_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_updated_at_idx ON public.media USING btree (updated_at);


--
-- Name: media_video_poster_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX media_video_poster_idx ON public.media USING btree (video_poster_id);


--
-- Name: pages_blocks_disclaimer_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_disclaimer_order_idx ON public.pages_blocks_disclaimer USING btree (_order);


--
-- Name: pages_blocks_disclaimer_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_disclaimer_parent_id_idx ON public.pages_blocks_disclaimer USING btree (_parent_id);


--
-- Name: pages_blocks_disclaimer_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_disclaimer_path_idx ON public.pages_blocks_disclaimer USING btree (_path);


--
-- Name: pages_blocks_image_gallery_items_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_items_image_idx ON public.pages_blocks_image_gallery_items USING btree (image_id);


--
-- Name: pages_blocks_image_gallery_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_items_order_idx ON public.pages_blocks_image_gallery_items USING btree (_order);


--
-- Name: pages_blocks_image_gallery_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_items_parent_id_idx ON public.pages_blocks_image_gallery_items USING btree (_parent_id);


--
-- Name: pages_blocks_image_gallery_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_order_idx ON public.pages_blocks_image_gallery USING btree (_order);


--
-- Name: pages_blocks_image_gallery_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_parent_id_idx ON public.pages_blocks_image_gallery USING btree (_parent_id);


--
-- Name: pages_blocks_image_gallery_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_image_gallery_path_idx ON public.pages_blocks_image_gallery USING btree (_path);


--
-- Name: pages_blocks_paragraph_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_paragraph_order_idx ON public.pages_blocks_paragraph USING btree (_order);


--
-- Name: pages_blocks_paragraph_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_paragraph_parent_id_idx ON public.pages_blocks_paragraph USING btree (_parent_id);


--
-- Name: pages_blocks_paragraph_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_paragraph_path_idx ON public.pages_blocks_paragraph USING btree (_path);


--
-- Name: pages_blocks_read_more_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_read_more_order_idx ON public.pages_blocks_read_more USING btree (_order);


--
-- Name: pages_blocks_read_more_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_read_more_parent_id_idx ON public.pages_blocks_read_more USING btree (_parent_id);


--
-- Name: pages_blocks_read_more_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_read_more_path_idx ON public.pages_blocks_read_more USING btree (_path);


--
-- Name: pages_blocks_title_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_title_order_idx ON public.pages_blocks_title USING btree (_order);


--
-- Name: pages_blocks_title_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_title_parent_id_idx ON public.pages_blocks_title USING btree (_parent_id);


--
-- Name: pages_blocks_title_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_blocks_title_path_idx ON public.pages_blocks_title USING btree (_path);


--
-- Name: pages_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_created_at_idx ON public.pages USING btree (created_at);


--
-- Name: pages_file_download_file_download_file_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_file_download_file_download_file_idx ON public.pages USING btree (file_download_file_id);


--
-- Name: pages_gridcont_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_gridcont_order_idx ON public.pages_gridcont USING btree (_order);


--
-- Name: pages_gridcont_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_gridcont_parent_id_idx ON public.pages_gridcont USING btree (_parent_id);


--
-- Name: pages_hero_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_hero_image_idx ON public.pages USING btree (hero_image_id);


--
-- Name: pages_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pages_slug_idx ON public.pages USING btree (slug);


--
-- Name: pages_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_updated_at_idx ON public.pages USING btree (updated_at);


--
-- Name: pages_videos_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_videos_order_idx ON public.pages_videos USING btree (_order);


--
-- Name: pages_videos_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_videos_parent_id_idx ON public.pages_videos USING btree (_parent_id);


--
-- Name: pages_videos_poster_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_videos_poster_idx ON public.pages_videos USING btree (poster_id);


--
-- Name: pages_videos_video_file_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pages_videos_video_file_idx ON public.pages_videos USING btree (video_file_id);


--
-- Name: payload_locked_documents_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_created_at_idx ON public.payload_locked_documents USING btree (created_at);


--
-- Name: payload_locked_documents_global_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_global_slug_idx ON public.payload_locked_documents USING btree (global_slug);


--
-- Name: payload_locked_documents_rels_leads_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_leads_id_idx ON public.payload_locked_documents_rels USING btree (leads_id);


--
-- Name: payload_locked_documents_rels_media_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_media_id_idx ON public.payload_locked_documents_rels USING btree (media_id);


--
-- Name: payload_locked_documents_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_order_idx ON public.payload_locked_documents_rels USING btree ("order");


--
-- Name: payload_locked_documents_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_pages_id_idx ON public.payload_locked_documents_rels USING btree (pages_id);


--
-- Name: payload_locked_documents_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_parent_idx ON public.payload_locked_documents_rels USING btree (parent_id);


--
-- Name: payload_locked_documents_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_path_idx ON public.payload_locked_documents_rels USING btree (path);


--
-- Name: payload_locked_documents_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_rels_users_id_idx ON public.payload_locked_documents_rels USING btree (users_id);


--
-- Name: payload_locked_documents_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_locked_documents_updated_at_idx ON public.payload_locked_documents USING btree (updated_at);


--
-- Name: payload_migrations_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_migrations_created_at_idx ON public.payload_migrations USING btree (created_at);


--
-- Name: payload_migrations_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_migrations_updated_at_idx ON public.payload_migrations USING btree (updated_at);


--
-- Name: payload_preferences_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_created_at_idx ON public.payload_preferences USING btree (created_at);


--
-- Name: payload_preferences_key_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_key_idx ON public.payload_preferences USING btree (key);


--
-- Name: payload_preferences_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_order_idx ON public.payload_preferences_rels USING btree ("order");


--
-- Name: payload_preferences_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_parent_idx ON public.payload_preferences_rels USING btree (parent_id);


--
-- Name: payload_preferences_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_path_idx ON public.payload_preferences_rels USING btree (path);


--
-- Name: payload_preferences_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_rels_users_id_idx ON public.payload_preferences_rels USING btree (users_id);


--
-- Name: payload_preferences_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payload_preferences_updated_at_idx ON public.payload_preferences USING btree (updated_at);


--
-- Name: users_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_created_at_idx ON public.users USING btree (created_at);


--
-- Name: users_email_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX users_email_idx ON public.users USING btree (email);


--
-- Name: users_sessions_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_sessions_order_idx ON public.users_sessions USING btree (_order);


--
-- Name: users_sessions_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_sessions_parent_id_idx ON public.users_sessions USING btree (_parent_id);


--
-- Name: users_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_updated_at_idx ON public.users USING btree (updated_at);


--
-- Name: home home_grid_section_item1_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_grid_section_item1_image_id_media_id_fk FOREIGN KEY (grid_section_item1_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home home_grid_section_item2_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_grid_section_item2_image_id_media_id_fk FOREIGN KEY (grid_section_item2_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home home_grid_section_item3_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_grid_section_item3_image_id_media_id_fk FOREIGN KEY (grid_section_item3_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home home_grid_section_item4_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_grid_section_item4_image_id_media_id_fk FOREIGN KEY (grid_section_item4_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home home_grid_section_item5_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_grid_section_item5_image_id_media_id_fk FOREIGN KEY (grid_section_item5_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home home_grid_section_item6_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_grid_section_item6_image_id_media_id_fk FOREIGN KEY (grid_section_item6_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home home_grid_section_item7_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_grid_section_item7_image_id_media_id_fk FOREIGN KEY (grid_section_item7_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: home home_grid_section_item8_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.home
    ADD CONSTRAINT home_grid_section_item8_image_id_media_id_fk FOREIGN KEY (grid_section_item8_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: media media_video_poster_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_video_poster_id_media_id_fk FOREIGN KEY (video_poster_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_disclaimer pages_blocks_disclaimer_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_disclaimer
    ADD CONSTRAINT pages_blocks_disclaimer_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_image_gallery_items pages_blocks_image_gallery_items_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_items
    ADD CONSTRAINT pages_blocks_image_gallery_items_image_id_media_id_fk FOREIGN KEY (image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_image_gallery_items pages_blocks_image_gallery_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery_items
    ADD CONSTRAINT pages_blocks_image_gallery_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_image_gallery(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_image_gallery pages_blocks_image_gallery_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_image_gallery
    ADD CONSTRAINT pages_blocks_image_gallery_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_paragraph pages_blocks_paragraph_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_paragraph
    ADD CONSTRAINT pages_blocks_paragraph_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_read_more pages_blocks_read_more_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_read_more
    ADD CONSTRAINT pages_blocks_read_more_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_title pages_blocks_title_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_blocks_title
    ADD CONSTRAINT pages_blocks_title_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_file_download_file_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_file_download_file_id_media_id_fk FOREIGN KEY (file_download_file_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_gridcont pages_gridcont_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_gridcont
    ADD CONSTRAINT pages_gridcont_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_hero_image_id_media_id_fk FOREIGN KEY (hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_videos pages_videos_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_videos
    ADD CONSTRAINT pages_videos_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_videos pages_videos_poster_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_videos
    ADD CONSTRAINT pages_videos_poster_id_media_id_fk FOREIGN KEY (poster_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_videos pages_videos_video_file_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_videos
    ADD CONSTRAINT pages_videos_video_file_id_media_id_fk FOREIGN KEY (video_file_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_leads_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_leads_fk FOREIGN KEY (leads_id) REFERENCES public.leads(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_media_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_locked_documents(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_preferences(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: users_sessions users_sessions_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_sessions
    ADD CONSTRAINT users_sessions_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict dC5bllaZhBEnZxesvGQSSTV1ktLx3x4tROjI7ufqcey0WQTRY4BhuPntpEQR4BK

