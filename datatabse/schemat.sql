--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 14.6

-- Started on 2024-08-29 07:38:09

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
-- TOC entry 209 (class 1259 OID 59502)
-- Name: adres_test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adres_test (
    adres_id bigint,
    nazwa character varying(512)
);


ALTER TABLE public.adres_test OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 59510)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 61247)
-- Name: hospital_config_managment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hospital_config_managment (
    hospital_config_id bigint NOT NULL,
    managment_id bigint NOT NULL
);


ALTER TABLE public.hospital_config_managment OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 60589)
-- Name: managment_hospitals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.managment_hospitals (
    managment_id bigint NOT NULL,
    hospital_config_id bigint NOT NULL
);


ALTER TABLE public.managment_hospitals OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 60594)
-- Name: password_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_history (
    password_change_id bigint NOT NULL,
    password_history_id bigint NOT NULL
);


ALTER TABLE public.password_history OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 59538)
-- Name: private_messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.private_messages (
    private_message_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.private_messages OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 60599)
-- Name: recipent_hospital_branch_closed; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipent_hospital_branch_closed (
    hospital_branch_closed_id bigint NOT NULL,
    hospital_id bigint NOT NULL
);


ALTER TABLE public.recipent_hospital_branch_closed OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 60604)
-- Name: recipent_hospital_failures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipent_hospital_failures (
    hospital_failures_id bigint NOT NULL,
    hospital_id bigint NOT NULL
);


ALTER TABLE public.recipent_hospital_failures OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 59547)
-- Name: szpitale_raporty_godziny; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.szpitale_raporty_godziny (
    raport_id bigint NOT NULL,
    szpital_skr_oddzial_id bigint,
    uzytkownik_id bigint,
    stan_g1 bigint,
    stan_g2 bigint,
    stan_g3 bigint,
    liczba_lekarzy bigint,
    data_aktualizacji timestamp without time zone
);


ALTER TABLE public.szpitale_raporty_godziny OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 59550)
-- Name: tab_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_address (
    address_id integer NOT NULL,
    city character varying(255),
    number character varying(255),
    post_code character varying(255),
    street character varying(255)
);


ALTER TABLE public.tab_address OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 59555)
-- Name: tab_admin_messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_admin_messages (
    admin_messages_id bigint NOT NULL,
    admin_messages_author character varying(255),
    admin_messages_title character varying(255),
    admin_messages_type character varying(255)
);


ALTER TABLE public.tab_admin_messages OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 60609)
-- Name: tab_announcement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_announcement (
    announcement_id bigint NOT NULL,
    announcement_active boolean NOT NULL,
    announcement_content character varying(4096),
    announcement_title character varying(255),
    created_by character varying(255),
    created_date timestamp without time zone,
    data_do timestamp without time zone,
    data_od timestamp without time zone
);


ALTER TABLE public.tab_announcement OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 60788)
-- Name: tab_announcement_read; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_announcement_read (
    announcement_read_id bigint NOT NULL
);


ALTER TABLE public.tab_announcement_read OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 59571)
-- Name: tab_branch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_branch (
    id bigint NOT NULL,
    code integer NOT NULL,
    kolej integer NOT NULL,
    name character varying(255),
    branch_description character varying(4096),
    email character varying(255),
    fax character varying(255),
    phone character varying(255)
);


ALTER TABLE public.tab_branch OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 60794)
-- Name: tab_document; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_document (
    id bigint NOT NULL,
    document_type integer,
    file_description character varying(255),
    file_path character varying(255),
    filetype character varying(255),
    name character varying(255)
);


ALTER TABLE public.tab_document OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 60793)
-- Name: tab_document_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_document ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 59576)
-- Name: tab_hospital; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital (
    hospital_id bigint NOT NULL,
    director character varying(4098),
    fax character varying(4098),
    kolej integer NOT NULL,
    name character varying(4098),
    phone character varying(4098),
    short_name character varying(4098),
    hospital_category_id integer NOT NULL,
    hospital_county_id integer NOT NULL,
    hospital_description character varying(4096),
    address_id integer,
    hospital_active boolean DEFAULT true NOT NULL
);


ALTER TABLE public.tab_hospital OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 61310)
-- Name: tab_hospital_branch_closed; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_branch_closed (
    id bigint NOT NULL,
    agreement boolean NOT NULL,
    cause character varying(4096),
    date_from timestamp without time zone,
    date_to date,
    replacement character varying(4096),
    title character varying(1024),
    hospital_id bigint NOT NULL,
    hospital_config_id bigint NOT NULL,
    user_id bigint
);


ALTER TABLE public.tab_hospital_branch_closed OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 61318)
-- Name: tab_hospital_branch_closed_files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_branch_closed_files (
    hospital_branch_closed_files_id bigint NOT NULL,
    file_active boolean NOT NULL,
    file_name character varying(255),
    file_url character varying(255),
    local_date_time timestamp without time zone,
    hospital_branch_closed_id bigint
);


ALTER TABLE public.tab_hospital_branch_closed_files OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 61317)
-- Name: tab_hospital_branch_closed_fi_hospital_branch_closed_files__seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_hospital_branch_closed_files ALTER COLUMN hospital_branch_closed_files_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_branch_closed_fi_hospital_branch_closed_files__seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 282 (class 1259 OID 61309)
-- Name: tab_hospital_branch_closed_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_hospital_branch_closed ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_branch_closed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 59586)
-- Name: tab_hospital_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_category (
    hospital_category_id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.tab_hospital_category OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 59589)
-- Name: tab_hospital_config; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_config (
    hospital_config_id bigint NOT NULL,
    hospital_config_description character varying(4096),
    number_of_beds integer NOT NULL,
    number_of_beds_locked integer,
    branch_id bigint NOT NULL,
    hospital_id bigint NOT NULL,
    description character varying(4096),
    email character varying(255),
    fax character varying(255),
    phone character varying(255),
    active boolean DEFAULT true NOT NULL,
    create_date timestamp without time zone,
    update_date timestamp without time zone,
    user_id integer,
    managment_id bigint
);


ALTER TABLE public.tab_hospital_config OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 59595)
-- Name: tab_hospital_county; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_county (
    hospital_county_id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.tab_hospital_county OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 61326)
