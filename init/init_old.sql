--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 14.6

-- Started on 2024-09-02 13:25:06

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
1	f	dgdfgvdsfv	2024-06-27 22:00:00	2027-06-28	dvdvdfv	Test wyłaczenia z załacznikiem	73	411	1
\.


--
-- TOC entry 3774 (class 0 OID 61318)
-- Dependencies: 285
-- Data for Name: tab_hospital_branch_closed_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_branch_closed_files (hospital_branch_closed_files_id, file_active, file_name, file_url, local_date_time, hospital_branch_closed_id) FROM stdin;
1	t	instrukcja - wata.docx	uploadBranchClosed\\instrukcja - wata.docx	2024-06-28 08:42:22.490775	1
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
1	\N	2027-06-27 22:00:00	2024-06-27 22:00:00	Test awarii z załacznikiem	sdvdvdfvdsv	73	411	1
\.


--
-- TOC entry 3778 (class 0 OID 61334)
-- Dependencies: 289
-- Data for Name: tab_hospital_failures_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_failures_files (hospital_failures_files_id, file_active, file_name, file_url, local_date_time, hospital_failures_id) FROM stdin;
1	t	notatka - klimatyzatory.docx	uploadFailuresFiles\\notatka - klimatyzatory.docx	2024-06-28 08:43:00.753931	1
\.


--
-- TOC entry 3758 (class 0 OID 60647)
-- Dependencies: 266
-- Data for Name: tab_hospital_procedures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_procedures (hospital_procedures_id, description, local_date_time, modified_date_time, name, procedure_active, hospital_id, hospital_procedures_types_id, user_id) FROM stdin;
1	fghngffghnfgf	2024-06-21 11:30:53.24103	2024-06-21 11:30:53.24103	fghngfhg	t	73	3	1
2	Test zapisu kolejnej procedury	2024-06-24 06:29:59.094355	2024-06-24 06:29:59.094355	test	t	73	3	1
3	dfgsdvsdvsdfvvfds	2024-06-24 06:31:31.193361	2024-06-24 06:31:31.193361	test - ten sam załącznik	t	73	1	1
4	dfvdfvdsvdf sd 	2024-06-24 07:39:30.358028	2024-06-24 07:39:30.358028	sdfsadcsdcv	t	73	4	1
5	vdf fd df	2024-06-24 08:17:07.472349	2024-06-24 08:17:07.472349	dcsdcsdc	t	73	3	1
6	 d d df dv c vcx 	2024-06-24 08:17:44.895093	2024-06-24 08:17:44.895093	sdvdvdvd df	t	73	1	1
7	 df df df ds f	2024-06-24 08:18:05.236213	2024-06-24 08:18:05.236213	sdvcsv df df	t	73	1	1
8	dsfvdfvfdsfv	2024-06-24 08:30:55.188559	2024-06-24 08:30:55.188559	weffvdfv	t	73	3	1
9	xcv xdfvxdf xcv xd	2024-06-24 08:34:25.585676	2024-06-24 08:34:25.585676	vv cxvcxv cxv 	t	73	3	1
\.


--
-- TOC entry 3760 (class 0 OID 60655)
-- Dependencies: 268
-- Data for Name: tab_hospital_procedures_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_hospital_procedures_file (hospital_procedures_file_id, file_active, file_name, file_url, local_date_time, hospital_procedures_id) FROM stdin;
1	t	Instrukcja Awaryjna_agregaty.docx	uploadProcedures\\Instrukcja Awaryjna_agregaty.docx	2024-06-21 11:30:53.26903	1
2	t	kierownik.docx	uploadProcedures\\kierownik.docx	2024-06-24 06:29:59.117583	2
3	t	Pismo - Zamknięcie KZW (WPR).docx	uploadProcedures\\Pismo - Zamknięcie KZW (WPR).docx	2024-06-24 08:17:07.476347	5
4	t	Pismo - Zamknięcie KZW (Rydułtowy Wodzisław Śl.).docx	uploadProcedures\\Pismo - Zamknięcie KZW (Rydułtowy Wodzisław Śl.).docx	2024-06-24 08:17:44.899093	6
5	t	Pismo - Zamknięcie KZW (Żywiec)- styczeń_2024.docx	uploadProcedures\\Pismo - Zamknięcie KZW (Żywiec)- styczeń_2024.docx	2024-06-24 08:34:25.630712	9
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
775	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	3808	\N
776	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	3808	\N
777	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	3808	\N
778	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	3808	\N
779	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	3808	\N
780	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	3808	\N
781	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	3808	\N
782	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	3808	\N
783	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	3808	\N
784	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	3808	\N
785	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	3808	\N
786	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	3808	\N
787	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	3808	\N
788	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	3808	\N
789	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	3808	\N
790	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	3808	\N
791	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	3808	\N
792	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	3808	\N
793	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	3808	\N
794	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	3808	\N
795	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	3808	\N
796	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	3808	\N
797	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	3808	\N
798	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	3808	\N
799	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	3808	\N
800	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	3808	\N
801	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	3808	\N
802	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	3808	\N
803	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	3808	\N
804	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	3808	\N
805	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	3808	\N
806	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	3808	\N
807	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	3808	\N
808	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	3808	\N
809	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	3808	\N
810	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	3808	\N
811	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	3808	\N
812	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	3808	\N
813	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	3808	\N
814	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	3808	\N
815	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	3808	\N
816	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	3808	\N
817	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	3808	\N
818	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	3808	\N
819	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	3808	\N
820	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	3808	\N
821	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	3808	\N
822	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	3808	\N
823	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	3808	\N
824	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	3808	\N
825	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	3808	\N
826	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	3808	\N
827	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	3808	\N
828	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	3808	\N
829	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	3808	\N
830	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	3808	\N
831	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	3808	\N
832	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	3808	\N
833	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	3808	\N
834	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	3808	\N
835	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	3808	\N
836	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	3808	\N
837	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	3808	\N
838	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	3808	\N
839	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	3808	\N
840	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	3808	\N
841	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	3808	\N
842	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	3808	\N
843	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	3808	\N
844	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	3808	\N
845	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	3808	\N
846	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	3808	\N
847	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	3808	\N
848	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	3808	\N
849	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	3808	\N
850	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	3808	\N
851	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	3808	\N
852	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	3808	\N
853	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	3808	\N
854	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	3808	\N
855	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	3808	\N
856	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	3808	\N
857	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	3808	\N
858	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	3808	\N
859	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	3808	\N
860	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	3808	\N
861	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	3808	\N
862	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	3808	\N
863	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	3808	\N
864	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	3808	\N
865	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	3808	\N
866	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	3808	\N
867	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	3808	\N
868	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	3808	\N
869	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	3808	\N
870	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	3808	\N
871	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	3808	\N
872	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	3808	\N
873	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	3808	\N
874	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	3808	\N
875	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	3808	\N
876	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	3808	\N
877	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	3808	\N
878	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	3808	\N
879	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	3808	\N
880	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	3808	\N
881	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	3808	\N
882	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	3808	\N
883	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	3808	\N
884	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	3808	\N
885	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	3808	\N
886	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	3808	\N
887	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	3808	\N
888	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	3808	\N
889	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	3808	\N
890	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	3808	\N
891	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	3808	\N
892	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	3808	\N
893	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	3808	\N
894	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	3808	\N
895	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	3808	\N
896	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	3808	\N
897	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	3808	\N
898	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	3808	\N
899	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	3808	\N
900	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	3808	\N
901	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	3808	\N
902	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	3808	\N
903	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	3808	\N
904	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	3808	\N
905	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	3808	\N
906	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	3808	\N
907	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	3808	\N
908	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	3808	\N
909	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	3808	\N
910	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	3808	\N
911	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	3808	\N
912	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	3808	\N
913	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	3808	\N
914	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	3808	\N
915	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	3808	\N
916	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	3808	\N
917	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	3808	\N
918	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	3808	\N
919	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	3808	\N
920	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	3808	\N
921	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	3808	\N
922	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	3808	\N
923	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	3808	\N
924	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	3808	\N
925	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	3808	\N
926	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	3808	\N
927	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	3808	\N
928	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	3808	\N
929	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	3808	\N
930	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	3808	\N
931	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	3808	\N
932	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	3808	\N
933	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	3808	\N
934	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	3808	\N
935	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	3808	\N
936	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	3808	\N
937	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	3808	\N
938	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	3808	\N
939	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	3808	\N
940	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	3808	\N
941	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	3808	\N
942	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	3808	\N
943	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	3808	\N
944	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	3808	\N
945	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	3808	\N
946	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	3808	\N
947	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	3808	\N
948	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	3808	\N
949	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	3808	\N
950	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	3808	\N
951	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	3808	\N
952	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	3808	\N
953	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	3808	\N
954	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	3808	\N
955	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	3808	\N
956	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	3808	\N
957	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	3808	\N
958	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	3808	\N
959	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	3808	\N
960	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	3808	\N
961	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	3808	\N
962	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	3808	\N
963	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	3808	\N
964	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	3808	\N
965	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	3808	\N
966	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	3808	\N
967	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	3808	\N
968	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	3808	\N
969	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	3808	\N
970	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	3808	\N
971	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	3808	\N
972	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	3808	\N
973	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	3808	\N
974	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	3808	\N
975	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	3808	\N
976	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	3808	\N
977	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	3808	\N
978	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	3808	\N
979	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	3808	\N
980	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	3808	\N
981	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	3808	\N
982	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	3808	\N
983	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	3808	\N
984	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	3808	\N
985	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	3808	\N
986	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	3808	\N
987	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	3808	\N
988	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	3808	\N
989	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	3808	\N
990	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	3808	\N
991	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	3808	\N
992	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	3808	\N
993	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	3808	\N
994	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	3808	\N
995	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	3808	\N
996	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	3808	\N
997	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	3808	\N
998	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	3808	\N
999	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	3808	\N
1000	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	3808	\N
1001	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	3808	\N
1002	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	3808	\N
1003	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	3808	\N
1004	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	3808	\N
1005	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	3808	\N
1006	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	3808	\N
1007	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	3808	\N
1008	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	3808	\N
1009	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	3808	\N
1010	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	3808	\N
1011	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	3808	\N
1012	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	3808	\N
1013	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	3808	\N
1014	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	3808	\N
1015	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	3808	\N
1016	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	3808	\N
1017	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	3808	\N
1018	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	3808	\N
1019	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	3808	\N
1020	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	3808	\N
1021	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	3808	\N
1022	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	3808	\N
1023	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	3808	\N
1024	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	3808	\N
1025	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	3808	\N
1026	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	3808	\N
1027	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	3808	\N
1028	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	3808	\N
1029	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	3808	\N
1030	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	3808	\N
1031	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	3808	\N
1032	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	3808	\N
1033	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	3808	\N
1034	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	3808	\N
1035	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	3808	\N
1036	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	3808	\N
1037	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	3808	\N
1038	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	3808	\N
1039	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	3808	\N
1040	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	3808	\N
1041	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	3808	\N
1042	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	3808	\N
1043	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	3808	\N
1044	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	3808	\N
1045	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	3808	\N
1046	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	3808	\N
1047	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	3808	\N
1048	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	3808	\N
1049	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	3808	\N
1050	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	3808	\N
1051	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	3808	\N
1052	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	3808	\N
1053	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	3808	\N
1054	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	3808	\N
1055	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	3808	\N
1056	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	3808	\N
1057	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	3808	\N
1058	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	3808	\N
1059	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	3808	\N
1060	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	3808	\N
1061	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	3808	\N
1062	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	3808	\N
1063	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	3808	\N
1064	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	3808	\N
1065	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	3808	\N
1066	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	3808	\N
1067	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	3808	\N
1068	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	3808	\N
1069	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	3808	\N
1070	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	3808	\N
1071	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	3808	\N
1072	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	3808	\N
1073	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	3808	\N
1074	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	3808	\N
1075	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	3808	\N
1076	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	3808	\N
1077	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	3808	\N
1078	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	3808	\N
1079	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	3808	\N
1080	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	3808	\N
1081	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	3808	\N
1082	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	3808	\N
1083	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	3808	\N
1084	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	3808	\N
1085	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	3808	\N
1086	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	3808	\N
1087	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	3808	\N
1088	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	3808	\N
1089	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	3808	\N
1090	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	3808	\N
1091	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	3808	\N
1092	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	3808	\N
1093	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	3808	\N
1094	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	3808	\N
1095	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	3808	\N
1096	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	3808	\N
1097	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	3808	\N
1098	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	3808	\N
1099	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	3808	\N
1100	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	3808	\N
1101	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	3808	\N
1102	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	3808	\N
1103	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	3808	\N
1104	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	3808	\N
1105	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	3808	\N
1106	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	3808	\N
1107	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	3808	\N
1108	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	3808	\N
1109	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	3808	\N
1110	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	3808	\N
1111	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	3808	\N
1112	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	3808	\N
1113	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	3808	\N
1114	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	3808	\N
1115	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	3808	\N
1116	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	3808	\N
1117	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	3808	\N
1118	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	3808	\N
1119	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	3808	\N
1120	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	3808	\N
1121	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	3808	\N
1122	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	3808	\N
1123	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	3808	\N
1124	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	3808	\N
1125	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	3808	\N
1126	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	3808	\N
1127	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	3808	\N
1128	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	3808	\N
1129	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	3808	\N
1130	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	3808	\N
1131	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	3808	\N
1132	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	3808	\N
1133	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	3808	\N
1134	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	3808	\N
1135	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	3808	\N
1136	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	3808	\N
1137	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	3808	\N
1138	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	3808	\N
1139	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	3808	\N
1140	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	3808	\N
1141	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	3808	\N
1142	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	3808	\N
1143	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	3808	\N
1144	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	3808	\N
1145	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	3808	\N
1146	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	3808	\N
1147	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	3808	\N
1148	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	3808	\N
1149	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	3808	\N
1150	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	3808	\N
1151	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	3808	\N
1152	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	3808	\N
1153	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	3808	\N
1154	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	3808	\N
1155	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	3808	\N
1156	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	3808	\N
1157	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	3808	\N
1158	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	3808	\N
1159	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	3808	\N
1160	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	3808	\N
1161	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	3808	\N
1162	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	3808	\N
1163	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	3808	\N
1164	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	3808	\N
1165	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	3808	\N
1166	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	3808	\N
1167	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	3808	\N
1168	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	3808	\N
1169	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	3808	\N
1170	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	3808	\N
1171	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	3808	\N
1172	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	3808	\N
1173	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	3808	\N
1174	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	3808	\N
1175	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	3808	\N
1176	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	3808	\N
1177	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	3808	\N
1178	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	3808	\N
1179	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	3808	\N
1180	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	3808	\N
1181	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	3808	\N
1182	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	3808	\N
1183	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	3808	\N
1184	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	3808	\N
1185	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	3808	\N
1186	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	3808	\N
1187	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	3808	\N
1188	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	3808	\N
1189	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	3808	\N
1190	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	3808	\N
1191	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	3808	\N
1192	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	3808	\N
1193	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	3808	\N
1194	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	3808	\N
1195	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	3808	\N
1196	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	3808	\N
1197	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	3808	\N
1198	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	410	3808	\N
1199	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	3808	\N
1200	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	3808	\N
1201	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	413	3808	\N
1202	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	414	3808	\N
6193	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	3819	\N
1204	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	3808	\N
1205	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	3808	\N
1206	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	3808	\N
1207	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	3808	\N
1208	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	3808	\N
1209	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	3808	\N
1210	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	3808	\N
1211	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	3808	\N
1212	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	3808	\N
1213	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	3808	\N
1214	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	3808	\N
1215	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	3808	\N
1216	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	3808	\N
1217	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	3808	\N
1218	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	3808	\N
1219	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	3808	\N
1220	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	3808	\N
1221	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	3808	\N
1222	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	3808	\N
1223	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	3808	\N
1224	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	3808	\N
1225	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	3808	\N
1226	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	3808	\N
1227	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	3808	\N
1228	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	3808	\N
1229	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	3808	\N
1230	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	3808	\N
1231	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	3808	\N
1232	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	3808	\N
1233	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	3808	\N
1234	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	3808	\N
1235	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	3808	\N
1236	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	3808	\N
1237	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	3808	\N
1238	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	3808	\N
1239	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	3808	\N
1240	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	3808	\N
1241	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	3808	\N
1242	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	3808	\N
1243	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	3808	\N
1244	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	3808	\N
1245	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	3808	\N
1246	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	3808	\N
1247	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	3808	\N
1248	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	3808	\N
1249	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	3808	\N
1250	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	3808	\N
1251	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	3808	\N
1252	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	3808	\N
1253	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	3808	\N
1254	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	3808	\N
1255	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	3808	\N
1256	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	3808	\N
1257	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	3808	\N
1258	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	3808	\N
1259	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	3808	\N
1260	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	3808	\N
1261	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	3808	\N
1262	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	3808	\N
1263	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	3808	\N
1264	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	3808	\N
1265	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	3808	\N
1266	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	3808	\N
1267	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	3808	\N
1268	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	3808	\N
1269	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	3808	\N
1270	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	3808	\N
1271	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	3808	\N
1272	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	3808	\N
1273	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	3808	\N
1274	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	3808	\N
1275	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	3808	\N
1276	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	3808	\N
1277	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	3808	\N
1278	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	3808	\N
1279	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	3808	\N
1280	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	3808	\N
1281	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	3808	\N
1282	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	3808	\N
1283	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	3808	\N
1284	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	3808	\N
1285	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	3808	\N
1286	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	3808	\N
1287	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	3808	\N
1288	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	3808	\N
1289	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	3808	\N
1290	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	3808	\N
1291	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	3808	\N
1292	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	3808	\N
1293	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	3808	\N
1294	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	3808	\N
1295	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	3808	\N
1296	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	3808	\N
1297	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	3808	\N
1298	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	3808	\N
1299	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	3808	\N
1300	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	3808	\N
1301	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	3808	\N
1302	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	3808	\N
1303	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	3808	\N
1304	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	3808	\N
1305	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	3808	\N
1306	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	3808	\N
1307	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	3808	\N
1308	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	3808	\N
1309	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	3808	\N
1310	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	3808	\N
1311	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	3808	\N
1312	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	3808	\N
1313	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	3808	\N
1314	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	3808	\N
1315	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	3808	\N
1316	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	3808	\N
1317	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	3808	\N
1318	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	3808	\N
1319	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	3808	\N
1320	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	3808	\N
1321	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	3808	\N
1322	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	3808	\N
1323	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	3808	\N
1324	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	3808	\N
1325	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	3808	\N
1326	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	3808	\N
1327	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	3808	\N
1328	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	3808	\N
1329	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	3808	\N
1330	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	3808	\N
1331	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	3808	\N
1332	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	3808	\N
1333	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	3808	\N
1334	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	3808	\N
1335	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	3808	\N
1336	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	3808	\N
1337	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	3808	\N
1338	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	3808	\N
1339	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	3808	\N
1340	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	3808	\N
1341	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	3808	\N
1342	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	3808	\N
1343	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	3808	\N
1344	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	3808	\N
1345	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	3808	\N
1346	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	3808	\N
1347	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	3808	\N
1348	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	3808	\N
1349	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	3808	\N
1350	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	3808	\N
1351	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	3808	\N
1352	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	3808	\N
1353	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	3808	\N
1354	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	3808	\N
1355	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	3808	\N
1356	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	3808	\N
1357	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	3808	\N
1358	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	3808	\N
1359	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	3808	\N
1360	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	3808	\N
1361	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	3808	\N
1362	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	3808	\N
1363	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	3808	\N
1364	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	3808	\N
1365	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	3808	\N
1366	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	3808	\N
1367	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	3808	\N
1368	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	3808	\N
1369	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	3808	\N
1370	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	3808	\N
1371	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	3808	\N
1372	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	3808	\N
1373	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	3808	\N
1374	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	3808	\N
1375	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	3808	\N
1376	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	3808	\N
1377	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	3808	\N
1378	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	3808	\N
1379	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	3808	\N
1380	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	3808	\N
1381	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	3808	\N
1382	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	3808	\N
1383	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	3808	\N
1384	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	3808	\N
1385	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	3808	\N
1386	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	3808	\N
1387	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	3808	\N
1388	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	3808	\N
1389	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	3808	\N
1390	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	3808	\N
1391	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	3808	\N
1392	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	3808	\N
1393	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	3808	\N
1394	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	3808	\N
1395	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	3808	\N
1396	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	3808	\N
1397	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	3808	\N
1398	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	3808	\N
1399	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	3808	\N
1400	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	3808	\N
1401	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	3808	\N
1402	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	3808	\N
1403	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	3808	\N
1404	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	3808	\N
1405	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	3808	\N
1406	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	3808	\N
1407	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	3808	\N
1408	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	3808	\N
1409	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	3808	\N
1410	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	3808	\N
1411	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	3808	\N
1412	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	3808	\N
1413	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	3808	\N
1414	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	3808	\N
1415	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	3808	\N
1416	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	3808	\N
1417	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	3808	\N
1418	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	3808	\N
1419	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	3808	\N
1420	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	3808	\N
1421	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	3808	\N
1422	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	3808	\N
1423	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	3808	\N
1424	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	3808	\N
1425	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	3808	\N
1426	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	3808	\N
1427	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	3808	\N
1428	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	3808	\N
1429	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	3808	\N
1430	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	3808	\N
1431	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	3808	\N
1432	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	3808	\N
1433	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	3808	\N
1434	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	3808	\N
1435	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	3808	\N
1436	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	3808	\N
1437	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	3808	\N
1438	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	3808	\N
1439	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	3808	\N
1440	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	3808	\N
1441	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	3808	\N
1442	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	3808	\N
1443	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	3808	\N
1444	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	3808	\N
1445	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	3808	\N
1446	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	3808	\N
1447	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	3808	\N
1448	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	3808	\N
1449	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	3808	\N
1450	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	3808	\N
1451	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	3808	\N
1452	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	3808	\N
1453	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	3808	\N
1454	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	3808	\N
1455	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	3808	\N
1456	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	3808	\N
1457	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	3808	\N
1458	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	3808	\N
1459	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	3808	\N
1460	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	3808	\N
1461	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	3808	\N
1462	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	3808	\N
1463	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	3808	\N
1464	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	3808	\N
1465	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	3808	\N
1466	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	3808	\N
1467	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	3808	\N
1468	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	3808	\N
1469	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	3808	\N
1470	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	3808	\N
1471	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	3808	\N
1472	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	3808	\N
1473	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	3808	\N
1474	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	3808	\N
1475	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	3808	\N
1476	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	3808	\N
1477	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	3808	\N
1478	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	3808	\N
1479	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	3808	\N
1480	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	3808	\N
1481	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	3808	\N
1482	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	3808	\N
1483	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	3808	\N
1484	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	3808	\N
1485	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	3808	\N
1486	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	3808	\N
1487	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	3808	\N
1488	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	3808	\N
1489	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	3808	\N
1490	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	3808	\N
1491	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	3808	\N
1492	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	3808	\N
1493	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	3808	\N
1494	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	3808	\N
1495	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	3808	\N
1496	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	3808	\N
1497	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	3808	\N
1498	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	3808	\N
1499	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	3808	\N
1500	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	3808	\N
1501	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	3808	\N
1502	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	3808	\N
1503	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	3808	\N
1504	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	3808	\N
1505	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	3808	\N
1506	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	3808	\N
1507	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	3808	\N
1508	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	3808	\N
1509	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	3808	\N
1510	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	3808	\N
1511	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	3808	\N
1512	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	3808	\N
1513	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	3808	\N
1514	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	3808	\N
1515	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	3808	\N
1516	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	3808	\N
1517	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	3808	\N
1518	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	3808	\N
1519	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	3808	\N
1520	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	3808	\N
1521	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	3808	\N
1522	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	3808	\N
1523	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	3808	\N
1524	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	3808	\N
1525	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	3808	\N
1526	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	3808	\N
1527	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	3808	\N
1528	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	3808	\N
1529	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	3808	\N
1530	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	3808	\N
1531	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	3808	\N
1532	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	3808	\N
1533	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	3808	\N
1534	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	3808	\N
1535	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	3808	\N
1536	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	3808	\N
1537	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	3808	\N
1538	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	3808	\N
1539	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	3808	\N
1540	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	3808	\N
1541	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	3808	\N
1542	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	3808	\N
1543	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	3808	\N
1544	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	3808	\N
1545	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	3808	\N
1546	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	3808	\N
1547	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	3808	\N
1548	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	3808	\N
108	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	121	3807	\N
109	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	122	3807	\N
110	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	123	3807	\N
111	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	124	3807	\N
112	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	126	3807	\N
113	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	127	3807	\N
114	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	128	3807	\N
115	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	129	3807	\N
116	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	130	3807	\N
117	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	131	3807	\N
118	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	132	3807	\N
119	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	133	3807	\N
120	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	134	3807	\N
121	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	1008	3807	\N
122	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	627	3807	\N
123	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	725	3807	\N
124	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	727	3807	\N
125	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	877	3807	\N
126	0	0	0	0	0	0	0	4	\N	\N	3	\N	\N	7	\N	\N	2024-06-25 08:23:57.491746	32	1051	3807	\N
159	0	0	0	0	0	0	0	3	\N	\N	5	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	38	162	3807	\N
160	0	0	0	0	0	0	0	3	\N	\N	5	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	38	163	3807	\N
161	0	0	0	0	0	0	0	3	\N	\N	5	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	38	165	3807	\N
162	0	0	0	0	0	0	0	3	\N	\N	5	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	38	721	3807	\N
3092	0	0	0	5	0	0	0	1	2024-06-28 09:33:10.668102	1	1	2024-06-28 09:33:10.668102	1	0	2024-06-28 09:33:10.668102	0	2024-06-28 09:33:10.668102	73	414	3810	1
3091	0	0	0	-1	0	0	0	3	2024-06-28 09:34:34.04995	3	3	2024-06-28 09:34:34.04995	3	3	2024-06-28 09:34:34.04995	3	2024-06-28 09:34:34.04995	73	413	3810	1
155	0	0	0	0	0	0	0	6	\N	\N	9	\N	\N	1	\N	\N	2024-06-25 08:23:57.491746	37	155	3807	\N
156	0	0	0	0	0	0	0	6	\N	\N	9	\N	\N	1	\N	\N	2024-06-25 08:23:57.491746	37	734	3807	\N
3697	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	3811	\N
3698	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	3811	\N
3699	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	3811	\N
3700	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	3811	\N
3701	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	3811	\N
3702	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	3811	\N
3703	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	3811	\N
3704	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	3811	\N
3705	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	3811	\N
3706	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	3811	\N
3707	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	3811	\N
3708	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	3811	\N
3709	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	3811	\N
3710	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	3811	\N
3711	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	3811	\N
6194	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	3819	\N
6195	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	3819	\N
6196	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	3819	\N
6197	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	3819	\N
6198	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	3819	\N
1549	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	3809	\N
1550	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	3809	\N
1551	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	3809	\N
1552	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	3809	\N
1554	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	3809	\N
1556	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	3809	\N
1557	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	3809	\N
1558	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	3809	\N
1559	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	3809	\N
1560	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	3809	\N
1561	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	3809	\N
1562	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	3809	\N
1563	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	3809	\N
1564	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	3809	\N
1565	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	3809	\N
1566	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	3809	\N
1567	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	3809	\N
1568	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	3809	\N
1569	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	3809	\N
1570	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	3809	\N
1571	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	3809	\N
1572	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	3809	\N
1573	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	3809	\N
1574	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	3809	\N
1575	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	3809	\N
1576	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	3809	\N
1577	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	3809	\N
1578	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	3809	\N
1579	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	3809	\N
1580	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	3809	\N
1581	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	3809	\N
1582	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	3809	\N
1583	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	3809	\N
1584	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	3809	\N
1585	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	3809	\N
1586	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	3809	\N
1587	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	3809	\N
1588	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	3809	\N
1589	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	3809	\N
1590	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	3809	\N
1591	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	3809	\N
1592	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	3809	\N
1593	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	3809	\N
1594	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	3809	\N
1595	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	3809	\N
1596	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	3809	\N
1597	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	3809	\N
1598	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	3809	\N
1599	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	3809	\N
1600	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	3809	\N
1601	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	3809	\N
1602	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	3809	\N
1603	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	3809	\N
1604	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	3809	\N
1605	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	3809	\N
1606	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	3809	\N
1607	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	3809	\N
1608	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	3809	\N
1609	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	3809	\N
1610	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	3809	\N
1611	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	3809	\N
1612	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	3809	\N
1613	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	3809	\N
1614	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	3809	\N
1615	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	3809	\N
1616	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	3809	\N
1617	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	3809	\N
1618	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	3809	\N
1619	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	3809	\N
1620	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	3809	\N
1621	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	3809	\N
1622	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	3809	\N
1623	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	3809	\N
1553	0	0	0	0	0	0	0	0	2024-06-27 11:45:04.800021	0	13	2024-06-27 11:45:04.800021	13	0	2024-06-27 11:45:04.800021	0	2024-06-27 11:45:04.800021	21	28	3809	1
1624	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	3809	\N
1625	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	3809	\N
1626	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	3809	\N
1627	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	3809	\N
1628	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	3809	\N
1629	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	3809	\N
1630	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	3809	\N
1631	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	3809	\N
1632	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	3809	\N
1633	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	3809	\N
1634	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	3809	\N
1635	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	3809	\N
1636	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	3809	\N
1637	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	3809	\N
1638	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	3809	\N
1639	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	3809	\N
1640	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	3809	\N
1641	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	3809	\N
1642	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	3809	\N
1643	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	3809	\N
1644	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	3809	\N
1645	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	3809	\N
1646	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	3809	\N
1647	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	3809	\N
1648	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	3809	\N
1649	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	3809	\N
1650	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	3809	\N
1651	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	3809	\N
1652	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	3809	\N
1653	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	3809	\N
1654	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	3809	\N
1655	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	3809	\N
1656	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	3809	\N
1657	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	3809	\N
1658	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	3809	\N
1659	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	3809	\N
1660	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	3809	\N
1661	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	3809	\N
1662	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	3809	\N
1663	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	3809	\N
1664	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	3809	\N
1665	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	3809	\N
1666	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	3809	\N
1667	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	3809	\N
1668	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	3809	\N
1669	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	3809	\N
1670	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	3809	\N
1671	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	3809	\N
1672	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	3809	\N
1673	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	3809	\N
1674	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	3809	\N
1675	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	3809	\N
1676	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	3809	\N
1677	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	3809	\N
1678	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	3809	\N
1679	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	3809	\N
1680	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	3809	\N
1681	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	3809	\N
1682	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	3809	\N
1683	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	3809	\N
1684	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	3809	\N
1685	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	3809	\N
1686	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	3809	\N
1687	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	3809	\N
1688	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	3809	\N
1689	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	3809	\N
1690	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	3809	\N
1691	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	3809	\N
1692	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	3809	\N
1693	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	3809	\N
1694	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	3809	\N
1695	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	3809	\N
1696	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	3809	\N
1697	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	3809	\N
1698	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	3809	\N
1699	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	3809	\N
1700	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	3809	\N
1701	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	3809	\N
1702	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	3809	\N
1703	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	3809	\N
1704	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	3809	\N
1705	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	3809	\N
1706	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	3809	\N
1707	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	3809	\N
1708	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	3809	\N
1709	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	3809	\N
1710	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	3809	\N
1711	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	3809	\N
1712	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	3809	\N
1713	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	3809	\N
1714	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	3809	\N
1715	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	3809	\N
1716	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	3809	\N
1717	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	3809	\N
1718	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	3809	\N
1719	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	3809	\N
1720	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	3809	\N
1721	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	3809	\N
1722	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	3809	\N
1723	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	3809	\N
1724	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	3809	\N
1725	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	3809	\N
1726	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	3809	\N
1727	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	3809	\N
1728	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	3809	\N
1729	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	3809	\N
1730	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	3809	\N
1731	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	3809	\N
1732	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	3809	\N
1733	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	3809	\N
1734	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	3809	\N
1735	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	3809	\N
1736	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	3809	\N
1737	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	3809	\N
1738	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	3809	\N
1739	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	3809	\N
1740	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	3809	\N
1741	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	3809	\N
1742	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	3809	\N
1743	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	3809	\N
1744	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	3809	\N
1745	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	3809	\N
1746	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	3809	\N
1747	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	3809	\N
1748	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	3809	\N
1749	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	3809	\N
1750	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	3809	\N
1751	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	3809	\N
1752	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	3809	\N
1753	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	3809	\N
1754	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	3809	\N
1755	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	3809	\N
1756	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	3809	\N
1757	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	3809	\N
1758	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	3809	\N
1759	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	3809	\N
1760	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	3809	\N
1761	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	3809	\N
1762	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	3809	\N
1763	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	3809	\N
1764	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	3809	\N
1765	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	3809	\N
1766	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	3809	\N
1767	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	3809	\N
1768	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	3809	\N
1769	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	3809	\N
1770	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	3809	\N
1771	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	3809	\N
1772	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	3809	\N
1773	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	3809	\N
1774	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	3809	\N
1775	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	3809	\N
1776	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	3809	\N
1777	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	3809	\N
1778	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	3809	\N
1779	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	3809	\N
1780	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	3809	\N
1781	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	3809	\N
1782	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	3809	\N
1783	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	3809	\N
1784	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	3809	\N
1785	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	3809	\N
1786	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	3809	\N
1787	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	3809	\N
1788	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	3809	\N
1789	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	3809	\N
1790	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	3809	\N
1791	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	3809	\N
1792	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	3809	\N
1793	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	3809	\N
1794	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	3809	\N
1795	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	3809	\N
1796	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	3809	\N
1797	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	3809	\N
1798	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	3809	\N
1799	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	3809	\N
1800	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	3809	\N
1801	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	3809	\N
1802	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	3809	\N
1803	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	3809	\N
1804	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	3809	\N
1805	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	3809	\N
1806	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	3809	\N
1807	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	3809	\N
1808	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	3809	\N
1809	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	3809	\N
1810	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	3809	\N
1811	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	3809	\N
1812	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	3809	\N
1813	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	3809	\N
1814	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	3809	\N
1815	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	3809	\N
1816	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	3809	\N
1817	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	3809	\N
1818	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	3809	\N
1819	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	3809	\N
1820	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	3809	\N
1821	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	3809	\N
1822	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	3809	\N
1823	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	3809	\N
1824	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	3809	\N
1825	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	3809	\N
1826	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	3809	\N
1827	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	3809	\N
1828	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	3809	\N
1829	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	3809	\N
1830	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	3809	\N
1831	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	3809	\N
1832	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	3809	\N
1833	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	3809	\N
1834	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	3809	\N
1835	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	3809	\N
1836	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	3809	\N
1837	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	3809	\N
1838	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	3809	\N
1839	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	3809	\N
1840	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	3809	\N
1841	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	3809	\N
1842	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	3809	\N
1843	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	3809	\N
1844	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	3809	\N
1845	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	3809	\N
1846	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	3809	\N
1847	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	3809	\N
1848	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	3809	\N
1849	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	3809	\N
1850	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	3809	\N
1851	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	3809	\N
1852	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	3809	\N
1853	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	3809	\N
1854	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	3809	\N
1855	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	3809	\N
1856	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	3809	\N
1857	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	3809	\N
1858	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	3809	\N
1859	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	3809	\N
1860	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	3809	\N
1861	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	3809	\N
1862	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	3809	\N
1863	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	3809	\N
1864	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	3809	\N
1865	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	3809	\N
1866	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	3809	\N
1867	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	3809	\N
1868	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	3809	\N
1869	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	3809	\N
1870	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	3809	\N
1871	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	3809	\N
1872	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	3809	\N
1873	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	3809	\N
1874	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	3809	\N
1875	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	3809	\N
1876	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	3809	\N
1877	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	3809	\N
1878	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	3809	\N
1879	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	3809	\N
1880	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	3809	\N
1881	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	3809	\N
1882	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	3809	\N
1883	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	3809	\N
1884	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	3809	\N
1885	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	3809	\N
1886	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	3809	\N
1887	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	3809	\N
1888	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	3809	\N
1889	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	3809	\N
1890	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	3809	\N
1891	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	3809	\N
1892	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	3809	\N
1893	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	3809	\N
1894	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	3809	\N
1895	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	3809	\N
1896	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	3809	\N
1897	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	3809	\N
1898	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	3809	\N
1899	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	3809	\N
1900	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	3809	\N
1901	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	3809	\N
1902	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	3809	\N
1903	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	3809	\N
1904	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	3809	\N
1905	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	3809	\N
1906	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	3809	\N
1907	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	3809	\N
1908	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	3809	\N
1909	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	3809	\N
1910	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	3809	\N
1911	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	3809	\N
1912	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	3809	\N
1913	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	3809	\N
1914	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	3809	\N
1915	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	3809	\N
1916	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	3809	\N
1917	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	3809	\N
1918	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	3809	\N
1919	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	3809	\N
1920	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	3809	\N
1921	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	3809	\N
1922	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	3809	\N
1923	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	3809	\N
1924	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	3809	\N
1925	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	3809	\N
1926	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	3809	\N
1927	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	3809	\N
1928	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	3809	\N
1929	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	3809	\N
1930	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	3809	\N
1931	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	3809	\N
1932	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	3809	\N
1933	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	3809	\N
1934	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	3809	\N
1935	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	3809	\N
1936	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	3809	\N
1937	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	3809	\N
1938	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	3809	\N
1939	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	3809	\N
1940	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	3809	\N
1941	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	3809	\N
1942	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	3809	\N
1943	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	3809	\N
1944	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	3809	\N
1945	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	3809	\N
1946	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	3809	\N
1947	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	3809	\N
1948	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	3809	\N
1949	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	3809	\N
1950	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	3809	\N
1951	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	3809	\N
1952	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	3809	\N
1953	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	3809	\N
1954	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	3809	\N
1955	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	3809	\N
1956	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	3809	\N
1957	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	3809	\N
1958	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	3809	\N
1959	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	3809	\N
1960	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	3809	\N
1961	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	3809	\N
1962	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	3809	\N
1963	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	3809	\N
1964	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	3809	\N
1965	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	3809	\N
1966	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	3809	\N
1967	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	3809	\N
1968	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	3809	\N
1969	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	3809	\N
1970	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	3809	\N
1971	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	3809	\N
1972	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	3809	\N
1973	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	3809	\N
1974	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	3809	\N
1975	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	3809	\N
1976	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	3809	\N
1977	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	3809	\N
1978	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	3809	\N
1979	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	3809	\N
1980	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	3809	\N
1981	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	3809	\N
1982	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	3809	\N
1983	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	3809	\N
1984	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	3809	\N
1985	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	3809	\N
1986	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	3809	\N
1987	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	3809	\N
1988	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	3809	\N
1989	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	3809	\N
1990	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	3809	\N
1991	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	3809	\N
1992	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	3809	\N
1993	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	3809	\N
1994	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	3809	\N
1995	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	3809	\N
1996	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	3809	\N
1997	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	3809	\N
1998	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	3809	\N
1999	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	3809	\N
2000	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	3809	\N
2001	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	3809	\N
2002	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	3809	\N
2003	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	3809	\N
2004	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	3809	\N
2005	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	3809	\N
2006	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	3809	\N
2007	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	3809	\N
2008	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	3809	\N
2009	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	3809	\N
2010	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	3809	\N
2011	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	3809	\N
2012	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	3809	\N
2013	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	3809	\N
2014	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	3809	\N
2015	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	3809	\N
2016	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	3809	\N
2017	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	3809	\N
2018	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	3809	\N
2019	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	3809	\N
2020	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	3809	\N
2021	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	3809	\N
2022	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	3809	\N
2023	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	3809	\N
2024	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	3809	\N
2025	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	3809	\N
2026	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	3809	\N
2027	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	3809	\N
2028	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	3809	\N
2029	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	3809	\N
2030	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	3809	\N
2031	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	3809	\N
2032	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	3809	\N
2033	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	3809	\N
2034	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	3809	\N
2035	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	3809	\N
2036	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	3809	\N
2037	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	3809	\N
2038	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	3809	\N
2039	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	3809	\N
2040	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	3809	\N
2041	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	3809	\N
2042	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	3809	\N
2043	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	3809	\N
2044	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	3809	\N
2045	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	3809	\N
2046	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	3809	\N
2047	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	3809	\N
2048	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	3809	\N
2049	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	3809	\N
2050	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	3809	\N
2051	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	3809	\N
2052	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	3809	\N
2053	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	3809	\N
2054	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	3809	\N
2055	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	3809	\N
2056	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	3809	\N
2057	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	3809	\N
2058	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	3809	\N
2059	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	3809	\N
2060	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	3809	\N
2061	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	3809	\N
2062	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	3809	\N
2063	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	3809	\N
2064	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	3809	\N
2065	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	3809	\N
2066	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	3809	\N
2067	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	3809	\N
2068	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	3809	\N
2069	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	3809	\N
2070	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	3809	\N
2071	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	3809	\N
2072	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	3809	\N
2073	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	3809	\N
2074	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	3809	\N
2075	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	3809	\N
2076	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	3809	\N
2077	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	3809	\N
2078	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	3809	\N
2079	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	3809	\N
2080	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	3809	\N
2081	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	3809	\N
2082	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	3809	\N
2083	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	3809	\N
2084	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	3809	\N
2085	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	3809	\N
2086	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	3809	\N
2087	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	3809	\N
2088	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	3809	\N
2089	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	3809	\N
2090	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	3809	\N
2091	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	3809	\N
2092	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	3809	\N
2093	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	3809	\N
2094	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	3809	\N
2095	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	3809	\N
2096	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	3809	\N
2097	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	3809	\N
2098	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	3809	\N
2099	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	3809	\N
2100	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	3809	\N
2101	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	3809	\N
2102	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	3809	\N
2103	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	3809	\N
2104	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	3809	\N
2105	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	3809	\N
2106	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	3809	\N
2107	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	3809	\N
2108	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	3809	\N
2109	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	3809	\N
2110	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	3809	\N
2111	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	3809	\N
2112	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	3809	\N
2113	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	3809	\N
2114	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	3809	\N
2115	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	3809	\N
2116	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	3809	\N
2117	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	3809	\N
2118	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	3809	\N
2119	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	3809	\N
2120	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	3809	\N
2121	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	3809	\N
2122	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	3809	\N
2123	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	3809	\N
2124	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	3809	\N
2125	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	3809	\N
2126	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	3809	\N
2127	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	3809	\N
2128	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	3809	\N
2129	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	3809	\N
2130	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	3809	\N
2131	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	3809	\N
2132	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	3809	\N
2133	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	3809	\N
2134	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	3809	\N
2135	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	3809	\N
2136	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	3809	\N
2137	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	3809	\N
2138	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	3809	\N
2139	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	3809	\N
2140	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	3809	\N
2141	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	3809	\N
2142	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	3809	\N
2143	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	3809	\N
2144	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	3809	\N
2145	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	3809	\N
2146	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	3809	\N
2147	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	3809	\N
2148	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	3809	\N
2149	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	3809	\N
2150	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	3809	\N
2151	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	3809	\N
2152	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	3809	\N
2153	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	3809	\N
2154	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	3809	\N
2155	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	3809	\N
2156	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	3809	\N
2157	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	3809	\N
2158	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	3809	\N
2159	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	3809	\N
2160	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	3809	\N
2161	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	3809	\N
2162	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	3809	\N
2163	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	3809	\N
2164	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	3809	\N
2165	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	3809	\N
2166	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	3809	\N
2167	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	3809	\N
2168	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	3809	\N
2169	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	3809	\N
2170	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	3809	\N
2171	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	3809	\N
2172	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	3809	\N
2173	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	3809	\N
2174	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	3809	\N
2175	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	3809	\N
2176	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	3809	\N
2177	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	3809	\N
2178	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	3809	\N
2179	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	3809	\N
2180	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	3809	\N
2181	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	3809	\N
2182	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	3809	\N
2183	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	3809	\N
2184	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	3809	\N
2185	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	3809	\N
2186	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	3809	\N
2187	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	3809	\N
2188	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	3809	\N
2189	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	3809	\N
2190	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	3809	\N
2191	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	3809	\N
2192	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	3809	\N
2193	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	3809	\N
2194	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	3809	\N
2195	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	3809	\N
2196	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	3809	\N
2197	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	3809	\N
2198	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	3809	\N
2199	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	3809	\N
2200	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	3809	\N
2201	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	3809	\N
2202	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	3809	\N
2203	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	3809	\N
2204	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	3809	\N
2205	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	3809	\N
2206	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	3809	\N
2207	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	3809	\N
2208	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	3809	\N
2209	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	3809	\N
2210	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	3809	\N
2211	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	3809	\N
2212	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	3809	\N
2213	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	3809	\N
2214	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	3809	\N
2215	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	3809	\N
2216	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	3809	\N
2217	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	3809	\N
2218	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	3809	\N
2219	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	3809	\N
2220	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	3809	\N
2221	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	3809	\N
2222	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	3809	\N
2223	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	3809	\N
1	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	10	427	3807	\N
2	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	75	3807	\N
3	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	20	24	3807	\N
4	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	21	27	3807	\N
5	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	21	28	3807	\N
6	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	21	29	3807	\N
7	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	21	31	3807	\N
8	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	21	841	3807	\N
9	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	22	32	3807	\N
10	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	22	33	3807	\N
11	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	23	34	3807	\N
12	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	23	35	3807	\N
13	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	23	36	3807	\N
14	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	23	707	3807	\N
15	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	37	3807	\N
16	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	39	3807	\N
17	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	40	3807	\N
18	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	41	3807	\N
19	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	42	3807	\N
20	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	43	3807	\N
21	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	44	3807	\N
22	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	45	3807	\N
23	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	46	3807	\N
24	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	49	3807	\N
2224	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	3809	\N
2225	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	3809	\N
2226	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	3809	\N
2227	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	3809	\N
2228	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	3809	\N
2229	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	3809	\N
2230	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	3809	\N
2231	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	3809	\N
2232	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	3809	\N
2233	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	3809	\N
2234	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	3809	\N
2235	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	3809	\N
2236	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	3809	\N
2237	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	3809	\N
2238	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	3809	\N
2239	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	3809	\N
2240	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	3809	\N
2241	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	3809	\N
2242	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	3809	\N
2243	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	3809	\N
2244	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	3809	\N
2245	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	3809	\N
2246	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	3809	\N
2247	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	3809	\N
2248	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	3809	\N
2249	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	3809	\N
2250	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	3809	\N
2251	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	3809	\N
2252	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	3809	\N
2253	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	3809	\N
2254	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	3809	\N
2255	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	3809	\N
2256	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	3809	\N
2257	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	3809	\N
2258	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	3809	\N
2259	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	3809	\N
2260	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	3809	\N
2261	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	3809	\N
2262	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	3809	\N
2263	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	3809	\N
2264	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	3809	\N
2265	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	3809	\N
2266	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	3809	\N
2267	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	3809	\N
2268	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	3809	\N
2269	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	3809	\N
2270	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	3809	\N
2271	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	3809	\N
2272	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	3809	\N
2273	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	3809	\N
2274	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	3809	\N
2275	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	3809	\N
2276	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	3809	\N
2277	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	3809	\N
2278	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	3809	\N
2279	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	3809	\N
2280	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	3809	\N
2281	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	3809	\N
2282	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	3809	\N
2283	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	3809	\N
2284	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	3809	\N
2285	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	3809	\N
2286	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	3809	\N
2287	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	3809	\N
2288	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	3809	\N
2289	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	3809	\N
2290	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	3809	\N
2291	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	3809	\N
2292	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	3809	\N
2293	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	3809	\N
2294	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	3809	\N
2295	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	3809	\N
2296	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	3809	\N
2297	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	3809	\N
2298	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	3809	\N
2299	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	3809	\N
2300	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	3809	\N
2301	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	3809	\N
2302	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	3809	\N
2303	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	3809	\N
2304	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	3809	\N
2305	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	3809	\N
2306	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	3809	\N
2307	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	3809	\N
2308	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	3809	\N
2309	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	3809	\N
2310	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	3809	\N
2311	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	3809	\N
2312	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	3809	\N
2313	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	3809	\N
2314	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	410	3809	\N
2315	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	3809	\N
2316	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	3809	\N
2317	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	413	3809	\N
2318	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	414	3809	\N
2319	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	3809	\N
2320	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	3809	\N
2321	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	3809	\N
2322	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	3809	\N
3712	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	3811	\N
3713	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	3811	\N
3714	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	3811	\N
3715	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	3811	\N
3716	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	3811	\N
3717	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	3811	\N
3718	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	3811	\N
3719	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	3811	\N
3720	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	3811	\N
3721	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	3811	\N
3722	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	3811	\N
3723	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	3811	\N
3724	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	3811	\N
3725	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	3811	\N
3726	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	3811	\N
3727	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	3811	\N
3728	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	3811	\N
3729	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	3811	\N
3730	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	3811	\N
3731	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	3811	\N
3732	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	3811	\N
3733	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	3811	\N
3734	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	3811	\N
3735	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	3811	\N
2323	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	3810	\N
2324	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	3810	\N
2325	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	3810	\N
2326	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	3810	\N
2327	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	3810	\N
2328	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	3810	\N
2329	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	3810	\N
2330	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	3810	\N
2331	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	3810	\N
2332	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	3810	\N
2333	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	3810	\N
2334	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	3810	\N
2335	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	3810	\N
2336	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	3810	\N
2337	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	3810	\N
2338	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	3810	\N
2339	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	3810	\N
2340	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	3810	\N
2341	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	3810	\N
2342	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	3810	\N
2343	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	3810	\N
2344	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	3810	\N
2345	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	3810	\N
2346	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	3810	\N
2347	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	3810	\N
2348	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	3810	\N
2349	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	3810	\N
2350	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	3810	\N
2351	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	3810	\N
2352	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	3810	\N
2353	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	3810	\N
2354	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	3810	\N
2355	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	3810	\N
2356	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	3810	\N
2357	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	3810	\N
2358	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	3810	\N
2359	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	3810	\N
2360	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	3810	\N
2361	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	3810	\N
2362	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	3810	\N
2363	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	3810	\N
2364	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	3810	\N
2365	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	3810	\N
2366	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	3810	\N
2367	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	3810	\N
2368	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	3810	\N
2369	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	3810	\N
2370	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	3810	\N
2371	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	3810	\N
2372	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	3810	\N
2373	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	3810	\N
2374	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	3810	\N
2375	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	3810	\N
2376	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	3810	\N
2377	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	3810	\N
2378	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	3810	\N
2379	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	3810	\N
2380	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	3810	\N
2381	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	3810	\N
2382	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	3810	\N
2383	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	3810	\N
2384	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	3810	\N
2385	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	3810	\N
2386	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	3810	\N
2387	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	3810	\N
2388	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	3810	\N
2389	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	3810	\N
2390	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	3810	\N
2391	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	3810	\N
2392	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	3810	\N
2393	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	3810	\N
2394	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	3810	\N
2395	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	3810	\N
2396	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	3810	\N
2397	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	3810	\N
2398	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	3810	\N
2399	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	3810	\N
2400	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	3810	\N
2401	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	3810	\N
2402	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	3810	\N
2403	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	3810	\N
2404	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	3810	\N
2405	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	3810	\N
2406	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	3810	\N
2407	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	3810	\N
2408	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	3810	\N
2409	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	3810	\N
2410	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	3810	\N
2411	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	3810	\N
2412	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	3810	\N
2413	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	3810	\N
2414	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	3810	\N
2415	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	3810	\N
2416	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	3810	\N
2417	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	3810	\N
2418	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	3810	\N
2419	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	3810	\N
2420	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	3810	\N
2421	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	3810	\N
2422	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	3810	\N
2423	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	3810	\N
2424	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	3810	\N
2425	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	3810	\N
2426	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	3810	\N
2427	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	3810	\N
2428	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	3810	\N
2429	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	3810	\N
2430	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	3810	\N
2431	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	3810	\N
2432	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	3810	\N
2433	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	3810	\N
2434	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	3810	\N
2435	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	3810	\N
2436	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	3810	\N
2437	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	3810	\N
2438	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	3810	\N
2439	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	3810	\N
2440	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	3810	\N
2441	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	3810	\N
2442	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	3810	\N
2443	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	3810	\N
2444	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	3810	\N
2445	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	3810	\N
2446	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	3810	\N
2447	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	3810	\N
2448	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	3810	\N
2449	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	3810	\N
2450	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	3810	\N
2451	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	3810	\N
2452	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	3810	\N
2453	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	3810	\N
2454	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	3810	\N
2455	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	3810	\N
2456	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	3810	\N
2457	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	3810	\N
2458	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	3810	\N
2459	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	3810	\N
2460	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	3810	\N
2461	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	3810	\N
2462	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	3810	\N
2463	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	3810	\N
2464	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	3810	\N
2465	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	3810	\N
2466	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	3810	\N
2467	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	3810	\N
2468	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	3810	\N
2469	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	3810	\N
2470	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	3810	\N
2471	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	3810	\N
2472	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	3810	\N
2473	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	3810	\N
2474	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	3810	\N
2475	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	3810	\N
2476	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	3810	\N
2477	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	3810	\N
2478	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	3810	\N
2479	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	3810	\N
2480	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	3810	\N
2481	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	3810	\N
2482	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	3810	\N
2483	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	3810	\N
2484	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	3810	\N
2485	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	3810	\N
2486	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	3810	\N
2487	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	3810	\N
2488	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	3810	\N
2489	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	3810	\N
2490	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	3810	\N
2491	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	3810	\N
2492	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	3810	\N
2493	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	3810	\N
2494	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	3810	\N
2495	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	3810	\N
2496	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	3810	\N
2497	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	3810	\N
2498	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	3810	\N
2499	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	3810	\N
2500	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	3810	\N
2501	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	3810	\N
2502	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	3810	\N
2503	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	3810	\N
2504	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	3810	\N
2505	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	3810	\N
2506	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	3810	\N
2507	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	3810	\N
2508	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	3810	\N
2509	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	3810	\N
2510	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	3810	\N
2511	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	3810	\N
2512	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	3810	\N
2513	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	3810	\N
2514	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	3810	\N
2515	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	3810	\N
2516	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	3810	\N
2517	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	3810	\N
2518	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	3810	\N
2519	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	3810	\N
2520	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	3810	\N
2521	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	3810	\N
2522	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	3810	\N
2523	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	3810	\N
2524	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	3810	\N
2525	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	3810	\N
2526	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	3810	\N
2527	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	3810	\N
2528	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	3810	\N
2529	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	3810	\N
2530	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	3810	\N
2531	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	3810	\N
2532	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	3810	\N
2533	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	3810	\N
2534	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	3810	\N
2535	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	3810	\N
2536	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	3810	\N
2537	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	3810	\N
2538	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	3810	\N
2539	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	3810	\N
2540	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	3810	\N
2541	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	3810	\N
2542	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	3810	\N
2543	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	3810	\N
2544	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	3810	\N
2545	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	3810	\N
2546	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	3810	\N
2547	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	3810	\N
2548	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	3810	\N
2549	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	3810	\N
2550	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	3810	\N
2551	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	3810	\N
2552	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	3810	\N
2553	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	3810	\N
2554	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	3810	\N
2555	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	3810	\N
2556	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	3810	\N
2557	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	3810	\N
2558	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	3810	\N
2559	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	3810	\N
2560	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	3810	\N
2561	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	3810	\N
2562	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	3810	\N
2563	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	3810	\N
2564	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	3810	\N
2565	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	3810	\N
2566	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	3810	\N
2567	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	3810	\N
2568	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	3810	\N
2569	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	3810	\N
2570	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	3810	\N
2571	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	3810	\N
2572	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	3810	\N
2573	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	3810	\N
2574	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	3810	\N
2575	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	3810	\N
2576	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	3810	\N
2577	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	3810	\N
2578	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	3810	\N
2579	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	3810	\N
2580	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	3810	\N
2581	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	3810	\N
2582	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	3810	\N
2583	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	3810	\N
2584	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	3810	\N
2585	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	3810	\N
2586	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	3810	\N
2587	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	3810	\N
2588	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	3810	\N
2589	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	3810	\N
2590	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	3810	\N
2591	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	3810	\N
2592	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	3810	\N
2593	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	3810	\N
2594	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	3810	\N
2595	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	3810	\N
2596	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	3810	\N
2597	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	3810	\N
2598	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	3810	\N
2599	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	3810	\N
2600	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	3810	\N
2601	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	3810	\N
2602	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	3810	\N
2603	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	3810	\N
2604	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	3810	\N
2605	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	3810	\N
2606	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	3810	\N
2607	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	3810	\N
2608	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	3810	\N
2609	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	3810	\N
2610	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	3810	\N
2611	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	3810	\N
2612	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	3810	\N
2613	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	3810	\N
2614	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	3810	\N
2615	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	3810	\N
2616	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	3810	\N
2617	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	3810	\N
2618	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	3810	\N
2619	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	3810	\N
2620	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	3810	\N
2621	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	3810	\N
2622	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	3810	\N
2623	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	3810	\N
2624	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	3810	\N
2625	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	3810	\N
2626	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	3810	\N
2627	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	3810	\N
2628	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	3810	\N
2629	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	3810	\N
2630	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	3810	\N
2631	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	3810	\N
2632	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	3810	\N
2633	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	3810	\N
2634	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	3810	\N
2635	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	3810	\N
2636	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	3810	\N
2637	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	3810	\N
2638	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	3810	\N
2639	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	3810	\N
2640	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	3810	\N
2641	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	3810	\N
2642	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	3810	\N
2643	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	3810	\N
2644	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	3810	\N
2645	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	3810	\N
2646	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	3810	\N
2647	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	3810	\N
2648	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	3810	\N
2649	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	3810	\N
2650	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	3810	\N
2651	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	3810	\N
2652	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	3810	\N
2653	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	3810	\N
2654	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	3810	\N
2655	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	3810	\N
2656	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	3810	\N
2657	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	3810	\N
2658	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	3810	\N
2659	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	3810	\N
2660	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	3810	\N
2661	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	3810	\N
2662	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	3810	\N
2663	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	3810	\N
2664	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	3810	\N
2665	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	3810	\N
2666	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	3810	\N
2667	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	3810	\N
2668	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	3810	\N
2669	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	3810	\N
2670	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	3810	\N
2671	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	3810	\N
2672	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	3810	\N
2673	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	3810	\N
2674	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	3810	\N
2675	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	3810	\N
2676	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	3810	\N
2677	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	3810	\N
2678	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	3810	\N
2679	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	3810	\N
2680	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	3810	\N
2681	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	3810	\N
2682	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	3810	\N
2683	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	3810	\N
2684	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	3810	\N
2685	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	3810	\N
2686	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	3810	\N
2687	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	3810	\N
2688	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	3810	\N
2689	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	3810	\N
2690	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	3810	\N
2691	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	3810	\N
2692	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	3810	\N
2693	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	3810	\N
2694	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	3810	\N
2695	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	3810	\N
2696	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	3810	\N
2697	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	3810	\N
2698	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	3810	\N
2699	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	3810	\N
2700	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	3810	\N
2701	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	3810	\N
2702	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	3810	\N
2703	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	3810	\N
2704	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	3810	\N
2705	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	3810	\N
2706	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	3810	\N
2707	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	3810	\N
2708	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	3810	\N
2709	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	3810	\N
2710	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	3810	\N
2711	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	3810	\N
2712	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	3810	\N
2713	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	3810	\N
2714	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	3810	\N
2715	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	3810	\N
2716	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	3810	\N
2717	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	3810	\N
2718	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	3810	\N
2719	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	3810	\N
2720	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	3810	\N
2721	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	3810	\N
2722	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	3810	\N
2723	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	3810	\N
2724	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	3810	\N
2725	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	3810	\N
2726	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	3810	\N
2727	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	3810	\N
2728	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	3810	\N
2729	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	3810	\N
2730	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	3810	\N
2731	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	3810	\N
2732	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	3810	\N
2733	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	3810	\N
2734	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	3810	\N
2735	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	3810	\N
2736	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	3810	\N
2737	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	3810	\N
2738	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	3810	\N
2739	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	3810	\N
2740	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	3810	\N
2741	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	3810	\N
2742	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	3810	\N
2743	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	3810	\N
2744	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	3810	\N
2745	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	3810	\N
2746	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	3810	\N
2747	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	3810	\N
2748	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	3810	\N
2749	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	3810	\N
2750	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	3810	\N
2751	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	3810	\N
2752	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	3810	\N
2753	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	3810	\N
2754	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	3810	\N
2755	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	3810	\N
2756	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	3810	\N
2757	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	3810	\N
2758	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	3810	\N
2759	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	3810	\N
2760	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	3810	\N
2761	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	3810	\N
2762	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	3810	\N
2763	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	3810	\N
2764	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	3810	\N
2765	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	3810	\N
2766	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	3810	\N
2767	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	3810	\N
2768	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	3810	\N
2769	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	3810	\N
2770	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	3810	\N
2771	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	3810	\N
2772	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	3810	\N
2773	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	3810	\N
2774	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	3810	\N
2775	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	3810	\N
2776	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	3810	\N
2777	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	3810	\N
2778	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	3810	\N
2779	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	3810	\N
2780	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	3810	\N
2781	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	3810	\N
2782	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	3810	\N
2783	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	3810	\N
2784	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	3810	\N
2785	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	3810	\N
2786	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	3810	\N
2787	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	3810	\N
2788	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	3810	\N
2789	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	3810	\N
2790	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	3810	\N
2791	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	3810	\N
2792	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	3810	\N
2793	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	3810	\N
2794	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	3810	\N
2795	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	3810	\N
2796	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	3810	\N
2797	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	3810	\N
2798	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	3810	\N
2799	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	3810	\N
2800	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	3810	\N
2801	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	3810	\N
2802	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	3810	\N
2803	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	3810	\N
2804	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	3810	\N
2805	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	3810	\N
2806	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	3810	\N
2807	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	3810	\N
2808	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	3810	\N
2809	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	3810	\N
2810	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	3810	\N
2811	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	3810	\N
2812	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	3810	\N
2813	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	3810	\N
2814	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	3810	\N
2815	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	3810	\N
2816	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	3810	\N
2817	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	3810	\N
2818	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	3810	\N
2819	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	3810	\N
2820	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	3810	\N
2821	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	3810	\N
2822	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	3810	\N
2823	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	3810	\N
2824	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	3810	\N
2825	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	3810	\N
2826	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	3810	\N
2827	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	3810	\N
2828	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	3810	\N
2829	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	3810	\N
2830	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	3810	\N
2831	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	3810	\N
2832	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	3810	\N
2833	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	3810	\N
2834	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	3810	\N
2835	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	3810	\N
2836	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	3810	\N
2837	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	3810	\N
2838	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	3810	\N
2839	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	3810	\N
2840	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	3810	\N
2841	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	3810	\N
2842	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	3810	\N
2843	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	3810	\N
2844	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	3810	\N
2845	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	3810	\N
2846	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	3810	\N
2847	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	3810	\N
2848	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	3810	\N
2849	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	3810	\N
2850	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	3810	\N
2851	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	3810	\N
2852	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	3810	\N
2853	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	3810	\N
2854	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	3810	\N
2855	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	3810	\N
2856	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	3810	\N
2857	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	3810	\N
2858	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	3810	\N
2859	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	3810	\N
2860	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	3810	\N
2861	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	3810	\N
2862	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	3810	\N
2863	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	3810	\N
2864	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	3810	\N
2865	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	3810	\N
2866	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	3810	\N
2867	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	3810	\N
2868	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	3810	\N
2869	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	3810	\N
2870	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	3810	\N
2871	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	3810	\N
2872	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	3810	\N
2873	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	3810	\N
2874	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	3810	\N
2875	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	3810	\N
2876	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	3810	\N
2877	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	3810	\N
2878	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	3810	\N
2879	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	3810	\N
2880	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	3810	\N
2881	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	3810	\N
2882	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	3810	\N
2883	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	3810	\N
2884	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	3810	\N
2885	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	3810	\N
2886	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	3810	\N
2887	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	3810	\N
2888	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	3810	\N
2889	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	3810	\N
2890	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	3810	\N
2891	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	3810	\N
2892	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	3810	\N
2893	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	3810	\N
2894	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	3810	\N
2895	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	3810	\N
2896	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	3810	\N
2897	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	3810	\N
2898	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	3810	\N
2899	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	3810	\N
2900	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	3810	\N
2901	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	3810	\N
2902	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	3810	\N
2903	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	3810	\N
2904	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	3810	\N
2905	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	3810	\N
2906	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	3810	\N
2907	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	3810	\N
2908	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	3810	\N
2909	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	3810	\N
2910	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	3810	\N
2911	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	3810	\N
2912	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	3810	\N
2913	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	3810	\N
2914	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	3810	\N
2915	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	3810	\N
2916	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	3810	\N
2917	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	3810	\N
2918	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	3810	\N
2919	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	3810	\N
2920	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	3810	\N
2921	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	3810	\N
2922	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	3810	\N
2923	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	3810	\N
2924	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	3810	\N
2925	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	3810	\N
2926	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	3810	\N
2927	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	3810	\N
2928	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	3810	\N
2929	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	3810	\N
2930	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	3810	\N
2931	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	3810	\N
2932	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	3810	\N
2933	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	3810	\N
2934	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	3810	\N
2935	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	3810	\N
2936	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	3810	\N
2937	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	3810	\N
2938	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	3810	\N
2939	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	3810	\N
2940	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	3810	\N
2941	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	3810	\N
2942	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	3810	\N
2943	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	3810	\N
2944	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	3810	\N
2945	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	3810	\N
2946	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	3810	\N
2947	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	3810	\N
2948	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	3810	\N
2949	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	3810	\N
2950	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	3810	\N
2951	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	3810	\N
2952	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	3810	\N
2953	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	3810	\N
2954	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	3810	\N
2955	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	3810	\N
2956	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	3810	\N
2957	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	3810	\N
2958	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	3810	\N
2959	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	3810	\N
2960	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	3810	\N
2961	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	3810	\N
2962	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	3810	\N
2963	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	3810	\N
2964	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	3810	\N
2965	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	3810	\N
2966	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	3810	\N
2967	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	3810	\N
2968	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	3810	\N
2969	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	3810	\N
2970	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	3810	\N
2971	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	3810	\N
2972	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	3810	\N
2973	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	3810	\N
2974	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	3810	\N
2975	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	3810	\N
2976	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	3810	\N
2977	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	3810	\N
2978	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	3810	\N
2979	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	3810	\N
2980	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	3810	\N
2981	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	3810	\N
2982	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	3810	\N
2983	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	3810	\N
2984	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	3810	\N
2985	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	3810	\N
2986	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	3810	\N
2987	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	3810	\N
2988	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	3810	\N
2989	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	3810	\N
2990	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	3810	\N
2991	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	3810	\N
2992	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	3810	\N
2993	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	3810	\N
2994	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	3810	\N
2995	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	3810	\N
2996	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	3810	\N
2997	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	3810	\N
2998	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	3810	\N
2999	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	3810	\N
3000	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	3810	\N
3001	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	3810	\N
3002	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	3810	\N
3003	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	3810	\N
3004	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	3810	\N
3005	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	3810	\N
3006	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	3810	\N
3007	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	3810	\N
3008	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	3810	\N
3009	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	3810	\N
3010	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	3810	\N
3011	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	3810	\N
3012	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	3810	\N
3013	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	3810	\N
3014	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	3810	\N
3015	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	3810	\N
3016	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	3810	\N
3017	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	3810	\N
3018	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	3810	\N
3019	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	3810	\N
3020	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	3810	\N
3021	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	3810	\N
3022	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	3810	\N
3023	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	3810	\N
3024	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	3810	\N
3025	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	3810	\N
3026	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	3810	\N
3027	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	3810	\N
3028	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	3810	\N
3029	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	3810	\N
3030	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	3810	\N
3031	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	3810	\N
3032	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	3810	\N
3033	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	3810	\N
3034	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	3810	\N
3035	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	3810	\N
3036	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	3810	\N
3037	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	3810	\N
3038	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	3810	\N
3039	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	3810	\N
3040	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	3810	\N
3041	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	3810	\N
3042	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	3810	\N
3043	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	3810	\N
3044	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	3810	\N
3045	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	3810	\N
3046	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	3810	\N
3047	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	3810	\N
3048	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	3810	\N
724	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	123	1005	3807	\N
725	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	10	1	3807	\N
726	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	10	2	3807	\N
727	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	10	3	3807	\N
728	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	10	832	3807	\N
729	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	12	5	3807	\N
730	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	12	816	3807	\N
731	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	13	6	3807	\N
732	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	13	8	3807	\N
733	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	13	9	3807	\N
734	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	13	10	3807	\N
735	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	13	830	3807	\N
736	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	13	869	3807	\N
737	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	14	11	3807	\N
738	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	14	12	3807	\N
739	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	14	747	3807	\N
740	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	14	873	3807	\N
741	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	15	13	3807	\N
742	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	15	14	3807	\N
743	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	15	15	3807	\N
744	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	15	16	3807	\N
3049	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	3810	\N
3050	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	3810	\N
3051	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	3810	\N
3052	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	3810	\N
3053	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	3810	\N
3054	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	3810	\N
3055	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	3810	\N
3056	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	3810	\N
3057	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	3810	\N
3058	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	3810	\N
3059	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	3810	\N
3060	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	3810	\N
3061	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	3810	\N
3062	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	3810	\N
3063	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	3810	\N
3064	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	3810	\N
3065	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	3810	\N
3066	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	3810	\N
3067	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	3810	\N
3068	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	3810	\N
3069	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	3810	\N
3070	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	3810	\N
3071	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	3810	\N
3072	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	3810	\N
3073	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	3810	\N
3074	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	3810	\N
3075	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	3810	\N
3076	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	3810	\N
3077	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	3810	\N
3078	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	3810	\N
3079	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	3810	\N
3080	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	3810	\N
3081	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	3810	\N
3082	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	3810	\N
3083	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	3810	\N
3084	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	3810	\N
3085	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	3810	\N
3086	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	3810	\N
3087	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	3810	\N
3088	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	410	3810	\N
3089	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	3810	\N
26	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	51	3807	\N
27	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	52	3807	\N
28	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	635	3807	\N
29	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	738	3807	\N
30	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	740	3807	\N
31	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	861	3807	\N
32	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	1053	3807	\N
33	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	25	53	3807	\N
34	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	25	54	3807	\N
35	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	25	55	3807	\N
36	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	25	56	3807	\N
37	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	25	57	3807	\N
38	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	25	58	3807	\N
39	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	25	59	3807	\N
40	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	26	61	3807	\N
41	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	26	825	3807	\N
42	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	27	62	3807	\N
43	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	27	63	3807	\N
44	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	27	64	3807	\N
45	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	27	65	3807	\N
46	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	27	66	3807	\N
47	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	27	67	3807	\N
48	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	27	68	3807	\N
49	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	27	69	3807	\N
50	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	27	70	3807	\N
51	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	27	741	3807	\N
52	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	71	3807	\N
53	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	72	3807	\N
54	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	73	3807	\N
3090	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	3810	\N
6199	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	3819	\N
3093	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	3810	\N
3094	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	3810	\N
3095	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	3810	\N
3736	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	3811	\N
3737	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	3811	\N
3738	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	3811	\N
3739	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	3811	\N
3740	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	3811	\N
3741	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	3811	\N
3742	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	3811	\N
3743	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	3811	\N
3744	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	3811	\N
3745	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	3811	\N
3746	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	3811	\N
3747	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	3811	\N
3748	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	3811	\N
3749	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	3811	\N
3750	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	3811	\N
3751	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	3811	\N
3752	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	3811	\N
3753	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	3811	\N
3754	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	3811	\N
3755	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	3811	\N
3756	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	3811	\N
3757	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	3811	\N
3758	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	3811	\N
3759	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	3811	\N
3760	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	3811	\N
3761	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	3811	\N
3762	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	3811	\N
3763	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	3811	\N
3764	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	3811	\N
3765	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	3811	\N
3766	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	3811	\N
3767	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	3811	\N
3768	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	3811	\N
3769	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	3811	\N
3770	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	3811	\N
3771	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	3811	\N
3772	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	3811	\N
3773	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	3811	\N
3774	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	3811	\N
3775	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	3811	\N
3776	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	3811	\N
3777	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	3811	\N
3778	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	3811	\N
3779	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	3811	\N
3780	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	3811	\N
3781	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	3811	\N
3782	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	3811	\N
3783	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	3811	\N
3784	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	3811	\N
3785	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	3811	\N
3786	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	3811	\N
3787	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	3811	\N
3788	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	3811	\N
3789	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	3811	\N
3790	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	3811	\N
3791	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	3811	\N
3792	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	3811	\N
3793	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	3811	\N
3794	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	3811	\N
3795	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	3811	\N
3796	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	3811	\N
3797	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	3811	\N
3798	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	3811	\N
3799	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	3811	\N
3800	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	3811	\N
3801	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	3811	\N
3802	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	3811	\N
3803	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	3811	\N
3804	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	3811	\N
3805	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	3811	\N
3096	0	0	0	7	0	0	0	4	2024-06-28 09:33:27.45089	4	0	2024-06-28 09:33:27.45089	0	2	2024-06-28 09:33:27.45089	2	2024-06-28 09:33:27.45089	73	839	3810	1
1555	0	0	0	0	0	0	0	0	2024-06-27 11:44:54.284418	0	1	2024-06-27 11:44:54.284418	1	0	2024-06-27 11:44:54.284418	0	2024-06-27 11:44:54.284418	21	31	3809	1
3806	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	3811	\N
3807	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	3811	\N
3808	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	3811	\N
3809	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	3811	\N
3810	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	3811	\N
3811	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	3811	\N
3812	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	3811	\N
3813	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	3811	\N
3814	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	3811	\N
3815	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	3811	\N
3816	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	3811	\N
3817	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	3811	\N
3818	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	3811	\N
3819	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	3811	\N
3820	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	3811	\N
3821	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	3811	\N
3822	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	3811	\N
3823	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	3811	\N
3824	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	3811	\N
3825	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	3811	\N
3826	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	3811	\N
3827	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	3811	\N
3828	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	3811	\N
3829	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	3811	\N
3830	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	3811	\N
3831	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	3811	\N
3832	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	3811	\N
3833	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	3811	\N
3834	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	3811	\N
3835	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	3811	\N
3836	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	3811	\N
3837	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	3811	\N
3838	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	3811	\N
3839	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	3811	\N
3840	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	3811	\N
3841	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	3811	\N
3842	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	3811	\N
3843	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	3811	\N
3844	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	3811	\N
3845	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	3811	\N
3846	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	3811	\N
3847	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	3811	\N
3848	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	3811	\N
3849	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	3811	\N
3850	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	3811	\N
3851	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	3811	\N
3852	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	3811	\N
3853	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	3811	\N
3854	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	3811	\N
3855	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	3811	\N
3856	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	3811	\N
3857	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	3811	\N
3858	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	3811	\N
3859	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	3811	\N
3860	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	3811	\N
3861	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	3811	\N
3862	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	410	3811	\N
3863	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	3811	\N
3864	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	3811	\N
3865	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	413	3811	\N
3866	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	414	3811	\N
3867	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	3811	\N
3868	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	3811	\N
3869	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	3811	\N
3870	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	3811	\N
1203	0	0	0	-1	0	0	0	2	2024-06-28 09:41:09.14103	2	2	2024-06-28 09:41:09.14103	2	1	2024-06-28 09:41:09.14103	1	2024-06-28 09:41:09.14103	73	416	3808	1
6200	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	3819	\N
6201	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	3819	\N
6202	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	3819	\N
6203	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	3819	\N
6204	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	3819	\N
6205	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	3819	\N
6206	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	3819	\N
3097	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	3811	\N
3098	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	3811	\N
3099	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	3811	\N
3100	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	3811	\N
3101	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	3811	\N
3102	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	3811	\N
3103	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	3811	\N
3104	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	3811	\N
3105	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	3811	\N
3106	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	3811	\N
3107	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	3811	\N
3108	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	3811	\N
3109	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	3811	\N
3110	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	3811	\N
3111	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	3811	\N
3112	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	3811	\N
3113	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	3811	\N
3114	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	3811	\N
3115	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	3811	\N
3116	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	3811	\N
3117	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	3811	\N
3118	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	3811	\N
3119	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	3811	\N
3120	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	3811	\N
3121	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	3811	\N
3122	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	3811	\N
3123	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	3811	\N
3124	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	3811	\N
3125	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	3811	\N
3126	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	3811	\N
3127	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	3811	\N
3128	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	3811	\N
3129	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	3811	\N
3130	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	3811	\N
3131	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	3811	\N
3132	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	3811	\N
3133	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	3811	\N
3134	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	3811	\N
3135	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	3811	\N
3136	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	3811	\N
3137	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	3811	\N
3138	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	3811	\N
3139	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	3811	\N
3140	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	3811	\N
3141	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	3811	\N
3142	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	3811	\N
3143	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	3811	\N
3144	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	3811	\N
3145	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	3811	\N
3146	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	3811	\N
3147	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	3811	\N
3148	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	3811	\N
3149	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	3811	\N
3150	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	3811	\N
3151	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	3811	\N
3152	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	3811	\N
3153	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	3811	\N
3154	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	3811	\N
3155	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	3811	\N
3156	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	3811	\N
3157	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	3811	\N
3158	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	3811	\N
3159	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	3811	\N
3160	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	3811	\N
3161	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	3811	\N
3162	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	3811	\N
3163	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	3811	\N
3164	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	3811	\N
3165	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	3811	\N
3166	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	3811	\N
3167	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	3811	\N
3168	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	3811	\N
3169	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	3811	\N
3170	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	3811	\N
3171	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	3811	\N
3172	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	3811	\N
3173	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	3811	\N
3174	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	3811	\N
3175	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	3811	\N
3176	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	3811	\N
3177	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	3811	\N
3178	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	3811	\N
3179	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	3811	\N
3180	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	3811	\N
3181	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	3811	\N
3182	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	3811	\N
3183	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	3811	\N
3184	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	3811	\N
3185	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	3811	\N
3186	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	3811	\N
3187	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	3811	\N
3188	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	3811	\N
3189	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	3811	\N
3190	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	3811	\N
3191	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	3811	\N
3192	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	3811	\N
3193	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	3811	\N
3194	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	3811	\N
3195	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	3811	\N
3196	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	3811	\N
3197	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	3811	\N
3198	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	3811	\N
3199	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	3811	\N
3200	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	3811	\N
3201	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	3811	\N
3202	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	3811	\N
3203	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	3811	\N
3204	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	3811	\N
3205	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	3811	\N
3206	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	3811	\N
3207	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	3811	\N
3208	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	3811	\N
3209	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	3811	\N
3210	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	3811	\N
3211	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	3811	\N
3212	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	3811	\N
3213	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	3811	\N
3214	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	3811	\N
3215	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	3811	\N
3216	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	3811	\N
3217	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	3811	\N
3218	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	3811	\N
3219	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	3811	\N
3220	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	3811	\N
3221	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	3811	\N
3222	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	3811	\N
3223	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	3811	\N
9289	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	3823	\N
3225	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	3811	\N
3226	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	3811	\N
3227	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	3811	\N
3228	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	3811	\N
3229	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	3811	\N
3230	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	3811	\N
3231	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	3811	\N
3232	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	3811	\N
3233	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	3811	\N
3234	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	3811	\N
3235	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	3811	\N
3236	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	3811	\N
3237	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	3811	\N
3238	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	3811	\N
3239	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	3811	\N
3240	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	3811	\N
3241	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	3811	\N
3242	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	3811	\N
3243	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	3811	\N
3244	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	3811	\N
3245	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	3811	\N
3246	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	3811	\N
3247	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	3811	\N
3248	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	3811	\N
3249	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	3811	\N
3250	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	3811	\N
3251	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	3811	\N
3252	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	3811	\N
3253	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	3811	\N
3254	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	3811	\N
3255	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	3811	\N
3256	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	3811	\N
3257	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	3811	\N
3258	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	3811	\N
3259	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	3811	\N
3260	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	3811	\N
3261	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	3811	\N
3262	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	3811	\N
3263	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	3811	\N
3264	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	3811	\N
3265	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	3811	\N
3266	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	3811	\N
3267	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	3811	\N
3268	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	3811	\N
3269	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	3811	\N
3270	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	3811	\N
3271	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	3811	\N
3272	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	3811	\N
3273	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	3811	\N
3274	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	3811	\N
3275	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	3811	\N
3276	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	3811	\N
3277	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	3811	\N
3278	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	3811	\N
3279	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	3811	\N
3280	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	3811	\N
3281	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	3811	\N
3282	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	3811	\N
3283	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	3811	\N
3284	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	3811	\N
3285	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	3811	\N
3286	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	3811	\N
3287	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	3811	\N
3288	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	3811	\N
3289	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	3811	\N
3290	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	3811	\N
3291	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	3811	\N
3292	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	3811	\N
3293	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	3811	\N
3294	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	3811	\N
3295	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	3811	\N
3296	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	3811	\N
3297	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	3811	\N
3298	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	3811	\N
3299	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	3811	\N
3300	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	3811	\N
3301	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	3811	\N
3302	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	3811	\N
3303	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	3811	\N
3304	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	3811	\N
3305	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	3811	\N
3306	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	3811	\N
3307	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	3811	\N
3308	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	3811	\N
3309	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	3811	\N
3310	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	3811	\N
3311	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	3811	\N
3312	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	3811	\N
3313	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	3811	\N
3314	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	3811	\N
3315	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	3811	\N
3316	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	3811	\N
3317	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	3811	\N
3318	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	3811	\N
3319	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	3811	\N
3320	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	3811	\N
3321	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	3811	\N
3322	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	3811	\N
3323	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	3811	\N
3324	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	3811	\N
3325	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	3811	\N
3326	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	3811	\N
3327	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	3811	\N
3328	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	3811	\N
3329	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	3811	\N
3330	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	3811	\N
3331	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	3811	\N
3332	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	3811	\N
3333	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	3811	\N
3334	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	3811	\N
3335	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	3811	\N
3336	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	3811	\N
3337	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	3811	\N
3338	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	3811	\N
3339	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	3811	\N
3340	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	3811	\N
3341	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	3811	\N
3342	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	3811	\N
3343	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	3811	\N
3344	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	3811	\N
3345	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	3811	\N
3346	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	3811	\N
3347	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	3811	\N
3348	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	3811	\N
3349	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	3811	\N
3350	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	3811	\N
3351	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	3811	\N
3352	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	3811	\N
3353	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	3811	\N
3354	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	3811	\N
3355	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	3811	\N
3356	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	3811	\N
3357	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	3811	\N
3358	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	3811	\N
3359	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	3811	\N
3360	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	3811	\N
3361	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	3811	\N
3362	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	3811	\N
3363	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	3811	\N
3364	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	3811	\N
3365	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	3811	\N
3366	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	3811	\N
3367	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	3811	\N
3368	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	3811	\N
3369	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	3811	\N
3370	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	3811	\N
3371	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	3811	\N
3372	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	3811	\N
3373	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	3811	\N
3374	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	3811	\N
3375	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	3811	\N
3376	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	3811	\N
3377	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	3811	\N
3378	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	3811	\N
3379	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	3811	\N
3380	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	3811	\N
3381	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	3811	\N
3382	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	3811	\N
3383	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	3811	\N
3384	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	3811	\N
3385	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	3811	\N
3386	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	3811	\N
3387	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	3811	\N
3388	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	3811	\N
3389	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	3811	\N
3390	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	3811	\N
3391	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	3811	\N
3392	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	3811	\N
3393	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	3811	\N
3394	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	3811	\N
3395	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	3811	\N
3396	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	3811	\N
3397	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	3811	\N
3398	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	3811	\N
3399	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	3811	\N
3400	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	3811	\N
3401	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	3811	\N
3402	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	3811	\N
3403	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	3811	\N
3404	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	3811	\N
3405	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	3811	\N
3406	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	3811	\N
3407	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	3811	\N
3408	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	3811	\N
3409	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	3811	\N
3410	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	3811	\N
3411	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	3811	\N
3412	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	3811	\N
3413	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	3811	\N
3414	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	3811	\N
3415	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	3811	\N
3416	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	3811	\N
3417	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	3811	\N
3418	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	3811	\N
3419	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	3811	\N
3420	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	3811	\N
3421	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	3811	\N
3422	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	3811	\N
3423	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	3811	\N
3424	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	3811	\N
3425	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	3811	\N
3426	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	3811	\N
3427	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	3811	\N
3428	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	3811	\N
3429	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	3811	\N
3430	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	3811	\N
3431	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	3811	\N
3432	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	3811	\N
3433	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	3811	\N
3434	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	3811	\N
3435	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	3811	\N
3436	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	3811	\N
3437	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	3811	\N
3438	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	3811	\N
3439	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	3811	\N
3440	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	3811	\N
3441	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	3811	\N
3442	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	3811	\N
3443	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	3811	\N
3444	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	3811	\N
3445	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	3811	\N
3446	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	3811	\N
3447	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	3811	\N
3448	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	3811	\N
3449	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	3811	\N
3450	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	3811	\N
3451	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	3811	\N
3452	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	3811	\N
3453	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	3811	\N
3454	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	3811	\N
3455	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	3811	\N
3456	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	3811	\N
3457	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	3811	\N
3458	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	3811	\N
3459	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	3811	\N
3460	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	3811	\N
3461	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	3811	\N
3462	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	3811	\N
3463	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	3811	\N
3464	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	3811	\N
3465	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	3811	\N
3466	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	3811	\N
3467	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	3811	\N
3468	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	3811	\N
3469	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	3811	\N
3470	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	3811	\N
3471	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	3811	\N
3472	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	3811	\N
3473	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	3811	\N
3474	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	3811	\N
3475	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	3811	\N
3476	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	3811	\N
3477	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	3811	\N
3478	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	3811	\N
3479	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	3811	\N
3480	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	3811	\N
3481	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	3811	\N
3482	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	3811	\N
3483	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	3811	\N
3484	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	3811	\N
3485	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	3811	\N
3486	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	3811	\N
3487	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	3811	\N
3488	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	3811	\N
3489	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	3811	\N
3490	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	3811	\N
3491	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	3811	\N
3492	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	3811	\N
3493	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	3811	\N
3494	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	3811	\N
3495	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	3811	\N
3496	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	3811	\N
3497	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	3811	\N
3498	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	3811	\N
3499	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	3811	\N
3500	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	3811	\N
3501	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	3811	\N
3502	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	3811	\N
3503	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	3811	\N
3504	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	3811	\N
3505	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	3811	\N
3506	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	3811	\N
3507	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	3811	\N
3508	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	3811	\N
3509	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	3811	\N
3510	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	3811	\N
3511	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	3811	\N
3512	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	3811	\N
3513	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	3811	\N
3514	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	3811	\N
3515	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	3811	\N
3516	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	3811	\N
3517	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	3811	\N
3518	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	3811	\N
3519	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	3811	\N
3520	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	3811	\N
3521	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	3811	\N
3522	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	3811	\N
3523	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	3811	\N
3524	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	3811	\N
3525	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	3811	\N
3526	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	3811	\N
3527	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	3811	\N
3528	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	3811	\N
3529	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	3811	\N
3530	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	3811	\N
3531	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	3811	\N
3532	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	3811	\N
3533	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	3811	\N
3534	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	3811	\N
3535	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	3811	\N
3536	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	3811	\N
3537	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	3811	\N
3538	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	3811	\N
3539	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	3811	\N
3540	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	3811	\N
3541	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	3811	\N
3542	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	3811	\N
3543	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	3811	\N
3544	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	3811	\N
3545	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	3811	\N
3546	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	3811	\N
3547	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	3811	\N
3548	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	3811	\N
3549	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	3811	\N
3550	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	3811	\N
3551	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	3811	\N
3552	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	3811	\N
3553	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	3811	\N
3554	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	3811	\N
3555	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	3811	\N
3556	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	3811	\N
3557	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	3811	\N
3558	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	3811	\N
3559	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	3811	\N
3560	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	3811	\N
3561	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	3811	\N
3562	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	3811	\N
3563	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	3811	\N
3564	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	3811	\N
3565	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	3811	\N
3566	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	3811	\N
3567	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	3811	\N
3568	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	3811	\N
3569	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	3811	\N
3570	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	3811	\N
3571	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	3811	\N
3572	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	3811	\N
3573	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	3811	\N
3574	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	3811	\N
3575	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	3811	\N
3576	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	3811	\N
3577	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	3811	\N
3578	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	3811	\N
3579	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	3811	\N
3580	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	3811	\N
3581	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	3811	\N
3582	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	3811	\N
3583	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	3811	\N
3584	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	3811	\N
3585	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	3811	\N
3586	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	3811	\N
3587	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	3811	\N
3588	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	3811	\N
3589	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	3811	\N
3590	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	3811	\N
3591	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	3811	\N
3592	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	3811	\N
3593	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	3811	\N
3594	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	3811	\N
3595	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	3811	\N
3596	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	3811	\N
3597	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	3811	\N
3598	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	3811	\N
3599	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	3811	\N
3600	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	3811	\N
3601	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	3811	\N
3602	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	3811	\N
3603	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	3811	\N
3604	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	3811	\N
3605	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	3811	\N
3606	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	3811	\N
3607	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	3811	\N
3608	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	3811	\N
3609	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	3811	\N
3610	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	3811	\N
3611	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	3811	\N
3612	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	3811	\N
3613	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	3811	\N
3614	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	3811	\N
3615	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	3811	\N
3616	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	3811	\N
3617	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	3811	\N
3618	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	3811	\N
3619	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	3811	\N
3620	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	3811	\N
3621	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	3811	\N
3622	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	3811	\N
3623	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	3811	\N
3624	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	3811	\N
3625	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	3811	\N
3626	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	3811	\N
3627	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	3811	\N
3628	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	3811	\N
3629	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	3811	\N
3630	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	3811	\N
3631	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	3811	\N
3632	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	3811	\N
3633	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	3811	\N
3634	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	3811	\N
3635	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	3811	\N
3636	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	3811	\N
3637	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	3811	\N
3638	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	3811	\N
3639	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	3811	\N
3640	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	3811	\N
3641	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	3811	\N
3642	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	3811	\N
3643	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	3811	\N
3644	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	3811	\N
3645	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	3811	\N
3646	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	3811	\N
3647	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	3811	\N
3648	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	3811	\N
3649	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	3811	\N
3650	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	3811	\N
3651	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	3811	\N
3652	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	3811	\N
3653	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	3811	\N
3654	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	3811	\N
3655	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	3811	\N
3656	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	3811	\N
3657	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	3811	\N
3658	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	3811	\N
3659	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	3811	\N
3660	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	3811	\N
3661	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	3811	\N
3662	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	3811	\N
3663	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	3811	\N
3664	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	3811	\N
3665	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	3811	\N
3666	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	3811	\N
3667	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	3811	\N
3668	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	3811	\N
3669	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	3811	\N
3670	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	3811	\N
3671	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	3811	\N
3672	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	3811	\N
3673	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	3811	\N
3674	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	3811	\N
3675	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	3811	\N
3676	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	3811	\N
3677	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	3811	\N
3678	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	3811	\N
3679	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	3811	\N
3680	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	3811	\N
55	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	74	3807	\N
56	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	76	3807	\N
57	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	77	3807	\N
58	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	78	3807	\N
59	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	79	3807	\N
60	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	80	3807	\N
61	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	81	3807	\N
62	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	82	3807	\N
63	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	83	3807	\N
64	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	84	3807	\N
65	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	85	3807	\N
3681	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	3811	\N
3682	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	3811	\N
3683	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	3811	\N
3684	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	3811	\N
66	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	905	3807	\N
67	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	87	3807	\N
68	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	723	3807	\N
69	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	28	856	3807	\N
70	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	88	3807	\N
71	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	89	3807	\N
72	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	90	3807	\N
73	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	91	3807	\N
74	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	92	3807	\N
75	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	93	3807	\N
76	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	94	3807	\N
77	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	95	3807	\N
78	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	96	3807	\N
79	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	97	3807	\N
80	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	98	3807	\N
81	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	99	3807	\N
82	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	100	3807	\N
83	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	101	3807	\N
84	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	103	3807	\N
85	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	104	3807	\N
86	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	105	3807	\N
87	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	106	3807	\N
88	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	107	3807	\N
89	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	626	3807	\N
90	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	688	3807	\N
91	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	690	3807	\N
92	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	29	925	3807	\N
93	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	30	108	3807	\N
94	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	30	109	3807	\N
95	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	30	110	3807	\N
96	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	30	111	3807	\N
97	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	48	834	3807	\N
98	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	30	703	3807	\N
99	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	31	112	3807	\N
100	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	31	113	3807	\N
101	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	31	114	3807	\N
102	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	31	115	3807	\N
103	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	31	116	3807	\N
104	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	31	117	3807	\N
105	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	31	118	3807	\N
106	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	31	119	3807	\N
107	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	31	795	3807	\N
6207	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	3819	\N
6208	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	3819	\N
6209	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	3819	\N
6210	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	3819	\N
6211	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	3819	\N
6212	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	3819	\N
6213	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	3819	\N
6214	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	3819	\N
6215	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	3819	\N
6216	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	3819	\N
6217	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	3819	\N
6218	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	3819	\N
6219	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	3819	\N
6220	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	3819	\N
6221	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	3819	\N
6222	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	3819	\N
6223	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	3819	\N
6224	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	3819	\N
6225	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	3819	\N
131	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	140	3807	\N
132	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	141	3807	\N
133	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	142	3807	\N
134	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	143	3807	\N
135	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	144	3807	\N
6226	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	3819	\N
127	0	0	0	0	0	0	0	8	\N	\N	1	\N	\N	1	\N	\N	2024-06-25 08:23:57.491746	33	135	3807	\N
128	0	0	0	0	0	0	0	8	\N	\N	1	\N	\N	1	\N	\N	2024-06-25 08:23:57.491746	33	138	3807	\N
129	0	0	0	0	0	0	0	8	\N	\N	1	\N	\N	1	\N	\N	2024-06-25 08:23:57.491746	33	139	3807	\N
130	0	0	0	0	0	0	0	8	\N	\N	1	\N	\N	1	\N	\N	2024-06-25 08:23:57.491746	33	801	3807	\N
136	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	145	3807	\N
137	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	146	3807	\N
138	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	147	3807	\N
139	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	665	3807	\N
140	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	919	3807	\N
141	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	916	3807	\N
142	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	917	3807	\N
143	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	918	3807	\N
144	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	920	3807	\N
145	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	34	921	3807	\N
146	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	35	148	3807	\N
147	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	35	149	3807	\N
148	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	35	774	3807	\N
149	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	36	150	3807	\N
150	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	36	151	3807	\N
151	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	36	152	3807	\N
152	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	36	153	3807	\N
153	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	36	154	3807	\N
154	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	36	717	3807	\N
6227	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	3819	\N
6228	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	3819	\N
6229	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	3819	\N
6230	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	3819	\N
6231	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	3819	\N
6232	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	3819	\N
163	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	39	166	3807	\N
164	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	39	167	3807	\N
165	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	39	168	3807	\N
166	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	39	169	3807	\N
167	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	39	170	3807	\N
168	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	39	171	3807	\N
169	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	39	172	3807	\N
170	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	39	173	3807	\N
171	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	39	174	3807	\N
172	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	39	782	3807	\N
173	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	175	3807	\N
174	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	176	3807	\N
175	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	177	3807	\N
176	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	178	3807	\N
177	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	179	3807	\N
178	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	180	3807	\N
179	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	181	3807	\N
180	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	182	3807	\N
181	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	183	3807	\N
182	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	184	3807	\N
183	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	185	3807	\N
184	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	186	3807	\N
185	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	633	3807	\N
186	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	763	3807	\N
187	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	41	765	3807	\N
188	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	187	3807	\N
189	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	188	3807	\N
190	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	189	3807	\N
191	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	190	3807	\N
192	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	191	3807	\N
193	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	192	3807	\N
194	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	194	3807	\N
195	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	195	3807	\N
196	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	196	3807	\N
197	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	197	3807	\N
198	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	829	3807	\N
199	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	199	3807	\N
200	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	827	3807	\N
201	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	1069	3807	\N
202	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	928	3807	\N
203	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	42	929	3807	\N
204	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	45	200	3807	\N
205	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	45	201	3807	\N
157	0	0	0	0	0	0	0	3	\N	\N	5	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	38	160	3807	\N
158	0	0	0	0	0	0	0	3	\N	\N	5	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	38	161	3807	\N
206	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	45	202	3807	\N
207	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	45	203	3807	\N
208	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	45	705	3807	\N
209	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	46	204	3807	\N
210	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	46	205	3807	\N
211	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	46	206	3807	\N
212	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	46	207	3807	\N
213	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	46	208	3807	\N
214	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	46	209	3807	\N
215	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	46	210	3807	\N
216	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	70	803	3807	\N
217	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	46	667	3807	\N
218	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	48	212	3807	\N
219	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	48	213	3807	\N
220	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	48	214	3807	\N
221	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	48	216	3807	\N
222	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	48	217	3807	\N
223	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	48	219	3807	\N
224	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	48	220	3807	\N
225	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	49	221	3807	\N
226	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	49	224	3807	\N
227	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	49	226	3807	\N
228	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	49	699	3807	\N
229	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	50	227	3807	\N
230	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	50	676	3807	\N
231	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	51	229	3807	\N
232	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	51	230	3807	\N
233	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	51	231	3807	\N
234	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	51	678	3807	\N
235	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	52	232	3807	\N
236	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	52	233	3807	\N
237	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	52	234	3807	\N
238	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	52	235	3807	\N
239	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	52	799	3807	\N
240	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	52	858	3807	\N
241	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	236	3807	\N
242	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	237	3807	\N
243	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	238	3807	\N
244	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	239	3807	\N
245	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	240	3807	\N
246	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	241	3807	\N
247	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	242	3807	\N
248	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	243	3807	\N
249	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	244	3807	\N
250	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	245	3807	\N
251	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	246	3807	\N
252	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	247	3807	\N
253	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	743	3807	\N
254	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	53	857	3807	\N
255	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	248	3807	\N
256	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	249	3807	\N
257	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	250	3807	\N
258	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	251	3807	\N
259	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	253	3807	\N
260	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	254	3807	\N
261	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	255	3807	\N
262	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	256	3807	\N
263	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	257	3807	\N
264	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	259	3807	\N
265	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	260	3807	\N
266	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	261	3807	\N
267	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	262	3807	\N
268	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	263	3807	\N
269	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	766	3807	\N
270	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	1061	3807	\N
271	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	54	1047	3807	\N
272	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	55	264	3807	\N
273	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	55	265	3807	\N
274	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	55	266	3807	\N
275	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	55	267	3807	\N
276	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	55	268	3807	\N
277	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	55	269	3807	\N
278	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	55	772	3807	\N
279	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	57	270	3807	\N
280	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	57	271	3807	\N
281	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	57	272	3807	\N
282	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	57	273	3807	\N
283	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	57	274	3807	\N
284	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	57	1049	3807	\N
285	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	57	277	3807	\N
286	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	57	793	3807	\N
287	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	57	1011	3807	\N
288	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	58	278	3807	\N
289	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	58	279	3807	\N
290	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	58	280	3807	\N
291	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	58	281	3807	\N
292	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	58	282	3807	\N
293	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	58	283	3807	\N
294	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	58	284	3807	\N
295	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	58	285	3807	\N
296	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	58	286	3807	\N
297	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	58	287	3807	\N
298	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	58	836	3807	\N
299	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	58	837	3807	\N
300	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	290	3807	\N
301	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	291	3807	\N
302	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	292	3807	\N
303	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	293	3807	\N
304	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	996	3807	\N
305	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	295	3807	\N
306	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	296	3807	\N
307	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	298	3807	\N
308	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	299	3807	\N
309	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	300	3807	\N
310	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	301	3807	\N
311	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	302	3807	\N
312	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	303	3807	\N
313	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	63	843	3807	\N
314	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	69	389	3807	\N
315	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	304	3807	\N
316	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	305	3807	\N
317	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	306	3807	\N
318	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	307	3807	\N
319	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	308	3807	\N
320	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	655	3807	\N
321	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	657	3807	\N
322	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	862	3807	\N
323	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	863	3807	\N
324	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	1012	3807	\N
325	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	59	1018	3807	\N
326	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	318	3807	\N
327	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	319	3807	\N
328	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	320	3807	\N
329	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	321	3807	\N
330	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	322	3807	\N
331	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	323	3807	\N
332	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	324	3807	\N
333	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	325	3807	\N
334	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	326	3807	\N
335	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	327	3807	\N
336	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	328	3807	\N
337	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	820	3807	\N
338	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	637	3807	\N
339	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	60	821	3807	\N
340	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	329	3807	\N
341	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	330	3807	\N
342	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	331	3807	\N
343	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	332	3807	\N
344	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	333	3807	\N
345	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	334	3807	\N
346	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	335	3807	\N
347	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	336	3807	\N
348	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	337	3807	\N
349	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	338	3807	\N
350	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	339	3807	\N
351	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	340	3807	\N
352	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	341	3807	\N
353	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	342	3807	\N
354	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	343	3807	\N
355	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	344	3807	\N
356	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	345	3807	\N
357	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	346	3807	\N
358	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	347	3807	\N
359	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	349	3807	\N
360	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	629	3807	\N
361	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	784	3807	\N
362	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	786	3807	\N
363	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	62	912	3807	\N
364	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	63	1010	3807	\N
365	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	71	403	3807	\N
366	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	64	352	3807	\N
367	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	64	353	3807	\N
368	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	64	354	3807	\N
369	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	64	355	3807	\N
370	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	64	719	3807	\N
371	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	64	356	3807	\N
372	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	64	357	3807	\N
373	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	64	360	3807	\N
374	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	64	711	3807	\N
375	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	64	913	3807	\N
376	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	64	927	3807	\N
377	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	65	361	3807	\N
378	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	65	362	3807	\N
379	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	65	669	3807	\N
380	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	65	1020	3807	\N
381	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	65	879	3807	\N
382	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	65	1076	3807	\N
383	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	366	3807	\N
384	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	368	3807	\N
385	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	369	3807	\N
386	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	370	3807	\N
387	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	371	3807	\N
388	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	372	3807	\N
389	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	373	3807	\N
390	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	374	3807	\N
391	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	377	3807	\N
392	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	378	3807	\N
393	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	671	3807	\N
394	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	1050	3807	\N
395	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	860	3807	\N
396	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	1019	3807	\N
397	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	1032	3807	\N
398	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	66	1033	3807	\N
399	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	68	380	3807	\N
400	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	68	381	3807	\N
401	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	68	382	3807	\N
402	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	68	383	3807	\N
403	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	68	384	3807	\N
404	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	68	385	3807	\N
405	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	68	386	3807	\N
406	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	68	387	3807	\N
407	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	68	1068	3807	\N
408	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	68	701	3807	\N
409	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	69	388	3807	\N
410	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	69	390	3807	\N
411	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	69	391	3807	\N
412	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	69	759	3807	\N
413	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	70	392	3807	\N
414	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	70	394	3807	\N
415	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	70	395	3807	\N
416	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	71	404	3807	\N
417	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	71	405	3807	\N
418	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	71	406	3807	\N
419	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	71	407	3807	\N
420	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	71	780	3807	\N
421	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	72	408	3807	\N
422	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	72	409	3807	\N
423	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	72	845	3807	\N
424	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	73	410	3807	\N
425	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	73	411	3807	\N
426	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	73	412	3807	\N
427	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	73	413	3807	\N
428	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	73	414	3807	\N
429	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	73	416	3807	\N
430	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	73	417	3807	\N
431	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	73	418	3807	\N
432	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	74	1075	3807	\N
433	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	74	674	3807	\N
434	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	74	419	3807	\N
435	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	74	421	3807	\N
436	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	74	422	3807	\N
437	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	74	423	3807	\N
438	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	74	424	3807	\N
439	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	74	425	3807	\N
440	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	74	426	3807	\N
441	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	74	1074	3807	\N
442	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	75	428	3807	\N
443	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	75	430	3807	\N
444	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	75	431	3807	\N
445	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	75	432	3807	\N
446	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	75	433	3807	\N
447	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	75	434	3807	\N
448	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	75	435	3807	\N
449	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	80	471	3807	\N
450	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	75	437	3807	\N
451	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	75	789	3807	\N
452	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	75	1064	3807	\N
453	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	438	3807	\N
454	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	439	3807	\N
455	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	440	3807	\N
456	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	442	3807	\N
457	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	443	3807	\N
458	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	444	3807	\N
459	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	445	3807	\N
460	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	446	3807	\N
461	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	91	850	3807	\N
462	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	447	3807	\N
463	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	448	3807	\N
464	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	450	3807	\N
465	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	451	3807	\N
466	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	713	3807	\N
467	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	870	3807	\N
468	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	872	3807	\N
469	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	874	3807	\N
470	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	875	3807	\N
471	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	77	452	3807	\N
472	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	77	453	3807	\N
473	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	77	454	3807	\N
474	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	77	455	3807	\N
475	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	77	456	3807	\N
476	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	77	457	3807	\N
477	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	77	458	3807	\N
478	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	77	460	3807	\N
479	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	77	461	3807	\N
480	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	77	757	3807	\N
481	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	77	878	3807	\N
482	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	78	462	3807	\N
483	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	78	463	3807	\N
484	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	78	464	3807	\N
485	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	78	465	3807	\N
486	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	78	466	3807	\N
487	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	78	467	3807	\N
488	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	78	728	3807	\N
489	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	78	915	3807	\N
490	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	79	470	3807	\N
491	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	79	1017	3807	\N
492	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	79	745	3807	\N
493	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	80	752	3807	\N
494	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	81	473	3807	\N
495	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	81	475	3807	\N
496	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	81	730	3807	\N
497	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	82	477	3807	\N
498	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	82	478	3807	\N
499	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	82	787	3807	\N
500	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	83	479	3807	\N
501	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	83	480	3807	\N
502	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	83	481	3807	\N
503	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	83	482	3807	\N
504	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	83	770	3807	\N
505	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	84	483	3807	\N
506	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	84	484	3807	\N
507	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	84	485	3807	\N
508	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	84	686	3807	\N
509	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	84	1057	3807	\N
510	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	84	959	3807	\N
511	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	84	1035	3807	\N
512	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	486	3807	\N
513	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	487	3807	\N
514	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	488	3807	\N
515	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	489	3807	\N
516	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	490	3807	\N
517	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	491	3807	\N
518	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	492	3807	\N
519	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	652	3807	\N
520	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	494	3807	\N
521	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	495	3807	\N
522	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	496	3807	\N
523	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	497	3807	\N
524	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	498	3807	\N
525	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	499	3807	\N
526	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	631	3807	\N
527	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	651	3807	\N
528	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	85	653	3807	\N
529	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	86	500	3807	\N
530	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	86	501	3807	\N
531	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	86	680	3807	\N
532	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	86	957	3807	\N
533	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	87	502	3807	\N
534	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	87	503	3807	\N
535	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	87	504	3807	\N
536	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	87	505	3807	\N
537	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	87	506	3807	\N
538	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	87	507	3807	\N
539	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	87	682	3807	\N
540	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	87	955	3807	\N
541	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	509	3807	\N
542	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	510	3807	\N
543	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	511	3807	\N
544	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	512	3807	\N
545	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	513	3807	\N
546	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	514	3807	\N
547	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	515	3807	\N
548	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	517	3807	\N
549	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	518	3807	\N
550	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	519	3807	\N
551	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	520	3807	\N
552	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	521	3807	\N
553	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	522	3807	\N
554	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	695	3807	\N
555	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	88	1065	3807	\N
556	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	89	523	3807	\N
557	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	89	524	3807	\N
558	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	89	525	3807	\N
559	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	89	526	3807	\N
560	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	89	527	3807	\N
561	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	89	528	3807	\N
562	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	89	776	3807	\N
563	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	91	529	3807	\N
564	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	91	530	3807	\N
565	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	91	531	3807	\N
566	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	91	532	3807	\N
567	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	91	533	3807	\N
568	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	91	534	3807	\N
569	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	648	3807	\N
570	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	536	3807	\N
571	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	537	3807	\N
572	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	538	3807	\N
573	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	539	3807	\N
574	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	541	3807	\N
575	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	542	3807	\N
576	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	543	3807	\N
577	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	544	3807	\N
578	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	545	3807	\N
579	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	546	3807	\N
580	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	547	3807	\N
581	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	634	3807	\N
582	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	649	3807	\N
583	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	664	3807	\N
584	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	92	1003	3807	\N
585	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	93	548	3807	\N
586	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	93	549	3807	\N
587	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	93	550	3807	\N
588	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	93	551	3807	\N
589	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	93	552	3807	\N
590	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	93	691	3807	\N
591	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	11	4	3807	\N
592	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	94	554	3807	\N
593	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	94	555	3807	\N
594	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	94	556	3807	\N
595	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	94	778	3807	\N
596	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	95	557	3807	\N
597	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	95	558	3807	\N
598	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	95	559	3807	\N
599	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	95	560	3807	\N
600	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	95	561	3807	\N
601	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	95	562	3807	\N
602	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	95	563	3807	\N
603	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	95	564	3807	\N
604	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	95	565	3807	\N
605	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	95	566	3807	\N
606	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	95	628	3807	\N
607	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	95	754	3807	\N
608	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	95	756	3807	\N
609	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	567	3807	\N
610	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	568	3807	\N
611	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	569	3807	\N
612	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	570	3807	\N
613	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	571	3807	\N
614	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	572	3807	\N
615	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	573	3807	\N
616	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	574	3807	\N
617	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	575	3807	\N
618	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	576	3807	\N
619	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	577	3807	\N
620	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	578	3807	\N
621	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	579	3807	\N
622	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	580	3807	\N
623	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	736	3807	\N
624	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	96	1007	3807	\N
625	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	97	581	3807	\N
626	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	97	582	3807	\N
627	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	97	583	3807	\N
628	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	97	584	3807	\N
629	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	97	585	3807	\N
630	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	97	586	3807	\N
631	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	97	587	3807	\N
632	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	97	590	3807	\N
633	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	97	591	3807	\N
634	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	97	592	3807	\N
635	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	97	632	3807	\N
636	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	97	749	3807	\N
637	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	97	751	3807	\N
638	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	98	818	3807	\N
639	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	11	823	3807	\N
640	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	98	594	3807	\N
641	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	98	595	3807	\N
642	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	98	596	3807	\N
643	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	98	597	3807	\N
644	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	98	598	3807	\N
645	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	98	599	3807	\N
646	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	98	600	3807	\N
647	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	99	1059	3807	\N
648	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	99	601	3807	\N
649	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	99	602	3807	\N
650	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	99	603	3807	\N
651	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	99	604	3807	\N
652	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	99	605	3807	\N
653	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	99	606	3807	\N
654	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	99	854	3807	\N
655	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	100	608	3807	\N
656	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	100	761	3807	\N
657	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	100	924	3807	\N
658	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	101	609	3807	\N
659	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	101	660	3807	\N
660	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	101	922	3807	\N
661	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	102	610	3807	\N
662	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	102	693	3807	\N
663	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	102	923	3807	\N
664	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	103	611	3807	\N
665	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	103	612	3807	\N
666	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	103	684	3807	\N
667	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	104	613	3807	\N
668	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	104	614	3807	\N
669	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	104	615	3807	\N
670	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	104	616	3807	\N
671	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	104	618	3807	\N
672	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	104	619	3807	\N
673	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	104	620	3807	\N
674	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	104	709	3807	\N
675	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	104	1066	3807	\N
676	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	105	621	3807	\N
677	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	105	622	3807	\N
678	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	105	623	3807	\N
679	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	105	624	3807	\N
680	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	105	625	3807	\N
681	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	105	732	3807	\N
682	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	105	1034	3807	\N
683	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	110	641	3807	\N
684	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	110	791	3807	\N
685	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	112	807	3807	\N
686	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	112	805	3807	\N
687	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	112	809	3807	\N
688	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	112	810	3807	\N
689	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	112	811	3807	\N
690	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	112	812	3807	\N
691	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	112	813	3807	\N
692	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	112	814	3807	\N
693	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	112	815	3807	\N
694	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	112	1004	3807	\N
695	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	112	1021	3807	\N
696	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	114	847	3807	\N
697	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	114	848	3807	\N
698	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	118	880	3807	\N
699	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	118	881	3807	\N
700	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	118	882	3807	\N
701	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	118	883	3807	\N
702	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	118	884	3807	\N
703	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	118	1031	3807	\N
25	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	50	3807	\N
704	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	894	3807	\N
705	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	889	3807	\N
706	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	887	3807	\N
707	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	892	3807	\N
708	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	900	3807	\N
709	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	899	3807	\N
710	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	897	3807	\N
711	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	896	3807	\N
712	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	898	3807	\N
713	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	891	3807	\N
714	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	886	3807	\N
715	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	993	3807	\N
716	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	994	3807	\N
717	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	995	3807	\N
718	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	119	1000	3807	\N
719	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	123	907	3807	\N
720	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	123	908	3807	\N
721	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	123	909	3807	\N
722	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	123	910	3807	\N
723	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	123	911	3807	\N
745	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	15	768	3807	\N
746	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	20	662	3807	\N
747	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	21	26	3807	\N
748	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	22	797	3807	\N
749	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	24	38	3807	\N
750	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	51	228	3807	\N
751	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	73	839	3807	\N
752	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	76	449	3807	\N
753	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	124	1030	3807	\N
754	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	124	999	3807	\N
755	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	127	1073	3807	\N
756	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	127	1072	3807	\N
757	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	127	1070	3807	\N
758	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	127	1002	3807	\N
759	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	128	1022	3807	\N
760	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	128	1025	3807	\N
761	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	130	1026	3807	\N
762	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	130	1027	3807	\N
763	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	130	1028	3807	\N
764	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	130	1029	3807	\N
765	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	131	1036	3807	\N
766	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	131	1037	3807	\N
767	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	133	1040	3807	\N
768	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	133	1041	3807	\N
769	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	133	1042	3807	\N
770	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	133	1043	3807	\N
771	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	133	1045	3807	\N
772	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	133	1044	3807	\N
773	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	134	1052	3807	\N
774	0	0	0	0	0	0	0	8	\N	\N	3	\N	\N	2	\N	\N	2024-06-25 08:23:57.491746	154	1056	3807	\N
3685	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	3811	\N
3686	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	3811	\N
3687	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	3811	\N
3688	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	3811	\N
3689	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	3811	\N
3690	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	3811	\N
3691	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	3811	\N
3692	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	3811	\N
3693	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	3811	\N
3694	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	3811	\N
3695	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	3811	\N
3696	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	3811	\N
6233	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	3819	\N
6234	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	3819	\N
6235	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	3819	\N
6236	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	3819	\N
6237	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	3819	\N
6238	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	3819	\N
6239	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	3819	\N
6240	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	3819	\N
6241	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	3819	\N
6242	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	3819	\N
6243	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	3819	\N
6244	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	3819	\N
6245	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	3819	\N
6246	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	3819	\N
6247	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	3819	\N
6248	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	3819	\N
6249	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	3819	\N
6250	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	3819	\N
6251	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	3819	\N
6252	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	3819	\N
6253	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	3819	\N
6254	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	3819	\N
6255	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	3819	\N
6256	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	3819	\N
6257	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	3819	\N
6258	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	3819	\N
6259	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	3819	\N
6260	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	3819	\N
6261	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	3819	\N
6262	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	3819	\N
6263	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	3819	\N
6264	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	3819	\N
6265	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	3819	\N
6266	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	3819	\N
6267	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	3819	\N
6268	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	3819	\N
6269	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	3819	\N
6270	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	3819	\N
6271	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	3819	\N
6272	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	3819	\N
6273	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	3819	\N
6274	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	3819	\N
6275	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	3819	\N
6276	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	3819	\N
6277	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	3819	\N
6278	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	3819	\N
6279	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	3819	\N
6280	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	3819	\N
6281	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	3819	\N
6282	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	3819	\N
6283	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	3819	\N
6284	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	3819	\N
6285	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	3819	\N
6286	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	3819	\N
6287	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	3819	\N
6288	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	3819	\N
6289	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	3819	\N
6290	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	3819	\N
6291	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	3819	\N
6292	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	3819	\N
6293	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	3819	\N
6294	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	3819	\N
6295	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	3819	\N
6296	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	3819	\N
6297	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	3819	\N
6298	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	3819	\N
6299	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	3819	\N
6300	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	3819	\N
6301	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	3819	\N
6302	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	3819	\N
6303	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	3819	\N
6304	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	3819	\N
6305	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	3819	\N
6306	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	3819	\N
6307	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	3819	\N
6308	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	3819	\N
6309	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	3819	\N
6310	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	3819	\N
6311	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	3819	\N
6312	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	3819	\N
6313	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	3819	\N
6314	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	3819	\N
6315	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	3819	\N
6316	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	3819	\N
6317	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	3819	\N
6318	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	3819	\N
6319	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	3819	\N
6320	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	3819	\N
6321	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	3819	\N
6322	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	3819	\N
6323	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	3819	\N
6324	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	3819	\N
6325	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	3819	\N
6326	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	3819	\N
6327	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	3819	\N
6328	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	3819	\N
6329	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	3819	\N
6330	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	3819	\N
6331	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	3819	\N
6332	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	3819	\N
6333	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	3819	\N
6334	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	3819	\N
6335	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	3819	\N
6336	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	3819	\N
6337	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	3819	\N
6338	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	3819	\N
6339	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	3819	\N
6340	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	3819	\N
6341	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	3819	\N
6342	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	3819	\N
6343	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	3819	\N
6344	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	3819	\N
6345	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	3819	\N
6346	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	3819	\N
6347	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	3819	\N
6348	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	3819	\N
6349	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	3819	\N
6350	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	3819	\N
6351	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	3819	\N
6352	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	3819	\N
6353	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	3819	\N
6354	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	3819	\N
6355	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	3819	\N
6356	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	3819	\N
6357	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	3819	\N
6358	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	3819	\N
6359	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	3819	\N
6360	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	3819	\N
6361	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	3819	\N
6362	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	3819	\N
6363	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	3819	\N
6364	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	3819	\N
6365	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	3819	\N
6366	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	3819	\N
6367	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	3819	\N
6368	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	3819	\N
6369	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	3819	\N
6370	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	3819	\N
6371	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	3819	\N
6372	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	3819	\N
6373	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	3819	\N
6374	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	3819	\N
6375	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	3819	\N
6376	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	3819	\N
6377	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	3819	\N
6378	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	3819	\N
6379	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	3819	\N
6380	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	3819	\N
6381	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	3819	\N
6382	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	3819	\N
6383	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	3819	\N
6384	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	3819	\N
6385	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	3819	\N
6386	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	3819	\N
6387	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	3819	\N
6388	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	3819	\N
6389	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	3819	\N
6390	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	3819	\N
6391	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	3819	\N
6392	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	3819	\N
6393	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	3819	\N
6394	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	3819	\N
6395	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	3819	\N
6396	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	3819	\N
6397	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	3819	\N
6398	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	3819	\N
6399	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	3819	\N
6400	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	3819	\N
6401	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	3819	\N
6402	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	3819	\N
6403	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	3819	\N
6404	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	3819	\N
6405	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	3819	\N
6406	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	3819	\N
6407	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	3819	\N
6408	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	3819	\N
6409	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	3819	\N
6410	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	3819	\N
6411	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	3819	\N
6412	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	3819	\N
6413	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	3819	\N
6414	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	3819	\N
6415	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	3819	\N
6416	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	3819	\N
6417	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	3819	\N
6418	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	3819	\N
6419	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	3819	\N
6420	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	3819	\N
6421	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	3819	\N
6422	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	3819	\N
6423	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	3819	\N
6424	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	3819	\N
6425	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	3819	\N
6426	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	3819	\N
6427	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	3819	\N
6428	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	3819	\N
6429	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	3819	\N
6430	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	3819	\N
9290	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	3823	\N
6432	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	3819	\N
6433	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	3819	\N
6434	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	3819	\N
6435	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	3819	\N
6436	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	3819	\N
6437	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	3819	\N
6438	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	3819	\N
6439	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	3819	\N
6440	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	3819	\N
6441	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	3819	\N
6442	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	3819	\N
6443	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	3819	\N
6444	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	3819	\N
6445	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	3819	\N
6446	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	3819	\N
6447	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	3819	\N
6448	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	3819	\N
6449	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	3819	\N
6450	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	3819	\N
6451	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	3819	\N
6452	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	3819	\N
6453	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	3819	\N
6454	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	3819	\N
6455	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	3819	\N
6456	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	3819	\N
6457	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	3819	\N
6458	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	3819	\N
6459	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	3819	\N
6460	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	3819	\N
6461	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	3819	\N
6462	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	3819	\N
6463	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	3819	\N
6464	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	3819	\N
6465	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	3819	\N
6466	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	3819	\N
6467	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	3819	\N
6468	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	3819	\N
6469	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	3819	\N
6470	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	3819	\N
6471	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	3819	\N
6472	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	3819	\N
6473	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	3819	\N
6474	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	3819	\N
6475	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	3819	\N
6476	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	3819	\N
6477	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	3819	\N
6478	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	3819	\N
6479	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	3819	\N
6480	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	3819	\N
6481	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	3819	\N
6482	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	3819	\N
6483	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	3819	\N
6484	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	3819	\N
6485	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	3819	\N
6486	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	3819	\N
6487	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	3819	\N
6488	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	3819	\N
6489	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	3819	\N
6490	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	3819	\N
6491	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	3819	\N
6492	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	3819	\N
6493	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	3819	\N
6494	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	3819	\N
6495	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	3819	\N
6496	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	3819	\N
6497	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	3819	\N
6498	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	3819	\N
6499	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	3819	\N
6500	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	3819	\N
6501	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	3819	\N
6502	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	3819	\N
6503	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	3819	\N
6504	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	3819	\N
6505	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	3819	\N
6506	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	3819	\N
6507	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	3819	\N
6508	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	3819	\N
6509	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	3819	\N
6510	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	3819	\N
6511	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	3819	\N
6512	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	3819	\N
6513	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	3819	\N
6514	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	3819	\N
6515	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	3819	\N
6516	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	3819	\N
6517	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	3819	\N
6518	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	3819	\N
6519	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	3819	\N
6520	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	3819	\N
6521	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	3819	\N
6522	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	3819	\N
6523	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	3819	\N
6524	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	3819	\N
6525	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	3819	\N
6526	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	3819	\N
6527	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	3819	\N
6528	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	3819	\N
6529	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	3819	\N
6530	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	3819	\N
6531	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	3819	\N
6532	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	3819	\N
6533	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	3819	\N
6534	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	3819	\N
6535	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	3819	\N
6536	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	3819	\N
6537	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	3819	\N
6538	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	3819	\N
6539	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	3819	\N
6540	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	3819	\N
6541	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	3819	\N
6542	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	3819	\N
6543	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	3819	\N
6544	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	3819	\N
6545	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	3819	\N
6546	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	3819	\N
6547	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	3819	\N
6548	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	3819	\N
6549	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	3819	\N
6550	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	3819	\N
6551	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	3819	\N
6552	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	3819	\N
6553	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	3819	\N
6554	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	3819	\N
6555	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	3819	\N
6556	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	3819	\N
6557	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	3819	\N
6558	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	3819	\N
6559	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	3819	\N
6560	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	3819	\N
6561	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	3819	\N
6562	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	3819	\N
6563	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	3819	\N
6564	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	3819	\N
6565	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	3819	\N
6566	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	3819	\N
6567	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	3819	\N
6568	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	3819	\N
6569	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	3819	\N
6570	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	3819	\N
6571	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	3819	\N
6572	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	3819	\N
6573	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	3819	\N
6574	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	3819	\N
6575	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	3819	\N
6576	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	3819	\N
6577	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	3819	\N
6578	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	3819	\N
6579	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	3819	\N
6580	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	3819	\N
6581	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	3819	\N
6582	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	3819	\N
6583	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	3819	\N
6584	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	3819	\N
6585	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	3819	\N
6586	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	3819	\N
6587	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	3819	\N
6588	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	3819	\N
6589	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	3819	\N
6590	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	3819	\N
6591	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	3819	\N
6592	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	3819	\N
6593	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	3819	\N
6594	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	3819	\N
6595	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	3819	\N
6596	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	3819	\N
6597	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	3819	\N
6598	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	3819	\N
6599	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	3819	\N
6600	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	3819	\N
6601	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	3819	\N
6602	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	3819	\N
6603	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	3819	\N
6604	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	3819	\N
6605	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	3819	\N
6606	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	3819	\N
6607	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	3819	\N
6608	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	3819	\N
6609	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	3819	\N
6610	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	3819	\N
6611	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	3819	\N
6612	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	3819	\N
6613	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	3819	\N
6614	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	3819	\N
6615	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	3819	\N
6616	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	3819	\N
6617	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	3819	\N
6618	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	3819	\N
6619	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	3819	\N
6620	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	3819	\N
6621	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	3819	\N
6622	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	3819	\N
6623	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	3819	\N
6624	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	3819	\N
6625	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	3819	\N
6626	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	3819	\N
6627	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	3819	\N
6628	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	3819	\N
6629	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	3819	\N
6630	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	3819	\N
6631	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	3819	\N
6632	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	3819	\N
6633	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	3819	\N
6634	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	3819	\N
6635	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	3819	\N
6636	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	3819	\N
6637	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	3819	\N
6638	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	3819	\N
6639	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	3819	\N
6640	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	3819	\N
6641	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	3819	\N
6642	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	3819	\N
6643	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	3819	\N
6644	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	3819	\N
6645	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	3819	\N
6646	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	3819	\N
6647	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	3819	\N
6648	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	3819	\N
6649	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	3819	\N
6650	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	3819	\N
6651	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	3819	\N
6652	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	3819	\N
6653	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	3819	\N
6654	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	3819	\N
6655	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	3819	\N
6656	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	3819	\N
6657	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	3819	\N
6658	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	3819	\N
6659	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	3819	\N
6660	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	3819	\N
6661	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	3819	\N
6662	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	3819	\N
6663	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	3819	\N
6664	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	3819	\N
6665	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	3819	\N
6666	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	3819	\N
6667	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	3819	\N
6668	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	3819	\N
6669	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	3819	\N
6670	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	3819	\N
6671	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	3819	\N
6672	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	3819	\N
6673	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	3819	\N
6674	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	3819	\N
6675	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	3819	\N
6676	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	3819	\N
6677	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	3819	\N
6678	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	3819	\N
6679	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	3819	\N
6680	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	3819	\N
6681	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	3819	\N
6682	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	3819	\N
6683	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	3819	\N
6684	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	3819	\N
6685	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	3819	\N
6686	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	3819	\N
6687	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	3819	\N
6688	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	3819	\N
6689	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	3819	\N
6690	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	3819	\N
6691	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	3819	\N
6692	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	3819	\N
6693	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	3819	\N
6694	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	3819	\N
6695	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	3819	\N
6696	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	3819	\N
6697	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	3819	\N
6698	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	3819	\N
6699	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	3819	\N
6700	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	3819	\N
6701	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	3819	\N
6702	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	3819	\N
6703	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	3819	\N
6704	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	3819	\N
6705	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	3819	\N
6706	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	3819	\N
6707	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	3819	\N
6708	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	3819	\N
6709	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	3819	\N
6710	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	3819	\N
6711	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	3819	\N
6712	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	3819	\N
6713	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	3819	\N
6714	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	3819	\N
6715	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	3819	\N
6716	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	3819	\N
6717	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	3819	\N
6718	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	3819	\N
6719	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	3819	\N
6720	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	3819	\N
6721	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	3819	\N
6722	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	3819	\N
6723	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	3819	\N
6724	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	3819	\N
6725	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	3819	\N
6726	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	3819	\N
6727	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	3819	\N
6728	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	3819	\N
6729	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	3819	\N
6730	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	3819	\N
6731	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	3819	\N
6732	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	3819	\N
6733	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	3819	\N
6734	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	3819	\N
6735	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	3819	\N
6736	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	3819	\N
6737	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	3819	\N
6738	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	3819	\N
6739	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	3819	\N
6740	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	3819	\N
6741	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	3819	\N
6742	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	3819	\N
6743	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	3819	\N
6744	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	3819	\N
6745	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	3819	\N
6746	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	3819	\N
6747	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	3819	\N
6748	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	3819	\N
6749	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	3819	\N
6750	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	3819	\N
6751	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	3819	\N
6752	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	3819	\N
6753	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	3819	\N
6754	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	3819	\N
6755	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	3819	\N
6756	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	3819	\N
6757	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	3819	\N
6758	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	3819	\N
6759	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	3819	\N
6760	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	3819	\N
6761	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	3819	\N
6762	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	3819	\N
6763	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	3819	\N
6764	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	3819	\N
6765	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	3819	\N
6766	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	3819	\N
6767	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	3819	\N
6768	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	3819	\N
6769	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	3819	\N
6770	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	3819	\N
6771	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	3819	\N
6772	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	3819	\N
6773	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	3819	\N
6774	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	3819	\N
6775	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	3819	\N
6776	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	3819	\N
6777	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	3819	\N
6778	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	3819	\N
6779	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	3819	\N
6780	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	3819	\N
6781	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	3819	\N
6782	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	3819	\N
6783	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	3819	\N
6784	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	3819	\N
6785	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	3819	\N
6786	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	3819	\N
6787	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	3819	\N
6788	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	3819	\N
6789	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	3819	\N
6790	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	3819	\N
6791	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	3819	\N
6792	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	3819	\N
6793	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	3819	\N
6794	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	3819	\N
6795	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	3819	\N
6796	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	3819	\N
6797	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	3819	\N
6798	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	3819	\N
6799	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	3819	\N
6800	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	3819	\N
6801	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	3819	\N
6802	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	3819	\N
6803	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	3819	\N
6804	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	3819	\N
6805	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	3819	\N
6806	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	3819	\N
6807	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	3819	\N
6808	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	3819	\N
6809	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	3819	\N
6810	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	3819	\N
6811	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	3819	\N
6812	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	3819	\N
6813	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	3819	\N
6814	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	3819	\N
6815	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	3819	\N
6816	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	3819	\N
6817	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	3819	\N
6818	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	3819	\N
6819	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	3819	\N
6820	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	3819	\N
6821	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	3819	\N
6822	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	3819	\N
6823	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	3819	\N
6824	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	3819	\N
6825	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	3819	\N
6826	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	3819	\N
6827	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	3819	\N
6828	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	3819	\N
6829	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	3819	\N
6830	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	3819	\N
6831	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	3819	\N
6832	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	3819	\N
6833	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	3819	\N
6834	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	3819	\N
6835	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	3819	\N
6836	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	3819	\N
6837	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	3819	\N
6838	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	3819	\N
6839	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	3819	\N
6840	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	3819	\N
6841	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	3819	\N
6842	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	3819	\N
6843	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	3819	\N
6844	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	3819	\N
6845	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	3819	\N
6846	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	3819	\N
6847	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	3819	\N
6848	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	3819	\N
6849	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	3819	\N
6850	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	3819	\N
6851	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	3819	\N
6852	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	3819	\N
6853	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	3819	\N
6854	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	3819	\N
6855	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	3819	\N
6856	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	3819	\N
6857	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	3819	\N
6858	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	3819	\N
6859	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	3819	\N
6860	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	3819	\N
6861	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	3819	\N
6862	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	3819	\N
6863	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	3819	\N
6864	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	3819	\N
6865	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	3819	\N
6866	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	3819	\N
6867	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	3819	\N
6868	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	3819	\N
6869	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	3819	\N
6870	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	3819	\N
6871	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	3819	\N
6872	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	3819	\N
6873	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	3819	\N
6874	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	3819	\N
6875	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	3819	\N
6876	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	3819	\N
6877	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	3819	\N
6878	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	3819	\N
6879	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	3819	\N
6880	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	3819	\N
6881	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	3819	\N
6882	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	3819	\N
6883	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	3819	\N
6884	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	3819	\N
6885	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	3819	\N
6886	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	3819	\N
6887	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	3819	\N
6888	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	3819	\N
6889	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	3819	\N
6890	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	3819	\N
6891	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	3819	\N
6892	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	3819	\N
6893	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	3819	\N
6894	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	3819	\N
6895	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	3819	\N
6896	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	3819	\N
6897	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	3819	\N
6898	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	3819	\N
6899	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	3819	\N
6900	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	3819	\N
6901	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	3819	\N
6902	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	3819	\N
6903	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	3819	\N
6904	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	3819	\N
6905	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	3819	\N
6906	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	3819	\N
6907	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	3819	\N
6908	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	3819	\N
6909	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	3819	\N
6910	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	3819	\N
6911	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	3819	\N
6912	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	3819	\N
6913	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	3819	\N
6914	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	3819	\N
6915	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	3819	\N
6916	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	3819	\N
6917	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	3819	\N
6918	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	3819	\N
6919	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	3819	\N
6920	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	3819	\N
6921	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	3819	\N
6922	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	3819	\N
6923	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	3819	\N
6924	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	3819	\N
6925	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	3819	\N
6926	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	3819	\N
6927	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	3819	\N
6928	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	3819	\N
6929	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	3819	\N
6930	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	3819	\N
6931	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	3819	\N
6932	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	3819	\N
6933	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	3819	\N
6934	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	3819	\N
6935	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	3819	\N
6936	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	3819	\N
6937	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	3819	\N
6938	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	3819	\N
6939	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	3819	\N
6940	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	3819	\N
6941	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	3819	\N
6942	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	3819	\N
6943	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	3819	\N
6944	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	3819	\N
6945	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	3819	\N
6946	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	3819	\N
6947	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	3819	\N
6948	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	3819	\N
6949	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	3819	\N
6950	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	3819	\N
6951	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	3819	\N
6952	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	3819	\N
6953	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	3819	\N
6954	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	3819	\N
6955	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	3819	\N
6956	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	3819	\N
6957	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	3819	\N
9291	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	3823	\N
6959	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	3819	\N
6960	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	3819	\N
6961	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	413	3819	\N
6962	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	414	3819	\N
6963	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	3819	\N
6964	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	3819	\N
6965	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	3819	\N
6966	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	3819	\N
6984	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	3820	\N
6985	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	3820	\N
3897	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	3816	\N
3898	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	3816	\N
3899	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	3816	\N
3900	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	3816	\N
3901	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	3816	\N
3902	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	3816	\N
3903	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	3816	\N
3904	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	3816	\N
3905	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	3816	\N
3906	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	3816	\N
3907	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	3816	\N
3908	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	3816	\N
3871	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	3816	\N
3872	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	3816	\N
3873	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	3816	\N
3874	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	3816	\N
3875	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	3816	\N
3876	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	3816	\N
3877	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	3816	\N
3878	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	3816	\N
3879	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	3816	\N
3880	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	3816	\N
3881	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	3816	\N
3882	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	3816	\N
3883	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	3816	\N
3884	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	3816	\N
3885	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	3816	\N
3886	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	3816	\N
3887	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	3816	\N
3888	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	3816	\N
3889	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	3816	\N
3890	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	3816	\N
3891	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	3816	\N
3892	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	3816	\N
3893	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	3816	\N
3894	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	3816	\N
3895	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	3816	\N
3896	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	3816	\N
3909	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	3816	\N
3910	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	3816	\N
3911	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	3816	\N
3912	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	3816	\N
3913	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	3816	\N
3914	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	3816	\N
3915	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	3816	\N
3916	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	3816	\N
3917	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	3816	\N
3918	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	3816	\N
3919	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	3816	\N
3920	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	3816	\N
3921	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	3816	\N
3922	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	3816	\N
3923	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	3816	\N
3924	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	3816	\N
3925	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	3816	\N
3926	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	3816	\N
3927	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	3816	\N
3928	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	3816	\N
3929	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	3816	\N
3930	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	3816	\N
3931	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	3816	\N
3932	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	3816	\N
3933	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	3816	\N
3934	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	3816	\N
3935	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	3816	\N
3936	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	3816	\N
3937	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	3816	\N
3938	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	3816	\N
3939	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	3816	\N
3940	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	3816	\N
3941	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	3816	\N
3942	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	3816	\N
3943	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	3816	\N
3944	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	3816	\N
3945	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	3816	\N
3946	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	3816	\N
3947	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	3816	\N
3948	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	3816	\N
3949	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	3816	\N
3950	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	3816	\N
3951	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	3816	\N
3952	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	3816	\N
3953	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	3816	\N
3954	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	3816	\N
3955	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	3816	\N
3956	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	3816	\N
3957	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	3816	\N
3958	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	3816	\N
3959	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	3816	\N
3960	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	3816	\N
3961	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	3816	\N
3962	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	3816	\N
3963	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	3816	\N
3964	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	3816	\N
3965	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	3816	\N
3966	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	3816	\N
3967	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	3816	\N
3968	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	3816	\N
3969	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	3816	\N
3970	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	3816	\N
3971	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	3816	\N
3972	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	3816	\N
3973	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	3816	\N
3974	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	3816	\N
3975	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	3816	\N
3976	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	3816	\N
3977	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	3816	\N
3978	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	3816	\N
3979	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	3816	\N
3980	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	3816	\N
3981	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	3816	\N
3982	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	3816	\N
3983	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	3816	\N
3984	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	3816	\N
3985	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	3816	\N
3986	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	3816	\N
3987	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	3816	\N
3988	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	3816	\N
3989	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	3816	\N
3990	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	3816	\N
3991	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	3816	\N
3992	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	3816	\N
3993	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	3816	\N
3994	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	3816	\N
3995	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	3816	\N
3996	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	3816	\N
3997	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	3816	\N
3998	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	3816	\N
9292	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	3823	\N
4000	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	3816	\N
4001	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	3816	\N
4002	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	3816	\N
4003	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	3816	\N
4004	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	3816	\N
4005	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	3816	\N
4006	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	3816	\N
4007	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	3816	\N
4008	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	3816	\N
4009	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	3816	\N
4010	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	3816	\N
4011	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	3816	\N
4012	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	3816	\N
4013	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	3816	\N
4014	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	3816	\N
4015	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	3816	\N
4016	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	3816	\N
4017	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	3816	\N
4018	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	3816	\N
4019	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	3816	\N
4020	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	3816	\N
4021	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	3816	\N
4022	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	3816	\N
4023	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	3816	\N
4024	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	3816	\N
4025	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	3816	\N
4026	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	3816	\N
4027	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	3816	\N
4028	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	3816	\N
4029	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	3816	\N
4030	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	3816	\N
4031	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	3816	\N
4032	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	3816	\N
4033	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	3816	\N
4034	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	3816	\N
4035	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	3816	\N
4036	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	3816	\N
4037	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	3816	\N
4038	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	3816	\N
4039	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	3816	\N
4040	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	3816	\N
4041	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	3816	\N
4042	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	3816	\N
4043	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	3816	\N
4044	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	3816	\N
4045	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	3816	\N
4046	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	3816	\N
4047	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	3816	\N
4048	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	3816	\N
4049	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	3816	\N
4050	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	3816	\N
4051	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	3816	\N
4052	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	3816	\N
4053	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	3816	\N
4054	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	3816	\N
4055	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	3816	\N
4056	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	3816	\N
4057	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	3816	\N
4058	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	3816	\N
4059	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	3816	\N
4060	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	3816	\N
4061	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	3816	\N
4062	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	3816	\N
4063	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	3816	\N
4064	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	3816	\N
4065	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	3816	\N
4066	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	3816	\N
4067	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	3816	\N
4068	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	3816	\N
4069	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	3816	\N
4070	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	3816	\N
4071	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	3816	\N
4072	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	3816	\N
4073	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	3816	\N
4074	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	3816	\N
4075	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	3816	\N
4076	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	3816	\N
4077	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	3816	\N
4078	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	3816	\N
4079	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	3816	\N
4080	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	3816	\N
4081	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	3816	\N
4082	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	3816	\N
4083	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	3816	\N
4084	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	3816	\N
4085	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	3816	\N
4086	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	3816	\N
4087	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	3816	\N
4088	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	3816	\N
4089	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	3816	\N
4090	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	3816	\N
4091	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	3816	\N
4092	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	3816	\N
4093	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	3816	\N
4094	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	3816	\N
4095	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	3816	\N
4096	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	3816	\N
4097	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	3816	\N
4098	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	3816	\N
4099	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	3816	\N
4100	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	3816	\N
4101	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	3816	\N
4102	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	3816	\N
4103	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	3816	\N
4104	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	3816	\N
4105	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	3816	\N
4106	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	3816	\N
4107	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	3816	\N
4108	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	3816	\N
4109	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	3816	\N
4110	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	3816	\N
4111	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	3816	\N
4112	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	3816	\N
4113	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	3816	\N
4114	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	3816	\N
4115	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	3816	\N
4116	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	3816	\N
4117	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	3816	\N
4118	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	3816	\N
4119	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	3816	\N
4120	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	3816	\N
4121	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	3816	\N
4122	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	3816	\N
4123	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	3816	\N
4124	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	3816	\N
4125	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	3816	\N
4126	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	3816	\N
4127	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	3816	\N
4128	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	3816	\N
4129	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	3816	\N
4130	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	3816	\N
4131	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	3816	\N
4132	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	3816	\N
4133	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	3816	\N
4134	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	3816	\N
4135	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	3816	\N
4136	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	3816	\N
4137	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	3816	\N
4138	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	3816	\N
4139	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	3816	\N
4140	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	3816	\N
4141	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	3816	\N
4142	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	3816	\N
4143	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	3816	\N
4144	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	3816	\N
4145	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	3816	\N
4146	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	3816	\N
4147	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	3816	\N
4148	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	3816	\N
4149	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	3816	\N
4150	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	3816	\N
4151	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	3816	\N
4152	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	3816	\N
4153	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	3816	\N
4154	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	3816	\N
4155	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	3816	\N
4156	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	3816	\N
4157	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	3816	\N
4158	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	3816	\N
4159	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	3816	\N
4160	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	3816	\N
4161	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	3816	\N
4162	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	3816	\N
4163	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	3816	\N
4164	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	3816	\N
4165	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	3816	\N
4166	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	3816	\N
4167	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	3816	\N
4168	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	3816	\N
4169	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	3816	\N
4170	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	3816	\N
4171	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	3816	\N
4172	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	3816	\N
4173	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	3816	\N
4174	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	3816	\N
4175	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	3816	\N
4176	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	3816	\N
4177	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	3816	\N
4178	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	3816	\N
4179	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	3816	\N
4180	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	3816	\N
4181	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	3816	\N
4182	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	3816	\N
4183	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	3816	\N
4184	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	3816	\N
4185	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	3816	\N
4186	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	3816	\N
4187	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	3816	\N
4188	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	3816	\N
4189	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	3816	\N
4190	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	3816	\N
4191	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	3816	\N
4192	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	3816	\N
4193	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	3816	\N
4194	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	3816	\N
4195	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	3816	\N
4196	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	3816	\N
4197	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	3816	\N
4198	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	3816	\N
4199	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	3816	\N
4200	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	3816	\N
4201	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	3816	\N
4202	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	3816	\N
4203	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	3816	\N
4204	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	3816	\N
4205	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	3816	\N
4206	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	3816	\N
4207	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	3816	\N
4208	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	3816	\N
4209	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	3816	\N
4210	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	3816	\N
4211	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	3816	\N
4212	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	3816	\N
4213	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	3816	\N
4214	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	3816	\N
4215	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	3816	\N
4216	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	3816	\N
4217	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	3816	\N
4218	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	3816	\N
4219	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	3816	\N
4220	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	3816	\N
4221	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	3816	\N
4222	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	3816	\N
4223	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	3816	\N
4224	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	3816	\N
4225	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	3816	\N
4226	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	3816	\N
4227	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	3816	\N
4228	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	3816	\N
4229	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	3816	\N
4230	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	3816	\N
4231	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	3816	\N
4232	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	3816	\N
4233	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	3816	\N
4234	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	3816	\N
4235	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	3816	\N
4236	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	3816	\N
4237	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	3816	\N
4238	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	3816	\N
4239	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	3816	\N
4240	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	3816	\N
4241	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	3816	\N
4242	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	3816	\N
4243	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	3816	\N
4244	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	3816	\N
4245	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	3816	\N
4246	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	3816	\N
4247	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	3816	\N
4248	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	3816	\N
4249	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	3816	\N
4250	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	3816	\N
4251	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	3816	\N
4252	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	3816	\N
4253	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	3816	\N
4254	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	3816	\N
4255	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	3816	\N
4256	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	3816	\N
4257	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	3816	\N
4258	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	3816	\N
4259	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	3816	\N
4260	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	3816	\N
4261	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	3816	\N
4262	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	3816	\N
4263	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	3816	\N
4264	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	3816	\N
4265	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	3816	\N
4266	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	3816	\N
4267	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	3816	\N
4268	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	3816	\N
4269	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	3816	\N
4270	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	3816	\N
4271	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	3816	\N
4272	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	3816	\N
4273	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	3816	\N
4274	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	3816	\N
4275	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	3816	\N
4276	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	3816	\N
4277	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	3816	\N
4278	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	3816	\N
4279	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	3816	\N
4280	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	3816	\N
4281	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	3816	\N
4282	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	3816	\N
4283	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	3816	\N
4284	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	3816	\N
4285	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	3816	\N
4286	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	3816	\N
4287	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	3816	\N
4288	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	3816	\N
4289	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	3816	\N
4290	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	3816	\N
4291	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	3816	\N
4292	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	3816	\N
4293	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	3816	\N
4294	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	3816	\N
4295	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	3816	\N
4296	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	3816	\N
4297	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	3816	\N
4298	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	3816	\N
4299	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	3816	\N
4300	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	3816	\N
4301	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	3816	\N
4302	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	3816	\N
4303	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	3816	\N
4304	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	3816	\N
4305	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	3816	\N
4306	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	3816	\N
4307	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	3816	\N
4308	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	3816	\N
4309	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	3816	\N
4310	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	3816	\N
4311	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	3816	\N
4312	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	3816	\N
4313	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	3816	\N
4314	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	3816	\N
4315	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	3816	\N
4316	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	3816	\N
4317	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	3816	\N
4318	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	3816	\N
4319	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	3816	\N
4320	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	3816	\N
4321	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	3816	\N
4322	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	3816	\N
4323	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	3816	\N
4324	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	3816	\N
4325	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	3816	\N
4326	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	3816	\N
4327	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	3816	\N
4328	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	3816	\N
4329	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	3816	\N
4330	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	3816	\N
4331	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	3816	\N
4332	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	3816	\N
4333	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	3816	\N
4334	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	3816	\N
4335	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	3816	\N
4336	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	3816	\N
4337	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	3816	\N
4338	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	3816	\N
4339	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	3816	\N
4340	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	3816	\N
4341	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	3816	\N
4342	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	3816	\N
4343	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	3816	\N
4344	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	3816	\N
4345	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	3816	\N
4346	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	3816	\N
4347	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	3816	\N
4348	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	3816	\N
4349	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	3816	\N
4350	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	3816	\N
4351	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	3816	\N
4352	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	3816	\N
4353	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	3816	\N
4354	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	3816	\N
4355	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	3816	\N
4356	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	3816	\N
4357	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	3816	\N
4358	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	3816	\N
4359	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	3816	\N
4360	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	3816	\N
4361	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	3816	\N
4362	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	3816	\N
4363	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	3816	\N
4364	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	3816	\N
4365	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	3816	\N
4366	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	3816	\N
4367	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	3816	\N
4368	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	3816	\N
4369	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	3816	\N
4370	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	3816	\N
4371	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	3816	\N
4372	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	3816	\N
4373	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	3816	\N
4374	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	3816	\N
4375	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	3816	\N
4376	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	3816	\N
4377	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	3816	\N
4378	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	3816	\N
4379	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	3816	\N
4380	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	3816	\N
4381	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	3816	\N
4382	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	3816	\N
4383	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	3816	\N
4384	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	3816	\N
4385	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	3816	\N
4386	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	3816	\N
4387	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	3816	\N
4388	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	3816	\N
4389	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	3816	\N
4390	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	3816	\N
4391	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	3816	\N
4392	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	3816	\N
4393	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	3816	\N
4394	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	3816	\N
4395	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	3816	\N
4396	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	3816	\N
4397	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	3816	\N
4398	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	3816	\N
4399	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	3816	\N
4400	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	3816	\N
4401	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	3816	\N
4402	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	3816	\N
4403	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	3816	\N
4404	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	3816	\N
4405	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	3816	\N
4406	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	3816	\N
4407	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	3816	\N
4408	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	3816	\N
4409	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	3816	\N
4410	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	3816	\N
4411	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	3816	\N
4412	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	3816	\N
4413	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	3816	\N
4414	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	3816	\N
4415	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	3816	\N
4416	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	3816	\N
4417	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	3816	\N
4418	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	3816	\N
4419	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	3816	\N
4420	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	3816	\N
4421	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	3816	\N
4422	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	3816	\N
4423	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	3816	\N
4424	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	3816	\N
4425	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	3816	\N
4426	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	3816	\N
4427	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	3816	\N
4428	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	3816	\N
4429	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	3816	\N
4430	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	3816	\N
4431	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	3816	\N
4432	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	3816	\N
4433	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	3816	\N
4434	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	3816	\N
4435	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	3816	\N
4436	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	3816	\N
4437	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	3816	\N
4438	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	3816	\N
4439	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	3816	\N
4440	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	3816	\N
4441	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	3816	\N
4442	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	3816	\N
4443	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	3816	\N
4444	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	3816	\N
4445	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	3816	\N
4446	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	3816	\N
4447	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	3816	\N
4448	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	3816	\N
4449	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	3816	\N
4450	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	3816	\N
4451	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	3816	\N
4452	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	3816	\N
4453	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	3816	\N
4454	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	3816	\N
4455	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	3816	\N
4456	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	3816	\N
4457	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	3816	\N
4458	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	3816	\N
4459	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	3816	\N
4460	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	3816	\N
4461	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	3816	\N
4462	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	3816	\N
4463	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	3816	\N
4464	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	3816	\N
4465	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	3816	\N
4466	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	3816	\N
4467	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	3816	\N
4468	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	3816	\N
4469	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	3816	\N
4470	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	3816	\N
4471	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	3816	\N
4472	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	3816	\N
4473	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	3816	\N
4474	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	3816	\N
4475	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	3816	\N
4476	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	3816	\N
4477	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	3816	\N
4478	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	3816	\N
4479	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	3816	\N
4480	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	3816	\N
4481	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	3816	\N
4482	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	3816	\N
4483	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	3816	\N
4484	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	3816	\N
4485	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	3816	\N
4486	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	3816	\N
4487	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	3816	\N
4488	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	3816	\N
4489	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	3816	\N
4490	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	3816	\N
4491	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	3816	\N
4492	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	3816	\N
4493	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	3816	\N
4494	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	3816	\N
4495	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	3816	\N
4496	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	3816	\N
4497	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	3816	\N
4498	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	3816	\N
4499	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	3816	\N
4500	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	3816	\N
4501	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	3816	\N
4502	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	3816	\N
4503	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	3816	\N
4504	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	3816	\N
4505	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	3816	\N
4506	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	3816	\N
4507	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	3816	\N
4508	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	3816	\N
4509	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	3816	\N
4510	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	3816	\N
4511	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	3816	\N
4512	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	3816	\N
4513	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	3816	\N
4514	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	3816	\N
4515	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	3816	\N
4516	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	3816	\N
4517	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	3816	\N
4518	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	3816	\N
4519	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	3816	\N
4520	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	3816	\N
4521	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	3816	\N
4522	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	3816	\N
4523	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	3816	\N
4524	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	3816	\N
4525	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	3816	\N
4526	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	3816	\N
4527	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	3816	\N
4528	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	3816	\N
4529	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	3816	\N
4530	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	3816	\N
4531	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	3816	\N
4532	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	3816	\N
4533	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	3816	\N
4534	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	3816	\N
4535	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	3816	\N
4536	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	3816	\N
4537	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	3816	\N
4538	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	3816	\N
4539	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	3816	\N
4540	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	3816	\N
4541	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	3816	\N
4542	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	3816	\N
4543	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	3816	\N
4544	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	3816	\N
4545	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	3816	\N
4546	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	3816	\N
4547	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	3816	\N
4548	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	3816	\N
4549	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	3816	\N
4550	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	3816	\N
4551	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	3816	\N
4552	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	3816	\N
4553	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	3816	\N
4554	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	3816	\N
4555	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	3816	\N
4556	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	3816	\N
4557	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	3816	\N
4558	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	3816	\N
4559	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	3816	\N
4560	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	3816	\N
4561	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	3816	\N
4562	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	3816	\N
4563	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	3816	\N
4564	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	3816	\N
4565	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	3816	\N
4566	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	3816	\N
4567	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	3816	\N
4568	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	3816	\N
4569	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	3816	\N
4570	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	3816	\N
4571	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	3816	\N
4572	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	3816	\N
4573	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	3816	\N
4574	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	3816	\N
4575	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	3816	\N
4576	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	3816	\N
4577	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	3816	\N
4578	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	3816	\N
4579	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	3816	\N
4580	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	3816	\N
4581	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	3816	\N
4582	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	3816	\N
4583	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	3816	\N
4584	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	3816	\N
4585	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	3816	\N
4586	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	3816	\N
4587	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	3816	\N
4588	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	3816	\N
4589	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	3816	\N
4590	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	3816	\N
4591	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	3816	\N
4592	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	3816	\N
4593	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	3816	\N
4594	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	3816	\N
4595	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	3816	\N
4596	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	3816	\N
4597	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	3816	\N
4598	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	3816	\N
4599	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	3816	\N
4600	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	3816	\N
4601	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	3816	\N
4602	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	3816	\N
4603	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	3816	\N
4604	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	3816	\N
4605	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	3816	\N
4606	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	3816	\N
4607	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	3816	\N
4608	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	3816	\N
4609	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	3816	\N
4610	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	3816	\N
4611	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	3816	\N
4612	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	3816	\N
4613	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	3816	\N
4614	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	3816	\N
4615	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	3816	\N
4616	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	3816	\N
4617	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	3816	\N
4618	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	3816	\N
4619	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	3816	\N
4620	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	3816	\N
4621	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	3816	\N
4622	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	3816	\N
4623	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	3816	\N
4624	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	3816	\N
4625	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	3816	\N
4626	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	3816	\N
4627	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	3816	\N
4628	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	3816	\N
4629	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	3816	\N
4630	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	3816	\N
4631	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	3816	\N
4632	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	3816	\N
4633	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	3816	\N
4634	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	3816	\N
4635	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	3816	\N
4636	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	410	3816	\N
4637	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	3816	\N
4638	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	3816	\N
4639	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	413	3816	\N
4640	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	414	3816	\N
4641	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	3816	\N
4642	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	3816	\N
4643	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	3816	\N
4644	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	3816	\N
4645	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	3817	\N
4646	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	3817	\N
4647	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	3817	\N
4648	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	3817	\N
4649	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	3817	\N
4650	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	3817	\N
4651	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	3817	\N
4652	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	3817	\N
4653	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	3817	\N
4654	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	3817	\N
4655	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	3817	\N
4656	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	3817	\N
4657	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	3817	\N
4658	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	3817	\N
4659	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	3817	\N
4660	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	3817	\N
4661	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	3817	\N
4662	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	3817	\N
4663	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	3817	\N
4664	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	3817	\N
4665	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	3817	\N
4666	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	3817	\N
4667	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	3817	\N
4668	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	3817	\N
4669	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	3817	\N
4670	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	3817	\N
4671	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	3817	\N
4672	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	3817	\N
4673	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	3817	\N
4674	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	3817	\N
4675	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	3817	\N
4676	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	3817	\N
4677	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	3817	\N
4678	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	3817	\N
4679	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	3817	\N
4680	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	3817	\N
4681	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	3817	\N
4682	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	3817	\N
4683	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	3817	\N
4684	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	3817	\N
4685	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	3817	\N
4686	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	3817	\N
4687	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	3817	\N
4688	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	3817	\N
4689	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	3817	\N
4690	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	3817	\N
4691	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	3817	\N
4692	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	3817	\N
4693	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	3817	\N
4694	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	3817	\N
4695	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	3817	\N
4696	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	3817	\N
4697	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	3817	\N
4698	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	3817	\N
4699	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	3817	\N
4700	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	3817	\N
4701	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	3817	\N
4702	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	3817	\N
4703	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	3817	\N
4704	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	3817	\N
4705	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	3817	\N
4706	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	3817	\N
4707	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	3817	\N
4708	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	3817	\N
4709	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	3817	\N
4710	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	3817	\N
4711	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	3817	\N
4712	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	3817	\N
4713	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	3817	\N
4714	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	3817	\N
4715	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	3817	\N
4716	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	3817	\N
4717	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	3817	\N
4718	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	3817	\N
4719	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	3817	\N
4720	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	3817	\N
4721	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	3817	\N
4722	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	3817	\N
4723	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	3817	\N
4724	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	3817	\N
4725	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	3817	\N
4726	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	3817	\N
4727	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	3817	\N
4728	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	3817	\N
4729	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	3817	\N
4730	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	3817	\N
4731	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	3817	\N
4732	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	3817	\N
4733	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	3817	\N
4734	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	3817	\N
4735	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	3817	\N
4736	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	3817	\N
4737	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	3817	\N
4738	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	3817	\N
4739	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	3817	\N
4740	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	3817	\N
4741	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	3817	\N
4742	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	3817	\N
4743	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	3817	\N
4744	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	3817	\N
4745	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	3817	\N
4746	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	3817	\N
4747	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	3817	\N
4748	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	3817	\N
4749	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	3817	\N
4750	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	3817	\N
4751	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	3817	\N
4752	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	3817	\N
4753	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	3817	\N
4754	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	3817	\N
4755	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	3817	\N
4756	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	3817	\N
4757	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	3817	\N
4758	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	3817	\N
4759	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	3817	\N
4760	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	3817	\N
4761	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	3817	\N
4762	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	3817	\N
4763	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	3817	\N
4764	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	3817	\N
4765	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	3817	\N
4766	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	3817	\N
4767	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	3817	\N
4768	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	3817	\N
4769	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	3817	\N
4770	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	3817	\N
4771	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	3817	\N
4772	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	3817	\N
4773	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	3817	\N
4774	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	3817	\N
4775	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	3817	\N
4776	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	3817	\N
4777	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	3817	\N
4778	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	3817	\N
4779	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	3817	\N
4780	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	3817	\N
4781	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	3817	\N
4782	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	3817	\N
4783	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	3817	\N
4784	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	3817	\N
4785	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	3817	\N
4786	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	3817	\N
4787	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	3817	\N
4788	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	3817	\N
4789	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	3817	\N
4790	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	3817	\N
4791	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	3817	\N
4792	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	3817	\N
4793	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	3817	\N
4794	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	3817	\N
4795	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	3817	\N
4796	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	3817	\N
4797	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	3817	\N
4798	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	3817	\N
4799	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	3817	\N
4800	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	3817	\N
4801	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	3817	\N
4802	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	3817	\N
4803	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	3817	\N
4804	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	3817	\N
4805	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	3817	\N
4806	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	3817	\N
4807	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	3817	\N
4808	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	3817	\N
4809	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	3817	\N
4810	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	3817	\N
4811	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	3817	\N
4812	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	3817	\N
4813	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	3817	\N
4814	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	3817	\N
4815	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	3817	\N
4816	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	3817	\N
4817	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	3817	\N
4818	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	3817	\N
4819	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	3817	\N
4820	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	3817	\N
4821	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	3817	\N
4822	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	3817	\N
4823	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	3817	\N
4824	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	3817	\N
4825	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	3817	\N
4826	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	3817	\N
4827	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	3817	\N
4828	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	3817	\N
4829	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	3817	\N
4830	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	3817	\N
4831	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	3817	\N
4832	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	3817	\N
4833	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	3817	\N
4834	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	3817	\N
4835	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	3817	\N
4836	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	3817	\N
4837	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	3817	\N
4838	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	3817	\N
4839	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	3817	\N
4840	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	3817	\N
4841	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	3817	\N
4842	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	3817	\N
4843	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	3817	\N
4844	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	3817	\N
4845	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	3817	\N
4846	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	3817	\N
4847	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	3817	\N
4848	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	3817	\N
4849	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	3817	\N
4850	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	3817	\N
4851	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	3817	\N
4852	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	3817	\N
4853	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	3817	\N
4854	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	3817	\N
4855	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	3817	\N
4856	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	3817	\N
4857	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	3817	\N
4858	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	3817	\N
4859	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	3817	\N
4860	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	3817	\N
4861	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	3817	\N
4862	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	3817	\N
4863	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	3817	\N
4864	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	3817	\N
4865	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	3817	\N
4866	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	3817	\N
4867	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	3817	\N
4868	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	3817	\N
4869	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	3817	\N
4870	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	3817	\N
4871	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	3817	\N
4872	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	3817	\N
4873	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	3817	\N
4874	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	3817	\N
4875	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	3817	\N
4876	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	3817	\N
4877	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	3817	\N
4878	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	3817	\N
4879	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	3817	\N
4880	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	3817	\N
4881	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	3817	\N
4882	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	3817	\N
4883	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	3817	\N
4884	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	3817	\N
4885	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	3817	\N
4886	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	3817	\N
4887	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	3817	\N
4888	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	3817	\N
4889	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	3817	\N
4890	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	3817	\N
4891	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	3817	\N
4892	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	3817	\N
4893	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	3817	\N
4894	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	3817	\N
4895	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	3817	\N
4896	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	3817	\N
4897	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	3817	\N
4898	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	3817	\N
4899	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	3817	\N
4900	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	3817	\N
4901	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	3817	\N
4902	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	3817	\N
4903	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	3817	\N
4904	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	3817	\N
4905	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	3817	\N
4906	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	3817	\N
4907	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	3817	\N
4908	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	3817	\N
4909	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	3817	\N
4910	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	3817	\N
4911	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	3817	\N
4912	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	3817	\N
4913	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	3817	\N
4914	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	3817	\N
4915	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	3817	\N
4916	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	3817	\N
4917	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	3817	\N
4918	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	3817	\N
4919	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	3817	\N
4920	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	3817	\N
4921	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	3817	\N
4922	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	3817	\N
4923	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	3817	\N
4924	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	3817	\N
4925	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	3817	\N
4926	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	3817	\N
4927	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	3817	\N
4928	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	3817	\N
4929	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	3817	\N
4930	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	3817	\N
4931	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	3817	\N
4932	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	3817	\N
4933	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	3817	\N
4934	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	3817	\N
4935	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	3817	\N
4936	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	3817	\N
4937	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	3817	\N
4938	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	3817	\N
4939	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	3817	\N
4940	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	3817	\N
4941	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	3817	\N
4942	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	3817	\N
4943	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	3817	\N
4944	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	3817	\N
4945	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	3817	\N
4946	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	3817	\N
4947	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	3817	\N
4948	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	3817	\N
4949	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	3817	\N
4950	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	3817	\N
4951	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	3817	\N
4952	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	3817	\N
4953	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	3817	\N
4954	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	3817	\N
4955	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	3817	\N
4956	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	3817	\N
4957	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	3817	\N
4958	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	3817	\N
4959	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	3817	\N
4960	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	3817	\N
4961	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	3817	\N
4962	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	3817	\N
4963	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	3817	\N
4964	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	3817	\N
4965	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	3817	\N
4966	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	3817	\N
4967	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	3817	\N
4968	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	3817	\N
4969	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	3817	\N
4970	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	3817	\N
4971	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	3817	\N
4972	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	3817	\N
4973	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	3817	\N
4974	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	3817	\N
4975	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	3817	\N
4976	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	3817	\N
4977	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	3817	\N
4978	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	3817	\N
4979	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	3817	\N
4980	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	3817	\N
4981	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	3817	\N
4982	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	3817	\N
4983	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	3817	\N
4984	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	3817	\N
4985	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	3817	\N
4986	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	3817	\N
4987	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	3817	\N
4988	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	3817	\N
4989	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	3817	\N
4990	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	3817	\N
4991	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	3817	\N
4992	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	3817	\N
4993	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	3817	\N
4994	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	3817	\N
4995	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	3817	\N
4996	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	3817	\N
4997	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	3817	\N
4998	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	3817	\N
4999	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	3817	\N
5000	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	3817	\N
5001	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	3817	\N
5002	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	3817	\N
5003	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	3817	\N
5004	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	3817	\N
5005	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	3817	\N
5006	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	3817	\N
5007	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	3817	\N
5008	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	3817	\N
5009	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	3817	\N
5010	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	3817	\N
5011	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	3817	\N
5012	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	3817	\N
5013	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	3817	\N
5014	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	3817	\N
5015	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	3817	\N
5016	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	3817	\N
5017	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	3817	\N
5018	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	3817	\N
5019	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	3817	\N
5020	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	3817	\N
5021	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	3817	\N
5022	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	3817	\N
5023	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	3817	\N
5024	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	3817	\N
5025	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	3817	\N
5026	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	3817	\N
5027	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	3817	\N
5028	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	3817	\N
5029	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	3817	\N
5030	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	3817	\N
5031	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	3817	\N
5032	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	3817	\N
5033	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	3817	\N
5034	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	3817	\N
5035	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	3817	\N
5036	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	3817	\N
5037	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	3817	\N
5038	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	3817	\N
5039	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	3817	\N
5040	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	3817	\N
5041	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	3817	\N
5042	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	3817	\N
5043	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	3817	\N
5044	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	3817	\N
5045	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	3817	\N
5046	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	3817	\N
5047	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	3817	\N
5048	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	3817	\N
5049	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	3817	\N
5050	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	3817	\N
5051	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	3817	\N
5052	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	3817	\N
5053	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	3817	\N
5054	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	3817	\N
5055	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	3817	\N
5056	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	3817	\N
5057	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	3817	\N
5058	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	3817	\N
5059	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	3817	\N
5060	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	3817	\N
5061	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	3817	\N
5062	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	3817	\N
5063	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	3817	\N
5064	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	3817	\N
5065	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	3817	\N
5066	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	3817	\N
5067	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	3817	\N
5068	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	3817	\N
5069	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	3817	\N
5070	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	3817	\N
5071	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	3817	\N
5072	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	3817	\N
5073	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	3817	\N
5074	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	3817	\N
5075	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	3817	\N
5076	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	3817	\N
5077	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	3817	\N
5078	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	3817	\N
5079	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	3817	\N
5080	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	3817	\N
5081	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	3817	\N
5082	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	3817	\N
5083	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	3817	\N
5084	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	3817	\N
5085	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	3817	\N
5086	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	3817	\N
5087	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	3817	\N
5088	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	3817	\N
5089	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	3817	\N
5090	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	3817	\N
5091	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	3817	\N
5092	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	3817	\N
5093	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	3817	\N
5094	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	3817	\N
5095	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	3817	\N
5096	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	3817	\N
5097	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	3817	\N
5098	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	3817	\N
5099	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	3817	\N
5100	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	3817	\N
5101	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	3817	\N
5102	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	3817	\N
5103	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	3817	\N
5104	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	3817	\N
5105	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	3817	\N
5106	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	3817	\N
5107	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	3817	\N
5108	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	3817	\N
5109	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	3817	\N
5110	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	3817	\N
5111	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	3817	\N
5112	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	3817	\N
5113	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	3817	\N
5114	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	3817	\N
5115	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	3817	\N
5116	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	3817	\N
5117	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	3817	\N
5118	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	3817	\N
5119	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	3817	\N
5120	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	3817	\N
5121	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	3817	\N
5122	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	3817	\N
5123	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	3817	\N
5124	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	3817	\N
5125	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	3817	\N
5126	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	3817	\N
5127	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	3817	\N
5128	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	3817	\N
5129	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	3817	\N
5130	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	3817	\N
5131	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	3817	\N
5132	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	3817	\N
5133	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	3817	\N
5134	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	3817	\N
5135	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	3817	\N
5136	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	3817	\N
5137	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	3817	\N
5138	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	3817	\N
5139	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	3817	\N
5140	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	3817	\N
5141	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	3817	\N
5142	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	3817	\N
5143	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	3817	\N
5144	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	3817	\N
5145	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	3817	\N
5146	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	3817	\N
5147	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	3817	\N
5148	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	3817	\N
5149	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	3817	\N
5150	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	3817	\N
5151	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	3817	\N
5152	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	3817	\N
5153	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	3817	\N
5154	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	3817	\N
5155	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	3817	\N
5156	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	3817	\N
5157	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	3817	\N
5158	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	3817	\N
5159	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	3817	\N
5160	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	3817	\N
5161	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	3817	\N
5162	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	3817	\N
5163	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	3817	\N
5164	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	3817	\N
5165	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	3817	\N
5166	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	3817	\N
5167	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	3817	\N
5168	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	3817	\N
5169	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	3817	\N
5170	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	3817	\N
5171	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	3817	\N
5172	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	3817	\N
5173	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	3817	\N
5174	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	3817	\N
5175	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	3817	\N
5176	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	3817	\N
5177	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	3817	\N
5178	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	3817	\N
5179	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	3817	\N
5180	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	3817	\N
5181	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	3817	\N
5182	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	3817	\N
5183	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	3817	\N
5184	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	3817	\N
5185	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	3817	\N
5186	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	3817	\N
5187	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	3817	\N
5188	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	3817	\N
5189	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	3817	\N
5190	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	3817	\N
5191	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	3817	\N
5192	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	3817	\N
5193	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	3817	\N
5194	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	3817	\N
5195	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	3817	\N
5196	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	3817	\N
5197	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	3817	\N
5198	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	3817	\N
5199	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	3817	\N
5200	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	3817	\N
5201	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	3817	\N
5202	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	3817	\N
5203	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	3817	\N
5204	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	3817	\N
5205	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	3817	\N
5206	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	3817	\N
5207	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	3817	\N
5208	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	3817	\N
5209	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	3817	\N
5210	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	3817	\N
5211	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	3817	\N
5212	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	3817	\N
5213	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	3817	\N
5214	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	3817	\N
5215	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	3817	\N
5216	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	3817	\N
5217	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	3817	\N
5218	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	3817	\N
5219	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	3817	\N
5220	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	3817	\N
5221	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	3817	\N
5222	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	3817	\N
5223	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	3817	\N
5224	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	3817	\N
5225	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	3817	\N
5226	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	3817	\N
5227	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	3817	\N
5228	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	3817	\N
5229	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	3817	\N
5230	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	3817	\N
5231	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	3817	\N
5232	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	3817	\N
5233	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	3817	\N
5234	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	3817	\N
5235	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	3817	\N
5236	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	3817	\N
5237	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	3817	\N
5238	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	3817	\N
5239	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	3817	\N
5240	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	3817	\N
5241	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	3817	\N
5242	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	3817	\N
5243	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	3817	\N
5244	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	3817	\N
5245	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	3817	\N
5246	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	3817	\N
5247	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	3817	\N
5248	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	3817	\N
5249	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	3817	\N
5250	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	3817	\N
5251	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	3817	\N
5252	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	3817	\N
5253	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	3817	\N
5254	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	3817	\N
5255	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	3817	\N
5256	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	3817	\N
5257	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	3817	\N
5258	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	3817	\N
5259	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	3817	\N
5260	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	3817	\N
5261	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	3817	\N
5262	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	3817	\N
5263	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	3817	\N
5264	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	3817	\N
5265	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	3817	\N
5266	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	3817	\N
5267	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	3817	\N
5268	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	3817	\N
5269	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	3817	\N
5270	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	3817	\N
5271	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	3817	\N
5272	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	3817	\N
5273	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	3817	\N
5274	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	3817	\N
5275	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	3817	\N
5276	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	3817	\N
5277	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	3817	\N
5278	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	3817	\N
5279	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	3817	\N
5280	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	3817	\N
5281	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	3817	\N
5282	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	3817	\N
5283	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	3817	\N
5284	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	3817	\N
5285	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	3817	\N
5286	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	3817	\N
5287	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	3817	\N
5288	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	3817	\N
5289	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	3817	\N
5290	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	3817	\N
5291	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	3817	\N
5292	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	3817	\N
5293	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	3817	\N
5294	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	3817	\N
5295	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	3817	\N
5296	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	3817	\N
5297	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	3817	\N
5298	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	3817	\N
5299	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	3817	\N
5300	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	3817	\N
5301	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	3817	\N
5302	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	3817	\N
5303	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	3817	\N
5304	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	3817	\N
5305	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	3817	\N
5306	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	3817	\N
5307	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	3817	\N
5308	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	3817	\N
5309	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	3817	\N
5310	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	3817	\N
5311	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	3817	\N
5312	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	3817	\N
5313	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	3817	\N
5314	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	3817	\N
5315	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	3817	\N
5316	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	3817	\N
5317	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	3817	\N
5318	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	3817	\N
5319	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	3817	\N
5320	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	3817	\N
5321	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	3817	\N
5322	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	3817	\N
5323	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	3817	\N
5324	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	3817	\N
5325	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	3817	\N
5326	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	3817	\N
5327	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	3817	\N
5328	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	3817	\N
5329	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	3817	\N
5330	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	3817	\N
5331	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	3817	\N
5332	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	3817	\N
5333	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	3817	\N
5334	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	3817	\N
5335	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	3817	\N
5336	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	3817	\N
5337	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	3817	\N
5338	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	3817	\N
5339	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	3817	\N
5340	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	3817	\N
5341	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	3817	\N
5342	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	3817	\N
5343	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	3817	\N
5344	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	3817	\N
5345	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	3817	\N
5346	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	3817	\N
5347	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	3817	\N
5348	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	3817	\N
5349	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	3817	\N
5350	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	3817	\N
5351	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	3817	\N
5352	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	3817	\N
5353	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	3817	\N
5354	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	3817	\N
5355	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	3817	\N
5356	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	3817	\N
5357	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	3817	\N
5358	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	3817	\N
5359	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	3817	\N
5360	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	3817	\N
5361	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	3817	\N
5362	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	3817	\N
5363	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	3817	\N
5364	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	3817	\N
5365	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	3817	\N
5366	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	3817	\N
5367	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	3817	\N
5368	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	3817	\N
5369	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	3817	\N
5370	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	3817	\N
5371	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	3817	\N
5372	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	3817	\N
5373	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	3817	\N
5374	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	3817	\N
5375	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	3817	\N
5376	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	3817	\N
5377	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	3817	\N
5378	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	3817	\N
5379	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	3817	\N
5380	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	3817	\N
5381	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	3817	\N
5382	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	3817	\N
5383	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	3817	\N
5384	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	3817	\N
5385	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	3817	\N
5386	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	3817	\N
5387	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	3817	\N
5388	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	3817	\N
5389	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	3817	\N
5390	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	3817	\N
5391	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	3817	\N
5392	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	3817	\N
5393	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	3817	\N
5394	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	3817	\N
5395	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	3817	\N
5396	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	3817	\N
5397	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	3817	\N
5398	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	3817	\N
5399	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	3817	\N
5400	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	3817	\N
5401	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	3817	\N
5402	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	3817	\N
5403	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	3817	\N
5404	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	3817	\N
5405	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	3817	\N
5406	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	3817	\N
5407	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	3817	\N
5408	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	3817	\N
5409	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	3817	\N
5410	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	410	3817	\N
5411	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	3817	\N
5412	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	3817	\N
5413	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	413	3817	\N
5414	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	414	3817	\N
5415	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	3817	\N
5416	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	3817	\N
5417	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	3817	\N
5418	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	3817	\N
5419	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	3818	\N
5420	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	3818	\N
5421	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	3818	\N
5422	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	3818	\N
5423	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	3818	\N
5424	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	3818	\N
5425	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	3818	\N
5426	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	3818	\N
5427	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	3818	\N
5428	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	3818	\N
5429	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	3818	\N
5430	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	3818	\N
5431	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	3818	\N
5432	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	3818	\N
5433	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	3818	\N
5434	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	3818	\N
5435	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	3818	\N
5436	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	3818	\N
5437	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	3818	\N
5438	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	3818	\N
5439	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	3818	\N
5440	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	3818	\N
5441	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	3818	\N
5442	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	3818	\N
5443	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	3818	\N
5444	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	3818	\N
5445	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	3818	\N
5446	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	3818	\N
5447	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	3818	\N
5448	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	3818	\N
5449	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	3818	\N
5450	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	3818	\N
5451	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	3818	\N
5452	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	3818	\N
5453	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	3818	\N
5454	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	3818	\N
5455	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	3818	\N
5456	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	3818	\N
5457	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	3818	\N
5458	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	3818	\N
5459	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	3818	\N
5460	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	3818	\N
5461	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	3818	\N
5462	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	3818	\N
5463	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	3818	\N
5464	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	3818	\N
5465	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	3818	\N
5466	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	3818	\N
5467	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	3818	\N
5468	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	3818	\N
5469	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	3818	\N
5470	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	3818	\N
5471	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	3818	\N
5472	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	3818	\N
5473	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	3818	\N
5474	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	3818	\N
5475	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	3818	\N
5476	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	3818	\N
5477	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	3818	\N
5478	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	3818	\N
5479	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	3818	\N
5480	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	3818	\N
5481	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	3818	\N
5482	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	3818	\N
5483	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	3818	\N
5484	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	3818	\N
5485	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	3818	\N
5486	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	3818	\N
5487	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	3818	\N
5488	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	3818	\N
5489	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	3818	\N
5490	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	3818	\N
5491	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	3818	\N
5492	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	3818	\N
5493	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	3818	\N
5494	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	3818	\N
5495	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	3818	\N
5496	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	3818	\N
5497	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	3818	\N
5498	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	3818	\N
5499	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	3818	\N
5500	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	3818	\N
5501	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	3818	\N
5502	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	3818	\N
5503	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	3818	\N
5504	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	3818	\N
5505	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	3818	\N
5506	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	3818	\N
5507	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	3818	\N
5508	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	3818	\N
5509	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	3818	\N
5510	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	3818	\N
5511	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	3818	\N
5512	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	3818	\N
5513	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	3818	\N
5514	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	3818	\N
5515	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	3818	\N
5516	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	3818	\N
5517	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	3818	\N
5518	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	3818	\N
5519	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	3818	\N
5520	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	3818	\N
5521	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	3818	\N
5522	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	3818	\N
5523	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	3818	\N
5524	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	3818	\N
5525	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	3818	\N
5526	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	3818	\N
5527	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	3818	\N
5528	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	3818	\N
5529	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	3818	\N
5530	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	3818	\N
5531	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	3818	\N
5532	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	3818	\N
5533	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	3818	\N
5534	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	3818	\N
5535	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	3818	\N
5536	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	3818	\N
5537	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	3818	\N
5538	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	3818	\N
5539	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	3818	\N
5540	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	3818	\N
5541	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	3818	\N
5542	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	3818	\N
5543	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	3818	\N
5544	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	3818	\N
5545	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	3818	\N
5546	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	3818	\N
5547	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	3818	\N
5548	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	3818	\N
5549	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	3818	\N
5550	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	3818	\N
5551	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	3818	\N
5552	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	3818	\N
5553	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	3818	\N
5554	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	3818	\N
5555	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	3818	\N
5556	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	3818	\N
5557	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	3818	\N
5558	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	3818	\N
5559	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	3818	\N
5560	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	3818	\N
5561	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	3818	\N
5562	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	3818	\N
5563	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	3818	\N
5564	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	3818	\N
5565	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	3818	\N
5566	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	3818	\N
5567	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	3818	\N
5568	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	3818	\N
5569	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	3818	\N
5570	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	3818	\N
5571	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	3818	\N
5572	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	3818	\N
5573	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	3818	\N
5574	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	3818	\N
5575	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	3818	\N
5576	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	3818	\N
5577	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	3818	\N
5578	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	3818	\N
5579	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	3818	\N
5580	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	3818	\N
5581	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	3818	\N
5582	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	3818	\N
5583	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	3818	\N
5584	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	3818	\N
5585	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	3818	\N
5586	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	3818	\N
5587	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	3818	\N
5588	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	3818	\N
5589	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	3818	\N
5590	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	3818	\N
5591	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	3818	\N
5592	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	3818	\N
5593	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	3818	\N
5594	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	3818	\N
5595	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	3818	\N
5596	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	3818	\N
5597	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	3818	\N
5598	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	3818	\N
5599	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	3818	\N
5600	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	3818	\N
5601	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	3818	\N
5602	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	3818	\N
5603	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	3818	\N
5604	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	3818	\N
5605	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	3818	\N
5606	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	3818	\N
5607	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	3818	\N
5608	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	3818	\N
5609	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	3818	\N
5610	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	3818	\N
5611	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	3818	\N
5612	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	3818	\N
5613	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	3818	\N
5614	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	3818	\N
5615	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	3818	\N
5616	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	3818	\N
5617	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	3818	\N
5618	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	3818	\N
5619	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	3818	\N
5620	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	3818	\N
5621	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	3818	\N
5622	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	3818	\N
5623	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	3818	\N
5624	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	3818	\N
5625	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	3818	\N
5626	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	3818	\N
5627	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	3818	\N
5628	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	3818	\N
5629	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	3818	\N
5630	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	3818	\N
5631	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	3818	\N
5632	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	3818	\N
5633	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	3818	\N
5634	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	3818	\N
5635	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	3818	\N
5636	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	3818	\N
5637	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	3818	\N
5638	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	3818	\N
5639	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	3818	\N
5640	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	3818	\N
5641	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	3818	\N
5642	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	3818	\N
5643	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	3818	\N
5644	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	3818	\N
5645	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	3818	\N
5646	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	3818	\N
5647	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	3818	\N
5648	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	3818	\N
5649	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	3818	\N
5650	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	3818	\N
5651	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	3818	\N
5652	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	3818	\N
5653	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	3818	\N
5654	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	3818	\N
5655	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	3818	\N
5656	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	3818	\N
5657	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	3818	\N
5658	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	3818	\N
5659	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	3818	\N
5660	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	3818	\N
5661	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	3818	\N
5662	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	3818	\N
5663	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	3818	\N
5664	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	3818	\N
5665	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	3818	\N
5666	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	3818	\N
5667	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	3818	\N
5668	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	3818	\N
5669	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	3818	\N
5670	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	3818	\N
5671	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	3818	\N
5672	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	3818	\N
5673	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	3818	\N
5674	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	3818	\N
5675	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	3818	\N
5676	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	3818	\N
5677	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	3818	\N
5678	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	3818	\N
5679	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	3818	\N
5680	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	3818	\N
5681	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	3818	\N
5682	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	3818	\N
5683	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	3818	\N
5684	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	3818	\N
5685	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	3818	\N
5686	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	3818	\N
5687	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	3818	\N
5688	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	3818	\N
5689	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	3818	\N
5690	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	3818	\N
5691	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	3818	\N
5692	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	3818	\N
5693	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	3818	\N
5694	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	3818	\N
5695	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	3818	\N
5696	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	3818	\N
5697	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	3818	\N
5698	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	3818	\N
5699	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	3818	\N
5700	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	3818	\N
5701	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	3818	\N
5702	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	3818	\N
5703	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	3818	\N
5704	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	3818	\N
5705	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	3818	\N
5706	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	3818	\N
5707	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	3818	\N
5708	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	3818	\N
5709	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	3818	\N
5710	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	3818	\N
5711	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	3818	\N
5712	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	3818	\N
5713	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	3818	\N
5714	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	3818	\N
5715	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	3818	\N
5716	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	3818	\N
5717	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	3818	\N
5718	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	3818	\N
5719	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	3818	\N
5720	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	3818	\N
5721	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	3818	\N
5722	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	3818	\N
5723	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	3818	\N
5724	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	3818	\N
5725	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	3818	\N
5726	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	3818	\N
5727	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	3818	\N
5728	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	3818	\N
5729	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	3818	\N
5730	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	3818	\N
5731	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	3818	\N
5732	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	3818	\N
5733	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	3818	\N
5734	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	3818	\N
5735	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	3818	\N
5736	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	3818	\N
5737	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	3818	\N
5738	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	3818	\N
5739	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	3818	\N
5740	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	3818	\N
5741	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	3818	\N
5742	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	3818	\N
5743	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	3818	\N
5744	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	3818	\N
5745	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	3818	\N
5746	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	3818	\N
5747	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	3818	\N
5748	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	3818	\N
5749	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	3818	\N
5750	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	3818	\N
5751	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	3818	\N
5752	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	3818	\N
5753	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	3818	\N
5754	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	3818	\N
5755	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	3818	\N
5756	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	3818	\N
5757	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	3818	\N
5758	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	3818	\N
5759	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	3818	\N
5760	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	3818	\N
5761	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	3818	\N
5762	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	3818	\N
5763	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	3818	\N
5764	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	3818	\N
5765	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	3818	\N
5766	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	3818	\N
5767	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	3818	\N
5768	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	3818	\N
5769	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	3818	\N
5770	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	3818	\N
5771	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	3818	\N
5772	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	3818	\N
5773	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	3818	\N
5774	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	3818	\N
5775	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	3818	\N
5776	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	3818	\N
5777	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	3818	\N
5778	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	3818	\N
5779	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	3818	\N
5780	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	3818	\N
5781	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	3818	\N
5782	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	3818	\N
5783	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	3818	\N
5784	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	3818	\N
5785	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	3818	\N
5786	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	3818	\N
5787	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	3818	\N
5788	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	3818	\N
5789	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	3818	\N
5790	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	3818	\N
5791	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	3818	\N
5792	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	3818	\N
5793	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	3818	\N
5794	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	3818	\N
5795	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	3818	\N
5796	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	3818	\N
5797	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	3818	\N
5798	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	3818	\N
5799	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	3818	\N
5800	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	3818	\N
5801	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	3818	\N
5802	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	3818	\N
5803	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	3818	\N
5804	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	3818	\N
5805	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	3818	\N
5806	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	3818	\N
5807	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	3818	\N
5808	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	3818	\N
5809	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	3818	\N
5810	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	3818	\N
5811	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	3818	\N
5812	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	3818	\N
5813	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	3818	\N
5814	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	3818	\N
5815	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	3818	\N
5816	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	3818	\N
5817	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	3818	\N
5818	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	3818	\N
5819	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	3818	\N
5820	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	3818	\N
5821	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	3818	\N
5822	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	3818	\N
5823	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	3818	\N
5824	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	3818	\N
5825	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	3818	\N
5826	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	3818	\N
5827	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	3818	\N
5828	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	3818	\N
5829	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	3818	\N
5830	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	3818	\N
5831	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	3818	\N
5832	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	3818	\N
5833	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	3818	\N
5834	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	3818	\N
5835	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	3818	\N
5836	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	3818	\N
5837	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	3818	\N
5838	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	3818	\N
5839	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	3818	\N
5840	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	3818	\N
5841	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	3818	\N
5842	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	3818	\N
5843	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	3818	\N
5844	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	3818	\N
5845	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	3818	\N
5846	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	3818	\N
5847	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	3818	\N
5848	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	3818	\N
5849	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	3818	\N
5850	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	3818	\N
5851	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	3818	\N
5852	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	3818	\N
5853	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	3818	\N
5854	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	3818	\N
5855	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	3818	\N
5856	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	3818	\N
5857	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	3818	\N
5858	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	3818	\N
5859	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	3818	\N
5860	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	3818	\N
5861	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	3818	\N
5862	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	3818	\N
5863	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	3818	\N
5864	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	3818	\N
5865	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	3818	\N
5866	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	3818	\N
5867	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	3818	\N
5868	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	3818	\N
5869	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	3818	\N
5870	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	3818	\N
5871	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	3818	\N
5872	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	3818	\N
5873	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	3818	\N
5874	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	3818	\N
5875	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	3818	\N
5876	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	3818	\N
5877	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	3818	\N
5878	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	3818	\N
5879	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	3818	\N
5880	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	3818	\N
5881	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	3818	\N
5882	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	3818	\N
5883	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	3818	\N
5884	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	3818	\N
5885	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	3818	\N
5886	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	3818	\N
5887	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	3818	\N
5888	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	3818	\N
5889	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	3818	\N
5890	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	3818	\N
5891	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	3818	\N
5892	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	3818	\N
5893	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	3818	\N
5894	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	3818	\N
5895	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	3818	\N
5896	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	3818	\N
5897	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	3818	\N
5898	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	3818	\N
5899	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	3818	\N
5900	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	3818	\N
5901	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	3818	\N
5902	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	3818	\N
5903	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	3818	\N
5904	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	3818	\N
5905	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	3818	\N
5906	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	3818	\N
5907	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	3818	\N
5908	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	3818	\N
5909	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	3818	\N
5910	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	3818	\N
5911	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	3818	\N
5912	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	3818	\N
5913	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	3818	\N
5914	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	3818	\N
5915	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	3818	\N
5916	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	3818	\N
5917	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	3818	\N
5918	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	3818	\N
5919	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	3818	\N
5920	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	3818	\N
5921	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	3818	\N
5922	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	3818	\N
5923	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	3818	\N
5924	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	3818	\N
5925	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	3818	\N
5926	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	3818	\N
5927	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	3818	\N
5928	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	3818	\N
5929	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	3818	\N
5930	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	3818	\N
5931	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	3818	\N
5932	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	3818	\N
5933	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	3818	\N
5934	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	3818	\N
5935	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	3818	\N
5936	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	3818	\N
5937	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	3818	\N
5938	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	3818	\N
5939	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	3818	\N
5940	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	3818	\N
5941	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	3818	\N
5942	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	3818	\N
5943	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	3818	\N
5944	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	3818	\N
5945	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	3818	\N
5946	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	3818	\N
5947	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	3818	\N
5948	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	3818	\N
5949	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	3818	\N
5950	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	3818	\N
5951	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	3818	\N
5952	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	3818	\N
5953	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	3818	\N
5954	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	3818	\N
5955	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	3818	\N
5956	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	3818	\N
5957	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	3818	\N
5958	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	3818	\N
5959	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	3818	\N
5960	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	3818	\N
5961	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	3818	\N
5962	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	3818	\N
5963	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	3818	\N
5964	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	3818	\N
5965	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	3818	\N
5966	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	3818	\N
5967	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	3818	\N
5968	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	3818	\N
5969	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	3818	\N
5970	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	3818	\N
5971	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	3818	\N
5972	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	3818	\N
5973	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	3818	\N
5974	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	3818	\N
5975	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	3818	\N
5976	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	3818	\N
5977	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	3818	\N
5978	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	3818	\N
5979	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	3818	\N
5980	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	3818	\N
5981	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	3818	\N
5982	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	3818	\N
5983	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	3818	\N
5984	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	3818	\N
5985	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	3818	\N
5986	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	3818	\N
5987	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	3818	\N
5988	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	3818	\N
5989	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	3818	\N
5990	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	3818	\N
5991	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	3818	\N
5992	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	3818	\N
5993	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	3818	\N
5994	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	3818	\N
5995	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	3818	\N
5996	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	3818	\N
5997	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	3818	\N
5998	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	3818	\N
5999	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	3818	\N
6000	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	3818	\N
6001	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	3818	\N
6002	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	3818	\N
6003	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	3818	\N
6004	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	3818	\N
6005	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	3818	\N
6006	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	3818	\N
6007	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	3818	\N
6008	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	3818	\N
6009	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	3818	\N
6010	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	3818	\N
6011	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	3818	\N
6012	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	3818	\N
6013	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	3818	\N
6014	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	3818	\N
6015	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	3818	\N
6016	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	3818	\N
6017	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	3818	\N
6018	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	3818	\N
6019	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	3818	\N
6020	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	3818	\N
6021	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	3818	\N
6022	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	3818	\N
6023	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	3818	\N
6024	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	3818	\N
6025	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	3818	\N
6026	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	3818	\N
6027	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	3818	\N
6028	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	3818	\N
6029	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	3818	\N
6030	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	3818	\N
6031	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	3818	\N
6032	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	3818	\N
6033	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	3818	\N
6034	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	3818	\N
6035	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	3818	\N
6036	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	3818	\N
6037	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	3818	\N
6038	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	3818	\N
6039	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	3818	\N
6040	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	3818	\N
6041	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	3818	\N
6042	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	3818	\N
6043	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	3818	\N
6044	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	3818	\N
6045	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	3818	\N
6046	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	3818	\N
6047	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	3818	\N
6048	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	3818	\N
6049	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	3818	\N
6050	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	3818	\N
6051	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	3818	\N
6052	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	3818	\N
6053	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	3818	\N
6054	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	3818	\N
6055	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	3818	\N
6056	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	3818	\N
6057	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	3818	\N
6058	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	3818	\N
6059	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	3818	\N
6060	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	3818	\N
6061	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	3818	\N
6062	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	3818	\N
6063	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	3818	\N
6064	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	3818	\N
6065	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	3818	\N
6066	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	3818	\N
6067	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	3818	\N
6068	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	3818	\N
6069	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	3818	\N
6070	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	3818	\N
6071	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	3818	\N
6072	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	3818	\N
6073	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	3818	\N
6074	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	3818	\N
6075	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	3818	\N
6076	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	3818	\N
6077	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	3818	\N
6078	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	3818	\N
6079	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	3818	\N
6080	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	3818	\N
6081	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	3818	\N
6082	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	3818	\N
6083	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	3818	\N
6084	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	3818	\N
6085	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	3818	\N
6086	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	3818	\N
6087	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	3818	\N
6088	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	3818	\N
6089	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	3818	\N
6090	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	3818	\N
6091	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	3818	\N
6092	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	3818	\N
6093	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	3818	\N
6094	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	3818	\N
6095	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	3818	\N
6096	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	3818	\N
6097	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	3818	\N
6098	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	3818	\N
6099	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	3818	\N
6100	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	3818	\N
6101	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	3818	\N
6102	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	3818	\N
6103	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	3818	\N
6104	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	3818	\N
6105	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	3818	\N
6106	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	3818	\N
6107	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	3818	\N
6108	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	3818	\N
6109	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	3818	\N
6110	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	3818	\N
6111	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	3818	\N
6112	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	3818	\N
6113	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	3818	\N
6114	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	3818	\N
6115	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	3818	\N
6116	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	3818	\N
6117	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	3818	\N
6118	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	3818	\N
6119	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	3818	\N
6120	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	3818	\N
6121	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	3818	\N
6122	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	3818	\N
6123	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	3818	\N
6124	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	3818	\N
6125	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	3818	\N
6126	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	3818	\N
6127	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	3818	\N
6128	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	3818	\N
6129	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	3818	\N
6130	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	3818	\N
6131	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	3818	\N
6132	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	3818	\N
6133	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	3818	\N
6134	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	3818	\N
6135	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	3818	\N
6136	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	3818	\N
6137	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	3818	\N
6138	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	3818	\N
6139	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	3818	\N
6140	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	3818	\N
6141	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	3818	\N
6142	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	3818	\N
6143	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	3818	\N
6144	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	3818	\N
6145	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	3818	\N
6146	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	3818	\N
6147	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	3818	\N
6148	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	3818	\N
6149	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	3818	\N
6150	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	3818	\N
6151	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	3818	\N
6152	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	3818	\N
6153	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	3818	\N
6154	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	3818	\N
6155	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	3818	\N
6156	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	3818	\N
6157	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	3818	\N
6158	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	3818	\N
6159	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	3818	\N
6160	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	3818	\N
6161	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	3818	\N
6162	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	3818	\N
6163	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	3818	\N
6164	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	3818	\N
6165	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	3818	\N
6166	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	3818	\N
6167	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	3818	\N
6168	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	3818	\N
6169	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	3818	\N
6170	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	3818	\N
6171	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	3818	\N
6172	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	3818	\N
6173	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	3818	\N
6174	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	3818	\N
6175	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	3818	\N
6176	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	3818	\N
6177	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	3818	\N
6178	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	3818	\N
6179	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	3818	\N
6180	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	3818	\N
6181	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	3818	\N
6182	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	3818	\N
6183	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	3818	\N
6184	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	410	3818	\N
6185	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	3818	\N
6186	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	3818	\N
6187	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	413	3818	\N
6188	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	414	3818	\N
6189	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	3818	\N
6190	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	3818	\N
6191	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	3818	\N
6192	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	3818	\N
6967	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	3820	\N
6968	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	3820	\N
6969	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	3820	\N
6970	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	3820	\N
6971	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	3820	\N
6972	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	3820	\N
6973	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	3820	\N
6974	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	3820	\N
6975	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	3820	\N
6976	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	3820	\N
6977	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	3820	\N
6978	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	3820	\N
6979	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	3820	\N
6980	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	3820	\N
6981	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	3820	\N
6982	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	3820	\N
6983	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	3820	\N
6986	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	3820	\N
6987	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	3820	\N
6988	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	3820	\N
6989	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	3820	\N
6990	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	3820	\N
6991	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	3820	\N
6992	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	3820	\N
6993	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	3820	\N
6994	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	3820	\N
6995	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	3820	\N
6996	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	3820	\N
6997	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	3820	\N
6998	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	3820	\N
6999	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	3820	\N
7000	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	3820	\N
7001	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	3820	\N
7002	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	3820	\N
7003	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	3820	\N
7004	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	3820	\N
7005	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	3820	\N
7006	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	3820	\N
7007	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	3820	\N
7008	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	3820	\N
7009	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	3820	\N
7010	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	3820	\N
7011	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	3820	\N
7012	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	3820	\N
7013	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	3820	\N
7014	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	3820	\N
7015	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	3820	\N
7016	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	3820	\N
7017	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	3820	\N
7018	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	3820	\N
7019	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	3820	\N
7020	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	3820	\N
7021	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	3820	\N
7022	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	3820	\N
7023	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	3820	\N
7024	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	3820	\N
7025	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	3820	\N
7026	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	3820	\N
7027	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	3820	\N
7028	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	3820	\N
7029	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	3820	\N
7030	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	3820	\N
7031	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	3820	\N
7032	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	3820	\N
7033	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	3820	\N
7034	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	3820	\N
7035	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	3820	\N
7036	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	3820	\N
7037	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	3820	\N
7038	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	3820	\N
7039	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	3820	\N
7040	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	3820	\N
7041	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	3820	\N
7042	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	3820	\N
7043	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	3820	\N
7044	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	3820	\N
7045	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	3820	\N
7046	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	3820	\N
7047	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	3820	\N
7048	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	3820	\N
7049	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	3820	\N
7050	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	3820	\N
7051	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	3820	\N
7052	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	3820	\N
7053	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	3820	\N
7054	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	3820	\N
7055	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	3820	\N
7056	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	3820	\N
7057	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	3820	\N
7058	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	3820	\N
7059	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	3820	\N
7060	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	3820	\N
7061	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	3820	\N
7062	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	3820	\N
7063	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	3820	\N
7064	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	3820	\N
7065	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	3820	\N
7066	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	3820	\N
7067	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	3820	\N
7068	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	3820	\N
7069	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	3820	\N
7070	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	3820	\N
7071	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	3820	\N
7072	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	3820	\N
7073	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	3820	\N
7074	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	3820	\N
7075	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	3820	\N
7076	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	3820	\N
7077	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	3820	\N
7078	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	3820	\N
7079	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	3820	\N
7080	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	3820	\N
7081	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	3820	\N
7082	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	3820	\N
7083	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	3820	\N
7084	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	3820	\N
7085	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	3820	\N
7086	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	3820	\N
7087	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	3820	\N
7088	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	3820	\N
7089	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	3820	\N
7090	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	3820	\N
7091	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	3820	\N
7092	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	3820	\N
7093	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	3820	\N
7094	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	3820	\N
7095	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	3820	\N
7096	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	3820	\N
7097	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	3820	\N
7098	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	3820	\N
7099	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	3820	\N
7100	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	3820	\N
7101	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	3820	\N
7102	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	3820	\N
7103	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	3820	\N
7104	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	3820	\N
7105	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	3820	\N
7106	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	3820	\N
7107	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	3820	\N
7108	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	3820	\N
7109	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	3820	\N
7110	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	3820	\N
7111	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	3820	\N
7112	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	3820	\N
7113	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	3820	\N
7114	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	3820	\N
7115	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	3820	\N
7116	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	3820	\N
7117	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	3820	\N
7118	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	3820	\N
7119	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	3820	\N
7120	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	3820	\N
7121	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	3820	\N
7122	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	3820	\N
7123	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	3820	\N
7124	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	3820	\N
7125	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	3820	\N
7126	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	3820	\N
7127	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	3820	\N
7128	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	3820	\N
7129	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	3820	\N
7130	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	3820	\N
7131	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	3820	\N
7132	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	3820	\N
7133	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	3820	\N
7134	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	3820	\N
7135	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	3820	\N
7136	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	3820	\N
7137	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	3820	\N
7138	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	3820	\N
7139	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	3820	\N
7140	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	3820	\N
7141	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	3820	\N
7142	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	3820	\N
7143	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	3820	\N
7144	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	3820	\N
7145	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	3820	\N
7146	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	3820	\N
7147	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	3820	\N
7148	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	3820	\N
7149	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	3820	\N
7150	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	3820	\N
7151	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	3820	\N
7152	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	3820	\N
7153	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	3820	\N
7154	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	3820	\N
7155	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	3820	\N
7156	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	3820	\N
7157	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	3820	\N
7158	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	3820	\N
7159	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	3820	\N
7160	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	3820	\N
7161	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	3820	\N
7162	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	3820	\N
7163	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	3820	\N
7164	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	3820	\N
7165	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	3820	\N
7166	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	3820	\N
7167	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	3820	\N
7168	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	3820	\N
7169	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	3820	\N
7170	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	3820	\N
7171	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	3820	\N
7172	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	3820	\N
7173	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	3820	\N
7174	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	3820	\N
7175	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	3820	\N
7176	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	3820	\N
7177	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	3820	\N
7178	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	3820	\N
7179	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	3820	\N
7180	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	3820	\N
7181	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	3820	\N
7182	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	3820	\N
7183	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	3820	\N
7184	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	3820	\N
7185	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	3820	\N
7186	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	3820	\N
7187	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	3820	\N
7188	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	3820	\N
7189	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	3820	\N
7190	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	3820	\N
7191	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	3820	\N
7192	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	3820	\N
7193	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	3820	\N
7194	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	3820	\N
7195	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	3820	\N
7196	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	3820	\N
7197	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	3820	\N
7198	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	3820	\N
7199	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	3820	\N
7200	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	3820	\N
7201	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	3820	\N
7202	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	3820	\N
7203	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	3820	\N
7204	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	3820	\N
7205	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	3820	\N
7206	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	3820	\N
7207	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	3820	\N
7208	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	3820	\N
7209	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	3820	\N
7210	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	3820	\N
7211	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	3820	\N
7212	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	3820	\N
7213	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	3820	\N
7214	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	3820	\N
7215	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	3820	\N
7216	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	3820	\N
7217	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	3820	\N
7218	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	3820	\N
7219	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	3820	\N
7220	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	3820	\N
7221	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	3820	\N
7222	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	3820	\N
7223	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	3820	\N
7224	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	3820	\N
7225	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	3820	\N
7226	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	3820	\N
7227	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	3820	\N
7228	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	3820	\N
7229	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	3820	\N
7230	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	3820	\N
7231	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	3820	\N
7232	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	3820	\N
7233	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	3820	\N
7234	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	3820	\N
7235	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	3820	\N
7236	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	3820	\N
7237	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	3820	\N
7238	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	3820	\N
7239	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	3820	\N
7240	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	3820	\N
7241	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	3820	\N
7242	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	3820	\N
7243	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	3820	\N
7244	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	3820	\N
7245	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	3820	\N
7246	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	3820	\N
7247	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	3820	\N
7248	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	3820	\N
7249	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	3820	\N
7250	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	3820	\N
7251	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	3820	\N
7252	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	3820	\N
7253	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	3820	\N
7254	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	3820	\N
7255	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	3820	\N
7256	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	3820	\N
7257	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	3820	\N
7258	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	3820	\N
7259	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	3820	\N
7260	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	3820	\N
7261	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	3820	\N
7262	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	3820	\N
7263	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	3820	\N
7264	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	3820	\N
7265	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	3820	\N
7266	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	3820	\N
7267	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	3820	\N
7268	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	3820	\N
7269	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	3820	\N
7270	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	3820	\N
7271	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	3820	\N
7272	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	3820	\N
7273	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	3820	\N
7274	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	3820	\N
7275	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	3820	\N
7276	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	3820	\N
7277	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	3820	\N
7278	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	3820	\N
7279	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	3820	\N
7280	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	3820	\N
7281	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	3820	\N
7282	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	3820	\N
7283	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	3820	\N
7284	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	3820	\N
7285	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	3820	\N
7286	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	3820	\N
7287	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	3820	\N
7288	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	3820	\N
7289	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	3820	\N
7290	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	3820	\N
7291	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	3820	\N
7292	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	3820	\N
7293	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	3820	\N
7294	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	3820	\N
7295	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	3820	\N
7296	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	3820	\N
7297	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	3820	\N
7298	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	3820	\N
7299	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	3820	\N
7300	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	3820	\N
7301	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	3820	\N
7302	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	3820	\N
7303	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	3820	\N
7304	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	3820	\N
7305	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	3820	\N
7306	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	3820	\N
7307	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	3820	\N
7308	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	3820	\N
7309	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	3820	\N
7310	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	3820	\N
7311	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	3820	\N
7312	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	3820	\N
7313	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	3820	\N
7314	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	3820	\N
7315	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	3820	\N
7316	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	3820	\N
7317	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	3820	\N
7318	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	3820	\N
7319	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	3820	\N
7320	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	3820	\N
7321	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	3820	\N
7322	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	3820	\N
7323	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	3820	\N
7324	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	3820	\N
7325	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	3820	\N
7326	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	3820	\N
7327	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	3820	\N
7328	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	3820	\N
7329	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	3820	\N
7330	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	3820	\N
7331	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	3820	\N
7332	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	3820	\N
7333	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	3820	\N
7334	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	3820	\N
7335	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	3820	\N
7336	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	3820	\N
7337	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	3820	\N
7338	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	3820	\N
7339	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	3820	\N
7340	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	3820	\N
7341	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	3820	\N
7342	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	3820	\N
7343	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	3820	\N
7344	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	3820	\N
7345	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	3820	\N
7346	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	3820	\N
7347	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	3820	\N
7348	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	3820	\N
7349	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	3820	\N
7350	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	3820	\N
7351	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	3820	\N
7352	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	3820	\N
7353	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	3820	\N
7354	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	3820	\N
7355	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	3820	\N
7356	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	3820	\N
7357	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	3820	\N
7358	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	3820	\N
7359	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	3820	\N
7360	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	3820	\N
7361	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	3820	\N
7362	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	3820	\N
7363	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	3820	\N
7364	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	3820	\N
7365	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	3820	\N
7366	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	3820	\N
7367	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	3820	\N
7368	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	3820	\N
7369	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	3820	\N
7370	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	3820	\N
7371	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	3820	\N
7372	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	3820	\N
7373	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	3820	\N
7374	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	3820	\N
7375	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	3820	\N
7376	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	3820	\N
7377	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	3820	\N
7378	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	3820	\N
7379	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	3820	\N
7380	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	3820	\N
7381	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	3820	\N
7382	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	3820	\N
7383	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	3820	\N
7384	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	3820	\N
7385	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	3820	\N
7386	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	3820	\N
7387	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	3820	\N
7388	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	3820	\N
7389	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	3820	\N
7390	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	3820	\N
7391	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	3820	\N
7392	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	3820	\N
7393	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	3820	\N
7394	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	3820	\N
7395	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	3820	\N
7396	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	3820	\N
7397	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	3820	\N
7398	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	3820	\N
7399	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	3820	\N
7400	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	3820	\N
7401	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	3820	\N
7402	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	3820	\N
7403	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	3820	\N
7404	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	3820	\N
7405	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	3820	\N
7406	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	3820	\N
7407	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	3820	\N
7408	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	3820	\N
7409	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	3820	\N
7410	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	3820	\N
7411	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	3820	\N
7412	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	3820	\N
7413	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	3820	\N
7414	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	3820	\N
7415	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	3820	\N
7416	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	3820	\N
7417	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	3820	\N
7418	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	3820	\N
7419	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	3820	\N
7420	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	3820	\N
7421	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	3820	\N
7422	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	3820	\N
7423	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	3820	\N
7424	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	3820	\N
7425	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	3820	\N
7426	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	3820	\N
7427	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	3820	\N
7428	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	3820	\N
7429	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	3820	\N
7430	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	3820	\N
7431	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	3820	\N
7432	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	3820	\N
7433	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	3820	\N
7434	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	3820	\N
7435	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	3820	\N
7436	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	3820	\N
7437	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	3820	\N
7438	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	3820	\N
7439	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	3820	\N
7440	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	3820	\N
7441	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	3820	\N
7442	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	3820	\N
7443	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	3820	\N
7444	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	3820	\N
7445	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	3820	\N
7446	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	3820	\N
7447	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	3820	\N
7448	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	3820	\N
7449	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	3820	\N
7450	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	3820	\N
7451	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	3820	\N
7452	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	3820	\N
7453	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	3820	\N
7454	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	3820	\N
7455	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	3820	\N
7456	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	3820	\N
7457	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	3820	\N
7458	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	3820	\N
7459	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	3820	\N
7460	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	3820	\N
7461	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	3820	\N
7462	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	3820	\N
7463	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	3820	\N
7464	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	3820	\N
7465	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	3820	\N
7466	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	3820	\N
7467	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	3820	\N
7468	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	3820	\N
7469	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	3820	\N
7470	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	3820	\N
7471	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	3820	\N
7472	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	3820	\N
7473	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	3820	\N
7474	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	3820	\N
7475	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	3820	\N
7476	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	3820	\N
7477	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	3820	\N
7478	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	3820	\N
7479	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	3820	\N
7480	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	3820	\N
7481	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	3820	\N
7482	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	3820	\N
7483	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	3820	\N
7484	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	3820	\N
7485	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	3820	\N
7486	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	3820	\N
7487	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	3820	\N
7488	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	3820	\N
7489	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	3820	\N
7490	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	3820	\N
7491	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	3820	\N
7492	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	3820	\N
7493	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	3820	\N
7494	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	3820	\N
7495	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	3820	\N
7496	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	3820	\N
7497	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	3820	\N
7498	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	3820	\N
7499	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	3820	\N
7500	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	3820	\N
7501	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	3820	\N
7502	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	3820	\N
7503	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	3820	\N
7504	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	3820	\N
7505	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	3820	\N
7506	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	3820	\N
7507	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	3820	\N
7508	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	3820	\N
7509	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	3820	\N
7510	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	3820	\N
7511	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	3820	\N
7512	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	3820	\N
7513	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	3820	\N
7514	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	3820	\N
7515	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	3820	\N
7516	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	3820	\N
7517	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	3820	\N
7518	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	3820	\N
7519	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	3820	\N
7520	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	3820	\N
7521	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	3820	\N
7522	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	3820	\N
7523	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	3820	\N
7524	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	3820	\N
7525	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	3820	\N
7526	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	3820	\N
7527	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	3820	\N
7528	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	3820	\N
7529	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	3820	\N
7530	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	3820	\N
7531	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	3820	\N
7532	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	3820	\N
7533	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	3820	\N
7534	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	3820	\N
7535	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	3820	\N
7536	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	3820	\N
7537	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	3820	\N
7538	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	3820	\N
7539	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	3820	\N
7540	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	3820	\N
7541	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	3820	\N
7542	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	3820	\N
7543	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	3820	\N
7544	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	3820	\N
7545	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	3820	\N
7546	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	3820	\N
7547	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	3820	\N
7548	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	3820	\N
7549	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	3820	\N
7550	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	3820	\N
7551	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	3820	\N
7552	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	3820	\N
7553	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	3820	\N
7554	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	3820	\N
7555	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	3820	\N
7556	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	3820	\N
7557	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	3820	\N
7558	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	3820	\N
7559	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	3820	\N
7560	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	3820	\N
7561	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	3820	\N
7562	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	3820	\N
7563	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	3820	\N
7564	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	3820	\N
7565	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	3820	\N
7566	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	3820	\N
7567	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	3820	\N
7568	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	3820	\N
7569	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	3820	\N
7570	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	3820	\N
7571	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	3820	\N
7572	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	3820	\N
7573	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	3820	\N
7574	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	3820	\N
7575	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	3820	\N
7576	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	3820	\N
7577	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	3820	\N
7578	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	3820	\N
7579	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	3820	\N
7580	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	3820	\N
7581	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	3820	\N
7582	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	3820	\N
7583	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	3820	\N
7584	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	3820	\N
7585	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	3820	\N
7586	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	3820	\N
7587	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	3820	\N
7588	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	3820	\N
7589	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	3820	\N
7590	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	3820	\N
7591	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	3820	\N
7592	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	3820	\N
7593	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	3820	\N
7594	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	3820	\N
7595	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	3820	\N
7596	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	3820	\N
7597	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	3820	\N
7598	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	3820	\N
7599	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	3820	\N
7600	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	3820	\N
7601	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	3820	\N
7602	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	3820	\N
7603	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	3820	\N
7604	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	3820	\N
7605	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	3820	\N
7606	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	3820	\N
7607	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	3820	\N
7608	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	3820	\N
7609	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	3820	\N
7610	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	3820	\N
7611	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	3820	\N
7612	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	3820	\N
7613	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	3820	\N
7614	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	3820	\N
7615	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	3820	\N
7616	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	3820	\N
7617	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	3820	\N
7618	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	3820	\N
7619	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	3820	\N
7620	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	3820	\N
7621	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	3820	\N
7622	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	3820	\N
7623	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	3820	\N
7624	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	3820	\N
7625	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	3820	\N
7626	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	3820	\N
7627	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	3820	\N
7628	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	3820	\N
7629	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	3820	\N
7630	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	3820	\N
7631	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	3820	\N
7632	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	3820	\N
7633	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	3820	\N
7634	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	3820	\N
7635	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	3820	\N
7636	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	3820	\N
7637	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	3820	\N
7638	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	3820	\N
7639	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	3820	\N
7640	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	3820	\N
7641	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	3820	\N
7642	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	3820	\N
7643	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	3820	\N
7644	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	3820	\N
7645	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	3820	\N
7646	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	3820	\N
7647	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	3820	\N
7648	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	3820	\N
7649	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	3820	\N
7650	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	3820	\N
7651	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	3820	\N
7652	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	3820	\N
7653	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	3820	\N
7654	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	3820	\N
7655	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	3820	\N
7656	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	3820	\N
7657	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	3820	\N
7658	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	3820	\N
7659	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	3820	\N
7660	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	3820	\N
7661	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	3820	\N
7662	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	3820	\N
7663	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	3820	\N
7664	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	3820	\N
7665	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	3820	\N
7666	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	3820	\N
7667	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	3820	\N
7668	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	3820	\N
7669	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	3820	\N
7670	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	3820	\N
7671	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	3820	\N
7672	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	3820	\N
7673	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	3820	\N
7674	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	3820	\N
7675	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	3820	\N
7676	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	3820	\N
7677	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	3820	\N
7678	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	3820	\N
7679	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	3820	\N
7680	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	3820	\N
7681	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	3820	\N
7682	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	3820	\N
7683	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	3820	\N
7684	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	3820	\N
7685	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	3820	\N
7686	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	3820	\N
7687	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	3820	\N
7688	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	3820	\N
7689	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	3820	\N
7690	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	3820	\N
7691	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	3820	\N
7692	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	3820	\N
7693	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	3820	\N
7694	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	3820	\N
7695	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	3820	\N
7696	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	3820	\N
7697	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	3820	\N
7698	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	3820	\N
7699	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	3820	\N
7700	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	3820	\N
7701	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	3820	\N
7702	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	3820	\N
7703	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	3820	\N
7704	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	3820	\N
7705	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	3820	\N
7706	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	3820	\N
7707	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	3820	\N
7708	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	3820	\N
7709	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	3820	\N
7710	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	3820	\N
7711	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	3820	\N
7712	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	3820	\N
7713	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	3820	\N
7714	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	3820	\N
7715	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	3820	\N
7716	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	3820	\N
7717	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	3820	\N
7718	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	3820	\N
7719	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	3820	\N
7720	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	3820	\N
7721	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	3820	\N
7722	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	3820	\N
7723	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	3820	\N
7724	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	3820	\N
7725	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	3820	\N
7726	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	3820	\N
7727	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	3820	\N
7728	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	3820	\N
7729	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	3820	\N
7730	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	3820	\N
7731	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	3820	\N
7732	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	410	3820	\N
7733	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	3820	\N
7734	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	3820	\N
9293	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	3823	\N
9294	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	3823	\N
7737	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	3820	\N
7738	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	3820	\N
7739	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	3820	\N
7740	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	3820	\N
7741	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	3821	\N
7742	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	3821	\N
7743	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	3821	\N
7744	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	3821	\N
7745	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	3821	\N
7746	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	3821	\N
7747	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	3821	\N
7748	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	3821	\N
7749	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	3821	\N
7750	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	3821	\N
7751	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	3821	\N
7752	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	3821	\N
7753	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	3821	\N
7754	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	3821	\N
7755	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	3821	\N
7756	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	3821	\N
7757	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	3821	\N
7758	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	3821	\N
7759	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	3821	\N
7760	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	3821	\N
7761	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	3821	\N
7762	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	3821	\N
7763	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	3821	\N
7764	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	3821	\N
7765	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	3821	\N
7766	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	3821	\N
7767	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	3821	\N
7768	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	3821	\N
7769	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	3821	\N
7770	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	3821	\N
7771	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	3821	\N
7772	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	3821	\N
7773	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	3821	\N
7774	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	3821	\N
7775	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	3821	\N
7776	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	3821	\N
7777	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	3821	\N
7778	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	3821	\N
7779	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	3821	\N
7780	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	3821	\N
7781	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	3821	\N
7782	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	3821	\N
7783	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	3821	\N
7784	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	3821	\N
7785	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	3821	\N
7786	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	3821	\N
7787	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	3821	\N
7788	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	3821	\N
7789	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	3821	\N
7790	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	3821	\N
7791	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	3821	\N
7792	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	3821	\N
7793	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	3821	\N
7794	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	3821	\N
7795	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	3821	\N
7796	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	3821	\N
7797	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	3821	\N
7798	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	3821	\N
7799	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	3821	\N
7800	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	3821	\N
7801	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	3821	\N
7802	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	3821	\N
7803	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	3821	\N
7804	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	3821	\N
7805	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	3821	\N
7806	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	3821	\N
7807	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	3821	\N
7808	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	3821	\N
7809	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	3821	\N
7810	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	3821	\N
7811	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	3821	\N
7812	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	3821	\N
7813	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	3821	\N
7814	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	3821	\N
7815	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	3821	\N
7816	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	3821	\N
7817	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	3821	\N
7818	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	3821	\N
7819	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	3821	\N
7820	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	3821	\N
7821	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	3821	\N
7822	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	3821	\N
7823	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	3821	\N
7824	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	3821	\N
7825	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	3821	\N
7826	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	3821	\N
7827	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	3821	\N
7828	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	3821	\N
7829	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	3821	\N
7830	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	3821	\N
7831	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	3821	\N
7832	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	3821	\N
7833	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	3821	\N
7834	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	3821	\N
7835	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	3821	\N
7836	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	3821	\N
7837	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	3821	\N
7838	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	3821	\N
7839	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	3821	\N
7840	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	3821	\N
7841	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	3821	\N
7842	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	3821	\N
7843	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	3821	\N
7844	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	3821	\N
7845	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	3821	\N
7846	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	3821	\N
7847	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	3821	\N
7848	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	3821	\N
7849	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	3821	\N
7850	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	3821	\N
7851	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	3821	\N
7852	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	3821	\N
7853	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	3821	\N
7854	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	3821	\N
7855	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	3821	\N
7856	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	3821	\N
7857	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	3821	\N
7858	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	3821	\N
7859	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	3821	\N
7860	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	3821	\N
7861	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	3821	\N
7862	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	3821	\N
7863	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	3821	\N
7864	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	3821	\N
7865	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	3821	\N
7866	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	3821	\N
7867	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	3821	\N
7868	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	3821	\N
7869	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	3821	\N
7870	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	3821	\N
7871	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	3821	\N
7872	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	3821	\N
7873	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	3821	\N
7874	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	3821	\N
7875	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	3821	\N
7876	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	3821	\N
7877	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	3821	\N
7878	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	3821	\N
7879	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	3821	\N
7880	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	3821	\N
7881	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	3821	\N
7882	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	3821	\N
7883	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	3821	\N
7884	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	3821	\N
7885	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	3821	\N
7886	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	3821	\N
7887	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	3821	\N
7888	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	3821	\N
7889	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	3821	\N
7890	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	3821	\N
7891	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	3821	\N
7892	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	3821	\N
7893	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	3821	\N
7894	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	3821	\N
7895	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	3821	\N
7896	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	3821	\N
7897	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	3821	\N
7898	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	3821	\N
7899	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	3821	\N
7900	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	3821	\N
7901	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	3821	\N
7902	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	3821	\N
7903	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	3821	\N
7904	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	3821	\N
7905	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	3821	\N
7906	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	3821	\N
7907	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	3821	\N
7908	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	3821	\N
7909	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	3821	\N
7910	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	3821	\N
7911	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	3821	\N
7912	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	3821	\N
7913	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	3821	\N
7914	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	3821	\N
7915	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	3821	\N
7916	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	3821	\N
7917	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	3821	\N
7918	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	3821	\N
7919	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	3821	\N
7920	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	3821	\N
7921	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	3821	\N
7922	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	3821	\N
7923	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	3821	\N
7924	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	3821	\N
7925	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	3821	\N
7926	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	3821	\N
7927	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	3821	\N
7928	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	3821	\N
7929	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	3821	\N
7930	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	3821	\N
7931	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	3821	\N
7932	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	3821	\N
7933	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	3821	\N
7934	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	3821	\N
7935	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	3821	\N
7936	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	3821	\N
7937	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	3821	\N
7938	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	3821	\N
7939	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	3821	\N
7940	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	3821	\N
7941	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	3821	\N
7942	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	3821	\N
7943	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	3821	\N
7944	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	3821	\N
7945	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	3821	\N
7946	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	3821	\N
7947	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	3821	\N
7948	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	3821	\N
7949	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	3821	\N
7950	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	3821	\N
7951	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	3821	\N
7952	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	3821	\N
7953	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	3821	\N
7954	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	3821	\N
7955	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	3821	\N
7956	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	3821	\N
7957	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	3821	\N
7958	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	3821	\N
7959	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	3821	\N
7960	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	3821	\N
7961	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	3821	\N
7962	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	3821	\N
7963	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	3821	\N
7964	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	3821	\N
7965	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	3821	\N
7966	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	3821	\N
7967	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	3821	\N
7968	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	3821	\N
7969	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	3821	\N
7970	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	3821	\N
7971	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	3821	\N
7972	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	3821	\N
7973	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	3821	\N
7974	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	3821	\N
7975	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	3821	\N
7976	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	3821	\N
7977	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	3821	\N
7978	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	3821	\N
7979	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	3821	\N
7980	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	3821	\N
7981	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	3821	\N
7982	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	3821	\N
7983	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	3821	\N
7984	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	3821	\N
7985	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	3821	\N
7986	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	3821	\N
7987	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	3821	\N
7988	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	3821	\N
7989	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	3821	\N
7990	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	3821	\N
7991	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	3821	\N
7992	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	3821	\N
7993	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	3821	\N
7994	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	3821	\N
7995	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	3821	\N
7996	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	3821	\N
7997	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	3821	\N
7998	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	3821	\N
7999	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	3821	\N
8000	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	3821	\N
8001	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	3821	\N
8002	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	3821	\N
8003	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	3821	\N
8004	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	3821	\N
8005	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	3821	\N
8006	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	3821	\N
8007	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	3821	\N
8008	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	3821	\N
8009	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	3821	\N
8010	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	3821	\N
8011	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	3821	\N
8012	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	3821	\N
8013	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	3821	\N
8014	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	3821	\N
8015	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	3821	\N
8016	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	3821	\N
8017	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	3821	\N
8018	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	3821	\N
8019	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	3821	\N
8020	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	3821	\N
8021	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	3821	\N
8022	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	3821	\N
8023	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	3821	\N
8024	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	3821	\N
8025	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	3821	\N
8026	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	3821	\N
8027	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	3821	\N
8028	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	3821	\N
8029	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	3821	\N
8030	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	3821	\N
8031	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	3821	\N
8032	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	3821	\N
8033	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	3821	\N
8034	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	3821	\N
8035	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	3821	\N
8036	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	3821	\N
8037	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	3821	\N
8038	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	3821	\N
8039	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	3821	\N
8040	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	3821	\N
8041	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	3821	\N
8042	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	3821	\N
8043	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	3821	\N
8044	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	3821	\N
8045	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	3821	\N
8046	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	3821	\N
8047	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	3821	\N
8048	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	3821	\N
8049	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	3821	\N
8050	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	3821	\N
8051	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	3821	\N
8052	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	3821	\N
8053	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	3821	\N
8054	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	3821	\N
8055	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	3821	\N
8056	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	3821	\N
8057	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	3821	\N
8058	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	3821	\N
8059	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	3821	\N
8060	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	3821	\N
8061	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	3821	\N
8062	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	3821	\N
8063	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	3821	\N
8064	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	3821	\N
8065	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	3821	\N
8066	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	3821	\N
8067	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	3821	\N
8068	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	3821	\N
8069	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	3821	\N
8070	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	3821	\N
8071	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	3821	\N
8072	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	3821	\N
8073	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	3821	\N
8074	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	3821	\N
8075	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	3821	\N
8076	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	3821	\N
8077	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	3821	\N
8078	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	3821	\N
8079	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	3821	\N
8080	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	3821	\N
8081	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	3821	\N
8082	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	3821	\N
8083	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	3821	\N
8084	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	3821	\N
8085	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	3821	\N
8086	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	3821	\N
8087	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	3821	\N
8088	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	3821	\N
8089	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	3821	\N
8090	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	3821	\N
8091	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	3821	\N
8092	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	3821	\N
8093	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	3821	\N
8094	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	3821	\N
8095	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	3821	\N
8096	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	3821	\N
8097	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	3821	\N
8098	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	3821	\N
8099	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	3821	\N
8100	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	3821	\N
8101	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	3821	\N
8102	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	3821	\N
8103	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	3821	\N
8104	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	3821	\N
8105	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	3821	\N
8106	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	3821	\N
8107	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	3821	\N
8108	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	3821	\N
8109	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	3821	\N
8110	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	3821	\N
8111	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	3821	\N
8112	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	3821	\N
8113	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	3821	\N
8114	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	3821	\N
8115	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	3821	\N
8116	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	3821	\N
8117	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	3821	\N
8118	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	3821	\N
8119	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	3821	\N
8120	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	3821	\N
8121	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	3821	\N
8122	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	3821	\N
8123	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	3821	\N
8124	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	3821	\N
8125	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	3821	\N
8126	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	3821	\N
8127	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	3821	\N
8128	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	3821	\N
8129	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	3821	\N
8130	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	3821	\N
8131	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	3821	\N
8132	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	3821	\N
8133	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	3821	\N
8134	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	3821	\N
8135	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	3821	\N
8136	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	3821	\N
8137	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	3821	\N
8138	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	3821	\N
8139	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	3821	\N
8140	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	3821	\N
8141	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	3821	\N
8142	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	3821	\N
8143	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	3821	\N
8144	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	3821	\N
8145	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	3821	\N
8146	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	3821	\N
8147	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	3821	\N
8148	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	3821	\N
8149	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	3821	\N
8150	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	3821	\N
8151	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	3821	\N
8152	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	3821	\N
8153	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	3821	\N
8154	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	3821	\N
8155	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	3821	\N
8156	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	3821	\N
8157	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	3821	\N
8158	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	3821	\N
8159	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	3821	\N
8160	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	3821	\N
8161	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	3821	\N
8162	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	3821	\N
8163	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	3821	\N
8164	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	3821	\N
8165	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	3821	\N
8166	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	3821	\N
8167	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	3821	\N
8168	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	3821	\N
8169	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	3821	\N
8170	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	3821	\N
8171	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	3821	\N
8172	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	3821	\N
8173	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	3821	\N
8174	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	3821	\N
8175	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	3821	\N
8176	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	3821	\N
8177	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	3821	\N
8178	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	3821	\N
8179	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	3821	\N
8180	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	3821	\N
8181	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	3821	\N
8182	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	3821	\N
8183	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	3821	\N
8184	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	3821	\N
8185	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	3821	\N
8186	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	3821	\N
8187	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	3821	\N
8188	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	3821	\N
8189	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	3821	\N
8190	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	3821	\N
8191	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	3821	\N
8192	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	3821	\N
8193	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	3821	\N
8194	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	3821	\N
8195	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	3821	\N
8196	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	3821	\N
8197	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	3821	\N
8198	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	3821	\N
8199	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	3821	\N
8200	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	3821	\N
8201	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	3821	\N
8202	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	3821	\N
8203	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	3821	\N
8204	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	3821	\N
8205	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	3821	\N
8206	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	3821	\N
8207	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	3821	\N
8208	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	3821	\N
8209	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	3821	\N
8210	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	3821	\N
8211	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	3821	\N
8212	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	3821	\N
8213	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	3821	\N
8214	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	3821	\N
8215	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	3821	\N
8216	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	3821	\N
8217	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	3821	\N
8218	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	3821	\N
8219	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	3821	\N
8220	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	3821	\N
8221	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	3821	\N
8222	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	3821	\N
8223	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	3821	\N
8224	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	3821	\N
8225	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	3821	\N
8226	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	3821	\N
8227	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	3821	\N
8228	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	3821	\N
8229	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	3821	\N
8230	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	3821	\N
8231	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	3821	\N
8232	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	3821	\N
8233	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	3821	\N
8234	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	3821	\N
8235	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	3821	\N
8236	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	3821	\N
8237	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	3821	\N
8238	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	3821	\N
8239	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	3821	\N
8240	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	3821	\N
8241	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	3821	\N
8242	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	3821	\N
8243	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	3821	\N
8244	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	3821	\N
8245	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	3821	\N
8246	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	3821	\N
8247	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	3821	\N
8248	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	3821	\N
8249	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	3821	\N
8250	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	3821	\N
8251	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	3821	\N
8252	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	3821	\N
8253	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	3821	\N
8254	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	3821	\N
8255	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	3821	\N
8256	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	3821	\N
8257	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	3821	\N
8258	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	3821	\N
8259	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	3821	\N
8260	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	3821	\N
8261	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	3821	\N
8262	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	3821	\N
8263	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	3821	\N
8264	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	3821	\N
8265	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	3821	\N
8266	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	3821	\N
8267	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	3821	\N
8268	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	3821	\N
8269	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	3821	\N
8270	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	3821	\N
8271	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	3821	\N
8272	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	3821	\N
8273	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	3821	\N
8274	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	3821	\N
8275	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	3821	\N
8276	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	3821	\N
8277	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	3821	\N
8278	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	3821	\N
8279	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	3821	\N
8280	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	3821	\N
8281	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	3821	\N
8282	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	3821	\N
8283	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	3821	\N
8284	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	3821	\N
8285	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	3821	\N
8286	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	3821	\N
8287	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	3821	\N
8288	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	3821	\N
8289	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	3821	\N
8290	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	3821	\N
8291	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	3821	\N
8292	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	3821	\N
8293	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	3821	\N
8294	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	3821	\N
8295	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	3821	\N
8296	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	3821	\N
8297	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	3821	\N
8298	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	3821	\N
8299	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	3821	\N
8300	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	3821	\N
8301	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	3821	\N
8302	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	3821	\N
8303	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	3821	\N
8304	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	3821	\N
8305	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	3821	\N
8306	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	3821	\N
8307	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	3821	\N
8308	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	3821	\N
8309	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	3821	\N
8310	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	3821	\N
8311	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	3821	\N
8312	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	3821	\N
8313	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	3821	\N
8314	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	3821	\N
8315	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	3821	\N
8316	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	3821	\N
8317	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	3821	\N
8318	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	3821	\N
8319	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	3821	\N
8320	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	3821	\N
8321	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	3821	\N
8322	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	3821	\N
8323	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	3821	\N
8324	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	3821	\N
8325	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	3821	\N
8326	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	3821	\N
8327	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	3821	\N
8328	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	3821	\N
8329	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	3821	\N
8330	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	3821	\N
8331	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	3821	\N
8332	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	3821	\N
8333	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	3821	\N
8334	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	3821	\N
8335	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	3821	\N
8336	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	3821	\N
8337	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	3821	\N
8338	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	3821	\N
8339	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	3821	\N
8340	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	3821	\N
8341	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	3821	\N
8342	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	3821	\N
8343	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	3821	\N
8344	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	3821	\N
8345	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	3821	\N
8346	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	3821	\N
8347	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	3821	\N
8348	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	3821	\N
8349	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	3821	\N
8350	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	3821	\N
8351	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	3821	\N
8352	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	3821	\N
8353	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	3821	\N
8354	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	3821	\N
8355	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	3821	\N
8356	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	3821	\N
8357	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	3821	\N
8358	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	3821	\N
8359	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	3821	\N
8360	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	3821	\N
8361	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	3821	\N
8362	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	3821	\N
8363	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	3821	\N
8364	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	3821	\N
8365	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	3821	\N
8366	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	3821	\N
8367	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	3821	\N
8368	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	3821	\N
8369	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	3821	\N
8370	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	3821	\N
8371	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	3821	\N
8372	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	3821	\N
8373	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	3821	\N
8374	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	3821	\N
8375	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	3821	\N
8376	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	3821	\N
8377	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	3821	\N
8378	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	3821	\N
8379	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	3821	\N
8380	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	3821	\N
8381	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	3821	\N
8382	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	3821	\N
8383	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	3821	\N
8384	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	3821	\N
8385	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	3821	\N
8386	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	3821	\N
8387	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	3821	\N
8388	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	3821	\N
8389	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	3821	\N
8390	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	3821	\N
8391	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	3821	\N
8392	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	3821	\N
8393	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	3821	\N
8394	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	3821	\N
8395	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	3821	\N
8396	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	3821	\N
8397	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	3821	\N
8398	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	3821	\N
8399	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	3821	\N
8400	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	3821	\N
8401	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	3821	\N
8402	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	3821	\N
8403	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	3821	\N
8404	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	3821	\N
8405	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	3821	\N
8406	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	3821	\N
8407	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	3821	\N
8408	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	3821	\N
8409	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	3821	\N
8410	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	3821	\N
8411	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	3821	\N
8412	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	3821	\N
8413	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	3821	\N
8414	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	3821	\N
8415	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	3821	\N
8416	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	3821	\N
8417	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	3821	\N
8418	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	3821	\N
8419	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	3821	\N
8420	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	3821	\N
8421	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	3821	\N
8422	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	3821	\N
8423	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	3821	\N
8424	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	3821	\N
8425	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	3821	\N
8426	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	3821	\N
8427	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	3821	\N
8428	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	3821	\N
8429	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	3821	\N
8430	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	3821	\N
8431	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	3821	\N
8432	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	3821	\N
8433	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	3821	\N
8434	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	3821	\N
8435	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	3821	\N
8436	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	3821	\N
8437	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	3821	\N
8438	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	3821	\N
8439	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	3821	\N
8440	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	3821	\N
8441	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	3821	\N
8442	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	3821	\N
8443	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	3821	\N
8444	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	3821	\N
8445	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	3821	\N
8446	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	3821	\N
8447	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	3821	\N
8448	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	3821	\N
8449	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	3821	\N
8450	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	3821	\N
8451	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	3821	\N
8452	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	3821	\N
8453	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	3821	\N
8454	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	3821	\N
8455	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	3821	\N
8456	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	3821	\N
8457	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	3821	\N
8458	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	3821	\N
8459	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	3821	\N
8460	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	3821	\N
8461	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	3821	\N
8462	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	3821	\N
8463	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	3821	\N
8464	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	3821	\N
8465	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	3821	\N
8466	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	3821	\N
8467	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	3821	\N
8468	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	3821	\N
8469	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	3821	\N
8470	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	3821	\N
8471	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	3821	\N
8472	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	3821	\N
8473	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	3821	\N
8474	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	3821	\N
8475	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	3821	\N
8476	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	3821	\N
8477	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	3821	\N
8478	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	3821	\N
8479	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	3821	\N
8480	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	3821	\N
8481	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	3821	\N
8482	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	3821	\N
8483	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	3821	\N
8484	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	3821	\N
8485	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	3821	\N
8486	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	3821	\N
8487	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	3821	\N
8488	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	3821	\N
8489	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	3821	\N
8490	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	3821	\N
8491	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	3821	\N
8492	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	3821	\N
8493	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	3821	\N
8494	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	3821	\N
8495	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	3821	\N
8496	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	3821	\N
8497	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	3821	\N
8498	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	3821	\N
8499	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	3821	\N
8500	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	3821	\N
8501	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	3821	\N
8502	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	3821	\N
8503	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	3821	\N
8504	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	3821	\N
8505	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	3821	\N
8506	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	410	3821	\N
8507	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	3821	\N
8508	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	3821	\N
8509	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	413	3821	\N
8510	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	414	3821	\N
8511	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	3821	\N
8512	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	3821	\N
8513	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	3821	\N
8514	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	3821	\N
6431	0	0	0	0	0	0	0	2	2024-08-23 09:08:49.471297	2	5	2024-08-23 09:08:49.471297	5	0	\N	\N	\N	52	799	3819	\N
3999	0	0	0	0	0	0	0	3	2024-08-23 09:26:18.084117	3	56	2024-08-23 09:26:18.084117	56	0	\N	\N	2024-08-23 09:26:18.086139	33	139	3816	1
6958	0	0	0	0	0	0	0	4	2024-08-23 10:11:37.842825	4	0	\N	\N	0	\N	\N	2024-08-23 10:11:37.843824	73	410	3819	1
7735	0	0	0	0	0	0	0	2	2024-08-23 10:13:50.316217	2	0	\N	\N	0	\N	\N	2024-08-23 10:13:50.318238	73	413	3820	1
3224	0	0	0	0	0	0	0	5	2024-08-23 10:32:20.773946	5	0	\N	\N	0	2024-08-23 10:32:20.773946	3	2024-08-23 10:32:20.775945	33	138	3811	1
7736	0	0	0	0	0	0	0	0	\N	\N	15	2024-08-23 10:50:22.135065	15	0	\N	\N	2024-08-23 10:50:22.137065	73	414	3820	1
8515	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	427	3822	\N
8516	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	75	3822	\N
8517	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	24	3822	\N
8518	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	27	3822	\N
8519	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	28	3822	\N
8520	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	29	3822	\N
8521	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	3822	\N
8522	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	3822	\N
8523	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	3822	\N
8524	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	3822	\N
8525	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	3822	\N
8526	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	3822	\N
8527	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	3822	\N
8528	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	3822	\N
8529	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	3822	\N
8530	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	3822	\N
8531	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	3822	\N
8532	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	3822	\N
8533	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	3822	\N
8534	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	3822	\N
8535	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	3822	\N
8536	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	3822	\N
8537	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	3822	\N
8538	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	3822	\N
8539	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	3822	\N
8540	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	3822	\N
8541	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	3822	\N
8542	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	3822	\N
8543	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	3822	\N
8544	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	3822	\N
8545	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	3822	\N
8546	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	3822	\N
8547	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	3822	\N
8548	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	3822	\N
8549	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	3822	\N
8550	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	3822	\N
8551	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	3822	\N
8552	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	3822	\N
8553	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	3822	\N
8554	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	3822	\N
8555	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	3822	\N
8556	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	3822	\N
8557	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	3822	\N
8558	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	3822	\N
8559	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	3822	\N
8560	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	3822	\N
8561	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	3822	\N
8562	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	3822	\N
8563	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	3822	\N
8564	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	3822	\N
8565	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	3822	\N
8566	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	3822	\N
8567	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	3822	\N
8568	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	3822	\N
8569	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	3822	\N
8570	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	3822	\N
8571	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	3822	\N
8572	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	3822	\N
8573	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	3822	\N
8574	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	3822	\N
8575	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	3822	\N
8576	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	3822	\N
8577	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	3822	\N
8578	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	3822	\N
8579	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	3822	\N
8580	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	3822	\N
8581	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	3822	\N
8582	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	3822	\N
8583	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	3822	\N
8584	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	3822	\N
8585	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	3822	\N
8586	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	3822	\N
8587	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	3822	\N
8588	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	3822	\N
8589	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	3822	\N
8590	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	3822	\N
8591	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	3822	\N
8592	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	3822	\N
8593	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	3822	\N
8594	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	3822	\N
8595	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	3822	\N
8596	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	3822	\N
8597	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	3822	\N
8598	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	3822	\N
8599	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	3822	\N
8600	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	3822	\N
8601	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	3822	\N
8602	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	3822	\N
8603	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	3822	\N
8604	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	3822	\N
8605	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	3822	\N
8606	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	3822	\N
8607	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	3822	\N
8608	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	3822	\N
8609	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	3822	\N
8610	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	3822	\N
8611	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	3822	\N
8612	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	3822	\N
8613	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	3822	\N
8614	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	3822	\N
8615	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	3822	\N
8616	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	3822	\N
8617	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	3822	\N
8618	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	3822	\N
8619	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	3822	\N
8620	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	3822	\N
8621	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	3822	\N
8622	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	3822	\N
8623	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	3822	\N
8624	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	3822	\N
8625	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	3822	\N
8626	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	3822	\N
8627	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	3822	\N
8628	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	3822	\N
8629	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	3822	\N
8630	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	3822	\N
8631	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	3822	\N
8632	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	3822	\N
8633	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	3822	\N
8634	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	3822	\N
8635	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	3822	\N
8636	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	3822	\N
8637	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	3822	\N
8638	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	3822	\N
8639	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	3822	\N
8640	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	3822	\N
8641	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	3822	\N
8642	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	3822	\N
8643	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	3822	\N
8644	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	3822	\N
8645	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	3822	\N
8646	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	3822	\N
8647	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	3822	\N
8648	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	3822	\N
8649	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	3822	\N
8650	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	3822	\N
8651	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	3822	\N
8652	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	3822	\N
8653	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	3822	\N
8654	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	3822	\N
8655	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	3822	\N
8656	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	3822	\N
8657	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	3822	\N
8658	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	3822	\N
8659	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	3822	\N
8660	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	3822	\N
8661	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	3822	\N
8662	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	3822	\N
8663	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	3822	\N
8664	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	3822	\N
8665	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	3822	\N
8666	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	3822	\N
8667	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	3822	\N
8668	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	3822	\N
8669	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	3822	\N
8670	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	3822	\N
8671	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	3822	\N
8672	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	3822	\N
8673	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	3822	\N
8674	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	3822	\N
8675	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	3822	\N
8676	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	3822	\N
8677	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	3822	\N
8678	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	3822	\N
8679	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	3822	\N
8680	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	3822	\N
8681	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	3822	\N
8682	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	3822	\N
8683	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	3822	\N
8684	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	3822	\N
8685	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	3822	\N
8686	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	3822	\N
8687	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	3822	\N
8688	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	3822	\N
8689	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	3822	\N
8690	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	3822	\N
8691	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	3822	\N
8692	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	3822	\N
8693	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	3822	\N
8694	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	3822	\N
8695	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	3822	\N
8696	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	3822	\N
8697	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	3822	\N
8698	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	3822	\N
8699	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	3822	\N
8700	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	3822	\N
8701	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	3822	\N
8702	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	3822	\N
8703	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	3822	\N
8704	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	3822	\N
8705	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	3822	\N
8706	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	3822	\N
8707	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	3822	\N
8708	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	3822	\N
8709	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	3822	\N
8710	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	3822	\N
8711	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	3822	\N
8712	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	3822	\N
8713	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	3822	\N
8714	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	3822	\N
8715	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	3822	\N
8716	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	3822	\N
8717	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	3822	\N
8718	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	3822	\N
8719	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	3822	\N
8720	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	3822	\N
8721	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	3822	\N
8722	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	3822	\N
8723	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	3822	\N
8724	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	3822	\N
8725	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	3822	\N
8726	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	3822	\N
8727	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	3822	\N
8728	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	3822	\N
8729	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	3822	\N
8730	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	3822	\N
8731	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	3822	\N
8732	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	3822	\N
8733	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	3822	\N
8734	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	3822	\N
8735	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	3822	\N
8736	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	3822	\N
8737	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	3822	\N
8738	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	3822	\N
8739	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	3822	\N
8740	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	3822	\N
8741	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	3822	\N
8742	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	3822	\N
8743	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	3822	\N
8744	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	3822	\N
8745	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	3822	\N
8746	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	3822	\N
8747	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	3822	\N
8748	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	3822	\N
8749	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	3822	\N
8753	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	3822	\N
8754	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	3822	\N
8755	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	3822	\N
8756	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	3822	\N
8757	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	3822	\N
8758	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	3822	\N
8759	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	3822	\N
8760	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	3822	\N
8761	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	3822	\N
8762	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	3822	\N
8763	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	3822	\N
8764	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	3822	\N
8765	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	3822	\N
8766	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	3822	\N
8767	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	3822	\N
8768	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	3822	\N
8769	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	3822	\N
8770	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	3822	\N
8771	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	3822	\N
8772	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	3822	\N
8773	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	3822	\N
8774	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	3822	\N
8775	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	3822	\N
8776	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	3822	\N
8777	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	3822	\N
8751	0	0	0	1	0	0	0	3	2024-08-27 06:27:28.104948	3	0	2024-08-27 06:27:28.104948	0	3	2024-08-27 06:27:28.104948	3	2024-08-27 06:27:28.104948	52	234	3822	1
8778	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	3822	\N
8779	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	3822	\N
8780	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	3822	\N
8781	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	3822	\N
8782	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	3822	\N
8783	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	3822	\N
8784	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	3822	\N
8785	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	3822	\N
8786	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	3822	\N
8787	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	3822	\N
8788	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	3822	\N
8789	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	3822	\N
8790	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	3822	\N
8791	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	3822	\N
8792	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	3822	\N
8793	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	3822	\N
8794	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	3822	\N
8795	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	3822	\N
8796	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	3822	\N
8797	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	3822	\N
8798	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	3822	\N
8799	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	3822	\N
8800	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	3822	\N
8801	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	3822	\N
8802	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	3822	\N
8803	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	3822	\N
8804	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	3822	\N
8805	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	3822	\N
8806	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	3822	\N
8807	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	3822	\N
8808	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	3822	\N
8809	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	3822	\N
8810	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	3822	\N
8811	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	3822	\N
8812	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	3822	\N
8813	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	3822	\N
8814	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	3822	\N
8815	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	3822	\N
8816	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	3822	\N
8817	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	3822	\N
8818	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	3822	\N
8819	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	3822	\N
8820	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	3822	\N
8821	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	3822	\N
8822	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	3822	\N
8823	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	3822	\N
8824	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	3822	\N
8825	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	3822	\N
8826	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	3822	\N
8827	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	3822	\N
8828	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	3822	\N
8829	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	3822	\N
8830	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	3822	\N
8831	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	3822	\N
8832	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	3822	\N
8833	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	3822	\N
8834	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	3822	\N
8835	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	3822	\N
8836	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	3822	\N
8837	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	3822	\N
8838	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	3822	\N
8839	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	3822	\N
8840	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	3822	\N
8841	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	3822	\N
8842	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	3822	\N
8843	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	3822	\N
8844	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	3822	\N
8845	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	3822	\N
8846	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	3822	\N
8847	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	3822	\N
8848	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	3822	\N
8849	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	3822	\N
8850	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	3822	\N
8851	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	3822	\N
8852	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	3822	\N
8853	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	3822	\N
8854	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	3822	\N
8855	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	3822	\N
8856	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	3822	\N
8857	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	3822	\N
8858	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	3822	\N
8859	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	3822	\N
8860	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	3822	\N
8861	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	3822	\N
8862	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	3822	\N
8863	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	3822	\N
8864	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	3822	\N
8865	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	3822	\N
8866	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	3822	\N
8867	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	3822	\N
8868	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	3822	\N
8869	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	3822	\N
8870	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	3822	\N
8871	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	3822	\N
8872	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	3822	\N
8873	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	3822	\N
8874	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	3822	\N
8875	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	3822	\N
8876	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	3822	\N
8877	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	3822	\N
8878	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	3822	\N
8879	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	3822	\N
8880	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	3822	\N
8881	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	3822	\N
8882	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	3822	\N
8883	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	3822	\N
8884	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	3822	\N
8885	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	3822	\N
8886	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	3822	\N
8887	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	3822	\N
8888	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	3822	\N
8889	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	3822	\N
8890	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	3822	\N
8891	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	3822	\N
8892	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	3822	\N
8893	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	3822	\N
8894	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	3822	\N
8895	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	3822	\N
8896	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	3822	\N
8897	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	3822	\N
8898	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	3822	\N
8899	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	3822	\N
8900	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	3822	\N
8901	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	3822	\N
8902	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	3822	\N
8903	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	3822	\N
8904	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	3822	\N
8905	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	3822	\N
8906	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	3822	\N
8907	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	3822	\N
8908	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	3822	\N
8909	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	3822	\N
8910	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	3822	\N
8911	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	3822	\N
8912	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	3822	\N
8913	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	3822	\N
8914	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	3822	\N
8915	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	3822	\N
8916	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	3822	\N
8917	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	3822	\N
8918	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	3822	\N
8919	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	3822	\N
8920	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	3822	\N
8921	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	3822	\N
8922	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	3822	\N
8923	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	3822	\N
8924	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	3822	\N
8925	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	3822	\N
8926	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	3822	\N
8927	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	3822	\N
8928	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	3822	\N
8929	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	3822	\N
8930	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	3822	\N
8931	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	3822	\N
8932	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	3822	\N
8933	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	3822	\N
8934	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	3822	\N
8935	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	3822	\N
8936	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	3822	\N
8937	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	3822	\N
8938	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	3822	\N
8939	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	3822	\N
8940	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	3822	\N
8941	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	3822	\N
8942	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	3822	\N
8943	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	3822	\N
8944	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	3822	\N
8945	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	3822	\N
8946	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	3822	\N
8947	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	3822	\N
8948	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	3822	\N
8949	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	3822	\N
8950	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	3822	\N
8951	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	3822	\N
8952	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	3822	\N
8953	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	3822	\N
8954	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	3822	\N
8955	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	3822	\N
8956	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	3822	\N
8957	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	3822	\N
8958	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	3822	\N
8959	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	3822	\N
8960	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	3822	\N
8961	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	3822	\N
8962	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	3822	\N
8963	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	3822	\N
8964	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	3822	\N
8965	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	3822	\N
8966	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	3822	\N
8967	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	3822	\N
8968	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	3822	\N
8969	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	3822	\N
8970	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	3822	\N
8971	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	3822	\N
8972	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	3822	\N
8973	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	3822	\N
8974	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	3822	\N
8975	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	3822	\N
8976	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	3822	\N
8977	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	3822	\N
8978	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	3822	\N
8979	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	3822	\N
8980	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	3822	\N
8981	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	3822	\N
8982	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	3822	\N
8983	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	3822	\N
8984	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	3822	\N
8985	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	3822	\N
8986	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	3822	\N
8987	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	3822	\N
8988	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	3822	\N
8989	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	3822	\N
8990	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	3822	\N
8991	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	3822	\N
8992	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	3822	\N
8993	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	3822	\N
8994	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	3822	\N
8995	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	3822	\N
8996	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	3822	\N
8997	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	3822	\N
8998	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	3822	\N
8999	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	3822	\N
9000	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	3822	\N
9001	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	3822	\N
9002	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	3822	\N
9003	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	3822	\N
9004	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	3822	\N
9005	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	3822	\N
9006	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	3822	\N
9007	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	3822	\N
9008	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	3822	\N
9009	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	3822	\N
9010	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	3822	\N
9011	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	3822	\N
9012	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	3822	\N
9013	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	3822	\N
9014	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	3822	\N
9015	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	3822	\N
9016	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	3822	\N
9017	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	3822	\N
9018	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	3822	\N
9019	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	3822	\N
9020	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	3822	\N
9021	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	3822	\N
9022	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	3822	\N
9023	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	3822	\N
9024	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	3822	\N
9025	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	3822	\N
9026	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	3822	\N
9027	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	3822	\N
9028	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	3822	\N
9029	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	3822	\N
9030	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	3822	\N
9031	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	3822	\N
9032	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	3822	\N
9033	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	3822	\N
9034	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	3822	\N
9035	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	3822	\N
9036	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	3822	\N
9037	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	3822	\N
9038	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	3822	\N
9039	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	3822	\N
9040	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	3822	\N
9041	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	3822	\N
9042	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	3822	\N
9043	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	3822	\N
9044	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	3822	\N
9045	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	3822	\N
9046	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	3822	\N
9047	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	3822	\N
9048	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	3822	\N
9049	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	3822	\N
9050	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	3822	\N
9051	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	3822	\N
9052	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	3822	\N
9053	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	3822	\N
9054	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	3822	\N
9055	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	3822	\N
9056	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	3822	\N
9057	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	3822	\N
9058	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	3822	\N
9059	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	3822	\N
9060	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	3822	\N
9061	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	3822	\N
9062	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	3822	\N
9063	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	3822	\N
9064	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	3822	\N
9065	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	3822	\N
9066	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	3822	\N
9067	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	3822	\N
9068	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	3822	\N
9069	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	3822	\N
9070	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	3822	\N
9071	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	3822	\N
9072	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	3822	\N
9073	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	3822	\N
9074	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	3822	\N
9075	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	3822	\N
9076	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	3822	\N
9077	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	3822	\N
9078	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	3822	\N
9079	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	3822	\N
9080	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	3822	\N
9081	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	3822	\N
9082	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	3822	\N
9083	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	3822	\N
9084	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	3822	\N
9085	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	3822	\N
9086	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	3822	\N
9087	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	3822	\N
9088	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	3822	\N
9089	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	3822	\N
9090	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	3822	\N
9091	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	3822	\N
9092	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	3822	\N
9093	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	3822	\N
9094	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	3822	\N
9095	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	3822	\N
9096	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	3822	\N
9097	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	3822	\N
9098	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	3822	\N
9099	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	3822	\N
9100	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	3822	\N
9101	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	3822	\N
9102	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	3822	\N
9103	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	3822	\N
9104	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	3822	\N
9105	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	3822	\N
9106	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	3822	\N
9107	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	3822	\N
9108	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	3822	\N
9109	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	3822	\N
9110	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	3822	\N
9111	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	3822	\N
9112	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	3822	\N
9113	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	3822	\N
9114	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	3822	\N
9115	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	3822	\N
9116	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	3822	\N
9117	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	3822	\N
9118	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	3822	\N
9119	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	3822	\N
9120	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	3822	\N
9121	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	3822	\N
9122	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	3822	\N
9123	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	3822	\N
9124	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	3822	\N
9125	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	3822	\N
9126	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	3822	\N
9127	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	3822	\N
9128	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	3822	\N
9129	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	3822	\N
9130	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	3822	\N
9131	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	3822	\N
9132	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	3822	\N
9133	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	3822	\N
9134	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	3822	\N
9135	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	3822	\N
9136	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	3822	\N
9137	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	3822	\N
9138	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	3822	\N
9139	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	3822	\N
9140	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	3822	\N
9141	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	3822	\N
9142	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	3822	\N
9143	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	3822	\N
9144	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	3822	\N
9145	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	3822	\N
9146	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	3822	\N
9147	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	3822	\N
9148	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	3822	\N
9149	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	3822	\N
9150	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	3822	\N
9151	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	3822	\N
9152	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	3822	\N
9153	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	3822	\N
9154	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	3822	\N
9155	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	3822	\N
9156	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	3822	\N
9157	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	3822	\N
9158	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	3822	\N
9159	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	3822	\N
9160	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	3822	\N
9161	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	3822	\N
9162	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	3822	\N
9163	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	3822	\N
9164	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	3822	\N
9165	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	3822	\N
9166	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	3822	\N
9167	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	3822	\N
9168	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	3822	\N
9169	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	3822	\N
9170	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	3822	\N
9171	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	3822	\N
9172	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	3822	\N
9173	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	3822	\N
9174	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	3822	\N
9175	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	3822	\N
9176	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	3822	\N
9177	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	3822	\N
9178	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	3822	\N
9179	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	3822	\N
9180	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	3822	\N
9181	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	3822	\N
9182	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	3822	\N
9183	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	3822	\N
9184	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	3822	\N
9185	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	3822	\N
9186	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	3822	\N
9187	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	3822	\N
9188	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	3822	\N
9189	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	3822	\N
9190	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	3822	\N
9191	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	3822	\N
9192	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	3822	\N
9193	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	3822	\N
9194	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	3822	\N
9195	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	3822	\N
9196	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	3822	\N
9197	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	3822	\N
9198	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	3822	\N
9199	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	3822	\N
9200	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	3822	\N
9201	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	3822	\N
9202	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	3822	\N
9203	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	3822	\N
9204	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	3822	\N
9205	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	3822	\N
9206	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	3822	\N
9207	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	3822	\N
9208	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	3822	\N
9209	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	3822	\N
9210	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	3822	\N
9211	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	3822	\N
9212	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	3822	\N
9213	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	3822	\N
9214	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	3822	\N
9215	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	3822	\N
9216	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	3822	\N
9217	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	3822	\N
9218	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	3822	\N
9219	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	3822	\N
9220	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	3822	\N
9221	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	3822	\N
9222	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	3822	\N
9223	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	3822	\N
9224	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	3822	\N
9225	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	3822	\N
9226	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	3822	\N
9227	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	3822	\N
9228	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	3822	\N
9229	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	3822	\N
9230	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	3822	\N
9231	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	3822	\N
9232	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	3822	\N
9233	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	3822	\N
9234	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	3822	\N
9235	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	3822	\N
9236	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	3822	\N
9237	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	3822	\N
9238	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	3822	\N
9239	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	3822	\N
9240	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	3822	\N
9241	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	3822	\N
9242	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	3822	\N
9243	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	3822	\N
9244	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	3822	\N
9245	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	3822	\N
9246	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	3822	\N
9247	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	3822	\N
9248	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	3822	\N
9249	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	3822	\N
9250	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	3822	\N
9251	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	3822	\N
9252	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	3822	\N
9253	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	3822	\N
9254	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	3822	\N
9255	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	3822	\N
9256	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	3822	\N
9257	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	3822	\N
9258	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	3822	\N
9259	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	3822	\N
9260	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	3822	\N
9261	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	3822	\N
9262	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	3822	\N
9263	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	3822	\N
9264	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	3822	\N
9265	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	3822	\N
9266	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	3822	\N
9267	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	3822	\N
9268	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	3822	\N
9269	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	3822	\N
9270	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	3822	\N
9271	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	3822	\N
9272	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	3822	\N
9273	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	3822	\N
9274	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	3822	\N
9275	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	3822	\N
9276	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	3822	\N
9277	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	3822	\N
9278	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	3822	\N
9279	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	3822	\N
9282	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	3822	\N
9283	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	413	3822	\N
9284	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	414	3822	\N
9285	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	3822	\N
9286	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	3822	\N
9287	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	3822	\N
9288	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	3822	\N
9295	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	31	3823	\N
9296	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	841	3823	\N
9297	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	32	3823	\N
9298	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	33	3823	\N
9299	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	34	3823	\N
9300	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	35	3823	\N
9301	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	36	3823	\N
9302	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	23	707	3823	\N
9303	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	37	3823	\N
9304	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	39	3823	\N
9305	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	40	3823	\N
9306	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	41	3823	\N
9307	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	42	3823	\N
9308	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	43	3823	\N
9281	0	0	0	0	0	0	0	5	2024-08-27 06:40:53.871519	5	3	2024-08-27 06:40:53.871519	3	1	2024-08-27 06:40:53.871519	1	2024-08-27 06:40:53.871519	73	411	3822	1
9309	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	44	3823	\N
9310	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	45	3823	\N
9311	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	46	3823	\N
9312	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	49	3823	\N
9313	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	50	3823	\N
9314	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	51	3823	\N
9315	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	52	3823	\N
9316	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	635	3823	\N
9317	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	738	3823	\N
9318	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	740	3823	\N
9319	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	861	3823	\N
9320	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	1053	3823	\N
9321	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	53	3823	\N
9322	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	54	3823	\N
9323	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	55	3823	\N
9324	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	56	3823	\N
9325	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	57	3823	\N
9326	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	58	3823	\N
9327	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	25	59	3823	\N
9328	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	61	3823	\N
9329	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	26	825	3823	\N
9330	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	62	3823	\N
9331	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	63	3823	\N
9332	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	64	3823	\N
9333	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	65	3823	\N
9334	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	66	3823	\N
9335	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	67	3823	\N
9336	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	68	3823	\N
9337	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	69	3823	\N
9338	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	70	3823	\N
9339	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	27	741	3823	\N
9340	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	71	3823	\N
9341	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	72	3823	\N
9342	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	73	3823	\N
9343	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	74	3823	\N
9344	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	76	3823	\N
9345	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	77	3823	\N
9346	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	78	3823	\N
9347	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	79	3823	\N
9348	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	80	3823	\N
9349	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	81	3823	\N
9350	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	82	3823	\N
9351	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	83	3823	\N
9352	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	84	3823	\N
9353	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	85	3823	\N
9354	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	905	3823	\N
9355	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	87	3823	\N
9356	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	723	3823	\N
9357	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	28	856	3823	\N
9358	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	88	3823	\N
9359	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	89	3823	\N
9360	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	90	3823	\N
9361	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	91	3823	\N
9362	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	92	3823	\N
9363	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	93	3823	\N
9364	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	94	3823	\N
9365	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	95	3823	\N
9366	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	96	3823	\N
9367	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	97	3823	\N
9368	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	98	3823	\N
9369	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	99	3823	\N
9370	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	100	3823	\N
9371	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	101	3823	\N
9372	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	103	3823	\N
9373	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	104	3823	\N
9374	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	105	3823	\N
9375	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	106	3823	\N
9376	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	107	3823	\N
9377	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	626	3823	\N
9378	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	688	3823	\N
9379	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	690	3823	\N
9380	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	29	925	3823	\N
9381	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	108	3823	\N
9382	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	109	3823	\N
9383	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	110	3823	\N
9384	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	111	3823	\N
9385	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	834	3823	\N
9386	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	30	703	3823	\N
9387	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	112	3823	\N
9388	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	113	3823	\N
9389	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	114	3823	\N
9390	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	115	3823	\N
9391	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	116	3823	\N
9392	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	117	3823	\N
9393	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	118	3823	\N
9394	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	119	3823	\N
9395	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	31	795	3823	\N
9396	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	121	3823	\N
9397	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	122	3823	\N
9398	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	123	3823	\N
9399	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	124	3823	\N
9400	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	126	3823	\N
9401	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	127	3823	\N
9402	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	128	3823	\N
9403	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	129	3823	\N
9404	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	130	3823	\N
9405	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	131	3823	\N
9406	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	132	3823	\N
9407	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	133	3823	\N
9408	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	134	3823	\N
9409	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1008	3823	\N
9410	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	627	3823	\N
9411	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	725	3823	\N
9412	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	727	3823	\N
9413	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	877	3823	\N
9414	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	32	1051	3823	\N
9415	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	135	3823	\N
9416	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	138	3823	\N
9417	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	139	3823	\N
9418	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	33	801	3823	\N
9419	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	140	3823	\N
9420	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	141	3823	\N
9421	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	142	3823	\N
9422	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	143	3823	\N
9423	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	144	3823	\N
9424	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	145	3823	\N
9425	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	146	3823	\N
9426	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	147	3823	\N
9427	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	665	3823	\N
9428	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	919	3823	\N
9429	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	916	3823	\N
9430	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	917	3823	\N
9431	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	918	3823	\N
9432	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	920	3823	\N
9433	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	34	921	3823	\N
9434	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	148	3823	\N
9435	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	149	3823	\N
9436	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	35	774	3823	\N
9437	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	150	3823	\N
9438	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	151	3823	\N
9439	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	152	3823	\N
9440	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	153	3823	\N
9441	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	154	3823	\N
9442	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	36	717	3823	\N
9443	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	155	3823	\N
9444	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	37	734	3823	\N
9445	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	160	3823	\N
9446	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	161	3823	\N
9447	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	162	3823	\N
9448	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	163	3823	\N
9449	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	165	3823	\N
9450	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	38	721	3823	\N
9451	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	166	3823	\N
9452	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	167	3823	\N
9453	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	168	3823	\N
9454	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	169	3823	\N
9455	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	170	3823	\N
9456	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	171	3823	\N
9457	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	172	3823	\N
9458	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	173	3823	\N
9459	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	174	3823	\N
9460	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	39	782	3823	\N
9461	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	175	3823	\N
9462	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	176	3823	\N
9463	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	177	3823	\N
9464	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	178	3823	\N
9465	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	179	3823	\N
9466	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	180	3823	\N
9467	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	181	3823	\N
9468	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	182	3823	\N
9469	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	183	3823	\N
9470	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	184	3823	\N
9471	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	185	3823	\N
9472	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	186	3823	\N
9473	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	633	3823	\N
9474	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	763	3823	\N
9475	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	41	765	3823	\N
9476	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	187	3823	\N
9477	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	188	3823	\N
9478	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	189	3823	\N
9479	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	190	3823	\N
9480	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	191	3823	\N
9481	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	192	3823	\N
9482	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	194	3823	\N
9483	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	195	3823	\N
9484	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	196	3823	\N
9485	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	197	3823	\N
9486	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	829	3823	\N
9487	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	199	3823	\N
9488	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	827	3823	\N
9489	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	1069	3823	\N
9490	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	928	3823	\N
9491	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	42	929	3823	\N
9492	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	200	3823	\N
9493	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	201	3823	\N
9494	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	202	3823	\N
9495	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	203	3823	\N
9496	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	45	705	3823	\N
9497	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	204	3823	\N
9498	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	205	3823	\N
9499	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	206	3823	\N
9500	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	207	3823	\N
9501	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	208	3823	\N
9502	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	209	3823	\N
9503	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	210	3823	\N
9504	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	803	3823	\N
9505	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	46	667	3823	\N
9506	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	212	3823	\N
9507	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	213	3823	\N
9508	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	214	3823	\N
9509	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	216	3823	\N
9510	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	217	3823	\N
9511	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	219	3823	\N
9512	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	48	220	3823	\N
9513	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	221	3823	\N
9514	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	224	3823	\N
9515	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	226	3823	\N
9516	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	49	699	3823	\N
9517	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	227	3823	\N
9518	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	50	676	3823	\N
9519	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	229	3823	\N
9520	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	230	3823	\N
9521	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	231	3823	\N
9522	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	678	3823	\N
9523	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	232	3823	\N
9524	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	233	3823	\N
9525	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	234	3823	\N
9526	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	235	3823	\N
9527	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	799	3823	\N
9528	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	52	858	3823	\N
9529	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	236	3823	\N
9530	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	237	3823	\N
9531	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	238	3823	\N
9532	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	239	3823	\N
9533	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	240	3823	\N
9534	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	241	3823	\N
9535	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	242	3823	\N
9536	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	243	3823	\N
9537	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	244	3823	\N
9538	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	245	3823	\N
9539	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	246	3823	\N
9540	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	247	3823	\N
9541	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	743	3823	\N
9542	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	53	857	3823	\N
9543	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	248	3823	\N
9544	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	249	3823	\N
9545	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	250	3823	\N
9546	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	251	3823	\N
9547	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	253	3823	\N
9548	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	254	3823	\N
9549	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	255	3823	\N
9550	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	256	3823	\N
9551	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	257	3823	\N
9552	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	259	3823	\N
9553	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	260	3823	\N
9554	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	261	3823	\N
9555	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	262	3823	\N
9556	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	263	3823	\N
9557	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	766	3823	\N
9558	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1061	3823	\N
9559	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	54	1047	3823	\N
9560	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	264	3823	\N
9561	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	265	3823	\N
9562	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	266	3823	\N
9563	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	267	3823	\N
9564	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	268	3823	\N
9565	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	269	3823	\N
9566	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	55	772	3823	\N
9567	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	270	3823	\N
9568	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	271	3823	\N
9569	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	272	3823	\N
9570	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	273	3823	\N
9571	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	274	3823	\N
9572	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1049	3823	\N
9573	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	277	3823	\N
9574	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	793	3823	\N
9575	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	57	1011	3823	\N
9576	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	278	3823	\N
9577	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	279	3823	\N
9578	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	280	3823	\N
9579	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	281	3823	\N
9580	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	282	3823	\N
9581	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	283	3823	\N
9582	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	284	3823	\N
9583	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	285	3823	\N
9584	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	286	3823	\N
9585	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	287	3823	\N
9586	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	836	3823	\N
9587	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	58	837	3823	\N
9588	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	290	3823	\N
9589	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	291	3823	\N
9590	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	292	3823	\N
9591	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	293	3823	\N
9592	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	996	3823	\N
9593	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	295	3823	\N
9594	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	296	3823	\N
9595	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	298	3823	\N
9596	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	299	3823	\N
9597	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	300	3823	\N
9598	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	301	3823	\N
9599	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	302	3823	\N
9600	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	303	3823	\N
9601	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	843	3823	\N
9602	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	389	3823	\N
9603	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	304	3823	\N
9604	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	305	3823	\N
9605	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	306	3823	\N
9606	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	307	3823	\N
9607	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	308	3823	\N
9608	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	655	3823	\N
9609	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	657	3823	\N
9610	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	862	3823	\N
9611	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	863	3823	\N
9612	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1012	3823	\N
9613	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	59	1018	3823	\N
9614	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	318	3823	\N
9615	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	319	3823	\N
9616	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	320	3823	\N
9617	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	321	3823	\N
9618	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	322	3823	\N
9619	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	323	3823	\N
9620	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	324	3823	\N
9621	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	325	3823	\N
9622	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	326	3823	\N
9623	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	327	3823	\N
9624	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	328	3823	\N
9625	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	820	3823	\N
9626	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	637	3823	\N
9627	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	60	821	3823	\N
9628	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	329	3823	\N
9629	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	330	3823	\N
9630	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	331	3823	\N
9631	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	332	3823	\N
9632	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	333	3823	\N
9633	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	334	3823	\N
9634	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	335	3823	\N
9635	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	336	3823	\N
9636	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	337	3823	\N
9637	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	338	3823	\N
9638	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	339	3823	\N
9639	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	340	3823	\N
9640	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	341	3823	\N
9641	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	342	3823	\N
9642	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	343	3823	\N
9643	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	344	3823	\N
9644	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	345	3823	\N
9645	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	346	3823	\N
9646	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	347	3823	\N
9647	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	349	3823	\N
9648	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	629	3823	\N
9649	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	784	3823	\N
9650	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	786	3823	\N
9651	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	62	912	3823	\N
9652	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	63	1010	3823	\N
9653	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	403	3823	\N
9654	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	352	3823	\N
9655	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	353	3823	\N
9656	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	354	3823	\N
9657	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	355	3823	\N
9658	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	719	3823	\N
9659	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	356	3823	\N
9660	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	357	3823	\N
9661	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	360	3823	\N
9662	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	711	3823	\N
9663	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	913	3823	\N
9664	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	64	927	3823	\N
9665	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	361	3823	\N
9666	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	362	3823	\N
9667	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	669	3823	\N
9668	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1020	3823	\N
9669	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	879	3823	\N
9670	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	65	1076	3823	\N
9671	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	366	3823	\N
9672	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	368	3823	\N
9673	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	369	3823	\N
9674	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	370	3823	\N
9675	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	371	3823	\N
9676	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	372	3823	\N
9677	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	373	3823	\N
9678	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	374	3823	\N
9679	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	377	3823	\N
9680	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	378	3823	\N
9681	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	671	3823	\N
9682	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1050	3823	\N
9683	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	860	3823	\N
9684	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1019	3823	\N
9685	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1032	3823	\N
9686	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	66	1033	3823	\N
9687	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	380	3823	\N
9688	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	381	3823	\N
9689	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	382	3823	\N
9690	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	383	3823	\N
9691	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	384	3823	\N
9692	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	385	3823	\N
9693	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	386	3823	\N
9694	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	387	3823	\N
9695	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	1068	3823	\N
9696	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	68	701	3823	\N
9697	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	388	3823	\N
9698	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	390	3823	\N
9699	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	391	3823	\N
9700	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	69	759	3823	\N
9701	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	392	3823	\N
9702	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	394	3823	\N
9703	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	70	395	3823	\N
9704	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	404	3823	\N
9705	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	405	3823	\N
9706	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	406	3823	\N
9707	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	407	3823	\N
9708	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	71	780	3823	\N
9709	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	408	3823	\N
9710	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	409	3823	\N
9711	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	72	845	3823	\N
9712	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1075	3823	\N
9713	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	674	3823	\N
9714	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	419	3823	\N
9715	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	421	3823	\N
9716	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	422	3823	\N
9717	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	423	3823	\N
9718	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	424	3823	\N
9719	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	425	3823	\N
9720	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	426	3823	\N
9721	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	74	1074	3823	\N
9722	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	428	3823	\N
9723	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	430	3823	\N
9724	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	431	3823	\N
9725	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	432	3823	\N
9726	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	433	3823	\N
9727	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	434	3823	\N
9728	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	435	3823	\N
9729	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	471	3823	\N
9730	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	437	3823	\N
9731	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	789	3823	\N
9732	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	75	1064	3823	\N
9733	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	438	3823	\N
9734	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	439	3823	\N
9735	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	440	3823	\N
9736	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	442	3823	\N
9737	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	443	3823	\N
9738	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	444	3823	\N
9739	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	445	3823	\N
9740	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	446	3823	\N
9741	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	850	3823	\N
9742	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	447	3823	\N
9743	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	448	3823	\N
9744	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	450	3823	\N
9745	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	451	3823	\N
9746	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	713	3823	\N
9747	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	870	3823	\N
9748	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	872	3823	\N
9749	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	874	3823	\N
9750	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	875	3823	\N
9751	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	452	3823	\N
9752	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	453	3823	\N
9753	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	454	3823	\N
9754	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	455	3823	\N
9755	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	456	3823	\N
9756	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	457	3823	\N
9757	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	458	3823	\N
9758	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	460	3823	\N
9759	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	461	3823	\N
9760	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	757	3823	\N
9761	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	77	878	3823	\N
9762	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	462	3823	\N
9763	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	463	3823	\N
9764	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	464	3823	\N
9765	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	465	3823	\N
9766	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	466	3823	\N
9767	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	467	3823	\N
9768	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	728	3823	\N
9769	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	78	915	3823	\N
9770	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	470	3823	\N
9771	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	1017	3823	\N
9772	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	79	745	3823	\N
9773	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	80	752	3823	\N
9774	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	473	3823	\N
9775	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	475	3823	\N
9776	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	81	730	3823	\N
9777	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	477	3823	\N
9778	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	478	3823	\N
9779	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	82	787	3823	\N
9780	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	479	3823	\N
9781	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	480	3823	\N
9782	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	481	3823	\N
9783	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	482	3823	\N
9784	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	83	770	3823	\N
9785	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	483	3823	\N
9786	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	484	3823	\N
9787	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	485	3823	\N
9788	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	686	3823	\N
9789	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1057	3823	\N
9790	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	959	3823	\N
9791	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	84	1035	3823	\N
9792	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	486	3823	\N
9793	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	487	3823	\N
9794	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	488	3823	\N
9795	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	489	3823	\N
9796	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	490	3823	\N
9797	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	491	3823	\N
9798	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	492	3823	\N
9799	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	652	3823	\N
9800	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	494	3823	\N
9801	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	495	3823	\N
9802	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	496	3823	\N
9803	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	497	3823	\N
9804	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	498	3823	\N
9805	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	499	3823	\N
9806	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	631	3823	\N
9807	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	651	3823	\N
9808	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	85	653	3823	\N
9809	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	500	3823	\N
9810	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	501	3823	\N
9811	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	680	3823	\N
9812	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	86	957	3823	\N
9813	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	502	3823	\N
9814	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	503	3823	\N
9815	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	504	3823	\N
9816	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	505	3823	\N
9817	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	506	3823	\N
9818	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	507	3823	\N
9819	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	682	3823	\N
9820	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	87	955	3823	\N
9821	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	509	3823	\N
9822	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	510	3823	\N
9823	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	511	3823	\N
9824	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	512	3823	\N
9825	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	513	3823	\N
9826	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	514	3823	\N
9827	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	515	3823	\N
9828	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	517	3823	\N
9829	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	518	3823	\N
9830	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	519	3823	\N
9831	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	520	3823	\N
9832	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	521	3823	\N
9833	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	522	3823	\N
9834	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	695	3823	\N
9835	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	88	1065	3823	\N
9836	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	523	3823	\N
9837	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	524	3823	\N
9838	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	525	3823	\N
9839	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	526	3823	\N
9840	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	527	3823	\N
9841	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	528	3823	\N
9842	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	89	776	3823	\N
9843	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	529	3823	\N
9844	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	530	3823	\N
9845	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	531	3823	\N
9846	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	532	3823	\N
9847	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	533	3823	\N
9848	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	91	534	3823	\N
9849	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	648	3823	\N
9850	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	536	3823	\N
9851	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	537	3823	\N
9852	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	538	3823	\N
9853	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	539	3823	\N
9854	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	541	3823	\N
9855	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	542	3823	\N
9856	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	543	3823	\N
9857	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	544	3823	\N
9858	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	545	3823	\N
9859	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	546	3823	\N
9860	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	547	3823	\N
9861	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	634	3823	\N
9862	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	649	3823	\N
9863	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	664	3823	\N
9864	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	92	1003	3823	\N
9865	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	548	3823	\N
9866	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	549	3823	\N
9867	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	550	3823	\N
9868	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	551	3823	\N
9869	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	552	3823	\N
9870	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	93	691	3823	\N
9871	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	4	3823	\N
9872	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	554	3823	\N
9873	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	555	3823	\N
9874	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	556	3823	\N
9875	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	94	778	3823	\N
9876	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	557	3823	\N
9877	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	558	3823	\N
9878	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	559	3823	\N
9879	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	560	3823	\N
9880	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	561	3823	\N
9881	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	562	3823	\N
9882	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	563	3823	\N
9883	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	564	3823	\N
9884	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	565	3823	\N
9885	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	566	3823	\N
9886	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	628	3823	\N
9887	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	754	3823	\N
9888	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	95	756	3823	\N
9889	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	567	3823	\N
9890	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	568	3823	\N
9891	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	569	3823	\N
9892	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	570	3823	\N
9893	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	571	3823	\N
9894	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	572	3823	\N
9895	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	573	3823	\N
9896	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	574	3823	\N
9897	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	575	3823	\N
9898	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	576	3823	\N
9899	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	577	3823	\N
9900	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	578	3823	\N
9901	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	579	3823	\N
9902	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	580	3823	\N
9903	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	736	3823	\N
9904	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	96	1007	3823	\N
9905	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	581	3823	\N
9906	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	582	3823	\N
9907	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	583	3823	\N
9908	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	584	3823	\N
9909	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	585	3823	\N
9910	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	586	3823	\N
9911	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	587	3823	\N
9912	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	590	3823	\N
9913	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	591	3823	\N
9914	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	592	3823	\N
9915	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	632	3823	\N
9916	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	749	3823	\N
9917	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	97	751	3823	\N
9918	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	818	3823	\N
9919	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	11	823	3823	\N
9920	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	594	3823	\N
9921	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	595	3823	\N
9922	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	596	3823	\N
9923	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	597	3823	\N
9924	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	598	3823	\N
9925	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	599	3823	\N
9926	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	98	600	3823	\N
9927	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	1059	3823	\N
9928	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	601	3823	\N
9929	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	602	3823	\N
9930	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	603	3823	\N
9931	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	604	3823	\N
9932	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	605	3823	\N
9933	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	606	3823	\N
9934	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	99	854	3823	\N
9935	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	608	3823	\N
9936	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	761	3823	\N
9937	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	100	924	3823	\N
9938	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	609	3823	\N
9939	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	660	3823	\N
9940	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	101	922	3823	\N
9941	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	610	3823	\N
9942	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	693	3823	\N
9943	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	102	923	3823	\N
9944	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	611	3823	\N
9945	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	612	3823	\N
9946	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	103	684	3823	\N
9947	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	613	3823	\N
9948	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	614	3823	\N
9949	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	615	3823	\N
9950	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	616	3823	\N
9951	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	618	3823	\N
9952	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	619	3823	\N
9953	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	620	3823	\N
9954	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	709	3823	\N
9955	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	104	1066	3823	\N
9956	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	621	3823	\N
9957	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	622	3823	\N
9958	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	623	3823	\N
9959	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	624	3823	\N
9960	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	625	3823	\N
9961	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	732	3823	\N
9962	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	105	1034	3823	\N
9963	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	641	3823	\N
9964	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	110	791	3823	\N
9965	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	807	3823	\N
9966	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	805	3823	\N
9967	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	809	3823	\N
9968	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	810	3823	\N
9969	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	811	3823	\N
9970	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	812	3823	\N
9971	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	813	3823	\N
9972	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	814	3823	\N
9973	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	815	3823	\N
9974	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1004	3823	\N
9975	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	112	1021	3823	\N
9976	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	847	3823	\N
9977	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	114	848	3823	\N
9978	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	880	3823	\N
9979	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	881	3823	\N
9980	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	882	3823	\N
9981	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	883	3823	\N
9982	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	884	3823	\N
9983	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	118	1031	3823	\N
9984	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	894	3823	\N
9985	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	889	3823	\N
9986	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	887	3823	\N
9987	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	892	3823	\N
9988	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	900	3823	\N
9989	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	899	3823	\N
9990	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	897	3823	\N
9991	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	896	3823	\N
9992	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	898	3823	\N
9993	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	891	3823	\N
9994	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	886	3823	\N
9995	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	993	3823	\N
9996	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	994	3823	\N
9997	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	995	3823	\N
9998	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	119	1000	3823	\N
9999	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	907	3823	\N
10000	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	908	3823	\N
10001	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	909	3823	\N
10002	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	910	3823	\N
10003	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	911	3823	\N
10004	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	123	1005	3823	\N
10005	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	1	3823	\N
10006	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	2	3823	\N
10007	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	3	3823	\N
10008	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	10	832	3823	\N
10009	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	5	3823	\N
10010	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	12	816	3823	\N
10011	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	6	3823	\N
10012	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	8	3823	\N
10013	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	9	3823	\N
10014	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	10	3823	\N
10015	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	830	3823	\N
10016	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	13	869	3823	\N
10017	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	11	3823	\N
10018	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	12	3823	\N
10019	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	747	3823	\N
10020	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	14	873	3823	\N
10021	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	13	3823	\N
10022	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	14	3823	\N
10023	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	15	3823	\N
10024	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	16	3823	\N
10025	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	15	768	3823	\N
10026	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	20	662	3823	\N
10027	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	21	26	3823	\N
10028	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	22	797	3823	\N
10029	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	24	38	3823	\N
10030	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	51	228	3823	\N
10031	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	76	449	3823	\N
10032	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	1030	3823	\N
10033	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	124	999	3823	\N
10034	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1073	3823	\N
10035	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1072	3823	\N
10036	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1070	3823	\N
10037	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	127	1002	3823	\N
10038	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1022	3823	\N
10039	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	128	1025	3823	\N
10040	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1026	3823	\N
10041	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1027	3823	\N
10042	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1028	3823	\N
10043	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	130	1029	3823	\N
10044	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1036	3823	\N
10045	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	131	1037	3823	\N
10046	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1040	3823	\N
10047	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1041	3823	\N
10048	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1042	3823	\N
10049	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1043	3823	\N
10050	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1045	3823	\N
10051	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	133	1044	3823	\N
10052	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	134	1052	3823	\N
10053	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	154	1056	3823	\N
10054	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	410	3823	\N
10055	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	411	3823	\N
10056	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	412	3823	\N
10057	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	413	3823	\N
10058	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	414	3823	\N
10059	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	416	3823	\N
10060	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	417	3823	\N
10061	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	418	3823	\N
10062	0	0	0	0	0	0	0	0	\N	\N	0	\N	\N	0	\N	\N	\N	73	839	3823	\N
8752	0	0	0	0	0	0	0	0	2024-08-27 06:26:22.368366	0	5	2024-08-27 06:26:22.368366	5	0	2024-08-27 06:26:22.368366	0	2024-08-27 06:26:22.368366	52	235	3822	1
8750	0	0	0	0	0	0	0	2	2024-08-27 06:31:24.09287	2	2	2024-08-27 06:31:24.09287	2	5	2024-08-27 06:31:24.09287	5	2024-08-27 06:31:24.09287	52	233	3822	1
9280	0	0	0	0	0	0	0	8	2024-08-27 06:39:00.965516	8	0	2024-08-27 06:39:00.965516	0	0	2024-08-27 06:39:00.965516	0	2024-08-27 06:39:00.965516	73	410	3822	1
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
3	2024-06-21 09:54:29.098509	dfbvsdfbvdfbsdf	2024-06-23 22:00:00	t	2024-06-20 22:00:00	dfgdfd	73	1
6	2024-06-21 11:27:59.634268	fbfbfdgbdf	2024-06-23 22:00:00	t	2024-06-20 22:00:00	fghbfdgfbd	73	1
8	2024-06-21 11:28:33.454168	fdgbdfgbdfg df	2024-06-23 22:00:00	t	2024-06-20 22:00:00	gbdfgbdfbdf	73	1
9	2024-06-24 06:33:06.248787	wsdfsdfvdsfvsdfvfv	2024-06-26 22:00:00	t	2024-06-23 22:00:00	test - 13	73	1
11	2024-06-24 06:36:01.719902	sdfsdcvsdcvsdf sdf s f	2024-06-26 22:00:00	t	2024-06-23 22:00:00	test 131	73	1
12	2024-06-24 07:58:00.121087	dfvdf d fdf sd	2024-06-26 22:00:00	t	2024-06-23 22:00:00	sfvdfvdsfv	73	1
13	2024-06-24 08:16:43.16992	dfvdf d fdf sd	2024-06-26 22:00:00	t	2024-06-23 22:00:00	sfvdfvdsfv	73	1
14	2024-06-24 12:48:10.045116	cvbcbcbcvbfgb cvbb fg f 	2024-06-26 22:00:00	t	2024-06-23 22:00:00	cvbcbcbc	73	1
4	2024-06-21 10:30:20.676475	Test z załacznikiem	2024-06-23 22:00:00	f	2024-06-20 22:00:00	Test z załacznikiem	73	1
7	2024-06-21 11:28:17.295433	fdgbdfgbdfg df	2024-06-23 22:00:00	f	2024-06-20 22:00:00	gbdfgbdfbdf	73	1
10	2024-06-24 06:33:23.28121	wsdfsdfvdsfvsdfvfv	2024-06-26 22:00:00	f	2024-06-23 22:00:00	test - 13	73	1
15	2024-06-27 11:55:00.049294	To jest test zapisu - WKRM	2024-06-29 22:00:00	f	2024-06-26 22:00:00	test - wkrm	73	1
16	2024-06-28 10:20:48.407793	Test komunikatu	2024-06-30 22:00:00	t	2024-06-27 22:00:00	Testowy komunikat	73	1
17	2024-06-28 10:26:17.502119		2024-06-30 22:00:00	t	2024-06-27 22:00:00	Test - wiele załączników	73	1
18	2024-06-28 10:28:16.707556		2024-06-30 22:00:00	t	2024-06-27 22:00:00	Test inny rodzaj pliku	73	1
1	2024-06-21 09:39:33.653116	To jest test - bez załacznika	2024-06-23 22:00:00	f	2024-06-20 22:00:00	To jest test - bez załacznika	73	1
2	2024-06-21 09:43:12.871852	To jest test - bez załacznika2	2024-06-23 22:00:00	f	2024-06-20 22:00:00	To jest test - bez załacznika2	73	1
5	2024-06-21 10:30:36.623076	dvdfvdsfvds	2024-06-23 22:00:00	f	2024-06-20 22:00:00	sdfscs	73	1
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
1	notatka - newton.docx	uploadMessages\\notatka - newton.docx	t	4
2	Pismo do BA - dostęp do SIOS.docx	uploadMessages\\Pismo do BA - dostęp do SIOS.docx	t	5
3	instrukcja - wata.docx	uploadMessages\\instrukcja - wata.docx	t	6
4	notatka - klimatyzatory.docx	uploadMessages\\notatka - klimatyzatory.docx	t	8
5	kierownik.docx	uploadMessages\\kierownik.docx	t	9
6	Łączność radiowa pismo do MZ(2).docx	uploadMessages\\Łączność radiowa pismo do MZ(2).docx	t	9
7	Łączność radiowa pismo do MZ-projekt.docx	uploadMessages\\Łączność radiowa pismo do MZ-projekt.docx	t	9
8	notatka - intelij.docx	uploadMessages\\notatka - intelij.docx	t	9
9	Pismo do WZK - radio.docx	uploadMessages\\Pismo do WZK - radio.docx	t	10
10	Zlecenie Poligrafia- PR wydruk map.docx	uploadMessages\\Zlecenie Poligrafia- PR wydruk map.docx	t	11
11	Pismo - Zamknięcie KZW (Rydułtowy Wodzisław Śl.).docx	uploadMessages\\Pismo - Zamknięcie KZW (Rydułtowy Wodzisław Śl.).docx	t	13
12	Projekt procedury awaryjnej dot. agregatów v5_1.docx	uploadMessages\\Projekt procedury awaryjnej dot. agregatów v5_1.docx	t	15
13	Projekt umowy - radio_v10_po_konsultacjach_NP_i_ZP do akceptacji.docx	uploadMessages\\Projekt umowy - radio_v10_po_konsultacjach_NP_i_ZP do akceptacji.docx	t	16
14	Projekt procedury awaryjnej dot. agregatów v2.docx	uploadMessages\\Projekt procedury awaryjnej dot. agregatów v2.docx	t	17
15	Projekt procedury awaryjnej dot. agregatów v3.docx	uploadMessages\\Projekt procedury awaryjnej dot. agregatów v3.docx	t	17
16	Projekt procedury awaryjnej dot. agregatów v5.docx	uploadMessages\\Projekt procedury awaryjnej dot. agregatów v5.docx	t	17
17	2024-06-25 Odp. KCMRM do Śląskiego UW ws. technicznego zamknięcia KZW.pdf	uploadMessages\\2024-06-25 Odp. KCMRM do Śląskiego UW ws. technicznego zamknięcia KZW.pdf	t	18
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
1366	2017-07-01
1367	2017-07-02
1368	2017-07-03
1369	2017-07-04
1370	2017-07-05
1371	2017-07-06
1372	2017-07-07
1373	2017-07-08
1374	2017-07-09
1375	2017-07-10
1376	2017-07-11
1377	2017-07-12
1378	2017-07-13
1379	2017-07-14
1380	2017-07-15
1381	2017-07-16
1382	2017-07-17
1383	2017-07-18
1384	2017-07-19
1385	2017-07-20
1386	2017-07-21
1387	2017-07-22
1388	2017-07-23
1389	2017-07-24
1390	2017-07-25
1391	2017-07-26
1392	2017-07-27
1393	2017-07-28
1394	2017-07-29
1395	2017-07-30
1396	2017-07-31
1397	2017-08-01
1398	2017-08-02
1399	2017-08-03
1400	2017-08-04
1401	2017-08-05
1402	2017-08-06
1403	2017-08-07
1404	2017-08-08
1405	2017-08-09
1406	2017-08-10
1407	2017-08-11
1408	2017-08-12
1409	2017-08-13
1410	2017-08-14
1411	2017-08-15
1412	2017-08-16
1413	2017-08-17
1414	2017-08-18
1415	2017-08-19
1416	2017-08-20
1417	2017-08-21
1418	2017-08-22
1419	2017-08-23
1420	2017-08-24
1421	2017-08-25
1422	2017-08-26
1423	2017-08-27
1424	2017-08-28
1425	2017-08-29
1426	2017-08-30
1427	2017-08-31
1428	2017-09-01
1429	2017-09-02
1430	2017-09-03
1431	2017-09-04
1432	2017-09-05
1433	2017-09-06
1434	2017-09-07
1435	2017-09-08
1436	2017-09-09
1437	2017-09-10
1438	2017-09-11
1439	2017-09-12
1440	2017-09-13
1441	2017-09-14
1442	2017-09-15
1443	2017-09-16
1444	2017-09-17
1445	2017-09-18
1446	2017-09-19
1447	2017-09-20
1448	2017-09-21
1449	2017-09-22
1450	2017-09-23
1451	2017-09-24
1452	2017-09-25
1453	2017-09-26
1454	2017-09-27
1455	2017-09-28
1456	2017-09-29
1457	2017-09-30
1458	2017-10-01
1459	2017-10-02
1460	2017-10-03
1461	2017-10-04
1462	2017-10-05
1463	2017-10-06
1464	2017-10-07
1465	2017-10-08
1466	2017-10-09
1467	2017-10-10
1468	2017-10-11
1469	2017-10-12
1470	2017-10-13
1471	2017-10-14
1472	2017-10-15
1473	2017-10-16
1474	2017-10-17
1475	2017-10-18
1476	2017-10-19
1477	2017-10-20
1478	2017-10-21
1479	2017-10-22
1480	2017-10-23
1481	2017-10-24
1482	2017-10-25
1483	2017-10-26
1484	2017-10-27
1485	2017-10-28
1486	2017-10-29
1487	2017-10-30
1488	2017-10-31
1489	2017-11-01
1490	2017-11-02
1491	2017-11-03
1492	2017-11-04
1493	2017-11-05
1494	2017-11-06
1495	2017-11-07
1496	2017-11-08
1497	2017-11-09
1498	2017-11-10
1499	2017-11-11
1500	2017-11-12
1501	2017-11-13
1502	2017-11-14
1503	2017-11-15
1504	2017-11-16
1505	2017-11-17
1506	2017-11-18
1507	2017-11-19
1508	2017-11-20
1509	2017-11-21
1510	2017-11-22
1511	2017-11-23
1512	2017-11-24
1513	2017-11-25
1514	2017-11-26
1515	2017-11-27
1516	2017-11-28
1517	2017-11-29
1518	2017-11-30
1519	2017-12-01
1520	2017-12-02
1521	2017-12-03
1522	2017-12-04
1523	2017-12-05
1524	2017-12-06
1525	2017-12-07
1526	2017-12-08
1527	2017-12-09
1528	2017-12-10
1529	2017-12-11
1530	2017-12-12
1531	2017-12-13
1532	2017-12-14
1533	2017-12-15
1534	2017-12-16
1535	2017-12-17
1536	2017-12-18
1537	2017-12-19
1538	2017-12-20
1539	2017-12-21
1540	2017-12-22
1541	2017-12-23
1542	2017-12-24
1543	2017-12-25
1544	2017-12-26
1545	2017-12-27
1546	2017-12-28
1547	2017-12-29
1548	2017-12-30
1549	2017-12-31
1550	2018-01-01
1551	2018-01-02
1552	2018-01-03
1553	2018-01-04
1554	2018-01-05
1555	2018-01-06
1556	2018-01-07
1557	2018-01-08
1558	2018-01-09
1559	2018-01-10
1560	2018-01-11
1561	2018-01-12
1562	2018-01-13
1563	2018-01-14
1564	2018-01-15
1565	2018-01-16
1566	2018-01-17
1567	2018-01-18
1568	2018-01-19
1569	2018-01-20
1570	2018-01-21
1571	2018-01-22
1572	2018-01-23
1573	2018-01-24
1574	2018-01-25
1575	2018-01-26
1576	2018-01-27
1577	2018-01-28
1578	2018-01-29
1579	2018-01-30
1580	2018-01-31
1581	2018-02-01
1582	2018-02-02
1583	2018-02-03
1584	2018-02-04
1585	2018-02-05
1586	2018-02-06
1587	2018-02-07
1588	2018-02-08
1589	2018-02-09
1590	2018-02-10
1591	2018-02-11
1592	2018-02-12
1593	2018-02-13
1594	2018-02-14
1595	2018-02-15
1596	2018-02-16
1597	2018-02-17
1598	2018-02-18
1599	2018-02-19
1600	2018-02-20
1601	2018-02-21
1602	2018-02-22
1603	2018-02-23
1604	2018-02-24
1605	2018-02-25
1606	2018-02-26
1607	2018-02-27
1608	2018-02-28
1609	2018-03-01
1610	2018-03-02
1611	2018-03-03
1612	2018-03-04
1613	2018-03-05
1614	2018-03-06
1615	2018-03-07
1616	2018-03-08
1617	2018-03-09
1618	2018-03-10
1619	2018-03-11
1620	2018-03-12
1621	2018-03-13
1622	2018-03-14
1623	2018-03-15
1624	2018-03-16
1625	2018-03-17
1626	2018-03-18
1627	2018-03-19
1628	2018-03-20
1629	2018-03-21
1630	2018-03-22
1631	2018-03-23
1632	2018-03-24
1633	2018-03-25
1634	2018-03-26
1635	2018-03-27
1636	2018-03-28
1637	2018-03-29
1638	2018-03-30
1639	2018-03-31
1640	2018-04-01
1641	2018-04-02
1642	2018-04-03
1643	2018-04-04
1644	2018-04-05
1645	2018-04-06
1646	2018-04-07
1647	2018-04-08
1648	2018-04-09
1649	2018-04-10
1650	2018-04-11
1651	2018-04-12
1652	2018-04-13
1653	2018-04-14
1654	2018-04-15
1655	2018-04-16
1656	2018-04-17
1657	2018-04-18
1658	2018-04-19
1659	2018-04-20
1660	2018-04-21
1661	2018-04-22
1662	2018-04-23
1663	2018-04-24
1664	2018-04-25
1665	2018-04-26
1666	2018-04-27
1667	2018-04-28
1668	2018-04-29
1669	2018-04-30
1670	2018-05-01
1671	2018-05-02
1672	2018-05-03
1673	2018-05-04
1674	2018-05-05
1675	2018-05-06
1676	2018-05-07
1677	2018-05-08
1678	2018-05-09
1679	2018-05-10
1680	2018-05-11
1681	2018-05-12
1682	2018-05-13
1683	2018-05-14
1684	2018-05-15
1685	2018-05-16
1686	2018-05-17
1687	2018-05-18
1688	2018-05-19
1689	2018-05-20
1690	2018-05-21
1691	2018-05-22
1692	2018-05-23
1693	2018-05-24
1694	2018-05-25
1695	2018-05-26
1696	2018-05-27
1697	2018-05-28
1698	2018-05-29
1699	2018-05-30
1700	2018-05-31
1701	2018-06-01
1702	2018-06-02
1703	2018-06-03
1704	2018-06-04
1705	2018-06-05
1706	2018-06-06
1707	2018-06-07
1708	2018-06-08
1709	2018-06-09
1710	2018-06-10
1711	2018-06-11
1712	2018-06-12
1713	2018-06-13
1714	2018-06-14
1715	2018-06-15
1716	2018-06-16
1717	2018-06-17
1718	2018-06-18
1719	2018-06-19
1720	2018-06-20
1721	2018-06-21
1722	2018-06-22
1723	2018-06-23
1724	2018-06-24
1725	2018-06-25
1726	2018-06-26
1727	2018-06-27
1728	2018-06-28
1729	2018-06-29
1730	2018-06-30
1731	2018-07-01
1732	2018-07-02
1733	2018-07-03
1734	2018-07-04
1735	2018-07-05
1736	2018-07-06
1737	2018-07-07
1738	2018-07-08
1739	2018-07-09
1740	2018-07-10
1741	2018-07-11
1742	2018-07-12
1743	2018-07-13
1744	2018-07-14
1745	2018-07-15
1746	2018-07-16
1747	2018-07-17
1748	2018-07-18
1749	2018-07-19
1750	2018-07-20
1751	2018-07-21
1752	2018-07-22
1753	2018-07-23
1754	2018-07-24
1755	2018-07-25
1756	2018-07-26
1757	2018-07-27
1758	2018-07-28
1759	2018-07-29
1760	2018-07-30
1761	2018-07-31
1762	2018-08-01
1763	2018-08-02
1764	2018-08-03
1765	2018-08-04
1766	2018-08-05
1767	2018-08-06
1768	2018-08-07
1769	2018-08-08
1770	2018-08-09
1771	2018-08-10
1772	2018-08-11
1773	2018-08-12
1774	2018-08-13
1775	2018-08-14
1776	2018-08-15
1777	2018-08-16
1778	2018-08-17
1779	2018-08-18
1780	2018-08-19
1781	2018-08-20
1782	2018-08-21
1783	2018-08-22
1784	2018-08-23
1785	2018-08-24
1786	2018-08-25
1787	2018-08-26
1788	2018-08-27
1789	2018-08-28
1790	2018-08-29
1791	2018-08-30
1792	2018-08-31
1793	2018-09-01
1794	2018-09-02
1795	2018-09-03
1796	2018-09-04
1797	2018-09-05
1798	2018-09-06
1799	2018-09-07
1800	2018-09-08
1801	2018-09-09
1802	2018-09-10
1803	2018-09-11
1804	2018-09-12
1805	2018-09-13
1806	2018-09-14
1807	2018-09-15
1808	2018-09-16
1809	2018-09-17
1810	2018-09-18
1811	2018-09-19
1812	2018-09-20
1813	2018-09-21
1814	2018-09-22
1815	2018-09-23
1816	2018-09-24
1817	2018-09-25
1818	2018-09-26
1819	2018-09-27
1820	2018-09-28
1821	2018-09-29
1822	2018-09-30
1823	2018-10-01
1824	2018-10-02
1825	2018-10-03
1826	2018-10-04
1827	2018-10-05
1828	2018-10-06
1829	2018-10-07
1830	2018-10-08
1831	2018-10-09
1832	2018-10-10
1833	2018-10-11
1834	2018-10-12
1835	2018-10-13
1836	2018-10-14
1837	2018-10-15
1838	2018-10-16
1839	2018-10-17
1840	2018-10-18
1841	2018-10-19
1842	2018-10-20
1843	2018-10-21
1844	2018-10-22
1845	2018-10-23
1846	2018-10-24
1847	2018-10-25
1848	2018-10-26
1849	2018-10-27
1850	2018-10-28
1851	2018-10-29
1852	2018-10-30
1853	2018-10-31
1854	2018-11-01
1855	2018-11-02
1856	2018-11-03
1857	2018-11-04
1858	2018-11-05
1859	2018-11-06
1860	2018-11-07
1861	2018-11-08
1862	2018-11-09
1863	2018-11-10
1864	2018-11-11
1865	2018-11-12
1866	2018-11-13
1867	2018-11-14
1868	2018-11-15
1869	2018-11-16
1870	2018-11-17
1871	2018-11-18
1872	2018-11-19
1873	2018-11-20
1874	2018-11-21
1875	2018-11-22
1876	2018-11-23
1877	2018-11-24
1878	2018-11-25
1879	2018-11-26
1880	2018-11-27
1881	2018-11-28
1882	2018-11-29
1883	2018-11-30
1884	2018-12-01
1885	2018-12-02
1886	2018-12-03
1887	2018-12-04
1888	2018-12-05
1889	2018-12-06
1890	2018-12-07
1891	2018-12-08
1892	2018-12-09
1893	2018-12-10
1894	2018-12-11
1895	2018-12-12
1896	2018-12-13
1897	2018-12-14
1898	2018-12-15
1899	2018-12-16
1900	2018-12-17
1901	2018-12-18
1902	2018-12-19
1903	2018-12-20
1904	2018-12-21
1905	2018-12-22
1906	2018-12-23
1907	2018-12-24
1908	2018-12-25
1909	2018-12-26
1910	2018-12-27
1911	2018-12-28
1912	2018-12-29
1913	2018-12-30
1914	2018-12-31
1915	2019-01-01
1916	2019-01-02
1917	2019-01-03
1918	2019-01-04
1919	2019-01-05
1920	2019-01-06
1921	2019-01-07
1922	2019-01-08
1923	2019-01-09
1924	2019-01-10
1925	2019-01-11
1926	2019-01-12
1927	2019-01-13
1928	2019-01-14
1929	2019-01-15
1930	2019-01-16
1931	2019-01-17
1932	2019-01-18
1933	2019-01-19
1934	2019-01-20
1935	2019-01-21
1936	2019-01-22
1937	2019-01-23
1938	2019-01-24
1939	2019-01-25
1940	2019-01-26
1941	2019-01-27
1942	2019-01-28
1943	2019-01-29
1944	2019-01-30
1945	2019-01-31
1946	2019-02-01
1947	2019-02-02
1948	2019-02-03
1949	2019-02-04
1950	2019-02-05
1951	2019-02-06
1952	2019-02-07
1953	2019-02-08
1954	2019-02-09
1955	2019-02-10
1956	2019-02-11
1957	2019-02-12
1958	2019-02-13
1959	2019-02-14
1960	2019-02-15
1961	2019-02-16
1962	2019-02-17
1963	2019-02-18
1964	2019-02-19
1965	2019-02-20
1966	2019-02-21
1967	2019-02-22
1968	2019-02-23
1969	2019-02-24
1970	2019-02-25
1971	2019-02-26
1972	2019-02-27
1973	2019-02-28
1974	2019-03-01
1975	2019-03-02
1976	2019-03-03
1977	2019-03-04
1978	2019-03-05
1979	2019-03-06
1980	2019-03-07
1981	2019-03-08
1982	2019-03-09
1983	2019-03-10
1984	2019-03-11
1985	2019-03-12
1986	2019-03-13
1987	2019-03-14
1988	2019-03-15
1989	2019-03-16
1990	2019-03-17
1991	2019-03-18
1992	2019-03-19
1993	2019-03-20
1994	2019-03-21
1995	2019-03-22
1996	2019-03-23
1997	2019-03-24
1998	2019-03-25
1999	2019-03-26
2000	2019-03-27
2001	2019-03-28
2002	2019-03-29
2003	2019-03-30
2004	2019-03-31
2005	2019-04-01
2006	2019-04-02
2007	2019-04-03
2008	2019-04-04
2009	2019-04-05
2010	2019-04-06
2011	2019-04-07
2012	2019-04-08
2013	2019-04-09
2014	2019-04-10
2015	2019-04-11
2016	2019-04-12
2017	2019-04-13
2018	2019-04-14
2019	2019-04-15
2020	2019-04-16
2021	2019-04-17
2022	2019-04-18
2023	2019-04-19
2024	2019-04-20
2025	2019-04-21
2026	2019-04-22
2027	2019-04-23
2028	2019-04-24
2029	2019-04-25
2030	2019-04-26
2031	2019-04-27
2032	2019-04-28
2033	2019-04-29
2034	2019-04-30
2035	2019-05-01
2036	2019-05-02
2037	2019-05-03
2038	2019-05-04
2039	2019-05-05
2040	2019-05-06
2041	2019-05-07
2042	2019-05-08
2043	2019-05-09
2044	2019-05-10
2045	2019-05-11
2046	2019-05-12
2047	2019-05-13
2048	2019-05-14
2049	2019-05-15
2050	2019-05-16
2051	2019-05-17
2052	2019-05-18
2053	2019-05-19
2054	2019-05-20
2055	2019-05-21
2056	2019-05-22
2057	2019-05-23
2058	2019-05-24
2059	2019-05-25
2060	2019-05-26
2061	2019-05-27
2062	2019-05-28
2063	2019-05-29
2064	2019-05-30
2065	2019-05-31
2066	2019-06-01
2067	2019-06-02
2068	2019-06-03
2069	2019-06-04
2070	2019-06-05
2071	2019-06-06
2072	2019-06-07
2073	2019-06-08
2074	2019-06-09
2075	2019-06-10
2076	2019-06-11
2077	2019-06-12
2078	2019-06-13
2079	2019-06-14
2080	2019-06-15
2081	2019-06-16
2082	2019-06-17
2083	2019-06-18
2084	2019-06-19
2085	2019-06-20
2086	2019-06-21
2087	2019-06-22
2088	2019-06-23
2089	2019-06-24
2090	2019-06-25
2091	2019-06-26
2092	2019-06-27
2093	2019-06-28
2094	2019-06-29
2095	2019-06-30
2096	2019-07-01
2097	2019-07-02
2098	2019-07-03
2099	2019-07-04
2100	2019-07-05
2101	2019-07-06
2102	2019-07-07
2103	2019-07-08
2104	2019-07-09
2105	2019-07-10
2106	2019-07-11
2107	2019-07-12
2108	2019-07-13
2109	2019-07-14
2110	2019-07-15
2111	2019-07-16
2112	2019-07-17
2113	2019-07-18
2114	2019-07-19
2115	2019-07-20
2116	2019-07-21
2117	2019-07-22
2118	2019-07-23
2119	2019-07-24
2120	2019-07-25
2121	2019-07-26
2122	2019-07-27
2123	2019-07-28
2124	2019-07-29
2125	2019-07-30
2126	2019-07-31
2127	2019-08-01
2128	2019-08-02
2129	2019-08-03
2130	2019-08-04
2131	2019-08-05
2132	2019-08-06
2133	2019-08-07
2134	2019-08-08
2135	2019-08-09
2136	2019-08-10
2137	2019-08-11
2138	2019-08-12
2139	2019-08-13
2140	2019-08-14
2141	2019-08-15
2142	2019-08-16
2143	2019-08-17
2144	2019-08-18
2145	2019-08-19
2146	2019-08-20
2147	2019-08-21
2148	2019-08-22
2149	2019-08-23
2150	2019-08-24
2151	2019-08-25
2152	2019-08-26
2153	2019-08-27
2154	2019-08-28
2155	2019-08-29
2156	2019-08-30
2157	2019-08-31
2158	2019-09-01
2159	2019-09-02
2160	2019-09-03
2161	2019-09-04
2162	2019-09-05
2163	2019-09-06
2164	2019-09-07
2165	2019-09-08
2166	2019-09-09
2167	2019-09-10
2168	2019-09-11
2169	2019-09-12
2170	2019-09-13
2171	2019-09-14
2172	2019-09-15
2173	2019-09-16
2174	2019-09-17
2175	2019-09-18
2176	2019-09-19
2177	2019-09-20
2178	2019-09-21
2179	2019-09-22
2180	2019-09-23
2181	2019-09-24
2182	2019-09-25
2183	2019-09-26
2184	2019-09-27
2185	2019-09-28
2186	2019-09-29
2187	2019-09-30
2188	2019-10-01
2189	2019-10-02
2190	2019-10-03
2191	2019-10-04
2192	2019-10-05
2193	2019-10-06
2194	2019-10-07
2195	2019-10-08
2196	2019-10-09
2197	2019-10-10
2198	2019-10-11
2199	2019-10-12
2200	2019-10-13
2201	2019-10-14
2202	2019-10-15
2203	2019-10-16
2204	2019-10-17
2205	2019-10-18
2206	2019-10-19
2207	2019-10-20
2208	2019-10-21
2209	2019-10-22
2210	2019-10-23
2211	2019-10-24
2212	2019-10-25
2213	2019-10-26
2214	2019-10-27
2215	2019-10-28
2216	2019-10-29
2217	2019-10-30
2218	2019-10-31
2219	2019-11-01
2220	2019-11-02
2221	2019-11-03
2222	2019-11-04
2223	2019-11-05
2224	2019-11-06
2225	2019-11-07
2226	2019-11-08
2227	2019-11-09
2228	2019-11-10
2229	2019-11-11
2230	2019-11-12
2231	2019-11-13
2232	2019-11-14
2233	2019-11-15
2234	2019-11-16
2235	2019-11-17
2236	2019-11-18
2237	2019-11-19
2238	2019-11-20
2239	2019-11-21
2240	2019-11-22
2241	2019-11-23
2242	2019-11-24
2243	2019-11-25
2244	2019-11-26
2245	2019-11-27
2246	2019-11-28
2247	2019-11-29
2248	2019-11-30
2249	2019-12-01
2250	2019-12-02
2251	2019-12-03
2252	2019-12-04
2253	2019-12-05
2254	2019-12-06
2255	2019-12-07
2256	2019-12-08
2257	2019-12-09
2258	2019-12-10
2259	2019-12-11
2260	2019-12-12
2261	2019-12-13
2262	2019-12-14
2263	2019-12-15
2264	2019-12-16
2265	2019-12-17
2266	2019-12-18
2267	2019-12-19
2268	2019-12-20
2269	2019-12-21
2270	2019-12-22
2271	2019-12-23
2272	2019-12-24
2273	2019-12-25
2274	2019-12-26
2275	2019-12-27
2276	2019-12-28
2277	2019-12-29
2278	2019-12-30
2279	2019-12-31
2280	2020-01-01
2281	2020-01-02
2282	2020-01-03
2283	2020-01-04
2284	2020-01-05
2285	2020-01-06
2286	2020-01-07
2287	2020-01-08
2288	2020-01-09
2289	2020-01-10
2290	2020-01-11
2291	2020-01-12
2292	2020-01-13
2293	2020-01-14
2294	2020-01-15
2295	2020-01-16
2296	2020-01-17
2297	2020-01-18
2298	2020-01-19
2299	2020-01-20
2300	2020-01-21
2301	2020-01-22
2302	2020-01-23
2303	2020-01-24
2304	2020-01-25
2305	2020-01-26
2306	2020-01-27
2307	2020-01-28
2308	2020-01-29
2309	2020-01-30
2310	2020-01-31
2311	2020-02-01
2312	2020-02-02
2313	2020-02-03
2314	2020-02-04
2315	2020-02-05
2316	2020-02-06
2317	2020-02-07
2318	2020-02-08
2319	2020-02-09
2320	2020-02-10
2321	2020-02-11
2322	2020-02-12
2323	2020-02-13
2324	2020-02-14
2325	2020-02-15
2326	2020-02-16
2327	2020-02-17
2328	2020-02-18
2329	2020-02-19
2330	2020-02-20
2331	2020-02-21
2332	2020-02-22
2333	2020-02-23
2334	2020-02-24
2335	2020-02-25
2336	2020-02-26
2337	2020-02-27
2338	2020-02-28
2339	2020-02-29
2340	2020-03-01
2341	2020-03-02
2342	2020-03-03
2343	2020-03-04
2344	2020-03-05
2345	2020-03-06
2346	2020-03-07
2347	2020-03-08
2348	2020-03-09
2349	2020-03-10
2350	2020-03-11
2351	2020-03-12
2352	2020-03-13
2353	2020-03-14
2354	2020-03-15
2355	2020-03-16
2356	2020-03-17
2357	2020-03-18
2358	2020-03-19
2359	2020-03-20
2360	2020-03-21
2361	2020-03-22
2362	2020-03-23
2363	2020-03-24
2364	2020-03-25
2365	2020-03-26
2366	2020-03-27
2367	2020-03-28
2368	2020-03-29
2369	2020-03-30
2370	2020-03-31
2371	2020-04-01
2372	2020-04-02
2373	2020-04-03
2374	2020-04-04
2375	2020-04-05
2376	2020-04-06
2377	2020-04-07
2378	2020-04-08
2379	2020-04-09
2380	2020-04-10
2381	2020-04-11
2382	2020-04-12
2383	2020-04-13
2384	2020-04-14
2385	2020-04-15
2386	2020-04-16
2387	2020-04-17
2388	2020-04-18
2389	2020-04-19
2390	2020-04-20
2391	2020-04-21
2392	2020-04-22
2393	2020-04-23
2394	2020-04-24
2395	2020-04-25
2396	2020-04-26
2397	2020-04-27
2398	2020-04-28
2399	2020-04-29
2400	2020-04-30
2401	2020-05-01
2402	2020-05-02
2403	2020-05-03
2404	2020-05-04
2405	2020-05-05
2406	2020-05-06
2407	2020-05-07
2408	2020-05-08
2409	2020-05-09
2410	2020-05-10
2411	2020-05-11
2412	2020-05-12
2413	2020-05-13
2414	2020-05-14
2415	2020-05-15
2416	2020-05-16
2417	2020-05-17
2418	2020-05-18
2419	2020-05-19
2420	2020-05-20
2421	2020-05-21
2422	2020-05-22
2423	2020-05-23
2424	2020-05-24
2425	2020-05-25
2426	2020-05-26
2427	2020-05-27
2428	2020-05-28
2429	2020-05-29
2430	2020-05-30
2431	2020-05-31
2432	2020-06-01
2433	2020-06-02
2434	2020-06-03
2435	2020-06-04
2436	2020-06-05
2437	2020-06-06
2438	2020-06-07
2439	2020-06-08
2440	2020-06-09
2441	2020-06-10
2442	2020-06-11
2443	2020-06-12
2444	2020-06-13
2445	2020-06-14
2446	2020-06-15
2447	2020-06-16
2448	2020-06-17
2449	2020-06-18
2450	2020-06-19
2451	2020-06-20
2452	2020-06-21
2453	2020-06-22
2454	2020-06-23
2455	2020-06-24
2456	2020-06-25
2457	2020-06-26
2458	2020-06-27
2459	2020-06-28
2460	2020-06-29
2461	2020-06-30
2462	2020-07-01
2463	2020-07-02
2464	2020-07-03
2465	2020-07-04
2466	2020-07-05
2467	2020-07-06
2468	2020-07-07
2469	2020-07-08
2470	2020-07-09
2471	2020-07-10
2472	2020-07-11
2473	2020-07-12
2474	2020-07-13
2475	2020-07-14
2476	2020-07-15
2477	2020-07-16
2478	2020-07-17
2479	2020-07-18
2480	2020-07-19
2481	2020-07-20
2482	2020-07-21
2483	2020-07-22
2484	2020-07-23
2485	2020-07-24
2486	2020-07-25
2487	2020-07-26
2488	2020-07-27
2489	2020-07-28
2490	2020-07-29
2491	2020-07-30
2492	2020-07-31
2493	2020-08-01
2494	2020-08-02
2495	2020-08-03
2496	2020-08-04
2497	2020-08-05
2498	2020-08-06
2499	2020-08-07
2500	2020-08-08
2501	2020-08-09
2502	2020-08-10
2503	2020-08-11
2504	2020-08-12
2505	2020-08-13
2506	2020-08-14
2507	2020-08-15
2508	2020-08-16
2509	2020-08-17
2510	2020-08-18
2511	2020-08-19
2512	2020-08-20
2513	2020-08-21
2514	2020-08-22
2515	2020-08-23
2516	2020-08-24
2517	2020-08-25
2518	2020-08-26
2519	2020-08-27
2520	2020-08-28
2521	2020-08-29
2522	2020-08-30
2523	2020-08-31
2524	2020-09-01
2525	2020-09-02
2526	2020-09-03
2527	2020-09-04
2528	2020-09-05
2529	2020-09-06
2530	2020-09-07
2531	2020-09-08
2532	2020-09-09
2533	2020-09-10
2534	2020-09-11
2535	2020-09-12
2536	2020-09-13
2537	2020-09-14
2538	2020-09-15
2539	2020-09-16
2540	2020-09-17
2541	2020-09-18
2542	2020-09-19
2543	2020-09-20
2544	2020-09-21
2545	2020-09-22
2546	2020-09-23
2547	2020-09-24
2548	2020-09-25
2549	2020-09-26
2550	2020-09-27
2551	2020-09-28
2552	2020-09-29
2553	2020-09-30
2554	2020-10-01
2555	2020-10-02
2556	2020-10-03
2557	2020-10-04
2558	2020-10-05
2559	2020-10-06
2560	2020-10-07
2561	2020-10-08
2562	2020-10-09
2563	2020-10-10
2564	2020-10-11
2565	2020-10-12
2566	2020-10-13
2567	2020-10-14
2568	2020-10-15
2569	2020-10-16
2570	2020-10-17
2571	2020-10-18
2572	2020-10-19
2573	2020-10-20
2574	2020-10-21
2575	2020-10-22
2576	2020-10-23
2577	2020-10-24
2578	2020-10-25
2579	2020-10-26
2580	2020-10-27
2581	2020-10-28
2582	2020-10-29
2583	2020-10-30
2584	2020-10-31
2585	2020-11-01
2586	2020-11-02
2587	2020-11-03
2588	2020-11-04
2589	2020-11-05
2590	2020-11-06
2591	2020-11-07
2592	2020-11-08
2593	2020-11-09
2594	2020-11-10
2595	2020-11-11
2596	2020-11-12
2597	2020-11-13
2598	2020-11-14
2599	2020-11-15
2600	2020-11-16
2601	2020-11-17
2602	2020-11-18
2603	2020-11-19
2604	2020-11-20
2605	2020-11-21
2606	2020-11-22
2607	2020-11-23
2608	2020-11-24
2609	2020-11-25
2610	2020-11-26
2611	2020-11-27
2612	2020-11-28
2613	2020-11-29
2614	2020-11-30
2615	2020-12-01
2616	2020-12-02
2617	2020-12-03
2618	2020-12-04
2619	2020-12-05
2620	2020-12-06
2621	2020-12-07
2622	2020-12-08
2623	2020-12-09
2624	2020-12-10
2625	2020-12-11
2626	2020-12-12
2627	2020-12-13
2628	2020-12-14
2629	2020-12-15
2630	2020-12-16
2631	2020-12-17
2632	2020-12-18
2633	2020-12-19
2634	2020-12-20
2635	2020-12-21
2636	2020-12-22
2637	2020-12-23
2638	2020-12-24
2639	2020-12-25
2640	2020-12-26
2641	2020-12-27
2642	2020-12-28
2643	2020-12-29
2644	2020-12-30
2645	2020-12-31
2646	2021-01-01
2647	2021-01-02
2648	2021-01-03
2649	2021-01-04
2650	2021-01-05
2651	2021-01-06
2652	2021-01-07
2653	2021-01-08
2654	2021-01-09
2655	2021-01-10
2656	2021-01-11
2657	2021-01-12
2658	2021-01-13
2659	2021-01-14
2660	2021-01-15
2661	2021-01-16
2662	2021-01-17
2663	2021-01-18
2664	2021-01-19
2665	2021-01-20
2666	2021-01-21
2667	2021-01-22
2668	2021-01-23
2669	2021-01-24
2670	2021-01-25
2671	2021-01-26
2672	2021-01-27
2673	2021-01-28
2674	2021-01-29
2675	2021-01-30
2676	2021-01-31
2677	2021-02-01
2678	2021-02-02
2679	2021-02-03
2680	2021-02-04
2681	2021-02-05
2682	2021-02-06
2683	2021-02-07
2684	2021-02-08
2685	2021-02-09
2686	2021-02-10
2687	2021-02-11
2688	2021-02-12
2689	2021-02-13
2690	2021-02-14
2691	2021-02-15
2692	2021-02-16
2693	2021-02-17
2694	2021-02-18
2695	2021-02-19
2696	2021-02-20
2697	2021-02-21
2698	2021-02-22
2699	2021-02-23
2700	2021-02-24
2701	2021-02-25
2702	2021-02-26
2703	2021-02-27
2704	2021-02-28
2705	2021-03-01
2706	2021-03-02
2707	2021-03-03
2708	2021-03-04
2709	2021-03-05
2710	2021-03-06
2711	2021-03-07
2712	2021-03-08
2713	2021-03-09
2714	2021-03-10
2715	2021-03-11
2716	2021-03-12
2717	2021-03-13
2718	2021-03-14
2719	2021-03-15
2720	2021-03-16
2721	2021-03-17
2722	2021-03-18
2723	2021-03-19
2724	2021-03-20
2725	2021-03-21
2726	2021-03-22
2727	2021-03-23
2728	2021-03-24
2729	2021-03-25
2730	2021-03-26
2731	2021-03-27
2732	2021-03-28
2733	2021-03-29
2734	2021-03-30
2735	2021-03-31
2736	2021-04-01
2737	2021-04-02
2738	2021-04-03
2739	2021-04-04
2740	2021-04-05
2741	2021-04-06
2742	2021-04-07
2743	2021-04-08
2744	2021-04-09
2745	2021-04-10
2746	2021-04-11
2747	2021-04-12
2748	2021-04-13
2749	2021-04-14
2750	2021-04-15
2751	2021-04-16
2752	2021-04-17
2753	2021-04-18
2754	2021-04-19
2755	2021-04-20
2756	2021-04-21
2757	2021-04-22
2758	2021-04-23
2759	2021-04-24
2760	2021-04-25
2761	2021-04-26
2762	2021-04-27
2763	2021-04-28
2764	2021-04-29
2765	2021-04-30
2766	2021-05-01
2767	2021-05-02
2768	2021-05-03
2769	2021-05-04
2770	2021-05-05
2771	2021-05-06
2772	2021-05-07
2773	2021-05-08
2774	2021-05-09
2775	2021-05-10
2776	2021-05-11
2777	2021-05-12
2778	2021-05-13
2779	2021-05-14
2780	2021-05-15
2781	2021-05-16
2782	2021-05-17
2783	2021-05-18
2784	2021-05-19
2785	2021-05-20
2786	2021-05-21
2787	2021-05-22
2788	2021-05-23
2789	2021-05-24
2790	2021-05-25
2791	2021-05-26
2792	2021-05-27
2793	2021-05-28
2794	2021-05-29
2795	2021-05-30
2796	2021-05-31
2797	2021-06-01
2798	2021-06-02
2799	2021-06-03
2800	2021-06-04
2801	2021-06-05
2802	2021-06-06
2803	2021-06-07
2804	2021-06-08
2805	2021-06-09
2806	2021-06-10
2807	2021-06-11
2808	2021-06-12
2809	2021-06-13
2810	2021-06-14
2811	2021-06-15
2812	2021-06-16
2813	2021-06-17
2814	2021-06-18
2815	2021-06-19
2816	2021-06-20
2817	2021-06-21
2818	2021-06-22
2819	2021-06-23
2820	2021-06-24
2821	2021-06-25
2822	2021-06-26
2823	2021-06-27
2824	2021-06-28
2825	2021-06-29
2826	2021-06-30
2827	2021-07-01
2828	2021-07-02
2829	2021-07-03
2830	2021-07-04
2831	2021-07-05
2832	2021-07-06
2833	2021-07-07
2834	2021-07-08
2835	2021-07-09
2836	2021-07-10
2837	2021-07-11
2838	2021-07-12
2839	2021-07-13
2840	2021-07-14
2841	2021-07-15
2842	2021-07-16
2843	2021-07-17
2844	2021-07-18
2845	2021-07-19
2846	2021-07-20
2847	2021-07-21
2848	2021-07-22
2849	2021-07-23
2850	2021-07-24
2851	2021-07-25
2852	2021-07-26
2853	2021-07-27
2854	2021-07-28
2855	2021-07-29
2856	2021-07-30
2857	2021-07-31
2858	2021-08-01
2859	2021-08-02
2860	2021-08-03
2861	2021-08-04
2862	2021-08-05
2863	2021-08-06
2864	2021-08-07
2865	2021-08-08
2866	2021-08-09
2867	2021-08-10
2868	2021-08-11
2869	2021-08-12
2870	2021-08-13
2871	2021-08-14
2872	2021-08-15
2873	2021-08-16
2874	2021-08-17
2875	2021-08-18
2876	2021-08-19
2877	2021-08-20
2878	2021-08-21
2879	2021-08-22
2880	2021-08-23
2881	2021-08-24
2882	2021-08-25
2883	2021-08-26
2884	2021-08-27
2885	2021-08-28
2886	2021-08-29
2887	2021-08-30
2888	2021-08-31
2889	2021-09-01
2890	2021-09-02
2891	2021-09-03
2892	2021-09-04
2893	2021-09-05
2894	2021-09-06
2895	2021-09-07
2896	2021-09-08
2897	2021-09-09
2898	2021-09-10
2899	2021-09-11
2900	2021-09-12
2901	2021-09-13
2902	2021-09-14
2903	2021-09-15
2904	2021-09-16
2905	2021-09-17
2906	2021-09-18
2907	2021-09-19
2908	2021-09-20
2909	2021-09-21
2910	2021-09-22
2911	2021-09-23
2912	2021-09-24
2913	2021-09-25
2914	2021-09-26
2915	2021-09-27
2916	2021-09-28
2917	2021-09-29
2918	2021-09-30
2919	2021-10-01
2920	2021-10-02
2921	2021-10-03
2922	2021-10-04
2923	2021-10-05
2924	2021-10-06
2925	2021-10-07
2926	2021-10-08
2927	2021-10-09
2928	2021-10-10
2929	2021-10-11
2930	2021-10-12
2931	2021-10-13
2932	2021-10-14
2933	2021-10-15
2934	2021-10-16
2935	2021-10-17
2936	2021-10-18
2937	2021-10-19
2938	2021-10-20
2939	2021-10-21
2940	2021-10-22
2941	2021-10-23
2942	2021-10-24
2943	2021-10-25
2944	2021-10-26
2945	2021-10-27
2946	2021-10-28
2947	2021-10-29
2948	2021-10-30
2949	2021-10-31
2950	2021-11-01
2951	2021-11-02
2952	2021-11-03
2953	2021-11-04
2954	2021-11-05
2955	2021-11-06
2956	2021-11-07
2957	2021-11-08
2958	2021-11-09
2959	2021-11-10
2960	2021-11-11
2961	2021-11-12
2962	2021-11-13
2963	2021-11-14
2964	2021-11-15
2965	2021-11-16
2966	2021-11-17
2967	2021-11-18
2968	2021-11-19
2969	2021-11-20
2970	2021-11-21
2971	2021-11-22
2972	2021-11-23
2973	2021-11-24
2974	2021-11-25
2975	2021-11-26
2976	2021-11-27
2977	2021-11-28
2978	2021-11-29
2979	2021-11-30
2980	2021-12-01
2981	2021-12-02
2982	2021-12-03
2983	2021-12-04
2984	2021-12-05
2985	2021-12-06
2986	2021-12-07
2987	2021-12-08
2988	2021-12-09
2989	2021-12-10
2990	2021-12-11
2991	2021-12-12
2992	2021-12-13
2993	2021-12-14
2994	2021-12-15
2995	2021-12-16
2996	2021-12-17
2997	2021-12-18
2998	2021-12-19
2999	2021-12-20
3000	2021-12-21
3001	2021-12-22
3002	2021-12-23
3003	2021-12-24
3004	2021-12-25
3005	2021-12-26
3006	2021-12-27
3007	2021-12-28
3008	2021-12-29
3009	2021-12-30
3010	2021-12-31
3011	2022-01-01
3012	2022-01-02
3013	2022-01-03
3014	2022-01-04
3015	2022-01-05
3016	2022-01-06
3017	2022-01-07
3018	2022-01-08
3019	2022-01-09
3020	2022-01-10
3021	2022-01-11
3022	2022-01-12
3023	2022-01-13
3024	2022-01-14
3025	2022-01-15
3026	2022-01-16
3027	2022-01-17
3028	2022-01-18
3029	2022-01-19
3030	2022-01-20
3031	2022-01-21
3032	2022-01-22
3033	2022-01-23
3034	2022-01-24
3035	2022-01-25
3036	2022-01-26
3037	2022-01-27
3038	2022-01-28
3039	2022-01-29
3040	2022-01-30
3041	2022-01-31
3042	2022-02-01
3043	2022-02-02
3044	2022-02-03
3045	2022-02-04
3046	2022-02-05
3047	2022-02-06
3048	2022-02-07
3049	2022-02-08
3050	2022-02-09
3051	2022-02-10
3052	2022-02-11
3053	2022-02-12
3054	2022-02-13
3055	2022-02-14
3056	2022-02-15
3057	2022-02-16
3058	2022-02-17
3059	2022-02-18
3060	2022-02-19
3061	2022-02-20
3062	2022-02-21
3063	2022-02-22
3064	2022-02-23
3065	2022-02-24
3066	2022-02-25
3067	2022-02-26
3068	2022-02-27
3069	2022-02-28
3070	2022-03-01
3071	2022-03-02
3072	2022-03-03
3073	2022-03-04
3074	2022-03-05
3075	2022-03-06
3076	2022-03-07
3077	2022-03-08
3078	2022-03-09
3079	2022-03-10
3080	2022-03-11
3081	2022-03-12
3082	2022-03-13
3083	2022-03-14
3084	2022-03-15
3085	2022-03-16
3086	2022-03-17
3087	2022-03-18
3088	2022-03-19
3089	2022-03-20
3090	2022-03-21
3091	2022-03-22
3092	2022-03-23
3093	2022-03-24
3094	2022-03-25
3095	2022-03-26
3096	2022-03-27
3097	2022-03-28
3098	2022-03-29
3099	2022-03-30
3100	2022-03-31
3101	2022-04-01
3102	2022-04-02
3103	2022-04-03
3104	2022-04-04
3105	2022-04-05
3106	2022-04-06
3107	2022-04-07
3108	2022-04-08
3109	2022-04-09
3110	2022-04-10
3111	2022-04-11
3112	2022-04-12
3113	2022-04-13
3114	2022-04-14
3115	2022-04-15
3116	2022-04-16
3117	2022-04-17
3118	2022-04-18
3119	2022-04-19
3120	2022-04-20
3121	2022-04-21
3122	2022-04-22
3123	2022-04-23
3124	2022-04-24
3125	2022-04-25
3126	2022-04-26
3127	2022-04-27
3128	2022-04-28
3129	2022-04-29
3130	2022-04-30
3131	2022-05-01
3132	2022-05-02
3133	2022-05-03
3134	2022-05-04
3135	2022-05-05
3136	2022-05-06
3137	2022-05-07
3138	2022-05-08
3139	2022-05-09
3140	2022-05-10
3141	2022-05-11
3142	2022-05-12
3143	2022-05-13
3144	2022-05-14
3145	2022-05-15
3146	2022-05-16
3147	2022-05-17
3148	2022-05-18
3149	2022-05-19
3150	2022-05-20
3151	2022-05-21
3152	2022-05-22
3153	2022-05-23
3154	2022-05-24
3155	2022-05-25
3156	2022-05-26
3157	2022-05-27
3158	2022-05-28
3159	2022-05-29
3160	2022-05-30
3161	2022-05-31
3162	2022-06-01
3163	2022-06-02
3164	2022-06-03
3165	2022-06-04
3166	2022-06-05
3167	2022-06-06
3168	2022-06-07
3169	2022-06-08
3170	2022-06-09
3171	2022-06-10
3172	2022-06-11
3173	2022-06-12
3174	2022-06-13
3175	2022-06-14
3176	2022-06-15
3177	2022-06-16
3178	2022-06-17
3179	2022-06-18
3180	2022-06-19
3181	2022-06-20
3182	2022-06-21
3183	2022-06-22
3184	2022-06-23
3185	2022-06-24
3186	2022-06-25
3187	2022-06-26
3188	2022-06-27
3189	2022-06-28
3190	2022-06-29
3191	2022-06-30
3192	2022-07-01
3193	2022-07-02
3194	2022-07-03
3195	2022-07-04
3196	2022-07-05
3197	2022-07-06
3198	2022-07-07
3199	2022-07-08
3200	2022-07-09
3201	2022-07-10
3202	2022-07-11
3203	2022-07-12
3204	2022-07-13
3205	2022-07-14
3206	2022-07-15
3207	2022-07-16
3208	2022-07-17
3209	2022-07-18
3210	2022-07-19
3211	2022-07-20
3212	2022-07-21
3213	2022-07-22
3214	2022-07-23
3215	2022-07-24
3216	2022-07-25
3217	2022-07-26
3218	2022-07-27
3219	2022-07-28
3220	2022-07-29
3221	2022-07-30
3222	2022-07-31
3223	2022-08-01
3224	2022-08-02
3225	2022-08-03
3226	2022-08-04
3227	2022-08-05
3228	2022-08-06
3229	2022-08-07
3230	2022-08-08
3231	2022-08-09
3232	2022-08-10
3233	2022-08-11
3234	2022-08-12
3235	2022-08-13
3236	2022-08-14
3237	2022-08-15
3238	2022-08-16
3239	2022-08-17
3240	2022-08-18
3241	2022-08-19
3242	2022-08-20
3243	2022-08-21
3244	2022-08-22
3245	2022-08-23
3246	2022-08-24
3247	2022-08-25
3248	2022-08-26
3249	2022-08-27
3250	2022-08-28
3251	2022-08-29
3252	2022-08-30
3253	2022-08-31
3254	2022-09-01
3255	2022-09-02
3256	2022-09-03
3257	2022-09-04
3258	2022-09-05
3259	2022-09-06
3260	2022-09-07
3261	2022-09-08
3262	2022-09-09
3263	2022-09-10
3264	2022-09-11
3265	2022-09-12
3266	2022-09-13
3267	2022-09-14
3268	2022-09-15
3269	2022-09-16
3270	2022-09-17
3271	2022-09-18
3272	2022-09-19
3273	2022-09-20
3274	2022-09-21
3275	2022-09-22
3276	2022-09-23
3277	2022-09-24
3278	2022-09-25
3279	2022-09-26
3280	2022-09-27
3281	2022-09-28
3282	2022-09-29
3283	2022-09-30
3284	2022-10-01
3285	2022-10-02
3286	2022-10-03
3287	2022-10-04
3288	2022-10-05
3289	2022-10-06
3290	2022-10-07
3291	2022-10-08
3292	2022-10-09
3293	2022-10-10
3294	2022-10-11
3295	2022-10-12
3296	2022-10-13
3297	2022-10-14
3298	2022-10-15
3299	2022-10-16
3300	2022-10-17
3301	2022-10-18
3302	2022-10-19
3303	2022-10-20
3304	2022-10-21
3305	2022-10-22
3306	2022-10-23
3307	2022-10-24
3308	2022-10-25
3309	2022-10-26
3310	2022-10-27
3311	2022-10-28
3312	2022-10-29
3313	2022-10-30
3314	2022-10-31
3315	2022-11-01
3316	2022-11-02
3317	2022-11-03
3318	2022-11-04
3319	2022-11-05
3320	2022-11-06
3321	2022-11-07
3322	2022-11-08
3323	2022-11-09
3324	2022-11-10
3325	2022-11-11
3326	2022-11-12
3327	2022-11-13
3328	2022-11-14
3329	2022-11-15
3330	2022-11-16
3331	2022-11-17
3332	2022-11-18
3333	2022-11-19
3334	2022-11-20
3335	2022-11-21
3336	2022-11-22
3337	2022-11-23
3338	2022-11-24
3339	2022-11-25
3340	2022-11-26
3341	2022-11-27
3342	2022-11-28
3343	2022-11-29
3344	2022-11-30
3345	2022-12-01
3346	2022-12-02
3347	2022-12-03
3348	2022-12-04
3349	2022-12-05
3350	2022-12-06
3351	2022-12-07
3352	2022-12-08
3353	2022-12-09
3354	2022-12-10
3355	2022-12-11
3356	2022-12-12
3357	2022-12-13
3358	2022-12-14
3359	2022-12-15
3360	2022-12-16
3361	2022-12-17
3362	2022-12-18
3363	2022-12-19
3364	2022-12-20
3365	2022-12-21
3366	2022-12-22
3367	2022-12-23
3368	2022-12-24
3369	2022-12-25
3370	2022-12-26
3371	2022-12-27
3372	2022-12-28
3373	2022-12-29
3374	2022-12-30
3375	2022-12-31
3376	2023-01-01
3377	2023-01-02
3378	2023-01-03
3379	2023-01-04
3380	2023-01-05
3381	2023-01-06
3382	2023-01-07
3383	2023-01-08
3384	2023-01-09
3385	2023-01-10
3386	2023-01-11
3387	2023-01-12
3388	2023-01-13
3389	2023-01-14
3390	2023-01-15
3391	2023-01-16
3392	2023-01-17
3393	2023-01-18
3394	2023-01-19
3395	2023-01-20
3396	2023-01-21
3397	2023-01-22
3398	2023-01-23
3399	2023-01-24
3400	2023-01-25
3401	2023-01-26
3402	2023-01-27
3403	2023-01-28
3404	2023-01-29
3405	2023-01-30
3406	2023-01-31
3407	2023-02-01
3408	2023-02-02
3409	2023-02-03
3410	2023-02-04
3411	2023-02-05
3412	2023-02-06
3413	2023-02-07
3414	2023-02-08
3415	2023-02-09
3416	2023-02-10
3417	2023-02-11
3418	2023-02-12
3419	2023-02-13
3420	2023-02-14
3421	2023-02-15
3422	2023-02-16
3423	2023-02-17
3424	2023-02-18
3425	2023-02-19
3426	2023-02-20
3427	2023-02-21
3428	2023-02-22
3429	2023-02-23
3430	2023-02-24
3431	2023-02-25
3432	2023-02-26
3433	2023-02-27
3434	2023-02-28
3435	2023-03-01
3436	2023-03-02
3437	2023-03-03
3438	2023-03-04
3439	2023-03-05
3440	2023-03-06
3441	2023-03-07
3442	2023-03-08
3443	2023-03-09
3444	2023-03-10
3445	2023-03-11
3446	2023-03-12
3447	2023-03-13
3448	2023-03-14
3449	2023-03-15
3450	2023-03-16
3451	2023-03-17
3452	2023-03-18
3453	2023-03-19
3454	2023-03-20
3455	2023-03-21
3456	2023-03-22
3457	2023-03-23
3458	2023-03-24
3459	2023-03-25
3460	2023-03-26
3461	2023-03-27
3462	2023-03-28
3463	2023-03-29
3464	2023-03-30
3465	2023-03-31
3466	2023-04-01
3467	2023-04-02
3468	2023-04-03
3469	2023-04-04
3470	2023-04-05
3471	2023-04-06
3472	2023-04-07
3473	2023-04-08
3474	2023-04-09
3475	2023-04-10
3476	2023-04-11
3477	2023-04-12
3478	2023-04-13
3479	2023-04-14
3480	2023-04-15
3481	2023-04-16
3482	2023-04-17
3483	2023-04-18
3484	2023-04-19
3485	2023-04-20
3486	2023-04-21
3487	2023-04-22
3488	2023-04-23
3489	2023-04-24
3490	2023-04-25
3491	2023-04-26
3492	2023-04-27
3493	2023-04-28
3494	2023-04-29
3495	2023-04-30
3496	2023-05-01
3497	2023-05-02
3498	2023-05-03
3499	2023-05-04
3500	2023-05-05
3501	2023-05-06
3502	2023-05-07
3503	2023-05-08
3504	2023-05-09
3505	2023-05-10
3506	2023-05-11
3507	2023-05-12
3508	2023-05-13
3509	2023-05-14
3510	2023-05-15
3511	2023-05-16
3512	2023-05-17
3513	2023-05-18
3514	2023-05-19
3515	2023-05-20
3516	2023-05-21
3517	2023-05-22
3518	2023-05-23
3519	2023-05-24
3520	2023-05-25
3521	2023-05-26
3522	2023-05-27
3523	2023-05-28
3524	2023-05-29
3525	2023-05-30
3526	2023-05-31
3527	2023-06-01
3528	2023-06-02
3529	2023-06-03
3530	2023-06-04
3531	2023-06-05
3532	2023-06-06
3533	2023-06-07
3534	2023-06-08
3535	2023-06-09
3536	2023-06-10
3537	2023-06-11
3538	2023-06-12
3539	2023-06-13
3540	2023-06-14
3541	2023-06-15
3542	2023-06-16
3543	2023-06-17
3544	2023-06-18
3545	2023-06-19
3546	2023-06-20
3547	2023-06-21
3548	2023-06-22
3549	2023-06-23
3550	2023-06-24
3551	2023-06-25
3552	2023-06-26
3553	2023-06-27
3554	2023-06-28
3555	2023-06-29
3556	2023-06-30
3557	2023-07-01
3558	2023-07-02
3559	2023-07-03
3560	2023-07-04
3561	2023-07-05
3562	2023-07-06
3563	2023-07-07
3564	2023-07-08
3565	2023-07-09
3566	2023-07-10
3567	2023-07-11
3568	2023-07-12
3569	2023-07-13
3570	2023-07-14
3571	2023-07-15
3572	2023-07-16
3573	2023-07-17
3574	2023-07-18
3575	2023-07-19
3576	2023-07-20
3577	2023-07-21
3578	2023-07-22
3579	2023-07-23
3580	2023-07-24
3581	2023-07-25
3582	2023-07-26
3583	2023-07-27
3584	2023-07-28
3585	2023-07-29
3586	2023-07-30
3587	2023-07-31
3588	2023-08-01
3589	2023-08-02
3590	2023-08-03
3591	2023-08-04
3592	2023-08-05
3593	2023-08-06
3594	2023-08-07
3595	2023-08-08
3596	2023-08-09
3597	2023-08-10
3598	2023-08-11
3599	2023-08-12
3600	2023-08-13
3601	2023-08-14
3602	2023-08-15
3603	2023-08-16
3604	2023-08-17
3605	2023-08-18
3606	2023-08-19
3607	2023-08-20
3608	2023-08-21
3609	2023-08-22
3610	2023-08-23
3611	2023-08-24
3612	2023-08-25
3613	2023-08-26
3614	2023-08-27
3615	2023-08-28
3616	2023-08-29
3617	2023-08-30
3618	2023-08-31
3619	2023-09-01
3620	2023-09-02
3621	2023-09-03
3622	2023-09-04
3623	2023-09-05
3624	2023-09-06
3625	2023-09-07
3626	2023-09-08
3627	2023-09-09
3628	2023-09-10
3629	2023-09-11
3630	2023-09-12
3631	2023-09-13
3632	2023-09-14
3633	2023-09-15
3634	2023-09-16
3635	2023-09-17
3636	2023-09-18
3637	2023-09-19
3638	2023-09-20
3639	2023-09-21
3640	2023-09-22
3641	2023-09-23
3642	2023-09-24
3643	2023-09-25
3644	2023-09-26
3645	2023-09-27
3646	2023-09-28
3647	2023-09-29
3648	2023-09-30
3649	2023-10-01
3650	2023-10-02
3651	2023-10-03
3652	2023-10-04
3653	2023-10-05
3654	2023-10-06
3655	2023-10-07
3656	2023-10-08
3657	2023-10-09
3658	2023-10-10
3659	2023-10-11
3660	2023-10-12
3661	2023-10-13
3662	2023-10-14
3663	2023-10-15
3664	2023-10-16
3665	2023-10-17
3666	2023-10-18
3667	2023-10-19
3668	2023-10-20
3669	2023-10-21
3670	2023-10-22
3671	2023-10-23
3672	2023-10-24
3673	2023-10-25
3674	2023-10-26
3675	2023-10-27
3676	2023-10-28
3677	2023-10-29
3678	2023-10-30
3679	2023-10-31
3680	2023-11-01
3681	2023-11-02
3682	2023-11-03
3683	2023-11-04
3684	2023-11-05
3685	2023-11-06
3686	2023-11-07
3687	2023-11-08
3688	2023-11-09
3689	2023-11-10
3690	2023-11-11
3691	2023-11-12
3692	2023-11-13
3693	2023-11-14
3694	2023-11-15
3695	2023-11-16
3696	2023-11-17
3697	2023-11-18
3698	2023-11-19
3699	2023-11-20
3700	2023-11-21
3701	2023-11-22
3702	2023-11-23
3703	2023-11-24
3704	2023-11-25
3705	2023-11-26
3706	2023-11-27
3707	2023-11-28
3708	2023-11-29
3709	2023-11-30
3710	2023-12-01
3711	2023-12-02
3712	2023-12-03
3713	2023-12-04
3714	2023-12-05
3715	2023-12-06
3716	2023-12-07
3717	2023-12-08
3718	2023-12-09
3719	2023-12-10
3720	2023-12-11
3721	2023-12-12
3722	2023-12-13
3723	2023-12-14
3724	2023-12-15
3725	2023-12-16
3726	2023-12-17
3727	2023-12-18
3728	2023-12-19
3729	2023-12-20
3730	2023-12-21
3731	2023-12-22
3732	2023-12-23
3733	2023-12-24
3734	2023-12-25
3735	2023-12-26
3736	2023-12-27
3737	2023-12-28
3738	2023-12-29
3739	2023-12-30
3740	2023-12-31
3741	2024-01-01
3742	2024-01-02
3743	2024-01-03
3744	2024-01-04
3745	2024-01-05
3746	2024-01-06
3747	2024-01-07
3748	2024-01-08
3749	2024-01-09
3750	2024-01-10
3751	2024-01-11
3752	2024-01-12
3753	2024-01-13
3754	2024-01-14
3755	2024-01-15
3756	2024-01-16
3757	2024-01-17
3758	2024-01-18
3759	2024-01-19
3760	2024-01-20
3761	2024-01-21
3762	2024-01-22
3763	2024-01-23
3764	2024-01-24
3765	2024-01-25
3766	2024-01-26
3767	2024-01-27
3768	2024-01-28
3769	2024-01-29
3770	2024-01-30
3771	2024-01-31
3772	2024-02-01
3773	2024-02-02
3774	2024-02-03
3775	2024-02-04
3776	2024-02-05
3777	2024-02-06
3778	2024-02-07
3779	2024-02-08
3780	2024-02-09
3781	2024-02-10
3782	2024-02-11
3783	2024-02-12
3784	2024-02-13
3785	2024-02-14
3786	2024-02-15
3787	2024-02-16
3788	2024-02-17
3789	2024-02-18
3790	2024-02-19
3791	2024-02-20
3792	2024-02-21
3793	2024-02-22
3794	2024-02-23
3795	2024-02-24
3796	2024-02-25
3797	2024-02-26
3798	2024-02-27
3799	2024-06-17
3800	2024-06-18
3801	2024-06-19
3802	2024-06-20
3803	2024-06-21
3804	2024-06-22
3805	2024-06-23
3806	2024-06-24
3807	2024-06-25
3808	2024-06-26
3809	2024-06-27
3810	2024-06-28
3811	2024-06-29
3812	2024-06-30
3813	2024-07-01
3814	2024-07-02
3815	2024-07-03
3816	2024-07-04
3817	2024-07-05
3818	2024-08-21
3819	2024-08-22
3820	2024-08-23
3821	2024-08-24
3822	2024-08-27
3823	2024-08-28
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
5	t	skaznika@wcpr.slask.eu	dsfvbsdfvs	dsfvds sd 	dsfvbsdfvs dsfvds sd 	$2a$10$DrRE44/T7l/l1HxcwozHGOrzDWIy7RYBvKiBI76rAnfndEwAk8E8G	2024-08-23 12:12:52.30723	skaznika1	50
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
5	1
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

SELECT pg_catalog.setval('public.tab_hospital_report_hospital_report_id_seq', 10062, true);


--
-- TOC entry 3794 (class 0 OID 0)
-- Dependencies: 280
-- Name: tab_logi_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_logi_log_id_seq', 95, true);


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

SELECT pg_catalog.setval('public.tab_messages_files_messages_files_id_seq', 17, true);


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

SELECT pg_catalog.setval('public.tab_messages_messages_id_seq', 18, true);


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

SELECT pg_catalog.setval('public.tab_report_seq', 3823, true);


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

SELECT pg_catalog.setval('public.tab_users_id_seq', 5, true);


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


-- Completed on 2024-09-02 13:25:06

--
-- PostgreSQL database dump complete
--

