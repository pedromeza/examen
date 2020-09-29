--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: CatEstadoCivil; Type: TABLE; Schema: public; Owner: app_zuci; Tablespace: 
--

CREATE TABLE "CatEstadoCivil" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    status integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public."CatEstadoCivil" OWNER TO app_zuci;

--
-- Name: CatEstadoCivil_id_seq; Type: SEQUENCE; Schema: public; Owner: app_zuci
--

CREATE SEQUENCE "CatEstadoCivil_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CatEstadoCivil_id_seq" OWNER TO app_zuci;

--
-- Name: CatEstadoCivil_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app_zuci
--

ALTER SEQUENCE "CatEstadoCivil_id_seq" OWNED BY "CatEstadoCivil".id;


--
-- Name: CatGenero; Type: TABLE; Schema: public; Owner: app_zuci; Tablespace: 
--

CREATE TABLE "CatGenero" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    status integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public."CatGenero" OWNER TO app_zuci;

--
-- Name: CatGenero_id_seq; Type: SEQUENCE; Schema: public; Owner: app_zuci
--

CREATE SEQUENCE "CatGenero_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CatGenero_id_seq" OWNER TO app_zuci;

--
-- Name: CatGenero_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app_zuci
--

ALTER SEQUENCE "CatGenero_id_seq" OWNED BY "CatGenero".id;


--
-- Name: CatNivelInteres; Type: TABLE; Schema: public; Owner: app_zuci; Tablespace: 
--

CREATE TABLE "CatNivelInteres" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    status integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public."CatNivelInteres" OWNER TO app_zuci;

--
-- Name: CatNivelInteresOpc; Type: TABLE; Schema: public; Owner: app_zuci; Tablespace: 
--

CREATE TABLE "CatNivelInteresOpc" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    interesopc_id integer NOT NULL,
    status integer NOT NULL
);


ALTER TABLE public."CatNivelInteresOpc" OWNER TO app_zuci;

--
-- Name: CatNivelInteresOpc_id_seq; Type: SEQUENCE; Schema: public; Owner: app_zuci
--

CREATE SEQUENCE "CatNivelInteresOpc_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CatNivelInteresOpc_id_seq" OWNER TO app_zuci;

--
-- Name: CatNivelInteresOpc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app_zuci
--

ALTER SEQUENCE "CatNivelInteresOpc_id_seq" OWNED BY "CatNivelInteresOpc".id;


--
-- Name: CatNivelInteres_id_seq; Type: SEQUENCE; Schema: public; Owner: app_zuci
--

CREATE SEQUENCE "CatNivelInteres_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CatNivelInteres_id_seq" OWNER TO app_zuci;

--
-- Name: CatNivelInteres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app_zuci
--

ALTER SEQUENCE "CatNivelInteres_id_seq" OWNED BY "CatNivelInteres".id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: app_zuci; Tablespace: 
--

CREATE TABLE migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO app_zuci;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: app_zuci
--

CREATE SEQUENCE migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO app_zuci;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app_zuci
--

ALTER SEQUENCE migrations_id_seq OWNED BY migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: app_zuci; Tablespace: 
--

CREATE TABLE password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO app_zuci;

--
-- Name: users; Type: TABLE; Schema: public; Owner: app_zuci; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    apellido_paterno character varying(255) NOT NULL,
    apellido_materno character varying(255) NOT NULL,
    idgenero integer NOT NULL,
    edad integer NOT NULL,
    idestado_civil integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    idnivel_interes integer NOT NULL,
    idinteres_opc integer,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO app_zuci;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: app_zuci
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO app_zuci;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: app_zuci
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: app_zuci
--