-- Name: tab_hospital_failures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_failures (
    hospital_failures_id bigint NOT NULL,
    add_date timestamp without time zone,
    data_do timestamp without time zone,
    data_od timestamp without time zone,
    description character varying(4096),
    security character varying(4096),
    hospital_id bigint NOT NULL,
    hospital_config_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.tab_hospital_failures OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 61334)
-- Name: tab_hospital_failures_files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_failures_files (
    hospital_failures_files_id bigint NOT NULL,
    file_active boolean NOT NULL,
    file_name character varying(255),
    file_url character varying(255),
    local_date_time timestamp without time zone,
    hospital_failures_id bigint
);


ALTER TABLE public.tab_hospital_failures_files OWNER TO postgres;

--
-- TOC entry 288 (class 1259 OID 61333)
-- Name: tab_hospital_failures_files_hospital_failures_files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_hospital_failures_files ALTER COLUMN hospital_failures_files_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_failures_files_hospital_failures_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 286 (class 1259 OID 61325)
-- Name: tab_hospital_failures_hospital_failures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_hospital_failures ALTER COLUMN hospital_failures_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_failures_hospital_failures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 266 (class 1259 OID 60647)
-- Name: tab_hospital_procedures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_procedures (
    hospital_procedures_id bigint NOT NULL,
    description character varying(4096),
    local_date_time timestamp without time zone,
    modified_date_time timestamp without time zone,
    name character varying(255),
    procedure_active boolean NOT NULL,
    hospital_id bigint NOT NULL,
    hospital_procedures_types_id bigint,
    user_id bigint NOT NULL
);


ALTER TABLE public.tab_hospital_procedures OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 60655)
-- Name: tab_hospital_procedures_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_procedures_file (
    hospital_procedures_file_id bigint NOT NULL,
    file_active boolean NOT NULL,
    file_name character varying(255),
    file_url character varying(255),
    local_date_time timestamp without time zone,
    hospital_procedures_id bigint
);


ALTER TABLE public.tab_hospital_procedures_file OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 60654)
-- Name: tab_hospital_procedures_file_hospital_procedures_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_hospital_procedures_file ALTER COLUMN hospital_procedures_file_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_procedures_file_hospital_procedures_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 265 (class 1259 OID 60646)
-- Name: tab_hospital_procedures_hospital_procedures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_hospital_procedures ALTER COLUMN hospital_procedures_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_procedures_hospital_procedures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 251 (class 1259 OID 60192)
-- Name: tab_hospital_procedures_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_procedures_type (
    hospital_procedures_type_id bigint NOT NULL,
    active boolean NOT NULL,
    hospital_procedures_reception integer NOT NULL,
    hospital_procedures_type_desc character varying(255)
);


ALTER TABLE public.tab_hospital_procedures_type OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 60191)
-- Name: tab_hospital_procedures_type_hospital_procedures_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_hospital_procedures_type ALTER COLUMN hospital_procedures_type_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_procedures_type_hospital_procedures_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 273 (class 1259 OID 61184)
-- Name: tab_hospital_report; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_report (
    hospital_report_id bigint NOT NULL,
    completed_admissionsa integer NOT NULL,
    completed_admissionsb integer NOT NULL,
    completed_admissionsc integer NOT NULL,
    doctora integer NOT NULL,
    planned_partiesa integer NOT NULL,
    planned_partiesb integer NOT NULL,
    planned_partiesc integer NOT NULL,
    statea integer NOT NULL,
    stateadate timestamp without time zone,
    statea_1 character varying(255),
    stateb integer NOT NULL,
    statebdate timestamp without time zone,
    stateb_1 character varying(255),
    statec integer NOT NULL,
    statecdate timestamp without time zone,
    statec_1 character varying(255),
    update_date timestamp without time zone,
    hospital_id bigint,
    hospital_config_id bigint,
    report_id bigint,
    user_id bigint
);


ALTER TABLE public.tab_hospital_report OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 59618)
-- Name: tab_hospital_report_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_report_history (
    hospital_report_history_id bigint NOT NULL,
    create_date timestamp without time zone,
    hospital_report_history_description character varying(12288),
    hospital_id bigint,
    hospital_config_id bigint,
    hospital_report_id bigint NOT NULL,
    user_id integer
);


ALTER TABLE public.tab_hospital_report_history OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 61183)
-- Name: tab_hospital_report_hospital_report_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_hospital_report ALTER COLUMN hospital_report_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_report_hospital_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 59623)
-- Name: tab_hospital_report_thread_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_report_thread_question (
    id integer NOT NULL,
    is_visible boolean NOT NULL,
    ordering integer NOT NULL,
    question character varying(255)
);


ALTER TABLE public.tab_hospital_report_thread_question OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 59626)
-- Name: tab_hospital_report_threads_answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_hospital_report_threads_answers (
    id bigint NOT NULL,
    answer character varying(255),
    hospital_report_id bigint,
    hospital_threads_question_id integer
);


ALTER TABLE public.tab_hospital_report_threads_answers OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 59629)
-- Name: tab_log_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_log_type (
    log_type_id integer NOT NULL,
    log_type_name character varying(255)
);


ALTER TABLE public.tab_log_type OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 61292)
-- Name: tab_logi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_logi (
    log_id bigint NOT NULL,
    created_date timestamp without time zone,
    log_desc character varying(255),
    log_type character varying(255),
    user_id bigint NOT NULL
);


ALTER TABLE public.tab_logi OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 61291)
-- Name: tab_logi_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_logi ALTER COLUMN log_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_logi_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 279 (class 1259 OID 61283)
-- Name: tab_mail_properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_mail_properties (
    id bigint NOT NULL,
    active boolean NOT NULL,
    host character varying(255),
    password character varying(255),
    port integer NOT NULL,
    user_name character varying(255)
);


ALTER TABLE public.tab_mail_properties OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 61282)
-- Name: tab_mail_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_mail_properties ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_mail_properties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 59635)
-- Name: tab_managment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_managment (
    managment_id bigint NOT NULL,
    managment_description character varying(4096),
    managment_email character varying(255),
    managment_mobile_phone character varying(255),
    managment_person character varying(255),
    managment_phone character varying(255)
);


