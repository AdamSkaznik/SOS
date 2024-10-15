--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 14.6

-- Started on 2024-09-06 09:53:59

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
-- TOC entry 3704 (class 0 OID 59502)
-- Dependencies: 209
-- Data for Name: adres_test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.adres_test (adres_id, nazwa) FROM stdin;
1	Szpital Chorób Płuc im. Św. Józefa w Pilchowicach
2	Niepubliczny Zakład Opieki Zdrowotnej Zakład Pulmonologii Spółka z o.o. w Tarnowskich Górach
3	Szpital Chorób Płuc w Siewierzu Sp. z o.o.
4	Szpital w Knurowie Sp. z o.o.
5	Szpital Miejski Sp. z o.o. w Tychach 
6	SP ZOZ Szpital Nr 2 im. dr. Tadeusza Boczonia w Mysłowicach
9	Wojewódzki Szpital Specjalistyczny im. Najświętszej Maryi Panny w Częstochowie (al. Pokoju)
10	Centrum Zdrowia w Mikołowie - Szpital Powiatowy Spółka z o.o.
11	Wojewódzki Szpital Chorób Płuc im. dr Alojzego Pawelca w Wodzisławiu Śląskim
12	NZOZ VITO-MED Sp. z o.o. w Gliwicach
13	Samodzielny Publiczny Zakład Opieki Zdrowotnej Wojewódzki Szpital Specjalistyczny Nr 3 \nw Rybniku
14	Wojewódzki Szpital Neuropsychiatryczny im. dr E.Cyrana w Lublińcu
15	Szpital Św. Kamila w Tarnowskich Górach
16	SP ZOZ Państwowy Szpital dla Nerwowo i Psychicznie Chorych w Rybniku
17	SP ZOZ Wojewódzki Szpital Specjalistyczny Nr 4 w Bytomiu
18	Wojewódzki Szpital Specjalistyczny Nr 5 im. Św. Barbary w Sosnowcu
19	Szpital w Pyskowicach Sp. z o.o.
20	Szpital Specjalistyczny Nr 2 w Bytomiu
21	Szpital Wojewódzki w Bielsku-Białej
22	SP ZOZ Szpital Kolejowy w Wilkowicach
25	Samodzielny Publiczny Szpital Kliniczny im. Andrzeja Mielęckiego Śląskiego Uniwersytetu Medycznego w Katowicach
26	Centrum Leczenia Oparzeń w Siemianowicach Śl.
27	Szpital Specjalistyczny w Zabrzu
28	Bielskie Centrum Psychiatrii Olszówka w Bielsku-Białej
29	Szpital Specjalistyczny Nr 1 w Bytomiu 
31	Szpital Powiatowy w Świętochłowicach
32	Szpital Wielospecjalistyczny w Jaworznie
33	Szpital Powiatowy w Zawierciu
34	Szpital Wielospecjalistyczny Sp. z o.o. w Gliwicach
35	Bonifraterskie Centrum Medyczne Sp. z o.o. Oddział w Katowicach
36	Samodzielny Publiczny Zakład Opieki Zdrowotnej Szpital Psychiatryczny w Toszku
38	Szpital Miejski Nr 4 z Przychodnią SP ZOZ w Gliwicach (ul. Zygmunta Starego 20)
39	Przedsiębiorstwo Wielobranżowe JUMO Sp. z o.o. w Katowicach
40	Szpital Miejski w Katowicach-Murckach
41	Centrum Pulmonologii i Torakochirurgi w Bystrej
42	Megrez Sp. z o.o. Wojewódzki Szpital Specjalistyczny w Tychach
43	Wojewódzki Szpital Specjalistyczny Nr 2 \nw Jastrzębiu - Zdroju
45	Szpital Miejski w Siemianowicach Śl. Sp. z o.o.
109	Katowickie Centrum Onkologii
48	Szpital Rejonowy im. dr. Józefa Rostka w Raciborzu
49	Wojewódzki Szpital Specjalistyczny im. Najświętszej Maryi Panny w Częstochowie (ul. Bialska)
51	Wielospecjalistyczny Szpital Powiatowy S.A.,  NZOZ Szpital im. dr B. Hagera w Tarnowskich Górach
52	Zespół Zakładów Opieki Zdrowotnej w Cieszynie
53	Szpital Chorób Płuc w Orzeszu
54	Śląskie Centrum Chorób Serca w Zabrzu
55	Uniwersyteckie Centrum Kliniczne im. prof. Kornela Gibińskiego Śląskiego Uniwersytetu Medycznego w Katowicach ul. Ceglana 35
56	Górnośląskie Centrum Medyczne im. prof. Leszka Gieca Śląskiego Uniwerytetu Medycznego w Katowicach (SSW)
58	Szpital Miejski Nr 4 z Przychodnią SP ZOZ w Gliwicach (ul. Kościuszki 29)
59	Szpital Specjalistyczny w Chorzowie
60	Powiatowy Zespół Zakładów Opieki Zdrowotnej w Będzinie
62	Piekarskie Centrum Medyczne p.w św. Łukasza Szpital Miejski Sp. z o.o. w Piekarach Śląskich 
63	Zespół Opieki Zdrowotnej Szpital Rejonowy w Kłobucku
65	Uniwersyteckie Centrum Kliniczne im. prof. Kornela Gibińskiego Śląskiego Uniwersytetu Medycznego w Katowicach ul. Medyków 14
66	Powiatowy Publiczny Zakład Opieki Zdrowotnej w Rydułtowach i Wodzisławiu Śląskim
68	Samodzielny Publiczny Szpital Kliniczny Nr 1 im Prof. Stanisława Szyszko ŚUM w Katowicach w Zabrzu
69	Samodzielny Publiczny Zakład Opieki Zdrowotnej Zespół Szpitali Miejskich w Chorzowie (ul. Strzelców Bytomskich 11)
110	Beskidzkie Centrum Onkologii - Szpital Miejski im. Jana Pawła II w Bielsku-Białej
42	Polsko-Amerykańskie Kliniki Serca X Oddział Kardiologii Inwazyjnej, Elektrostymulacji i Elektrofizjologii w Tychach
73	Polsko-Amerykańskie Kliniki Serca III Oddział Kardiologii Inwazyjnej, Angiologii i Elektrokardiologii w Dąbrowie Górniczej
21	Polsko-Amerykańskie Kliniki Serca II Oddział Kardiologiczny w Bielsku-Białej
74	Polsko-Amerykańskie Kliniki Serca I Oddział Kardiologiczno-Angiologiczny w Ustroniu
75	Mysłowickie Centrum Zdrowia Sp. z o.o. Niepubliczny Zakład Opieki Zdrowotnej Szpital Nr 1 im. św. Karola Boromeusza w Mysłowicach
118	SPZOZ MSW im. sierż. Grzegorza Załogi w Katowicach 
78	Miejski Szpital Zespolony w Częstochowie
81	Szpital św. Elżbiety w Katowicach
82	Okręgowy Szpital Kolejowy Sp.  z o.o w Katowicach 
84	Sosnowiecki Szpital Miejski Sp. z o. o.
85	Miejskie Zakłady Opieki Zdrowotnej Szpital Miejski Sp. z o.o. w Żorach  
101	Samodzielny Publiczny Zespół Opieki Zdrowotnej w Lublińcu
87	Górnośląskie Centrum Zdrowia Dziecka im. św. Jana Pawła II Samodzielny Publiczny Szpital Kliniczny Nr 6 Śląskiego Uniwersytetu Medycznego w Katowicach 
88	Centrum Zdrowia Dziecka i Rodziny im. Jana Pawła II w Sosnowcu Sp. z o.o.
89	SP Wojewódzki Szpital Chirurgii Urazowej im. Dr. J. Daaba w Piekarach Ślaskich 
90	Samodzielny Publiczny Zakład Opieki Zdrowotnej Zespół Szpitali Miejskich w Chorzowie (ul. Władysława Truchana 7)
91	Szpital Miejski Sp. z o.o. w Rudzie Śląskiej 
73	Zagłębiowskie Centrum Onkologii Szpital Specjalistyczny im. Sz. Starkiewicza w Dąbrowie Górniczej
116	ICZ HealthCare Żywiec Sp. z.o.o.
95	Samodzielny Publiczny Zespół Opieki Zdrowotnej w Myszkowie
69	Chorzowskie Centrum Kardiologii w Chorzowie
79	Częstochowskie Centrum Kardiologii w Częstochowie
83	Sosnowieckie Centrum Kardiologii
96	Centrum Psychiatrii w Katowicach
98	Szpital Miejski Sp. z o.o. w Zabrzu 
7	Szpital Pediatryczny w Bielsku-Białej
67	Powiatowy Publiczny ZOZ w Rydułtowach i Wodzisławiu Śl./Oddz. Rydułtowy
61	Powiatowy Zespół Zakładów Opieki Zdrowotnej w Będzinie Oddz. w Czeladzi
104	Zespół Opieki Zdrowotnej w Kłobucku Szpital w Krzepicach
56	Górnośląskie Centrum Medyczne im. prof. Leszka Gieca Śląskiego Uniwersytetu Medycznego w Katowicach (GOK)
50	Wojewódzki Szpital Specjalistyczny im. Najświętszej Maryi Panny w Częstochowie (ul. PCK)
106	Szpital im. Rudolfa Weigla w Blachowni
52	 Górnośląskie Centrum Medyczne im. prof. Leszka Gieca Śląskiego Uniwersytetu Medycznego w Katowicach (w lokalizacji Cieszyn)
108	NEFROLUX Wojciech Kamiński, Maciej Kamiński sp. z o.o. w Siemianowicach Śląskich
69	"UROVITA" Spółka z ograniczoną odpowiedzialnością NZOZ Szpital "Śląskie Centrum Urologii"
111	Szpital Św. Józefa Sp. z o.o. w Mikołowie
112	Łubinowa Sp. z o.o. Sp. Komandytowa, Szpital Ginekologiczno-Położniczy w Katowicach
113	Szpital EuroMedic Spółka Akcyjna.
13	Samodzielny Publiczny Zakład Opieki Zdrowotnej Wojewódzki Szpital Specjalistyczny Nr 3 w Rybniku
107	Wydział Powiadamiania Ratunkowego\nŚląski UW
105	Wojewódzki Koordynator Ratownictwa Medycznego - WKRM
117	Medical Network Intelligence Group sp. z o.o. - Wodzisławskie Centrum Medyczne
120	Centrum Medyczne "MAVIT" Sp. z o.o.
\.


--
-- TOC entry 3766 (class 0 OID 61247)
-- Dependencies: 275
-- Data for Name: hospital_config_managment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hospital_config_managment (hospital_config_id, managment_id) FROM stdin;
416	1
417	1
414	1
413	1
412	1
411	1
410	1
\.


--
-- TOC entry 3752 (class 0 OID 60589)
-- Dependencies: 260
-- Data for Name: managment_hospitals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.managment_hospitals (managment_id, hospital_config_id) FROM stdin;
1	413
1	412
1	411
1	410
\.


--
-- TOC entry 3753 (class 0 OID 60594)
-- Dependencies: 261
-- Data for Name: password_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_history (password_change_id, password_history_id) FROM stdin;
\.


--
-- TOC entry 3706 (class 0 OID 59538)
-- Dependencies: 211
-- Data for Name: private_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.private_messages (private_message_id, user_id) FROM stdin;
1	1
\.


--
-- TOC entry 3754 (class 0 OID 60599)
-- Dependencies: 262
-- Data for Name: recipent_hospital_branch_closed; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipent_hospital_branch_closed (hospital_branch_closed_id, hospital_id) FROM stdin;
\.


--
-- TOC entry 3755 (class 0 OID 60604)
-- Dependencies: 263
-- Data for Name: recipent_hospital_failures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipent_hospital_failures (hospital_failures_id, hospital_id) FROM stdin;
\.


--
-- TOC entry 3707 (class 0 OID 59547)
-- Dependencies: 212
-- Data for Name: szpitale_raporty_godziny; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.szpitale_raporty_godziny (raport_id, szpital_skr_oddzial_id, uzytkownik_id, stan_g1, stan_g2, stan_g3, liczba_lekarzy, data_aktualizacji) FROM stdin;
\.


--
-- TOC entry 3708 (class 0 OID 59550)
-- Dependencies: 213
-- Data for Name: tab_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_address (address_id, city, number, post_code, street) FROM stdin;
1	Pilchowice	31	44-145	ul.Dworcowa
2	Tarnowskie Góry	3	42-600	ul.Lipowa
3	Siewierz	21	42-470	ul.Ks. Bp. Z. Oleśnickiego
4	Knurów	8	44-190	ul.Niepodległości
5	Tychy	27	43-100	ul.Cicha
6	Mysłowice	41	41-400	ul.Bytomska
7	Bielsko-Biała	83	43-300	ul.Sobieskiego
8	Sosnowiec	13	41-200	ul.Kościelna
9	Częstochowa	44	42-200	al.Pokoju
10	Mikołów	2	43-190	ul.Waryńskiego
11	Wodzisław Śląski	13	44-300	ul.Bracka
12	Gliwice	2	44-100	ul.Radiowa
13	Rybnik	46	44-200	ul.Energetyków
14	Lubliniec	48	42-700	ul.Grunwaldzka
15	Tarnowskie Góry	22	42-606	ul.Bytomska
16	Rybnik	33	44-201	ul.Gliwicka
17	Bytom	10	41-902	al.Legionów
18	Sosnowiec	1	41-200	PlacMedyków
19	Pyskowice	2	44-120	ul.Szpitalna
20	Bytom	15	41-902	ul.Batorego
21	Bielsko-Biała	101	43-316	al.Armii Krajowej
22	Wilkowice	19	43-365	ul.Żywiecka
23	Katowice	8	40-029	RynekReymonta
24	Katowice	25	40-032	ul.Dąbrowskiego
25	Katowice	20-24	40-027	ul.Francuska
26	Siemianowice Śląskie	2	41-100	ul.Jana Pawła II
27	Zabrze	10	41-800	ul.Marii Curie-Skłodowskiej
28	Bielsko-Biała	102	43-309	ul.Olszówka
29	Bytom	7	41-902	ul.Żeromskiego
30	Bytom	49	41-902	al.Legionów
31	Świętochłowice	38	41-605	ul.Chorzowska
32	Jaworzno	28	43-600	ul.Chełmońskiego
33	Zawiercie	14	42-400	ul.Miodowa
34	Gliwice	1	44-100	ul.Kościuszki
35	Katowice	87	40-211	ul.Ks. L. Markiefki
36	Toszek	5	44-180	ul.Gliwicka
37	Wielowieś		44-187	\N
38	Gliwice	20	44-100	ul.Zygmunta Starego
39	Katowice	9	40-073	ul.Strzelecka
40	Katowice	2	40-749	ul.Sokołowskiego
41	Bystra	2	43-360	ul.Fałata
42	Tychy	102	43-100	ul.Edukacji
43	Jastrzębie-Zdrój	7	44-330	al.Jana Pawła II
44	Jastrzębie-Zdrój	21	44-335	al.Krasickiego
45	Siemianowice Śląskie	9	41-100	ul.1 Maja
46	Katowice	27	40-074	ul.Raciborska
47	Katowice	119	40-145	RynekJózefowska
48	Racibórz	3	47-400	ul.Gamowska
49	Częstochowa	104/118	42-200	ul.Bialska
50	Częstochowa	7	42-200	ul.Polskiego Czerwonego Krzyża
51	Tarnowskie Góry	47-51	42-612	ul.Pyskowicka
52	Cieszyn	4	43-400	ul.Bielska
53	Orzesze	20	43-180	ul.Gliwicka
54	Zabrze	9	41-800	ul.Marii Curie-Skłodowskiej
55	Katowice	35	40-514	ul.Ceglana
56	Katowice	45/47	40-635	ul.Ziołowa
57	Zabrze	1	41-803	ul.Koziołka
58	Gliwice	29	44-100	ul.Kościuszki
59	Chorzów	10	41-500	ul.Zjednoczenia
60	Będzin	12	42-500	ul.Małachowskiego
61	Czeladź	40	41-250	ul.Szpitalna
62	Piekary Śląskie	11	41-940	ul.Szpitalna
63	Kłobuck	5c	42-100	ul.11 Listopada
116	Żywiec	80	34-300	ul.Pola Lisickich
65	Katowice	14	40-752	ul.Medyków
66	Wodzisław Śl.	51	44-300	ul.26 Marca
67	Rydułtowy	47	44-280	ul.Plebiscytowa
68	Zabrze	13-15	41-800	ul.3 Maja
69	Chorzów	11	41-500	ul.Strzelców Bytomskich
70	Chorzów	40	41-500	ul.Karola Miarki
71	Bielsko-Biała	18	43-300	ul.Wyzwolenia
72	Bielsko-Biała	21	43-300	RynekWyspiańskiego
73	Dąbrowa Górnicza	13	41-300	ul.Szpitalna
74	Ustroń	7	43-455	ul.Sanatoryjna
75	Mysłowice	1	41-400	ul.Mikołowska
76	Katowice	10	40-052	ul.Głowackiego
77	Częstochowa	38	42-200	ul.Kopernika
78	Częstochowa	15	42-200	ul.Mirowska
79	Częstochowa	12	42-200	ul.Mickiewicza
80	Częstochowa	1/3	42-200	ul.Bony
81	Katowice	52	40-008	ul.Warszawska
82	Katowice	65	40-760	ul.Panewnicka
83	Sosnowiec	3	41-200	ul.Zegadłowicza
84	Sosnowiec	1	41-219	ul.Szpitalna
85	Żory	20	44-240	ul.Dąbrowskiego
86	Lubliniec	9	42-700	ul.Grunwaldzka
87	Katowice	16	40-752	ul.Medyków
88	Sosnowiec	3	41-218	ul.Gabrieli Zapolskiej
89	Piekary Śląskie	62	41-940	ul.Bytomska
90	Chorzów	7	41-500	ul.Władysława Truchana
91	Ruda Śl.	2	41-703	ul.W. Lipa
92	Ruda Śl.	11	41-711	ul.Główna
93	Dąbrowa Górnicza	43	41-300	ul.Krasińskiego
94	Żywiec	52	34-300	ul.Sienkiewicza
95	Myszków	29	42-300	al.Wolności
96	Katowice	27	40-340	ul.Korczaka
97	Katowice	21	43-349	ul.Katowicka
98	Zabrze	4	41-803	ul.Zamkowa
99	Zabrze	6	41-800	PlacTraugutta
100	Częstochowa	32	42-200	al.Niepodległości
101	Lubliniec	9	42-700	ul.Sobieskiego
104	Krzepice	1	42-160	ul.Szkolna
103	Katowice	25	40-032	ul.Jagiellońska 
105	Katowice	25	40-032	ul.Jagiellońska
106	Blachownia	16	42-290	ul.Sosnowa
107				\N
108	Siemianowice Śląskie	6	41-100	ul.Szpitalna
109	Katowice	26	40-074	ul.Raciborska
110	Bielsko Biała	21	43-300	ul.Wyspiańskiego
111	Mikołów	27	43-190	ul.S. Okrzei
112	Katowice	3	40-647	ul.Łubinowa
113	Katowice	92	40-519	ul.Kościuszki
115	Katowice	25	40-032	ul.Jagfiellońska
117	Wodzisław Śląski	53a	44-300	ul.26 Marca 
118	Katowice	39-41	40-042	ul.Wita Stwosza
119	Pszczyna	11	43-200	dr. Witolda Antesa
\.


--
-- TOC entry 3709 (class 0 OID 59555)
-- Dependencies: 214
-- Data for Name: tab_admin_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_admin_messages (admin_messages_id, admin_messages_author, admin_messages_title, admin_messages_type) FROM stdin;
\.


--
-- TOC entry 3756 (class 0 OID 60609)
-- Dependencies: 264
-- Data for Name: tab_announcement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_announcement (announcement_id, announcement_active, announcement_content, announcement_title, created_by, created_date, data_do, data_od) FROM stdin;
\.


--
-- TOC entry 3761 (class 0 OID 60788)
-- Dependencies: 269
-- Data for Name: tab_announcement_read; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_announcement_read (announcement_read_id) FROM stdin;
\.


--
-- TOC entry 3710 (class 0 OID 59571)
-- Dependencies: 215
-- Data for Name: tab_branch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_branch (id, code, kolej, name, branch_description, email, fax, phone) FROM stdin;
1	4000	43	WEWNĘTRZNY 4000	\N	\N	\N	\N
3	4020	26	DIABETOLOGICZNY 4020	\N	\N	\N	\N
5	4030	27	ENDOKRYNOLOGICZNY 4030	\N	\N	\N	\N
6	4050	28	GASTROENTEROLOGICZNY 4050	\N	\N	\N	\N
7	4051	59	GASTROLOGICZNY I GASTROENTEROLOGICZNY  DZIECIĘCY  4051	\N	\N	\N	\N
8	4060	55	GERIATRYCZNY 4060	\N	\N	\N	\N
9	4070	56	HEMATOLOGICZNY 4070	\N	\N	\N	\N
10	4100	23	KARDIOLOGICZNY 4100	\N	\N	\N	\N
15	4130	29	NEFROLOGICZNY 4130	\N	\N	\N	\N
13	4101	24	KARDIOLOGICZNY DZIECIĘCY 4101	\N	\N	\N	\N
14	4106	17	INTENSYWNEGO NADZORU KARDIOLOGICZNEGO 4106	\N	\N	\N	\N
16	4131	60	NEFROLOGICZNY DZIECIĘCY 4131	\N	\N	\N	\N
17	4150	74	TOKSYKOLOGICZNY  4150	\N	\N	\N	\N
20	4200	32	DERMATOLOGICZNY  4200	\N	\N	\N	\N
21	4201	61	DERMATOLOGICZNY  DZIECIĘCY 4201	\N	\N	\N	\N
22	4220	21	NEUROLOGICZNY 4220	\N	\N	\N	\N
23	4221	62	NEUROLOGICZNY DZIECIĘCY  4221	\N	\N	\N	\N
24	4222	8	UDAROWY  4222	\N	\N	\N	\N
31	4270	33	GRUŹLICY I CHORÓB PŁUC 4270	\N	\N	\N	\N
33	4280	37	REUMATOLOGICZNY 4280	\N	\N	\N	\N
40	4401	22	PEDIATRYCZNY 4401	\N	\N	\N	\N
42	4450	38	GINEKOLOGICZNO - POŁOŻNICZY 4450	\N	\N	\N	\N
45	4500	9	CHIRURGICZNY OGÓLNY 4500	\N	\N	\N	\N
46	4501	10	CHIRURGICZNY DZIECIĘCY 4501	\N	\N	\N	\N
47	4520	14	CHIRURGII KLATKI PIERSIOWEJ 4520	\N	\N	\N	\N
48	4530	13	CHIRURGII NACZYŃ 4530	\N	\N	\N	\N
49	4540	57	CHIRURGII ONKOLOGICZNEJ 4540	\N	\N	\N	\N
53	4560	19	KARDIOCHIRURGICZNY 4560	\N	\N	\N	\N
54	4561	20	KARDIOCHIRURGICZNY DZIECIĘCY 4561	\N	\N	\N	\N
55	4570	15	NEUROCHIRURGICZNY 4570	\N	\N	\N	\N
56	4571	63	NEUROCHIRURGICZNY DZIECIĘCY 4571	\N	\N	\N	\N
193	4107	18	INTENSYWNEGO NADZORU KARDIOLOGICZNEGO DZIECIĘCY (4107)	\N	\N	\N	\N
59	4600	40	OKULISTYCZNY  4600	\N	\N	\N	\N
60	4601	65	OKULISTYCZNY DZIECIĘCY 4601	\N	\N	\N	\N
61	4610	41	OTOLARYNGOLOGICZNY 4610	\N	\N	\N	\N
62	4611	64	OTOLARYNGOLOGICZNY DZIECIĘCY 4611	\N	\N	\N	\N
63	4630	16	CHIRURGII SZCZĘKOWO-TWARZOWEJ 4630	\N	\N	\N	\N
64	4640	42	UROLOGICZNY 4640	\N	\N	\N	\N
66	4700	45	PSYCHIATRYCZNY 4700	\N	\N	\N	\N
68	4702	81	REHABILITACJI PSYCHIATRYCZNEJ 4702	\N	\N	\N	\N
111	4348	36	OBSERWACYJNO-ZAKAŹNY 4348	\N	\N	\N	\N
100	4260	5	ODDZIAŁ IT DOROŚLI 4260	\N	\N	\N	\N
72	4902	3	SOR STANOWISKA IT 4902	\N	\N	\N	\N
75	4421	39	NEONATOLOGICZNY 4421	\N	\N	\N	\N
85	4458	69	POŁOŻNICTWA I NEONATOLOGII 4458	\N	\N	\N	\N
88	4306	80	REHABILITACJI NEUROLOGICZNEJ 4306	\N	\N	\N	\N
91	4710	49	PSYCHIATRYCZNY DLA CHORYCH SOMATYCZNIE 4710	\N	\N	\N	\N
92	4732	53	PSYCHIATRII SĄDOWEJ O WZMOCNIONYM ZABEZPIECZENIU 4732	\N	\N	\N	\N
94	4742	73	DETOKSYKACJI 4742	\N	\N	\N	\N
95	4744	75	OŚRODEK TERAPII UZALEŻNIENIA OD ALKOHOLU 4744	\N	\N	\N	\N
110	4240	58	ONKOLOGICZNY 4240	\N	\N	\N	\N
101	4261	7	ODDZIAŁ IT DZIECIĘCE 4261	\N	\N	\N	\N
105	2700	46	DZIENNY PSYCHIATRYCZNY  2700	\N	\N	\N	\N
106	4580	11	CHIRURGII URAZOWO-ORTOPEDYCZNEJ 4580	\N	\N	\N	\N
107	4132	77	STACJA DIALIZ 4132	\N	\N	\N	\N
108	4581	12	CHIRURGII URAZOWO-ORTOPEDYCZNEJ DLA DZIECI 4581	\N	\N	\N	\N
109	5172	51	PSYCHIATRYCZNY OPIEKUŃCZO-LECZNICZY 5172	\N	\N	\N	\N
116	2712	76	DZIENNY TERAPII UZALEŻNIENIA OD ALKOHOLU 2712	\N	\N	\N	\N
125	4716	52	PSYCHIATRYCZNY DLA PRZEWLEKLE CHORYCH 4716	\N	\N	\N	\N
134	4310	79	REHABILITACJI PULMONOLOGICZNEJ 4310	\N	\N	\N	\N
133	4272	35	CHORÓB PŁUC (PULMONOLOGICZNY) 4272	\N	\N	\N	\N
139	4403	67	NIEMOWLĘCY 4403	\N	\N	\N	\N
143	4031	70	ENDOKRYNOLOGICZNY DLA DZIECI 4031	\N	\N	\N	\N
152	4730	54	PSYCHIATRII SĄDOWEJ 4730	\N	\N	\N	\N
155	4071	71	HEMATOLOGICZNY DLA DZIECI 4071	\N	\N	\N	\N
159	4249	72	ONKOLOGII I HEMATOLOGII DZIECIĘCEJ 4249	\N	\N	\N	\N
164	4650	82	TRANSPLANTOLOGICZNY 4650	\N	\N	\N	\N
199	4270	34	GRUŹLICY 4270	\N	\N	\N	\N
196	4650	84	CHIRURGII TRANSPLANTACYJNEJ 4650	\N	\N	\N	\N
197	4658	83	TRANSPLANTACJI SZPIKU 4658	\N	\N	\N	\N
198	4910	1	SALA OPERACYJNA	\N	\N	\N	\N
200	4405	68	ODDZIAŁ PATOLOGII NOWORODKA 4405	\N	\N	\N	\N
201	4000	44	WEWNĘTRZNY II	\N	\N	\N	\N
202	4581	66	ORTOPEDII DZIECIĘCEJ 4581	\N	\N	\N	\N
203	4180	25	MEDYCYNY PALIATYWNEJ	\N	\N	\N	\N
204	4130	30	NEFROLOGICZNY (Nefrolux - Jaworzno)	\N	\N	\N	\N
205	4130	31	NEFROLOGICZNY (Nefrolux - Dąbrowa Górnicza)	\N	\N	\N	\N
180	2701	48	DZIENNY PSYCHIATRYCZNY DLA DZIECI I MŁODZIEŻY 2701	\N	\N	\N	\N
191	0	2	ŁÓŻKA IOM W ODDZIAŁACH SZPITALA	\N	\N	\N	\N
182	4701	47	PSYCHIATRYCZNY (OGÓLNY) DLA DZIECI 4701	\N	\N	\N	\N
183	4133	78	STACJA DIALIZ DLA DZIECI 4133	\N	\N	\N	\N
192	4902	4	SOR ŁÓŻKA OBSERWACYJNE 4902	\N	\N	\N	\N
189	0	85	STANOWISKA IT W POZOSTAŁYCH ODDZIAŁACH SZPITALA	\N	\N	\N	\N
190	4714	50	PSYCHIATRYCZNY DLA CHORYCH NA GRUŹLICĘ 4714	\N	\N	\N	\N
195	4260	6	ODDZIAŁ IT DOROŚLI PEŁNA IZOLACJA ODDECHOWA 4260	\N	\N	\N	\N
\.


--
-- TOC entry 3763 (class 0 OID 60794)
-- Dependencies: 271
-- Data for Name: tab_document; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_document (id, document_type, file_description, file_path, filetype, name) FROM stdin;
\.


--
-- TOC entry 3711 (class 0 OID 59576)
-- Dependencies: 216
-- Data for Name: tab_hospital; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital (hospital_id, director, fax, kolej, name, phone, short_name, hospital_category_id, hospital_county_id, hospital_description, address_id, hospital_active) FROM stdin;
23	\N	32 3314276	69	NZOZ VITO-MED Sp. z o.o. w Gliwicach	IZBA PRZYJĘĆ: 32 3029820\\r\\nCENTRALA: 32 3029800    	NZOZ VITO-MED w Gliwicach	4	4	\N	12	t
25	\N		100	Wojewódzki Szpital Neuropsychiatryczny im. dr E.Cyrana w Lublińcu	CENTRALA: 34 3563561	Woj. Szpital Neuropsychiatryczny im. dr E.Cyrana w Lublińcu	1	33	\N	14	t
26	\N	32 3849921	91	Szpital Św. Kamila w Tarnowskich Górach	CENTRALA: 32 3849756, 32 2857627	Szpital Św. Kamila w Tarnowskich G.	2	25	\N	15	t
27	\N	32 4226875	74	SP ZOZ Państwowy Szpital dla Nerwowo i Psychicznie Chorych w Rybniku	IZBA PRZYJĘĆ: 32 4328159, 32 4328183, 32 4328184, 32 432252, fax: 32 4226876	Szpital dla Nerwowo i Psychicznie Chorych w Rybniku	2	9	\N	16	t
28	\N	32 2810270	33	SP ZOZ Wojewódzki Szpital Specjalistyczny Nr 4 w Bytomiu	323964590, CENTRALA: 32 2810271, 32 2810272, 32 2810273, 32 2810274, 32 2810275, 32 2810276, 32 2810277\\r\\nTEL. DYŻURNY CAŁODOBOWY: 603 636 229	WSS Nr 4 w Bytomiu	1	6	\N	17	t
29	\N	32 368 21 01	13	Wojewódzki Szpital Specjalistyczny Nr 5 im. Św. Barbary w Sosnowcu	IZBA PRZYJĘĆ: 32 3682267\\r\\nTEL. DYŻURNY CAŁODOBOWY: 516 008 939, 32 368 21 65	WSS Nr 5 im. Św. Barbary w Sosnowcu	1	3	\N	18	t
30	\N	32 2332424 wew. 230	67	Szpital w Pyskowicach Sp. z o.o.	CENTRALA: 32 233 24 24\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 233 24 24 wew. 250	Szpital Powiatowy w Pyskowicach Sp. z o.o.	2	28	\N	19	t
31	\N	32 7861646	71	Szpital Specjalistyczny Nr 2 w Bytomiu	32 7861543, CENTRALA: 32 7861400\\r\\nTEL. DYŻURNY CAŁODOBOWY: 509510930	Szpital Specjalistyczny Nr 2 w Bytomiu	2	6	\N	20	t
32	\N	33 8102101, 338102556	14	Szpital Wojewódzki w Bielsku-Białej	CENTRALA: 33 8102000\\r\\nTEL. DYŻURNY CAŁODOWBOWY: 667673946, 606766431	Szpital Wojewódzki w Bielsku B.	1	7	\N	21	t
33	\N	33 8123098	86	SP ZOZ Szpital Kolejowy w Wilkowicach	IZBA PRZYJĘĆ: 33 8122028 wew. 136	Szpital Kolejowy w Wilkowicach	2	22	\N	22	t
34	\N	32 2554633	21	Samodzielny Publiczny Szpital Kliniczny im. Andrzeja Mielęckiego Śląskiego Uniwersytetu Medycznego w Katowicach	CENTRALA: 32 2591200	Szpital Kliniczny im. A. Mielęckiego w Katowicach	3	1	\N	25	t
35	\N	32 7357603	42	Centrum Leczenia Oparzeń w Siemianowicach Śl.	IZBA PRZYJĘĆ: 32 7357475\\r\\nTEL. DYŻURNY CAŁODOBOWY: 695914465\\r\\n	Centrum Leczenia Oparzeń w Siemianowicach Śl.	2	16	\N	26	t
36	\N	323732396	70	Szpital Specjalistyczny w Zabrzu	CENTRALA: 32 373 23 00	Szpital Specjalistyczny w Zabrzu	2	5	\N	27	t
37	\N	33 8113923	72	Bielskie Centrum Psychiatrii Olszówka w Bielsku-Białej	IZBA PRZYJĘĆ: 33 8123041 wew. 123	Spec. Psychiatryczny ZOZ w Bielsku B.	2	7	\N	28	t
38	\N	327505034	32	Szpital Specjalistyczny Nr 1 w Bytomiu 	IZBA PRZYJĘĆ: 32 3963207, 32 3963267 \\r\\nREJESTRACJA: Żeromskiego 7 - 32 3963244, Legionów 49 - 32 2819244, Karola Miarki 10 - 32 2811259  \\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 3963216	Szpital Specjalistyczny Nr 1 w Bytomiu	2	6	\N	29	t
39	\N	32 2453440	83	Szpital Powiatowy w Świętochłowicach	32 3461489; CENTRALA: 32 2455041, 32 2455042, 32 2455043, 32 2455044, 32 2455045\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 6219503	Szpital Powiatowy w Świętochłowicach	2	19	\N	31	t
41	\N	32 7519844	18	Szpital Wielospecjalistyczny w Jaworznie	CENTRALA: 32 3174511, 32 6164482\\r\\nTEL. DYŻURNY CAŁODOBOWY: 501025140	Szpital Wielospecjalistyczny w Jaworznie	2	13	\N	32	t
42	\N	32 672 15 32	49	Szpital Powiatowy w Zawierciu	IZBA PRZYJĘĆ: 32 6740297\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 674 02 00	Szpital Powiatowy w Zawierciu	2	27	\N	33	t
45	\N	32 3316584	68	Szpital Wielospecjalistyczny Sp. z o.o. w Gliwicach	CENTRALA: 32 2382091 do 95	Szpital Wielospecjalistyczny w Gliwicach	2	4	\N	34	t
46	\N	32 3576238	22	Bonifraterskie Centrum Medyczne Sp. z o.o. Oddział w Katowicach	IZBA PRZYJĘĆ: 32 3576270, CENTRALA: 32 3576200 \\r\\n	Bonifraterskie Centrum Medyczne Sp. z o.o. Oddział w Katowicach	2	1	\N	35	t
48	\N	32 2335244, 32 2334325	94	Samodzielny Publiczny Zakład Opieki Zdrowotnej Szpital Psychiatryczny w Toszku	IZBA PRZYJĘĆ: 32 2334112 wew. 204, 220, 280	SP ZOZ Szpital Psychiatryczny w Toszku	2	28	\N	36	t
49	\N	32 3308401	27	Szpital Miejski Nr 4 z Przychodnią SP ZOZ w Gliwicach (ul. Zygmunta Starego 20)	CENTRALA: 32 2318888	Szpital Miejski Nr 4 w Gliwicach (ul. Zygmunta Starego 20)	2	4	\N	38	t
50	\N	326027013	57	Przedsiębiorstwo Wielobranżowe JUMO Sp. z o.o. w Katowicach	OSTRY DYŻUR UROLOGICZNY: 32 602 70 52\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 60 27 000	PW JUMO (NZOZ Śląski Szp. Urologiczny w K-cach)	4	1	\N	39	t
51	\N	32 2556337	58	Szpital Miejski w Katowicach-Murckach	LEKARZ KOORDYNATOR: 32 2556259, IZBA PRZYJĘĆ: NEUROLOGIA - 32 2556162 wew. 264, ODDZIAŁ INTERNISTYCZNY - 32 2556162 wew. 215, REUMATOLOGIA - 32 2556162 wew. 231, CHIRURGIA OGÓLNA - 32 2556162 wew. 231, CHIRURGIA URAZOWO - ORTOPEDYCZNA - 32 2556162 wew. 231	Szpital Miejski w Katowicach-Murckach	2	1	\N	40	t
52	\N	33 4991802	47	Centrum Pulmonologii i Torakochirurgi w Bystrej	IZBA PRZYJĘĆ: 33 4991900, 33 4991901, 33 4991906; REJESTRACJA: 33 4991877 \\r\\ne-mail IP: izbaprzyjec@szpitalbystra.pl	Centrum Pulmonologii i Torakochirurgi w Bystrej	2	22	\N	41	t
53	\N	323255284	36	Megrez Sp. z o.o. Wojewódzki Szpital Specjalistyczny w Tychach	IZBA PRZYJĘĆ (TEL. CAŁODOBOWY): 32 3255148	WSS MEGREZ w Tychach	1	10	\N	42	t
55	\N	32 2281498	41	Szpital Miejski w Siemianowicach Śl. Sp. z o.o.	IZBA PRZYJĘĆ: 32 6085992, 32 2283030 wew. 290\\r\\nTEL. DYŻURNY CAŁODOBOWY: 500108512	Szpital Miejski w Siemianowicach Śl. Sp. z o.o.	2	16	\N	45	t
57	\N	32 322514533	59	Katowickie Centrum Onkologii	IZBA PRZYJĘĆ: 32 4200225, 32 4200163 lub 32 4200100 wew. 225, 163\\r\\n	Katowickie Centrum Onkologii	1	1	\N	109	t
58	\N	32 7555049	50	Szpital Rejonowy im. dr. Józefa Rostka w Raciborzu	IZBA PRZYJĘĆ: 32 7555132\\r\\nTEL. DYŻURNY CAŁODOBOWY: 602 135 258, 665 140 444	Szpital Rejonowy im. dr. Józefa Rostka w Raciborzu	2	29	\N	48	t
59	\N	343673104, 34 3651756	9	Wojewódzki Szpital Specjalistyczny im. Najświętszej Maryi Panny w Częstochowie (ul. Bialska)	Centrala tel. ul. BIALSKA tel: 343673000, ul. PCK 7 tel: 343252611, Rejestracja ogólna ul. BIALSKA tel: 34 3673417, 34 3673750, Rejestracja Poradni: 34 3721361, 34 3252611 - wew. 113	WSS im. NMP w Częstochowie (ul.Bialska)	1	2	\N	49	t
60	\N	32 3845404	20	Wielospecjalistyczny Szpital Powiatowy S.A.,  NZOZ Szpital im. dr B. Hagera w Tarnowskich Górach	CENTRALA: Pyskowicka 47-51 - 32 3908200, Opolska 21 - 32 2854213	Wielospec. Szpital Powiatowy im. dr B. Hagera w Tarnowskich G.	2	25	\N	51	t
62	\N	33 8521224	19	Zespół Zakładów Opieki Zdrowotnej w Cieszynie	CENTRALA: 33 8520511\\r\\nTEL. DYŻURNY CAŁODOBOWY: 33 8549200	Zespół ZOZ w Cieszynie	2	20	\N	52	t
15	\N	32 3183362	80	SP ZOZ Szpital Nr 2 im. dr. Tadeusza Boczonia w Mysłowicach	IZBA PRZYJĘĆ: 32 3183292, REJESTRACJA: 32 3183332\\r\\nTEL. DYŻURNY CAŁODOBOWY: 723183348	Szpital Nr 2 im. dr. T. Boczonia w Mysłowicach	2	15	\N	6	t
20	\N	343673104, 34 3651756	10	Wojewódzki Szpital Specjalistyczny im. Najświętszej Maryi Panny w Częstochowie (al. Pokoju)	Centrala tel. ul. BIALSKA tel: 343673000, Rejestracja ogólna ul. BIALSKA tel: 34 3673417, 34 3673750, Rejestracja Poradni: 34 3721361, 34 3252611 - wew. 113	WSS im. NMP w Częstochowie (al. Pokoju)	1	2	\N	9	t
21	\N	32 2260860	95	Centrum Zdrowia w Mikołowie - Szpital Powiatowy Spółka z o.o.	IZBA PRZYJĘĆ: 32 3257546	Centrum Zdrowia w Mikołowie	2	31	\N	10	t
22	\N	32 4555325	85	Wojewódzki Szpital Chorób Płuc im. dr Alojzego Pawelca w Wodzisławiu Śląskim	CENTRALA: 32 4537110\\r\\nTEL. DYŻURNY CAŁODOBOWY: 792 844 633	Woj. Szpital Chorób Płuc im. dr Alojzego Pawelca w Wodz.Śl.	1	21	\N	11	t
24	\N	324228272	15	Samodzielny Publiczny Zakład Opieki Zdrowotnej Wojewódzki Szpital Specjalistyczny Nr 3 \\r\\nw Rybniku	IZBA PRZYJĘĆ: 32 4292501\\r\\nSOR: 32 4292653, 32 4292650\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 4292641, 32 4292642, 501702695 (lekarz koordynator)	WSS Nr 3 w Rybniku	1	9	\N	\N	t
73	\N	32 611 53 02	51	Szpital Joannitas w Pszczynie	32 611 53 00	Szpital Joannitas w Pszczynie	2	30	\N	119	t
54	\N	32 4784506	40	Wojewódzki Szpital Specjalistyczny Nr 2 \\r\\nw Jastrzębiu - Zdroju	324784301, 324784307\\r\\nTEL. DYŻURNY CAŁODOBOWY: 502258140	WSS Nr 2 w Jastrzębiu Z.	1	14	\N	\N	t
128	\N	32/ 111 42 03	38	\\"UROVITA\\" Spółka z ograniczoną odpowiedzialnością NZOZ Szpital \\"Śląskie Centrum Urologii\\"	IP 32 111 42 70	\\"UROVITA\\" Sp. z o.o. NZOZ Szpital \\"ŚLąskie Centrum Urologii\\"	4	12	\N	\N	t
136	\N		4	Wydział Powiadamiania Ratunkowego\\r\\nŚląski UW	32 20 77 478	PR ŚUW	1	1	\N	\N	t
147	\N		7	Dyspozytornia Medyczna w Bielsku-Białej		DM12-05 Bielsko-Biała	6	7	\N	\N	t
148	\N		6	Dyspozytornia Medyczna w Gliwicach		DM12-04 Gliwice	6	4	\N	\N	t
152	\N		5	Dyspozytornia Medyczna w Częstochowie		DM12-01	6	2	\N	\N	t
10	\N	32 331 99 08	93	Szpital Chorób Płuc im. Św. Józefa w Pilchowicach	CENTRALA: 32 2356527\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 331 99 01	Szpital Chorób Płuc im. Św. Józefa w Pilchowicach	2	28	\N	1	t
11	\N	32 2856006	90	Niepubliczny Zakład Opieki Zdrowotnej Zakład Pulmonologii Spółka z o.o. w Tarnowskich Górach	IZBA PRZYJĘĆ: 32 2854430 (8:00 - 18:00, pon-pt); REJESTRACJA: 32 2852563, 32 3816581 (8:00 - 18:00, pon-pt)\\r\\nTEL. DYŻURNY CAŁODOBOWY: 609823400	NZOZ Zakład Pulmonologii w Tarnowskich G.	4	25	\N	2	t
12	\N	32 6741471	89	Szpital Chorób Płuc w Siewierzu Sp. z o.o.	CENTRALA: 32 6741142 	Szpital Chorób Płuc w Siewierzu Sp. z o.o.	2	23	\N	3	t
13	\N	sekretariat: 32 3319304, IP: 32 3319289	92	Szpital w Knurowie Sp. z o.o.	IZBA PRZYJĘĆ: 32 3319280	Szpital w Knurowie	2	28	\N	4	t
14	\N	32 7803379	76	Szpital Miejski Sp. z o.o. w Tychach 	IZBA PRZYJĘĆ: 32 7808726, REJESTRACJA: 32 7808742\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 7808700	Szpital Miejski w Tychach	2	10	\N	5	t
63	\N	32 2215920	97	Szpital Chorób Płuc w Orzeszu	IZBA PRZYJĘĆ: 32 2213661 lub 32 221662 wew. 30, REJESTRACJA: 32 2213661 lub 32 221662 wew. 24	Szpital Chorób Płuc w Orzeszu	2	31	\N	53	t
64	\N	32 2784334	30	Śląskie Centrum Chorób Serca w Zabrzu	CENTRALA: 32 3733700\\r\\nTEL DYŻURNY CAŁODOBOWY: 32 373 38 00, 32 373 38 01	Śląskie Centrum Chorób Serca w Zabrzu	2	5	\N	54	t
65	\N	32 2518437	23	Uniwersyteckie Centrum Kliniczne im. prof. Kornela Gibińskiego Śląskiego Uniwersytetu Medycznego w Katowicach ul. Ceglana 35	CENTRALA: 32 3581200\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 3581248\\r\\nIP: 32 2513826, 32 3581246	UCK im. prof. K. Gibińskiego Śląskiego Uniwersytetu Medycznego w Katowicach (ul.Ceglana 35)	3	1	\N	55	t
66	\N	32 2028754	25	Górnośląskie Centrum Medyczne im. prof. Leszka Gieca Śląskiego Uniwerytetu Medycznego w Katowicach (SSW)	Centrala: 323598000 lub 322024025\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 3598122	Szpital Kliniczny Nr 7 ŚUM w Katowicach (Budynek SSW)	3	1	\N	56	t
68	\N	32 4613220	28	Szpital Miejski Nr 4 z Przychodnią SP ZOZ w Gliwicach (ul. Kościuszki 29)	IZBA PRZYJĘĆ: 32 4613333\\r\\nTEL. DYŻURNY CAŁODOBOWY: 795447189	Szpital Miejski nr 4 w Gliwicach (ul. KOściuszki 29)	2	4	\N	58	t
69	\N	32 2414733	78	Szpital Specjalistyczny w Chorzowie	CENTRALA: 32 2413255, 32 2413256\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 3463615	Szpital Spec. w Chorzowie	2	12	\N	59	t
70	\N	32 2677355	87	Powiatowy Zespół Zakładów Opieki Zdrowotnej w Będzinie	IZBA PRZYJĘĆ:  chirurgiczno - internistyczna - 32 2673011 wew. 363, 282, 273, 274, 362; położniczo - ginekologiczna - 267-30-11 wew. 141, 143 \\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 763 76 34	Powiatowy Zespół ZOZ w Będzinie	2	23	\N	60	t
71	\N	323938101	82	Piekarskie Centrum Medyczne p.w św. Łukasza Szpital Miejski Sp. z o.o. w Piekarach Śląskich 	REJESTRACJA: 32 3938119, CENTRALA: 32 3938100 	Szpital Miejski w Piekarach Śl.	2	18	\N	62	t
72	\N	 343172206 wew. 137	98	Zespół Opieki Zdrowotnej Szpital Rejonowy w Kłobucku	343172206 wew. 150 i 165\\r\\nTEL. DYŻURNY CAŁODOBOWY: 604555638	ZOZ Szpital w Kłobucku	2	32	\N	63	t
74	\N	32 2525955	1	Uniwersyteckie Centrum Kliniczne im. prof. Kornela Gibińskiego Śląskiego Uniwersytetu Medycznego w Katowicach ul. Medyków 14	Centralna Izba Przyjęć: 32 7894801 32 7894814, Izba Przyjęć Ginekologii i Położnictwa: 32 7894831, \\r\\nCentrala: 32 7894000\\r\\n	UCK im. prof. K. Gibińskiego Śląskiego Uniwersytetu Medycznego w Katowicach (ul. Medyków 14)	3	1	\N	65	t
105	\N	33 8151630	56	Szpital Pediatryczny w Bielsku-Białej	IZBA PRZYJĘĆ: pediatryczna - 33 8284027, chirurgiczna - 33 8284028; REJESTRACJA: 33 8284072, 33 8284073	Szpital Pediatryczny w Bielsku B.	2	7	\N	7	t
75	\N	32 4591777 	45	Powiatowy Publiczny Zakład Opieki Zdrowotnej w Rydułtowach i Wodzisławiu Śląskim	IZBA PRZYJĘĆ: Oddział Chorób Wewnętrznych I - 32 4591917, Oddział Pediatryczny z Pododdziałem Patologii Noworodka - 32 4592434, Oddział Ginekologiczno - Położniczy - 32 4592461   	PP ZOZ w Rydułtowach i Wodzisławiu Śl.	2	21	\N	66	t
76	\N	32 3704522	31	Samodzielny Publiczny Szpital Kliniczny Nr 1 im Prof. Stanisława Szyszko ŚUM w Katowicach w Zabrzu	Główna Izba Przyjęć ? Dorośli: 32 37 04 303, 32 37 04 450\\r\\nIzba Przyjęć - Dzieci: 32 37 04 205, 32 37 04 341\\r\\n\\r\\n	Szpital Kliniczny Nr 1 im Prof. S. Szyszko ŚUM w Zabrzu	3	5	\N	68	t
114	\N	343172206 wew. 123	99	Zespół Opieki Zdrowotnej w Kłobucku Szpital w Krzepicach	343175050, 343175019, 343175220 - wew. 26.	ZOZ w Kłobucku Szpital w Krzepicach	2	32	\N	104	t
77	\N	32 2413952	37	Samodzielny Publiczny Zakład Opieki Zdrowotnej Zespół Szpitali Miejskich w Chorzowie (ul. Strzelców Bytomskich 11)	INFORMACJA: Strzelców Bytomskich - 32 3499100 (do 14:00), 32 3499103 (od 14:00); Pułaskiego: 32 3499265 (po 14:00)\\r\\nTEL. DYŻURNY CAŁODOBOWY: 604419114, 698639280	Zespół Szpitali Miejskich w Chorzowie (ul. Strzelców Bytomskich 11)	2	12	\N	69	t
78	\N	33 8164401	34	Beskidzkie Centrum Onkologii - Szpital Miejski im. Jana Pawła II w Bielsku-Białej	CENTRALA: Wyzwolenia 18 - 33 4984001, Wyspiańskiego 21 - 33 8272500, Emilii Plater 17 - 33 8198760 \\r\\nTEL. DYŻURNY CAŁODOBOWY: (ul. Wyspiańskiego) 33 2872543, (ul. Wyzwolenia) 33 4984016	Beskidzkie Centrum Onkologii - Szp. Miej. im. JP II w BielskuB.	2	7	\N	110	t
79	\N	32 2279826	75	Polsko-Amerykańskie Kliniki Serca X Oddział Kardiologii Inwazyjnej, Elektrostymulacji i Elektrofizjologii w Tychach	CENTRALA: 32 2279826	Pol/Am Kliniki Serca X Od. Kardiol. w Tychach	2	10	\N	42	t
80	\N	32 7586607	77	Polsko-Amerykańskie Kliniki Serca III Oddział Kardiologii Inwazyjnej, Angiologii i Elektrokardiologii w Dąbrowie Górniczej	CENTRALA: 32 7642724, 32 7643030\\r\\nTELEFON ZAWAŁOWY: 603 203 766	Pol/Am Kliniki Serca III Oddział Kardiol. w Dąbrowie G.	2	11	\N	73	t
81	\N	33 8289393	35	Polsko-Amerykańskie Kliniki Serca II Oddział Kardiologiczny w Bielsku-Białej	CENTRALA: 33 8289370, 33 8289380, 33 8289390; IZBA PRZYJĘĆ: 33 8289390 wew. 100\\r\\nTELEFON ZAWAŁOWY: 508 463 500	Pol/Am Kliniki Serca II Od. Kardiol. w Bielsku B.	2	7	\N	21	t
82	\N	33 4722802	84	Polsko-Amerykańskie Kliniki Serca I Oddział Kardiologiczno-Angiologiczny w Ustroniu	CENTRALA: 33 8545857, 33 8545859\\r\\nTEL. ZAWAŁOWY: 603 464 546	Pol/Am Kliniki Serca I Oddział Kardiol. w Ustroniu	2	20	\N	74	t
83	\N	32 2221609	81	Mysłowickie Centrum Zdrowia Sp. z o.o. Niepubliczny Zakład Opieki Zdrowotnej Szpital Nr 1 im. św. Karola Boromeusza w Mysłowicach	IZBA PRZYJĘĆ: 32 3174406	Mysłowickie Centrum Zdrowia	4	15	\N	75	t
84	\N	32 7827300	63	SPZOZ MSW im. sierż. Grzegorza Załogi w Katowicach 	IZBA PRZYJĘĆ: 32 7827328, 32 7827329, 32 7827330	Szpital MSW im. sierż. G. Załogi w Katowicach	2	1	\N	118	t
85	\N	34 3702792	12	Miejski Szpital Zespolony w Częstochowie	CENTRALA: 34 3702222\\r\\nSOR: 34 3702168, 34 3702170	Miejski Szpital Zespolony w Częstochowie	2	2	\N	78	t
86	\N	32 32 208 89 90	60	Szpital św. Elżbiety w Katowicach	CENTRALA: 32 2088990	Szpital św. Elżbiety w Katowicach	2	1	\N	81	t
87	\N	32 6053508	61	Okręgowy Szpital Kolejowy Sp.  z o.o w Katowicach 	IZBA PRZYJĘĆ: 32 6053501, 32 6053544, 32 6053545 	Szpital Kolejowy w Katowicach	2	1	\N	82	t
88	\N	32 4130112	66	Sosnowiecki Szpital Miejski Sp. z o. o.	IZBA PRZYJĘĆ: Szpitalna 1 - 32 4130200, Zegadłowicza 3 - 32 4130410  	Sosnowiecki Szpital Miejski Sp. z o. o.	2	3	\N	84	t
89	\N	32 4341271	43	Miejskie Zakłady Opieki Zdrowotnej Szpital Miejski Sp. z o.o. w Żorach  	IZBA PRZYJĘĆ: 32 4341236	Szpital Miejski w Żorach	2	17	\N	85	t
91	\N	34 3565870	52	Samodzielny Publiczny Zespół Opieki Zdrowotnej w Lublińcu	IZBA PRZYJĘĆ: 34 3514910\\r\\nTEL. DYŻURNY CAŁODOBOWY: 504255699	SP ZOZ w Lublińcu	2	33	\N	101	t
92	\N	 32 2071546 	8	Górnośląskie Centrum Zdrowia Dziecka im. św. Jana Pawła II Samodzielny Publiczny Szpital Kliniczny Nr 6 Śląskiego Uniwersytetu Medycznego w Katowicach 	CENTRALA: 32 2071800\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 2071950, 32 2071900	GCZD im. św. Jana Pawła II	3	1	\N	87	t
93	\N	32 2663630	55	Centrum Zdrowia Dziecka i Rodziny im. Jana Pawła II w Sosnowcu Sp. z o.o.	IZBA PRZYJĘĆ: 32 7207774, REJESTRACJA OGÓLNA - PORADNIE SPECJALISTYCZNA: 32 2929193, PORADNIA ALERGOLOGICZNA: 32 7207700 wew. 117\\r\\nTEL. DYŻURNY CAŁODOBOWY: 508 141 007	Centrum Zdrowia Dziecka i Rodziny im. Jana Pawła II w Sosnowcu	2	3	\N	88	t
94	\N	32 3934141	44	SP Wojewódzki Szpital Chirurgii Urazowej im. Dr. J. Daaba w Piekarach Ślaskich 	CENTRALA: 32 3934100\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 3934360, 32 3934214, 32 3934300	Wojew. Szpital Chirurgii Urazowej im. Dr. J. Daaba w Piekarach Śląskich	2	18	\N	89	t
95	\N	32 2415529	39	Samodzielny Publiczny Zakład Opieki Zdrowotnej Zespół Szpitali Miejskich w Chorzowie (ul. Władysława Truchana 7)	CENTRALA: 32 3490000, 32 3490001\\r\\nSOR: 32 3471224, 32 3471223\\r\\nTEL. DYŻURNY CAŁODOBOWY: 697708556	Zespół Szpitali Miejskich w Chorzowie (ul. Władysława Truchana 7)	2	12	\N	90	t
96	\N	32 7795912	73	Szpital Miejski Sp. z o.o. w Rudzie Śląskiej 	CENTRALA: 32 3440724, IZBA PRZYJĘĆ: Godula- 32 3440730, Bielszowice - 32 3440867\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 3440723	Szpital Miejski w Rudzie Śl.	2	8	\N	91	t
97	\N	32 262 59 23	17	Zagłębiowskie Centrum Onkologii Szpital Specjalistyczny im. Sz. Starkiewicza w Dąbrowie Górniczej	CENTRALA: 32 2623275, 32 2623276, 32 2623277\\r\\nSOR: 32 621 21 12	Szpital Spec. im. Sz. Starkiewicza w Dąbrowie G.	2	11	\N	73	t
98	\N	33 8612995	48	ICZ HealthCare Żywiec Sp. z.o.o.	33 440 14 00	Szpital Żywiec	2	24	\N	116	t
99	\N	34 3138978, 34 3137329	101	Samodzielny Publiczny Zespół Opieki Zdrowotnej w Myszkowie	IZBA PRZYJĘĆ: 34 3158211\\r\\nTEL. DYŻURNY CAŁODOBOWY: 501663956, 508687707, 604371878.	SP ZOZ w Myszkowie	2	35	\N	95	t
100	\N	32 3499275	79	Chorzowskie Centrum Kardiologii w Chorzowie	CENTRALA: 32 3499132\\r\\nTEL. DYŻURNY CAŁODOBOWY: 602433800	Chorzowskie Centrum Kardiologii	2	12	\N	69	t
101	\N	34 3655126	64	Częstochowskie Centrum Kardiologii w Częstochowie	CENTRALA: 34 3214000\\r\\nTEL. DYŻURNY CAŁODOBOWY: 606 100 800	Częstochowskie Centrum Kardiologii	2	2	\N	79	t
102	\N	32 4130275	65	Sosnowieckie Centrum Kardiologii	CENTRALA: 32 4130275\\r\\nTEL. DYŻURNY CAŁODOBOWY: 665 107 107	Sosnowieckie Centrum Kardiologii	2	3	\N	83	t
103	\N	32 6038553 	62	Centrum Psychiatrii w Katowicach	CENTRALA: 32 6038400	Centrum Psychiatrii w Katowicach	2	1	\N	96	t
104	\N	322717311	29	Szpital Miejski Sp. z o.o. w Zabrzu 	IZBA PRZYJĘĆ ul. Zamkowa 4: 32 2776100 (wew. 138, 136, 300, 321)\\r\\nIZBA PRZYJĘĆ Plac Traugutta 6: 32 2776301, 32 2776320\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 2776138	Szpital Miejski w Zabrzu	2	5	\N	98	t
110	\N	32 4591777	46	Powiatowy Publiczny ZOZ w Rydułtowach i Wodzisławiu Śl./Oddz. Rydułtowy	Oddział Chorób Wewnętrznych z Pododdziałem Geriatrycznym - 32 4592463/32 4592423 (lek.), 32 4592522/324592554 (piel.), 32 4592575 (sek.)\\r\\nOddział Pediatryczny - 32 4592432/32 4592431/32 4592433 (lek.), 32 4592418/32 4592417 (piel.), 32 4592517 (sek.)\\r\\nOddział Rehabilitacyjny - 32 4592509 (lek.) 32 4592420 (piel.), 32 4592461 (sek.)	PP ZOZ w Rydułtowach i Wodzisławiu Śl./Oddz. Rydułtowy	2	21	\N	67	t
112	\N	322651430	88	Powiatowy Zespół Zakładów Opieki Zdrowotnej w Będzinie Oddz. w Czeladzi	IZBA PRZYJĘĆ: 32 7637634, 32 2651644 wew. 201; IZBA PEDIATRYCZNA: 32 2904575 \\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 763 76 34	PZZOZ w Będzinie Oddz. w Czeladzi	2	23	\N	61	t
118	\N	322028754	24	Górnośląskie Centrum Medyczne im. prof. Leszka Gieca Śląskiego Uniwersytetu Medycznego w Katowicach (GOK)	Centrala: 323598000 lub 322024025\\r\\nTEL. DYŻURNY CAŁODOBOWY: 32 3598122	Szpital Kliniczny Nr 7 ŚUM w Katowicach (Budynek GOK)	3	1	\N	56	t
119	\N	343673104, 34 3651756	11	Wojewódzki Szpital Specjalistyczny im. Najświętszej Maryi Panny w Częstochowie (ul. PCK)	Centrala tel. ul. BIALSKA tel: 343673000, ul. PCK 7 tel: 343252611, Rejestracja ogólna ul. BIALSKA tel: 34 3673417, 34 3673750, Rejestracja Poradni: 34 3721361, 34 3252611 - wew. 113	WSS im. NMP w Częstochowie (ul. PCK)	1	2	\N	50	t
123	\N	43 327 91 75 wew. 269	54	Szpital im. Rudolfa Weigla w Blachowni	Centrala - 34 327 91 75, Izba Przyjęć - 34 32791 75 wew. 266\\r\\nTEL. DYŻURNY CAŁODOBOWY: 34 3992166	Szpital im. Rudolfa Weigla w Blachowni	4	26	\N	106	t
124	\N	322028754	26	 Górnośląskie Centrum Medyczne im. prof. Leszka Gieca Śląskiego Uniwersytetu Medycznego w Katowicach (w lokalizacji Cieszyn)	TEL. DYŻURNY CAŁODOBOWY: 338520511 wew. 331	Szpital Kliniczny Nr 7 ŚUM w Katowicach (oddział w Cieszynie)	3	20	\N	52	t
127	\N	32 76 60 712	53	NEFROLUX Wojciech Kamiński, Maciej Kamiński sp. z o.o. w Siemianowicach Śląskich	Rejestracja: tel. 32 76 60 500 wew. 100, tel. 32 62 12 605	\\"Nefrolux\\" Siemianowice Śląskie	4	16	\N	108	t
130	\N	tel. 32 226 59 74	96	Szpital Św. Józefa Sp. z o.o. w Mikołowie	Izba przyjęć: 32 226 59 77/80 wew. 401	Szpital Św. Józefa w Mikołowie	2	31	\N	111	t
131	\N	32 202 55 21 wew. 333	103	Łubinowa Sp. z o.o. Sp. Komandytowa, Szpital Ginekologiczno-Położniczy w Katowicach	32 202 55 21	Szpital Ginekologiczno-Położniczy Łubinowa w Katowicach	4	1	\N	112	t
133	\N		102	Szpital EuroMedic Spółka Akcyjna.	32 707 42 00 - Izba Przyjęć 		4	1	\N	113	t
134	\N		16	Samodzielny Publiczny Zakład Opieki Zdrowotnej Wojewódzki Szpital Specjalistyczny Nr 3 w Rybniku			1	9	\N	13	t
146	\N		3	Wojewódzki Koordynator Ratownictwa Medycznego - WKRM	32 20 77 100	WKRM	1	1	\N	105	t
154	\N		2	Medical Network Intelligence Group sp. z o.o. - Wodzisławskie Centrum Medyczne	Całodobowy kontakt, lekarz dyżurny 604356037\\r\\n\\r\\nkontakt@wcm-wodzislaw.pl 	Wodzisławskie Centrum Medyczne	4	21	\N	117	t
\.


--
-- TOC entry 3772 (class 0 OID 61310)
-- Dependencies: 283
-- Data for Name: tab_hospital_branch_closed; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_branch_closed (id, agreement, cause, date_from, date_to, replacement, title, hospital_id, hospital_config_id, user_id) FROM stdin;
\.


--
-- TOC entry 3774 (class 0 OID 61318)
-- Dependencies: 285
-- Data for Name: tab_hospital_branch_closed_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_branch_closed_files (hospital_branch_closed_files_id, file_active, file_name, file_url, local_date_time, hospital_branch_closed_id) FROM stdin;
\.


--
-- TOC entry 3712 (class 0 OID 59586)
-- Dependencies: 217
-- Data for Name: tab_hospital_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_category (hospital_category_id, name) FROM stdin;
1	Szpitale wojewódzkie
2	Szpitale powiatowe
3	Szpitale kliniczne i instytuty naukowo-badawcze
4	Szpitale niepubliczne
5	Szpitale resortowe
6	Stacje pogotowia (ZRM)
\.


--
-- TOC entry 3713 (class 0 OID 59589)
-- Dependencies: 218
-- Data for Name: tab_hospital_config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_config (hospital_config_id, hospital_config_description, number_of_beds, number_of_beds_locked, branch_id, hospital_id, description, email, fax, phone, active, create_date, update_date, user_id, managment_id) FROM stdin;
99999999	brak - test	0	0	1	13	\N	\N	\N	\N	f	\N	\N	\N	\N
427	BRAK	0	0	1	10	\N	\N	\N	\N	t	\N	\N	\N	\N
75	telefon: 323964200  fax: 323964243 uwagi: Katedra i Oddział Kliniczny Chirurgii Naczyń i Chirurgii Ogólnej.\\r\\nW tym 3 łóżka IOM	40	0	48	28	\N	\N	\N	\N	t	\N	\N	\N	\N
24	telefon: 34 323 29 67  (centrala)  fax: 34 323 02 88 uwagi: Oddział Chorob Wewnętrznych z Ośrodkiem Intensywnej Opieki Kardiologicznej,\\r\\nw tym 5 łóżek intensywnego nadzoru kardiologicznego\\r\\nAdres oddziału: Al. Pokoju 44,  42-200 Częstochowa	65	0	1	20	\N	\N	\N	\N	t	\N	\N	\N	\N
27	telefon:   fax:  uwagi: Oddział noworodkowy 19 łóżek, w tym 15 łóżek dla noworodków, 4 inkubatory	19	0	75	21	\N	\N	\N	\N	t	\N	\N	\N	\N
28	telefon:   fax:  uwagi: W tym 2 łóżka IOM.	37	0	1	21	\N	\N	\N	\N	t	\N	\N	\N	\N
29	telefon: 32 3257546  fax:  uwagi: W tym 5 łóżek IOM.\\r\\nOddział leczenia udarów	30	0	22	21	\N	\N	\N	\N	t	\N	\N	\N	\N
31	telefon:   fax:  uwagi: 	20	0	8	21	\N	\N	\N	\N	t	\N	\N	\N	\N
841	telefon:   fax:  uwagi: 2 IOM -kod 4000, 5 IOM - kod 4220	7	0	191	21	\N	\N	\N	\N	t	\N	\N	\N	\N
32	telefon: 324537135, dyżurka pielęgniarek 32 4537137  fax: 324554513 uwagi: Oddział otwarty 19 łóżek \\r\\nOddział zakaźny - 19 łóżek	38	0	31	22	\N	\N	\N	\N	t	\N	\N	\N	\N
33	telefon: 324537129 (pulmon.) ;  324537131 (dyżurka pielęgniarek); Oddział Pulmunologii i Rehabilitacji Oddechowej: gabinet lekarski 32 4537115, dyżurka pielęgniarek 32 4537121  fax: 324554513 uwagi: Oddział II Pulmonologiczny - 40\\r\\nOddział III Pulmonologii i Rehabilitacji Oddechowej - 26	66	0	133	22	\N	\N	\N	\N	t	\N	\N	\N	\N
34	telefon: 323029845  fax: 323314276 uwagi: w tym 4 łóżka intensywnego nadzoru kardiologicznego	30	0	1	23	\N	\N	\N	\N	t	\N	\N	\N	\N
35	telefon: 323029855  fax: 323314246 uwagi: w tym 1 łóżko IOM	22	0	22	23	\N	\N	\N	\N	t	\N	\N	\N	\N
36	telefon: 323029853  fax: 323314276 uwagi: w tym 5 łóżek IOM	19	0	24	23	\N	\N	\N	\N	t	\N	\N	\N	\N
707	telefon:   fax:  uwagi: 1 łóżko kod 4220, 5 łóżek kod 4222\\r\\n	6	0	191	23	\N	\N	\N	\N	t	\N	\N	\N	\N
37	telefon: Oddz. Wew. I: 324291933, Oddz. Wew. II:324291033  fax: Oddz. Wew. I i II: 324228272 uwagi: Oddział Chorób Wewnętrznych I - 45, w tym 4 łóżka IOM\\r\\nOddział Chorób Wewnętrznych II - 45, w tym 4 łóżka IOM	90	0	1	24	\N	\N	\N	\N	t	\N	\N	\N	\N
39	telefon: 324291095, 324291094  fax: 324228272 uwagi: Dializy - TAK	11	0	100	24	\N	\N	\N	\N	t	\N	\N	\N	\N
40	telefon: 324291635  fax: 324228272 uwagi: W tym 2 łóżka IOM	28	0	40	24	\N	\N	\N	\N	t	\N	\N	\N	\N
41	telefon: 324291444  fax: 324228272 uwagi: 15 inkubatorów.	23	0	75	24	\N	\N	\N	\N	t	\N	\N	\N	\N
42	telefon: 324291533  fax: 324228272 uwagi: W tym 2 łóżka IOM	38	0	42	24	\N	\N	\N	\N	t	\N	\N	\N	\N
43	telefon: 324291477  fax: 324228272 uwagi: Oddział Chirurgii Ogólnej i Naczyniowej	60	0	45	24	\N	\N	\N	\N	t	\N	\N	\N	\N
44	telefon: 324291844  fax: 324228272 uwagi: 	15	0	46	24	\N	\N	\N	\N	t	\N	\N	\N	\N
45	telefon: 324291333  fax: 324228272 uwagi: 	42	0	106	24	\N	\N	\N	\N	t	\N	\N	\N	\N
46	telefon: 324291177  fax: 324228272 uwagi: 	16	0	59	24	\N	\N	\N	\N	t	\N	\N	\N	\N
49	telefon: 324291544  fax: 324228272 uwagi: 	18	0	64	24	\N	\N	\N	\N	t	\N	\N	\N	\N
50	telefon: 324291133, komórka udarowa 530 628 873  fax: 324228272 uwagi: Oddział neurologiczny z pododdziałem udarowym\\r\\nw tym 4 łóżka IOM	34	0	22	24	\N	\N	\N	\N	t	\N	\N	\N	\N
51	telefon: 324291144  fax: 324228272 uwagi: 4 łóżka intensywnego nadzoru	24	0	10	24	\N	\N	\N	\N	t	\N	\N	\N	\N
52	telefon: 324291562  fax: 324228272 uwagi: Oddział Endokrynologii i Diabetologii	15	0	5	24	\N	\N	\N	\N	t	\N	\N	\N	\N
635	telefon: 32 4292650, 32 4292653, 32 4292650  fax: 324228272 uwagi: 	1	0	72	24	\N	\N	\N	\N	t	\N	\N	\N	\N
738	telefon:   fax:  uwagi: 4000- 8 łóżek (po 4 na oddziałach I i II)\\r\\n4240- 2 \\r\\n4401- 2\\r\\n4450- 2\\r\\n4610- 2\\r\\n4220- 4\\r\\n4222- 4\\r\\n	24	0	191	24	\N	\N	\N	\N	t	\N	\N	\N	\N
740	telefon: 324292650, 32 4292653, 32 4292650  fax: 324228272 uwagi: 	8	0	192	24	\N	\N	\N	\N	t	\N	\N	\N	\N
861	telefon: 324291755  fax: 324228272 uwagi: Oddział onkologiczny z pododdziałem hematologicznym.\\r\\nW tym 1 łóżka IOM	30	0	110	24	\N	\N	\N	\N	t	\N	\N	\N	\N
1053	telefon: Komórka udarowa 530 628 873  fax:  uwagi: 	16	0	24	24	\N	\N	\N	\N	t	\N	\N	\N	\N
53	telefon: Psych. ogólny I: (34) 353-28-82; Psych. ogólny II: (34) 353-29-02; Psych. ogólny III (34) 353-29-05  fax: 34 3532802 uwagi: Oddział Psychiatryczny Ogólny I z Pododdziałem Terapii Zaburzeń Afektywnych - 65 \\r\\nOddział Psychiatryczny Ogólny II z Pododdziałem Terapii Zaburzeń Lękowych i Psychosomatycznych - 65 \\r\\nOddział Psychiatryczny Ogólny III z Pododdziałem Terapii Pierwszych Epizodów Psychotycznych - 65 \\r\\n	195	0	66	25	\N	\N	\N	\N	t	\N	\N	\N	\N
54	telefon: 34 353-29-46  fax: 34 3532802 uwagi: 	40	0	182	25	\N	\N	\N	\N	t	\N	\N	\N	\N
55	telefon: 34 3532931  fax: 34 3532802 uwagi: Oddział psychiatryczny rehabilitacyjny. 	30	0	68	25	\N	\N	\N	\N	t	\N	\N	\N	\N
56	telefon: 34 3532879  fax: 34 3532802 uwagi: Oddział terapii uzależnienia od alkoholu z pododdziałem dla kobiet.	60	0	95	25	\N	\N	\N	\N	t	\N	\N	\N	\N
57	telefon: 34 353-28-20  fax:  uwagi: 	60	0	92	25	\N	\N	\N	\N	t	\N	\N	\N	\N
58	telefon: 34 3532981  fax: 34 3532802 uwagi: Oddział psychiatrii sądowej o podstawowym stopniu zabezpieczenia.	75	0	152	25	\N	\N	\N	\N	t	\N	\N	\N	\N
59	telefon: 34 3532914 / 34 3532916 / 34 3532981  fax: 34 3532802 uwagi: Zakład Opiekuńczo - Leczniczy Psychiatryczny	152	0	109	25	\N	\N	\N	\N	t	\N	\N	\N	\N
61	telefon: 32 3849756 wew. 144  fax: 32 3849921 uwagi: łóżka IOM 2	40	0	1	26	\N	\N	\N	\N	t	\N	\N	\N	\N
825	telefon:   fax:  uwagi: 2 IOM - kod 4000	2	0	191	26	\N	\N	\N	\N	t	\N	\N	\N	\N
62	telefon: Oddz. VI: poz. I 32 4328255; poz. II 32 4328287; poz. III 32 4328258; Oddz. VIII: 32 4328127; Oddz. VIIIa: 32 4328132; Oddz. XVII: 32 4328287; Oddz. XVIIIa: 32 4328135; Oddz. XVIIId: 32 4328210  fax: 32 4226875 uwagi: Oddział VI - 96 (Oddział żeński)\\r\\nOddział VIII - 46 (Oddział męski)\\r\\nOddział VIII a - 46 (Oddział żeński)\\r\\nOddział XVII - 30 (Oddział bez podziału)\\r\\nOddział XVIII a - 67 (Oddział męski)\\r\\nOddział XVIII d - 45 (Oddział męski)\\r\\n	330	0	66	27	\N	\N	\N	\N	t	\N	\N	\N	\N
63	telefon: 32 4328282  fax: 32 4226875 uwagi: Oddział XIV - terapii uzależnienia od alkoholu	30	0	95	27	\N	\N	\N	\N	t	\N	\N	\N	\N
64	telefon: 32 4328279  fax: 32 4226875 uwagi: Oddział XVI - rehabilitacji psychiatrycznej	25	0	68	27	\N	\N	\N	\N	t	\N	\N	\N	\N
65	telefon: 32 4328108  fax: 32 4226875 uwagi: 	30	0	91	27	\N	\N	\N	\N	t	\N	\N	\N	\N
66	telefon: Oddz. III: 32 4328146; Oddz. VII: 32 4328292; Oddz. VIIa: 32 4328157; Oddz. X: 32 4328180; Oddz. XX: 32 4328243  fax: 32 4226875 uwagi: Oddział III - 37\\r\\nOddział VII - 46\\r\\nOddział VII a - 46\\r\\nOddział X - 39\\r\\nOddział XX - 50\\r\\n	218	0	152	27	\N	\N	\N	\N	t	\N	\N	\N	\N
67	telefon: 32 4328178  fax: 32 4226875 uwagi: Oddział IX - psychiatrii sądowej o wzmocnionym zabezpieczeniu	45	0	92	27	\N	\N	\N	\N	t	\N	\N	\N	\N
68	telefon: II: 32 4328151; IIa: 32 4328153; IV: 32 4328203; V: 32 4328206; Va: 32 4328253; XXI: 32 4328226  fax: 32 4226875 uwagi: Podział wewnętrzny na Zakłady opiekuńczo-lecznicze psychiatryczne: II, IIa, IV, V, Va, XXI.   	228	0	109	27	\N	\N	\N	\N	t	\N	\N	\N	\N
69	telefon: 32 4328193  fax: 32 4226875 uwagi: 	24	0	105	27	\N	\N	\N	\N	t	\N	\N	\N	\N
70	telefon: 32 4328182  fax: 32 4226875 uwagi: 	20	0	116	27	\N	\N	\N	\N	t	\N	\N	\N	\N
741	telefon:   fax:  uwagi: 	0	0	191	27	\N	\N	\N	\N	t	\N	\N	\N	\N
71	telefon: 323964170  fax: 322816535 uwagi: \\r\\n	35	0	10	28	\N	\N	\N	\N	t	\N	\N	\N	\N
72	telefon: 323964280  fax: brak uwagi: w tym 2 IOM	29	0	1	28	\N	\N	\N	\N	t	\N	\N	\N	\N
73	telefon: 323964390  fax: 323964399 uwagi: w tym 2 IOM	30	0	133	28	\N	\N	\N	\N	t	\N	\N	\N	\N
74	telefon: 323964250  fax: brak uwagi: w tym 2 IOM	22	0	15	28	\N	\N	\N	\N	t	\N	\N	\N	\N
76	telefon: 323964210  fax: 323964245 uwagi: w tym 3 łóżka IOM	45	0	45	28	\N	\N	\N	\N	t	\N	\N	\N	\N
77	telefon: 323964230  fax: 323964242 uwagi: w tym 2 IOM	40	0	106	28	\N	\N	\N	\N	t	\N	\N	\N	\N
78	telefon: 323964220  fax: 323964270 uwagi: Oddział Neurochirurgii i Neurotraumatologii\\r\\nw tym 4 IOM	50	0	55	28	\N	\N	\N	\N	t	\N	\N	\N	\N
79	telefon: 323964570  fax: brak uwagi: 	20	0	20	28	\N	\N	\N	\N	t	\N	\N	\N	\N
80	telefon: 323964350  fax: brak uwagi: w tym 2 IOM	20	0	59	28	\N	\N	\N	\N	t	\N	\N	\N	\N
81	telefon: 323964160  fax: brak uwagi: w tym 2 IOM	20	0	61	28	\N	\N	\N	\N	t	\N	\N	\N	\N
82	telefon: 323964140  fax: brak uwagi: w tym 2 łóżka IOM	29	0	22	28	\N	\N	\N	\N	t	\N	\N	\N	\N
83	telefon: 323964290  fax: brak uwagi: 	51	0	66	28	\N	\N	\N	\N	t	\N	\N	\N	\N
84	telefon: 323964440, 322810271 w. 443  fax: 323964446 uwagi: Dializy - TAK	7	0	100	28	\N	\N	\N	\N	t	\N	\N	\N	\N
85	telefon: 323964450  fax: brak uwagi: 	20	0	64	28	\N	\N	\N	\N	t	\N	\N	\N	\N
905	telefon: 032 3964170  fax: 032 2816535 uwagi: (4 stanowiska IT)	4	0	14	28	\N	\N	\N	\N	t	\N	\N	\N	\N
87	telefon: 323964140  fax: brak uwagi: w tym 4	26	0	24	28	\N	\N	\N	\N	t	\N	\N	\N	\N
723	telefon:   fax:  uwagi: 2 łóżka kod 4000, 2 łóżka kod 4272, 2 łózka kod 4130, 2 łóżka kod 4240, 3 łóżka kod 4530, 3 łóżka kod 4500, 2 łóżka kod 4580, 4 łóżka kod 4570, 2 łóżka kod 4600, 2 łóżka kod 4610, 2 łóżka kod 4220, 4 łóżka kod 4222	30	0	191	28	\N	\N	\N	\N	t	\N	\N	\N	\N
856	telefon: 323964580  fax: 323890914 uwagi: w tym 2 łóżka IOM	35	0	110	28	\N	\N	\N	\N	t	\N	\N	\N	\N
88	telefon: 323682343, 323682345, 323682347  fax:  uwagi: Dializy - TAK	11	0	100	29	\N	\N	\N	\N	t	\N	\N	\N	\N
89	telefon:   fax:  uwagi: Kliniczny Oddział Chirurgii Ortopedyczno-Urazowej, Onkologicznej i Rekonstrukcyjnej	42	0	106	29	\N	\N	\N	\N	t	\N	\N	\N	\N
90	telefon:   fax:  uwagi: w tym 3 łóżka IOM	25	0	48	29	\N	\N	\N	\N	t	\N	\N	\N	\N
91	telefon:   fax:  uwagi: Kliniczny Oddział Chirurgii Ogólnej i Urazów Wielonarządowych wraz z Zakładem Pielęgniarstwa Chirurgicznego	64	0	45	29	\N	\N	\N	\N	t	\N	\N	\N	\N
92	telefon:   fax:  uwagi: Oddział Chorób Wewnętrznych i Onkologii Klinicznej	41	0	1	29	\N	\N	\N	\N	t	\N	\N	\N	\N
93	telefon:   fax:  uwagi: 	18	0	63	29	\N	\N	\N	\N	t	\N	\N	\N	\N
94	telefon:   fax:  uwagi: 	28	0	15	29	\N	\N	\N	\N	t	\N	\N	\N	\N
95	telefon:   fax:  uwagi: W tym 2 łóżka IOM	15	0	22	29	\N	\N	\N	\N	t	\N	\N	\N	\N
96	telefon:   fax:  uwagi: 	50	0	55	29	\N	\N	\N	\N	t	\N	\N	\N	\N
97	telefon:   fax:  uwagi: Oddział Okulistyczny z pododdziałem Okulistyki Dziecięcej i Zespołem Zabiegowym	35	0	59	29	\N	\N	\N	\N	t	\N	\N	\N	\N
98	telefon:   fax:  uwagi: Kliniczny Oddział Urologii. W tym 2 łóżka IOM.	26	0	64	29	\N	\N	\N	\N	t	\N	\N	\N	\N
99	telefon:   fax:  uwagi: Oddział Otolaryngologii i Onkologii Laryngologicznej. 	13	0	61	29	\N	\N	\N	\N	t	\N	\N	\N	\N
100	telefon:   fax:  uwagi: w tym 4 IOM	30	0	10	29	\N	\N	\N	\N	t	\N	\N	\N	\N
101	telefon:   fax:  uwagi: Oddział Pulmunologii i Nowotworów Płuc i Mukowiscydozy	20	0	133	29	\N	\N	\N	\N	t	\N	\N	\N	\N
103	telefon:   fax:  uwagi: Oddział Gastroenterologii i Onkologii Przewodu Pokarmowego	30	0	6	29	\N	\N	\N	\N	t	\N	\N	\N	\N
104	telefon:   fax:  uwagi: 	21	0	88	29	\N	\N	\N	\N	t	\N	\N	\N	\N
105	telefon:   fax:  uwagi: W tym 4 łóżka IOM	16	0	24	29	\N	\N	\N	\N	t	\N	\N	\N	\N
106	telefon:   fax:  uwagi: 	14	0	14	29	\N	\N	\N	\N	t	\N	\N	\N	\N
107	telefon:   fax:  uwagi: 	4	0	108	29	\N	\N	\N	\N	t	\N	\N	\N	\N
626	telefon: 32 3682165, 323682166, 323682168; SOR (obszar obserwacji): 32 3682172  fax:  uwagi: Stanowiska IT	2	0	72	29	\N	\N	\N	\N	t	\N	\N	\N	\N
688	telefon:   fax:  uwagi: 4530- 3\\r\\n4220- 2\\r\\n4222- 4\\r\\n4560- 4\\r\\n4242- 2	16	0	191	29	\N	\N	\N	\N	t	\N	\N	\N	\N
690	telefon: 32 3682165, 323682166, 323682168; SOR (obszar obserwacji): 32 3682172  fax:  uwagi: 	4	0	192	29	\N	\N	\N	\N	t	\N	\N	\N	\N
925	telefon:   fax:  uwagi: Pododdział Neurochirurgii Dziecięcej	4	0	56	29	\N	\N	\N	\N	t	\N	\N	\N	\N
108	telefon:   fax:  uwagi: w tym 2 IOM, 4 łóżka intensywnego nadzoru kardiologicznego	52	0	1	30	\N	\N	\N	\N	t	\N	\N	\N	\N
109	telefon:   fax:  uwagi: w tym 2 IOM	30	0	42	30	\N	\N	\N	\N	t	\N	\N	\N	\N
110	telefon:   fax:  uwagi: w tym 2 IOM	40	0	45	30	\N	\N	\N	\N	t	\N	\N	\N	\N
111	telefon:   fax:  uwagi: w tym 12 łóżek noworodków, 5 inkubatorów	17	0	75	30	\N	\N	\N	\N	t	\N	\N	\N	\N
834	telefon:   fax:  uwagi: 6 IOM - kod 4000	6	0	191	48	\N	\N	\N	\N	t	\N	\N	\N	\N
703	telefon:   fax:  uwagi: 2 łóżka IOM - kod 4000, 2 łóżka IOM - kod 4450, 2 łóżka IOM - kod 4500	6	0	191	30	\N	\N	\N	\N	t	\N	\N	\N	\N
112	telefon: 327861492, 327861500, 327861503, 327861508  fax: brak uwagi: Katedra i Oddział Kliniczny Pediatrii.\\r\\nW tym 1 łóżko IOM.	55	0	40	31	\N	\N	\N	\N	t	\N	\N	\N	\N
113	telefon: 327861528, 327861532  fax: brak uwagi: Oddział Kliniczny Chirurgii Ogólnej  i Chirurgii Endokrynologicznej.\\r\\nW tym 1 łóżko IOM.	50	0	45	31	\N	\N	\N	\N	t	\N	\N	\N	\N
114	telefon: 327861628, 327861634, 327861637  fax: brak uwagi: Katedra i Oddział Kliniczny Chorób Wewnętrznych, Angiologii i Medycyny Fizykalnej.\\r\\n	70	0	1	31	\N	\N	\N	\N	t	\N	\N	\N	\N
115	telefon: Katedra i Oddz. Kliniczny G,P i GO: 327861562, 327861546, 327861551, 327861560 oraz Oddział P i G 327861483  fax: brak uwagi: Katedra i Oddział Kliniczny Ginekologii, Położnictwa i Ginekologii Onkologicznej - 95\\r\\nOddział Położnictwa i Ginekologii - 40\\r\\nW tym 3 łóżka IOM.	135	0	42	31	\N	\N	\N	\N	t	\N	\N	\N	\N
116	telefon: Blok  5: 327861559, Blok 3: 327861487  fax:  uwagi: Oddział Noworodków Blok nr 5  - 48\\r\\nOddział Noworodków Blok nr 3 - 15, w tym 12 łóżek dla noworodków	66	0	75	31	\N	\N	\N	\N	t	\N	\N	\N	\N
117	telefon: 327861605  fax: brak uwagi: Oddział Dermatologii  i Wenerologii	12	0	20	31	\N	\N	\N	\N	t	\N	\N	\N	\N
118	telefon: 327861606  fax: brak uwagi: w tym 1 łóżko IOM	15	0	62	31	\N	\N	\N	\N	t	\N	\N	\N	\N
119	telefon: 327861610  fax: brak uwagi: w tym 1 łóżko IOM	12	0	46	31	\N	\N	\N	\N	t	\N	\N	\N	\N
795	telefon:   fax:  uwagi: 1 łóżko kod 4401, 1 łóżko kod 4500, 3 łóżka kod 4450 (2 łóżka Katedra i Oddz. Kliniczny Ginekologii, Położnictwa i Ginekologii Onkolog. oraz 1 łózko Oddz. Położnictwa i Ginekologii), 1 łóżko kod 4611, 1 łóżko kod 4501.	7	0	191	31	\N	\N	\N	\N	t	\N	\N	\N	\N
121	telefon: 33 8102272 (wew. i hemat.) 33 8102585 (wew. i diabet.)  fax: 33 8102101 uwagi: 	44	0	1	32	\N	\N	\N	\N	t	\N	\N	\N	\N
122	telefon: 33 8102195  fax: 33 8102101 uwagi: Oddział Kardiologiczny ze Stanowiskami Intensywnego Nadzoru Kardiologicznego (w tym 6 stanowisk intensywnego nadzoru kardiologicznego).	28	0	10	32	\N	\N	\N	\N	t	\N	\N	\N	\N
123	telefon: 33 8102475  fax: 33 8102101 uwagi: Oddział Laryngologii i Onkologii Laryngologicznej  z Pracownią Audiologiczną i Pracownią Endoskopii	20	0	61	32	\N	\N	\N	\N	t	\N	\N	\N	\N
124	telefon: 33 8102577  fax: 33 8102101 uwagi: W tym 16 łóżek udarowych. 4 łóżka IOM.	37	0	22	32	\N	\N	\N	\N	t	\N	\N	\N	\N
126	telefon: 33 8102263  fax: 33 8102101 uwagi: Oddział Chirurgii Ogólnej i Naczyniowej. W tym 4 łóżka IOM.	46	0	48	32	\N	\N	\N	\N	t	\N	\N	\N	\N
127	telefon: 338102595, 338102597, 3381025998, 338102593  fax: 338102101 uwagi: 13 stanowisk IT	13	0	100	32	\N	\N	\N	\N	t	\N	\N	\N	\N
128	telefon: 33 8102564  fax: 33 8102101 uwagi: 	17	0	15	32	\N	\N	\N	\N	t	\N	\N	\N	\N
129	telefon: 33 8102525  fax: 33 8102101 uwagi: 	70	0	42	32	\N	\N	\N	\N	t	\N	\N	\N	\N
130	telefon: 33 8102512  fax: 33 8102101 uwagi: Oddział Noworodkowy\\r\\n19 łóżeczek.	19	0	85	32	\N	\N	\N	\N	t	\N	\N	\N	\N
131	telefon: 33 8102355  fax: 33 8102101 uwagi: Oddział Urologii i Onkologii Urologicznej. 	32	0	64	32	\N	\N	\N	\N	t	\N	\N	\N	\N
132	telefon: 33 8102366  fax: 33 8102101 uwagi: 	26	0	55	32	\N	\N	\N	\N	t	\N	\N	\N	\N
133	telefon: 33 8102485  fax: 33 8102101 uwagi: Dodatkowo 6 miejsc pobytu dzoiennego.	18	0	59	32	\N	\N	\N	\N	t	\N	\N	\N	\N
134	telefon: 33 8102460  fax: 33 8102101 uwagi: 	67	0	106	32	\N	\N	\N	\N	t	\N	\N	\N	\N
1008	telefon:   fax:  uwagi: W tym 2 stanowiska IT. Dodatkowo 3 miejsca pobytu dziennego.	20	0	9	32	\N	\N	\N	\N	t	\N	\N	\N	\N
627	telefon: Izba przyjęć: 33 8102610, Pielęgniarka Oddziałowa: 33 8102601, tel. kom. 338 102 800  fax: 33 8102101 uwagi: Stanowisko IT	4	0	72	32	\N	\N	\N	\N	t	\N	\N	\N	\N
725	telefon:   fax:  uwagi: 4000- 4\\r\\n4050- 2\\r\\n4610- 2\\r\\n4220- 2\\r\\n4530- 4\\r\\n4130- 2\\r\\n4450- 2\\r\\n4640- 2\\r\\n4570- 2\\r\\n4421- 4\\r\\n4580- 2\\r\\n4902- 4\\r\\n4222- 4	14	0	191	32	\N	\N	\N	\N	t	\N	\N	\N	\N
727	telefon: 33 8102610  fax: 33 8102101 uwagi: 	8	0	192	32	\N	\N	\N	\N	t	\N	\N	\N	\N
877	telefon: 338102183  fax: 338102101 uwagi: Oddział Gastroenterologiczny i Chorób Wewnętrznych z pracownią endoskopii\\r\\nW tym 2 łóżka IOM.	35	0	6	32	\N	\N	\N	\N	t	\N	\N	\N	\N
1051	telefon:   fax:  uwagi: W tym 8 stanowisk IT.\\r\\nOddział Patologii Noworodka.	20	0	75	32	\N	\N	\N	\N	t	\N	\N	\N	\N
135	telefon: 33 8122028 wew. 34  fax: 33 8123098 uwagi: 	30	0	133	33	\N	\N	\N	\N	t	\N	\N	\N	\N
138	telefon: 33 8122028 wew. 32  fax: 33 8123098 uwagi: 	30	0	1	33	\N	\N	\N	\N	t	\N	\N	\N	\N
139	telefon: 33 8122028 wew. 35  fax: 33 8123098 uwagi: w tym 4 łóżka intensywnego nadzoru kardilogicznego	30	0	10	33	\N	\N	\N	\N	t	\N	\N	\N	\N
801	telefon:   fax:  uwagi: 5 IOM - kod 4220	5	0	191	33	\N	\N	\N	\N	t	\N	\N	\N	\N
140	telefon: 32 2591200  fax: 32 2554633 uwagi: Odcinek nr 1 Chorób Wewnętrznych - ul. Reymonta 8, 40-029 Katowice - 12 łóżek szpitalnych\\r\\nOdcinek nr 4 Chorób Wewnętrznych - ul. Francuska 20-24, 40-027 Katowice - 7 łóżek szpitalnych\\r\\n\\r\\n	19	0	1	34	\N	\N	\N	\N	t	\N	\N	\N	\N
141	telefon: 32 2591200  fax: 32 2554633 uwagi: Odcinek Hematologii - ul. Dąbrowskiego 25, 40-032 Katowice. 	41	0	9	34	\N	\N	\N	\N	t	\N	\N	\N	\N
142	telefon: 32 2591200  fax: 32 2554633 uwagi: Odcinek nr 3 Nefrologii - ul. Francuska 20-24, 40-027 Katowice.	32	0	15	34	\N	\N	\N	\N	t	\N	\N	\N	\N
143	telefon: 32 2591200  fax: 32 2554633 uwagi: W tym 2 łóżka IOM.\\r\\nOdcinek nr 1 Otorynolaryngologii - ul. Francuska 20-24, 40-027 Katowice.\\r\\n	26	0	61	34	\N	\N	\N	\N	t	\N	\N	\N	\N
144	telefon: 32 2591200  fax: 32 2554633 uwagi: Odcinek Dermatologii i Wenerologii - ul. Francuska 20-24, 40-027 Katowice.	64	0	20	34	\N	\N	\N	\N	t	\N	\N	\N	\N
145	telefon: 32 2591200  fax: 32 2554633 uwagi: W tym 2 łóżka IOM.\\r\\nOdcinek Chirurgii Szczękowo-Twarzowej - ul. Francuska 20-24, 40-027 Katowice.\\r\\n	26	0	63	34	\N	\N	\N	\N	t	\N	\N	\N	\N
146	telefon: 32 2591200  fax: 32 2554633 uwagi: W tym 2 łóżka IOM.\\r\\nOdcinek nr 1 Transplantacji - ul. Francuska 20-24, 40-027 Katowice.\\r\\n	2	0	164	34	\N	\N	\N	\N	t	\N	\N	\N	\N
147	telefon: 322591539, 322591537, 322591535, 322591200,  fax: 322554633 uwagi: Dializy - TAK.\\r\\nOdcinek Anestezjologii i Intensywnej Terapii - ul. Francuska 20-24, 40-027 Katowice.	7	0	100	34	\N	\N	\N	\N	t	\N	\N	\N	\N
665	telefon:   fax:  uwagi: 4630- 2\\r\\n4650- 2\\r\\n4240- 2\\r\\n4658- 10\\r\\n	16	0	191	34	\N	\N	\N	\N	t	\N	\N	\N	\N
919	telefon: 32 259 12 00  fax:  uwagi: W tym 10 łóżek IOM.\\r\\nOdcinek nr 2 Transplantacji Szpiku - ul. Dąbrowskiego 25, 40-032 Katowice.	54	0	197	34	\N	\N	\N	\N	t	\N	\N	\N	\N
916	telefon: 32 259 12 00  fax:  uwagi: W tym 2 łóżka IOM.\\r\\nOdcinek nr 3 Chirurgii Transplantacyjnej - ul. Francuska 20-24, 40-027 Katowice.	16	0	196	34	\N	\N	\N	\N	t	\N	\N	\N	\N
917	telefon: 32 259 12 00  fax:  uwagi: Odcinek nr 1 Chirurgii Ogólnej - ul. Francuska 20-24, 40-027 Katowice.	12	0	45	34	\N	\N	\N	\N	t	\N	\N	\N	\N
918	telefon: 32 259 12 00  fax:  uwagi: Odcinek nr 2 Chirurgii Naczyniowej - ul. Francuska 20-24, 40-027 Katowice.	13	0	48	34	\N	\N	\N	\N	t	\N	\N	\N	\N
920	telefon: 32 259 12 00  fax:  uwagi: Odcinek nr 2 Endokrynologii - ul. Reymonta 8, 40-029 Katowice	8	0	5	34	\N	\N	\N	\N	t	\N	\N	\N	\N
921	telefon: 32 259 12 00  fax:  uwagi: W tym 2 łóżka IOM.\\r\\nOdcinek nr 3 Onkologii Klinicznej - ul. Reymonta 8, 40-029 Katowice.	47	0	110	34	\N	\N	\N	\N	t	\N	\N	\N	\N
148	telefon: 327357410, 327357420  fax: brak uwagi: LECZENIE OPARZEŃ \\r\\nw tym 5 łóżek IOM	42	0	45	35	\N	\N	\N	\N	t	\N	\N	\N	\N
149	telefon: 327357440, 327357460, 322292000  fax: brak uwagi: 	4	0	100	35	\N	\N	\N	\N	t	\N	\N	\N	\N
774	telefon:   fax:  uwagi: 5 łóżek kod 4500.	5	0	191	35	\N	\N	\N	\N	t	\N	\N	\N	\N
150	telefon: 32 3732372  fax: 32 2711010 uwagi: Kliniczny Oddział Kardiologii	33	0	10	36	\N	\N	\N	\N	t	\N	\N	\N	\N
151	telefon: 32 3732381  fax: 32 2716335 uwagi: Kliniczny Oddział Chirurgii Ogólnej, Bariatrycznej i Medycyny Ratunkowej. W tym 4 łóżka IOM.	37	0	45	36	\N	\N	\N	\N	t	\N	\N	\N	\N
152	telefon: 32 3732395  fax: 32 2717420 uwagi: Kliniczny Oddział Otolaryngologii i Onkologii Laryngologicznej. \\r\\nW tym 2 łóżka IOM.	45	0	61	36	\N	\N	\N	\N	t	\N	\N	\N	\N
153	telefon: 32 3732323  fax: 32 2713165 uwagi: Kliniczny Oddział Chorób Wewnętrznych, Dermatologii i Alergologii. W tym 2 łóżka IOM.	21	0	20	36	\N	\N	\N	\N	t	\N	\N	\N	\N
154	telefon: 32 3732372  fax: 32 2711010 uwagi: 	8	0	14	36	\N	\N	\N	\N	t	\N	\N	\N	\N
717	telefon:   fax:  uwagi: 4 łóżka IOM -  oddział 4500, 2 łóżka IOM - oddział 4610, 2 łóżka IOM - oddział 4200	8	0	191	36	\N	\N	\N	\N	t	\N	\N	\N	\N
155	telefon: Oddz. zamknięty: 33 8123041 wew. 138; Oddz. otwarty: 139  fax: 33 8113923 uwagi: Oddział Psychiatryczny z Pododdziałem Rehabilitacji Psychiatrycznej. Podział na oddział zamknięty i otwarty. 	69	0	66	37	\N	\N	\N	\N	t	\N	\N	\N	\N
734	telefon:   fax:  uwagi: 	1	0	191	37	\N	\N	\N	\N	t	\N	\N	\N	\N
160	telefon: 32 3963262  fax:  uwagi: Oddział Kardiologii ze stanowiskami intensywnego nadzoru. W tym 4 stanowiska intensywnego nadzoru kardiologicznego.	28	0	10	38	\N	\N	\N	\N	t	\N	\N	\N	\N
161	telefon: 32 3963273  fax: 32 3963251 uwagi: W tym 3 łóżka IOM.	38	0	1	38	\N	\N	\N	\N	t	\N	\N	\N	\N
162	telefon: 32 3963203  fax:  uwagi: Oddział Chirurgii Ogólnej i Gastroenterologii.\\r\\nw tym 2 IOM	47	0	45	38	\N	\N	\N	\N	t	\N	\N	\N	\N
163	telefon: 32 3963255  fax:  uwagi: 	21	0	59	38	\N	\N	\N	\N	t	\N	\N	\N	\N
165	telefon: 32 2819244 centrala  fax:  uwagi: Oddział Obserwacyjno Zakaźny i Hepatologii Zakaźnej - Aleja Legionów 49, Bytom. \\r\\nw tym 2 łóżka IOM.	60	0	111	38	\N	\N	\N	\N	t	\N	\N	\N	\N
721	telefon:   fax:  uwagi: 3 łóżka kod 4220, 2 łóżka kod 4500, 2 łóżka kod 4348, 4 łóżka kod 4070, 4 łózka kod 4222, 3 łóżka kod 4000	18	0	191	38	\N	\N	\N	\N	t	\N	\N	\N	\N
166	telefon: 326219517  fax: brak uwagi: 	45	0	1	39	\N	\N	\N	\N	t	\N	\N	\N	\N
167	telefon: 326219514  fax: brak uwagi: Oddział Chirurgii Ogólnej i Krótkoterminowej	32	0	45	39	\N	\N	\N	\N	t	\N	\N	\N	\N
168	telefon: 326216515  fax: brak uwagi: w tym 2 łóżka IOM	12	0	22	39	\N	\N	\N	\N	t	\N	\N	\N	\N
169	telefon: 326216515  fax: brak uwagi: w tym 4 łóżka IOM	16	0	24	39	\N	\N	\N	\N	t	\N	\N	\N	\N
170	telefon: 326219519  fax: brak uwagi: Oddział Psychiatryczny z Pododdziałem Detoksykacji Alkoholowych Zespołów Abstynencyjnych	34	0	66	39	\N	\N	\N	\N	t	\N	\N	\N	\N
171	telefon: 326219526  fax: brak uwagi: w tym 2 łóżka IOM	35	0	42	39	\N	\N	\N	\N	t	\N	\N	\N	\N
172	telefon: Neonatologii: 326219526, Patologii Noworodka: 326219528  fax: brak uwagi: Oddz. Neonatologii 15 łóżek \\r\\nOddz. Patologii Noworodka 10 łóżek (w tym 2 łóżka IOM)	25	0	75	39	\N	\N	\N	\N	t	\N	\N	\N	\N
173	telefon: 326219528  fax: brak uwagi: 	29	0	40	39	\N	\N	\N	\N	t	\N	\N	\N	\N
174	telefon: 326219521  fax: brak uwagi: 	9	0	61	39	\N	\N	\N	\N	t	\N	\N	\N	\N
782	telefon:   fax:  uwagi: 2 łóżka kod 4220, 4 łóżka kod 4222, 2 łóżka kod 4450, 2 łóżka kod 4421.	10	0	191	39	\N	\N	\N	\N	t	\N	\N	\N	\N
175	telefon: 32 6164482 wew. 260  fax: 32 7519844 uwagi: Oddział Chirurgii Ogólnej i Endokrynologicznej. W tym 5 łóżek IOM.	45	0	45	41	\N	\N	\N	\N	t	\N	\N	\N	\N
176	telefon: 32 6164482 wew. 254  fax: 32 7519844 uwagi: W tym 3 łóżka IOM.	41	0	106	41	\N	\N	\N	\N	t	\N	\N	\N	\N
177	telefon: 32 6164482 wew. 254  fax: 32 7519844 uwagi: W tym 2 łóżka IOM.	26	0	46	41	\N	\N	\N	\N	t	\N	\N	\N	\N
178	telefon: 32 6164482 wew. 252  fax: 32 7519844 uwagi: W tym 2 łóżka IOM.	40	0	42	41	\N	\N	\N	\N	t	\N	\N	\N	\N
179	telefon: 32 6164482 wew. 149  fax: 32 7519844 uwagi: 22 w tym 7 inkubatorów	22	0	75	41	\N	\N	\N	\N	t	\N	\N	\N	\N
180	telefon: 32 6164482 wew. 143  fax: 32 7519844 uwagi: Oddział Chorób Wewnętrznych z Pododdziałem Gastroenterologicznym. W tym 4 łóżka IOM.	62	0	1	41	\N	\N	\N	\N	t	\N	\N	\N	\N
181	telefon: 32 6164482 wew. 268  fax: 32 7519844 uwagi: 	32	0	10	41	\N	\N	\N	\N	t	\N	\N	\N	\N
182	telefon: 32 6164482 wew. 128  fax: 32 7519844 uwagi: W tym 2 łóżka IOM.	30	0	40	41	\N	\N	\N	\N	t	\N	\N	\N	\N
183	telefon: 32 6164482 wew. 134  fax: 32 7519844 uwagi: W tym 2 łóżka IOM.	16	0	22	41	\N	\N	\N	\N	t	\N	\N	\N	\N
184	telefon: 326164482 wew. 123, 323174523  fax: 327519844 uwagi: 	9	0	100	41	\N	\N	\N	\N	t	\N	\N	\N	\N
185	telefon: 32 6164482 wew. 178  fax: 32 7519844 uwagi: W tym 2 łóżka IOM.	20	0	64	41	\N	\N	\N	\N	t	\N	\N	\N	\N
186	telefon: 32 6164482 wew. 134  fax: 32 7519844 uwagi: W tym 4 łóżka IOM.	16	0	24	41	\N	\N	\N	\N	t	\N	\N	\N	\N
633	telefon: 32 6164482 wew. 271; 32 3174589, 32 3174588  fax: 32 7519844 uwagi: Stanowiska IT	2	0	72	41	\N	\N	\N	\N	t	\N	\N	\N	\N
763	telefon:   fax:  uwagi: 4500- 5\\r\\n4580- 3\\r\\n5401- 2\\r\\n4450- 2\\r\\n4000- 4\\r\\n4401- 2\\r\\n4220- 2\\r\\n4902- 2\\r\\n4640- 2\\r\\n4222- 4	28	0	191	41	\N	\N	\N	\N	t	\N	\N	\N	\N
765	telefon: 32 6164482 wew. 271  fax: 32 7519844 uwagi: W tym 2 łóżka IOM	6	0	192	41	\N	\N	\N	\N	t	\N	\N	\N	\N
187	telefon: 32 6740206  fax: 32 6721532 uwagi: Oddział Chorób Wewnętrznych z Pododdziałem Kardiologicznym (w tym 4 łóżka IOM).	64	0	1	42	\N	\N	\N	\N	t	\N	\N	\N	\N
188	telefon: 32 6740244  fax: 32 6721532 uwagi: W tym 4 łóżka IOM.	28	0	45	42	\N	\N	\N	\N	t	\N	\N	\N	\N
189	telefon: 32 6740278  fax: 32 6721532 uwagi:  W tym 2 łóżka IOM.	18	0	40	42	\N	\N	\N	\N	t	\N	\N	\N	\N
190	telefon: 32 6740280  fax: 32 6721532 uwagi: Oddział Położniczo-Ginekologiczny z Blokiem Porodowym. W tym 2 łóżka IOM. 	30	0	42	42	\N	\N	\N	\N	t	\N	\N	\N	\N
191	telefon: 32 6740291  fax: 32 6721532 uwagi: w tym Pododdział Skórno-Wenerologiczny	22	0	111	42	\N	\N	\N	\N	t	\N	\N	\N	\N
192	telefon: 32 6740204  fax: 32 6721532 uwagi: Oddział Neurologiczny z Pododdziałem Udarowym. W tym 8 łóżek IOM.	44	0	22	42	\N	\N	\N	\N	t	\N	\N	\N	\N
194	telefon: 32 6740307  fax: 32 6721532 uwagi: 	17	0	59	42	\N	\N	\N	\N	t	\N	\N	\N	\N
195	telefon: 32 6740273  fax: 32 6721532 uwagi: W tym 2 łóżka IOM.	28	0	106	42	\N	\N	\N	\N	t	\N	\N	\N	\N
196	telefon: 32 6740257  fax: 32 6721532 uwagi: Oddział Noworodków z Pododdziałem Patologii Noworodka .\\r\\n	12	0	75	42	\N	\N	\N	\N	t	\N	\N	\N	\N
197	telefon: 326740209  fax: 326721532 uwagi: w tym 7 łóżek IOM.	7	0	100	42	\N	\N	\N	\N	t	\N	\N	\N	\N
829	telefon: 32 6740204  fax: 32 6721532 uwagi: 	24	0	24	42	\N	\N	\N	\N	t	\N	\N	\N	\N
199	telefon:   fax: 32 6721532 uwagi: Brak kontraktu	24	0	88	42	\N	\N	\N	\N	t	\N	\N	\N	\N
827	telefon:   fax:  uwagi: 4 łóżka kod 4000, 2 lóżka kod 4500, 2 łóżka kod 4401, 2 łóżka kod 4450, 1 łóżko 4220, 2 łóżka kod 4580, 7 łóżek kod 4260, 4 łóżka 4222	24	0	191	42	\N	\N	\N	\N	t	\N	\N	\N	\N
1069	telefon:   fax:  uwagi: 	33	0	203	42	\N	\N	\N	\N	t	\N	\N	\N	\N
928	telefon: 32 674 02 22  fax: 32 672 24 57 uwagi: Szpitalny Oddział Ratunkowy:\\r\\n4 łóżka obserwacyjne,\\r\\n2 łózka IT	6	0	192	42	\N	\N	\N	\N	t	\N	\N	\N	\N
929	telefon: Rejestracja SOR (dyżurka pielęgniarska): 32 6740222, Gabinet lekarski: 32 6740419  fax: 32 672 24 57 uwagi: Szpitalny Oddział Ratunkowy:\\r\\n2 łóżka IT,\\r\\n4 łóżka obserwacyjne	6	0	72	42	\N	\N	\N	\N	t	\N	\N	\N	\N
200	telefon: 32 2382091/96  fax: 32 2382311 uwagi: Oddział Ginekologii, Położnictwa i Patologii Ciąży	63	0	42	45	\N	\N	\N	\N	t	\N	\N	\N	\N
201	telefon: 32 2382091/96  fax: 32 2382311 uwagi: Oddział Fizjologii, Patologii i Intensywnej Opieki Medycznej Noworodków. W tym 2 łóżka IOM.	41	0	75	45	\N	\N	\N	\N	t	\N	\N	\N	\N
202	telefon: 32 2382091/96  fax: 32 2382311 uwagi: 	13	0	59	45	\N	\N	\N	\N	t	\N	\N	\N	\N
203	telefon: 32 2382091/96  fax: 32 2382311 uwagi: 1 łóżko IOM.	20	0	61	45	\N	\N	\N	\N	t	\N	\N	\N	\N
705	telefon:   fax:  uwagi: 2 łóżka IOM kod 4421, 1 łóżko IOM - kod 4610	3	0	191	45	\N	\N	\N	\N	t	\N	\N	\N	\N
204	telefon: lek. 323576283, piel. 323576221  fax: 32 3576238 uwagi: Oddział Chorób Wewnętrznych z Pododdziałem Diagnostyki Kardiologicznej oraz Diabetologii\\r\\nw tym 2 IOM	40	0	1	46	\N	\N	\N	\N	t	\N	\N	\N	\N
205	telefon: lek.:323576258, 323576263, piel.:323576271, 323576267  fax: 32 3576238 uwagi: Oddział Ginekologiczno-Położniczy z Pododdziałem Ginekologii Onkologicznej, w tym 4 łóżka IOM.	38	0	42	46	\N	\N	\N	\N	t	\N	\N	\N	\N
206	telefon: lek. 323576265, piel. 323576264  fax: 32 3576238 uwagi: W tym 3 łóżka IOM, 26 łóżek dla noworodków, 6 inkubatorów. 	32	0	75	46	\N	\N	\N	\N	t	\N	\N	\N	\N
207	telefon: lek. 323576239, piel. 323576292  fax: 32 3576238 uwagi: W tym 2 łóżka IOM.	27	0	106	46	\N	\N	\N	\N	t	\N	\N	\N	\N
208	telefon: lek. 323576209, piel. 323576249  fax: 32 3576238 uwagi: W tym 2 łóżka IOM.	22	0	45	46	\N	\N	\N	\N	t	\N	\N	\N	\N
209	telefon: lek. 32 3576230, sala IT. 32 3576215, piel. 32 3576256  fax: 32 3576238 uwagi: 6 stanowisk IT.	6	0	100	46	\N	\N	\N	\N	t	\N	\N	\N	\N
210	telefon: lek. 323576239, piel. 323576292  fax: brak uwagi: Pododdział Ortopedii dla Dzieci, w tym 2 łóżka IOM.	3	0	108	46	\N	\N	\N	\N	t	\N	\N	\N	\N
803	telefon:   fax:  uwagi: 4000 (Oddział chorób wew. I) - 4 IOM	4	0	191	70	\N	\N	\N	\N	t	\N	\N	\N	\N
667	telefon:   fax:  uwagi: Oddział 4000 - 2 łóżka IOM,\\r\\nOddział 4450 - 4 łóżka IOM,\\r\\nOddział 4421 - 3 łóżek IOM,\\r\\nOddział 4580 - 2 łóżka IOM,\\r\\nOddział 4581 - 2 łóżka IOM,\\r\\nOddział 4500 - 2 łóżka IOM.	15	0	191	46	\N	\N	\N	\N	t	\N	\N	\N	\N
212	telefon: 32 2334112 wew. 283  fax: 32 2335244, 32 2334325 uwagi: Oddział internistyczny VIII - 28 łóżek, w tym 6 IOM	28	0	1	48	\N	\N	\N	\N	t	\N	\N	\N	\N
213	telefon: Oddz. przew. XI: 32 2334112 wew. 231; Oddz. przew. XIV: 32 2334112 wew. 235; Oddz. przew. XV: 32 2334112 wew. 236   fax: 32 2335244, 32 2334325 uwagi: Oddział Psychiatryczny przewlekły XI - 45\\r\\nOddział Psychiatryczny przewlekły XIV - 30\\r\\nOddział Psychiatryczny przewlekły XV - 32	107	0	125	48	\N	\N	\N	\N	t	\N	\N	\N	\N
214	telefon: Oddz. sąd. V: 32 2334112 wew. 225; Oddz. sąd. VI: 32 2334112 wew. 226; Oddz. sąd. dla nielet. o wzmoc. zab. XVII: 32 2334112 wew. 360   fax: 32 2335244, 32 2334325 uwagi: Oddział psychiatryczny sądowy VI  - 30\\r\\nOddział psychiatryczny sądowy V - 30\\r\\nOddział psychiatryczny sądowy dla nieletnich o wzmocnionym zabezpieczeniu XVII - 25	85	0	92	48	\N	\N	\N	\N	t	\N	\N	\N	\N
216	telefon: 32 2334112 wew. 232  fax: 32 2335244, 32 2334325 uwagi: Oddział Detoksykacji Alkoholowej XII	25	0	94	48	\N	\N	\N	\N	t	\N	\N	\N	\N
217	telefon: 32 2334112 wew. 233  fax: 32 2335244, 32 2334325 uwagi: Oddział Odwykowy Alkoholowy	26	0	95	48	\N	\N	\N	\N	t	\N	\N	\N	\N
219	telefon: Oddz. ogól. I: 32 2334112 wew. 221; Oddz. ogól. II: 32 2334112 wew. 222; Oddz. ogól. III: 32 2334112 wew. 223; Oddz. ogól. IV: 32 2334112 wew. 224; Oddz. ogól. IX: 32 2334112 wew. 229; Oddz. ogól. X: 32 2334112 wew. 230     fax: 32 2335244, 32 2334325 uwagi: Oddział psychiatryczny ogólny I - 40 (męski)\\r\\nOddział psychiatryczny ogólny II - 45 (męski)\\r\\nOddział psychiatryczny ogólny III - 45 (męski)\\r\\nOddział psychiatryczny ogólny IV - 45 (męski)\\r\\nOddział psychiatryczny ogólny IX - 45 (żeński)\\r\\nOddział psychiatryczny ogólny X - 45 (żeński)	265	0	66	48	\N	\N	\N	\N	t	\N	\N	\N	\N
220	telefon: 32 2334838  fax: 32 2335244, 32 2334325 uwagi: Oddział Rehabilitacji Psychiatrycznej XVI w Dąbrówce - Rezerwat Przyrody \\"Hubertus\\", 44-187 Wielowieś	40	0	68	48	\N	\N	\N	\N	t	\N	\N	\N	\N
221	telefon: 32 33 08 300  fax: 32 33 08 401 uwagi: w tym 4 IOM	38	0	1	49	\N	\N	\N	\N	t	\N	\N	\N	\N
224	telefon: 32 33 08 300  fax: 32 33 08 401 uwagi: 	6	0	59	49	\N	\N	\N	\N	t	\N	\N	\N	\N
226	telefon: 32 33 08 300  fax:  uwagi: w tym 7 stanwisk IT	7	0	100	49	\N	\N	\N	\N	t	\N	\N	\N	\N
699	telefon:   fax:  uwagi: 7 łóżkek kod 4260,	7	0	191	49	\N	\N	\N	\N	t	\N	\N	\N	\N
227	telefon: 326027000  fax: 326027102 uwagi: w tym 1 łóżko IOM	58	0	64	50	\N	\N	\N	\N	t	\N	\N	\N	\N
676	telefon:   fax:  uwagi: 2 łóżka kod 4640.	2	0	191	50	\N	\N	\N	\N	t	\N	\N	\N	\N
229	telefon:   fax:  uwagi: w tym 2 łóżka Intensywnego nadzoru kardiologicznego	35	0	1	51	\N	\N	\N	\N	t	\N	\N	\N	\N
230	telefon:   fax:  uwagi: 	18	0	45	51	\N	\N	\N	\N	t	\N	\N	\N	\N
231	telefon:   fax:  uwagi: 	18	0	106	51	\N	\N	\N	\N	t	\N	\N	\N	\N
678	telefon:   fax:  uwagi: 2 IOM - kod 4220	2	0	191	51	\N	\N	\N	\N	t	\N	\N	\N	\N
232	telefon: 33 4991840, 33 4991860, 33 4991880  fax: 33 4991814, 33 4991863, 33 4991879  uwagi: Oddział Pulmunologiczny z Pododdziałem chemioterapii - 36 łóżek\\r\\nOddział Pulmunologiczno-Alergologiczny - 28 łóżek\\r\\nOddział Pulmunologiczny - 29 łóżek	93	0	133	52	\N	\N	\N	\N	t	\N	\N	\N	\N
233	telefon: 33 4991870  fax:  uwagi: 	28	0	1	52	\N	\N	\N	\N	t	\N	\N	\N	\N
234	telefon: 33 4991890  fax: 33 4991891 uwagi: 	45	0	47	52	\N	\N	\N	\N	t	\N	\N	\N	\N
235	telefon: 334991899  fax: brak uwagi: 	5	0	100	52	\N	\N	\N	\N	t	\N	\N	\N	\N
799	telefon:   fax:  uwagi: 	1	0	191	52	\N	\N	\N	\N	t	\N	\N	\N	\N
858	telefon: 33 4991855  fax: 33 4991851 uwagi: 	35	0	31	52	\N	\N	\N	\N	t	\N	\N	\N	\N
236	telefon: O. Wew. 32 3255213 ; O. Wew. z kardiol. 32 3255316  fax:   uwagi: Oddział Chorób Wewnętrznych - 55\\r\\nOddział Chorób Wewnętrznych z Pododdziałem Kardiologicznym - 35, w tym 2 łóżka IOM.	90	0	1	53	\N	\N	\N	\N	t	\N	\N	\N	\N
237	telefon: 32 3255382  fax:  uwagi: 	20	0	20	53	\N	\N	\N	\N	t	\N	\N	\N	\N
238	telefon: 32 3255308  fax:  uwagi: 	20	0	8	53	\N	\N	\N	\N	t	\N	\N	\N	\N
239	telefon: 32 3255219  fax:  uwagi: w tym 1 IOM	40	0	22	53	\N	\N	\N	\N	t	\N	\N	\N	\N
240	telefon: 32 3255219  fax:  uwagi: W tym 4 łóżek IOM.	18	0	24	53	\N	\N	\N	\N	t	\N	\N	\N	\N
241	telefon: 32 3255306  fax:  uwagi: 	15	0	111	53	\N	\N	\N	\N	t	\N	\N	\N	\N
242	telefon: 323255216, 323255373, 323255367  fax:  uwagi: Dializy - TAK	10	0	100	53	\N	\N	\N	\N	t	\N	\N	\N	\N
243	telefon: 32 3255251  fax:  uwagi: 	18	0	61	53	\N	\N	\N	\N	t	\N	\N	\N	\N
244	telefon: 32 3255241  fax:  uwagi: Oddział chirurgii ogólnej i onkologicznej	45	0	45	53	\N	\N	\N	\N	t	\N	\N	\N	\N
245	telefon: 32 3255228  fax:  uwagi: 	20	0	59	53	\N	\N	\N	\N	t	\N	\N	\N	\N
246	telefon: 32 3255239  fax:  uwagi: Oddział ginekologiczno - położniczy z pooddziałem ginekologii onkologicznej	70	0	42	53	\N	\N	\N	\N	t	\N	\N	\N	\N
247	telefon: 32 3255230  fax:  uwagi: W tym 8 łóżek IOM.\\r\\n35 łóżek noworodków i 12 inkubatorów	47	0	75	53	\N	\N	\N	\N	t	\N	\N	\N	\N
743	telefon:   fax:  uwagi: 2 łóżka kod 4000, 1 łóżko kod 4220, 4 łóżka kod 4222, 8 łóżek kod 4421	15	0	191	53	\N	\N	\N	\N	t	\N	\N	\N	\N
857	telefon: 32 3255246  fax:  uwagi: Oddział Chirurgii Rekonstrukcyjnej Narządu Ruchu	38	0	106	53	\N	\N	\N	\N	t	\N	\N	\N	\N
248	telefon: 324784341  fax: 324784202 uwagi: W tym 1 izolatka. Dializy - TAK.\\r\\nW tym 13 stanowisk IT	13	0	100	54	\N	\N	\N	\N	t	\N	\N	\N	\N
249	telefon: 324784371  fax: 324784202 uwagi: w tym 4 łóżek IOM	33	0	55	54	\N	\N	\N	\N	t	\N	\N	\N	\N
250	telefon: 324784461  fax: 324784202 uwagi: 	34	0	45	54	\N	\N	\N	\N	t	\N	\N	\N	\N
251	telefon: 324784491  fax: 324784202 uwagi: 	40	0	106	54	\N	\N	\N	\N	t	\N	\N	\N	\N
253	telefon: 324784432  fax: 324784202 uwagi: 	42	0	42	54	\N	\N	\N	\N	t	\N	\N	\N	\N
254	telefon: 324784412  fax: 324784202 uwagi: w tym 2 stanowiska IOM	16	0	61	54	\N	\N	\N	\N	t	\N	\N	\N	\N
255	telefon: 324784422  fax: 324784202 uwagi: 	20	0	64	54	\N	\N	\N	\N	t	\N	\N	\N	\N
256	telefon: Oddz. Gastr.-Wew.:324784381, Oddz. Nefrol. - Wew.: 324784350  fax: 324784202 uwagi: \\r\\nOddział Nefrologiczno - Wewnętrzny - 16, w tym 2 IOM\\r\\nOddział Gastrologiczno - Wewnętrzny - 37, w tym 2 IOM	51	0	1	54	\N	\N	\N	\N	t	\N	\N	\N	\N
257	telefon: 324784442  fax: 324784202 uwagi: 	14	0	59	54	\N	\N	\N	\N	t	\N	\N	\N	\N
259	telefon: 324784481  fax: 324784202 uwagi: w tym 2 łóżka IOM	22	0	22	54	\N	\N	\N	\N	t	\N	\N	\N	\N
260	telefon: 324784481  fax: 324784202 uwagi: w tym 4 łóżka IOM	16	0	24	54	\N	\N	\N	\N	t	\N	\N	\N	\N
261	telefon: 324784291, 324784294, 324784293  fax: 324784202 uwagi: z Pododdziałem Patologii Noworodka i Niemowlęcia\\r\\nw tym 8 stanowisk IT 	8	0	101	54	\N	\N	\N	\N	t	\N	\N	\N	\N
262	telefon: 324784591  fax: 324784202 uwagi: w tym: 6 inkubatorów i 17 łóżeczek\\r\\nw tym 2 intensywnej terapi noworidka\\r\\nw tym 2 opieki ciągłej dla noworodków po sztucznej wentylacji,\\r\\nw tym 2 opieki pośredniej dla noworodków niewymagających wsparcia oddechowego	23	0	75	54	\N	\N	\N	\N	t	\N	\N	\N	\N
263	telefon: sekretariat 324784735, lekarz 32 478 47 36, dyżurka lekarska 32 4784718, pielęgniarka oddziałowa 324784742, dyżurka pielęgniarska 32 4784740,   fax: 324784202,  uwagi: \\r\\n	20	0	40	54	\N	\N	\N	\N	t	\N	\N	\N	\N
766	telefon:   fax:  uwagi: 4 łóżka kod 4570, 6 łóżek kod 4000, 2 łóżka 4220	12	0	191	54	\N	\N	\N	\N	t	\N	\N	\N	\N
1061	telefon: 32 4784391  fax:  uwagi: W tym 2 łóżka IOM	40	0	10	54	\N	\N	\N	\N	t	\N	\N	\N	\N
1047	telefon: 324784391  fax: 324784202, uwagi: w tym 6 stanowisk IT	6	0	14	54	\N	\N	\N	\N	t	\N	\N	\N	\N
264	telefon: 322283030 wew. 241 lub 242  fax: 322281498 uwagi: Oddział Chirurgii Ogólnej i Onkologicznej ///\\r\\n\\r\\nw tym 2 łóżka IOM	20	0	45	55	\N	\N	\N	\N	t	\N	\N	\N	\N
265	telefon: 322283030 wew. 220 lub 232  fax: 322281498 uwagi: w tym 2 łóżka IOM	22	0	106	55	\N	\N	\N	\N	t	\N	\N	\N	\N
266	telefon: 322283030 wew.  274 lub 287  fax: 322281498 uwagi: Oddział Chorób Wewnętrznych i Gastroenterologii ///\\r\\n\\r\\nw tym 2 łóżka IOM\\r\\n\\r\\n	34	0	1	55	\N	\N	\N	\N	t	\N	\N	\N	\N
267	telefon: 322283030 wew. 253 (gin.) lub 206, 248, 277 (położn.)  fax: 322281498 uwagi: 	24	0	42	55	\N	\N	\N	\N	t	\N	\N	\N	\N
268	telefon: 322283030 wew. 202  fax: 322281498 uwagi: Łóżka noworodkowe - 9 ///\\r\\nInkubatory - 3	12	0	75	55	\N	\N	\N	\N	t	\N	\N	\N	\N
269	telefon: 322283030 wew. 224, 236 lub 269  fax: 322281498 uwagi: Oddział Anestezjologii i Intensywnej Terapii ///\\r\\n6 łóżek intensywnej terapii ///\\r\\nDializy - NIE	6	0	100	55	\N	\N	\N	\N	t	\N	\N	\N	\N
772	telefon:   fax:  uwagi: 2 łóżka kod 4500, 2 łóżka kod 4580, 2 łóżka kod 4000 	6	0	191	55	\N	\N	\N	\N	t	\N	\N	\N	\N
270	telefon: 324200378  fax: 322514533 uwagi: Oddział Onkologiczny z Pododdziałem Chorób Wewnętrznych, .w tym 4 łóżka IOM	80	0	110	57	\N	\N	\N	\N	t	\N	\N	\N	\N
271	telefon: 324200219  fax: 322514533 uwagi: 	11	0	20	57	\N	\N	\N	\N	t	\N	\N	\N	\N
272	telefon: 324200301  fax: 322514533 uwagi: w tym 4 łóżka IOM	45	0	42	57	\N	\N	\N	\N	t	\N	\N	\N	\N
273	telefon: 324200306  fax: 322514533 uwagi: W tym 24 łóżka dla noworodków.	19	0	75	57	\N	\N	\N	\N	t	\N	\N	\N	\N
274	telefon: 324200205  fax: 322514533 uwagi: w tym 2 łóżka OIOM	40	0	133	57	\N	\N	\N	\N	t	\N	\N	\N	\N
1049	telefon:   fax:  uwagi: W tym 7 stanowisk IT	7	0	100	57	\N	\N	\N	\N	t	\N	\N	\N	\N
277	telefon: 324200415, 324200419  fax: 322514533 uwagi: ul. Józefowska 119, w tym 2 łóżka IOM.	58	0	8	57	\N	\N	\N	\N	t	\N	\N	\N	\N
793	telefon:   fax:  uwagi: 2 łóżka kod 4240, 4 łóżka kod 4450, 2 łóżka kod 4421, 2 łóżka kod 4580, 2 łóżka kod 4060.	12	0	191	57	\N	\N	\N	\N	t	\N	\N	\N	\N
1011	telefon:   fax:  uwagi: Oddział Chirurgii Onkologicznej z Pododdziałem Chirurgii Naczyniowej	22	0	49	57	\N	\N	\N	\N	t	\N	\N	\N	\N
278	telefon: 32 7555332  fax:  uwagi: W tym 2 łóżka IOM.	30	0	45	58	\N	\N	\N	\N	t	\N	\N	\N	\N
279	telefon: 32 7555352  fax:  uwagi: W tym 2 łóżka IOM.	38	0	106	58	\N	\N	\N	\N	t	\N	\N	\N	\N
280	telefon: 32 7555302  fax:  uwagi: 47 łóżek+16 łóżeczek, w tym 2 łóżka IOM.	35	0	42	58	\N	\N	\N	\N	t	\N	\N	\N	\N
281	telefon: 32 7555162  fax:  uwagi: W tym 2 łóżka IOM.	18	0	40	58	\N	\N	\N	\N	t	\N	\N	\N	\N
282	telefon: 32 7555362  fax:  uwagi: W tym 2 łóżka IOM.\\r\\nCzasowe zaprzestanie działalności leczniczej 	12	0	61	58	\N	\N	\N	\N	t	\N	\N	\N	\N
283	telefon: 32 7555372  fax:  uwagi: W tym 2 łóżka IOM.	25	0	111	58	\N	\N	\N	\N	t	\N	\N	\N	\N
284	telefon: 32 7555212  fax:  uwagi: Dializy - TAK\\r\\n8 stanowisk IT	8	0	100	58	\N	\N	\N	\N	t	\N	\N	\N	\N
285	telefon: 32 7555222  fax:  uwagi: 	12	0	59	58	\N	\N	\N	\N	t	\N	\N	\N	\N
286	telefon: 32 7555152  fax:  uwagi: W tym 2 łóżka IOM.	20	0	133	58	\N	\N	\N	\N	t	\N	\N	\N	\N
287	telefon: 32 7553702  fax:  uwagi: W tym 2 łóżka IOM.	20	0	8	58	\N	\N	\N	\N	t	\N	\N	\N	\N
836	telefon: Oddz. I: 32 7555242 ; oddz. II: 32 7555202  fax:  uwagi: Oddział Wewnętrzny I - 30 (profil kardiologiczno-internistyczny)\\r\\nOddział Wewnętrzny II - 30 (profil nefrologiczno-gastroenterologiczno-internistyczny)	60	0	1	58	\N	\N	\N	\N	t	\N	\N	\N	\N
837	telefon:   fax:  uwagi: 2 łóżka kod 4500, 2 łóżka kod 4580, 2 łóżka kod 4450, 2 łóżka kod 4401, 2 łóżka kod 4610, 2 łóżka kod 4348, 8 łóżek kod 4260, 2 łóżka kod 4272, 2 łóżka kod 4060, 3 łóżka kod 4220, 6 łóżek kod 4222	33	0	191	58	\N	\N	\N	\N	t	\N	\N	\N	\N
290	telefon: 343673503 (pokój lekarzy); 343673500 (dyż. pielęgn.)  fax: 343785251, 343785253 (Izba Przyjęć) uwagi: w tym 10 IOM (spełniają kryteria stanowisk IT)	10	0	100	59	\N	\N	\N	\N	t	\N	\N	\N	\N
291	telefon: 343673553(pokój lekarzy); 343673554 (gabinet   fax: 343785251,343785253(Izba Przyjęć) uwagi: Oddział Anestezjologii i Intensywnej Terapii Dziecięcej z  Zespołem Wyjazdowym \\"N\\".\\r\\n 8 inkubatorów	14	0	101	59	\N	\N	\N	\N	t	\N	\N	\N	\N
292	telefon: 343673600 - dyżurka pielęgniarek, 343673116 - pokój lekarzy  fax: 343785251, 343785253 (Izba Przyjęć) uwagi: ul. Bialska 104/118, 42-200 Częstochowa;\\r\\nOddział Chirurgiczny Ogólny - 75, w tym 4 łóżek IOM.\\r\\n\\r\\n	52	0	45	59	\N	\N	\N	\N	t	\N	\N	\N	\N
293	telefon: 343673109(pok. lekarzy);343673611(dyż. pielegn.)  fax: 343785251,343785253(Izba Przyjęć) uwagi: Oddział Chirurgii i Traumatologii Dziecięcej\\r\\nw tym 2 łózka IOM + 2 inkubatory	37	0	46	59	\N	\N	\N	\N	t	\N	\N	\N	\N
996	telefon: 34 3673304 (p. lek.); 34 3673339 (dyż. piel.); 34 3673340 (gab. zabieg.)  fax: 34 3673309 (pok. sekr. med. pn-pt 7:00-14:35); 34 3785251 i 34 3785253 (Izba Przyjęć) uwagi: Oddział Onkologii z Pododdziałem Dziennym Chemioterapii. 62 łóżek (+ 8 miejsc pobytu dziennego), w tym 2 łóżka IOM.	62	0	110	59	\N	\N	\N	\N	t	\N	\N	\N	\N
295	telefon: 343673474 (dyż. pielęgn.)  fax: 343785251, 343785253 (Izba Przyjęć) uwagi: Oddział Gastroenterologii Ogólnej i Onkologicznej z Pododdziałem Chorób Wewnętrznych\\r\\n	22	0	6	59	\N	\N	\N	\N	t	\N	\N	\N	\N
296	telefon: 343673479, 343673575 (pokój lekarzy), 343673572 (dyż. pielęg.), 343673583 (blok porodowy-dyżurka), 343673530 (IP ginekol-położ.)  fax: 343785251, 343785253 (Izba Przyjęć) uwagi: ul. Bialska 104/118, 42-200 Częstochowa;\\r\\nOddział Ginekologii i Położnictwa  z Pododdziałem  Patologii Ciąży i Ginekologii Onkologicznej - 91, w tym 6 łóżka IOM\\r\\n\\r\\n	91	0	42	59	\N	\N	\N	\N	t	\N	\N	\N	\N
298	telefon: 343673458 (dyż. pielęgn.), 343673456 (pokój lekarzy)  fax: 343785251, 343785253 (Izba Przyjęć) uwagi: 	23	0	10	59	\N	\N	\N	\N	t	\N	\N	\N	\N
299	telefon: 343673459 (sala intensyw. nadzoru kardiol.), 343673456 (pokoj lekarzy)  fax: 343785251, 343785253 (Izba Przyjęć) uwagi: w tym 7 łóżek intensywnego nadzoru kardiologicznego	7	0	14	59	\N	\N	\N	\N	t	\N	\N	\N	\N
300	telefon: 343673515 (pokój lekarzy), 343673517,343673514 (dyż. pielęgn.)  fax: 343785251, 343785253 (Izba Przyjęć) uwagi: Oddział  Nefrologii  z Pododdziałem Dializ Otrzewnowych	32	0	15	59	\N	\N	\N	\N	t	\N	\N	\N	\N
301	telefon: 343673383 (pokój lekarzy); 343673385,343673386 (dyż . pielęgn.)  fax: 343785251, 343785253 (Izba Przyjęć) uwagi: Oddział Neurochirurgii z Pododdziałem Chirurgii Szczękowo-Twarzowej\\r\\nw tym 2 IOM	28	0	55	59	\N	\N	\N	\N	t	\N	\N	\N	\N
302	telefon: 343673411 (pokój lekarzy), 343673412 (dyż. pielęgniarek)  fax: 343785251, 343785253 (Izba Przyjęć) uwagi: ul. Bialska 104/118, 42-200 Częstochowa;\\r\\nOddział Neurologiczny - 20, w tym 2 łóżka IOM\\r\\n\\r\\n	20	0	22	59	\N	\N	\N	\N	t	\N	\N	\N	\N
303	telefon: 343673411 (pokój lekarzy), 343673412, 343673408 (dyż. pielęgniarek)  fax: 343785251, 343785253 (Izba Przyjęć) uwagi: w tym 6 IOM\\r\\n	21	0	24	59	\N	\N	\N	\N	t	\N	\N	\N	\N
843	telefon:   fax:  uwagi: 1 IOM - kod 4270	1	0	191	63	\N	\N	\N	\N	t	\N	\N	\N	\N
389	telefon: 323463671  fax: 322414733 uwagi: 	40	0	66	69	\N	\N	\N	\N	t	\N	\N	\N	\N
304	telefon: Oddział Neonatologii: 34 3673564 (p. lekarzy); 34 3673467 (sala intensywnego nadzoru noworodków); Oddział Patologii: 343673345 (pok. lek.), 343673346(dyż.pielęgn.)  fax: 34 3673345 (p. lek. 24h); 34 3785251 i 34 3785253 (Izba Przyjęć) uwagi:  -  58 łóżek, w tym 5 łóżek IOM + 31 inkubatorów	58	0	75	59	\N	\N	\N	\N	t	\N	\N	\N	\N
305	telefon: 343673212 (dyż.pielęgn.)  fax: 343785251, 343785253 (Izba Przyjęć) uwagi: 	27	0	59	59	\N	\N	\N	\N	t	\N	\N	\N	\N
306	telefon: 343673483 (pokój lekarzy), 343673485 (dyż. pielęgn.)  fax: 343785251, 343785253 (Izba Przyjęć) uwagi: Oddział Ortopedii i Chirurgii Urazowej	43	0	106	59	\N	\N	\N	\N	t	\N	\N	\N	\N
307	telefon: 343673612,343673113,343673114,343673623 (pok.lek.-dostępny jeden w zależności od lek. spraw. dyż); 343673618, 343673619 (dyż. pielegn.)  fax: 343785251,343785253(Izba Przyjęć) uwagi: Oddział Pediatrii z Pododdziałem Hematologii i Nefrologii Dziecięcej\\r\\nw tym 2 IOM + 1 inkubator\\r\\n\\r\\n	34	0	40	59	\N	\N	\N	\N	t	\N	\N	\N	\N
308	telefon: 34 3673123; SOR (informacja): 34 3783123; SOR (dorośli): 34 3783682; SOR (dzieci): 34 3783645  fax: brak uwagi: Szpital Specjalistyczny Parkitka- Szpitalny Oddział Ratunkowy - Stanowiska IT	1	0	72	59	\N	\N	\N	\N	t	\N	\N	\N	\N
655	telefon:   fax:  uwagi: w tym 10 IOM w oddziałach dziecięcych oraz 9 IOM w oddziałach neonatologicznych	56	0	191	59	\N	\N	\N	\N	t	\N	\N	\N	\N
657	telefon: 343673123  fax: brak uwagi: 	3	0	192	59	\N	\N	\N	\N	t	\N	\N	\N	\N
862	telefon: 343673261 (pokój lekarzy), 343673260 (dyż. pielęgniarek)  fax: 343673524 (pok. piel. oddział. pn-pt 7:00-14:35), 343785251,343785253 (Izba Przyjęć) uwagi: Oddział Chirurgii Onkologicznej z Pododdziałem Chorób Piersi - 25, w tym 2 łóżka IOM	25	0	49	59	\N	\N	\N	\N	t	\N	\N	\N	\N
863	telefon: 343673511(pokój lekarzy), 343673509 (dyż.pielęgn.)  fax: 343673533 (pok.pielęgn.oddziałowej pn-pt 7:00-14:35); 343785251,343785253 (Izba Przyjęć) uwagi: 28 stanowisk dializacyjnych	28	0	107	59	\N	\N	\N	\N	t	\N	\N	\N	\N
1012	telefon:   fax:  uwagi: Oddział Chorób Wewnętrznych z Ośrodkiem Intensywnej Opieki Kardiologicznej\\r\\nw tym 5 łóżek intensywnego nadzoru kardiologicznego	60	0	1	59	\N	\N	\N	\N	t	\N	\N	\N	\N
1018	telefon:   fax:  uwagi: w tym 2 IOM	23	0	48	59	\N	\N	\N	\N	t	\N	\N	\N	\N
318	telefon:   fax:  uwagi: 	33	0	1	60	\N	\N	\N	\N	t	\N	\N	\N	\N
319	telefon:   fax:  uwagi: W tym 6 łóżek IOM	28	0	22	60	\N	\N	\N	\N	t	\N	\N	\N	\N
320	telefon: 323908211, centrala: 323908200   fax:  uwagi: w tym 8 łóżek IOM\\r\\nDializy - TAK	8	0	100	60	\N	\N	\N	\N	t	\N	\N	\N	\N
321	telefon:   fax:  uwagi: w tym 1 łóżko IOM	30	0	40	60	\N	\N	\N	\N	t	\N	\N	\N	\N
322	telefon:   fax:  uwagi: 17 łóżek dla noworodków, 8 inkubatorów.	25	0	75	60	\N	\N	\N	\N	t	\N	\N	\N	\N
323	telefon:   fax:  uwagi: 	48	0	42	60	\N	\N	\N	\N	t	\N	\N	\N	\N
324	telefon:   fax:  uwagi: Oddział Chirurgii Ogólnej z Pododdziałem Chemioterapii	45	0	45	60	\N	\N	\N	\N	t	\N	\N	\N	\N
325	telefon:   fax:  uwagi: 	15	0	59	60	\N	\N	\N	\N	t	\N	\N	\N	\N
326	telefon:   fax:  uwagi: 	12	0	61	60	\N	\N	\N	\N	t	\N	\N	\N	\N
327	telefon:   fax:  uwagi: 	13	0	64	60	\N	\N	\N	\N	t	\N	\N	\N	\N
328	telefon:   fax:  uwagi: miejsca męskie - 30\\r\\nmiejsca żeńskie - 30	60	0	66	60	\N	\N	\N	\N	t	\N	\N	\N	\N
820	telefon:   fax:  uwagi: 	4	0	192	60	\N	\N	\N	\N	t	\N	\N	\N	\N
637	telefon: 32 3908231  fax:  uwagi: Stanowiska IT	2	0	72	60	\N	\N	\N	\N	t	\N	\N	\N	\N
821	telefon:   fax:  uwagi: 4000- 2\\r\\n4220- 6\\r\\n4401- 1\\r\\n4500- 2	11	0	191	60	\N	\N	\N	\N	t	\N	\N	\N	\N
329	telefon:   fax:  uwagi: W tym 1 łóżko IOM	46	0	1	62	\N	\N	\N	\N	t	\N	\N	\N	\N
330	telefon:   fax:  uwagi: 	16	0	15	62	\N	\N	\N	\N	t	\N	\N	\N	\N
331	telefon:   fax:  uwagi: 1 inkubator	17	0	40	62	\N	\N	\N	\N	t	\N	\N	\N	\N
332	telefon:   fax:  uwagi: W tym 1 łóżko IOM	16	0	22	62	\N	\N	\N	\N	t	\N	\N	\N	\N
333	telefon:   fax:  uwagi: 	28	0	75	62	\N	\N	\N	\N	t	\N	\N	\N	\N
334	telefon:   fax:  uwagi: 	15	0	46	62	\N	\N	\N	\N	t	\N	\N	\N	\N
335	telefon: 338520511 w.603, 604  fax:  uwagi: Dializy - TAK	10	0	100	62	\N	\N	\N	\N	t	\N	\N	\N	\N
336	telefon:   fax:  uwagi: 	12	0	59	62	\N	\N	\N	\N	t	\N	\N	\N	\N
337	telefon:   fax:  uwagi: 	16	0	61	62	\N	\N	\N	\N	t	\N	\N	\N	\N
338	telefon:   fax:  uwagi: 	58	0	42	62	\N	\N	\N	\N	t	\N	\N	\N	\N
339	telefon:   fax:  uwagi: 	28	0	106	62	\N	\N	\N	\N	t	\N	\N	\N	\N
340	telefon:   fax:  uwagi: 	18	0	64	62	\N	\N	\N	\N	t	\N	\N	\N	\N
341	telefon:   fax:  uwagi: 	50	0	66	62	\N	\N	\N	\N	t	\N	\N	\N	\N
342	telefon:   fax:  uwagi: 	33	0	31	62	\N	\N	\N	\N	t	\N	\N	\N	\N
343	telefon:   fax:  uwagi: 	20	0	20	62	\N	\N	\N	\N	t	\N	\N	\N	\N
344	telefon:   fax:  uwagi: 	19	0	111	62	\N	\N	\N	\N	t	\N	\N	\N	\N
345	telefon:   fax:  uwagi: 	0	0	105	62	\N	\N	\N	\N	t	\N	\N	\N	\N
346	telefon:   fax:  uwagi: 	15	0	8	62	\N	\N	\N	\N	t	\N	\N	\N	\N
347	telefon:   fax:  uwagi: W tym 4 łóżka IOM	16	0	24	62	\N	\N	\N	\N	t	\N	\N	\N	\N
349	telefon:   fax:  uwagi: 	40	0	45	62	\N	\N	\N	\N	t	\N	\N	\N	\N
629	telefon: Centrala: 33 8549200, 33 8520511; SOR (rejestracja przyjęć nagłych): wew. 706, 707; SOR (pielęgniarka oddzialowa): wew. 701; SOR (rejestracja wpisów i przyjęć planowych): wew. 702  fax:  uwagi: Stanowiska IT	2	0	72	62	\N	\N	\N	\N	t	\N	\N	\N	\N
784	telefon:   fax:  uwagi: 4000- 1\\r\\n4220- 1\\r\\n4902- 2\\r\\n4222- 4	8	0	191	62	\N	\N	\N	\N	t	\N	\N	\N	\N
786	telefon: Centrala: 33 8549200, 33 8520511; SOR (rejestracja przyjęć nagłych): wew. 706, 707; SOR (pielęgniarka oddzialowa): wew. 701; SOR (rejestracja wpisów i przyjęć planowych): wew. 702  fax:  uwagi: 	4	0	192	62	\N	\N	\N	\N	t	\N	\N	\N	\N
912	telefon: 338520511 w.603, 604  fax:  uwagi: PIO - pełna izolacja oddechowa\\r\\n(3 miejsca w przypadku kohortowania pacjentów, po uzgodnieniu ze szpitalem tel. 33 854 92 00 lub 33 852 05 11 - przekierowanie na lekarza dyżurnego)	2	0	195	62	\N	\N	\N	\N	t	\N	\N	\N	\N
1010	telefon: 322213661; Izba Przyjęć wew. 30  fax: 322215236 uwagi: Oddział Chorób Płuc i Gruźlicy z Pododdziałem Gruźlicy, Pododdziałem Chemioterpaii i Szybkiej Diagnostyki\\r\\n	58	0	31	63	\N	\N	\N	\N	t	\N	\N	\N	\N
403	telefon: 32 3938100  fax: 32 3938101 uwagi: Oddział wewnętrzny z intensywnym nadzorem kardiologicznym. W tym 1 stanowisko IT i 1 łóżko IOM.	30	0	1	71	\N	\N	\N	\N	t	\N	\N	\N	\N
352	telefon:   fax:  uwagi: Oddział Kardiochirirgii, Transplantacji Serca i Mechanicznego Wspomagania Krążenia - 33 łóżka\\r\\nOddział Kardiochirurgii, Transplantacji Serca i Płuc oraz Mechanicznego Wspomagania Krążenia - 41 w tym 14 OIOM (rozpoczęcie działalności z dniem 01.07.2015r.)\\r\\nOddział Chirurgii Serca i Naczyń Dorosłych i Dzieci - 46 łóżek - Zakończenie działalności z dniem 13.07.2015\\r\\n\\r\\n	70	0	53	64	\N	\N	\N	\N	t	\N	\N	\N	\N
353	telefon: 324793403  fax:  uwagi: Oddział Transplantacyjny z Pododdziałem Mukowiscydozy, Pododdziałem Chirurgii Klatki Piersiowej i Pododdziałem Chorób Płuc - 33 łóżka w tym 6 OIOM (ropoczęcie działalności 01.07.2015 r.)\\r\\nOddział Transplanatacyjny - 9 łóżek (zakończenie działalności z dniem 13.07.2015 r.) \\r\\n	33	0	164	64	\N	\N	\N	\N	t	\N	\N	\N	\N
354	telefon:   fax:  uwagi: I Oddział Kardiologii i Angiologii - 38\\r\\n\\r\\nOddział Chorób Serca i Naczyń - 26	64	0	10	64	\N	\N	\N	\N	t	\N	\N	\N	\N
355	telefon:   fax:  uwagi: Oddział Intensywnej Opieki Kardiologicznej - R - 12\\r\\n\\r\\nOddział Intensywnej Opieki Kardiologicznej Dziecięcej - 10\\r\\n\\r\\nOddział Intensywnej Opieki Kardiologicznej i Ciężkiej Niewydolności Krążeniowo-Oddechowej - 10	32	0	14	64	\N	\N	\N	\N	t	\N	\N	\N	\N
719	telefon:   fax:  uwagi: 3 inkubatory.	10	0	193	64	\N	\N	\N	\N	t	\N	\N	\N	\N
356	telefon:   fax:  uwagi: Oddział Wrodzonych Wad Serca i Kardiologii Dziecięcej	16	0	13	64	\N	\N	\N	\N	t	\N	\N	\N	\N
357	telefon: 323733841, 323733842, 323733843  fax:  uwagi: w tym 25 łóżek OIOM	25	0	100	64	\N	\N	\N	\N	t	\N	\N	\N	\N
360	telefon: 323733880; 323733809  fax:  uwagi: Oddział Chirurgii Naczyniowej i Endowaskularnej	4	0	48	64	\N	\N	\N	\N	t	\N	\N	\N	\N
711	telefon:   fax:  uwagi: 	57	0	191	64	\N	\N	\N	\N	t	\N	\N	\N	\N
913	telefon:   fax:  uwagi: 	2	0	101	64	\N	\N	\N	\N	t	\N	\N	\N	\N
927	telefon:   fax:  uwagi: W tym 5 łóżek IOM, 5 inkubatorów.	15	0	54	64	\N	\N	\N	\N	t	\N	\N	\N	\N
361	telefon: 32 3581227  fax: 32 2518437 uwagi: Oddział Okulistyki Dorosłych	107	0	59	65	\N	\N	\N	\N	t	\N	\N	\N	\N
362	telefon: 32 3581326  fax: 32 2518437 uwagi: Oddział Okulistyki Dzicięcej	26	0	60	65	\N	\N	\N	\N	t	\N	\N	\N	\N
669	telefon:   fax:  uwagi: 	1	0	191	65	\N	\N	\N	\N	t	\N	\N	\N	\N
1020	telefon: 32 3581 357  fax:  uwagi: w tym 4 łóżka IOM	36	0	110	65	\N	\N	\N	\N	t	\N	\N	\N	\N
879	telefon: 32 3581366  fax: 32 2518437 uwagi: Oddział Endokrynologii i Nowotworów Neuroendokrynnych	25	0	5	65	\N	\N	\N	\N	t	\N	\N	\N	\N
1076	telefon:   fax:  uwagi: w tym 2 łóżka IOM	21	0	49	65	\N	\N	\N	\N	t	\N	\N	\N	\N
366	telefon: 32 3598134  fax: brak uwagi: Oddział Anestezjologii i Intensywnej Terapii - \\r\\nw tym 10 łóżek IT	10	0	100	66	\N	\N	\N	\N	t	\N	\N	\N	\N
368	telefon: 32 3598198  fax: 32 2029577 uwagi: Oddział Chirurgii Ogólnej, Naczyń, Angiologii i Flebologii\\r\\nW tym 6 łóżek IOM	59	0	48	66	\N	\N	\N	\N	t	\N	\N	\N	\N
369	telefon: 32 3598290  fax: 32 2029933 uwagi: Oddział Chorób Wewnętrznych i Reumatologii	37	0	33	66	\N	\N	\N	\N	t	\N	\N	\N	\N
370	telefon: 32 3598297  fax: 32 2523593 uwagi: Oddział Chorób Wewnętrznych i Metabolicznych	36	0	1	66	\N	\N	\N	\N	t	\N	\N	\N	\N
371	telefon: 32 3598239  fax: 32 2059483 uwagi: Oddział Geriatrii	16	0	8	66	\N	\N	\N	\N	t	\N	\N	\N	\N
372	telefon: 32 3598306  fax: 32 2029592 uwagi: Oddział Neurologii\\r\\nw tym 2 łóżka IOM	28	0	22	66	\N	\N	\N	\N	t	\N	\N	\N	\N
373	telefon: 323598306  fax: 322029592 uwagi: Pododdział Udarowy Oddziału Neurologii\\r\\nw tym 4 łóżka IOM	16	0	24	66	\N	\N	\N	\N	t	\N	\N	\N	\N
374	telefon: 32 3598270  fax: 32 2029932 uwagi: Oddział Ortopedii i Traumatologii Narządu Ruchu	40	0	106	66	\N	\N	\N	\N	t	\N	\N	\N	\N
377	telefon: 32 3598107  fax: brak uwagi: Oddział Laryngologii i Onkologii Laryngologicznej\\r\\n	18	0	61	66	\N	\N	\N	\N	t	\N	\N	\N	\N
378	telefon: 32 3598011  fax: 32 2059260 uwagi: Oddział Psychiatrii i Psychoterapii	30	0	66	66	\N	\N	\N	\N	t	\N	\N	\N	\N
671	telefon:   fax:  uwagi: 6 łóżek kod 4530, 2 łóżka kod 4220, 4 łóżka kod 4222, , 3 łóżka kod 4570, 2 łóżka kod 4610, 2 łóżka kod 4580.	19	0	191	66	\N	\N	\N	\N	t	\N	\N	\N	\N
1050	telefon:   fax:  uwagi: 10 stanowisk kod 4260, 1 stanowisko IT kod 4902	11	0	189	66	\N	\N	\N	\N	t	\N	\N	\N	\N
860	telefon: 32 3598944  fax: 32 3598944 uwagi: Oddział Neurochirurgii\\r\\nw tym 3 łóżka IOM	15	0	55	66	\N	\N	\N	\N	t	\N	\N	\N	\N
1019	telefon: 324796101  fax:  uwagi: w tym 4-łóżkowa sala nieinwazyjnej wentylacji mechanicznej	21	0	133	66	\N	\N	\N	\N	t	\N	\N	\N	\N
1032	telefon: 324796010  fax: 324796011 uwagi: Uruchomienie SOR w dn. 12.11.2018 r.	4	0	192	66	\N	\N	\N	\N	t	\N	\N	\N	\N
1033	telefon: 324796010  fax: 324796011 uwagi: w tym 1 stanowisko IT	5	0	72	66	\N	\N	\N	\N	t	\N	\N	\N	\N
380	telefon: 32 46 13 201  fax: 324613220 uwagi: Oddział Chorób Wewnętrznych z Pododdziałem Nefrologicznym.\\r\\n	37	0	1	68	\N	\N	\N	\N	t	\N	\N	\N	\N
381	telefon: 32 46 13 201  fax: 324613220 uwagi: Oddział Kardiologiczny z Pododdziałem Intensywnego Nadzoru Kardiologicznego, w tym 6 łóżek INK.	25	0	10	68	\N	\N	\N	\N	t	\N	\N	\N	\N
382	telefon: 32 46 13 201  fax: 324613220 uwagi: Oddział Chirurgii Dzięcięcej	15	0	46	68	\N	\N	\N	\N	t	\N	\N	\N	\N
383	telefon: 324613201  fax: 324613220 uwagi: Oddział Chirurgii Ogólnej z Pododdziałem Chirurgii Naczyń, 	50	0	45	68	\N	\N	\N	\N	t	\N	\N	\N	\N
384	telefon: 32 46 13 201  fax: 324613220 uwagi: Oddział Chirurgii Urazowo-Ortopedycznej z Pododdziałem Dziecięcym, 	35	0	106	68	\N	\N	\N	\N	t	\N	\N	\N	\N
385	telefon: 324613201  fax: 324613220 uwagi: 	19	0	64	68	\N	\N	\N	\N	t	\N	\N	\N	\N
386	telefon: 324613201  fax: 324613220 uwagi: Oddział Pediatryczny z Pododdziałem Niemowlęcym	25	0	40	68	\N	\N	\N	\N	t	\N	\N	\N	\N
387	telefon: 324613201  fax: 324613220 uwagi: w tym 3 stanowiska OIOM	3	0	101	68	\N	\N	\N	\N	t	\N	\N	\N	\N
1068	telefon: 32 46 13 253  fax:  uwagi: 	12	0	202	68	\N	\N	\N	\N	t	\N	\N	\N	\N
701	telefon:   fax:  uwagi: 3 łóżka kod 4261\\r\\n	3	0	191	68	\N	\N	\N	\N	t	\N	\N	\N	\N
388	telefon: 323463642  fax: 322414733 uwagi: Oddział Obserwacyjno-Zakaźny, Hepatologii Zakaźnej i Nabytych Niedoborów Odporności Kliniczny\\r\\nW tym 1 łóżko IOM.	40	0	111	69	\N	\N	\N	\N	t	\N	\N	\N	\N
390	telefon: 323463677  fax: 322414733 uwagi: 	14	0	105	69	\N	\N	\N	\N	t	\N	\N	\N	\N
391	telefon: 323463661  fax: 322414733 uwagi: Oddział Pulmonologii i Nowotworów Płuc z Pododdziałem Ftyzjopneumonologii; 50 łóżek, w tym 1 łóżko IOM.\\r\\nNależy każdorazowo kontaktować się z oddziałem w sprawie przyjęcia pacjenta.	50	0	31	69	\N	\N	\N	\N	t	\N	\N	\N	\N
759	telefon:   fax:  uwagi: 1 łóżko kod 4348, 1 łóżko kod 4270.	2	0	191	69	\N	\N	\N	\N	t	\N	\N	\N	\N
392	telefon: 32 2673011 wew. 215  fax: 32 2677355 uwagi: Oddział Chorób Wewnętrznych I - 58, w tym IOM - 4 \\r\\n\\r\\n\\r\\n	58	0	1	70	\N	\N	\N	\N	t	\N	\N	\N	\N
394	telefon: 32 2673011 wew. 149  fax: 32 2677355 uwagi: 50 łóżek	50	0	42	70	\N	\N	\N	\N	t	\N	\N	\N	\N
395	telefon: 32 2673011 wew. 365  fax: 32 2677355 uwagi: 13 łóżeczek i 4 inkubatory	13	0	75	70	\N	\N	\N	\N	t	\N	\N	\N	\N
404	telefon: 32 3938100  fax: 32 3938101 uwagi: W tym 1 łóżko IOM.	30	0	45	71	\N	\N	\N	\N	t	\N	\N	\N	\N
405	telefon: 32 3938100  fax: 32 3938101 uwagi: Oddział ginekologiczno-położniczy z blokiem porodowym. W tym 1 łóżko IOM.	30	0	42	71	\N	\N	\N	\N	t	\N	\N	\N	\N
406	telefon: 32 3938100  fax: 32 3938101 uwagi: 18 łóżeczek + 5 inkubatorów	18	0	75	71	\N	\N	\N	\N	t	\N	\N	\N	\N
407	telefon: 32 3938100  fax: 32 3938101 uwagi: W tym 2 łóżka IOM.	20	0	8	71	\N	\N	\N	\N	t	\N	\N	\N	\N
780	telefon:   fax:  uwagi: 1 łóżko - oddz. 4000 ; 1 łóżko - oddz. 4500 ;\\r\\n1 łóżko - oddz. 4450 ; 1 łóżko - oddz. 4060	4	0	191	71	\N	\N	\N	\N	t	\N	\N	\N	\N
408	telefon: 343172861 wew. 175  fax: brak uwagi: Oddział Chorób Wewnętrznych - 50\\r\\nw tym 2 łóżka IOM, 2 IT\\r\\n	50	0	1	72	\N	\N	\N	\N	t	\N	\N	\N	\N
409	telefon: 343172861 wew.181  fax: brak uwagi: w tym 2 łóżka IOM, 2 łóżka dla noworodków, \\r\\n2 inkubatory	20	0	40	72	\N	\N	\N	\N	t	\N	\N	\N	\N
845	telefon:   fax:  uwagi: 2 łóżka kod 4000, 2 łóżka kod 4401.	4	0	191	72	\N	\N	\N	\N	t	\N	\N	\N	\N
1075	telefon:   fax:  uwagi: Gastroenterologia i Hepatologia	45	0	6	74	\N	\N	\N	\N	t	\N	\N	\N	\N
674	telefon:   fax:  uwagi: 	22	0	191	74	\N	\N	\N	\N	t	\N	\N	\N	\N
419	telefon: 32 7894301, 32 7894340  fax: 32 7894302, 32 7894343 uwagi: Oddział Chorób Wewnętrznych, Autoimmunologicznych i Metabolicznych - 32\\r\\n\\r\\nOddział Chorób Wewnętrznych i Farmakologii Klinicznej - 23	55	0	1	74	\N	\N	\N	\N	t	\N	\N	\N	\N
421	telefon: 32 7894701  fax: 32 7894701 uwagi: Oddział Ginekologii i Położnictwa - 30, w tym 2 łóżka IOM\\r\\n\\r\\n	60	0	42	74	\N	\N	\N	\N	t	\N	\N	\N	\N
422	telefon: 32 7894451  fax: brak uwagi: 5 noworodkowych, 7 inkubatorów,4 ł.intensywnej terapii noworodka, 4 ł. opieki ciągłej dla noworodków po sztucznej wentylacji, 7 ł. opieki pośredniej dla noworodków nie wymagających wsparcia oddechowego	27	0	75	74	\N	\N	\N	\N	t	\N	\N	\N	\N
423	telefon: 32 7894601  fax: 32 2525955 uwagi: Oddział Neurologiczny z Pododdziałem Udarowym\\r\\n- w tym 2 łóżka IOM.	47	0	22	74	\N	\N	\N	\N	t	\N	\N	\N	\N
424	telefon: 327894201, 327894202, 327894216  fax: 322525955 uwagi: w tym: 10 łóżek IT	10	0	100	74	\N	\N	\N	\N	t	\N	\N	\N	\N
425	telefon: 32 7894501  fax: 32 7894506 uwagi: w tym 2 łóżka IOM	47	0	55	74	\N	\N	\N	\N	t	\N	\N	\N	\N
426	telefon: 32 7894251  fax: brak uwagi: Oddział Chirurgii Przewodu Pokarmowego	47	0	45	74	\N	\N	\N	\N	t	\N	\N	\N	\N
1074	telefon:   fax:  uwagi: Oddział Endokrynologii Ginekologicznej	18	0	5	74	\N	\N	\N	\N	t	\N	\N	\N	\N
428	telefon: 32 459 1883 (lek.), 32 4591884 (piel.), 32 4591882 (sek.)  fax: 32 4591777 uwagi: Oddział Neurologiczny z Pododdziałem Udarowym - 28	28	0	22	75	\N	\N	\N	\N	t	\N	\N	\N	\N
430	telefon: 32 459 1883 (lek.), 32 4591884 (piel.), 32 4591882 (sek.)  fax: 32 4591777 uwagi: 	16	0	24	75	\N	\N	\N	\N	t	\N	\N	\N	\N
431	telefon: 32 4591853 (lek.), 32 4591854 (piel.), 32 4591857 (sek.)  fax: 32 4591777 uwagi: ul. 26 Marca 51 44-300 Wodzisław Śl.:\\r\\nOddział Chorób Wewnętrznych - 30\\r\\n	30	0	1	75	\N	\N	\N	\N	t	\N	\N	\N	\N
432	telefon: 32 459198332 (lek.) 32 4591984/85 (piel.) 32 4591982 (sek.)  fax: 32 4591777 uwagi: ul. 26 Marca 51 44-300 Wodzisław Śl.:\\r\\nOddział Chirurgiczny Ogólny - 47\\r\\n\\r\\n	37	0	45	75	\N	\N	\N	\N	t	\N	\N	\N	\N
433	telefon: 32 4591951 (lek.) 32 4591954 (piel.) 32 4591955 (sek.)  fax: 32 4591777 uwagi: ul. 26 Marca 51 44-300 Wodzisław Śl.:\\r\\nOddział Chirurgii Urazowo-Ortopedycznej - 27\\r\\n\\r\\n	24	0	106	75	\N	\N	\N	\N	t	\N	\N	\N	\N
434	telefon: 32 4591991 (lek.), 32 4591994 (piel.), 32 4591992 (sek.)  fax: 324591777 uwagi: ul. 26 Marca 51 44-300 Wodzisław Śl.:\\r\\nOddział Anestezjologii i Intensywnej Terapii -\\r\\n7 stanowisk IT\\r\\n\\r\\n	7	0	100	75	\N	\N	\N	\N	t	\N	\N	\N	\N
435	telefon: 32 4591963 (lek.), 32 4591964/62 (piel.), 32 4591965 (sek.)  fax: 32 4591777 uwagi: ul. 26 Marca 51 44-300 Wodzisław Śl.;\\r\\nOddział Ginekologiczno-Położniczy - 44\\r\\n	30	0	42	75	\N	\N	\N	\N	t	\N	\N	\N	\N
471	telefon: lek. 32 7643030 wew. 106, 206; piel. 32 7643030 wew. 102, 201  fax: 32 7643030 uwagi: 	29	0	10	80	\N	\N	\N	\N	t	\N	\N	\N	\N
437	telefon: 32 4591883 (lek.), 32 4591974 (piel.), 32 4591972 (sek.)  fax: 32 4591777 uwagi: ul. 26 Marca 51 44-300 Wodzisław Śl.;\\r\\nOddział Neonatologiczny - 18\\r\\n	12	0	75	75	\N	\N	\N	\N	t	\N	\N	\N	\N
789	telefon:   fax:  uwagi: Oddział 4000 - 2 łóżko\\r\\nOddział 4220 - 2 łóżka\\r\\nOddział 4421 - 2 łóżka\\r\\nOddział 4450 - 2 łóżka	8	0	191	75	\N	\N	\N	\N	t	\N	\N	\N	\N
1064	telefon:   fax:  uwagi: Oddział Chorób Wewnętrznych z Pododdziałem Geriatrycznym - 45 łóżek	45	0	201	75	\N	\N	\N	\N	t	\N	\N	\N	\N
438	telefon: 32 3704441  fax: 32 3704417 uwagi: 	17	0	15	76	\N	\N	\N	\N	t	\N	\N	\N	\N
439	telefon:   fax:  uwagi: 	8	0	107	76	\N	\N	\N	\N	t	\N	\N	\N	\N
440	telefon: 32 3704425, Izba Przyjęć: 32 3704450    fax: 32 3704417 uwagi: Oddział Chorób Wewnętrznych i Diabetologii	20	0	1	76	\N	\N	\N	\N	t	\N	\N	\N	\N
442	telefon: 32 3704416  fax: 32 3704475 uwagi: Oddział Torakochirurgiczny, w tym 3 łóżka IOM.	30	0	47	76	\N	\N	\N	\N	t	\N	\N	\N	\N
443	telefon: 32 3704440  fax: 32 3704453 uwagi: W tym 2 łóżka IOM.	20	0	64	76	\N	\N	\N	\N	t	\N	\N	\N	\N
444	telefon: 32 3704284; 32 3704583  fax: 32 3704292 uwagi: W tym 2 łóżka IOM.	12	0	22	76	\N	\N	\N	\N	t	\N	\N	\N	\N
445	telefon: 323704227, 323704228  fax: 32 3704238 uwagi: 7 stanowisk IT. \\r\\nDializy - TAK	7	0	100	76	\N	\N	\N	\N	t	\N	\N	\N	\N
446	telefon: 32 3704373  fax: 32 3704379 uwagi: Oddział Hematologii i Onkologii, w tym 3 łóżka IOM	25	0	155	76	\N	\N	\N	\N	t	\N	\N	\N	\N
850	telefon:   fax:  uwagi: 	1	0	191	91	\N	\N	\N	\N	t	\N	\N	\N	\N
447	telefon: noworodki: 323704350, dzieci: 323704285  fax: OIT Dziecięcej - 32 3704278 uwagi: Oddział Intensywnej Terapii Dziecięcej - 9,  w tym 4 łóżka noworodki, 5 inkubatorów\\r\\nOddział Intensywnej Terapii Noworodka - 10, w tym 10 inkubatorów\\r\\n(stanowiska IT: 9+10)	19	0	101	76	\N	\N	\N	\N	t	\N	\N	\N	\N
448	telefon: 32 3704267  fax: 32 3704292 uwagi: Oddział Gastroenterologii i Hepatologii Dzieci	18	0	7	76	\N	\N	\N	\N	t	\N	\N	\N	\N
450	telefon:   fax:  uwagi: Pododdział Dializoterapii Dzieci	3	0	183	76	\N	\N	\N	\N	t	\N	\N	\N	\N
451	telefon: 32 3704344  fax: 32 3704292 uwagi: 	20	0	40	76	\N	\N	\N	\N	t	\N	\N	\N	\N
713	telefon:   fax:  uwagi: 2 łózka kod 4500, 3 łóżka kod 4520, 2 łóżka kod 4640, 2 łóżka kod 4220, 4 łóżka kod 4501, 3 łóżka kod 4071, 4 łóżka kod 4222, 2 łóżka kod 4310	22	0	191	76	\N	\N	\N	\N	t	\N	\N	\N	\N
870	telefon: 32 3704356  fax: 32 3704354 uwagi: Oddział Chirurgii Wad Rozwojowych Dzieci i Traumatologii, w tym 4 łóżka IOM	20	0	46	76	\N	\N	\N	\N	t	\N	\N	\N	\N
872	telefon: 32 3704587  fax: 32 3704597 uwagi: W tym 4 łóżka IOM.	16	0	24	76	\N	\N	\N	\N	t	\N	\N	\N	\N
874	telefon: 32 3704291  fax: 32 3704466 uwagi: Oddział Patologii Noworodka, w tym 4 stanowiska IT.	24	0	75	76	\N	\N	\N	\N	t	\N	\N	\N	\N
875	telefon: 32 3732225  fax: 32 3745664 uwagi: Zabrze, ul. Koziołka 1.\\r\\nW tym 2 łóżka IOM.	60	0	133	76	\N	\N	\N	\N	t	\N	\N	\N	\N
452	telefon: Od. Wew.I:323499180, Od. Wew. z Podod. Geriat.: 323499706  fax: 32 2413952 uwagi: ul. Strzelców Bytomskich 11  41-500 Chorzów\\r\\nOddział Chorób Wewnętrznych - 59 (w tym 3 łóżka IOM)\\r\\n\\r\\nul. Karola Miarki 40, 41-500 Chorzów\\r\\nOddział Chorób Wewnętrznych z Pododdziałem Geriatrycznym - 50 ( w tym 4 łóżka IOM).\\r\\n	109	0	1	77	\N	\N	\N	\N	t	\N	\N	\N	\N
453	telefon: 32 3499156  fax: 32 2413952 uwagi: W tym 6 stanowisk IT.\\r\\nDializy - TAK	10	0	100	77	\N	\N	\N	\N	t	\N	\N	\N	\N
454	telefon: 323499160  fax: 32 2413952 uwagi: w tym 2 IOM	36	0	45	77	\N	\N	\N	\N	t	\N	\N	\N	\N
455	telefon: 323499171  fax: 32 2413952 uwagi: w tym 2 IOM	34	0	106	77	\N	\N	\N	\N	t	\N	\N	\N	\N
456	telefon: 323499166  fax: 32 2413952 uwagi: 	10	0	20	77	\N	\N	\N	\N	t	\N	\N	\N	\N
457	telefon: 323499161  fax: 32 2413952 uwagi: Oddział Endokrynologiczno - Diebetologiczny	10	0	5	77	\N	\N	\N	\N	t	\N	\N	\N	\N
458	telefon: 323499188  fax: 32 2413952 uwagi: w tym 2 łóżka IOM	12	0	22	77	\N	\N	\N	\N	t	\N	\N	\N	\N
460	telefon: 32 3499161  fax: 32 2413952 uwagi: 	10	0	59	77	\N	\N	\N	\N	t	\N	\N	\N	\N
461	telefon: 323499734  fax: 32 2413952 uwagi: przy ul. Karola Miarki 40 w Chorzowie\\r\\nw tym 3 łóżka IOM.	39	0	9	77	\N	\N	\N	\N	t	\N	\N	\N	\N
757	telefon:   fax:  uwagi: 7 łóżek kod 4000, 2 łóżka kod 4500, 2 łóżka kod 4580, 3 łóżka kod 4070, 4 łóżka kod 4222, 2 łóżka kod 4220.	20	0	191	77	\N	\N	\N	\N	t	\N	\N	\N	\N
878	telefon: 323499188  fax: 32 2413952 uwagi: w 4 łóżka IOM	16	0	24	77	\N	\N	\N	\N	t	\N	\N	\N	\N
462	telefon:   fax:  uwagi: Oddział Chirurgii Onkologicznej i Ogólnej wraz z odcinkiem chirurgii krótkoterminowej - ul. Wyzwolenia 18, 43-300 Bielsko-Biała	58	0	49	78	\N	\N	\N	\N	t	\N	\N	\N	\N
463	telefon: ul. Wyzwolenia: 334984050 (lek.), 334984030 (piel.); ul. Wyspiańskiego: 338157457, 338272554 (lek.), 338272555 (piel.)  fax:  uwagi: ul. Wyzwolenia 18 43-300 Bielsko-Biała\\r\\nOddział Anestezjologii i Intensywnej Terapii - 4 łóżka\\r\\n\\r\\nul. Wyspiańskiego 21 43-300 Bielsko-Biała\\r\\nOddział Anestezjologii i Intensywnej Terapii - 6 łóżek	10	0	100	78	\N	\N	\N	\N	t	\N	\N	\N	\N
464	telefon: 33 8272500  fax:  uwagi: Oddział chirurgii ogólnej i onkologicznej - ul Wyspiańskiego 21, 43-300 Bielsko-Biała	46	0	45	78	\N	\N	\N	\N	t	\N	\N	\N	\N
465	telefon: 33 8272500  fax:  uwagi: Ul. Wyspiańskiego 21, 43-300 Bielsko-Biała	43	0	42	78	\N	\N	\N	\N	t	\N	\N	\N	\N
466	telefon: 33 8272500  fax:  uwagi: Oddział koardilogii i kardioonkologii - ul. Wyspiańskiego 21, 43-300 Bielsko-Biała. W tym 4 łóżka intensywnego nadzoru kardilogicznego.	33	0	10	78	\N	\N	\N	\N	t	\N	\N	\N	\N
467	telefon: 33 8272500  fax:  uwagi: Ul. Wyspiańskiego 21, 43-300 Bielsko-Biała\\r\\nw tym 20 łóżek intensywnego nadzoru, 7 inkubatorów	27	0	75	78	\N	\N	\N	\N	t	\N	\N	\N	\N
728	telefon:   fax:  uwagi: 	9	0	191	78	\N	\N	\N	\N	t	\N	\N	\N	\N
915	telefon:   fax:  uwagi: Oddział gastroenterologiczny z pododdziałem chorób wewnętrznych - ul. Wyspiańskiego 21, 43-300 Bielsko-Biała.\\r\\nW tym 2 łóżka IOM.	33	0	6	78	\N	\N	\N	\N	t	\N	\N	\N	\N
470	telefon: poziom 0: 32 2279826 wew. 108; poziom IV: 32 2279826 wew. 207  fax: 32 2279826 uwagi: Oddział Kardiologii Inwazyjnej Zabiegowej, w tym 1 IOM	23	0	10	79	\N	\N	\N	\N	t	\N	\N	\N	\N
1017	telefon:   fax:  uwagi: Oddział intensywnej opieki kardiologicznej	10	0	14	79	\N	\N	\N	\N	t	\N	\N	\N	\N
745	telefon:   fax:  uwagi: 	1	0	191	79	\N	\N	\N	\N	t	\N	\N	\N	\N
752	telefon:   fax:  uwagi: 	1	0	191	80	\N	\N	\N	\N	t	\N	\N	\N	\N
473	telefon: 33 8289390 wew. 300  fax: 33 8289393 uwagi: 	12	0	10	81	\N	\N	\N	\N	t	\N	\N	\N	\N
475	telefon: 33 8289390 wew. 200  fax: 33 8289393 uwagi: łóżka IOM - 2	14	0	53	81	\N	\N	\N	\N	t	\N	\N	\N	\N
730	telefon:   fax:  uwagi: 	1	0	191	81	\N	\N	\N	\N	t	\N	\N	\N	\N
477	telefon: piel. 33 8545663 wew. 112; lek. 33 8545663 wew. 113  fax: 33 8545663 uwagi: Oddział kardiologiczny - 6\\r\\nOddział kardiologiczny B - 14	20	0	10	82	\N	\N	\N	\N	t	\N	\N	\N	\N
478	telefon: piel. 33 8545663 wew. 120; lek. 33 8545663 wew. 121  fax: 33 8545663 uwagi: 	2	0	48	82	\N	\N	\N	\N	t	\N	\N	\N	\N
787	telefon:   fax:  uwagi: 	1	0	191	82	\N	\N	\N	\N	t	\N	\N	\N	\N
479	telefon: 32 2224400  fax: 32 2221609 uwagi: W tym 2 łóżka IOM.	38	0	1	83	\N	\N	\N	\N	t	\N	\N	\N	\N
480	telefon: 32 2224400  fax: 32 2221609 uwagi: 	18	0	20	83	\N	\N	\N	\N	t	\N	\N	\N	\N
481	telefon: 32 2224400  fax: 32 2221609 uwagi: Oddział Noworodków i Wcześniaków, w tym 4 inkubatory	15	0	75	83	\N	\N	\N	\N	t	\N	\N	\N	\N
482	telefon: 32 2224400  fax: 32 2221609 uwagi: W tym 2 łóżka IOM.	38	0	42	83	\N	\N	\N	\N	t	\N	\N	\N	\N
770	telefon:   fax:  uwagi: 2 IOM - kod 4000, 2 IOM - kod 4450	4	0	191	83	\N	\N	\N	\N	t	\N	\N	\N	\N
483	telefon: 327827211  fax: 327827300 uwagi: 	27	0	45	84	\N	\N	\N	\N	t	\N	\N	\N	\N
484	telefon: 327827222  fax: 327827300 uwagi: Oddział Nefrologii ze Stacją Dializ	10	0	15	84	\N	\N	\N	\N	t	\N	\N	\N	\N
485	telefon: 327827266  fax: 327827300 uwagi: Oddział Chorób Wewnętrznych\\r\\nul. Głowackiego 10, 40-052 Katowice \\r\\n49 łóżek\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n	49	0	1	84	\N	\N	\N	\N	t	\N	\N	\N	\N
686	telefon:   fax:  uwagi: 	1	0	191	84	\N	\N	\N	\N	t	\N	\N	\N	\N
1057	telefon:   fax:  uwagi: 	0	0	42	84	\N	\N	\N	\N	t	\N	\N	\N	\N
959	telefon: 32 7827330  fax: 32 7827329 uwagi: 	3	0	198	84	\N	\N	\N	\N	t	\N	\N	\N	\N
1035	telefon: 323412510  fax: 327827300 uwagi: 	6	0	100	84	\N	\N	\N	\N	t	\N	\N	\N	\N
486	telefon: ul. Bony 1/3: 343702236, ul. Mickiewicza 12: 343702382  fax: brak uwagi: ul. Mirowska 15 42-200 Częstochowa \\r\\nOddział Chorób Wewnętrznych - 61 (w tym 4 łózka IOM)\\r\\n\\r\\nul. Mickiewicza 12 42-200 Częstochowa\\r\\nOddział Chorób Wewnętrznych - 51 (w tym 2 łóżka IOM, 3 łóżka intensywnego nadzoru kardiologicznego)	112	0	1	85	\N	\N	\N	\N	t	\N	\N	\N	\N
487	telefon: 343702223  fax: brak uwagi: w tym 2 łóżka IOM	46	0	45	85	\N	\N	\N	\N	t	\N	\N	\N	\N
488	telefon: 343702202  fax: brak uwagi: w tym 2 łóżka IOM	30	0	106	85	\N	\N	\N	\N	t	\N	\N	\N	\N
489	telefon: 343702175  fax: brak uwagi: w tym 2 łóżka IOM	20	0	64	85	\N	\N	\N	\N	t	\N	\N	\N	\N
490	telefon: 343702246, 343702251(lek.)  fax: brak uwagi: Dializy - TAK	8	0	100	85	\N	\N	\N	\N	t	\N	\N	\N	\N
491	telefon: 343702312  fax: brak uwagi: w tym 3 łóżka IOM	21	0	22	85	\N	\N	\N	\N	t	\N	\N	\N	\N
492	telefon: 34 3702312  fax: brak uwagi: w tym 8 łóżek IOM	16	0	24	85	\N	\N	\N	\N	t	\N	\N	\N	\N
652	telefon: 343702263  fax: brak uwagi: w tym 2 łóżka IOM	53	0	31	85	\N	\N	\N	\N	t	\N	\N	\N	\N
494	telefon: 343702372  fax: brak uwagi: ul. Mickiewicza 12\\r\\nw tym 2 łóżka IOM	31	0	42	85	\N	\N	\N	\N	t	\N	\N	\N	\N
495	telefon: 343702402  fax: brak uwagi: ul. Mickiewicza 12\\r\\n15 łóżek dla noworodków, 5 inkubatorów.	16	0	75	85	\N	\N	\N	\N	t	\N	\N	\N	\N
496	telefon: 343702564  fax: brak uwagi: ul. Bony 1/3\\r\\nW tym 2 łóżka IOM\\r\\n	26	0	40	85	\N	\N	\N	\N	t	\N	\N	\N	\N
497	telefon: 343702633  fax: brak uwagi: ul. Bony 1/3	18	0	20	85	\N	\N	\N	\N	t	\N	\N	\N	\N
498	telefon: 343702592  fax: brak uwagi: ul. Bony 1/3\\r\\nw tym 2 łóżka IOM	40	0	8	85	\N	\N	\N	\N	t	\N	\N	\N	\N
499	telefon: 343702665  fax: brak uwagi: ul. Bony 1/3	0	0	105	85	\N	\N	\N	\N	t	\N	\N	\N	\N
631	telefon: 34 3702270, 34 3702168, 34 3702170  fax: 34 3702168 uwagi: 	4	0	72	85	\N	\N	\N	\N	t	\N	\N	\N	\N
651	telefon: 34 3702270, 34 3702168, 34 3702170  fax: 34 3702168 uwagi: 	4	0	192	85	\N	\N	\N	\N	t	\N	\N	\N	\N
653	telefon:   fax:  uwagi: 6 łóżek kod 4000 (4 na ul. Bony, 2 na ul. Mickiewicza),\\r\\n2 łóżka kod 4500\\r\\n2 łóżka kod 4580\\r\\n2 łóżka kod 4640\\r\\n2 łóżka kod 4450\\r\\n3 łóżka kod 4420\\r\\n2 łóżka kod 4401\\r\\n2 łóżka kod 4270\\r\\n2 łózka kod 4060	23	0	191	85	\N	\N	\N	\N	t	\N	\N	\N	\N
500	telefon: 326041759  fax:  uwagi: 	19	0	45	86	\N	\N	\N	\N	t	\N	\N	\N	\N
501	telefon: 326041725  fax:  uwagi: 	35	0	1	86	\N	\N	\N	\N	t	\N	\N	\N	\N
680	telefon:   fax:  uwagi: 	1	0	191	86	\N	\N	\N	\N	t	\N	\N	\N	\N
957	telefon: 32 6041700, 6041799, 6041708  fax: 32 6041780 uwagi: 	1	0	198	86	\N	\N	\N	\N	t	\N	\N	\N	\N
502	telefon: 32 6053582  fax: 326053508 uwagi: 	26	0	1	87	\N	\N	\N	\N	t	\N	\N	\N	\N
503	telefon: 32 6053561  fax: 326053508 uwagi: Oddział Chirurgii Ogólnej z Pododdziałem Chirurgii Metabolicznej i Bariatrycznej. W tym 2 łóżka IOM.	28	0	45	87	\N	\N	\N	\N	t	\N	\N	\N	\N
504	telefon: 32 6053569  fax: 326053508 uwagi: W tym 2 łóżka IOM.	19	0	42	87	\N	\N	\N	\N	t	\N	\N	\N	\N
505	telefon: 32 6053573  fax: 32 6053508 uwagi: 15 łóżek dla noworodków + 4 inkubatory	19	0	75	87	\N	\N	\N	\N	t	\N	\N	\N	\N
506	telefon: 32 6053591  fax: 32 6053508 uwagi: W tym 2 łóżka IOM.	27	0	59	87	\N	\N	\N	\N	t	\N	\N	\N	\N
507	telefon: 32 6053591  fax: 32 6053508 uwagi: W tym 2 łóżka IOM.\\r\\nPododdział okulistyki dziecięcej	5	0	60	87	\N	\N	\N	\N	t	\N	\N	\N	\N
682	telefon:   fax:  uwagi: 2 IOM - kod 4500, 2 IOM - kod 4450, 2 IOM - kod 4600, 1 IOm - kod 4220, 2 IOM - kod 4601	9	0	191	87	\N	\N	\N	\N	t	\N	\N	\N	\N
955	telefon: 32 6053501 lub 32 6053508  fax:  uwagi: 	6	0	198	87	\N	\N	\N	\N	t	\N	\N	\N	\N
509	telefon:   fax:  uwagi: 41-219 Sosnowiec, ul. Szpitalna 1\\r\\nOddział Chorób Wewnętrznych I - 30, w tym 2 IOM\\r\\nOddział Chorób Wewnętrznych III - 30, w tym 2 IOM, 1 IT\\r\\n\\r\\nul. Zegadłowicza 3 41-200 Sosnowiec\\r\\nOddział Chorób Wewnętrznych II  - 28, w tym 3 IOM\\r\\n\\r\\n41-219 Sosnowiec, ul. Szpitalna 1\\r\\nOddział Chorób Wewnętrznych III z Pododdziałem Geriatrycznym - 40, w tym 3 IOM	88	0	1	88	\N	\N	\N	\N	t	\N	\N	\N	\N
510	telefon:   fax:  uwagi: Oddział Chirurgii Ogólnej z Otolaryngologią, ul. Zegadłowicza 3, Sosnowiec\\r\\nw tym 2 IOM	45	0	45	88	\N	\N	\N	\N	t	\N	\N	\N	\N
511	telefon:   fax:  uwagi: ul. Zegadłowicza 3\\r\\nw tym 2 IOM	9	0	61	88	\N	\N	\N	\N	t	\N	\N	\N	\N
512	telefon:   fax:  uwagi: ul. Zegadłowicza 3\\r\\nw tym 2 IOM	20	0	64	88	\N	\N	\N	\N	t	\N	\N	\N	\N
513	telefon:   fax:  uwagi: ul. Zegadłowicza 3	40	0	91	88	\N	\N	\N	\N	t	\N	\N	\N	\N
514	telefon:   fax:  uwagi: Oddział ChUO I  - 32 łóżka, w tym 2 IOM.\\r\\nOddział ChUO II - 6 łóżek.	38	0	106	88	\N	\N	\N	\N	t	\N	\N	\N	\N
515	telefon:   fax:  uwagi: ul. Zegadłowicza 3	37	0	66	88	\N	\N	\N	\N	t	\N	\N	\N	\N
517	telefon:   fax:  uwagi: ul. Zegadłowicza 3\\r\\nw tym 2 IOM	79	0	42	88	\N	\N	\N	\N	t	\N	\N	\N	\N
518	telefon:   fax:  uwagi: w tym 25 łóżek dla noworodków, 6 inkubatorów, \\r\\n2 łóżka IOM\\r\\nOddział Noworodków i Wcześniaków. Ul.  Zegadłowicza 3\\r\\n	33	0	75	88	\N	\N	\N	\N	t	\N	\N	\N	\N
519	telefon:   fax:  uwagi: w tym 2 IOM	55	0	22	88	\N	\N	\N	\N	t	\N	\N	\N	\N
520	telefon:   fax:  uwagi: Oddział Skórno-Wenerologiczny	14	0	20	88	\N	\N	\N	\N	t	\N	\N	\N	\N
521	telefon:   fax:  uwagi: w tym 4 IOM	16	0	24	88	\N	\N	\N	\N	t	\N	\N	\N	\N
522	telefon:   fax:  uwagi: 	16	0	8	88	\N	\N	\N	\N	t	\N	\N	\N	\N
695	telefon:   fax:  uwagi: 8 IOM - kod 4000, 2 IOM - kod 4500, 2 IOM - kod 4610, 2 IOM - kod 4640, 2 IOM - kod 4580, 2 IOM - kod 4220, 2 IOM - kod 4450, 4 IOM - kod 4222	24	0	191	88	\N	\N	\N	\N	t	\N	\N	\N	\N
1065	telefon:   fax:  uwagi: Oddział Anestezjologii i Intensywnej Terapii - 6 łóżek	6	0	100	88	\N	\N	\N	\N	t	\N	\N	\N	\N
523	telefon:   fax:  uwagi: w tym 5 IOM	31	0	1	89	\N	\N	\N	\N	t	\N	\N	\N	\N
524	telefon: 324341236 wew. lek. 623, piel. 625  fax:  uwagi: 	5	0	100	89	\N	\N	\N	\N	t	\N	\N	\N	\N
525	telefon:   fax:  uwagi: w tym 2 IOM	20	0	40	89	\N	\N	\N	\N	t	\N	\N	\N	\N
526	telefon:   fax:  uwagi: w tym 2 IOM	30	0	42	89	\N	\N	\N	\N	t	\N	\N	\N	\N
527	telefon:   fax:  uwagi: Oddział Wcześniaków i Noworodków\\r\\n11 łóżek dla noworodków + 4 inkubatory	11	0	75	89	\N	\N	\N	\N	t	\N	\N	\N	\N
528	telefon:   fax:  uwagi: w tym 2 IOM	33	0	45	89	\N	\N	\N	\N	t	\N	\N	\N	\N
776	telefon:   fax:  uwagi: 5 łóżek kod 4000, 2 łóżka kod 4401, 2 łóżka kod 4450, 2 łóżka kod 4500	11	0	191	89	\N	\N	\N	\N	t	\N	\N	\N	\N
529	telefon: 34 3506355  fax: 34 3565870 uwagi: ul Grunwaldzka 9, Lubliniec	35	0	1	91	\N	\N	\N	\N	t	\N	\N	\N	\N
530	telefon: 34 3506350  fax: 34 3565870 uwagi: ul Grunwaldzka 9, Lubliniec	22	0	40	91	\N	\N	\N	\N	t	\N	\N	\N	\N
531	telefon: 34 3514943  fax: 34 3565870 uwagi: ul Grunwaldzka 9, Lubliniec	12	0	75	91	\N	\N	\N	\N	t	\N	\N	\N	\N
532	telefon: 343514938, 343514937, 343514939  fax: 343565870 uwagi: ul Grunwaldzka 9, Lubliniec	4	0	100	91	\N	\N	\N	\N	t	\N	\N	\N	\N
533	telefon: 34 3514940  fax: 34 3565870 uwagi: ul Grunwaldzka 9, Lubliniec	22	0	42	91	\N	\N	\N	\N	t	\N	\N	\N	\N
534	telefon: 34 3514930  fax: 34 3565870 uwagi: ul Grunwaldzka 9, Lubliniec	30	0	45	91	\N	\N	\N	\N	t	\N	\N	\N	\N
648	telefon: 32 2071788; Izba przyjęć dziecięca: 32 2071950, 32 2071919; Izba przyjęć chirurgiczna: 32 2071900, 32 2071901, 32 2071905  fax: 32 2071785 uwagi: 	6	0	192	92	\N	\N	\N	\N	t	\N	\N	\N	\N
536	telefon: 32 2071750  fax: 322071546 uwagi: Oddział Chirurgii i Urologii\\r\\nw tym 4 łóżka IOM	12	0	46	92	\N	\N	\N	\N	t	\N	\N	\N	\N
537	telefon: 32 2071717  fax: 322071546 uwagi: w tym 2 łóżka IOM	12	0	56	92	\N	\N	\N	\N	t	\N	\N	\N	\N
538	telefon: 32 2071808  fax: 322071546 uwagi: 	12	0	108	92	\N	\N	\N	\N	t	\N	\N	\N	\N
539	telefon: 32 2071654  fax: 322071546 uwagi: Oddział Pediatrii, Endokrynologii i Diabetologii Dziecięcej z Pododdziałem Diabetologii Dziecięcej\\r\\nw tym 2 łóżka IOM	50	0	143	92	\N	\N	\N	\N	t	\N	\N	\N	\N
541	telefon: 32 2071700  fax: 322071546 uwagi: 	12	0	16	92	\N	\N	\N	\N	t	\N	\N	\N	\N
542	telefon: 322071882  fax: 322071546 uwagi: w tym 13 IT	13	0	101	92	\N	\N	\N	\N	t	\N	\N	\N	\N
543	telefon: 32 2071893  fax: 322071546 uwagi: w tym 4 łóżka IOM	13	0	54	92	\N	\N	\N	\N	t	\N	\N	\N	\N
544	telefon: 322071855  fax: 322071546 uwagi: 	32	0	13	92	\N	\N	\N	\N	t	\N	\N	\N	\N
545	telefon: 32 2071973  fax: 322071546 uwagi: w tym 2 łóżka IOM	17	0	62	92	\N	\N	\N	\N	t	\N	\N	\N	\N
546	telefon: 32 2071752  fax: 322071546 uwagi: Oddział Intensywnej Terapii i Patologii Noworodka\\r\\nw tym 18 IT	52	0	75	92	\N	\N	\N	\N	t	\N	\N	\N	\N
547	telefon: 32 2071700  fax: 322071546 uwagi: 	12	0	40	92	\N	\N	\N	\N	t	\N	\N	\N	\N
634	telefon: Izba przyjęć dziecięca: 32 2071950, 32 2071919; Izba przyjęć chirurgiczna: 32 2071900, 32 2071965  fax: 32 2071785 uwagi: Stanowiska IT	4	0	72	92	\N	\N	\N	\N	t	\N	\N	\N	\N
649	telefon:   fax:  uwagi: 4501 (Oddział chirurgii i urlologii) - 4\\r\\n4571 (Oddział neurochirurgii) - 2\\r\\n4031 (Oddział pediatrii, endokrynol. i diabetolog.) - 2\\r\\n4561 (Oddział kardiochirurgii dziecięcej) - 4\\r\\n4611 (Oddział laryngologii) - 2\\r\\n4221 (Oddział pediatrii i neurlogii wieku rozwojowego) - 2\\r\\n4249 (Oddział onkologii, hematol. i chemioterapii) - 2\\r\\n	18	0	191	92	\N	\N	\N	\N	t	\N	\N	\N	\N
664	telefon: 32 2071600  fax: 322071546 uwagi: Oddział Pediatrii i Neurologii Wieku Rozwojowego\\r\\nw tym 2 łóżka IOM	43	0	23	92	\N	\N	\N	\N	t	\N	\N	\N	\N
1003	telefon: 322071763  fax: 322071546 uwagi: Oddział Onkologii, Hematologii i Chemioterapii - 32, \\r\\nw tym 2 IOM	32	0	159	92	\N	\N	\N	\N	t	\N	\N	\N	\N
548	telefon: centrala - 327207700, Izba Przyj. 327207774  fax: 322663630 uwagi: brak łóżek IOM	27	0	40	93	\N	\N	\N	\N	t	\N	\N	\N	\N
549	telefon: centr. 327207700, IP 327207774  fax: 322663630 uwagi: brak łóżek IOM, 4 stanowiska patologii noworodka, 2 stanowiska Panda, 2 inkubatory zamknięte, 1 inkubator otwarty	16	0	139	93	\N	\N	\N	\N	t	\N	\N	\N	\N
550	telefon: centr. 327207700, IP 327207774  fax: 322663630 uwagi: brak łóżek IOM, 6 noworodkowych, 1 inkubator	25	0	46	93	\N	\N	\N	\N	t	\N	\N	\N	\N
551	telefon: centr. 327207700, IP 327207774  fax: 322663630 uwagi: Oddział Kliniczny Psychiatrii i Psychoterapii Wieku Rozwojowego	62	0	182	93	\N	\N	\N	\N	t	\N	\N	\N	\N
552	telefon: 327207777, centrala: 327207700  fax: 322663630 uwagi: 	10	0	101	93	\N	\N	\N	\N	t	\N	\N	\N	\N
691	telefon:   fax:  uwagi: 8 stanowisk, w tym 2 duże łóżka	8	0	191	93	\N	\N	\N	\N	t	\N	\N	\N	\N
4	telefon: 322854430  fax: 322854430 uwagi: w tym 2 łóżka IOM	36	0	133	11	\N	\N	\N	\N	t	\N	\N	\N	\N
554	telefon: I-32 3934315 ; II-32 3934325 ; III-32 3934335 ; IV-32 3934345 ; VI-32 3934365 ; VIII-32 3934385 ; 32 3934305 ;   fax: 32 3934141 uwagi: Oddział I Urazowo-Ortopedyczny Męski - 24 ;\\r\\n\\r\\nOddział II Urazowo-Ortopedyczny z Pododdziałem Artroskopii i Chirurgii Kolana - 32 ;\\r\\n\\r\\nOddział III Urazowo-Ortopedyczny Kobiecy - 30 ;\\r\\n\\r\\nOddział IV Urazów i Schorzeń Kręgosłupa i Paraplegii Urazowej - 30 ;\\r\\nOddział VI Chirurgii Rekonstrukcyjnej Ręki - 20 ;\\r\\nOddział VIII Septyczny - 21 ;\\r\\nOddział IX Leczenia Nowotworów i Patologii Kostno-Stawowej - 27.\\r\\n	182	0	106	94	\N	\N	\N	\N	t	\N	\N	\N	\N
555	telefon: 32 3934375  fax: 32 3934141 uwagi: Oddział VII Urazowo-Ortopedyczny Dzieci i Młodzieży	15	0	108	94	\N	\N	\N	\N	t	\N	\N	\N	\N
556	telefon: lek. 323934266, piel. 323934254  fax: 323934141 uwagi: Oddział posiada dodatkowo 8 stanowisk IT Pooperacyjnej	7	0	100	94	\N	\N	\N	\N	t	\N	\N	\N	\N
778	telefon:   fax:  uwagi: 	15	0	191	94	\N	\N	\N	\N	t	\N	\N	\N	\N
557	telefon: 32 3490071  fax: 32 2415529 uwagi: Niemowlęcy i Patologii Noworodka. W tym 2 łóżka IOM.\\r\\n1 łóżko z intensywnym nadzorem, 5 łóżek dla noworodków, 2 inkubatory.	34	0	139	95	\N	\N	\N	\N	t	\N	\N	\N	\N
558	telefon: 32 3490042  fax: 32 2415529 uwagi: W tym 2 łóżka IOM.	24	0	159	95	\N	\N	\N	\N	t	\N	\N	\N	\N
559	telefon: 32 3490081  fax: 32 2415529 uwagi: Pediatryczny dla Dzieci Starszych. W tym 2 łóżka IOM.	32	0	40	95	\N	\N	\N	\N	t	\N	\N	\N	\N
560	telefon: 32 3490020  fax: 32 2415529 uwagi: W tym 2 łóżka IOM.	14	0	23	95	\N	\N	\N	\N	t	\N	\N	\N	\N
561	telefon: 32 3490034  fax: 32 2415529 uwagi: 2 łóżka dla noworodków.	16	0	16	95	\N	\N	\N	\N	t	\N	\N	\N	\N
562	telefon: 32 3490051  fax: 32 2415529 uwagi: W tym 2 łóżka IOM. 2 łóżka dla noworodków.	31	0	62	95	\N	\N	\N	\N	t	\N	\N	\N	\N
563	telefon: 32 3490011  fax: 32 2415529 uwagi: Z ośrodkiem chirurgii małoinwazyjnej dla dzieci. 4 łóżka dla noworodków, 1 inkubator	38	0	46	95	\N	\N	\N	\N	t	\N	\N	\N	\N
564	telefon: 323490070, 323490005, 323490071  fax: 322415529 uwagi: 	8	0	101	95	\N	\N	\N	\N	t	\N	\N	\N	\N
565	telefon: 32 3490030  fax: 32 2415529 uwagi: 2 łóżka dla noworodków.	16	0	60	95	\N	\N	\N	\N	t	\N	\N	\N	\N
566	telefon: 32 3471216  fax: 32 2415529 uwagi: Ortopedii i Traumatologii Narządu Ruchu	22	0	108	95	\N	\N	\N	\N	t	\N	\N	\N	\N
628	telefon: 32 3471227, 32 3471224, 32 3471223  fax: 32 2415529 uwagi: Stanowiska IT	2	0	72	95	\N	\N	\N	\N	t	\N	\N	\N	\N
754	telefon:   fax:  uwagi: 4249- 2\\r\\n4221- 2\\r\\n4403- 2\\r\\n4401- 2\\r\\n4611- 2	10	0	191	95	\N	\N	\N	\N	t	\N	\N	\N	\N
756	telefon: 32 3471227, 32 3471224, 32 3471223  fax: 32 2415529 uwagi: 	4	0	192	95	\N	\N	\N	\N	t	\N	\N	\N	\N
567	telefon: Oddz. II:323440851  fax: Wszystkie oddziały: 327795912 uwagi: ul. Główna 11  41-711 Ruda Śląska\\r\\nOddział II Chorób Wewnętrznych i Diabetologii - 52, w tym 2 IOM\\r\\n	52	0	1	96	\N	\N	\N	\N	t	\N	\N	\N	\N
568	telefon: 323440767  fax: 327795912 uwagi: Oddział Kardiologiczny z Pododdziałem Intensywnego Nadzoru Kardiologicznego, w tym 7 łóżek INK IOM.	28	0	10	96	\N	\N	\N	\N	t	\N	\N	\N	\N
569	telefon: 323440758  fax: 327795912 uwagi: 	30	0	106	96	\N	\N	\N	\N	t	\N	\N	\N	\N
570	telefon: 323440735  fax: 327795912 uwagi: Oddział Chirurgii Ogólnej i Naczyniowej	51	0	45	96	\N	\N	\N	\N	t	\N	\N	\N	\N
571	telefon: 327795936  fax: 327795912 uwagi: 	15	0	59	96	\N	\N	\N	\N	t	\N	\N	\N	\N
572	telefon: 323440739  fax: 327795912 uwagi: w tym 2 IOM	72	0	42	96	\N	\N	\N	\N	t	\N	\N	\N	\N
573	telefon: 323440749  fax: 327795912 uwagi: w tym 20 łóżek noworodków, 9 IOM, 15 inkubatorów	44	0	75	96	\N	\N	\N	\N	t	\N	\N	\N	\N
574	telefon: 323440754  fax: 327795912 uwagi: 	10	0	61	96	\N	\N	\N	\N	t	\N	\N	\N	\N
575	telefon: 327795924  fax: 327795912 uwagi: w tym 1 łóżko IOM	16	0	22	96	\N	\N	\N	\N	t	\N	\N	\N	\N
576	telefon: 327795924  fax: 327795912 uwagi: w tym 4 łóżka IOM	16	0	24	96	\N	\N	\N	\N	t	\N	\N	\N	\N
577	telefon: 323440835  fax: 327795912 uwagi: Oddział Chorób Płuc z Pododdziałem Chemioterapii. \\r\\nUl. Główna 11	30	0	133	96	\N	\N	\N	\N	t	\N	\N	\N	\N
578	telefon: 323440825  fax: 327795912 uwagi: Ul. Główna 11. Ruda Śl., w tym 1 łóżko IOM.	20	0	40	96	\N	\N	\N	\N	t	\N	\N	\N	\N
579	telefon: 323440850  fax: 327795912 uwagi: Ul. Główna 11, Ruda Śl.	30	0	66	96	\N	\N	\N	\N	t	\N	\N	\N	\N
580	telefon: 323440868  fax: 327795912 uwagi: Ul. Główna 11, Ruda Śl.	15	0	105	96	\N	\N	\N	\N	t	\N	\N	\N	\N
736	telefon:   fax:  uwagi: 3 łóżka kod 4000 (po 1 na każdym oddziale), 2 łóżka kod 4450, 1 łóżko kod 4220, 4 łóżka kod 4222, 1 łóżko kod 4401.	11	0	191	96	\N	\N	\N	\N	t	\N	\N	\N	\N
1007	telefon: 32 7275803  fax: 32 7275807 uwagi: 	8	0	100	96	\N	\N	\N	\N	t	\N	\N	\N	\N
581	telefon: 32 621 20 96  fax:  uwagi: W tym 4 łóżka IOM	46	0	1	97	\N	\N	\N	\N	t	\N	\N	\N	\N
582	telefon:   fax:  uwagi: W tym 4 łóżka IOM.	27	0	45	97	\N	\N	\N	\N	t	\N	\N	\N	\N
583	telefon:   fax:  uwagi: 	30	0	106	97	\N	\N	\N	\N	t	\N	\N	\N	\N
584	telefon:   fax:  uwagi: 	8	0	61	97	\N	\N	\N	\N	t	\N	\N	\N	\N
585	telefon:   fax:  uwagi: 	8	0	59	97	\N	\N	\N	\N	t	\N	\N	\N	\N
586	telefon:   fax:  uwagi: W tym 2 łóżka IOM	24	0	22	97	\N	\N	\N	\N	t	\N	\N	\N	\N
587	telefon: 326212176 (lek.), 326212175 (piel.), 326212000 (centrala)  fax:  uwagi: Dializy - TAK	8	0	100	97	\N	\N	\N	\N	t	\N	\N	\N	\N
590	telefon:   fax:  uwagi: Oddział pediatryczny i alergologiczny	20	0	40	97	\N	\N	\N	\N	t	\N	\N	\N	\N
591	telefon:   fax:  uwagi: W tym 4 łóżka IOM.	20	0	24	97	\N	\N	\N	\N	t	\N	\N	\N	\N
592	telefon:   fax:  uwagi: ul. Krasińskiego 43, Dąbrowa Górnicza	60	0	66	97	\N	\N	\N	\N	t	\N	\N	\N	\N
632	telefon: 32 2622435, 32 6212112  fax:  uwagi: Stanowiska IT	3	0	72	97	\N	\N	\N	\N	t	\N	\N	\N	\N
749	telefon:   fax:  uwagi: 4000- 4\\r\\n4500- 4\\r\\n4220- 2\\r\\n4222- 4	14	0	191	97	\N	\N	\N	\N	t	\N	\N	\N	\N
751	telefon: 32 2622435, 32 6212112  fax:  uwagi: 	5	0	192	97	\N	\N	\N	\N	t	\N	\N	\N	\N
818	telefon:   fax:  uwagi: wew. I (4000)- 2 łóżka IOM; wew. II (4000) - 2 łóżka IOM; ginek. (4450) - 2 łóżka IOM; dziecięcy (4401) - 2 łóżka IOM; chir. (4500) - 2 łóżka IOM; chir. uraz. (4580) - 2 łóżka IOM	12	0	191	98	\N	\N	\N	\N	t	\N	\N	\N	\N
823	telefon:   fax:  uwagi: 2 łóżka kod 4272	2	0	191	11	\N	\N	\N	\N	t	\N	\N	\N	\N
594	telefon: 33 440 18 38  fax: 33 8612995 uwagi: Oddział Chorób Wewnętrznych z pododdziałem\\r\\nnefrologii	32	0	1	98	\N	\N	\N	\N	t	\N	\N	\N	\N
595	telefon: 33 440 18 51  fax: 33 8612995 uwagi: W tym 2 łóżka IOM.	22	0	42	98	\N	\N	\N	\N	t	\N	\N	\N	\N
596	telefon: 33 440 18 24  fax: 33 8612995 uwagi: W tym 2 łóżko IOM	21	0	40	98	\N	\N	\N	\N	t	\N	\N	\N	\N
597	telefon: 33 440 18 53  fax: 33 8612995 uwagi: W tym 2 łóżka IOM.	32	0	45	98	\N	\N	\N	\N	t	\N	\N	\N	\N
598	telefon: 33 440  18 63  fax: 33 8612995 uwagi: W tym 2 łóżka IOM.	38	0	106	98	\N	\N	\N	\N	t	\N	\N	\N	\N
599	telefon: 33 440 18 22  fax: 33 8612995 uwagi: w tym 6 inkubatorów	21	0	75	98	\N	\N	\N	\N	t	\N	\N	\N	\N
600	telefon: 33 440 18 29  fax: 338612995 uwagi: 	6	0	100	98	\N	\N	\N	\N	t	\N	\N	\N	\N
1059	telefon: (34) 315-82-02  fax:  uwagi: 	5	0	100	99	\N	\N	\N	\N	t	\N	\N	\N	\N
601	telefon: Oddz. I: 343158252; Oddz. II: 343158228  fax:  uwagi: Oddział Chorób Wewnętrznych - 53, w tym 2 łóżka IOM.\\r\\nOddział Chorób Wewnętrznych II - zakończenie działalności z dniem 30.06.2015 r.	53	0	1	99	\N	\N	\N	\N	t	\N	\N	\N	\N
602	telefon: 343158249  fax:  uwagi: W tym 1 łóżko IOM.	28	0	40	99	\N	\N	\N	\N	t	\N	\N	\N	\N
603	telefon: 343158262  fax:  uwagi: 	35	0	42	99	\N	\N	\N	\N	t	\N	\N	\N	\N
604	telefon: 343158272  fax:  uwagi: W tym 1 łóżko IOM.	26	0	45	99	\N	\N	\N	\N	t	\N	\N	\N	\N
605	telefon: 343158268 (ordyn.), 343158216 (piel.)  fax:  uwagi: 16 łóżek dla noworodków + 4 inkubatory	20	0	75	99	\N	\N	\N	\N	t	\N	\N	\N	\N
606	telefon: 343158250  fax:  uwagi: W tym 1 łóżko IOM.	21	0	106	99	\N	\N	\N	\N	t	\N	\N	\N	\N
854	telefon:   fax:  uwagi: 2 łóżka kod 4000, 1 łóżko kod 4401, 1 łóżko kod 4450, 1 łóżko kod 4500, 1 łóżko kod 4580.	6	0	191	99	\N	\N	\N	\N	t	\N	\N	\N	\N
608	telefon:   fax:  uwagi: SP ZOZ Zespół Szpitali Miejskich ul. Strzelców Bytomskich 11, 41-500 Chorzów	20	0	10	100	\N	\N	\N	\N	t	\N	\N	\N	\N
761	telefon:   fax:  uwagi: 	1	0	191	100	\N	\N	\N	\N	t	\N	\N	\N	\N
924	telefon:   fax:  uwagi: W tym: 1 łóżko IOM, 4 łóżka INK.	5	0	14	100	\N	\N	\N	\N	t	\N	\N	\N	\N
609	telefon:   fax:  uwagi: Szpital Miejski im. dr. W. Biegańskiego ul. Mickiewicza 12, 42-200 Częstochowa	20	0	10	101	\N	\N	\N	\N	t	\N	\N	\N	\N
660	telefon:   fax:  uwagi: 	1	0	191	101	\N	\N	\N	\N	t	\N	\N	\N	\N
922	telefon:   fax:  uwagi: W tym: 1 łóżko IOM, 10 łóżek INK	11	0	14	101	\N	\N	\N	\N	t	\N	\N	\N	\N
610	telefon:   fax:  uwagi: SP Szpital Miejski ul. Szpitalna 1, 41-219 Sosnowiec	12	0	10	102	\N	\N	\N	\N	t	\N	\N	\N	\N
693	telefon:   fax:  uwagi: 	1	0	191	102	\N	\N	\N	\N	t	\N	\N	\N	\N
923	telefon:   fax:  uwagi: W tym: 1 łóżko IOM, 4 łóżka INM.	5	0	14	102	\N	\N	\N	\N	t	\N	\N	\N	\N
611	telefon:   fax:  uwagi: Oddział Psychiatryczny I - 40\\r\\nOddział Psychiatryczny II - 40\\r\\nOddział Psychiatryczny III - 50\\r\\nOddział Psychiatryczny IV zaburzeń afektywnych i nerwicowych - 50	180	0	66	103	\N	\N	\N	\N	t	\N	\N	\N	\N
612	telefon:   fax:  uwagi: ul. Korczaka 27, 40-340 Katowice\\r\\nOddział Terapii Uzależnień od Alkoholu - 20\\r\\n\\r\\nul. Katowicka 21, 43-349 Katowice\\r\\nOddział Terapii Uzależnień od Alkoholu - 38	58	0	95	103	\N	\N	\N	\N	t	\N	\N	\N	\N
684	telefon:   fax:  uwagi: 	1	0	191	103	\N	\N	\N	\N	t	\N	\N	\N	\N
613	telefon: 32 2776162  fax: 32 2717311 uwagi: I Oddział Chorób Wewnętrznych - 60\\r\\nw tym 4 IOM\\r\\n	52	0	1	104	\N	\N	\N	\N	t	\N	\N	\N	\N
614	telefon: 32 2776157  fax: 32 2717311 uwagi: 	36	0	45	104	\N	\N	\N	\N	t	\N	\N	\N	\N
615	telefon: 32 2776152  fax: 32 2717311 uwagi: 	50	0	106	104	\N	\N	\N	\N	t	\N	\N	\N	\N
616	telefon: 32 2776171  fax: 32 2717311 uwagi: W tym 5 łóżka IOM.\\r\\nZ Pododdziałem Udarowym - przygotowany do leczenia udarów w ostrej fazie (lecz. trombolityczne).	28	0	22	104	\N	\N	\N	\N	t	\N	\N	\N	\N
618	telefon: 322776148, 322776150 wew.149, 150, 151, 311  fax: 322717311 uwagi: Oddział Anestezjologii i Intensywnej Terapii Medycznej - 10 łóżek, w tym 10 IT	10	0	100	104	\N	\N	\N	\N	t	\N	\N	\N	\N
619	telefon: 32 2776309  fax: 32 2717311 uwagi: Odcinek Położniczo-Ginekologiczny - 31, Odcinek Patologii Ciąży i Endokrynologii Ginekologicznej - 25, Pododdział Ginekologii Onkologicznej i Endoskopowego Leczenia Endometriozy - 18.\\r\\npl. Traugutta 6, Zabrze	74	0	42	104	\N	\N	\N	\N	t	\N	\N	\N	\N
620	telefon: 32 2776330  fax: 32 2717311 uwagi: Łóżka dla noworodków - 31, łóżka intensywnej terapii noworodka - 3, łóżka opieki ciągłej dla noworodków po sztucznej wentylacji - 3, łózka opieki pośredniej dla noworodków niewymagających wsparcia oddechowego - 3. \\r\\npl. Traugutta 6, Zabrze	40	0	75	104	\N	\N	\N	\N	t	\N	\N	\N	\N
709	telefon:   fax:  uwagi: 4 łóżka kod 4000, 2 łóżka kod 4220, 2 łóżka kod 4450, 6 łóżek kod 4421	11	0	191	104	\N	\N	\N	\N	t	\N	\N	\N	\N
1066	telefon:   fax:  uwagi: 	0	0	192	104	\N	\N	\N	\N	t	\N	\N	\N	\N
621	telefon: 338284007  fax: 338151630 uwagi: w tym 2 łóżka IOM	24	0	139	105	\N	\N	\N	\N	t	\N	\N	\N	\N
622	telefon: 338284014  fax: 338151630 uwagi: Oddział Pediatryczny z pododdziałami: gastroenterologicznym i ogólno pediatrycznym\\r\\nw tym 2 łóżka IOM	40	0	40	105	\N	\N	\N	\N	t	\N	\N	\N	\N
623	telefon: 338284032  fax: 338151630 uwagi: w tym 2 łóżka IOM	9	0	62	105	\N	\N	\N	\N	t	\N	\N	\N	\N
624	telefon: 338284022  fax: 338151630 uwagi: w tym 2 łóżka IOM	22	0	46	105	\N	\N	\N	\N	t	\N	\N	\N	\N
625	telefon: 338284036, 338284034, 338124809  fax: 338151630 uwagi: 	5	0	101	105	\N	\N	\N	\N	t	\N	\N	\N	\N
732	telefon:   fax:  uwagi: 	5	0	191	105	\N	\N	\N	\N	t	\N	\N	\N	\N
1034	telefon: 338284015  fax: 338151630 uwagi: 	30	0	182	105	\N	\N	\N	\N	t	\N	\N	\N	\N
641	telefon: 32 4592431/32/33 (lek.) 32 4592417/418 (piel.) 32 4592517 (sek.)  fax: 32 4578140 uwagi: Oddział Pediatryczny - 30	30	0	40	110	\N	\N	\N	\N	t	\N	\N	\N	\N
791	telefon:   fax:  uwagi: Oddział chorób wewnętrznych (4000) - 2 łóżka IOM\\r\\nOddział pediatryczny (4401) - 4 łóżka IOM\\r\\nOddział ginekologiczno - położniczy - 2 łóżka IOM\\r\\n	10	0	191	110	\N	\N	\N	\N	t	\N	\N	\N	\N
807	telefon: 32 2651644 wew. 253  fax: 32 2651430 uwagi: Oddział Chorób wewnętrznych I - 58 łóżek, w tym: IOM - 4.\\r\\nOddział Chorób Wewnętrznych II z Pododdziałem Szybkiej Diagnostyki Kardilogicznej - 51 łóżek, w tym: IOM - 4	109	0	1	112	\N	\N	\N	\N	t	\N	\N	\N	\N
805	telefon:   fax:  uwagi: 4000 (Oddział chor. wew II) - 4 IOM\\r\\n4580 (Oddział uraz - ortop) - 2 IOM\\r\\n4610 (Oddział otolaryngol.) - 2 IOM\\r\\n4220 (Oddział neurologiczny) - 1 IOM\\r\\n4222 (Oddział udarowy) - 4 IOM\\r\\n4401 (Oddział dziecięcy) - 2 IOM	15	0	191	112	\N	\N	\N	\N	t	\N	\N	\N	\N
809	telefon: 32 2651644 wew.239  fax: 32 2651430 uwagi: 19 łóżek, w tym 2 IOM.	19	0	106	112	\N	\N	\N	\N	t	\N	\N	\N	\N
810	telefon: 32 2651644 wew.239  fax: 32 2651430 uwagi: w tym 2 IOM	14	0	61	112	\N	\N	\N	\N	t	\N	\N	\N	\N
811	telefon: 32 2651644 wew.255  fax: 32 2651430 uwagi: 14 łóżek, w tym 1 IOM.	14	0	22	112	\N	\N	\N	\N	t	\N	\N	\N	\N
812	telefon: 32 2651644 wew.255  fax: 32 2651430 uwagi: 18 łóżek, w tym 4 IOM.	18	0	24	112	\N	\N	\N	\N	t	\N	\N	\N	\N
813	telefon: 32 2651644 wew. 285  fax: 32 2651430 uwagi: Oddział dla nerwowo i psychicznie chorych.	60	0	66	112	\N	\N	\N	\N	t	\N	\N	\N	\N
814	telefon: 32 2651644 wew. 208  fax: 32 2651430 uwagi: 20 miejsc dla pacjentów dziennych	20	0	105	112	\N	\N	\N	\N	t	\N	\N	\N	\N
815	telefon: 32 2651644 wew.228  fax: 32 2651430 uwagi: Oddział dziecięcy - 30 łóżek, w tym 2 IOM.	30	0	40	112	\N	\N	\N	\N	t	\N	\N	\N	\N
1004	telefon: 322651644  fax: 322651430 uwagi: w tym 2 łóżka IOM	30	0	45	112	\N	\N	\N	\N	t	\N	\N	\N	\N
1021	telefon: 32 265-17-47 wew 323 - dyżurka lekarska   fax:  uwagi: 	5	0	100	112	\N	\N	\N	\N	t	\N	\N	\N	\N
847	telefon: 343175050  fax: brak uwagi: Oddział chorob wewnętrznych z pododdziałem geriatrycznym - 28 łóżek, w tym 2 łóżka IOM, 2 IT	30	0	1	114	\N	\N	\N	\N	t	\N	\N	\N	\N
848	telefon:   fax:  uwagi: 2 łóżka kod 4000	2	0	191	114	\N	\N	\N	\N	t	\N	\N	\N	\N
880	telefon: Oddz. I: 32 3598729, Oddz.II: 32 3598694, Oddz.III: 32 3598690, Oddz. Elektrokard.: 32 3598893  fax: Oddz.I: 32 2523658, Oddz.II: 32 3598694, Oddz.III: 32 3598690, Oddz. Elekrokard.: 32 3598893 uwagi: Oddz. I - 46 łóżek,\\r\\nOddz. II - 48 łóżek\\r\\nOddz. III - 46 łóżek\\r\\nOddz. Elektrokardiologii. - 39 łóżek.	179	0	10	118	\N	\N	\N	\N	t	\N	\N	\N	\N
881	telefon: 32 3598644  fax: 32 2526093 uwagi: w tym 16 łóżka IOM	74	0	53	118	\N	\N	\N	\N	t	\N	\N	\N	\N
882	telefon: 32 3598648, 32 3598659  fax: 32 3598594 uwagi: w tym IT: 20 łóżka\\r\\nDializy - TAK.	20	0	100	118	\N	\N	\N	\N	t	\N	\N	\N	\N
883	telefon: 32 4796065  fax:  uwagi: 	12	0	14	118	\N	\N	\N	\N	t	\N	\N	\N	\N
884	telefon:   fax:  uwagi: 14 łóżek kod 4100 (6 Oddz. I, 2 Oddz. II i 6 Oddz. III), 32 łóżka kod 4560.	46	0	191	118	\N	\N	\N	\N	t	\N	\N	\N	\N
1031	telefon: 32 3598654  fax: 324796011 uwagi: 	3	0	192	118	\N	\N	\N	\N	t	\N	\N	\N	\N
894	telefon: 343252611 (wew. 267 - pok. lek., wew. 264 - dyż pielęgn.)  fax: 343225555 (Izba Przyjęć) uwagi: Oddział Otolaryngologii i Onkologii Laryngologicznej,\\r\\nw tym 2 IOM	21	0	61	119	\N	\N	\N	\N	t	\N	\N	\N	\N
889	telefon: 343252611 (wew. 241 - pok. lek.; wew. 240 - dyż. pielęgn.)  fax: 343225555 (Izba Przyjęć) uwagi: w tym 2 IOM	21	0	22	119	\N	\N	\N	\N	t	\N	\N	\N	\N
887	telefon: 343252611 (wew.160 lub 346 - dyż. piel)  fax: 343225555 (Izba Przyjęć) uwagi: w tym 6 IOM	19	0	24	119	\N	\N	\N	\N	t	\N	\N	\N	\N
892	telefon: 343252611 (wew. 272 - pok.lek. i dyz. piel.)  fax: 343225555 (Izba Przyjęć) uwagi: 	24	0	111	119	\N	\N	\N	\N	t	\N	\N	\N	\N
900	telefon: 343252611 (wew. 235 - pok. lek.; wew. 136 - dyż. pielęgn.)  fax: 343252611 (wew. 171 - pok. sekret. med. pn-pt 7:00-14:35); 343225555 (Izba Przyjęć) uwagi: Oddział psychiatryczny dla chorych na gruźlicę i inne choroby zakaźne	15	0	190	119	\N	\N	\N	\N	t	\N	\N	\N	\N
899	telefon: 343252611 (wew. 235 - pok. lek.; wew. 148 - dyż pielęgn.)  fax: 343252611 (wew. 171 - pok. sekret. med. pn-pt 7:00-14:35); 343225555 (Izba Przyjęć) uwagi: 	25	0	91	119	\N	\N	\N	\N	t	\N	\N	\N	\N
897	telefon: 343252611 (wew. 235 - pok.lek.; wew. 168 - dyż.pielęgn.)  fax: 343225555 (Izba Przyjęć) uwagi: 	25	0	66	119	\N	\N	\N	\N	t	\N	\N	\N	\N
896	telefon: 343252611 (wew. 233 - pok. lek.; wew. 252, 254 - dyż pielęgn.)  fax: 343252611 (wew. 233 - pok. lek.); 343225555 (Izba Przyjęć) uwagi: w tym 2 łóżka IOM	62	0	1	119	\N	\N	\N	\N	t	\N	\N	\N	\N
898	telefon: 343252611 (wew. 235 - pok. lek.; wew. 147 - dyż. pielęgn.)  fax: 343225555 (Izba Przyjęć) uwagi: 25 miejsc dziennego pobytu.\\r\\nOddział czynny od pon. do pt. w godz. 7:00 - 14:35	25	0	105	119	\N	\N	\N	\N	t	\N	\N	\N	\N
891	telefon: 343252611 (wew. 261 - pok. lek.; wew. 260 - dyż. pielęgn.)  fax: 343225555 (Izba Przyjęć) uwagi: w tym 2 łóżka IOM + 1 inkubator	31	0	40	119	\N	\N	\N	\N	t	\N	\N	\N	\N
886	telefon: 343252611 (wew. 298 - pok. lek.; wew. 214 - dyż. pielęgn.)  fax: 343225555 (Izba Przyjęć) uwagi: w tym 10 IOM (spełniają kryteria stanowisk IT)	10	0	100	119	\N	\N	\N	\N	t	\N	\N	\N	\N
993	telefon: 34 3252611 wew. 224 (p. lekarzy); wew. 137 (dyż. piel.)  fax: 34 3225555 (Izba Przyjęć) uwagi: 	30	0	133	119	\N	\N	\N	\N	t	\N	\N	\N	\N
994	telefon: 34 3252611 wew. 311  fax: 34 3225555 (Izba Przyjęć) uwagi: 	21	0	33	119	\N	\N	\N	\N	t	\N	\N	\N	\N
995	telefon: 34 3252611 wew. 297 (dyż. piel.)  fax: 34 3225555 (Izba Przyjęć) uwagi: 	28	0	88	119	\N	\N	\N	\N	t	\N	\N	\N	\N
1000	telefon:   fax:  uwagi: w tym 2 IOM w oddziale dziecięcym	22	0	191	119	\N	\N	\N	\N	t	\N	\N	\N	\N
907	telefon: 34 327 91 75 wew. 281  fax:  uwagi: 	34	0	1	123	\N	\N	\N	\N	t	\N	\N	\N	\N
908	telefon: 34 3279175 wew. 214  fax:  uwagi: z pododdziałem neonatologii.\\r\\n	38	0	42	123	\N	\N	\N	\N	t	\N	\N	\N	\N
909	telefon: 34 3279175 wew. 292  fax:  uwagi: 	35	0	45	123	\N	\N	\N	\N	t	\N	\N	\N	\N
910	telefon: 34 3279175 wew. 289  fax:  uwagi: 	25	0	106	123	\N	\N	\N	\N	t	\N	\N	\N	\N
911	telefon: 34 3279175 wew. 214  fax:  uwagi: 	15	0	40	123	\N	\N	\N	\N	t	\N	\N	\N	\N
1005	telefon: 343729175 wew. 245 lub 785056702  fax: 343279175 wew. 265 (Izba Przyjęć) uwagi: w tym 8 IT	8	0	100	123	\N	\N	\N	\N	t	\N	\N	\N	\N
1	telefon:   fax:  uwagi: Oddział Chorób Płuc i Chemioterapii Nowotworów - 25, w tym 1 IOM	25	0	133	10	\N	\N	\N	\N	t	\N	\N	\N	\N
2	telefon: 32 331 99 11 (dyżurka lekarska); 32 331 99 13 (dyżurka pielęgniarska)  fax:  uwagi: Oddział rehabilitacji oddechowej	25	0	134	10	\N	\N	\N	\N	t	\N	\N	\N	\N
3	telefon: 32 331 99 33 (dyżurka pielęgniarska); 32 331 99 32 (dyżurka lekarska)  fax:  uwagi: Leczenie gruźlicy - oddzial zamkniety - 43 łóżka\\r\\npulmunologia i chemioterapia - 24 łóżka \\r\\nw tym 1 stanowisko OIOM 	67	0	31	10	\N	\N	\N	\N	t	\N	\N	\N	\N
832	telefon:   fax:  uwagi: 1 łóżko OIOM - 4270	1	0	191	10	\N	\N	\N	\N	t	\N	\N	\N	\N
5	telefon: 32 6741111  fax: 32 6741471 uwagi: w tym łóżka IOM - 2	36	0	31	12	\N	\N	\N	\N	t	\N	\N	\N	\N
816	telefon:   fax:  uwagi: 2 IOM - kod 4270	2	0	191	12	\N	\N	\N	\N	t	\N	\N	\N	\N
6	telefon: Oddz. I: 323319250, Oddz. II: 323319270  fax: Oddz. I i II: 323319353 uwagi: Oddział Chorób Wewnetrznych I  - 44, w tym 2 IOM\\r\\nOddział Chorób Wewnetrznych II - 48 	92	0	1	13	\N	\N	\N	\N	t	\N	\N	\N	\N
8	telefon: 323319260  fax: 323319386 uwagi: 	39	0	45	13	\N	\N	\N	\N	t	\N	\N	\N	\N
9	telefon: 323319330  fax: 323319330 uwagi: 	49	0	42	13	\N	\N	\N	\N	t	\N	\N	\N	\N
10	telefon: 323319245  fax: 323319330 uwagi: 18 łóżek, w tym 6 inkubatorów	18	0	75	13	\N	\N	\N	\N	t	\N	\N	\N	\N
830	telefon:   fax:  uwagi: 2 łóżka kod 4000 (Oddz. I) 	2	0	191	13	\N	\N	\N	\N	t	\N	\N	\N	\N
869	telefon: 323319290  fax: 323319290 uwagi: 	9	0	110	13	\N	\N	\N	\N	t	\N	\N	\N	\N
11	telefon: 327808706  fax: 327803379 uwagi: W tym 2 łóżka IOM.	26	0	40	14	\N	\N	\N	\N	t	\N	\N	\N	\N
12	telefon: 327808714  fax: 327803379 uwagi: W tym 1 łóżko IT i 4 łóżka IOM.	32	0	10	14	\N	\N	\N	\N	t	\N	\N	\N	\N
747	telefon:   fax:  uwagi: 2 łóżka kod 4000, 4 łóżka kod 4100, 2 łóżka kod 4401.	9	0	191	14	\N	\N	\N	\N	t	\N	\N	\N	\N
873	telefon: 327808721  fax: 327803379 uwagi: Oddział Internistyczny\\r\\nw tym 2 łóżka IOM	46	0	1	14	\N	\N	\N	\N	t	\N	\N	\N	\N
13	telefon: 32 3183351  fax: 32 2222330 uwagi: w tym 2 IOM	36	0	1	15	\N	\N	\N	\N	t	\N	\N	\N	\N
14	telefon: 32 3183365  fax: 32 2222330 uwagi: 	15	0	59	15	\N	\N	\N	\N	t	\N	\N	\N	\N
15	telefon: 32 3183320  fax: 32 2222330 uwagi: W tym 2 łóżka IOM.	18	0	45	15	\N	\N	\N	\N	t	\N	\N	\N	\N
16	telefon: 32 3183290  fax: 32 2222330 uwagi: W tym 2 łóżka IOM.	20	0	106	15	\N	\N	\N	\N	t	\N	\N	\N	\N
768	telefon:   fax:  uwagi: 2 łóżka IOM - oddz. 4000\\r\\n3 łóżka IOM - oddz. 4580\\r\\n2 łóżka IOM - oddz. 4500	7	0	191	15	\N	\N	\N	\N	t	\N	\N	\N	\N
662	telefon:   fax:  uwagi: 	0	0	191	20	\N	\N	\N	\N	t	\N	\N	\N	\N
26	telefon:   fax:  uwagi: 	30	0	42	21	\N	\N	\N	\N	t	\N	\N	\N	\N
797	telefon:   fax:  uwagi: 	0	0	191	22	\N	\N	\N	\N	t	\N	\N	\N	\N
38	telefon: 324291866  fax: 324228272 uwagi: 	20	0	20	24	\N	\N	\N	\N	t	\N	\N	\N	\N
228	telefon:   fax:  uwagi: w tym 2 IOM	16	0	22	51	\N	\N	\N	\N	t	\N	\N	\N	\N
449	telefon: 32 3704287  fax: 32 3704292 uwagi: 	15	0	16	76	\N	\N	\N	\N	t	\N	\N	\N	\N
1030	telefon: 338520511 wew. 334, 335  fax: 338520289 uwagi: Uruchomienie w dn. 12.11.2018 r.	5	0	14	124	\N	\N	\N	\N	t	\N	\N	\N	\N
999	telefon: 338520511 wew. 334, 335  fax: 33 8520289 uwagi: W tym 1 stanowisko IT.	15	0	10	124	\N	\N	\N	\N	t	\N	\N	\N	\N
1073	telefon: 32 264 53 33 wew. 103 (dyżurka lekarska), 32 264 53 33 wew. 104 (dyżurka pielęgniarska)  fax:  uwagi: ul. Szpitalna 13\\r\\n41-300 Dąbrowa Górnicza	15	0	205	127	\N	\N	\N	\N	t	\N	\N	\N	\N
1072	telefon: 32 751 91 81 wew. 15 (dyżurka lekarska), 32 751 91 81 wew. 14 (dyżurka pielęgniarska)  fax:  uwagi: ul. Józefa Chełmońskiego 28\\r\\n43-600 Jaworzno	15	0	204	127	\N	\N	\N	\N	t	\N	\N	\N	\N
1070	telefon: 32 621 26 32 (dyżurka lekarska); 32 621 26 30 (dyżurka pielęgniarska)  fax:  uwagi: Siemianowice Śląskie - ul. Szpitalna 6	26	0	15	127	\N	\N	\N	\N	t	\N	\N	\N	\N
1002	telefon: 32 621 26 28 (dyżurka lekarska);  32 621 26 22 (dyżurka lekarska);  32 621 26 26 (dyżurka pielęgniarska);  32 621 26 21 (dyżurka pielęgniarska)  fax:  uwagi: Oddział Anestezjologii i Intensywnej Terapii	24	0	100	127	\N	\N	\N	\N	t	\N	\N	\N	\N
1022	telefon: 32 111 42 80 (odc. I); 32 111 42 81 (odc. II); 32 111 42 83  fax: 321114203 uwagi: w tym 1 IT, 1 IOM	34	0	64	128	\N	\N	\N	\N	t	\N	\N	\N	\N
1025	telefon:   fax:  uwagi: 	0	0	191	128	\N	\N	\N	\N	t	\N	\N	\N	\N
1026	telefon: (32)22659 77-80 wew. 233 (pok. lekarzy); wew. 232 (kierownik oddziału); wew. 234 (pielęgniarka oddziałowa)  fax: 32 226 59 75 uwagi: Oddział Internistyczny	25	0	1	130	\N	\N	\N	\N	t	\N	\N	\N	\N
1027	telefon: (32)226-59-77/80 wew 230 (pok. lekarzy); (32)226-59-77/80 wew 231 (pielęgniarka oddziałowa)  fax: 32 226 59 75 uwagi: Oddział ortopedii i rekonstrukcji narządu ruchu z pododdziałem chirurgii kręgosłupa	26	0	106	130	\N	\N	\N	\N	t	\N	\N	\N	\N
1028	telefon: 32/226 59 77-80 wew 219 (pok. learzy); 32/226-59-77/80 wew. 221 (pielęgniarka oddziałowa)  fax: 32 226 59 75 uwagi: 	26	0	45	130	\N	\N	\N	\N	t	\N	\N	\N	\N
1029	telefon: (32)226-59-77/80 wew. 252  fax:  uwagi: Oddział laryngologiczny	7	0	61	130	\N	\N	\N	\N	t	\N	\N	\N	\N
1036	telefon: 32 202 55 21  fax: 32 202 55 21 wew. 333 uwagi: W tym 2 łózka IOM.	21	0	42	131	\N	\N	\N	\N	t	\N	\N	\N	\N
1037	telefon:   fax:  uwagi: 	2	0	191	131	\N	\N	\N	\N	t	\N	\N	\N	\N
1040	telefon: 32 707 42 35  fax:  uwagi: 	17	0	48	133	\N	\N	\N	\N	t	\N	\N	\N	\N
1041	telefon: 32 707 42 21  fax:  uwagi: 	11	0	59	133	\N	\N	\N	\N	t	\N	\N	\N	\N
1042	telefon: 32 707 42 38  fax:  uwagi: 	9	0	45	133	\N	\N	\N	\N	t	\N	\N	\N	\N
1043	telefon: 32 707 42 38  fax:  uwagi: 	8	0	106	133	\N	\N	\N	\N	t	\N	\N	\N	\N
1045	telefon: 32 707 42 25  fax:  uwagi: 6 stanowisk IT	6	0	100	133	\N	\N	\N	\N	t	\N	\N	\N	\N
1044	telefon:   fax:  uwagi: 4 IOM - kod 4530\\r\\n1 OIM - kod 4600	5	0	191	133	\N	\N	\N	\N	t	\N	\N	\N	\N
1052	telefon: Komórka udarowa 530 628 873  fax:  uwagi: 	16	0	24	134	\N	\N	\N	\N	t	\N	\N	\N	\N
1056	telefon: tel. kontaktowy do oddziału 32/7832600, 32/7832613  fax:  uwagi: joanna.niedzwiecka@wcm-wodzislaw.pl - Pielęgniarka Zarządzająca	15	0	48	154	\N	\N	\N	\N	t	\N	\N	\N	\N
410	telefon: 32 611 53 00 wewn. 316 (pielęgniarki); wewn. 317 (lekarze); wewn. 315 (sekretariat)  fax:  uwagi: w tym 7 łóżek intensywnej terapii; dializy - TAK	7	0	100	73	\N	\N	\N	\N	t	\N	\N	\N	1
411	telefon: 32 611 53 00 wewn. 331 (pielęgniarki); wewn. 332 (lekarze); wewn. 330 (sekretariat)  fax:  uwagi: 	20	0	45	73	\N	\N	\N	\N	t	\N	\N	\N	1
412	telefon: 32 611 53 00 wewn. 351 (pielegniarki); wewn. 352 (lekarze); wewn. 350 (sekretariat)  fax:  uwagi: 	40	0	1	73	\N	\N	\N	\N	t	\N	\N	\N	1
413	telefon: 32 611 53 00 wewn. 311 (pielęgniarki); wewn. 320 (sekretariat)  fax:  uwagi: 	12	0	8	73	\N	\N	\N	\N	t	\N	\N	\N	1
414	telefon: 32 611 53 00 wewn. 321 (pielęgniarki); wewn. 322 (lekarze); wewn. 320 (sekretariat)  fax:  uwagi: 	20	0	42	73	\N	\N	\N	\N	t	\N	\N	\N	1
416	telefon: 32 611 53 00 wewn. 326 (pielęgniarki); wewn. 325 (lekarze)  fax:  uwagi: w tym łóżek dla noworodków - 2; inkubatorów - 2; łóżek IT noworodka - 2; łóżek opieki ciągłej dla noworodków po sztucznej wentylacji - 2; łóżek opieki pośredniej dla noworodków niewymagających wsparcia oddechowego - 2.	10	0	75	73	\N	\N	\N	\N	t	\N	\N	\N	1
417	telefon: 32 611 53 00 wewn. 371, 373 (pielęgniarki); wewn. 372 (lekarze); wewn. 370 (sekretariat)  fax:  uwagi: w tym 1 łóżko intensywnej opieki medycznej; bez pododdziału udarowego	18	0	22	73	\N	\N	\N	\N	t	\N	\N	\N	1
418	telefon: 32 611 53 00 wewn. 361 (pielęgniarki); wewn. 360 (lekarze); wewn. 360 (sekretariat)  fax:  uwagi: 	16	0	106	73	\N	\N	\N	\N	t	\N	\N	\N	1
839	telefon:   fax:  uwagi: 1 łóżko IOM kod 4220	1	0	191	73	\N	\N	\N	\N	t	\N	\N	\N	1
\.


--
-- TOC entry 3714 (class 0 OID 59595)
-- Dependencies: 219
-- Data for Name: tab_hospital_county; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_county (hospital_county_id, name) FROM stdin;
1	Miasto Katowice
2	Miasto Częstochowa
3	Miasto Sosnowiec
4	Miasto Gliwice
5	Miasto Zabrze
6	Miasto Bytom
7	Miasto Bielsko-Biała
8	Miasto Ruda Śląska
9	Miasto Rybnik
10	Miasto Tychy
11	Miasto Dąbrowa Górnicza
12	Miasto Chorzów
13	Miasto Jaworzno
14	Miasto Jastrzębie-Zdrój
15	Miasto Mysłowice
16	Miasto Siemianowice
17	Miasto Żory
18	Miasto Piekary Śląskie
19	Miasto Świętochłowice
20	cieszyński
21	wodzisławski
22	bielski
23	będziński
24	żywiecki
25	tarnogórski
26	częstochowski
27	zawierciański
28	gliwicki
29	raciborski
30	pszczyński
31	mikołowski
32	kłobucki
33	lubliniecki
34	rybnicki
35	myszkowski
36	bieruńsko-lędziński
\.


--
-- TOC entry 3776 (class 0 OID 61326)
-- Dependencies: 287
-- Data for Name: tab_hospital_failures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_failures (hospital_failures_id, add_date, data_do, data_od, description, security, hospital_id, hospital_config_id, user_id) FROM stdin;
\.


--
-- TOC entry 3778 (class 0 OID 61334)
-- Dependencies: 289
-- Data for Name: tab_hospital_failures_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_failures_files (hospital_failures_files_id, file_active, file_name, file_url, local_date_time, hospital_failures_id) FROM stdin;
\.


--
-- TOC entry 3758 (class 0 OID 60647)
-- Dependencies: 266
-- Data for Name: tab_hospital_procedures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_procedures (hospital_procedures_id, description, local_date_time, modified_date_time, name, procedure_active, hospital_id, hospital_procedures_types_id, user_id) FROM stdin;
\.


--
-- TOC entry 3760 (class 0 OID 60655)
-- Dependencies: 268
-- Data for Name: tab_hospital_procedures_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_procedures_file (hospital_procedures_file_id, file_active, file_name, file_url, local_date_time, hospital_procedures_id) FROM stdin;
\.


--
-- TOC entry 3744 (class 0 OID 60192)
-- Dependencies: 251
-- Data for Name: tab_hospital_procedures_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_procedures_type (hospital_procedures_type_id, active, hospital_procedures_reception, hospital_procedures_type_desc) FROM stdin;
1	t	1	Procedura ogólna
2	t	1	Wytyczne ogólne
3	t	2	Procedura lokalna
4	t	2	Wytyczne lokalne
\.


--
-- TOC entry 3765 (class 0 OID 61184)
-- Dependencies: 273
-- Data for Name: tab_hospital_report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_report (hospital_report_id, completed_admissionsa, completed_admissionsb, completed_admissionsc, doctora, planned_partiesa, planned_partiesb, planned_partiesc, statea, stateadate, statea_1, stateb, statebdate, stateb_1, statec, statecdate, statec_1, update_date, hospital_id, hospital_config_id, report_id, user_id) FROM stdin;
2	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	2	\N
3	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	2	\N
4	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	2	\N
5	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	2	\N
6	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	2	\N
7	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	2	\N
8	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	2	\N
9	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	2	\N
10	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	2	\N
11	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	2	\N
12	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	2	\N
13	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	2	\N
14	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	2	\N
15	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	2	\N
16	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	2	\N
17	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	2	\N
18	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	2	\N
19	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	2	\N
20	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	2	\N
21	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	2	\N
22	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	2	\N
23	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	2	\N
24	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	2	\N
25	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	2	\N
26	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	2	\N
27	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	2	\N
28	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	2	\N
29	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	2	\N
30	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	2	\N
31	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	2	\N
32	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	2	\N
33	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	2	\N
34	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	2	\N
35	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	2	\N
36	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	2	\N
37	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	2	\N
38	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	2	\N
39	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	2	\N
40	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	2	\N
41	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	2	\N
42	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	2	\N
43	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	2	\N
44	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	2	\N
45	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	2	\N
46	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	2	\N
47	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	2	\N
48	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	2	\N
49	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	2	\N
50	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	2	\N
51	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	2	\N
52	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	2	\N
53	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	2	\N
54	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	2	\N
55	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	2	\N
56	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	2	\N
57	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	2	\N
58	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	2	\N
59	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	2	\N
60	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	2	\N
61	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	2	\N
62	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	2	\N
63	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	2	\N
64	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	2	\N
65	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	2	\N
66	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	2	\N
67	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	2	\N
68	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	2	\N
69	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	2	\N
70	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	2	\N
71	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	2	\N
72	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	2	\N
73	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	2	\N
74	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	2	\N
75	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	2	\N
76	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	2	\N
77	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	2	\N
78	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	2	\N
79	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	2	\N
80	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	2	\N
81	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	2	\N
82	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	2	\N
83	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	2	\N
84	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	2	\N
85	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	2	\N
86	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	2	\N
87	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	2	\N
88	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	2	\N
89	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	2	\N
90	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	2	\N
91	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	2	\N
92	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	2	\N
93	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	2	\N
94	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	2	\N
95	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	2	\N
96	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	2	\N
97	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	2	\N
98	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	2	\N
99	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	2	\N
100	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	2	\N
101	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	2	\N
102	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	2	\N
103	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	2	\N
104	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	2	\N
105	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	2	\N
106	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	2	\N
107	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	2	\N
108	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	2	\N
109	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	2	\N
110	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	2	\N
111	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	2	\N
112	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	2	\N
113	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	2	\N
114	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	2	\N
115	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	2	\N
116	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	2	\N
117	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	2	\N
118	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	2	\N
119	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	2	\N
120	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	2	\N
121	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	2	\N
122	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	2	\N
123	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	2	\N
124	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	2	\N
125	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	2	\N
126	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	2	\N
127	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	2	\N
128	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	2	\N
129	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	2	\N
130	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	2	\N
131	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	2	\N
132	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	2	\N
133	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	2	\N
134	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	2	\N
135	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	2	\N
136	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	2	\N
137	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	2	\N
138	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	2	\N
139	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	2	\N
140	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	2	\N
141	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	2	\N
142	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	2	\N
143	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	2	\N
144	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	2	\N
145	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	2	\N
146	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	2	\N
147	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	2	\N
148	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	2	\N
149	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	2	\N
150	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	2	\N
151	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	2	\N
152	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	2	\N
153	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	2	\N
154	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	2	\N
155	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	2	\N
156	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	2	\N
157	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	2	\N
158	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	2	\N
159	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	2	\N
160	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	2	\N
161	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	2	\N
162	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	2	\N
163	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	2	\N
164	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	2	\N
165	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	2	\N
166	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	2	\N
167	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	2	\N
168	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	2	\N
169	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	2	\N
170	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	2	\N
171	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	2	\N
172	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	2	\N
173	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	2	\N
174	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	2	\N
175	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	2	\N
176	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	2	\N
177	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	2	\N
178	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	2	\N
179	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	2	\N
180	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	2	\N
181	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	2	\N
182	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	2	\N
183	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	2	\N
184	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	2	\N
185	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	2	\N
186	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	2	\N
187	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	2	\N
188	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	2	\N
189	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	2	\N
190	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	2	\N
191	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	2	\N
192	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	2	\N
193	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	2	\N
194	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	2	\N
195	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	2	\N
196	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	2	\N
197	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	2	\N
198	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	2	\N
199	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	2	\N
200	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	2	\N
201	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	2	\N
202	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	2	\N
203	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	2	\N
204	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	2	\N
205	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	2	\N
206	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	2	\N
207	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	2	\N
208	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	2	\N
209	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	2	\N
210	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	2	\N
211	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	2	\N
212	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	2	\N
213	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	2	\N
214	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	2	\N
215	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	2	\N
216	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	2	\N
217	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	2	\N
218	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	2	\N
219	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	2	\N
220	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	2	\N
221	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	2	\N
222	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	2	\N
223	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	2	\N
224	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	2	\N
225	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	2	\N
226	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	2	\N
227	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	2	\N
228	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	2	\N
229	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	2	\N
230	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	2	\N
231	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	2	\N
232	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	2	\N
233	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	2	\N
234	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	2	\N
235	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	2	\N
236	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	2	\N
237	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	2	\N
238	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	2	\N
239	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	2	\N
240	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	2	\N
241	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	2	\N
242	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	2	\N
243	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	2	\N
244	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	2	\N
245	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	2	\N
246	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	2	\N
247	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	2	\N
248	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	2	\N
249	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	2	\N
250	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	2	\N
251	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	2	\N
252	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	2	\N
253	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	2	\N
254	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	2	\N
255	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	2	\N
256	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	2	\N
257	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	2	\N
258	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	2	\N
259	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	2	\N
260	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	2	\N
261	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	2	\N
262	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	2	\N
263	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	2	\N
264	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	2	\N
265	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	2	\N
266	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	2	\N
267	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	2	\N
268	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	2	\N
269	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	2	\N
270	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	2	\N
271	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	2	\N
272	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	2	\N
273	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	2	\N
274	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	2	\N
275	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	2	\N
276	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	2	\N
277	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	2	\N
278	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	2	\N
279	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	2	\N
280	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	2	\N
281	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	2	\N
282	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	2	\N
283	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	2	\N
284	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	2	\N
285	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	2	\N
286	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	2	\N
287	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	2	\N
288	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	2	\N
289	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	2	\N
290	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	2	\N
291	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	2	\N
292	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	2	\N
293	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	2	\N
294	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	2	\N
295	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	2	\N
296	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	2	\N
297	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	2	\N
298	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	2	\N
299	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	2	\N
300	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	2	\N
301	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	2	\N
302	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	2	\N
303	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	2	\N
304	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	2	\N
305	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	2	\N
306	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	2	\N
307	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	2	\N
308	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	2	\N
309	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	2	\N
310	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	2	\N
311	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	2	\N
312	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	2	\N
313	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	2	\N
314	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	2	\N
315	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	2	\N
316	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	2	\N
317	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	2	\N
318	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	2	\N
319	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	2	\N
320	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	2	\N
321	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	2	\N
322	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	2	\N
323	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	2	\N
324	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	2	\N
325	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	2	\N
326	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	2	\N
327	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	2	\N
328	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	2	\N
329	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	2	\N
330	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	2	\N
331	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	2	\N
332	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	2	\N
333	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	2	\N
334	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	2	\N
335	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	2	\N
336	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	2	\N
337	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	2	\N
338	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	2	\N
339	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	2	\N
340	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	2	\N
341	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	2	\N
342	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	2	\N
343	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	2	\N
344	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	2	\N
345	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	2	\N
346	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	2	\N
347	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	2	\N
348	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	2	\N
349	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	2	\N
350	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	2	\N
351	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	2	\N
352	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	2	\N
353	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	2	\N
354	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	2	\N
355	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	2	\N
356	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	2	\N
357	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	2	\N
358	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	2	\N
359	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	2	\N
360	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	2	\N
361	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	2	\N
362	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	2	\N
363	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	2	\N
364	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	2	\N
365	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	2	\N
366	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	2	\N
367	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	2	\N
368	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	2	\N
369	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	2	\N
370	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	2	\N
371	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	2	\N
372	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	2	\N
373	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	2	\N
374	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	2	\N
375	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	2	\N
376	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	2	\N
377	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	2	\N
378	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	2	\N
379	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	2	\N
380	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	2	\N
381	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	2	\N
382	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	2	\N
383	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	2	\N
384	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	2	\N
385	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	2	\N
386	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	2	\N
387	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	2	\N
388	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	2	\N
389	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	2	\N
390	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	2	\N
391	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	2	\N
392	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	2	\N
393	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	2	\N
394	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	2	\N
395	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	2	\N
396	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	2	\N
397	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	2	\N
398	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	2	\N
399	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	2	\N
400	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	2	\N
401	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	2	\N
402	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	2	\N
403	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	2	\N
404	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	2	\N
405	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	2	\N
406	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	2	\N
407	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	2	\N
408	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	2	\N
409	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	2	\N
410	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	2	\N
411	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	2	\N
412	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	2	\N
413	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	2	\N
414	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	2	\N
415	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	2	\N
416	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	2	\N
417	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	2	\N
418	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	2	\N
419	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	2	\N
420	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	2	\N
421	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	2	\N
422	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	2	\N
423	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	2	\N
424	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	2	\N
425	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	2	\N
426	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	2	\N
427	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	2	\N
428	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	2	\N
429	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	2	\N
430	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	2	\N
431	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	2	\N
432	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	2	\N
433	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	2	\N
434	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	2	\N
435	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	2	\N
436	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	2	\N
437	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	2	\N
438	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	2	\N
439	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	2	\N
440	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	2	\N
441	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	2	\N
442	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	2	\N
443	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	2	\N
444	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	2	\N
445	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	2	\N
446	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	2	\N
447	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	2	\N
448	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	2	\N
449	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	2	\N
450	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	2	\N
451	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	2	\N
452	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	2	\N
453	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	2	\N
454	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	2	\N
455	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	2	\N
456	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	2	\N
457	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	2	\N
458	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	2	\N
459	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	2	\N
460	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	2	\N
461	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	2	\N
462	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	2	\N
463	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	2	\N
464	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	2	\N
465	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	2	\N
466	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	2	\N
467	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	2	\N
468	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	2	\N
469	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	2	\N
470	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	2	\N
471	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	2	\N
472	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	2	\N
473	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	2	\N
474	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	2	\N
475	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	2	\N
476	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	2	\N
477	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	2	\N
478	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	2	\N
479	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	2	\N
480	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	2	\N
481	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	2	\N
482	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	2	\N
483	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	2	\N
484	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	2	\N
485	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	2	\N
486	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	2	\N
487	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	2	\N
488	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	2	\N
489	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	2	\N
490	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	2	\N
491	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	2	\N
492	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	2	\N
493	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	2	\N
494	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	2	\N
495	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	2	\N
496	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	2	\N
497	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	2	\N
498	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	2	\N
499	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	2	\N
500	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	2	\N
501	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	2	\N
502	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	2	\N
503	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	2	\N
504	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	2	\N
505	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	2	\N
506	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	2	\N
507	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	2	\N
508	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	2	\N
509	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	2	\N
510	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	2	\N
511	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	2	\N
512	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	2	\N
513	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	2	\N
514	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	2	\N
515	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	2	\N
516	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	2	\N
517	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	2	\N
518	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	2	\N
519	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	2	\N
520	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	2	\N
521	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	2	\N
522	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	2	\N
523	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	2	\N
524	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	2	\N
525	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	2	\N
526	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	2	\N
527	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	2	\N
528	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	2	\N
529	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	2	\N
530	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	2	\N
531	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	2	\N
532	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	2	\N
533	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	2	\N
534	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	2	\N
535	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	2	\N
536	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	2	\N
537	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	2	\N
538	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	2	\N
539	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	2	\N
540	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	2	\N
541	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	2	\N
542	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	2	\N
543	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	2	\N
544	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	2	\N
545	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	2	\N
546	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	2	\N
547	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	2	\N
548	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	2	\N
549	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	2	\N
550	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	2	\N
551	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	2	\N
552	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	2	\N
553	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	2	\N
554	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	2	\N
555	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	2	\N
556	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	2	\N
557	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	2	\N
558	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	2	\N
559	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	2	\N
560	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	2	\N
561	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	2	\N
562	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	2	\N
563	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	2	\N
564	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	2	\N
565	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	2	\N
566	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	2	\N
567	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	2	\N
568	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	2	\N
569	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	2	\N
570	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	2	\N
571	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	2	\N
572	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	2	\N
573	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	2	\N
574	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	2	\N
575	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	2	\N
576	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	2	\N
577	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	2	\N
578	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	2	\N
579	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	2	\N
580	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	2	\N
581	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	2	\N
582	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	2	\N
583	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	2	\N
584	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	2	\N
585	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	2	\N
586	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	2	\N
587	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	2	\N
588	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	2	\N
589	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	2	\N
590	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	2	\N
591	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	2	\N
592	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	2	\N
593	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	2	\N
594	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	2	\N
595	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	2	\N
596	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	2	\N
597	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	2	\N
598	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	2	\N
599	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	2	\N
600	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	2	\N
601	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	2	\N
602	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	2	\N
603	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	2	\N
604	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	2	\N
605	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	2	\N
606	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	2	\N
607	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	2	\N
608	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	2	\N
609	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	2	\N
610	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	2	\N
611	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	2	\N
612	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	2	\N
613	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	2	\N
614	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	2	\N
615	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	2	\N
616	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	2	\N
617	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	2	\N
618	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	2	\N
619	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	2	\N
620	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	2	\N
621	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	2	\N
622	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	2	\N
623	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	2	\N
624	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	2	\N
625	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	2	\N
626	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	2	\N
627	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	2	\N
628	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	2	\N
629	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	2	\N
630	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	2	\N
631	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	2	\N
632	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	2	\N
633	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	2	\N
634	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	2	\N
635	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	2	\N
636	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	2	\N
637	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	2	\N
638	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	2	\N
639	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	2	\N
640	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	2	\N
641	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	2	\N
642	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	2	\N
643	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	2	\N
644	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	2	\N
645	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	2	\N
646	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	2	\N
647	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	2	\N
648	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	2	\N
649	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	2	\N
650	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	2	\N
651	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	2	\N
652	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	2	\N
653	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	2	\N
654	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	2	\N
655	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	2	\N
656	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	2	\N
657	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	2	\N
658	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	2	\N
659	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	2	\N
660	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	2	\N
661	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	2	\N
662	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	2	\N
663	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	2	\N
664	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	2	\N
665	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	2	\N
666	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	2	\N
667	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	2	\N
668	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	2	\N
669	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	2	\N
670	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	2	\N
671	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	2	\N
672	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	2	\N
673	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	2	\N
674	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	2	\N
675	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	2	\N
676	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	2	\N
677	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	2	\N
678	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	2	\N
679	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	2	\N
680	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	2	\N
681	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	2	\N
682	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	2	\N
683	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	2	\N
684	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	2	\N
685	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	2	\N
686	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	2	\N
687	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	2	\N
688	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	2	\N
689	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	2	\N
690	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	2	\N
691	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	2	\N
692	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	2	\N
693	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	2	\N
694	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	2	\N
695	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	2	\N
696	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	2	\N
697	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	2	\N
698	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	2	\N
699	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	2	\N
700	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	2	\N
701	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	2	\N
702	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	2	\N
703	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	2	\N
704	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	2	\N
705	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	2	\N
706	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	2	\N
707	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	2	\N
708	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	2	\N
709	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	2	\N
710	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	2	\N
711	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	2	\N
712	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	2	\N
713	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	2	\N
714	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	2	\N
715	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	2	\N
716	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	2	\N
717	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	2	\N
718	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	2	\N
719	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	2	\N
720	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	2	\N
721	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	2	\N
722	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	2	\N
723	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	2	\N
724	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	2	\N
725	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	2	\N
726	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	2	\N
727	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	2	\N
728	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	2	\N
729	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	2	\N
730	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	2	\N
731	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	2	\N
732	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	2	\N
733	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	2	\N
734	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	2	\N
735	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	2	\N
736	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	2	\N
737	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	2	\N
738	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	2	\N
739	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	2	\N
740	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	2	\N
741	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	2	\N
742	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	2	\N
743	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	2	\N
744	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	2	\N
745	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	2	\N
746	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	2	\N
747	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	2	\N
748	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	2	\N
749	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	2	\N
750	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	2	\N
751	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	2	\N
752	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	2	\N
753	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	2	\N
754	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	2	\N
755	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	2	\N
756	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	2	\N
757	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	2	\N
758	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	2	\N
759	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	2	\N
760	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	2	\N
761	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	2	\N
762	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	2	\N
763	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	2	\N
764	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	2	\N
765	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	2	\N
766	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	2	\N
767	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	410	2	\N
768	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	2	\N
769	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	2	\N
770	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	413	2	\N
771	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	414	2	\N
772	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	2	\N
773	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	2	\N
774	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	2	\N
775	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	2	\N
776	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	3	\N
777	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	3	\N
778	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	3	\N
779	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	3	\N
780	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	3	\N
781	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	3	\N
782	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	3	\N
783	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	3	\N
784	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	3	\N
785	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	3	\N
786	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	3	\N
787	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	3	\N
788	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	3	\N
789	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	3	\N
790	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	3	\N
791	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	3	\N
792	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	3	\N
793	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	3	\N
794	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	3	\N
795	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	3	\N
796	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	3	\N
797	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	3	\N
798	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	3	\N
799	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	3	\N
800	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	3	\N
801	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	3	\N
802	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	3	\N
803	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	3	\N
804	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	3	\N
805	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	3	\N
806	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	3	\N
807	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	3	\N
808	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	3	\N
809	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	3	\N
810	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	3	\N
811	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	3	\N
812	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	3	\N
813	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	3	\N
814	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	3	\N
815	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	3	\N
816	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	3	\N
817	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	3	\N
818	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	3	\N
819	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	3	\N
820	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	3	\N
821	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	3	\N
822	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	3	\N
823	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	3	\N
824	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	3	\N
825	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	3	\N
826	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	3	\N
827	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	3	\N
828	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	3	\N
829	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	3	\N
830	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	3	\N
831	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	3	\N
832	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	3	\N
833	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	3	\N
834	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	3	\N
835	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	3	\N
836	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	3	\N
837	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	3	\N
838	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	3	\N
839	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	3	\N
840	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	3	\N
841	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	3	\N
842	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	3	\N
843	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	3	\N
844	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	3	\N
845	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	3	\N
846	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	3	\N
847	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	3	\N
848	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	3	\N
849	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	3	\N
850	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	3	\N
851	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	3	\N
852	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	3	\N
853	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	3	\N
854	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	3	\N
855	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	3	\N
856	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	3	\N
857	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	3	\N
858	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	3	\N
859	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	3	\N
860	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	3	\N
861	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	3	\N
862	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	3	\N
863	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	3	\N
864	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	3	\N
865	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	3	\N
866	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	3	\N
867	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	3	\N
868	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	3	\N
869	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	3	\N
870	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	3	\N
871	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	3	\N
872	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	3	\N
873	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	3	\N
874	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	3	\N
875	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	3	\N
876	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	3	\N
877	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	3	\N
878	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	3	\N
879	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	3	\N
880	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	3	\N
881	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	3	\N
882	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	3	\N
883	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	3	\N
884	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	3	\N
885	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	3	\N
886	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	3	\N
887	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	3	\N
888	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	3	\N
889	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	3	\N
890	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	3	\N
891	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	3	\N
892	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	3	\N
893	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	3	\N
894	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	3	\N
895	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	3	\N
896	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	3	\N
897	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	3	\N
898	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	3	\N
899	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	3	\N
900	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	3	\N
901	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	3	\N
902	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	3	\N
903	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	3	\N
904	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	3	\N
905	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	3	\N
906	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	3	\N
907	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	3	\N
908	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	3	\N
909	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	3	\N
910	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	3	\N
911	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	3	\N
912	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	3	\N
913	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	3	\N
914	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	3	\N
915	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	3	\N
916	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	3	\N
917	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	3	\N
918	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	3	\N
919	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	3	\N
920	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	3	\N
921	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	3	\N
922	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	3	\N
923	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	3	\N
924	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	3	\N
925	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	3	\N
926	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	3	\N
927	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	3	\N
928	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	3	\N
929	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	3	\N
930	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	3	\N
931	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	3	\N
932	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	3	\N
933	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	3	\N
934	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	3	\N
935	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	3	\N
936	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	3	\N
937	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	3	\N
938	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	3	\N
939	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	3	\N
940	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	3	\N
941	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	3	\N
942	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	3	\N
943	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	3	\N
944	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	3	\N
945	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	3	\N
946	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	3	\N
947	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	3	\N
948	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	3	\N
949	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	3	\N
950	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	3	\N
951	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	3	\N
952	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	3	\N
953	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	3	\N
954	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	3	\N
955	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	3	\N
956	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	3	\N
957	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	3	\N
958	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	3	\N
959	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	3	\N
960	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	3	\N
961	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	3	\N
962	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	3	\N
963	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	3	\N
964	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	3	\N
965	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	3	\N
966	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	3	\N
967	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	3	\N
968	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	3	\N
969	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	3	\N
970	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	3	\N
971	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	3	\N
972	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	3	\N
973	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	3	\N
974	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	3	\N
975	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	3	\N
976	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	3	\N
977	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	3	\N
978	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	3	\N
979	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	3	\N
980	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	3	\N
981	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	3	\N
982	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	3	\N
983	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	3	\N
984	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	3	\N
985	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	3	\N
986	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	3	\N
987	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	3	\N
988	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	3	\N
989	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	3	\N
990	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	3	\N
991	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	3	\N
992	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	3	\N
993	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	3	\N
994	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	3	\N
995	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	3	\N
996	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	3	\N
997	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	3	\N
998	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	3	\N
999	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	3	\N
1000	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	3	\N
1001	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	3	\N
1002	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	3	\N
1003	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	3	\N
1004	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	3	\N
1005	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	3	\N
1006	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	3	\N
1007	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	3	\N
1008	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	3	\N
1009	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	3	\N
1010	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	3	\N
1011	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	3	\N
1012	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	3	\N
1013	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	3	\N
1014	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	3	\N
1015	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	3	\N
1016	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	3	\N
1017	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	3	\N
1018	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	3	\N
1019	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	3	\N
1020	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	3	\N
1021	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	3	\N
1022	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	3	\N
1023	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	3	\N
1024	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	3	\N
1025	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	3	\N
1026	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	3	\N
1027	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	3	\N
1028	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	3	\N
1029	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	3	\N
1030	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	3	\N
1031	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	3	\N
1032	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	3	\N
1033	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	3	\N
1034	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	3	\N
1035	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	3	\N
1036	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	3	\N
1037	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	3	\N
1038	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	3	\N
1039	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	3	\N
1040	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	3	\N
1041	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	3	\N
1042	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	3	\N
1043	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	3	\N
1044	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	3	\N
1045	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	3	\N
1046	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	3	\N
1047	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	3	\N
1048	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	3	\N
1049	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	3	\N
1050	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	3	\N
1051	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	3	\N
1052	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	3	\N
1053	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	3	\N
1054	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	3	\N
1055	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	3	\N
1056	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	3	\N
1057	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	3	\N
1058	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	3	\N
1059	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	3	\N
1060	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	3	\N
1061	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	3	\N
1062	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	3	\N
1063	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	3	\N
1064	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	3	\N
1065	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	3	\N
1066	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	3	\N
1067	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	3	\N
1068	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	3	\N
1069	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	3	\N
1070	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	3	\N
1071	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	3	\N
1072	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	3	\N
1073	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	3	\N
1074	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	3	\N
1075	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	3	\N
1076	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	3	\N
1077	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	3	\N
1078	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	3	\N
1079	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	3	\N
1080	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	3	\N
1081	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	3	\N
1082	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	3	\N
1083	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	3	\N
1084	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	3	\N
1085	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	3	\N
1086	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	3	\N
1087	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	3	\N
1088	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	3	\N
1089	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	3	\N
1090	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	3	\N
1091	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	3	\N
1092	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	3	\N
1093	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	3	\N
1094	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	3	\N
1095	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	3	\N
1096	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	3	\N
1097	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	3	\N
1098	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	3	\N
1099	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	3	\N
1100	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	3	\N
1101	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	3	\N
1102	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	3	\N
1103	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	3	\N
1104	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	3	\N
1105	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	3	\N
1106	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	3	\N
1107	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	3	\N
1108	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	3	\N
1109	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	3	\N
1110	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	3	\N
1111	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	3	\N
1112	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	3	\N
1113	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	3	\N
1114	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	3	\N
1115	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	3	\N
1116	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	3	\N
1117	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	3	\N
1118	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	3	\N
1119	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	3	\N
1120	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	3	\N
1121	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	3	\N
1122	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	3	\N
1123	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	3	\N
1124	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	3	\N
1125	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	3	\N
1126	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	3	\N
1127	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	3	\N
1128	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	3	\N
1129	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	3	\N
1130	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	3	\N
1131	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	3	\N
1132	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	3	\N
1133	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	3	\N
1134	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	3	\N
1135	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	3	\N
1136	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	3	\N
1137	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	3	\N
1138	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	3	\N
1139	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	3	\N
1140	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	3	\N
1141	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	3	\N
1142	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	3	\N
1143	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	3	\N
1144	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	3	\N
1145	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	3	\N
1146	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	3	\N
1147	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	3	\N
1148	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	3	\N
1149	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	3	\N
1150	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	3	\N
1151	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	3	\N
1152	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	3	\N
1153	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	3	\N
1154	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	3	\N
1155	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	3	\N
1156	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	3	\N
1157	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	3	\N
1158	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	3	\N
1159	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	3	\N
1160	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	3	\N
1161	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	3	\N
1162	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	3	\N
1163	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	3	\N
1164	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	3	\N
1165	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	3	\N
1166	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	3	\N
1167	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	3	\N
1168	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	3	\N
1169	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	3	\N
1170	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	3	\N
1171	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	3	\N
1172	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	3	\N
1173	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	3	\N
1174	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	3	\N
1175	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	3	\N
1176	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	3	\N
1177	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	3	\N
1178	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	3	\N
1179	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	3	\N
1180	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	3	\N
1181	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	3	\N
1182	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	3	\N
1183	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	3	\N
1184	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	3	\N
1185	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	3	\N
1186	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	3	\N
1187	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	3	\N
1188	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	3	\N
1189	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	3	\N
1190	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	3	\N
1191	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	3	\N
1192	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	3	\N
1193	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	3	\N
1194	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	3	\N
1195	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	3	\N
1196	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	3	\N
1197	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	3	\N
1198	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	3	\N
1199	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	3	\N
1200	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	3	\N
1201	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	3	\N
1202	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	3	\N
1203	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	3	\N
1204	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	3	\N
1205	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	3	\N
1206	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	3	\N
1207	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	3	\N
1208	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	3	\N
1209	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	3	\N
1210	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	3	\N
1211	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	3	\N
1212	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	3	\N
1213	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	3	\N
1214	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	3	\N
1215	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	3	\N
1216	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	3	\N
1217	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	3	\N
1218	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	3	\N
1219	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	3	\N
1220	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	3	\N
1221	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	3	\N
1222	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	3	\N
1223	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	3	\N
1224	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	3	\N
1225	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	3	\N
1226	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	3	\N
1227	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	3	\N
1228	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	3	\N
1229	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	3	\N
1230	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	3	\N
1231	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	3	\N
1232	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	3	\N
1233	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	3	\N
1234	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	3	\N
1235	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	3	\N
1236	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	3	\N
1237	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	3	\N
1238	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	3	\N
1239	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	3	\N
1240	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	3	\N
1241	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	3	\N
1242	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	3	\N
1243	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	3	\N
1244	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	3	\N
1245	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	3	\N
1246	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	3	\N
1247	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	3	\N
1248	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	3	\N
1249	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	3	\N
1250	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	3	\N
1251	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	3	\N
1252	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	3	\N
1253	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	3	\N
1254	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	3	\N
1255	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	3	\N
1256	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	3	\N
1257	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	3	\N
1258	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	3	\N
1259	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	3	\N
1260	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	3	\N
1261	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	3	\N
1262	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	3	\N
1263	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	3	\N
1264	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	3	\N
1265	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	3	\N
1266	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	3	\N
1267	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	3	\N
1268	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	3	\N
1269	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	3	\N
1270	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	3	\N
1271	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	3	\N
1272	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	3	\N
1273	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	3	\N
1274	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	3	\N
1275	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	3	\N
1276	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	3	\N
1277	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	3	\N
1278	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	3	\N
1279	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	3	\N
1280	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	3	\N
1281	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	3	\N
1282	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	3	\N
1283	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	3	\N
1284	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	3	\N
1285	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	3	\N
1286	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	3	\N
1287	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	3	\N
1288	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	3	\N
1289	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	3	\N
1290	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	3	\N
1291	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	3	\N
1292	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	3	\N
1293	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	3	\N
1294	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	3	\N
1295	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	3	\N
1296	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	3	\N
1297	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	3	\N
1298	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	3	\N
1299	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	3	\N
1300	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	3	\N
1301	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	3	\N
1302	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	3	\N
1303	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	3	\N
1304	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	3	\N
1305	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	3	\N
1306	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	3	\N
1307	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	3	\N
1308	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	3	\N
1309	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	3	\N
1310	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	3	\N
1311	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	3	\N
1312	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	3	\N
1313	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	3	\N
1314	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	3	\N
1315	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	3	\N
1316	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	3	\N
1317	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	3	\N
1318	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	3	\N
1319	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	3	\N
1320	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	3	\N
1321	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	3	\N
1322	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	3	\N
1323	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	3	\N
1324	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	3	\N
1325	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	3	\N
1326	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	3	\N
1327	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	3	\N
1328	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	3	\N
1329	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	3	\N
1330	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	3	\N
1331	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	3	\N
1332	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	3	\N
1333	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	3	\N
1334	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	3	\N
1335	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	3	\N
1336	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	3	\N
1337	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	3	\N
1338	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	3	\N
1339	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	3	\N
1340	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	3	\N
1341	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	3	\N
1342	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	3	\N
1343	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	3	\N
1344	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	3	\N
1345	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	3	\N
1346	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	3	\N
1347	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	3	\N
1348	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	3	\N
1349	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	3	\N
1350	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	3	\N
1351	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	3	\N
1352	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	3	\N
1353	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	3	\N
1354	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	3	\N
1355	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	3	\N
1356	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	3	\N
1357	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	3	\N
1358	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	3	\N
1359	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	3	\N
1360	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	3	\N
1361	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	3	\N
1362	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	3	\N
1363	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	3	\N
1364	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	3	\N
1365	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	3	\N
1366	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	3	\N
1367	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	3	\N
1368	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	3	\N
1369	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	3	\N
1370	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	3	\N
1371	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	3	\N
1372	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	3	\N
1373	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	3	\N
1374	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	3	\N
1375	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	3	\N
1376	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	3	\N
1377	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	3	\N
1378	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	3	\N
1379	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	3	\N
1380	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	3	\N
1381	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	3	\N
1382	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	3	\N
1383	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	3	\N
1384	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	3	\N
1385	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	3	\N
1386	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	3	\N
1387	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	3	\N
1388	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	3	\N
1389	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	3	\N
1390	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	3	\N
1391	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	3	\N
1392	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	3	\N
1393	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	3	\N
1394	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	3	\N
1395	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	3	\N
1396	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	3	\N
1397	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	3	\N
1398	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	3	\N
1399	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	3	\N
1400	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	3	\N
1401	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	3	\N
1402	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	3	\N
1403	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	3	\N
1404	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	3	\N
1405	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	3	\N
1406	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	3	\N
1407	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	3	\N
1408	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	3	\N
1409	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	3	\N
1410	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	3	\N
1411	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	3	\N
1412	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	3	\N
1413	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	3	\N
1414	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	3	\N
1415	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	3	\N
1416	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	3	\N
1417	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	3	\N
1418	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	3	\N
1419	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	3	\N
1420	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	3	\N
1421	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	3	\N
1422	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	3	\N
1423	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	3	\N
1424	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	3	\N
1425	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	3	\N
1426	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	3	\N
1427	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	3	\N
1428	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	3	\N
1429	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	3	\N
1430	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	3	\N
1431	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	3	\N
1432	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	3	\N
1433	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	3	\N
1434	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	3	\N
1435	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	3	\N
1436	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	3	\N
1437	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	3	\N
1438	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	3	\N
1439	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	3	\N
1440	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	3	\N
1441	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	3	\N
1442	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	3	\N
1443	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	3	\N
1444	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	3	\N
1445	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	3	\N
1446	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	3	\N
1447	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	3	\N
1448	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	3	\N
1449	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	3	\N
1450	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	3	\N
1451	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	3	\N
1452	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	3	\N
1453	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	3	\N
1454	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	3	\N
1455	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	3	\N
1456	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	3	\N
1457	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	3	\N
1458	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	3	\N
1459	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	3	\N
1460	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	3	\N
1461	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	3	\N
1462	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	3	\N
1463	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	3	\N
1464	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	3	\N
1465	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	3	\N
1466	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	3	\N
1467	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	3	\N
1468	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	3	\N
1469	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	3	\N
1470	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	3	\N
1471	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	3	\N
1472	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	3	\N
1473	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	3	\N
1474	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	3	\N
1475	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	3	\N
1476	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	3	\N
1477	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	3	\N
1478	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	3	\N
1479	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	3	\N
1480	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	3	\N
1481	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	3	\N
1482	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	3	\N
1483	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	3	\N
1484	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	3	\N
1485	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	3	\N
1486	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	3	\N
1487	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	3	\N
1488	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	3	\N
1489	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	3	\N
1490	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	3	\N
1491	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	3	\N
1492	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	3	\N
1493	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	3	\N
1494	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	3	\N
1495	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	3	\N
1496	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	3	\N
1497	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	3	\N
1498	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	3	\N
1499	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	3	\N
1500	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	3	\N
1501	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	3	\N
1502	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	3	\N
1503	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	3	\N
1504	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	3	\N
1505	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	3	\N
1506	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	3	\N
1507	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	3	\N
1508	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	3	\N
1509	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	3	\N
1510	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	3	\N
1511	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	3	\N
1512	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	3	\N
1513	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	3	\N
1514	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	3	\N
1515	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	3	\N
1516	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	3	\N
1517	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	3	\N
1518	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	3	\N
1519	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	3	\N
1520	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	3	\N
1521	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	3	\N
1522	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	3	\N
1523	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	3	\N
1524	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	3	\N
1525	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	3	\N
1526	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	3	\N
1527	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	3	\N
1528	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	3	\N
1529	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	3	\N
1530	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	3	\N
1531	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	3	\N
1532	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	3	\N
1533	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	3	\N
1534	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	3	\N
1535	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	3	\N
1536	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	3	\N
1537	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	3	\N
1538	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	3	\N
1539	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	3	\N
1540	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	3	\N
1541	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	410	3	\N
1542	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	3	\N
1543	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	3	\N
1544	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	413	3	\N
1545	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	414	3	\N
1546	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	3	\N
1547	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	3	\N
1548	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	3	\N
1549	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	3	\N
1550	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	4	\N
1551	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	4	\N
1552	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	4	\N
1553	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	4	\N
1554	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	4	\N
1555	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	4	\N
1556	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	4	\N
1557	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	4	\N
1558	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	4	\N
1559	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	4	\N
1560	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	4	\N
1561	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	4	\N
1562	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	4	\N
1563	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	4	\N
1564	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	4	\N
1565	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	4	\N
1566	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	4	\N
1567	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	4	\N
1568	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	4	\N
1569	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	4	\N
1570	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	4	\N
1571	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	4	\N
1572	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	4	\N
1573	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	4	\N
1574	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	4	\N
1575	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	4	\N
1576	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	4	\N
1577	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	4	\N
1578	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	4	\N
1579	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	4	\N
1580	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	4	\N
1581	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	4	\N
1582	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	4	\N
1583	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	4	\N
1584	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	4	\N
1585	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	4	\N
1586	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	4	\N
1587	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	4	\N
1588	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	4	\N
1589	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	4	\N
1590	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	4	\N
1591	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	4	\N
1592	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	4	\N
1593	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	4	\N
1594	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	4	\N
1595	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	4	\N
1596	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	4	\N
1597	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	4	\N
1598	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	4	\N
1599	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	4	\N
1600	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	4	\N
1601	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	4	\N
1602	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	4	\N
1603	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	4	\N
1604	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	4	\N
1605	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	4	\N
1606	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	4	\N
1607	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	4	\N
1608	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	4	\N
1609	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	4	\N
1610	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	4	\N
1611	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	4	\N
1612	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	4	\N
1613	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	4	\N
1614	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	4	\N
1615	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	4	\N
1616	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	4	\N
1617	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	4	\N
1618	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	4	\N
1619	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	4	\N
1620	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	4	\N
1621	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	4	\N
1622	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	4	\N
1623	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	4	\N
1624	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	4	\N
1625	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	4	\N
1626	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	4	\N
1627	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	4	\N
1628	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	4	\N
1629	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	4	\N
1630	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	4	\N
1631	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	4	\N
1632	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	4	\N
1633	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	4	\N
1634	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	4	\N
1635	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	4	\N
1636	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	4	\N
1637	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	4	\N
1638	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	4	\N
1639	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	4	\N
1640	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	4	\N
1641	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	4	\N
1642	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	4	\N
1643	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	4	\N
1644	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	4	\N
1645	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	4	\N
1646	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	4	\N
1647	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	4	\N
1648	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	4	\N
1649	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	4	\N
1650	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	4	\N
1651	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	4	\N
1652	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	4	\N
1653	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	4	\N
1654	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	4	\N
1655	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	4	\N
1656	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	4	\N
1657	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	4	\N
1658	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	4	\N
1659	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	4	\N
1660	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	4	\N
1661	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	4	\N
1662	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	4	\N
1663	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	4	\N
1664	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	4	\N
1665	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	4	\N
1666	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	4	\N
1667	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	4	\N
1668	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	4	\N
1669	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	4	\N
1670	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	4	\N
1671	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	4	\N
1672	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	4	\N
1673	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	4	\N
1674	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	4	\N
1675	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	4	\N
1676	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	4	\N
1677	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	4	\N
1678	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	4	\N
1679	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	4	\N
1680	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	4	\N
1681	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	4	\N
1682	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	4	\N
1683	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	4	\N
1684	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	4	\N
1685	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	4	\N
1686	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	4	\N
1687	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	4	\N
1688	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	4	\N
1689	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	4	\N
1690	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	4	\N
1691	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	4	\N
1692	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	4	\N
1693	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	4	\N
1694	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	4	\N
1695	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	4	\N
1696	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	4	\N
1697	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	4	\N
1698	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	4	\N
1699	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	4	\N
1700	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	4	\N
1701	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	4	\N
1702	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	4	\N
1703	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	4	\N
1704	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	4	\N
1705	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	4	\N
1706	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	4	\N
1707	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	4	\N
1708	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	4	\N
1709	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	4	\N
1710	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	4	\N
1711	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	4	\N
1712	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	4	\N
1713	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	4	\N
1714	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	4	\N
1715	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	4	\N
1716	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	4	\N
1717	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	4	\N
1718	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	4	\N
1719	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	4	\N
1720	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	4	\N
1721	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	4	\N
1722	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	4	\N
1723	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	4	\N
1724	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	4	\N
1725	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	4	\N
1726	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	4	\N
1727	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	4	\N
1728	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	4	\N
1729	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	4	\N
1730	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	4	\N
1731	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	4	\N
1732	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	4	\N
1733	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	4	\N
1734	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	4	\N
1735	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	4	\N
1736	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	4	\N
1737	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	4	\N
1738	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	4	\N
1739	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	4	\N
1740	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	4	\N
1741	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	4	\N
1742	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	4	\N
1743	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	4	\N
1744	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	4	\N
1745	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	4	\N
1746	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	4	\N
1747	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	4	\N
1748	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	4	\N
1749	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	4	\N
1750	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	4	\N
1751	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	4	\N
1752	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	4	\N
1753	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	4	\N
1754	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	4	\N
1755	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	4	\N
1756	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	4	\N
1757	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	4	\N
1758	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	4	\N
1759	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	4	\N
1760	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	4	\N
1761	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	4	\N
1762	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	4	\N
1763	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	4	\N
1764	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	4	\N
1765	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	4	\N
1766	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	4	\N
1767	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	4	\N
1768	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	4	\N
1769	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	4	\N
1770	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	4	\N
1771	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	4	\N
1772	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	4	\N
1773	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	4	\N
1774	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	4	\N
1775	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	4	\N
1776	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	4	\N
1777	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	4	\N
1778	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	4	\N
1779	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	4	\N
1780	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	4	\N
1781	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	4	\N
1782	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	4	\N
1783	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	4	\N
1784	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	4	\N
1785	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	4	\N
1786	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	4	\N
1787	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	4	\N
1788	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	4	\N
1789	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	4	\N
1790	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	4	\N
1791	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	4	\N
1792	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	4	\N
1793	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	4	\N
1794	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	4	\N
1795	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	4	\N
1796	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	4	\N
1797	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	4	\N
1798	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	4	\N
1799	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	4	\N
1800	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	4	\N
1801	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	4	\N
1802	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	4	\N
1803	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	4	\N
1804	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	4	\N
1805	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	4	\N
1806	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	4	\N
1807	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	4	\N
1808	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	4	\N
1809	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	4	\N
1810	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	4	\N
1811	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	4	\N
1812	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	4	\N
1813	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	4	\N
1814	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	4	\N
1815	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	4	\N
1816	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	4	\N
1817	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	4	\N
1818	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	4	\N
1819	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	4	\N
1820	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	4	\N
1821	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	4	\N
1822	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	4	\N
1823	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	4	\N
1824	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	4	\N
1825	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	4	\N
1826	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	4	\N
1827	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	4	\N
1828	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	4	\N
1829	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	4	\N
1830	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	4	\N
1831	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	4	\N
1832	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	4	\N
1833	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	4	\N
1834	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	4	\N
1835	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	4	\N
1836	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	4	\N
1837	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	4	\N
1838	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	4	\N
1839	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	4	\N
1840	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	4	\N
1841	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	4	\N
1842	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	4	\N
1843	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	4	\N
1844	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	4	\N
1845	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	4	\N
1846	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	4	\N
1847	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	4	\N
1848	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	4	\N
1849	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	4	\N
1850	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	4	\N
1851	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	4	\N
1852	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	4	\N
1853	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	4	\N
1854	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	4	\N
1855	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	4	\N
1856	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	4	\N
1857	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	4	\N
1858	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	4	\N
1859	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	4	\N
1860	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	4	\N
1861	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	4	\N
1862	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	4	\N
1863	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	4	\N
1864	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	4	\N
1865	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	4	\N
1866	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	4	\N
1867	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	4	\N
1868	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	4	\N
1869	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	4	\N
1870	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	4	\N
1871	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	4	\N
1872	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	4	\N
1873	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	4	\N
1874	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	4	\N
1875	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	4	\N
1876	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	4	\N
1877	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	4	\N
1878	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	4	\N
1879	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	4	\N
1880	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	4	\N
1881	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	4	\N
1882	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	4	\N
1883	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	4	\N
1884	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	4	\N
1885	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	4	\N
1886	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	4	\N
1887	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	4	\N
1888	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	4	\N
1889	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	4	\N
1890	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	4	\N
1891	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	4	\N
1892	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	4	\N
1893	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	4	\N
1894	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	4	\N
1895	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	4	\N
1896	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	4	\N
1897	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	4	\N
1898	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	4	\N
1899	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	4	\N
1900	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	4	\N
1901	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	4	\N
1902	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	4	\N
1903	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	4	\N
1904	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	4	\N
1905	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	4	\N
1906	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	4	\N
1907	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	4	\N
1908	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	4	\N
1909	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	4	\N
1910	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	4	\N
1911	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	4	\N
1912	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	4	\N
1913	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	4	\N
1914	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	4	\N
1915	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	4	\N
1916	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	4	\N
1917	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	4	\N
1918	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	4	\N
1919	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	4	\N
1920	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	4	\N
1921	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	4	\N
1922	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	4	\N
1923	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	4	\N
1924	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	4	\N
1925	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	4	\N
1926	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	4	\N
1927	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	4	\N
1928	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	4	\N
1929	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	4	\N
1930	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	4	\N
1931	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	4	\N
1932	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	4	\N
1933	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	4	\N
1934	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	4	\N
1935	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	4	\N
1936	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	4	\N
1937	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	4	\N
1938	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	4	\N
1939	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	4	\N
1940	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	4	\N
1941	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	4	\N
1942	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	4	\N
1943	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	4	\N
1944	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	4	\N
1945	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	4	\N
1946	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	4	\N
1947	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	4	\N
1948	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	4	\N
1949	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	4	\N
1950	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	4	\N
1951	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	4	\N
1952	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	4	\N
1953	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	4	\N
1954	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	4	\N
1955	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	4	\N
1956	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	4	\N
1957	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	4	\N
1958	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	4	\N
1959	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	4	\N
1960	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	4	\N
1961	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	4	\N
1962	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	4	\N
1963	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	4	\N
1964	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	4	\N
1965	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	4	\N
1966	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	4	\N
1967	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	4	\N
1968	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	4	\N
1969	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	4	\N
1970	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	4	\N
1971	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	4	\N
1972	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	4	\N
1973	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	4	\N
1974	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	4	\N
1975	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	4	\N
1976	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	4	\N
1977	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	4	\N
1978	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	4	\N
1979	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	4	\N
1980	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	4	\N
1981	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	4	\N
1982	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	4	\N
1983	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	4	\N
1984	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	4	\N
1985	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	4	\N
1986	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	4	\N
1987	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	4	\N
1988	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	4	\N
1989	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	4	\N
1990	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	4	\N
1991	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	4	\N
1992	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	4	\N
1993	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	4	\N
1994	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	4	\N
1995	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	4	\N
1996	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	4	\N
1997	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	4	\N
1998	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	4	\N
1999	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	4	\N
2000	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	4	\N
2001	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	4	\N
2002	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	4	\N
2003	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	4	\N
2004	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	4	\N
2005	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	4	\N
2006	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	4	\N
2007	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	4	\N
2008	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	4	\N
2009	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	4	\N
2010	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	4	\N
2011	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	4	\N
2012	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	4	\N
2013	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	4	\N
2014	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	4	\N
2015	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	4	\N
2016	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	4	\N
2017	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	4	\N
2018	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	4	\N
2019	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	4	\N
2020	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	4	\N
2021	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	4	\N
2022	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	4	\N
2023	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	4	\N
2024	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	4	\N
2025	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	4	\N
2026	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	4	\N
2027	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	4	\N
2028	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	4	\N
2029	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	4	\N
2030	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	4	\N
2031	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	4	\N
2032	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	4	\N
2033	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	4	\N
2034	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	4	\N
2035	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	4	\N
2036	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	4	\N
2037	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	4	\N
2038	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	4	\N
2039	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	4	\N
2040	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	4	\N
2041	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	4	\N
2042	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	4	\N
2043	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	4	\N
2044	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	4	\N
2045	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	4	\N
2046	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	4	\N
2047	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	4	\N
2048	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	4	\N
2049	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	4	\N
2050	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	4	\N
2051	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	4	\N
2052	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	4	\N
2053	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	4	\N
2054	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	4	\N
2055	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	4	\N
2056	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	4	\N
2057	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	4	\N
2058	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	4	\N
2059	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	4	\N
2060	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	4	\N
2061	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	4	\N
2062	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	4	\N
2063	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	4	\N
2064	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	4	\N
2065	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	4	\N
2066	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	4	\N
2067	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	4	\N
2068	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	4	\N
2069	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	4	\N
2070	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	4	\N
2071	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	4	\N
2072	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	4	\N
2073	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	4	\N
2074	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	4	\N
2075	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	4	\N
2076	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	4	\N
2077	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	4	\N
2078	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	4	\N
2079	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	4	\N
2080	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	4	\N
2081	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	4	\N
2082	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	4	\N
2083	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	4	\N
2084	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	4	\N
2085	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	4	\N
2086	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	4	\N
2087	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	4	\N
2088	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	4	\N
2089	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	4	\N
2090	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	4	\N
2091	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	4	\N
2092	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	4	\N
2093	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	4	\N
2094	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	4	\N
2095	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	4	\N
2096	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	4	\N
2097	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	4	\N
2098	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	4	\N
2099	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	4	\N
2100	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	4	\N
2101	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	4	\N
2102	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	4	\N
2103	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	4	\N
2104	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	4	\N
2105	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	4	\N
2106	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	4	\N
2107	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	4	\N
2108	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	4	\N
2109	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	4	\N
2110	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	4	\N
2111	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	4	\N
2112	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	4	\N
2113	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	4	\N
2114	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	4	\N
2115	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	4	\N
2116	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	4	\N
2117	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	4	\N
2118	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	4	\N
2119	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	4	\N
2120	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	4	\N
2121	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	4	\N
2122	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	4	\N
2123	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	4	\N
2124	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	4	\N
2125	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	4	\N
2126	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	4	\N
2127	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	4	\N
2128	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	4	\N
2129	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	4	\N
2130	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	4	\N
2131	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	4	\N
2132	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	4	\N
2133	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	4	\N
2134	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	4	\N
2135	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	4	\N
2136	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	4	\N
2137	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	4	\N
2138	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	4	\N
2139	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	4	\N
2140	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	4	\N
2141	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	4	\N
2142	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	4	\N
2143	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	4	\N
2144	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	4	\N
2145	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	4	\N
2146	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	4	\N
2147	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	4	\N
2148	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	4	\N
2149	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	4	\N
2150	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	4	\N
2151	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	4	\N
2152	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	4	\N
2153	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	4	\N
2154	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	4	\N
2155	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	4	\N
2156	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	4	\N
2157	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	4	\N
2158	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	4	\N
2159	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	4	\N
2160	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	4	\N
2161	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	4	\N
2162	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	4	\N
2163	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	4	\N
2164	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	4	\N
2165	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	4	\N
2166	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	4	\N
2167	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	4	\N
2168	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	4	\N
2169	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	4	\N
2170	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	4	\N
2171	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	4	\N
2172	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	4	\N
2173	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	4	\N
2174	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	4	\N
2175	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	4	\N
2176	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	4	\N
2177	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	4	\N
2178	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	4	\N
2179	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	4	\N
2180	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	4	\N
2181	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	4	\N
2182	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	4	\N
2183	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	4	\N
2184	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	4	\N
2185	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	4	\N
2186	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	4	\N
2187	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	4	\N
2188	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	4	\N
2189	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	4	\N
2190	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	4	\N
2191	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	4	\N
2192	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	4	\N
2193	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	4	\N
2194	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	4	\N
2195	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	4	\N
2196	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	4	\N
2197	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	4	\N
2198	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	4	\N
2199	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	4	\N
2200	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	4	\N
2201	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	4	\N
2202	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	4	\N
2203	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	4	\N
2204	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	4	\N
2205	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	4	\N
2206	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	4	\N
2207	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	4	\N
2208	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	4	\N
2209	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	4	\N
2210	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	4	\N
2211	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	4	\N
2212	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	4	\N
2213	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	4	\N
2214	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	4	\N
2215	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	4	\N
2216	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	4	\N
2217	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	4	\N
2218	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	4	\N
2219	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	4	\N
2220	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	4	\N
2221	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	4	\N
2222	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	4	\N
2223	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	4	\N
2224	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	4	\N
2225	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	4	\N
2226	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	4	\N
2227	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	4	\N
2228	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	4	\N
2229	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	4	\N
2230	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	4	\N
2231	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	4	\N
2232	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	4	\N
2233	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	4	\N
2234	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	4	\N
2235	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	4	\N
2236	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	4	\N
2237	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	4	\N
2238	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	4	\N
2239	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	4	\N
2240	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	4	\N
2241	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	4	\N
2242	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	4	\N
2243	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	4	\N
2244	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	4	\N
2245	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	4	\N
2246	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	4	\N
2247	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	4	\N
2248	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	4	\N
2249	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	4	\N
2250	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	4	\N
2251	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	4	\N
2252	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	4	\N
2253	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	4	\N
2254	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	4	\N
2255	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	4	\N
2256	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	4	\N
2257	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	4	\N
2258	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	4	\N
2259	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	4	\N
2260	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	4	\N
2261	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	4	\N
2262	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	4	\N
2263	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	4	\N
2264	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	4	\N
2265	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	4	\N
2266	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	4	\N
2267	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	4	\N
2268	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	4	\N
2269	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	4	\N
2270	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	4	\N
2271	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	4	\N
2272	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	4	\N
2273	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	4	\N
2274	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	4	\N
2275	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	4	\N
2276	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	4	\N
2277	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	4	\N
2278	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	4	\N
2279	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	4	\N
2280	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	4	\N
2281	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	4	\N
2282	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	4	\N
2283	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	4	\N
2284	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	4	\N
2285	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	4	\N
2286	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	4	\N
2287	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	4	\N
2288	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	4	\N
2289	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	4	\N
2290	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	4	\N
2291	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	4	\N
2292	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	4	\N
2293	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	4	\N
2294	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	4	\N
2295	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	4	\N
2296	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	4	\N
2297	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	4	\N
2298	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	4	\N
2299	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	4	\N
2300	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	4	\N
2301	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	4	\N
2302	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	4	\N
2303	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	4	\N
2304	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	4	\N
2305	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	4	\N
2306	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	4	\N
2307	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	4	\N
2308	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	4	\N
2309	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	4	\N
2310	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	4	\N
2311	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	4	\N
2312	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	4	\N
2313	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	4	\N
2314	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	4	\N
2315	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	410	4	\N
2316	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	4	\N
2317	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	4	\N
2318	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	413	4	\N
2319	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	414	4	\N
2320	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	4	\N
2321	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	4	\N
2322	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	4	\N
2323	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	4	\N
\.


--
-- TOC entry 3715 (class 0 OID 59618)
-- Dependencies: 220
-- Data for Name: tab_hospital_report_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_report_history (hospital_report_history_id, create_date, hospital_report_history_description, hospital_id, hospital_config_id, hospital_report_id, user_id) FROM stdin;
\.


--
-- TOC entry 3716 (class 0 OID 59623)
-- Dependencies: 221
-- Data for Name: tab_hospital_report_thread_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_report_thread_question (id, is_visible, ordering, question) FROM stdin;
\.


--
-- TOC entry 3717 (class 0 OID 59626)
-- Dependencies: 222
-- Data for Name: tab_hospital_report_threads_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_report_threads_answers (id, answer, hospital_report_id, hospital_threads_question_id) FROM stdin;
\.


--
-- TOC entry 3718 (class 0 OID 59629)
-- Dependencies: 223
-- Data for Name: tab_log_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_log_type (log_type_id, log_type_name) FROM stdin;
\.


--
-- TOC entry 3770 (class 0 OID 61292)
-- Dependencies: 281
-- Data for Name: tab_logi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_logi (log_id, created_date, log_desc, log_type, user_id) FROM stdin;
1	2024-06-27 10:32:44.224219	Logowanie użytkownika Adam Skaźnik	WKRM - LOG	1
2	2024-06-27 10:34:26.842174	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
3	2024-06-27 10:35:29.474886	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
4	2024-06-27 10:39:33.393359	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
5	2024-06-27 11:11:25.770752	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
6	2024-06-27 12:03:05.430215	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
7	2024-06-27 12:05:44.033263	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
8	2024-06-27 12:06:57.368222	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
9	2024-06-27 12:13:22.797193	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
10	2024-06-27 12:29:24.71051	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
11	2024-06-27 12:41:30.273819	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
12	2024-07-01 10:06:19.825659	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
13	2024-07-01 10:22:44.535443	Logowanie użytkownika Adam Skaźnik	Logowanie - LOG	1
14	2024-07-01 11:13:26.265226	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
15	2024-07-01 11:36:11.137588	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
16	2024-07-01 11:37:16.234922	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
17	2024-07-01 11:37:21.475617	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
18	2024-07-01 11:37:35.467797	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
19	2024-07-01 11:38:09.174983	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
20	2024-07-01 11:47:58.568998	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
21	2024-07-01 11:48:07.91094	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
22	2024-07-01 11:58:03.926589	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
23	2024-07-01 11:58:12.968073	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
24	2024-07-04 05:35:49.510081	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
25	2024-07-04 05:37:30.228013	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
26	2024-07-04 05:42:57.888424	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
27	2024-07-04 06:27:12.256397	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
28	2024-07-04 07:30:55.761738	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
29	2024-07-04 11:32:37.364566	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
30	2024-08-20 06:01:50.882634	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
31	2024-08-20 07:47:09.519751	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
32	2024-08-20 07:49:07.777015	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
33	2024-08-20 08:06:06.641841	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
34	2024-08-20 09:20:32.25255	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
35	2024-08-20 11:48:40.887519	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
36	2024-08-20 11:49:02.630625	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
37	2024-08-20 12:09:14.051844	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
38	2024-08-20 12:10:07.933943	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
39	2024-08-20 12:12:01.213549	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
40	2024-08-20 12:12:09.255303	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
41	2024-08-20 12:12:45.918076	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
42	2024-08-20 12:13:50.932704	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
43	2024-08-20 12:36:50.100334	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
44	2024-08-20 12:39:06.486192	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
45	2024-08-20 12:40:29.460684	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
46	2024-08-20 12:41:21.016504	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
47	2024-08-20 12:45:04.076318	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
48	2024-08-21 05:22:53.34485	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
49	2024-08-21 05:25:18.985652	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
50	2024-08-21 05:25:21.054751	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
51	2024-08-21 05:25:32.52163	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
52	2024-08-21 05:25:48.84625	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
53	2024-08-21 05:28:02.829805	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
54	2024-08-21 05:28:16.43671	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
55	2024-08-21 05:28:43.081955	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
56	2024-08-21 06:06:23.300426	Logowanie administratora: skaznika	GLOBAL_ADMIN - LOG	1
57	2024-08-21 06:06:27.473477	Logowanie administratora: skaznika	GLOBAL_ADMIN - LOG	1
58	2024-08-21 06:07:14.073148	Logowanie administratora: skaznika	GLOBAL_ADMIN - LOG	1
59	2024-08-21 06:14:03.780805	Logowanie administratora: skaznika	GLOBAL_ADMIN - LOG	1
60	2024-08-21 06:16:03.179563	Logowanie administratora: skaznika	GLOBAL_ADMIN - LOG	1
61	2024-08-21 06:16:14.139467	Logowanie administratora: skaznika	GLOBAL_ADMIN - LOG	1
62	2024-08-21 09:11:40.715771	Administrator: Adam Skaźnik założył nowe konto dla użytkownika: efvdsvcdfvc sdcvcds	GLOBAL_ADMIN : Założenie nowego konta.	1
63	2024-08-21 09:14:20.022634	Administrator: Adam Skaźnik założył nowe konto dla użytkownika: dsfvbsdfvs dsfvds sd 	GLOBAL_ADMIN : Założenie nowego konta.	1
64	2024-08-23 09:08:49.525675	Dokonano zmiany w raporcie nr: 6431. Wprowadzone zmiany: stara wartość stateA: 0 na nową: 2. Wprowadzone zmiany: stara wartość stateB: 0 na nową: 5	GLOBAL_ADMIN - LOG	1
65	2024-08-23 09:26:18.150986	Dokonano zmiany w raporcie nr: 3999. Zmian dokonał: Adam Skaźnik. Wprowadzone zmiany: stara wartość stateA: 0 na nową: 3. Wprowadzone zmiany: stara wartość stateB: 0 na nową: 56	GLOBAL_ADMIN - LOG	1
66	2024-08-23 10:11:37.861823	Dokonano zmiany w raporcie nr: 6958. Zmian dokonał: Adam Skaźnik. Wprowadzone zmiany: stara wartość stateA: 0 na nową: 4	GLOBAL_ADMIN - LOG	1
67	2024-08-23 10:13:50.344218	Dokonano zmiany w raporcie nr: 7735. Zmian dokonał: Adam Skaźnik. Wprowadzone zmiany: stara wartość stateA: 0 na nową: 2	GLOBAL_ADMIN - LOG	1
68	2024-08-23 10:32:20.806232	Dokonano zmiany w raporcie nr: 3224. Zmian dokonał: Adam Skaźnik. Wprowadzone zmiany: stara wartość stateA: 0 na nową: 5. Wprowadzone zmiany: stara wartość stateC: 0 na nową: 3	GLOBAL_ADMIN - LOG	1
69	2024-08-23 10:50:22.166064	Dokonano zmiany w raporcie nr: 7736. Zmian dokonał: Adam Skaźnik. Wprowadzone zmiany: stara wartość stateB: 0 na nową: 15	GLOBAL_ADMIN - LOG	1
70	2024-08-23 12:00:08.957228	Administrator: Adam Skaźnik zmieniła hasło dla użytkownika: dsfvbsdfvs dsfvds sd 	GLOBAL_ADMIN : Założenie nowego konta.	1
71	2024-08-23 12:01:29.048119	Administrator: Adam Skaźnik zmieniła hasło dla użytkownika: dsfvbsdfvs dsfvds sd 	GLOBAL_ADMIN : Założenie nowego konta.	1
72	2024-08-23 12:02:14.074242	Administrator: Adam Skaźnik zmieniła hasło dla użytkownika: dsfvbsdfvs dsfvds sd 	GLOBAL_ADMIN : Założenie nowego konta.	1
73	2024-08-23 12:06:09.694689	Administrator: Adam Skaźnik zmieniła hasło dla użytkownika: dsfvbsdfvs dsfvds sd 	GLOBAL_ADMIN : Założenie nowego konta.	1
74	2024-08-23 12:11:08.732341	Administrator: Adam Skaźnik zmienił hasło dla użytkownika: dsfvbsdfvs dsfvds sd 	GLOBAL_ADMIN : Założenie nowego konta.	1
75	2024-08-23 12:11:19.107335	Administrator: Adam Skaźnik zmienił hasło dla użytkownika: dsfvbsdfvs dsfvds sd 	GLOBAL_ADMIN : Założenie nowego konta.	1
76	2024-08-23 12:12:19.328185	Administrator: Adam Skaźnik zmienił hasło dla użytkownika: dsfvbsdfvs dsfvds sd 	GLOBAL_ADMIN : Założenie nowego konta.	1
77	2024-08-23 12:12:29.246668	Administrator: Adam Skaźnik zmienił hasło dla użytkownika: Adam Skaźnik	GLOBAL_ADMIN : Założenie nowego konta.	1
78	2024-08-23 12:12:41.998614	Administrator: Adam Skaźnik zmienił hasło dla użytkownika: Adam Skaźnik	GLOBAL_ADMIN : Założenie nowego konta.	1
79	2024-08-23 12:12:52.333359	Administrator: Adam Skaźnik zmienił hasło dla użytkownika: dsfvbsdfvs dsfvds sd 	GLOBAL_ADMIN : Założenie nowego konta.	1
80	2024-08-26 05:43:30.1649	Użytkownik: Adam Skaźnik dokonał zmiany hasła	USER - zmiana hasła	1
81	2024-08-26 05:47:18.682096	Użytkownik: Adam Skaźnik dokonał zmiany hasła	USER - zmiana hasła	1
82	2024-08-26 08:35:17.427782	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
83	2024-08-26 08:35:27.176382	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
84	2024-08-26 08:38:09.092183	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
85	2024-08-26 08:38:10.468336	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
86	2024-08-26 08:38:11.522276	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
87	2024-08-26 08:39:15.050415	Użytkownik: Adam Skaźnik dokonał zmiany hasła	USER - zmiana hasła	1
88	2024-08-26 08:40:45.31877	Użytkownik: Adam Skaźnik dokonał zmiany hasła	USER - zmiana hasła	1
89	2024-08-26 12:20:38.466149	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
90	2024-08-27 05:29:17.964059	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
92	2024-08-27 06:40:53.934985	WKRM: Adam Skaźnikedytował raport nr: 9281	WKRM - Edycja raportu	1
93	2024-08-27 09:46:29.447496	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
94	2024-08-28 06:05:14.22922	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
95	2024-08-28 06:48:15.147259	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
96	2024-09-06 06:57:15.521536	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
97	2024-09-06 06:57:23.415836	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
98	2024-09-06 06:57:27.665992	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
99	2024-09-06 06:57:33.749245	Logowanie użytkownika: Adam Skaźnik	WKRM - LOG	1
100	2024-09-06 07:26:48.087453	Logowanie użytkownika: Adam Skaźnik	WPR - LOG	1
101	2024-09-06 07:29:52.479125	Logowanie użytkownika: Adam Skaźnik	WPR - LOG	1
102	2024-09-06 07:30:56.333713	Logowanie użytkownika: Adam Skaźnik	WPR - LOG	1
103	2024-09-06 07:31:06.682004	Logowanie użytkownika: Adam Skaźnik	WPR - LOG	1
104	2024-09-06 07:31:10.096024	Logowanie użytkownika: Adam Skaźnik	WPR - LOG	1
105	2024-09-06 07:32:24.592176	Logowanie użytkownika: Adam Skaźnik	WPR - LOG	1
\.


--
-- TOC entry 3768 (class 0 OID 61283)
-- Dependencies: 279
-- Data for Name: tab_mail_properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_mail_properties (id, active, host, password, port, user_name) FROM stdin;
1	t	smtp.slask.eu	SK@znik715450	6355	wcpr-informacja
\.


--
-- TOC entry 3719 (class 0 OID 59635)
-- Dependencies: 224
-- Data for Name: tab_managment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_managment (managment_id, managment_description, managment_email, managment_mobile_phone, managment_person, managment_phone) FROM stdin;
1	testowy wpis	jakiś tam	555-555-555	Dyrektor	999-999-999
\.


--
-- TOC entry 3748 (class 0 OID 60532)
-- Dependencies: 256
-- Data for Name: tab_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_messages (messages_id, add_date, content, end_date, messages_active, start_date, title, hospital_id, user_id) FROM stdin;
\.


--
-- TOC entry 3749 (class 0 OID 60539)
-- Dependencies: 257
-- Data for Name: tab_messages__type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_messages__type (messages_type_id, messages_type_name) FROM stdin;
\.


--
-- TOC entry 3751 (class 0 OID 60545)
-- Dependencies: 259
-- Data for Name: tab_messages_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_messages_files (messages_files_id, file_name, file_url, message_file_active, messages_id) FROM stdin;
\.


--
-- TOC entry 3724 (class 0 OID 59660)
-- Dependencies: 229
-- Data for Name: tab_password_change; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_password_change (password_change_id, created_date, last_change, must_change, user_id) FROM stdin;
\.


--
-- TOC entry 3726 (class 0 OID 59664)
-- Dependencies: 231
-- Data for Name: tab_password_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_password_history (password_history_id, last_change, last_password, old_password, user_login, user_id, password_string) FROM stdin;
1	2024-03-01 08:00:00	sdfsadf	sdfsadf	skaznika	1	\N
\.


--
-- TOC entry 3727 (class 0 OID 59669)
-- Dependencies: 232
-- Data for Name: tab_private_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_private_message (private_message_id, add_date, content, date_end, is_read, title, user_id) FROM stdin;
1	2024-05-14 12:00:00	Testowa wiadomość	\N	f	Test	1
\.


--
-- TOC entry 3730 (class 0 OID 59676)
-- Dependencies: 235
-- Data for Name: tab_reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_reports (id, date) FROM stdin;
1	2024-09-04
2	2024-09-05
3	2024-09-06
4	2024-09-07
\.


--
-- TOC entry 3731 (class 0 OID 59679)
-- Dependencies: 236
-- Data for Name: tab_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_role (role_id, role, "desc") FROM stdin;
1	GLOBAL_ADMIN	Rola Globalnego Administratora
2	HOSPITAL_ADMIN	Rola dla Administratora Szpitala/Dysponenta
3	ORM_ADMIN	Rola dla Administratora ORM
4	NFZ_ADMIN	Rola dla Administratora NFZ
5	WKRM_ADMIN	Rola dla Administratora WKRM
6	HOSPITAL_USER	Rola dla zwykłego usera - Szpital/Dysponent
7	ORM_USER	Rola dla zwykłego usera - ORMt
8	NFZ_USER	Rola dla zwykłego usera - NFZ
9	WKRM_USER	Rola dla zwykłego usera - WKRM
10	USER	Rola dla zwykłego usera
11	DM_ADMIN	Rola administratora dla DM
12	DM_USER	Rola dla zwykłego użytkownika-DM
13	WPR_USER	Rola dla zwykłego usera - WPR
\.


--
-- TOC entry 3733 (class 0 OID 59683)
-- Dependencies: 238
-- Data for Name: tab_simc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_simc (simc_id, data_aktualizacji, gmi, mz, nazwa, pow, rm, rodz_gm, stan_na, sym, sympod, woj) FROM stdin;
\.


--
-- TOC entry 3735 (class 0 OID 59687)
-- Dependencies: 240
-- Data for Name: tab_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_status (status_id, name, status_description, status_name) FROM stdin;
\.


--
-- TOC entry 3736 (class 0 OID 59692)
-- Dependencies: 241
-- Data for Name: tab_terc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_terc (terc_id, data_aktualizacji, gmi, nazwa, nazwa_dod, pow, rodz, stan_na, woj) FROM stdin;
\.


--
-- TOC entry 3738 (class 0 OID 59698)
-- Dependencies: 243
-- Data for Name: tab_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_type (type_id, type_description, type_name) FROM stdin;
\.


--
-- TOC entry 3746 (class 0 OID 60238)
-- Dependencies: 254
-- Data for Name: tab_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_users (id, active, email, first_name, last_name, name, password, password_changed_time, user_name, hospital_id) FROM stdin;
1	t	skaznika@wcpr.slask.eu	Adam	Skaźnik	Adam Skaźnik	$2a$10$QUfu3uwxlJsFI7elfYSYB.3ZWnunCFCwY1.k7VsH.uLMInVsELjN2	2024-08-26 08:40:45.3158	skaznika	73
\.


--
-- TOC entry 3739 (class 0 OID 59709)
-- Dependencies: 244
-- Data for Name: tab_wkrm_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_wkrm_question (id, nazwa, ordered, is_visible) FROM stdin;
\.


--
-- TOC entry 3740 (class 0 OID 59712)
-- Dependencies: 245
-- Data for Name: tab_wkrm_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_wkrm_status (id, nazwa) FROM stdin;
\.


--
-- TOC entry 3741 (class 0 OID 59715)
-- Dependencies: 246
-- Data for Name: user_branch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_branch (user_id, branch_id) FROM stdin;
\.


--
-- TOC entry 3742 (class 0 OID 59718)
-- Dependencies: 247
-- Data for Name: user_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_role (user_id, role_id) FROM stdin;
1	1
\.


--
-- TOC entry 3784 (class 0 OID 0)
-- Dependencies: 210
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 6440, true);


--
-- TOC entry 3785 (class 0 OID 0)
-- Dependencies: 270
-- Name: tab_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_document_id_seq', 1, false);


--
-- TOC entry 3786 (class 0 OID 0)
-- Dependencies: 284
-- Name: tab_hospital_branch_closed_fi_hospital_branch_closed_files__seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_hospital_branch_closed_fi_hospital_branch_closed_files__seq', 1, true);


--
-- TOC entry 3787 (class 0 OID 0)
-- Dependencies: 282
-- Name: tab_hospital_branch_closed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_hospital_branch_closed_id_seq', 1, true);


--
-- TOC entry 3788 (class 0 OID 0)
-- Dependencies: 288
-- Name: tab_hospital_failures_files_hospital_failures_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_hospital_failures_files_hospital_failures_files_id_seq', 1, true);


--
-- TOC entry 3789 (class 0 OID 0)
-- Dependencies: 286
-- Name: tab_hospital_failures_hospital_failures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_hospital_failures_hospital_failures_id_seq', 1, true);


--
-- TOC entry 3790 (class 0 OID 0)
-- Dependencies: 267
-- Name: tab_hospital_procedures_file_hospital_procedures_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_hospital_procedures_file_hospital_procedures_file_id_seq', 5, true);


--
-- TOC entry 3791 (class 0 OID 0)
-- Dependencies: 265
-- Name: tab_hospital_procedures_hospital_procedures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_hospital_procedures_hospital_procedures_id_seq', 9, true);


--
-- TOC entry 3792 (class 0 OID 0)
-- Dependencies: 250
-- Name: tab_hospital_procedures_type_hospital_procedures_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_hospital_procedures_type_hospital_procedures_type_id_seq', 1, false);


--
-- TOC entry 3793 (class 0 OID 0)
-- Dependencies: 272
-- Name: tab_hospital_report_hospital_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_hospital_report_hospital_report_id_seq', 2323, true);


--
-- TOC entry 3794 (class 0 OID 0)
-- Dependencies: 280
-- Name: tab_logi_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_logi_log_id_seq', 105, true);


--
-- TOC entry 3795 (class 0 OID 0)
-- Dependencies: 278
-- Name: tab_mail_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_mail_properties_id_seq', 1, false);


--
-- TOC entry 3796 (class 0 OID 0)
-- Dependencies: 225
-- Name: tab_messages_description_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_messages_description_seq', 1, false);


--
-- TOC entry 3797 (class 0 OID 0)
-- Dependencies: 258
-- Name: tab_messages_files_messages_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_messages_files_messages_files_id_seq', 1, true);


--
-- TOC entry 3798 (class 0 OID 0)
-- Dependencies: 226
-- Name: tab_messages_files_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_messages_files_seq', 1, false);


--
-- TOC entry 3799 (class 0 OID 0)
-- Dependencies: 255
-- Name: tab_messages_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_messages_messages_id_seq', 23, true);


--
-- TOC entry 3800 (class 0 OID 0)
-- Dependencies: 227
-- Name: tab_messages_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_messages_seq', 1, false);


--
-- TOC entry 3801 (class 0 OID 0)
-- Dependencies: 228
-- Name: tab_messages_type_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_messages_type_seq', 1, false);


--
-- TOC entry 3802 (class 0 OID 0)
-- Dependencies: 230
-- Name: tab_password_change_password_change_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_password_change_password_change_id_seq', 1, false);


--
-- TOC entry 3803 (class 0 OID 0)
-- Dependencies: 233
-- Name: tab_private_message_private_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_private_message_private_message_id_seq', 1, false);


--
-- TOC entry 3804 (class 0 OID 0)
-- Dependencies: 234
-- Name: tab_report_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_report_seq', 4, true);


--
-- TOC entry 3805 (class 0 OID 0)
-- Dependencies: 237
-- Name: tab_role_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_role_seq', 1, false);


--
-- TOC entry 3806 (class 0 OID 0)
-- Dependencies: 239
-- Name: tab_simc_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_simc_seq', 1, false);


--
-- TOC entry 3807 (class 0 OID 0)
-- Dependencies: 242
-- Name: tab_terc_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_terc_seq', 1, false);


--
-- TOC entry 3808 (class 0 OID 0)
-- Dependencies: 253
-- Name: tab_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_users_id_seq', 1, true);


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


-- Completed on 2024-09-06 09:54:00

--
-- PostgreSQL database dump complete
--