ALTER TABLE ONLY "CatEstadoCivil" ALTER COLUMN id SET DEFAULT nextval('"CatEstadoCivil_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: app_zuci
--

ALTER TABLE ONLY "CatGenero" ALTER COLUMN id SET DEFAULT nextval('"CatGenero_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: app_zuci
--

ALTER TABLE ONLY "CatNivelInteres" ALTER COLUMN id SET DEFAULT nextval('"CatNivelInteres_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: app_zuci
--

ALTER TABLE ONLY "CatNivelInteresOpc" ALTER COLUMN id SET DEFAULT nextval('"CatNivelInteresOpc_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: app_zuci
--

ALTER TABLE ONLY migrations ALTER COLUMN id SET DEFAULT nextval('migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: app_zuci
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: CatEstadoCivil; Type: TABLE DATA; Schema: public; Owner: app_zuci
--

INSERT INTO "CatEstadoCivil" VALUES (1, 'Soltero', 1, NULL, NULL);
INSERT INTO "CatEstadoCivil" VALUES (2, 'Casado', 1, NULL, NULL);
INSERT INTO "CatEstadoCivil" VALUES (3, 'Divorciado', 1, NULL, NULL);


--
-- Name: CatEstadoCivil_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app_zuci
--

SELECT pg_catalog.setval('"CatEstadoCivil_id_seq"', 3, true);


--
-- Data for Name: CatGenero; Type: TABLE DATA; Schema: public; Owner: app_zuci
--

INSERT INTO "CatGenero" VALUES (2, 'Masculino', 1, NULL, NULL);
INSERT INTO "CatGenero" VALUES (3, 'Femenino', 1, NULL, NULL);
INSERT INTO "CatGenero" VALUES (4, 'Otro', 1, NULL, NULL);


--
-- Name: CatGenero_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app_zuci
--

SELECT pg_catalog.setval('"CatGenero_id_seq"', 4, true);


--
-- Data for Name: CatNivelInteres; Type: TABLE DATA; Schema: public; Owner: app_zuci
--

INSERT INTO "CatNivelInteres" VALUES (1, 'Preparatoria', 1, NULL, NULL);
INSERT INTO "CatNivelInteres" VALUES (2, 'Licenciatura', 1, NULL, NULL);
INSERT INTO "CatNivelInteres" VALUES (3, 'Posgrado', 1, NULL, NULL);


--
-- Data for Name: CatNivelInteresOpc; Type: TABLE DATA; Schema: public; Owner: app_zuci
--

INSERT INTO "CatNivelInteresOpc" VALUES (1, 'Lic. En Derecho', NULL, NULL, 2, 1);
INSERT INTO "CatNivelInteresOpc" VALUES (2, 'Lic. En Finanzas', NULL, NULL, 2, 1);
INSERT INTO "CatNivelInteresOpc" VALUES (3, 'Mtria. Admon. De Negocios', NULL, NULL, 3, 1);
INSERT INTO "CatNivelInteresOpc" VALUES (4, 'Mtria. Direccion de proyectos', NULL, NULL, 3, 1);


--
-- Name: CatNivelInteresOpc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app_zuci
--

SELECT pg_catalog.setval('"CatNivelInteresOpc_id_seq"', 5, true);


--
-- Name: CatNivelInteres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app_zuci
--

SELECT pg_catalog.setval('"CatNivelInteres_id_seq"', 3, true);


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: app_zuci
--

INSERT INTO migrations VALUES (7, '2014_10_12_000000_create_users_table', 1);
INSERT INTO migrations VALUES (8, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO migrations VALUES (9, '2020_09_28_221753_cat_estado_civil', 1);
INSERT INTO migrations VALUES (10, '2020_09_28_222035_cat_interes', 1);
INSERT INTO migrations VALUES (11, '2020_09_28_222635_cat_genero', 1);
INSERT INTO migrations VALUES (12, '2020_09_28_222715_cat_interes_opc', 1);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app_zuci
--

SELECT pg_catalog.setval('migrations_id_seq', 12, true);


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: app_zuci
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: app_zuci
--

INSERT INTO users VALUES (3, 'Pedro', 'meza', 'arellano', 2, 27, 1, 'scrat.pedro@gmail.com', '$2y$10$DVfuJZgKrFib48KByTDUQOjrdrDWxe6reCp8ZUCbB4MsxczDYR0ay', 3, 3, 'XVkEVBJpYvbhlGGeApVd91qcjRyl6tlWbMSvNraEIOQZLpYINeNunUA8ZA84', '2020-09-29 04:13:06', '2020-09-29 04:13:06');


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app_zuci
--

SELECT pg_catalog.setval('users_id_seq', 3, true);


--
-- Name: CatEstadoCivil_pkey; Type: CONSTRAINT; Schema: public; Owner: app_zuci; Tablespace: 
--

ALTER TABLE ONLY "CatEstadoCivil"
    ADD CONSTRAINT "CatEstadoCivil_pkey" PRIMARY KEY (id);


--
-- Name: CatGenero_pkey; Type: CONSTRAINT; Schema: public; Owner: app_zuci; Tablespace: 
--

ALTER TABLE ONLY "CatGenero"
    ADD CONSTRAINT "CatGenero_pkey" PRIMARY KEY (id);


--
-- Name: CatNivelInteresOpc_pkey; Type: CONSTRAINT; Schema: public; Owner: app_zuci; Tablespace: 
--

ALTER TABLE ONLY "CatNivelInteresOpc"
    ADD CONSTRAINT "CatNivelInteresOpc_pkey" PRIMARY KEY (id);


--
-- Name: CatNivelInteres_pkey; Type: CONSTRAINT; Schema: public; Owner: app_zuci; Tablespace: 
--

ALTER TABLE ONLY "CatNivelInteres"
    ADD CONSTRAINT "CatNivelInteres_pkey" PRIMARY KEY (id);


--
-- Name: migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: app_zuci; Tablespace: 
--

ALTER TABLE ONLY migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: users_email_unique; Type: CONSTRAINT; Schema: public; Owner: app_zuci; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: app_zuci; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: app_zuci; Tablespace: 
--

CREATE INDEX password_resets_email_index ON password_resets USING btree (email);


--
-- Name: catnivelinteresopc_interesopc_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: app_zuci
--

ALTER TABLE ONLY "CatNivelInteresOpc"
    ADD CONSTRAINT catnivelinteresopc_interesopc_id_foreign FOREIGN KEY (interesopc_id) REFERENCES "CatNivelInteres"(id);


--
-- Name: users_idestado_civil_foreign; Type: FK CONSTRAINT; Schema: public; Owner: app_zuci
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_idestado_civil_foreign FOREIGN KEY (idestado_civil) REFERENCES "CatEstadoCivil"(id);


--
-- Name: users_idgenero_foreign; Type: FK CONSTRAINT; Schema: public; Owner: app_zuci
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_idgenero_foreign FOREIGN KEY (idgenero) REFERENCES "CatGenero"(id);


--
-- Name: users_idinteres_opc_foreign; Type: FK CONSTRAINT; Schema: public; Owner: app_zuci
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_idinteres_opc_foreign FOREIGN KEY (idinteres_opc) REFERENCES "CatNivelInteresOpc"(id);


--
-- Name: users_idnivel_interes_foreign; Type: FK CONSTRAINT; Schema: public; Owner: app_zuci
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_idnivel_interes_foreign FOREIGN KEY (idnivel_interes) REFERENCES "CatNivelInteres"(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