ALTER TABLE public.tab_managment OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 60532)
-- Name: tab_messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_messages (
    messages_id bigint NOT NULL,
    add_date timestamp without time zone,
    content character varying(12288),
    end_date timestamp without time zone,
    messages_active boolean NOT NULL,
    start_date timestamp without time zone,
    title character varying(255),
    hospital_id bigint,
    user_id bigint NOT NULL
);


ALTER TABLE public.tab_messages OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 60539)
-- Name: tab_messages__type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_messages__type (
    messages_type_id integer NOT NULL,
    messages_type_name character varying(255)
);


ALTER TABLE public.tab_messages__type OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 59648)
-- Name: tab_messages_description_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tab_messages_description_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tab_messages_description_seq OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 60545)
-- Name: tab_messages_files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_messages_files (
    messages_files_id bigint NOT NULL,
    file_name character varying(255),
    file_url character varying(255),
    message_file_active boolean NOT NULL,
    messages_id bigint
);


ALTER TABLE public.tab_messages_files OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 60544)
-- Name: tab_messages_files_messages_files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_messages_files ALTER COLUMN messages_files_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_messages_files_messages_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 59654)
-- Name: tab_messages_files_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tab_messages_files_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tab_messages_files_seq OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 60531)
-- Name: tab_messages_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_messages ALTER COLUMN messages_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_messages_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 59655)
-- Name: tab_messages_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tab_messages_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tab_messages_seq OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 59659)
-- Name: tab_messages_type_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tab_messages_type_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tab_messages_type_seq OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 59660)
-- Name: tab_password_change; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_password_change (
    password_change_id bigint NOT NULL,
    created_date timestamp without time zone,
    last_change timestamp without time zone,
    must_change timestamp without time zone,
    user_id integer
);


ALTER TABLE public.tab_password_change OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 59663)
-- Name: tab_password_change_password_change_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_password_change ALTER COLUMN password_change_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_password_change_password_change_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 59664)
-- Name: tab_password_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_password_history (
    password_history_id bigint NOT NULL,
    last_change timestamp without time zone,
    last_password character varying(255),
    old_password character varying(255),
    user_login character varying(255),
    user_id integer,
    password_string character varying(255)
);


ALTER TABLE public.tab_password_history OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 59669)
-- Name: tab_private_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_private_message (
    private_message_id bigint NOT NULL,
    add_date timestamp without time zone,
    content character varying(12288),
    date_end timestamp without time zone,
    is_read boolean NOT NULL,
    title character varying(255),
    user_id integer NOT NULL
);


ALTER TABLE public.tab_private_message OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 59674)
-- Name: tab_private_message_private_message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_private_message ALTER COLUMN private_message_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_private_message_private_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 234 (class 1259 OID 59675)
-- Name: tab_report_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tab_report_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tab_report_seq OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 59676)
-- Name: tab_reports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_reports (
    id bigint NOT NULL,
    date date
);


ALTER TABLE public.tab_reports OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 59679)
-- Name: tab_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_role (
    role_id integer NOT NULL,
    role character varying(255),
    "desc" character varying(255)
);


ALTER TABLE public.tab_role OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 59682)
-- Name: tab_role_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tab_role_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tab_role_seq OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 59683)
-- Name: tab_simc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_simc (
    simc_id bigint NOT NULL,
    data_aktualizacji timestamp(6) without time zone,
    gmi integer NOT NULL,
    mz integer NOT NULL,
    nazwa character varying(255),
    pow integer NOT NULL,
    rm integer NOT NULL,
    rodz_gm integer NOT NULL,
    stan_na timestamp(6) without time zone,
    sym bigint,
    sympod bigint,
    woj integer NOT NULL
);


ALTER TABLE public.tab_simc OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 59686)
-- Name: tab_simc_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tab_simc_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tab_simc_seq OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 59687)
-- Name: tab_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_status (
    status_id integer NOT NULL,
    name character varying(255),
    status_description character varying(255),
    status_name character varying(255)
);


ALTER TABLE public.tab_status OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 59692)
-- Name: tab_terc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_terc (
    terc_id bigint NOT NULL,
    data_aktualizacji timestamp(6) without time zone,
    gmi integer NOT NULL,
    nazwa character varying(255),
    nazwa_dod character varying(255),
    pow integer NOT NULL,
    rodz integer NOT NULL,
    stan_na timestamp(6) without time zone,
    woj integer NOT NULL
);


ALTER TABLE public.tab_terc OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 59697)
-- Name: tab_terc_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tab_terc_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tab_terc_seq OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 59698)
-- Name: tab_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_type (
    type_id integer NOT NULL,
    type_description character varying(255),
    type_name character varying(255)
);


ALTER TABLE public.tab_type OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 60238)
-- Name: tab_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_users (
    id bigint NOT NULL,
    active boolean,
    email character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    name character varying(255),
    password character varying(255),
    password_changed_time timestamp without time zone,
    user_name character varying(255) NOT NULL,
    hospital_id bigint
);


ALTER TABLE public.tab_users OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 60237)
-- Name: tab_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tab_users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 244 (class 1259 OID 59709)
-- Name: tab_wkrm_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_wkrm_question (
    id integer NOT NULL,
    nazwa character varying(255),
    ordered integer NOT NULL,
    is_visible boolean NOT NULL
);


ALTER TABLE public.tab_wkrm_question OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 59712)
-- Name: tab_wkrm_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab_wkrm_status (
    id integer NOT NULL,
    nazwa character varying(255)
);


ALTER TABLE public.tab_wkrm_status OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 59715)
-- Name: user_branch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_branch (
    user_id integer NOT NULL,
    branch_id bigint NOT NULL
);


ALTER TABLE public.user_branch OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 59718)
-- Name: user_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_role (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.user_role OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 60229)
-- Name: v_hospital_branch_search; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_hospital_branch_search AS
 SELECT c.hospital_config_id,
    c.hospital_id,
    b.name
   FROM (public.tab_hospital_config c
     LEFT JOIN public.tab_branch b ON ((c.branch_id = b.id)))
  WHERE (c.active = true);


ALTER TABLE public.v_hospital_branch_search OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 59721)
-- Name: v_hospital_choice; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_hospital_choice AS
 SELECT h.hospital_id,
    concat('powiat', ' ', c.name) AS powiat,
    h.name AS szpital
   FROM (public.tab_hospital h
     LEFT JOIN public.tab_hospital_county c ON ((h.hospital_county_id = c.hospital_county_id)));


