--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: flyway_schema_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flyway_schema_history (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);


ALTER TABLE public.flyway_schema_history OWNER TO postgres;

--
-- Name: sample_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sample_entity (
    id bigint NOT NULL,
    name character varying(255),
    age integer DEFAULT 0
);


ALTER TABLE public.sample_entity OWNER TO postgres;

--
-- Name: sample_entity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sample_entity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_entity_id_seq OWNER TO postgres;

--
-- Name: sample_entity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sample_entity_id_seq OWNED BY public.sample_entity.id;


--
-- Name: sample_entity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sample_entity ALTER COLUMN id SET DEFAULT nextval('public.sample_entity_id_seq'::regclass);


--
-- Data for Name: flyway_schema_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flyway_schema_history (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) FROM stdin;
1	1	init	SQL	V1__init.sql	1978824692	postgres	2023-08-10 11:34:18.26708	107	t
2	1.1	sample add age	SQL	V1.1__sample_add_age.sql	-1536757247	postgres	2023-08-10 11:34:18.428406	13	t
3	\N	sample seed	SQL	R__sample_seed.sql	-1749794791	postgres	2023-08-10 11:47:04.291739	21	t
\.


--
-- Data for Name: sample_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sample_entity (id, name, age) FROM stdin;
1	postgres1	0
2	postgres2	0
3	postgres3	0
4	postgres4	0
5	postgres5	0
6	postgres6	0
\.


--
-- Name: sample_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sample_entity_id_seq', 6, true);


--
-- Name: flyway_schema_history flyway_schema_history_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);


--
-- Name: sample_entity sample_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sample_entity
    ADD CONSTRAINT sample_entity_pkey PRIMARY KEY (id);


--
-- Name: flyway_schema_history_s_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX flyway_schema_history_s_idx ON public.flyway_schema_history USING btree (success);


--
-- PostgreSQL database dump complete
--