ALTER TABLE public.v_hospital_choice OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 59725)
-- Name: v_hospital_select; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_hospital_select AS
 SELECT hc.hospital_config_id,
    h.name AS szpital,
    b.name AS oddzial,
    c.name AS powiat
   FROM (((public.tab_hospital_config hc
     LEFT JOIN public.tab_branch b ON ((hc.branch_id = b.id)))
     LEFT JOIN public.tab_hospital h ON ((hc.hospital_id = h.hospital_id)))
     LEFT JOIN public.tab_hospital_county c ON ((h.hospital_county_id = c.hospital_county_id)));


ALTER TABLE public.v_hospital_select OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 61236)
-- Name: v_hospital_view; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_hospital_view AS
 SELECT r.hospital_report_id,
    b.name AS oddzial,
    c.name AS powiat,
    r.report_id,
    r.statea,
    r.statea_1,
    r.stateb,
    r.stateb_1,
    r.statec,
    r.statec_1,
    h.name AS szpital,
    r.update_date
   FROM ((((public.tab_hospital_report r
     LEFT JOIN public.tab_hospital_config hc ON ((r.hospital_config_id = hc.hospital_config_id)))
     LEFT JOIN public.tab_branch b ON ((hc.branch_id = b.id)))
     LEFT JOIN public.tab_hospital h ON ((hc.hospital_id = h.hospital_id)))
     LEFT JOIN public.tab_hospital_county c ON ((h.hospital_county_id = c.hospital_county_id)));


ALTER TABLE public.v_hospital_view OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 61277)
-- Name: v_hospital_wkrm; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_hospital_wkrm AS
 SELECT r.hospital_config_id,
    hc.hospital_config_description,
    hc.number_of_beds,
    hc.number_of_beds_locked,
    hc.branch_id,
    hc.hospital_id,
    hc.description,
    hc.email,
    hc.fax,
    hc.phone,
    r.hospital_report_id,
    r.report_id,
    h.name AS szpital,
    b.name AS oddzial,
    r.statea,
    r.statea_1,
    r.stateb,
    r.stateb_1,
    r.statec,
    r.statec_1,
    r.doctora,
    r.update_date,
    c.name AS powiat
   FROM ((((public.tab_hospital_report r
     LEFT JOIN public.tab_hospital_config hc ON ((r.hospital_config_id = hc.hospital_config_id)))
     LEFT JOIN public.tab_branch b ON ((hc.branch_id = b.id)))
     LEFT JOIN public.tab_hospital h ON ((hc.hospital_id = h.hospital_id)))
     LEFT JOIN public.tab_hospital_county c ON ((h.hospital_county_id = c.hospital_county_id)));


ALTER TABLE public.v_hospital_wkrm OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 61267)
-- Name: v_test; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_test AS
 SELECT hr.hospital_report_id,
    hr.completed_admissionsa,
    hr.completed_admissionsb,
    hr.completed_admissionsc,
    hr.doctora,
    hr.planned_partiesa,
    hr.planned_partiesb,
    hr.planned_partiesc,
    hr.statea,
    hr.stateadate,
    hr.statea_1,
    hr.stateb,
    hr.statebdate,
    hr.stateb_1,
    hr.statec,
    hr.statecdate,
    hr.statec_1,
    hr.update_date,
    hr.hospital_id,
    hr.hospital_config_id,
    hr.report_id,
    hr.user_id,
    r.id,
    r.date
   FROM (public.tab_hospital_report hr
     LEFT JOIN public.tab_reports r ON ((hr.report_id = r.id)))
  WHERE (r.date = (now())::date);


ALTER TABLE public.v_test OWNER TO postgres;

--
-- TOC entry 3497 (class 2606 OID 61251)
-- Name: hospital_config_managment hospital_config_managment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospital_config_managment
    ADD CONSTRAINT hospital_config_managment_pkey PRIMARY KEY (hospital_config_id, managment_id);


--
-- TOC entry 3477 (class 2606 OID 60593)
-- Name: managment_hospitals managment_hospitals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.managment_hospitals
    ADD CONSTRAINT managment_hospitals_pkey PRIMARY KEY (managment_id, hospital_config_id);


--
-- TOC entry 3479 (class 2606 OID 60598)
-- Name: password_history password_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_history
    ADD CONSTRAINT password_history_pkey PRIMARY KEY (password_change_id, password_history_id);


--
-- TOC entry 3411 (class 2606 OID 59763)
-- Name: private_messages private_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.private_messages
    ADD CONSTRAINT private_messages_pkey PRIMARY KEY (private_message_id, user_id);


--
-- TOC entry 3481 (class 2606 OID 60603)
-- Name: recipent_hospital_branch_closed recipent_hospital_branch_closed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipent_hospital_branch_closed
    ADD CONSTRAINT recipent_hospital_branch_closed_pkey PRIMARY KEY (hospital_branch_closed_id, hospital_id);


--
-- TOC entry 3483 (class 2606 OID 60608)
-- Name: recipent_hospital_failures recipent_hospital_failures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipent_hospital_failures
    ADD CONSTRAINT recipent_hospital_failures_pkey PRIMARY KEY (hospital_failures_id, hospital_id);


--
-- TOC entry 3413 (class 2606 OID 59769)
-- Name: szpitale_raporty_godziny szpitale_raporty_godziny_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.szpitale_raporty_godziny
    ADD CONSTRAINT szpitale_raporty_godziny_pkey PRIMARY KEY (raport_id);


--
-- TOC entry 3415 (class 2606 OID 59771)
-- Name: tab_address tab_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_address
    ADD CONSTRAINT tab_address_pkey PRIMARY KEY (address_id);


--
-- TOC entry 3417 (class 2606 OID 59773)
-- Name: tab_admin_messages tab_admin_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_admin_messages
    ADD CONSTRAINT tab_admin_messages_pkey PRIMARY KEY (admin_messages_id);


--
-- TOC entry 3485 (class 2606 OID 60615)
-- Name: tab_announcement tab_announcement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_announcement
    ADD CONSTRAINT tab_announcement_pkey PRIMARY KEY (announcement_id);


--
-- TOC entry 3491 (class 2606 OID 60792)
-- Name: tab_announcement_read tab_announcement_read_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_announcement_read
    ADD CONSTRAINT tab_announcement_read_pkey PRIMARY KEY (announcement_read_id);


--
-- TOC entry 3419 (class 2606 OID 59781)
-- Name: tab_branch tab_branch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_branch
    ADD CONSTRAINT tab_branch_pkey PRIMARY KEY (id);


--
-- TOC entry 3493 (class 2606 OID 60800)
-- Name: tab_document tab_document_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_document
    ADD CONSTRAINT tab_document_pkey PRIMARY KEY (id);


--
-- TOC entry 3505 (class 2606 OID 61324)
-- Name: tab_hospital_branch_closed_files tab_hospital_branch_closed_files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_branch_closed_files
    ADD CONSTRAINT tab_hospital_branch_closed_files_pkey PRIMARY KEY (hospital_branch_closed_files_id);


--
-- TOC entry 3503 (class 2606 OID 61316)
-- Name: tab_hospital_branch_closed tab_hospital_branch_closed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_branch_closed
    ADD CONSTRAINT tab_hospital_branch_closed_pkey PRIMARY KEY (id);


--
-- TOC entry 3423 (class 2606 OID 59785)
-- Name: tab_hospital_category tab_hospital_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_category
    ADD CONSTRAINT tab_hospital_category_pkey PRIMARY KEY (hospital_category_id);


--
-- TOC entry 3425 (class 2606 OID 59787)
-- Name: tab_hospital_config tab_hospital_config_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_config
    ADD CONSTRAINT tab_hospital_config_pkey PRIMARY KEY (hospital_config_id);


--
-- TOC entry 3427 (class 2606 OID 59789)
-- Name: tab_hospital_county tab_hospital_county_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_county
    ADD CONSTRAINT tab_hospital_county_pkey PRIMARY KEY (hospital_county_id);


--
-- TOC entry 3509 (class 2606 OID 61340)
-- Name: tab_hospital_failures_files tab_hospital_failures_files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_failures_files
    ADD CONSTRAINT tab_hospital_failures_files_pkey PRIMARY KEY (hospital_failures_files_id);


--
-- TOC entry 3507 (class 2606 OID 61332)
-- Name: tab_hospital_failures tab_hospital_failures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_failures
    ADD CONSTRAINT tab_hospital_failures_pkey PRIMARY KEY (hospital_failures_id);


--
-- TOC entry 3421 (class 2606 OID 59793)
-- Name: tab_hospital tab_hospital_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital
    ADD CONSTRAINT tab_hospital_pkey PRIMARY KEY (hospital_id);


--
-- TOC entry 3489 (class 2606 OID 60661)
-- Name: tab_hospital_procedures_file tab_hospital_procedures_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_procedures_file
    ADD CONSTRAINT tab_hospital_procedures_file_pkey PRIMARY KEY (hospital_procedures_file_id);


--
-- TOC entry 3487 (class 2606 OID 60653)
-- Name: tab_hospital_procedures tab_hospital_procedures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_procedures
    ADD CONSTRAINT tab_hospital_procedures_pkey PRIMARY KEY (hospital_procedures_id);


--
-- TOC entry 3465 (class 2606 OID 60196)
-- Name: tab_hospital_procedures_type tab_hospital_procedures_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_procedures_type
    ADD CONSTRAINT tab_hospital_procedures_type_pkey PRIMARY KEY (hospital_procedures_type_id);


--
-- TOC entry 3429 (class 2606 OID 59799)
-- Name: tab_hospital_report_history tab_hospital_report_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report_history
    ADD CONSTRAINT tab_hospital_report_history_pkey PRIMARY KEY (hospital_report_history_id);


--
-- TOC entry 3495 (class 2606 OID 61190)
-- Name: tab_hospital_report tab_hospital_report_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report
    ADD CONSTRAINT tab_hospital_report_pkey PRIMARY KEY (hospital_report_id);


--
-- TOC entry 3431 (class 2606 OID 59803)
-- Name: tab_hospital_report_thread_question tab_hospital_report_thread_question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report_thread_question
    ADD CONSTRAINT tab_hospital_report_thread_question_pkey PRIMARY KEY (id);


--
-- TOC entry 3433 (class 2606 OID 59805)
-- Name: tab_hospital_report_threads_answers tab_hospital_report_threads_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report_threads_answers
    ADD CONSTRAINT tab_hospital_report_threads_answers_pkey PRIMARY KEY (id);


--
-- TOC entry 3435 (class 2606 OID 59807)
-- Name: tab_log_type tab_log_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_log_type
    ADD CONSTRAINT tab_log_type_pkey PRIMARY KEY (log_type_id);


--
-- TOC entry 3501 (class 2606 OID 61298)
-- Name: tab_logi tab_logi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_logi
    ADD CONSTRAINT tab_logi_pkey PRIMARY KEY (log_id);


--
-- TOC entry 3499 (class 2606 OID 61289)
-- Name: tab_mail_properties tab_mail_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_mail_properties
    ADD CONSTRAINT tab_mail_properties_pkey PRIMARY KEY (id);


--
-- TOC entry 3437 (class 2606 OID 59811)
-- Name: tab_managment tab_managment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_managment
    ADD CONSTRAINT tab_managment_pkey PRIMARY KEY (managment_id);


--
-- TOC entry 3473 (class 2606 OID 60543)
-- Name: tab_messages__type tab_messages__type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_messages__type
    ADD CONSTRAINT tab_messages__type_pkey PRIMARY KEY (messages_type_id);


--
-- TOC entry 3475 (class 2606 OID 60551)
-- Name: tab_messages_files tab_messages_files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_messages_files
    ADD CONSTRAINT tab_messages_files_pkey PRIMARY KEY (messages_files_id);


--
-- TOC entry 3471 (class 2606 OID 60538)
-- Name: tab_messages tab_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_messages
    ADD CONSTRAINT tab_messages_pkey PRIMARY KEY (messages_id);


--
-- TOC entry 3439 (class 2606 OID 59821)
-- Name: tab_password_change tab_password_change_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_password_change
    ADD CONSTRAINT tab_password_change_pkey PRIMARY KEY (password_change_id);


--
-- TOC entry 3441 (class 2606 OID 59823)
-- Name: tab_password_history tab_password_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_password_history
    ADD CONSTRAINT tab_password_history_pkey PRIMARY KEY (password_history_id);


--
-- TOC entry 3443 (class 2606 OID 59825)
-- Name: tab_private_message tab_private_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_private_message
    ADD CONSTRAINT tab_private_message_pkey PRIMARY KEY (private_message_id);


--
-- TOC entry 3445 (class 2606 OID 59827)
-- Name: tab_reports tab_reports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_reports
    ADD CONSTRAINT tab_reports_pkey PRIMARY KEY (id);


--
-- TOC entry 3447 (class 2606 OID 59829)
-- Name: tab_role tab_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_role
    ADD CONSTRAINT tab_role_pkey PRIMARY KEY (role_id);


--
-- TOC entry 3449 (class 2606 OID 59831)
-- Name: tab_simc tab_simc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_simc
    ADD CONSTRAINT tab_simc_pkey PRIMARY KEY (simc_id);


--
-- TOC entry 3451 (class 2606 OID 59833)
-- Name: tab_status tab_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_status
    ADD CONSTRAINT tab_status_pkey PRIMARY KEY (status_id);


--
-- TOC entry 3453 (class 2606 OID 59835)
-- Name: tab_terc tab_terc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_terc
    ADD CONSTRAINT tab_terc_pkey PRIMARY KEY (terc_id);


--
-- TOC entry 3455 (class 2606 OID 59837)
-- Name: tab_type tab_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_type
    ADD CONSTRAINT tab_type_pkey PRIMARY KEY (type_id);


--
-- TOC entry 3467 (class 2606 OID 60244)
-- Name: tab_users tab_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_users
    ADD CONSTRAINT tab_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3457 (class 2606 OID 59841)
-- Name: tab_wkrm_question tab_wkrm_question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_wkrm_question
    ADD CONSTRAINT tab_wkrm_question_pkey PRIMARY KEY (id);


--
-- TOC entry 3459 (class 2606 OID 59843)
-- Name: tab_wkrm_status tab_wkrm_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_wkrm_status
    ADD CONSTRAINT tab_wkrm_status_pkey PRIMARY KEY (id);


--
-- TOC entry 3469 (class 2606 OID 60246)
-- Name: tab_users uk_dkudmh6llsy7s1fokxtki03bd; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_users
    ADD CONSTRAINT uk_dkudmh6llsy7s1fokxtki03bd UNIQUE (user_name);


--
-- TOC entry 3461 (class 2606 OID 59845)
-- Name: user_branch user_branch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_branch
    ADD CONSTRAINT user_branch_pkey PRIMARY KEY (user_id, branch_id);


--
-- TOC entry 3463 (class 2606 OID 59847)
-- Name: user_role user_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (user_id, role_id);


--
-- TOC entry 3516 (class 2606 OID 61262)
-- Name: tab_hospital_config fk1fmv7jvopon2j91h5bfcu02ey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_config
    ADD CONSTRAINT fk1fmv7jvopon2j91h5bfcu02ey FOREIGN KEY (managment_id) REFERENCES public.tab_managment(managment_id);


--
-- TOC entry 3511 (class 2606 OID 60312)
-- Name: private_messages fk1y31co111gmc0qtqutqq5o2qy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.private_messages
    ADD CONSTRAINT fk1y31co111gmc0qtqutqq5o2qy FOREIGN KEY (user_id) REFERENCES public.tab_users(id);


--
-- TOC entry 3539 (class 2606 OID 60712)
-- Name: recipent_hospital_failures fk2oas0w9t8b59uveud8uurdx33; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipent_hospital_failures
    ADD CONSTRAINT fk2oas0w9t8b59uveud8uurdx33 FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);


--
-- TOC entry 3544 (class 2606 OID 61215)
-- Name: tab_hospital_report fk4ucixj7vru5j28vasvd38ps8g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report
    ADD CONSTRAINT fk4ucixj7vru5j28vasvd38ps8g FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);


--
-- TOC entry 3522 (class 2606 OID 60272)
-- Name: tab_hospital_report_history fk59rdfq5wdmf5tubbbjx934vx1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report_history
    ADD CONSTRAINT fk59rdfq5wdmf5tubbbjx934vx1 FOREIGN KEY (user_id) REFERENCES public.tab_users(id);


--
-- TOC entry 3546 (class 2606 OID 61225)
-- Name: tab_hospital_report fk5oear2oxq36umq4q455dv3ipx; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report
    ADD CONSTRAINT fk5oear2oxq36umq4q455dv3ipx FOREIGN KEY (report_id) REFERENCES public.tab_reports(id);


--
-- TOC entry 3548 (class 2606 OID 61257)
-- Name: hospital_config_managment fk5rt3kpp9gmi547n3ssik6n94f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospital_config_managment
    ADD CONSTRAINT fk5rt3kpp9gmi547n3ssik6n94f FOREIGN KEY (hospital_config_id) REFERENCES public.tab_hospital_config(hospital_config_id);


--
-- TOC entry 3535 (class 2606 OID 60687)
-- Name: managment_hospitals fk5vea3ex8xcd8a7kuwttts6as1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.managment_hospitals
    ADD CONSTRAINT fk5vea3ex8xcd8a7kuwttts6as1 FOREIGN KEY (managment_id) REFERENCES public.tab_managment(managment_id);


--
-- TOC entry 3554 (class 2606 OID 61356)
-- Name: tab_hospital_branch_closed_files fk69pyb470xaun1ixjlq8kvcwix; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_branch_closed_files
    ADD CONSTRAINT fk69pyb470xaun1ixjlq8kvcwix FOREIGN KEY (hospital_branch_closed_id) REFERENCES public.tab_hospital_branch_closed(id);


--
-- TOC entry 3512 (class 2606 OID 59893)
-- Name: tab_hospital fk6k05eyf88cut40t2ooka7ppgs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital
    ADD CONSTRAINT fk6k05eyf88cut40t2ooka7ppgs FOREIGN KEY (hospital_county_id) REFERENCES public.tab_hospital_county(hospital_county_id);


--
-- TOC entry 3531 (class 2606 OID 60562)
-- Name: tab_messages fk7yfwxriviufq2usd2o0jpwip0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_messages
    ADD CONSTRAINT fk7yfwxriviufq2usd2o0jpwip0 FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);


--
-- TOC entry 3513 (class 2606 OID 59903)
-- Name: tab_hospital fk95bqjr4sihpdby00ara7qcx20; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital
    ADD CONSTRAINT fk95bqjr4sihpdby00ara7qcx20 FOREIGN KEY (address_id) REFERENCES public.tab_address(address_id);


--
-- TOC entry 3551 (class 2606 OID 61351)
-- Name: tab_hospital_branch_closed fk9cpr3r9qcui8gbsr42yooh5vg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_branch_closed
    ADD CONSTRAINT fk9cpr3r9qcui8gbsr42yooh5vg FOREIGN KEY (user_id) REFERENCES public.tab_users(id);


--
-- TOC entry 3527 (class 2606 OID 59923)
-- Name: user_branch fkb9iga8uobo013bdyinlqjfk2m; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_branch
    ADD CONSTRAINT fkb9iga8uobo013bdyinlqjfk2m FOREIGN KEY (branch_id) REFERENCES public.tab_branch(id);


--
-- TOC entry 3538 (class 2606 OID 60702)
-- Name: recipent_hospital_branch_closed fkcknfqyowpfwh6ro5v92wgq65q; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipent_hospital_branch_closed
    ADD CONSTRAINT fkcknfqyowpfwh6ro5v92wgq65q FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);


--
-- TOC entry 3510 (class 2606 OID 59943)
-- Name: private_messages fkcmyvnskqmk68a5gbrxn7dos87; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.private_messages
    ADD CONSTRAINT fkcmyvnskqmk68a5gbrxn7dos87 FOREIGN KEY (private_message_id) REFERENCES public.tab_private_message(private_message_id);


--
-- TOC entry 3537 (class 2606 OID 60697)
-- Name: password_history fkcv0jmpthmb0c5rabgcdjk5qxv; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_history
    ADD CONSTRAINT fkcv0jmpthmb0c5rabgcdjk5qxv FOREIGN KEY (password_change_id) REFERENCES public.tab_password_change(password_change_id);


--
-- TOC entry 3555 (class 2606 OID 61371)
-- Name: tab_hospital_failures fkdea1n3wabprr2i3b6v8fnjg0m; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_failures
    ADD CONSTRAINT fkdea1n3wabprr2i3b6v8fnjg0m FOREIGN KEY (user_id) REFERENCES public.tab_users(id);


--
-- TOC entry 3549 (class 2606 OID 61252)
-- Name: hospital_config_managment fkdqr1pne2wlio51vd1h43gm6oc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospital_config_managment
    ADD CONSTRAINT fkdqr1pne2wlio51vd1h43gm6oc FOREIGN KEY (managment_id) REFERENCES public.tab_managment(managment_id);


--
-- TOC entry 3536 (class 2606 OID 60692)
-- Name: password_history fke78g9hwv3ayxcqkoyk3xs6spw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_history
    ADD CONSTRAINT fke78g9hwv3ayxcqkoyk3xs6spw FOREIGN KEY (password_history_id) REFERENCES public.tab_password_history(password_history_id);


--
-- TOC entry 3542 (class 2606 OID 60777)
-- Name: tab_hospital_procedures fke89b5pihhje8if1snkw80931w; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_procedures
    ADD CONSTRAINT fke89b5pihhje8if1snkw80931w FOREIGN KEY (user_id) REFERENCES public.tab_users(id);


--
-- TOC entry 3524 (class 2606 OID 59973)
-- Name: tab_hospital_report_threads_answers fkfrjwfwspvkvqyvqahlig4surd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report_threads_answers
    ADD CONSTRAINT fkfrjwfwspvkvqyvqahlig4surd FOREIGN KEY (hospital_threads_question_id) REFERENCES public.tab_hospital_report_thread_question(id);


--
-- TOC entry 3514 (class 2606 OID 59978)
-- Name: tab_hospital fkgj14cv99fspvekw3qpxmm08kc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital
    ADD CONSTRAINT fkgj14cv99fspvekw3qpxmm08kc FOREIGN KEY (hospital_category_id) REFERENCES public.tab_hospital_category(hospital_category_id);


--
-- TOC entry 3534 (class 2606 OID 60682)
-- Name: managment_hospitals fkh38p6469au5yja3kwym86gc5u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.managment_hospitals
    ADD CONSTRAINT fkh38p6469au5yja3kwym86gc5u FOREIGN KEY (hospital_config_id) REFERENCES public.tab_hospital_config(hospital_config_id);


--
-- TOC entry 3515 (class 2606 OID 59988)
-- Name: tab_hospital_config fkh5i2v4nwmob0j88o8tl16g1y1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_config
    ADD CONSTRAINT fkh5i2v4nwmob0j88o8tl16g1y1 FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);


--
-- TOC entry 3543 (class 2606 OID 60782)
-- Name: tab_hospital_procedures_file fkh7t44b3gk0y4o7ddfk50cfo2q; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_procedures_file
    ADD CONSTRAINT fkh7t44b3gk0y4o7ddfk50cfo2q FOREIGN KEY (hospital_procedures_id) REFERENCES public.tab_hospital_procedures(hospital_procedures_id);


--
-- TOC entry 3518 (class 2606 OID 60257)
-- Name: tab_hospital_config fkha8nr3wi6oxwqaby5lpfnuk5s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_config
    ADD CONSTRAINT fkha8nr3wi6oxwqaby5lpfnuk5s FOREIGN KEY (user_id) REFERENCES public.tab_users(id);


--
-- TOC entry 3550 (class 2606 OID 61299)
-- Name: tab_logi fkiodunjyekwa56wvmbf8vbwh06; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_logi
    ADD CONSTRAINT fkiodunjyekwa56wvmbf8vbwh06 FOREIGN KEY (user_id) REFERENCES public.tab_users(id);


--
-- TOC entry 3519 (class 2606 OID 61205)
-- Name: tab_hospital_report_history fkk9rypm57wr8d1hwrqmqqms95n; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report_history
    ADD CONSTRAINT fkk9rypm57wr8d1hwrqmqqms95n FOREIGN KEY (hospital_report_id) REFERENCES public.tab_hospital_report(hospital_report_id);


--
-- TOC entry 3529 (class 2606 OID 60322)
-- Name: user_role fkkfvndanayvqytjsvnrjvv8w01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fkkfvndanayvqytjsvnrjvv8w01 FOREIGN KEY (user_id) REFERENCES public.tab_users(id);


--
-- TOC entry 3523 (class 2606 OID 61210)
-- Name: tab_hospital_report_threads_answers fkkip28nev168rao8ntn50335r2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report_threads_answers
    ADD CONSTRAINT fkkip28nev168rao8ntn50335r2 FOREIGN KEY (hospital_report_id) REFERENCES public.tab_hospital_report(hospital_report_id);


--
-- TOC entry 3556 (class 2606 OID 61366)
-- Name: tab_hospital_failures fkksksev4sef85c5xg0pgnmwnvp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_failures
    ADD CONSTRAINT fkksksev4sef85c5xg0pgnmwnvp FOREIGN KEY (hospital_config_id) REFERENCES public.tab_hospital_config(hospital_config_id);


--
-- TOC entry 3525 (class 2606 OID 60292)
-- Name: tab_password_change fkkyo30ekq08wgk3ya3m5v1ekyr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_password_change
    ADD CONSTRAINT fkkyo30ekq08wgk3ya3m5v1ekyr FOREIGN KEY (user_id) REFERENCES public.tab_users(id);


--
-- TOC entry 3557 (class 2606 OID 61361)
-- Name: tab_hospital_failures fklckr0dmhwvcj6rtxlgug3i7y4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_failures
    ADD CONSTRAINT fklckr0dmhwvcj6rtxlgug3i7y4 FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);


--
-- TOC entry 3533 (class 2606 OID 60572)
-- Name: tab_messages_files fkmegsswybvn3u0dn0bmox8g9re; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_messages_files
    ADD CONSTRAINT fkmegsswybvn3u0dn0bmox8g9re FOREIGN KEY (messages_id) REFERENCES public.tab_messages(messages_id);


--
-- TOC entry 3541 (class 2606 OID 60772)
-- Name: tab_hospital_procedures fkn0bekg7rwcuics9oobhwfimu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_procedures
    ADD CONSTRAINT fkn0bekg7rwcuics9oobhwfimu FOREIGN KEY (hospital_procedures_types_id) REFERENCES public.tab_hospital_procedures_type(hospital_procedures_type_id);


--
-- TOC entry 3552 (class 2606 OID 61346)
-- Name: tab_hospital_branch_closed fknc6kxu69ttvs6mk4vn5lylwgw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_branch_closed
    ADD CONSTRAINT fknc6kxu69ttvs6mk4vn5lylwgw FOREIGN KEY (hospital_config_id) REFERENCES public.tab_hospital_config(hospital_config_id);


--
-- TOC entry 3526 (class 2606 OID 60317)
-- Name: tab_private_message fknh81l4jva6gbjf2649ysx814j; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_private_message
    ADD CONSTRAINT fknh81l4jva6gbjf2649ysx814j FOREIGN KEY (user_id) REFERENCES public.tab_users(id);


--
-- TOC entry 3553 (class 2606 OID 61341)
-- Name: tab_hospital_branch_closed fknw92galcsmd79hcmkahyt9v88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_branch_closed
    ADD CONSTRAINT fknw92galcsmd79hcmkahyt9v88 FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);


--
-- TOC entry 3517 (class 2606 OID 60098)
-- Name: tab_hospital_config fknwsaiti497hmyxmi8ddq7uf3b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_config
    ADD CONSTRAINT fknwsaiti497hmyxmi8ddq7uf3b FOREIGN KEY (branch_id) REFERENCES public.tab_branch(id);


--
-- TOC entry 3540 (class 2606 OID 60767)
-- Name: tab_hospital_procedures fkop8e87rxpmr7j4vqfgh0rpjl8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_procedures
    ADD CONSTRAINT fkop8e87rxpmr7j4vqfgh0rpjl8 FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);


--
-- TOC entry 3558 (class 2606 OID 61376)
-- Name: tab_hospital_failures_files fkp77a4q4g3e4kne0lfw899sma5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_failures_files
    ADD CONSTRAINT fkp77a4q4g3e4kne0lfw899sma5 FOREIGN KEY (hospital_failures_id) REFERENCES public.tab_hospital_failures(hospital_failures_id);


--
-- TOC entry 3545 (class 2606 OID 61220)
-- Name: tab_hospital_report fkplvcrhgnktgk6njicin4xtige; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report
    ADD CONSTRAINT fkplvcrhgnktgk6njicin4xtige FOREIGN KEY (hospital_config_id) REFERENCES public.tab_hospital_config(hospital_config_id);


--
-- TOC entry 3532 (class 2606 OID 60567)
-- Name: tab_messages fkpw0py7xs99prlu20ddilvqb6j; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_messages
    ADD CONSTRAINT fkpw0py7xs99prlu20ddilvqb6j FOREIGN KEY (user_id) REFERENCES public.tab_users(id);


--
-- TOC entry 3530 (class 2606 OID 60302)
-- Name: tab_users fkrmejo3n6uoo08x0g94css3l9a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_users
    ADD CONSTRAINT fkrmejo3n6uoo08x0g94css3l9a FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);


--
-- TOC entry 3528 (class 2606 OID 60153)
-- Name: user_role fksph8aeba4xok3qr5hk7jgmfc4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fksph8aeba4xok3qr5hk7jgmfc4 FOREIGN KEY (role_id) REFERENCES public.tab_role(role_id);


--
-- TOC entry 3520 (class 2606 OID 60158)
-- Name: tab_hospital_report_history fksxkj6lbrggdnooneubo9gj5hp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report_history
    ADD CONSTRAINT fksxkj6lbrggdnooneubo9gj5hp FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);


--
-- TOC entry 3547 (class 2606 OID 61230)
-- Name: tab_hospital_report fkteys5mk2ssmkasvu13syh0krs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report
    ADD CONSTRAINT fkteys5mk2ssmkasvu13syh0krs FOREIGN KEY (user_id) REFERENCES public.tab_users(id);


--
-- TOC entry 3521 (class 2606 OID 60173)
-- Name: tab_hospital_report_history fktlin206pyx6j9f5h5ddn45qof; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tab_hospital_report_history
    ADD CONSTRAINT fktlin206pyx6j9f5h5ddn45qof FOREIGN KEY (hospital_config_id) REFERENCES public.tab_hospital_config(hospital_config_id);


-- Completed on 2024-08-29 07:38:09

--
-- PostgreSQL database dump complete
--

