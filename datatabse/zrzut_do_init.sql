PGDMP     ;                    |           sios    14.6    14.6    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    59498    sios    DATABASE     `   CREATE DATABASE sios WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Polish_Poland.1250';
    DROP DATABASE sios;
                postgres    false            �            1259    59502 
   adres_test    TABLE     Z   CREATE TABLE public.adres_test (
    adres_id bigint,
    nazwa character varying(512)
);
    DROP TABLE public.adres_test;
       public         heap    postgres    false            �            1259    59510    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false                       1259    61247    hospital_config_managment    TABLE     |   CREATE TABLE public.hospital_config_managment (
    hospital_config_id bigint NOT NULL,
    managment_id bigint NOT NULL
);
 -   DROP TABLE public.hospital_config_managment;
       public         heap    postgres    false                       1259    60589    managment_hospitals    TABLE     v   CREATE TABLE public.managment_hospitals (
    managment_id bigint NOT NULL,
    hospital_config_id bigint NOT NULL
);
 '   DROP TABLE public.managment_hospitals;
       public         heap    postgres    false                       1259    60594    password_history    TABLE     z   CREATE TABLE public.password_history (
    password_change_id bigint NOT NULL,
    password_history_id bigint NOT NULL
);
 $   DROP TABLE public.password_history;
       public         heap    postgres    false            �            1259    59538    private_messages    TABLE     o   CREATE TABLE public.private_messages (
    private_message_id bigint NOT NULL,
    user_id integer NOT NULL
);
 $   DROP TABLE public.private_messages;
       public         heap    postgres    false                       1259    60599    recipent_hospital_branch_closed    TABLE     �   CREATE TABLE public.recipent_hospital_branch_closed (
    hospital_branch_closed_id bigint NOT NULL,
    hospital_id bigint NOT NULL
);
 3   DROP TABLE public.recipent_hospital_branch_closed;
       public         heap    postgres    false                       1259    60604    recipent_hospital_failures    TABLE     ~   CREATE TABLE public.recipent_hospital_failures (
    hospital_failures_id bigint NOT NULL,
    hospital_id bigint NOT NULL
);
 .   DROP TABLE public.recipent_hospital_failures;
       public         heap    postgres    false            �            1259    59547    szpitale_raporty_godziny    TABLE       CREATE TABLE public.szpitale_raporty_godziny (
    raport_id bigint NOT NULL,
    szpital_skr_oddzial_id bigint,
    uzytkownik_id bigint,
    stan_g1 bigint,
    stan_g2 bigint,
    stan_g3 bigint,
    liczba_lekarzy bigint,
    data_aktualizacji timestamp without time zone
);
 ,   DROP TABLE public.szpitale_raporty_godziny;
       public         heap    postgres    false            �            1259    59550    tab_address    TABLE     �   CREATE TABLE public.tab_address (
    address_id integer NOT NULL,
    city character varying(255),
    number character varying(255),
    post_code character varying(255),
    street character varying(255)
);
    DROP TABLE public.tab_address;
       public         heap    postgres    false            �            1259    59555    tab_admin_messages    TABLE     �   CREATE TABLE public.tab_admin_messages (
    admin_messages_id bigint NOT NULL,
    admin_messages_author character varying(255),
    admin_messages_title character varying(255),
    admin_messages_type character varying(255)
);
 &   DROP TABLE public.tab_admin_messages;
       public         heap    postgres    false                       1259    60609    tab_announcement    TABLE     �  CREATE TABLE public.tab_announcement (
    announcement_id bigint NOT NULL,
    announcement_active boolean NOT NULL,
    announcement_content character varying(4096),
    announcement_title character varying(255),
    created_by character varying(255),
    created_date timestamp without time zone,
    data_do timestamp without time zone,
    data_od timestamp without time zone
);
 $   DROP TABLE public.tab_announcement;
       public         heap    postgres    false                       1259    60788    tab_announcement_read    TABLE     X   CREATE TABLE public.tab_announcement_read (
    announcement_read_id bigint NOT NULL
);
 )   DROP TABLE public.tab_announcement_read;
       public         heap    postgres    false            �            1259    59571 
   tab_branch    TABLE     '  CREATE TABLE public.tab_branch (
    id bigint NOT NULL,
    code integer NOT NULL,
    kolej integer NOT NULL,
    name character varying(255),
    branch_description character varying(4096),
    email character varying(255),
    fax character varying(255),
    phone character varying(255)
);
    DROP TABLE public.tab_branch;
       public         heap    postgres    false                       1259    60794    tab_document    TABLE     �   CREATE TABLE public.tab_document (
    id bigint NOT NULL,
    document_type integer,
    file_description character varying(255),
    file_path character varying(255),
    filetype character varying(255),
    name character varying(255)
);
     DROP TABLE public.tab_document;
       public         heap    postgres    false                       1259    60793    tab_document_id_seq    SEQUENCE     �   ALTER TABLE public.tab_document ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    271            �            1259    59576    tab_hospital    TABLE     �  CREATE TABLE public.tab_hospital (
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
     DROP TABLE public.tab_hospital;
       public         heap    postgres    false                       1259    61310    tab_hospital_branch_closed    TABLE     t  CREATE TABLE public.tab_hospital_branch_closed (
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
 .   DROP TABLE public.tab_hospital_branch_closed;
       public         heap    postgres    false                       1259    61318     tab_hospital_branch_closed_files    TABLE     2  CREATE TABLE public.tab_hospital_branch_closed_files (
    hospital_branch_closed_files_id bigint NOT NULL,
    file_active boolean NOT NULL,
    file_name character varying(255),
    file_url character varying(255),
    local_date_time timestamp without time zone,
    hospital_branch_closed_id bigint
);
 4   DROP TABLE public.tab_hospital_branch_closed_files;
       public         heap    postgres    false                       1259    61317 ?   tab_hospital_branch_closed_fi_hospital_branch_closed_files__seq    SEQUENCE     4  ALTER TABLE public.tab_hospital_branch_closed_files ALTER COLUMN hospital_branch_closed_files_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_branch_closed_fi_hospital_branch_closed_files__seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    285                       1259    61309 !   tab_hospital_branch_closed_id_seq    SEQUENCE     �   ALTER TABLE public.tab_hospital_branch_closed ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_branch_closed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    283            �            1259    59586    tab_hospital_category    TABLE     z   CREATE TABLE public.tab_hospital_category (
    hospital_category_id integer NOT NULL,
    name character varying(255)
);
 )   DROP TABLE public.tab_hospital_category;
       public         heap    postgres    false            �            1259    59589    tab_hospital_config    TABLE     T  CREATE TABLE public.tab_hospital_config (
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
 '   DROP TABLE public.tab_hospital_config;
       public         heap    postgres    false            �            1259    59595    tab_hospital_county    TABLE     v   CREATE TABLE public.tab_hospital_county (
    hospital_county_id integer NOT NULL,
    name character varying(255)
);
 '   DROP TABLE public.tab_hospital_county;
       public         heap    postgres    false                       1259    61326    tab_hospital_failures    TABLE     �  CREATE TABLE public.tab_hospital_failures (
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
 )   DROP TABLE public.tab_hospital_failures;
       public         heap    postgres    false            !           1259    61334    tab_hospital_failures_files    TABLE     #  CREATE TABLE public.tab_hospital_failures_files (
    hospital_failures_files_id bigint NOT NULL,
    file_active boolean NOT NULL,
    file_name character varying(255),
    file_url character varying(255),
    local_date_time timestamp without time zone,
    hospital_failures_id bigint
);
 /   DROP TABLE public.tab_hospital_failures_files;
       public         heap    postgres    false                        1259    61333 :   tab_hospital_failures_files_hospital_failures_files_id_seq    SEQUENCE     %  ALTER TABLE public.tab_hospital_failures_files ALTER COLUMN hospital_failures_files_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_failures_files_hospital_failures_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    289                       1259    61325 .   tab_hospital_failures_hospital_failures_id_seq    SEQUENCE       ALTER TABLE public.tab_hospital_failures ALTER COLUMN hospital_failures_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_failures_hospital_failures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    287            
           1259    60647    tab_hospital_procedures    TABLE     �  CREATE TABLE public.tab_hospital_procedures (
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
 +   DROP TABLE public.tab_hospital_procedures;
       public         heap    postgres    false                       1259    60655    tab_hospital_procedures_file    TABLE     '  CREATE TABLE public.tab_hospital_procedures_file (
    hospital_procedures_file_id bigint NOT NULL,
    file_active boolean NOT NULL,
    file_name character varying(255),
    file_url character varying(255),
    local_date_time timestamp without time zone,
    hospital_procedures_id bigint
);
 0   DROP TABLE public.tab_hospital_procedures_file;
       public         heap    postgres    false                       1259    60654 <   tab_hospital_procedures_file_hospital_procedures_file_id_seq    SEQUENCE     )  ALTER TABLE public.tab_hospital_procedures_file ALTER COLUMN hospital_procedures_file_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_procedures_file_hospital_procedures_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    268            	           1259    60646 2   tab_hospital_procedures_hospital_procedures_id_seq    SEQUENCE       ALTER TABLE public.tab_hospital_procedures ALTER COLUMN hospital_procedures_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_procedures_hospital_procedures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    266            �            1259    60192    tab_hospital_procedures_type    TABLE     �   CREATE TABLE public.tab_hospital_procedures_type (
    hospital_procedures_type_id bigint NOT NULL,
    active boolean NOT NULL,
    hospital_procedures_reception integer NOT NULL,
    hospital_procedures_type_desc character varying(255)
);
 0   DROP TABLE public.tab_hospital_procedures_type;
       public         heap    postgres    false            �            1259    60191 <   tab_hospital_procedures_type_hospital_procedures_type_id_seq    SEQUENCE     )  ALTER TABLE public.tab_hospital_procedures_type ALTER COLUMN hospital_procedures_type_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_procedures_type_hospital_procedures_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    251                       1259    61184    tab_hospital_report    TABLE     C  CREATE TABLE public.tab_hospital_report (
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
 '   DROP TABLE public.tab_hospital_report;
       public         heap    postgres    false            �            1259    59618    tab_hospital_report_history    TABLE     G  CREATE TABLE public.tab_hospital_report_history (
    hospital_report_history_id bigint NOT NULL,
    create_date timestamp without time zone,
    hospital_report_history_description character varying(12288),
    hospital_id bigint,
    hospital_config_id bigint,
    hospital_report_id bigint NOT NULL,
    user_id integer
);
 /   DROP TABLE public.tab_hospital_report_history;
       public         heap    postgres    false                       1259    61183 *   tab_hospital_report_hospital_report_id_seq    SEQUENCE       ALTER TABLE public.tab_hospital_report ALTER COLUMN hospital_report_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_hospital_report_hospital_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    273            �            1259    59623 #   tab_hospital_report_thread_question    TABLE     �   CREATE TABLE public.tab_hospital_report_thread_question (
    id integer NOT NULL,
    is_visible boolean NOT NULL,
    ordering integer NOT NULL,
    question character varying(255)
);
 7   DROP TABLE public.tab_hospital_report_thread_question;
       public         heap    postgres    false            �            1259    59626 #   tab_hospital_report_threads_answers    TABLE     �   CREATE TABLE public.tab_hospital_report_threads_answers (
    id bigint NOT NULL,
    answer character varying(255),
    hospital_report_id bigint,
    hospital_threads_question_id integer
);
 7   DROP TABLE public.tab_hospital_report_threads_answers;
       public         heap    postgres    false            �            1259    59629    tab_log_type    TABLE     q   CREATE TABLE public.tab_log_type (
    log_type_id integer NOT NULL,
    log_type_name character varying(255)
);
     DROP TABLE public.tab_log_type;
       public         heap    postgres    false                       1259    61292    tab_logi    TABLE     �   CREATE TABLE public.tab_logi (
    log_id bigint NOT NULL,
    created_date timestamp without time zone,
    log_desc character varying(255),
    log_type character varying(255),
    user_id bigint NOT NULL
);
    DROP TABLE public.tab_logi;
       public         heap    postgres    false                       1259    61291    tab_logi_log_id_seq    SEQUENCE     �   ALTER TABLE public.tab_logi ALTER COLUMN log_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_logi_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    281                       1259    61283    tab_mail_properties    TABLE     �   CREATE TABLE public.tab_mail_properties (
    id bigint NOT NULL,
    active boolean NOT NULL,
    host character varying(255),
    password character varying(255),
    port integer NOT NULL,
    user_name character varying(255)
);
 '   DROP TABLE public.tab_mail_properties;
       public         heap    postgres    false                       1259    61282    tab_mail_properties_id_seq    SEQUENCE     �   ALTER TABLE public.tab_mail_properties ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_mail_properties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    279            �            1259    59635    tab_managment    TABLE     3  CREATE TABLE public.tab_managment (
    managment_id bigint NOT NULL,
    managment_description character varying(4096),
    managment_email character varying(255),
    managment_mobile_phone character varying(255),
    managment_person character varying(255),
    managment_phone character varying(255)
);
 !   DROP TABLE public.tab_managment;
       public         heap    postgres    false                        1259    60532    tab_messages    TABLE     i  CREATE TABLE public.tab_messages (
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
     DROP TABLE public.tab_messages;
       public         heap    postgres    false                       1259    60539    tab_messages__type    TABLE     �   CREATE TABLE public.tab_messages__type (
    messages_type_id integer NOT NULL,
    messages_type_name character varying(255)
);
 &   DROP TABLE public.tab_messages__type;
       public         heap    postgres    false            �            1259    59648    tab_messages_description_seq    SEQUENCE     �   CREATE SEQUENCE public.tab_messages_description_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tab_messages_description_seq;
       public          postgres    false                       1259    60545    tab_messages_files    TABLE     �   CREATE TABLE public.tab_messages_files (
    messages_files_id bigint NOT NULL,
    file_name character varying(255),
    file_url character varying(255),
    message_file_active boolean NOT NULL,
    messages_id bigint
);
 &   DROP TABLE public.tab_messages_files;
       public         heap    postgres    false                       1259    60544 (   tab_messages_files_messages_files_id_seq    SEQUENCE       ALTER TABLE public.tab_messages_files ALTER COLUMN messages_files_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_messages_files_messages_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    259            �            1259    59654    tab_messages_files_seq    SEQUENCE     �   CREATE SEQUENCE public.tab_messages_files_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tab_messages_files_seq;
       public          postgres    false            �            1259    60531    tab_messages_messages_id_seq    SEQUENCE     �   ALTER TABLE public.tab_messages ALTER COLUMN messages_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_messages_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    256            �            1259    59655    tab_messages_seq    SEQUENCE     z   CREATE SEQUENCE public.tab_messages_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tab_messages_seq;
       public          postgres    false            �            1259    59659    tab_messages_type_seq    SEQUENCE        CREATE SEQUENCE public.tab_messages_type_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tab_messages_type_seq;
       public          postgres    false            �            1259    59660    tab_password_change    TABLE     �   CREATE TABLE public.tab_password_change (
    password_change_id bigint NOT NULL,
    created_date timestamp without time zone,
    last_change timestamp without time zone,
    must_change timestamp without time zone,
    user_id integer
);
 '   DROP TABLE public.tab_password_change;
       public         heap    postgres    false            �            1259    59663 *   tab_password_change_password_change_id_seq    SEQUENCE       ALTER TABLE public.tab_password_change ALTER COLUMN password_change_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_password_change_password_change_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            �            1259    59664    tab_password_history    TABLE     >  CREATE TABLE public.tab_password_history (
    password_history_id bigint NOT NULL,
    last_change timestamp without time zone,
    last_password character varying(255),
    old_password character varying(255),
    user_login character varying(255),
    user_id integer,
    password_string character varying(255)
);
 (   DROP TABLE public.tab_password_history;
       public         heap    postgres    false            �            1259    59669    tab_private_message    TABLE     ,  CREATE TABLE public.tab_private_message (
    private_message_id bigint NOT NULL,
    add_date timestamp without time zone,
    content character varying(12288),
    date_end timestamp without time zone,
    is_read boolean NOT NULL,
    title character varying(255),
    user_id integer NOT NULL
);
 '   DROP TABLE public.tab_private_message;
       public         heap    postgres    false            �            1259    59674 *   tab_private_message_private_message_id_seq    SEQUENCE       ALTER TABLE public.tab_private_message ALTER COLUMN private_message_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_private_message_private_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    232            �            1259    59675    tab_report_seq    SEQUENCE     w   CREATE SEQUENCE public.tab_report_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tab_report_seq;
       public          postgres    false            �            1259    59676    tab_reports    TABLE     K   CREATE TABLE public.tab_reports (
    id bigint NOT NULL,
    date date
);
    DROP TABLE public.tab_reports;
       public         heap    postgres    false            �            1259    59679    tab_role    TABLE     �   CREATE TABLE public.tab_role (
    role_id integer NOT NULL,
    role character varying(255),
    "desc" character varying(255)
);
    DROP TABLE public.tab_role;
       public         heap    postgres    false            �            1259    59682    tab_role_seq    SEQUENCE     v   CREATE SEQUENCE public.tab_role_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tab_role_seq;
       public          postgres    false            �            1259    59683    tab_simc    TABLE     �  CREATE TABLE public.tab_simc (
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
    DROP TABLE public.tab_simc;
       public         heap    postgres    false            �            1259    59686    tab_simc_seq    SEQUENCE     v   CREATE SEQUENCE public.tab_simc_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tab_simc_seq;
       public          postgres    false            �            1259    59687 
   tab_status    TABLE     �   CREATE TABLE public.tab_status (
    status_id integer NOT NULL,
    name character varying(255),
    status_description character varying(255),
    status_name character varying(255)
);
    DROP TABLE public.tab_status;
       public         heap    postgres    false            �            1259    59692    tab_terc    TABLE     Q  CREATE TABLE public.tab_terc (
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
    DROP TABLE public.tab_terc;
       public         heap    postgres    false            �            1259    59697    tab_terc_seq    SEQUENCE     v   CREATE SEQUENCE public.tab_terc_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tab_terc_seq;
       public          postgres    false            �            1259    59698    tab_type    TABLE     �   CREATE TABLE public.tab_type (
    type_id integer NOT NULL,
    type_description character varying(255),
    type_name character varying(255)
);
    DROP TABLE public.tab_type;
       public         heap    postgres    false            �            1259    60238 	   tab_users    TABLE     �  CREATE TABLE public.tab_users (
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
    DROP TABLE public.tab_users;
       public         heap    postgres    false            �            1259    60237    tab_users_id_seq    SEQUENCE     �   ALTER TABLE public.tab_users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tab_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    254            �            1259    59709    tab_wkrm_question    TABLE     �   CREATE TABLE public.tab_wkrm_question (
    id integer NOT NULL,
    nazwa character varying(255),
    ordered integer NOT NULL,
    is_visible boolean NOT NULL
);
 %   DROP TABLE public.tab_wkrm_question;
       public         heap    postgres    false            �            1259    59712    tab_wkrm_status    TABLE     c   CREATE TABLE public.tab_wkrm_status (
    id integer NOT NULL,
    nazwa character varying(255)
);
 #   DROP TABLE public.tab_wkrm_status;
       public         heap    postgres    false            �            1259    59715    user_branch    TABLE     a   CREATE TABLE public.user_branch (
    user_id integer NOT NULL,
    branch_id bigint NOT NULL
);
    DROP TABLE public.user_branch;
       public         heap    postgres    false            �            1259    59718 	   user_role    TABLE     ^   CREATE TABLE public.user_role (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            �            1259    60229    v_hospital_branch_search    VIEW     �   CREATE VIEW public.v_hospital_branch_search AS
 SELECT c.hospital_config_id,
    c.hospital_id,
    b.name
   FROM (public.tab_hospital_config c
     LEFT JOIN public.tab_branch b ON ((c.branch_id = b.id)))
  WHERE (c.active = true);
 +   DROP VIEW public.v_hospital_branch_search;
       public          postgres    false    218    218    215    218    215    218            �            1259    59721    v_hospital_choice    VIEW       CREATE VIEW public.v_hospital_choice AS
 SELECT h.hospital_id,
    concat('powiat', ' ', c.name) AS powiat,
    h.name AS szpital
   FROM (public.tab_hospital h
     LEFT JOIN public.tab_hospital_county c ON ((h.hospital_county_id = c.hospital_county_id)));
 $   DROP VIEW public.v_hospital_choice;
       public          postgres    false    219    216    216    216    219            �            1259    59725    v_hospital_select    VIEW     �  CREATE VIEW public.v_hospital_select AS
 SELECT hc.hospital_config_id,
    h.name AS szpital,
    b.name AS oddzial,
    c.name AS powiat
   FROM (((public.tab_hospital_config hc
     LEFT JOIN public.tab_branch b ON ((hc.branch_id = b.id)))
     LEFT JOIN public.tab_hospital h ON ((hc.hospital_id = h.hospital_id)))
     LEFT JOIN public.tab_hospital_county c ON ((h.hospital_county_id = c.hospital_county_id)));
 $   DROP VIEW public.v_hospital_select;
       public          postgres    false    218    216    219    219    215    215    216    216    218    218                       1259    61236    v_hospital_view    VIEW     |  CREATE VIEW public.v_hospital_view AS
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
 "   DROP VIEW public.v_hospital_view;
       public          postgres    false    218    273    273    273    273    273    273    273    273    273    273    219    219    218    218    216    216    216    215    215                       1259    61277    v_hospital_wkrm    VIEW     `  CREATE VIEW public.v_hospital_wkrm AS
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
 "   DROP VIEW public.v_hospital_wkrm;
       public          postgres    false    215    273    219    219    218    218    273    273    218    218    218    218    273    273    218    218    218    218    273    273    273    215    273    273    273    216    216    216                       1259    61267    v_test    VIEW     �  CREATE VIEW public.v_test AS
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
    DROP VIEW public.v_test;
       public          postgres    false    235    273    273    273    273    273    273    273    273    273    273    273    273    273    273    273    273    273    273    273    273    273    273    235            x          0    59502 
   adres_test 
   TABLE DATA           5   COPY public.adres_test (adres_id, nazwa) FROM stdin;
    public          postgres    false    209   >}      �          0    61247    hospital_config_managment 
   TABLE DATA           U   COPY public.hospital_config_managment (hospital_config_id, managment_id) FROM stdin;
    public          postgres    false    275   )�      �          0    60589    managment_hospitals 
   TABLE DATA           O   COPY public.managment_hospitals (managment_id, hospital_config_id) FROM stdin;
    public          postgres    false    260   ]�      �          0    60594    password_history 
   TABLE DATA           S   COPY public.password_history (password_change_id, password_history_id) FROM stdin;
    public          postgres    false    261   ��      z          0    59538    private_messages 
   TABLE DATA           G   COPY public.private_messages (private_message_id, user_id) FROM stdin;
    public          postgres    false    211   ��      �          0    60599    recipent_hospital_branch_closed 
   TABLE DATA           a   COPY public.recipent_hospital_branch_closed (hospital_branch_closed_id, hospital_id) FROM stdin;
    public          postgres    false    262   Ȇ      �          0    60604    recipent_hospital_failures 
   TABLE DATA           W   COPY public.recipent_hospital_failures (hospital_failures_id, hospital_id) FROM stdin;
    public          postgres    false    263   �      {          0    59547    szpitale_raporty_godziny 
   TABLE DATA           �   COPY public.szpitale_raporty_godziny (raport_id, szpital_skr_oddzial_id, uzytkownik_id, stan_g1, stan_g2, stan_g3, liczba_lekarzy, data_aktualizacji) FROM stdin;
    public          postgres    false    212   �      |          0    59550    tab_address 
   TABLE DATA           R   COPY public.tab_address (address_id, city, number, post_code, street) FROM stdin;
    public          postgres    false    213   �      }          0    59555    tab_admin_messages 
   TABLE DATA           �   COPY public.tab_admin_messages (admin_messages_id, admin_messages_author, admin_messages_title, admin_messages_type) FROM stdin;
    public          postgres    false    214   ��      �          0    60609    tab_announcement 
   TABLE DATA           �   COPY public.tab_announcement (announcement_id, announcement_active, announcement_content, announcement_title, created_by, created_date, data_do, data_od) FROM stdin;
    public          postgres    false    264   Ԏ      �          0    60788    tab_announcement_read 
   TABLE DATA           E   COPY public.tab_announcement_read (announcement_read_id) FROM stdin;
    public          postgres    false    269   �      ~          0    59571 
   tab_branch 
   TABLE DATA           b   COPY public.tab_branch (id, code, kolej, name, branch_description, email, fax, phone) FROM stdin;
    public          postgres    false    215   �      �          0    60794    tab_document 
   TABLE DATA           f   COPY public.tab_document (id, document_type, file_description, file_path, filetype, name) FROM stdin;
    public          postgres    false    271   {�                0    59576    tab_hospital 
   TABLE DATA           �   COPY public.tab_hospital (hospital_id, director, fax, kolej, name, phone, short_name, hospital_category_id, hospital_county_id, hospital_description, address_id, hospital_active) FROM stdin;
    public          postgres    false    216   ��      �          0    61310    tab_hospital_branch_closed 
   TABLE DATA           �   COPY public.tab_hospital_branch_closed (id, agreement, cause, date_from, date_to, replacement, title, hospital_id, hospital_config_id, user_id) FROM stdin;
    public          postgres    false    283   q�      �          0    61318     tab_hospital_branch_closed_files 
   TABLE DATA           �   COPY public.tab_hospital_branch_closed_files (hospital_branch_closed_files_id, file_active, file_name, file_url, local_date_time, hospital_branch_closed_id) FROM stdin;
    public          postgres    false    285   �      �          0    59586    tab_hospital_category 
   TABLE DATA           K   COPY public.tab_hospital_category (hospital_category_id, name) FROM stdin;
    public          postgres    false    217   L�      �          0    59589    tab_hospital_config 
   TABLE DATA           �   COPY public.tab_hospital_config (hospital_config_id, hospital_config_description, number_of_beds, number_of_beds_locked, branch_id, hospital_id, description, email, fax, phone, active, create_date, update_date, user_id, managment_id) FROM stdin;
    public          postgres    false    218   ߱      �          0    59595    tab_hospital_county 
   TABLE DATA           G   COPY public.tab_hospital_county (hospital_county_id, name) FROM stdin;
    public          postgres    false    219   �      �          0    61326    tab_hospital_failures 
   TABLE DATA           �   COPY public.tab_hospital_failures (hospital_failures_id, add_date, data_do, data_od, description, security, hospital_id, hospital_config_id, user_id) FROM stdin;
    public          postgres    false    287   <      �          0    61334    tab_hospital_failures_files 
   TABLE DATA           �   COPY public.tab_hospital_failures_files (hospital_failures_files_id, file_active, file_name, file_url, local_date_time, hospital_failures_id) FROM stdin;
    public          postgres    false    289   �      �          0    60647    tab_hospital_procedures 
   TABLE DATA           �   COPY public.tab_hospital_procedures (hospital_procedures_id, description, local_date_time, modified_date_time, name, procedure_active, hospital_id, hospital_procedures_types_id, user_id) FROM stdin;
    public          postgres    false    266         �          0    60655    tab_hospital_procedures_file 
   TABLE DATA           �   COPY public.tab_hospital_procedures_file (hospital_procedures_file_id, file_active, file_name, file_url, local_date_time, hospital_procedures_id) FROM stdin;
    public          postgres    false    268   ~	      �          0    60192    tab_hospital_procedures_type 
   TABLE DATA           �   COPY public.tab_hospital_procedures_type (hospital_procedures_type_id, active, hospital_procedures_reception, hospital_procedures_type_desc) FROM stdin;
    public          postgres    false    251   �
      �          0    61184    tab_hospital_report 
   TABLE DATA           a  COPY public.tab_hospital_report (hospital_report_id, completed_admissionsa, completed_admissionsb, completed_admissionsc, doctora, planned_partiesa, planned_partiesb, planned_partiesc, statea, stateadate, statea_1, stateb, statebdate, stateb_1, statec, statecdate, statec_1, update_date, hospital_id, hospital_config_id, report_id, user_id) FROM stdin;
    public          postgres    false    273   �
      �          0    59618    tab_hospital_report_history 
   TABLE DATA           �   COPY public.tab_hospital_report_history (hospital_report_history_id, create_date, hospital_report_history_description, hospital_id, hospital_config_id, hospital_report_id, user_id) FROM stdin;
    public          postgres    false    220   u      �          0    59623 #   tab_hospital_report_thread_question 
   TABLE DATA           a   COPY public.tab_hospital_report_thread_question (id, is_visible, ordering, question) FROM stdin;
    public          postgres    false    221   �      �          0    59626 #   tab_hospital_report_threads_answers 
   TABLE DATA           {   COPY public.tab_hospital_report_threads_answers (id, answer, hospital_report_id, hospital_threads_question_id) FROM stdin;
    public          postgres    false    222   �      �          0    59629    tab_log_type 
   TABLE DATA           B   COPY public.tab_log_type (log_type_id, log_type_name) FROM stdin;
    public          postgres    false    223   �      �          0    61292    tab_logi 
   TABLE DATA           U   COPY public.tab_logi (log_id, created_date, log_desc, log_type, user_id) FROM stdin;
    public          postgres    false    281   �      �          0    61283    tab_mail_properties 
   TABLE DATA           Z   COPY public.tab_mail_properties (id, active, host, password, port, user_name) FROM stdin;
    public          postgres    false    279   ,      �          0    59635    tab_managment 
   TABLE DATA           �   COPY public.tab_managment (managment_id, managment_description, managment_email, managment_mobile_phone, managment_person, managment_phone) FROM stdin;
    public          postgres    false    224   ~      �          0    60532    tab_messages 
   TABLE DATA           �   COPY public.tab_messages (messages_id, add_date, content, end_date, messages_active, start_date, title, hospital_id, user_id) FROM stdin;
    public          postgres    false    256   �      �          0    60539    tab_messages__type 
   TABLE DATA           R   COPY public.tab_messages__type (messages_type_id, messages_type_name) FROM stdin;
    public          postgres    false    257         �          0    60545    tab_messages_files 
   TABLE DATA           v   COPY public.tab_messages_files (messages_files_id, file_name, file_url, message_file_active, messages_id) FROM stdin;
    public          postgres    false    259   1      �          0    59660    tab_password_change 
   TABLE DATA           r   COPY public.tab_password_change (password_change_id, created_date, last_change, must_change, user_id) FROM stdin;
    public          postgres    false    229   P      �          0    59664    tab_password_history 
   TABLE DATA           �   COPY public.tab_password_history (password_history_id, last_change, last_password, old_password, user_login, user_id, password_string) FROM stdin;
    public          postgres    false    231   m      �          0    59669    tab_private_message 
   TABLE DATA           w   COPY public.tab_private_message (private_message_id, add_date, content, date_end, is_read, title, user_id) FROM stdin;
    public          postgres    false    232   �      �          0    59676    tab_reports 
   TABLE DATA           /   COPY public.tab_reports (id, date) FROM stdin;
    public          postgres    false    235         �          0    59679    tab_role 
   TABLE DATA           9   COPY public.tab_role (role_id, role, "desc") FROM stdin;
    public          postgres    false    236   &8      �          0    59683    tab_simc 
   TABLE DATA           {   COPY public.tab_simc (simc_id, data_aktualizacji, gmi, mz, nazwa, pow, rm, rodz_gm, stan_na, sym, sympod, woj) FROM stdin;
    public          postgres    false    238   9      �          0    59687 
   tab_status 
   TABLE DATA           V   COPY public.tab_status (status_id, name, status_description, status_name) FROM stdin;
    public          postgres    false    240   59      �          0    59692    tab_terc 
   TABLE DATA           n   COPY public.tab_terc (terc_id, data_aktualizacji, gmi, nazwa, nazwa_dod, pow, rodz, stan_na, woj) FROM stdin;
    public          postgres    false    241   R9      �          0    59698    tab_type 
   TABLE DATA           H   COPY public.tab_type (type_id, type_description, type_name) FROM stdin;
    public          postgres    false    243   o9      �          0    60238 	   tab_users 
   TABLE DATA           �   COPY public.tab_users (id, active, email, first_name, last_name, name, password, password_changed_time, user_name, hospital_id) FROM stdin;
    public          postgres    false    254   �9      �          0    59709    tab_wkrm_question 
   TABLE DATA           K   COPY public.tab_wkrm_question (id, nazwa, ordered, is_visible) FROM stdin;
    public          postgres    false    244   �:      �          0    59712    tab_wkrm_status 
   TABLE DATA           4   COPY public.tab_wkrm_status (id, nazwa) FROM stdin;
    public          postgres    false    245   �:      �          0    59715    user_branch 
   TABLE DATA           9   COPY public.user_branch (user_id, branch_id) FROM stdin;
    public          postgres    false    246   �:      �          0    59718 	   user_role 
   TABLE DATA           5   COPY public.user_role (user_id, role_id) FROM stdin;
    public          postgres    false    247   �:      �           0    0    hibernate_sequence    SEQUENCE SET     C   SELECT pg_catalog.setval('public.hibernate_sequence', 6440, true);
          public          postgres    false    210            �           0    0    tab_document_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tab_document_id_seq', 1, false);
          public          postgres    false    270            �           0    0 ?   tab_hospital_branch_closed_fi_hospital_branch_closed_files__seq    SEQUENCE SET     m   SELECT pg_catalog.setval('public.tab_hospital_branch_closed_fi_hospital_branch_closed_files__seq', 1, true);
          public          postgres    false    284            �           0    0 !   tab_hospital_branch_closed_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.tab_hospital_branch_closed_id_seq', 1, true);
          public          postgres    false    282            �           0    0 :   tab_hospital_failures_files_hospital_failures_files_id_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public.tab_hospital_failures_files_hospital_failures_files_id_seq', 1, true);
          public          postgres    false    288            �           0    0 .   tab_hospital_failures_hospital_failures_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.tab_hospital_failures_hospital_failures_id_seq', 1, true);
          public          postgres    false    286            �           0    0 <   tab_hospital_procedures_file_hospital_procedures_file_id_seq    SEQUENCE SET     j   SELECT pg_catalog.setval('public.tab_hospital_procedures_file_hospital_procedures_file_id_seq', 5, true);
          public          postgres    false    267            �           0    0 2   tab_hospital_procedures_hospital_procedures_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.tab_hospital_procedures_hospital_procedures_id_seq', 9, true);
          public          postgres    false    265            �           0    0 <   tab_hospital_procedures_type_hospital_procedures_type_id_seq    SEQUENCE SET     k   SELECT pg_catalog.setval('public.tab_hospital_procedures_type_hospital_procedures_type_id_seq', 1, false);
          public          postgres    false    250            �           0    0 *   tab_hospital_report_hospital_report_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.tab_hospital_report_hospital_report_id_seq', 10062, true);
          public          postgres    false    272            �           0    0    tab_logi_log_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tab_logi_log_id_seq', 95, true);
          public          postgres    false    280            �           0    0    tab_mail_properties_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tab_mail_properties_id_seq', 1, false);
          public          postgres    false    278            �           0    0    tab_messages_description_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tab_messages_description_seq', 1, false);
          public          postgres    false    225            �           0    0 (   tab_messages_files_messages_files_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.tab_messages_files_messages_files_id_seq', 17, true);
          public          postgres    false    258            �           0    0    tab_messages_files_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tab_messages_files_seq', 1, false);
          public          postgres    false    226            �           0    0    tab_messages_messages_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tab_messages_messages_id_seq', 18, true);
          public          postgres    false    255            �           0    0    tab_messages_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tab_messages_seq', 1, false);
          public          postgres    false    227            �           0    0    tab_messages_type_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tab_messages_type_seq', 1, false);
          public          postgres    false    228            �           0    0 *   tab_password_change_password_change_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.tab_password_change_password_change_id_seq', 1, false);
          public          postgres    false    230            �           0    0 *   tab_private_message_private_message_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.tab_private_message_private_message_id_seq', 1, false);
          public          postgres    false    233            �           0    0    tab_report_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tab_report_seq', 3823, true);
          public          postgres    false    234            �           0    0    tab_role_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tab_role_seq', 1, false);
          public          postgres    false    237            �           0    0    tab_simc_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tab_simc_seq', 1, false);
          public          postgres    false    239            �           0    0    tab_terc_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tab_terc_seq', 1, false);
          public          postgres    false    242            �           0    0    tab_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tab_users_id_seq', 5, true);
          public          postgres    false    253            �           2606    61251 8   hospital_config_managment hospital_config_managment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.hospital_config_managment
    ADD CONSTRAINT hospital_config_managment_pkey PRIMARY KEY (hospital_config_id, managment_id);
 b   ALTER TABLE ONLY public.hospital_config_managment DROP CONSTRAINT hospital_config_managment_pkey;
       public            postgres    false    275    275            �           2606    60593 ,   managment_hospitals managment_hospitals_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.managment_hospitals
    ADD CONSTRAINT managment_hospitals_pkey PRIMARY KEY (managment_id, hospital_config_id);
 V   ALTER TABLE ONLY public.managment_hospitals DROP CONSTRAINT managment_hospitals_pkey;
       public            postgres    false    260    260            �           2606    60598 &   password_history password_history_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.password_history
    ADD CONSTRAINT password_history_pkey PRIMARY KEY (password_change_id, password_history_id);
 P   ALTER TABLE ONLY public.password_history DROP CONSTRAINT password_history_pkey;
       public            postgres    false    261    261            S           2606    59763 &   private_messages private_messages_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.private_messages
    ADD CONSTRAINT private_messages_pkey PRIMARY KEY (private_message_id, user_id);
 P   ALTER TABLE ONLY public.private_messages DROP CONSTRAINT private_messages_pkey;
       public            postgres    false    211    211            �           2606    60603 D   recipent_hospital_branch_closed recipent_hospital_branch_closed_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.recipent_hospital_branch_closed
    ADD CONSTRAINT recipent_hospital_branch_closed_pkey PRIMARY KEY (hospital_branch_closed_id, hospital_id);
 n   ALTER TABLE ONLY public.recipent_hospital_branch_closed DROP CONSTRAINT recipent_hospital_branch_closed_pkey;
       public            postgres    false    262    262            �           2606    60608 :   recipent_hospital_failures recipent_hospital_failures_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.recipent_hospital_failures
    ADD CONSTRAINT recipent_hospital_failures_pkey PRIMARY KEY (hospital_failures_id, hospital_id);
 d   ALTER TABLE ONLY public.recipent_hospital_failures DROP CONSTRAINT recipent_hospital_failures_pkey;
       public            postgres    false    263    263            U           2606    59769 6   szpitale_raporty_godziny szpitale_raporty_godziny_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.szpitale_raporty_godziny
    ADD CONSTRAINT szpitale_raporty_godziny_pkey PRIMARY KEY (raport_id);
 `   ALTER TABLE ONLY public.szpitale_raporty_godziny DROP CONSTRAINT szpitale_raporty_godziny_pkey;
       public            postgres    false    212            W           2606    59771    tab_address tab_address_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tab_address
    ADD CONSTRAINT tab_address_pkey PRIMARY KEY (address_id);
 F   ALTER TABLE ONLY public.tab_address DROP CONSTRAINT tab_address_pkey;
       public            postgres    false    213            Y           2606    59773 *   tab_admin_messages tab_admin_messages_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.tab_admin_messages
    ADD CONSTRAINT tab_admin_messages_pkey PRIMARY KEY (admin_messages_id);
 T   ALTER TABLE ONLY public.tab_admin_messages DROP CONSTRAINT tab_admin_messages_pkey;
       public            postgres    false    214            �           2606    60615 &   tab_announcement tab_announcement_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.tab_announcement
    ADD CONSTRAINT tab_announcement_pkey PRIMARY KEY (announcement_id);
 P   ALTER TABLE ONLY public.tab_announcement DROP CONSTRAINT tab_announcement_pkey;
       public            postgres    false    264            �           2606    60792 0   tab_announcement_read tab_announcement_read_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tab_announcement_read
    ADD CONSTRAINT tab_announcement_read_pkey PRIMARY KEY (announcement_read_id);
 Z   ALTER TABLE ONLY public.tab_announcement_read DROP CONSTRAINT tab_announcement_read_pkey;
       public            postgres    false    269            [           2606    59781    tab_branch tab_branch_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tab_branch
    ADD CONSTRAINT tab_branch_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tab_branch DROP CONSTRAINT tab_branch_pkey;
       public            postgres    false    215            �           2606    60800    tab_document tab_document_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tab_document
    ADD CONSTRAINT tab_document_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tab_document DROP CONSTRAINT tab_document_pkey;
       public            postgres    false    271            �           2606    61324 F   tab_hospital_branch_closed_files tab_hospital_branch_closed_files_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_branch_closed_files
    ADD CONSTRAINT tab_hospital_branch_closed_files_pkey PRIMARY KEY (hospital_branch_closed_files_id);
 p   ALTER TABLE ONLY public.tab_hospital_branch_closed_files DROP CONSTRAINT tab_hospital_branch_closed_files_pkey;
       public            postgres    false    285            �           2606    61316 :   tab_hospital_branch_closed tab_hospital_branch_closed_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.tab_hospital_branch_closed
    ADD CONSTRAINT tab_hospital_branch_closed_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.tab_hospital_branch_closed DROP CONSTRAINT tab_hospital_branch_closed_pkey;
       public            postgres    false    283            _           2606    59785 0   tab_hospital_category tab_hospital_category_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_category
    ADD CONSTRAINT tab_hospital_category_pkey PRIMARY KEY (hospital_category_id);
 Z   ALTER TABLE ONLY public.tab_hospital_category DROP CONSTRAINT tab_hospital_category_pkey;
       public            postgres    false    217            a           2606    59787 ,   tab_hospital_config tab_hospital_config_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.tab_hospital_config
    ADD CONSTRAINT tab_hospital_config_pkey PRIMARY KEY (hospital_config_id);
 V   ALTER TABLE ONLY public.tab_hospital_config DROP CONSTRAINT tab_hospital_config_pkey;
       public            postgres    false    218            c           2606    59789 ,   tab_hospital_county tab_hospital_county_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.tab_hospital_county
    ADD CONSTRAINT tab_hospital_county_pkey PRIMARY KEY (hospital_county_id);
 V   ALTER TABLE ONLY public.tab_hospital_county DROP CONSTRAINT tab_hospital_county_pkey;
       public            postgres    false    219            �           2606    61340 <   tab_hospital_failures_files tab_hospital_failures_files_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_failures_files
    ADD CONSTRAINT tab_hospital_failures_files_pkey PRIMARY KEY (hospital_failures_files_id);
 f   ALTER TABLE ONLY public.tab_hospital_failures_files DROP CONSTRAINT tab_hospital_failures_files_pkey;
       public            postgres    false    289            �           2606    61332 0   tab_hospital_failures tab_hospital_failures_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_failures
    ADD CONSTRAINT tab_hospital_failures_pkey PRIMARY KEY (hospital_failures_id);
 Z   ALTER TABLE ONLY public.tab_hospital_failures DROP CONSTRAINT tab_hospital_failures_pkey;
       public            postgres    false    287            ]           2606    59793    tab_hospital tab_hospital_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tab_hospital
    ADD CONSTRAINT tab_hospital_pkey PRIMARY KEY (hospital_id);
 H   ALTER TABLE ONLY public.tab_hospital DROP CONSTRAINT tab_hospital_pkey;
       public            postgres    false    216            �           2606    60661 >   tab_hospital_procedures_file tab_hospital_procedures_file_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_procedures_file
    ADD CONSTRAINT tab_hospital_procedures_file_pkey PRIMARY KEY (hospital_procedures_file_id);
 h   ALTER TABLE ONLY public.tab_hospital_procedures_file DROP CONSTRAINT tab_hospital_procedures_file_pkey;
       public            postgres    false    268            �           2606    60653 4   tab_hospital_procedures tab_hospital_procedures_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_procedures
    ADD CONSTRAINT tab_hospital_procedures_pkey PRIMARY KEY (hospital_procedures_id);
 ^   ALTER TABLE ONLY public.tab_hospital_procedures DROP CONSTRAINT tab_hospital_procedures_pkey;
       public            postgres    false    266            �           2606    60196 >   tab_hospital_procedures_type tab_hospital_procedures_type_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_procedures_type
    ADD CONSTRAINT tab_hospital_procedures_type_pkey PRIMARY KEY (hospital_procedures_type_id);
 h   ALTER TABLE ONLY public.tab_hospital_procedures_type DROP CONSTRAINT tab_hospital_procedures_type_pkey;
       public            postgres    false    251            e           2606    59799 <   tab_hospital_report_history tab_hospital_report_history_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_report_history
    ADD CONSTRAINT tab_hospital_report_history_pkey PRIMARY KEY (hospital_report_history_id);
 f   ALTER TABLE ONLY public.tab_hospital_report_history DROP CONSTRAINT tab_hospital_report_history_pkey;
       public            postgres    false    220            �           2606    61190 ,   tab_hospital_report tab_hospital_report_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.tab_hospital_report
    ADD CONSTRAINT tab_hospital_report_pkey PRIMARY KEY (hospital_report_id);
 V   ALTER TABLE ONLY public.tab_hospital_report DROP CONSTRAINT tab_hospital_report_pkey;
       public            postgres    false    273            g           2606    59803 L   tab_hospital_report_thread_question tab_hospital_report_thread_question_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_report_thread_question
    ADD CONSTRAINT tab_hospital_report_thread_question_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.tab_hospital_report_thread_question DROP CONSTRAINT tab_hospital_report_thread_question_pkey;
       public            postgres    false    221            i           2606    59805 L   tab_hospital_report_threads_answers tab_hospital_report_threads_answers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_report_threads_answers
    ADD CONSTRAINT tab_hospital_report_threads_answers_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.tab_hospital_report_threads_answers DROP CONSTRAINT tab_hospital_report_threads_answers_pkey;
       public            postgres    false    222            k           2606    59807    tab_log_type tab_log_type_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tab_log_type
    ADD CONSTRAINT tab_log_type_pkey PRIMARY KEY (log_type_id);
 H   ALTER TABLE ONLY public.tab_log_type DROP CONSTRAINT tab_log_type_pkey;
       public            postgres    false    223            �           2606    61298    tab_logi tab_logi_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tab_logi
    ADD CONSTRAINT tab_logi_pkey PRIMARY KEY (log_id);
 @   ALTER TABLE ONLY public.tab_logi DROP CONSTRAINT tab_logi_pkey;
       public            postgres    false    281            �           2606    61289 ,   tab_mail_properties tab_mail_properties_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tab_mail_properties
    ADD CONSTRAINT tab_mail_properties_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tab_mail_properties DROP CONSTRAINT tab_mail_properties_pkey;
       public            postgres    false    279            m           2606    59811     tab_managment tab_managment_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tab_managment
    ADD CONSTRAINT tab_managment_pkey PRIMARY KEY (managment_id);
 J   ALTER TABLE ONLY public.tab_managment DROP CONSTRAINT tab_managment_pkey;
       public            postgres    false    224            �           2606    60543 *   tab_messages__type tab_messages__type_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.tab_messages__type
    ADD CONSTRAINT tab_messages__type_pkey PRIMARY KEY (messages_type_id);
 T   ALTER TABLE ONLY public.tab_messages__type DROP CONSTRAINT tab_messages__type_pkey;
       public            postgres    false    257            �           2606    60551 *   tab_messages_files tab_messages_files_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.tab_messages_files
    ADD CONSTRAINT tab_messages_files_pkey PRIMARY KEY (messages_files_id);
 T   ALTER TABLE ONLY public.tab_messages_files DROP CONSTRAINT tab_messages_files_pkey;
       public            postgres    false    259            �           2606    60538    tab_messages tab_messages_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tab_messages
    ADD CONSTRAINT tab_messages_pkey PRIMARY KEY (messages_id);
 H   ALTER TABLE ONLY public.tab_messages DROP CONSTRAINT tab_messages_pkey;
       public            postgres    false    256            o           2606    59821 ,   tab_password_change tab_password_change_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.tab_password_change
    ADD CONSTRAINT tab_password_change_pkey PRIMARY KEY (password_change_id);
 V   ALTER TABLE ONLY public.tab_password_change DROP CONSTRAINT tab_password_change_pkey;
       public            postgres    false    229            q           2606    59823 .   tab_password_history tab_password_history_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.tab_password_history
    ADD CONSTRAINT tab_password_history_pkey PRIMARY KEY (password_history_id);
 X   ALTER TABLE ONLY public.tab_password_history DROP CONSTRAINT tab_password_history_pkey;
       public            postgres    false    231            s           2606    59825 ,   tab_private_message tab_private_message_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.tab_private_message
    ADD CONSTRAINT tab_private_message_pkey PRIMARY KEY (private_message_id);
 V   ALTER TABLE ONLY public.tab_private_message DROP CONSTRAINT tab_private_message_pkey;
       public            postgres    false    232            u           2606    59827    tab_reports tab_reports_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tab_reports
    ADD CONSTRAINT tab_reports_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tab_reports DROP CONSTRAINT tab_reports_pkey;
       public            postgres    false    235            w           2606    59829    tab_role tab_role_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tab_role
    ADD CONSTRAINT tab_role_pkey PRIMARY KEY (role_id);
 @   ALTER TABLE ONLY public.tab_role DROP CONSTRAINT tab_role_pkey;
       public            postgres    false    236            y           2606    59831    tab_simc tab_simc_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tab_simc
    ADD CONSTRAINT tab_simc_pkey PRIMARY KEY (simc_id);
 @   ALTER TABLE ONLY public.tab_simc DROP CONSTRAINT tab_simc_pkey;
       public            postgres    false    238            {           2606    59833    tab_status tab_status_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tab_status
    ADD CONSTRAINT tab_status_pkey PRIMARY KEY (status_id);
 D   ALTER TABLE ONLY public.tab_status DROP CONSTRAINT tab_status_pkey;
       public            postgres    false    240            }           2606    59835    tab_terc tab_terc_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tab_terc
    ADD CONSTRAINT tab_terc_pkey PRIMARY KEY (terc_id);
 @   ALTER TABLE ONLY public.tab_terc DROP CONSTRAINT tab_terc_pkey;
       public            postgres    false    241                       2606    59837    tab_type tab_type_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tab_type
    ADD CONSTRAINT tab_type_pkey PRIMARY KEY (type_id);
 @   ALTER TABLE ONLY public.tab_type DROP CONSTRAINT tab_type_pkey;
       public            postgres    false    243            �           2606    60244    tab_users tab_users_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tab_users
    ADD CONSTRAINT tab_users_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tab_users DROP CONSTRAINT tab_users_pkey;
       public            postgres    false    254            �           2606    59841 (   tab_wkrm_question tab_wkrm_question_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tab_wkrm_question
    ADD CONSTRAINT tab_wkrm_question_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.tab_wkrm_question DROP CONSTRAINT tab_wkrm_question_pkey;
       public            postgres    false    244            �           2606    59843 $   tab_wkrm_status tab_wkrm_status_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tab_wkrm_status
    ADD CONSTRAINT tab_wkrm_status_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tab_wkrm_status DROP CONSTRAINT tab_wkrm_status_pkey;
       public            postgres    false    245            �           2606    60246 &   tab_users uk_dkudmh6llsy7s1fokxtki03bd 
   CONSTRAINT     f   ALTER TABLE ONLY public.tab_users
    ADD CONSTRAINT uk_dkudmh6llsy7s1fokxtki03bd UNIQUE (user_name);
 P   ALTER TABLE ONLY public.tab_users DROP CONSTRAINT uk_dkudmh6llsy7s1fokxtki03bd;
       public            postgres    false    254            �           2606    59845    user_branch user_branch_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.user_branch
    ADD CONSTRAINT user_branch_pkey PRIMARY KEY (user_id, branch_id);
 F   ALTER TABLE ONLY public.user_branch DROP CONSTRAINT user_branch_pkey;
       public            postgres    false    246    246            �           2606    59847    user_role user_role_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (user_id, role_id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    247    247            �           2606    61262 /   tab_hospital_config fk1fmv7jvopon2j91h5bfcu02ey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_config
    ADD CONSTRAINT fk1fmv7jvopon2j91h5bfcu02ey FOREIGN KEY (managment_id) REFERENCES public.tab_managment(managment_id);
 Y   ALTER TABLE ONLY public.tab_hospital_config DROP CONSTRAINT fk1fmv7jvopon2j91h5bfcu02ey;
       public          postgres    false    3437    218    224            �           2606    60312 ,   private_messages fk1y31co111gmc0qtqutqq5o2qy    FK CONSTRAINT     �   ALTER TABLE ONLY public.private_messages
    ADD CONSTRAINT fk1y31co111gmc0qtqutqq5o2qy FOREIGN KEY (user_id) REFERENCES public.tab_users(id);
 V   ALTER TABLE ONLY public.private_messages DROP CONSTRAINT fk1y31co111gmc0qtqutqq5o2qy;
       public          postgres    false    211    3467    254            �           2606    60712 6   recipent_hospital_failures fk2oas0w9t8b59uveud8uurdx33    FK CONSTRAINT     �   ALTER TABLE ONLY public.recipent_hospital_failures
    ADD CONSTRAINT fk2oas0w9t8b59uveud8uurdx33 FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);
 `   ALTER TABLE ONLY public.recipent_hospital_failures DROP CONSTRAINT fk2oas0w9t8b59uveud8uurdx33;
       public          postgres    false    216    263    3421            �           2606    61215 /   tab_hospital_report fk4ucixj7vru5j28vasvd38ps8g    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_report
    ADD CONSTRAINT fk4ucixj7vru5j28vasvd38ps8g FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);
 Y   ALTER TABLE ONLY public.tab_hospital_report DROP CONSTRAINT fk4ucixj7vru5j28vasvd38ps8g;
       public          postgres    false    216    273    3421            �           2606    60272 7   tab_hospital_report_history fk59rdfq5wdmf5tubbbjx934vx1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_report_history
    ADD CONSTRAINT fk59rdfq5wdmf5tubbbjx934vx1 FOREIGN KEY (user_id) REFERENCES public.tab_users(id);
 a   ALTER TABLE ONLY public.tab_hospital_report_history DROP CONSTRAINT fk59rdfq5wdmf5tubbbjx934vx1;
       public          postgres    false    220    3467    254            �           2606    61225 /   tab_hospital_report fk5oear2oxq36umq4q455dv3ipx    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_report
    ADD CONSTRAINT fk5oear2oxq36umq4q455dv3ipx FOREIGN KEY (report_id) REFERENCES public.tab_reports(id);
 Y   ALTER TABLE ONLY public.tab_hospital_report DROP CONSTRAINT fk5oear2oxq36umq4q455dv3ipx;
       public          postgres    false    273    235    3445            �           2606    61257 5   hospital_config_managment fk5rt3kpp9gmi547n3ssik6n94f    FK CONSTRAINT     �   ALTER TABLE ONLY public.hospital_config_managment
    ADD CONSTRAINT fk5rt3kpp9gmi547n3ssik6n94f FOREIGN KEY (hospital_config_id) REFERENCES public.tab_hospital_config(hospital_config_id);
 _   ALTER TABLE ONLY public.hospital_config_managment DROP CONSTRAINT fk5rt3kpp9gmi547n3ssik6n94f;
       public          postgres    false    218    275    3425            �           2606    60687 /   managment_hospitals fk5vea3ex8xcd8a7kuwttts6as1    FK CONSTRAINT     �   ALTER TABLE ONLY public.managment_hospitals
    ADD CONSTRAINT fk5vea3ex8xcd8a7kuwttts6as1 FOREIGN KEY (managment_id) REFERENCES public.tab_managment(managment_id);
 Y   ALTER TABLE ONLY public.managment_hospitals DROP CONSTRAINT fk5vea3ex8xcd8a7kuwttts6as1;
       public          postgres    false    260    224    3437            �           2606    61356 <   tab_hospital_branch_closed_files fk69pyb470xaun1ixjlq8kvcwix    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_branch_closed_files
    ADD CONSTRAINT fk69pyb470xaun1ixjlq8kvcwix FOREIGN KEY (hospital_branch_closed_id) REFERENCES public.tab_hospital_branch_closed(id);
 f   ALTER TABLE ONLY public.tab_hospital_branch_closed_files DROP CONSTRAINT fk69pyb470xaun1ixjlq8kvcwix;
       public          postgres    false    283    285    3503            �           2606    59893 (   tab_hospital fk6k05eyf88cut40t2ooka7ppgs    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital
    ADD CONSTRAINT fk6k05eyf88cut40t2ooka7ppgs FOREIGN KEY (hospital_county_id) REFERENCES public.tab_hospital_county(hospital_county_id);
 R   ALTER TABLE ONLY public.tab_hospital DROP CONSTRAINT fk6k05eyf88cut40t2ooka7ppgs;
       public          postgres    false    3427    219    216            �           2606    60562 (   tab_messages fk7yfwxriviufq2usd2o0jpwip0    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_messages
    ADD CONSTRAINT fk7yfwxriviufq2usd2o0jpwip0 FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);
 R   ALTER TABLE ONLY public.tab_messages DROP CONSTRAINT fk7yfwxriviufq2usd2o0jpwip0;
       public          postgres    false    256    3421    216            �           2606    59903 (   tab_hospital fk95bqjr4sihpdby00ara7qcx20    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital
    ADD CONSTRAINT fk95bqjr4sihpdby00ara7qcx20 FOREIGN KEY (address_id) REFERENCES public.tab_address(address_id);
 R   ALTER TABLE ONLY public.tab_hospital DROP CONSTRAINT fk95bqjr4sihpdby00ara7qcx20;
       public          postgres    false    213    3415    216            �           2606    61351 6   tab_hospital_branch_closed fk9cpr3r9qcui8gbsr42yooh5vg    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_branch_closed
    ADD CONSTRAINT fk9cpr3r9qcui8gbsr42yooh5vg FOREIGN KEY (user_id) REFERENCES public.tab_users(id);
 `   ALTER TABLE ONLY public.tab_hospital_branch_closed DROP CONSTRAINT fk9cpr3r9qcui8gbsr42yooh5vg;
       public          postgres    false    283    254    3467            �           2606    59923 '   user_branch fkb9iga8uobo013bdyinlqjfk2m    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_branch
    ADD CONSTRAINT fkb9iga8uobo013bdyinlqjfk2m FOREIGN KEY (branch_id) REFERENCES public.tab_branch(id);
 Q   ALTER TABLE ONLY public.user_branch DROP CONSTRAINT fkb9iga8uobo013bdyinlqjfk2m;
       public          postgres    false    246    3419    215            �           2606    60702 ;   recipent_hospital_branch_closed fkcknfqyowpfwh6ro5v92wgq65q    FK CONSTRAINT     �   ALTER TABLE ONLY public.recipent_hospital_branch_closed
    ADD CONSTRAINT fkcknfqyowpfwh6ro5v92wgq65q FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);
 e   ALTER TABLE ONLY public.recipent_hospital_branch_closed DROP CONSTRAINT fkcknfqyowpfwh6ro5v92wgq65q;
       public          postgres    false    3421    216    262            �           2606    59943 ,   private_messages fkcmyvnskqmk68a5gbrxn7dos87    FK CONSTRAINT     �   ALTER TABLE ONLY public.private_messages
    ADD CONSTRAINT fkcmyvnskqmk68a5gbrxn7dos87 FOREIGN KEY (private_message_id) REFERENCES public.tab_private_message(private_message_id);
 V   ALTER TABLE ONLY public.private_messages DROP CONSTRAINT fkcmyvnskqmk68a5gbrxn7dos87;
       public          postgres    false    211    3443    232            �           2606    60697 ,   password_history fkcv0jmpthmb0c5rabgcdjk5qxv    FK CONSTRAINT     �   ALTER TABLE ONLY public.password_history
    ADD CONSTRAINT fkcv0jmpthmb0c5rabgcdjk5qxv FOREIGN KEY (password_change_id) REFERENCES public.tab_password_change(password_change_id);
 V   ALTER TABLE ONLY public.password_history DROP CONSTRAINT fkcv0jmpthmb0c5rabgcdjk5qxv;
       public          postgres    false    261    229    3439            �           2606    61371 1   tab_hospital_failures fkdea1n3wabprr2i3b6v8fnjg0m    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_failures
    ADD CONSTRAINT fkdea1n3wabprr2i3b6v8fnjg0m FOREIGN KEY (user_id) REFERENCES public.tab_users(id);
 [   ALTER TABLE ONLY public.tab_hospital_failures DROP CONSTRAINT fkdea1n3wabprr2i3b6v8fnjg0m;
       public          postgres    false    3467    287    254            �           2606    61252 5   hospital_config_managment fkdqr1pne2wlio51vd1h43gm6oc    FK CONSTRAINT     �   ALTER TABLE ONLY public.hospital_config_managment
    ADD CONSTRAINT fkdqr1pne2wlio51vd1h43gm6oc FOREIGN KEY (managment_id) REFERENCES public.tab_managment(managment_id);
 _   ALTER TABLE ONLY public.hospital_config_managment DROP CONSTRAINT fkdqr1pne2wlio51vd1h43gm6oc;
       public          postgres    false    3437    275    224            �           2606    60692 ,   password_history fke78g9hwv3ayxcqkoyk3xs6spw    FK CONSTRAINT     �   ALTER TABLE ONLY public.password_history
    ADD CONSTRAINT fke78g9hwv3ayxcqkoyk3xs6spw FOREIGN KEY (password_history_id) REFERENCES public.tab_password_history(password_history_id);
 V   ALTER TABLE ONLY public.password_history DROP CONSTRAINT fke78g9hwv3ayxcqkoyk3xs6spw;
       public          postgres    false    231    3441    261            �           2606    60777 3   tab_hospital_procedures fke89b5pihhje8if1snkw80931w    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_procedures
    ADD CONSTRAINT fke89b5pihhje8if1snkw80931w FOREIGN KEY (user_id) REFERENCES public.tab_users(id);
 ]   ALTER TABLE ONLY public.tab_hospital_procedures DROP CONSTRAINT fke89b5pihhje8if1snkw80931w;
       public          postgres    false    266    254    3467            �           2606    59973 ?   tab_hospital_report_threads_answers fkfrjwfwspvkvqyvqahlig4surd    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_report_threads_answers
    ADD CONSTRAINT fkfrjwfwspvkvqyvqahlig4surd FOREIGN KEY (hospital_threads_question_id) REFERENCES public.tab_hospital_report_thread_question(id);
 i   ALTER TABLE ONLY public.tab_hospital_report_threads_answers DROP CONSTRAINT fkfrjwfwspvkvqyvqahlig4surd;
       public          postgres    false    222    3431    221            �           2606    59978 (   tab_hospital fkgj14cv99fspvekw3qpxmm08kc    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital
    ADD CONSTRAINT fkgj14cv99fspvekw3qpxmm08kc FOREIGN KEY (hospital_category_id) REFERENCES public.tab_hospital_category(hospital_category_id);
 R   ALTER TABLE ONLY public.tab_hospital DROP CONSTRAINT fkgj14cv99fspvekw3qpxmm08kc;
       public          postgres    false    217    3423    216            �           2606    60682 /   managment_hospitals fkh38p6469au5yja3kwym86gc5u    FK CONSTRAINT     �   ALTER TABLE ONLY public.managment_hospitals
    ADD CONSTRAINT fkh38p6469au5yja3kwym86gc5u FOREIGN KEY (hospital_config_id) REFERENCES public.tab_hospital_config(hospital_config_id);
 Y   ALTER TABLE ONLY public.managment_hospitals DROP CONSTRAINT fkh38p6469au5yja3kwym86gc5u;
       public          postgres    false    260    218    3425            �           2606    59988 /   tab_hospital_config fkh5i2v4nwmob0j88o8tl16g1y1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_config
    ADD CONSTRAINT fkh5i2v4nwmob0j88o8tl16g1y1 FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);
 Y   ALTER TABLE ONLY public.tab_hospital_config DROP CONSTRAINT fkh5i2v4nwmob0j88o8tl16g1y1;
       public          postgres    false    218    3421    216            �           2606    60782 8   tab_hospital_procedures_file fkh7t44b3gk0y4o7ddfk50cfo2q    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_procedures_file
    ADD CONSTRAINT fkh7t44b3gk0y4o7ddfk50cfo2q FOREIGN KEY (hospital_procedures_id) REFERENCES public.tab_hospital_procedures(hospital_procedures_id);
 b   ALTER TABLE ONLY public.tab_hospital_procedures_file DROP CONSTRAINT fkh7t44b3gk0y4o7ddfk50cfo2q;
       public          postgres    false    268    266    3487            �           2606    60257 /   tab_hospital_config fkha8nr3wi6oxwqaby5lpfnuk5s    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_config
    ADD CONSTRAINT fkha8nr3wi6oxwqaby5lpfnuk5s FOREIGN KEY (user_id) REFERENCES public.tab_users(id);
 Y   ALTER TABLE ONLY public.tab_hospital_config DROP CONSTRAINT fkha8nr3wi6oxwqaby5lpfnuk5s;
       public          postgres    false    218    3467    254            �           2606    61299 $   tab_logi fkiodunjyekwa56wvmbf8vbwh06    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_logi
    ADD CONSTRAINT fkiodunjyekwa56wvmbf8vbwh06 FOREIGN KEY (user_id) REFERENCES public.tab_users(id);
 N   ALTER TABLE ONLY public.tab_logi DROP CONSTRAINT fkiodunjyekwa56wvmbf8vbwh06;
       public          postgres    false    3467    281    254            �           2606    61205 7   tab_hospital_report_history fkk9rypm57wr8d1hwrqmqqms95n    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_report_history
    ADD CONSTRAINT fkk9rypm57wr8d1hwrqmqqms95n FOREIGN KEY (hospital_report_id) REFERENCES public.tab_hospital_report(hospital_report_id);
 a   ALTER TABLE ONLY public.tab_hospital_report_history DROP CONSTRAINT fkk9rypm57wr8d1hwrqmqqms95n;
       public          postgres    false    220    3495    273            �           2606    60322 %   user_role fkkfvndanayvqytjsvnrjvv8w01    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fkkfvndanayvqytjsvnrjvv8w01 FOREIGN KEY (user_id) REFERENCES public.tab_users(id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fkkfvndanayvqytjsvnrjvv8w01;
       public          postgres    false    247    3467    254            �           2606    61210 ?   tab_hospital_report_threads_answers fkkip28nev168rao8ntn50335r2    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_report_threads_answers
    ADD CONSTRAINT fkkip28nev168rao8ntn50335r2 FOREIGN KEY (hospital_report_id) REFERENCES public.tab_hospital_report(hospital_report_id);
 i   ALTER TABLE ONLY public.tab_hospital_report_threads_answers DROP CONSTRAINT fkkip28nev168rao8ntn50335r2;
       public          postgres    false    222    3495    273            �           2606    61366 1   tab_hospital_failures fkksksev4sef85c5xg0pgnmwnvp    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_failures
    ADD CONSTRAINT fkksksev4sef85c5xg0pgnmwnvp FOREIGN KEY (hospital_config_id) REFERENCES public.tab_hospital_config(hospital_config_id);
 [   ALTER TABLE ONLY public.tab_hospital_failures DROP CONSTRAINT fkksksev4sef85c5xg0pgnmwnvp;
       public          postgres    false    218    3425    287            �           2606    60292 /   tab_password_change fkkyo30ekq08wgk3ya3m5v1ekyr    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_password_change
    ADD CONSTRAINT fkkyo30ekq08wgk3ya3m5v1ekyr FOREIGN KEY (user_id) REFERENCES public.tab_users(id);
 Y   ALTER TABLE ONLY public.tab_password_change DROP CONSTRAINT fkkyo30ekq08wgk3ya3m5v1ekyr;
       public          postgres    false    229    3467    254            �           2606    61361 1   tab_hospital_failures fklckr0dmhwvcj6rtxlgug3i7y4    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_failures
    ADD CONSTRAINT fklckr0dmhwvcj6rtxlgug3i7y4 FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);
 [   ALTER TABLE ONLY public.tab_hospital_failures DROP CONSTRAINT fklckr0dmhwvcj6rtxlgug3i7y4;
       public          postgres    false    287    3421    216            �           2606    60572 .   tab_messages_files fkmegsswybvn3u0dn0bmox8g9re    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_messages_files
    ADD CONSTRAINT fkmegsswybvn3u0dn0bmox8g9re FOREIGN KEY (messages_id) REFERENCES public.tab_messages(messages_id);
 X   ALTER TABLE ONLY public.tab_messages_files DROP CONSTRAINT fkmegsswybvn3u0dn0bmox8g9re;
       public          postgres    false    259    256    3471            �           2606    60772 2   tab_hospital_procedures fkn0bekg7rwcuics9oobhwfimu    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_procedures
    ADD CONSTRAINT fkn0bekg7rwcuics9oobhwfimu FOREIGN KEY (hospital_procedures_types_id) REFERENCES public.tab_hospital_procedures_type(hospital_procedures_type_id);
 \   ALTER TABLE ONLY public.tab_hospital_procedures DROP CONSTRAINT fkn0bekg7rwcuics9oobhwfimu;
       public          postgres    false    251    266    3465            �           2606    61346 6   tab_hospital_branch_closed fknc6kxu69ttvs6mk4vn5lylwgw    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_branch_closed
    ADD CONSTRAINT fknc6kxu69ttvs6mk4vn5lylwgw FOREIGN KEY (hospital_config_id) REFERENCES public.tab_hospital_config(hospital_config_id);
 `   ALTER TABLE ONLY public.tab_hospital_branch_closed DROP CONSTRAINT fknc6kxu69ttvs6mk4vn5lylwgw;
       public          postgres    false    218    283    3425            �           2606    60317 /   tab_private_message fknh81l4jva6gbjf2649ysx814j    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_private_message
    ADD CONSTRAINT fknh81l4jva6gbjf2649ysx814j FOREIGN KEY (user_id) REFERENCES public.tab_users(id);
 Y   ALTER TABLE ONLY public.tab_private_message DROP CONSTRAINT fknh81l4jva6gbjf2649ysx814j;
       public          postgres    false    232    3467    254            �           2606    61341 6   tab_hospital_branch_closed fknw92galcsmd79hcmkahyt9v88    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_branch_closed
    ADD CONSTRAINT fknw92galcsmd79hcmkahyt9v88 FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);
 `   ALTER TABLE ONLY public.tab_hospital_branch_closed DROP CONSTRAINT fknw92galcsmd79hcmkahyt9v88;
       public          postgres    false    283    3421    216            �           2606    60098 /   tab_hospital_config fknwsaiti497hmyxmi8ddq7uf3b    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_config
    ADD CONSTRAINT fknwsaiti497hmyxmi8ddq7uf3b FOREIGN KEY (branch_id) REFERENCES public.tab_branch(id);
 Y   ALTER TABLE ONLY public.tab_hospital_config DROP CONSTRAINT fknwsaiti497hmyxmi8ddq7uf3b;
       public          postgres    false    218    3419    215            �           2606    60767 3   tab_hospital_procedures fkop8e87rxpmr7j4vqfgh0rpjl8    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_procedures
    ADD CONSTRAINT fkop8e87rxpmr7j4vqfgh0rpjl8 FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);
 ]   ALTER TABLE ONLY public.tab_hospital_procedures DROP CONSTRAINT fkop8e87rxpmr7j4vqfgh0rpjl8;
       public          postgres    false    216    266    3421            �           2606    61376 7   tab_hospital_failures_files fkp77a4q4g3e4kne0lfw899sma5    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_failures_files
    ADD CONSTRAINT fkp77a4q4g3e4kne0lfw899sma5 FOREIGN KEY (hospital_failures_id) REFERENCES public.tab_hospital_failures(hospital_failures_id);
 a   ALTER TABLE ONLY public.tab_hospital_failures_files DROP CONSTRAINT fkp77a4q4g3e4kne0lfw899sma5;
       public          postgres    false    289    3507    287            �           2606    61220 /   tab_hospital_report fkplvcrhgnktgk6njicin4xtige    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_report
    ADD CONSTRAINT fkplvcrhgnktgk6njicin4xtige FOREIGN KEY (hospital_config_id) REFERENCES public.tab_hospital_config(hospital_config_id);
 Y   ALTER TABLE ONLY public.tab_hospital_report DROP CONSTRAINT fkplvcrhgnktgk6njicin4xtige;
       public          postgres    false    218    3425    273            �           2606    60567 (   tab_messages fkpw0py7xs99prlu20ddilvqb6j    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_messages
    ADD CONSTRAINT fkpw0py7xs99prlu20ddilvqb6j FOREIGN KEY (user_id) REFERENCES public.tab_users(id);
 R   ALTER TABLE ONLY public.tab_messages DROP CONSTRAINT fkpw0py7xs99prlu20ddilvqb6j;
       public          postgres    false    256    254    3467            �           2606    60302 %   tab_users fkrmejo3n6uoo08x0g94css3l9a    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_users
    ADD CONSTRAINT fkrmejo3n6uoo08x0g94css3l9a FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);
 O   ALTER TABLE ONLY public.tab_users DROP CONSTRAINT fkrmejo3n6uoo08x0g94css3l9a;
       public          postgres    false    254    3421    216            �           2606    60153 %   user_role fksph8aeba4xok3qr5hk7jgmfc4    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fksph8aeba4xok3qr5hk7jgmfc4 FOREIGN KEY (role_id) REFERENCES public.tab_role(role_id);
 O   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fksph8aeba4xok3qr5hk7jgmfc4;
       public          postgres    false    247    3447    236            �           2606    60158 7   tab_hospital_report_history fksxkj6lbrggdnooneubo9gj5hp    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_report_history
    ADD CONSTRAINT fksxkj6lbrggdnooneubo9gj5hp FOREIGN KEY (hospital_id) REFERENCES public.tab_hospital(hospital_id);
 a   ALTER TABLE ONLY public.tab_hospital_report_history DROP CONSTRAINT fksxkj6lbrggdnooneubo9gj5hp;
       public          postgres    false    220    3421    216            �           2606    61230 /   tab_hospital_report fkteys5mk2ssmkasvu13syh0krs    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_report
    ADD CONSTRAINT fkteys5mk2ssmkasvu13syh0krs FOREIGN KEY (user_id) REFERENCES public.tab_users(id);
 Y   ALTER TABLE ONLY public.tab_hospital_report DROP CONSTRAINT fkteys5mk2ssmkasvu13syh0krs;
       public          postgres    false    254    273    3467            �           2606    60173 7   tab_hospital_report_history fktlin206pyx6j9f5h5ddn45qof    FK CONSTRAINT     �   ALTER TABLE ONLY public.tab_hospital_report_history
    ADD CONSTRAINT fktlin206pyx6j9f5h5ddn45qof FOREIGN KEY (hospital_config_id) REFERENCES public.tab_hospital_config(hospital_config_id);
 a   ALTER TABLE ONLY public.tab_hospital_report_history DROP CONSTRAINT fktlin206pyx6j9f5h5ddn45qof;
       public          postgres    false    220    3425    218            x   �  x��Y�n�J]�_��*b]So-m��k+�+���i��E�-4I�n��#<�/';[�5Uͷ^Q�� b���S�NU�m/�Or� ���V��I��FV�
k���9f�)	Ɉ;��I����p��7c7"j��E�K�lN&���]6�ߌg!\��d�|y^=ڔ�D�D6�H�+B����|y�xFc�m!sr&� v��������� ,�����p6��J/т�|�S����#2NH���$u�%k`��/��L��p9"3���c�LO�s�<[1��1^2sN�������շ��>�^H��8Q^��<~}�|�g�ujd$l1��Ɖv�\_���ne#���#|�0ZG\7��fn��������2����sp��< �8�_υn -�?�>��_:<�Ȁ�����vt �� �ܐ�FS�ہn4�zyÀK��" ��E�<��E?�U�/&lSPG�D�.�Cw����3��/�*���,�a�	�V&��4D~#%�;�F�ބ�g�/w�!�j�~F�H�	&<p]jyvJ�rb�O�=��KVՍ�˲u�����3NW�l����I��#�@>�ع�v0)_�p��>u-	�FQ��'��������C&��g~@�B?�9h
fRzj;��̌��pIa�՗D���T�=���	R�������� �|H�e4�:^���tb�}A0� �QD��)�Z�S�Y�^ކ��4�7[��P�j��h��l�X4Z��gI}L�,<�C� �T�h����Tu�^x1�g��QOT�d$cX",��~%)�K�7��$�-קd�S�����=3˃@L���	VS��w2r}7V�*��<�0���xH�V9�+���{��@.9S�y��5�ڀ�$�˧"2ym՛�CU��t����1b@U�����Yȷ�\Y������P&�е��f�[���������r|*0c����#A �!��[��zk�l��i�!7e�L��Y��NgL�Z��6a�j�� �ْ`+g^aƷvwhC�� ��Z��9���c�Z�_���[�S&�L����3a!]���O�J{M�	"}�f��FKo�5D��o�F�bS��\��nl���7��=��Hi��|�l��
�
�	��O��5�����	��ޮk#xOw������6�^yo�l�f��Puፂ���9�U���40A���'�;�3�z�]B��r�}��a��w��������^�	u�M��xD@t�nP�#O�v�+f����[훳/a���	�K5&�g���7g~GIݢե�&�F�S&0�\]m鐠~�<ǧHN�&�N CR*5��� �TZ<=��i���w��a�/�D�����f��3��銢�u�|F���Sw��J��i����ׯ�d�UB1���8̂m�ⱎf�yЖ;v�U�'��wP���NK���r��Q��^A��x#v��!N
�x)�D�6�0C�G(���Z�A#��^#��a	K&���U�,�w�Z�t�٘��f�׻E7��pVߧ��Q���ֵ�-_�f�q2���5S��s�Y���b��w[��,3ڃ�V-_�[(%'�q�d�����ngg)Ψ�>F�h�5�	�l�������=Ln4�X,��Ҕ�����Ñw��Lҋsr')H( �������tJ��(M�h��ת��bIZU>� \���{��۶� m*@���	����z۵_�=�U��6��*����a����	��Q�8��xa�$6�T<z�n��w�
��zZ
Vŕ~E�������oIU=��޺F���ۄ���6��J��� �T���*O������� �.��N�7���Ho�c%�~�z�䩹��,��9����2��:(�@h�\��ڟ��Qst��[�V!C�S�=�3u�y�,r9���}H�q�V+�>�ޮvs��ᇻ?Q6M��A]ͪN��m���O�W&��A:z`������xzT�7�I�
"\Ȅ�D���q\5�����}�9���$#�@���rv�PI��N�5��,�|�?�ł�V���.?����.������u�Q���n���&4���K/�K��'�>J{F���@Aq��~ � �|r3t��=�iUr�/��"\��9k� [�b��; �;��W�U���������sM(R�2s�Kj����Q/�>�g���uT.��j����'*�      �   $   x�314�4�214�&`�L�IC0i $c���� ���      �      x�3�414�2�F`�Lp��qqq ?S      �      x������ � �      z      x�3�4����� ]      �      x������ � �      �      x������ � �      {      x������ � �      |   �  x��XKr�6]����𷌝ĕ��q��R�*��ȰhREJ�"wq%���1f�d7ֽ�� %��T��@���׍�����c�1�f�3)\�l��ߔUVn��U�^�_}�Z5L0��q7f�(���]�,�,cZ�����r�O���\o�&�}�'�u���}ݰ�NM	����r������~Ɍ��&{lX3)ܞyi�G�E충G�K8��]�hV�s�P^�.���E9�0j��X"paa����چ�����[�1.p����)��K�e���^��0Q�=���]�(���[�(�/x��B�������9���@�j�o��_��:W��]T*���]冮P���G53�v��c3-̂����(t5׫fax\���47�M&tlaWպب|��A�i���::H*��3��grڌ��u�:b$�LЍ����xrݧ�.W٭�u!�쮁�9�l�ڥY),�ޝ��`�jUV�b �Q�9�����!��gc��J=����M�&�����7(�+��'dq4)d�Ћ��y.�@������L+�[.t`�|E�ň��RE��<j�٨��;�PFxτ��P������~�`���V�Xԭ�ທ�����D3���͓�DV$)~�!�[(	Ɠv���o��҂�%����l��`�n��g�P�\� 6Q�/˪���Q�^�	�E� H��s��G�}y.wjNZȔqe���	[ɝ��#"+�u�.�'��$1�#�7���	��>!2be��i�dt�~�t���~a�_���;%��(&��y���W��+�}()1#���5'*ʑC ��2���޳���ES�*e�HDt��Xe �:o�
����l�Pٓ����y������	�%���x惀�/B�W�:@��S��R��F΍c�i�03ӲB��x��R�͌$����V������Z�eqϗ+��!�����;Γ���h�������+s[���զ,��U�l�����B$!5ψ��z�sv	ͪm
&�X}�#�²`�@K"�8�e({_H��-��9Y�)ߗz�Cٽ�)��I�I$H�C,�ލ���E F�h"}C�!�];����Γ�e����0 ���zj�8u���!�K�I"�P/����/��Ox�Y� �"����P��Ry��� W��3����i���X�tD�9]aP�k���8�D��EN�95�8$"�cMCrgj"t��������CbQ��������5T(Jv҄7�^䦟;�v����n4�+�Է�K�Zת���4R/>mω3���vS�T�88F�G���M�����Wv�V��`�lU7��s߮|`!��aA/a4_ʐ�{�9�yBH莙�i=k��$)ؓ��	�s�8>4�:�u��-n��O��nM�y�Q�
���ݽ�Ȣ�;�YY4^����PF��[�V�yI��D���'w�Л�\���h�N�=�Q1"y2���2I�)q�^X��QI���sm�6�蜦��$h��v0c̍?QKk�O^��1�(p�a7'��bG	c �!+��Z�[�}\ϔ�4�[���a� �UblG�+zn�g�/]�Sމ%�;_���}	�r��OJ
h���4���ya_i�Iw�#u[`2�2t�#K�W��H:�b��hTiگF�I��R��z��}v����y���Bh�:�^v��:Y��S>o����ȓӜ�| ����]�Բ����p���i�����d��9C�^W|�L�At~��`a���'�K�|`�h�zc��{������4,Hz�l[O��wr�v�H����#���L�C��3;�LǄ
�����/�[��cC�&�\�n3��IQ�f��\��J�+V�VޯC���"b'      }      x������ � �      �      x������ � �      �      x������ � �      ~   ]  x��W�n�6]3_�e�HaJ�k�X��XI�aa6Ӣ
 @1�삶_0�A���,�Wϥ��Ig
x���^����z6�	��m��?��������;��R���HrQ[sՌ�u;?@� M-D��n���rppp)f{�tcӇ����+�UG�	i�d=�fn?��7����D��E�[3���9ߵ� .��ʰ��@�wI*���m U�
D)"�]�}xi��Rr�D�c���<�Yi�ʅ*�)ݰ�v����ԓ�7����fr:�`���m�F�"D
Q+��r�-�`����������Q+�+�8�%8<Q�$�#�*\c�D�E��;$����J�U"J��M�L������X������I��k�?|�����f.=�Y�yJX�o6\y�=�jP�I$�X7u fѡA�FR��S|���k��w�/�'�(Z���J̯m��Gq���-�E�9�@R0�0XY|:�'CX��'+���V�m��m��1���!o�+�v��=�H������eE�v݉������!Tu�Bv'��������58� �dD3���U�i$#�h6}Ͷ)�D�|Y)�*�g�����?8ͩ�̄[nZ;��c"�.����G���#]�#���*����,�l�%O�-�kp���6+9	)�1L�����m��5�t�`73�<�<L+3y��!+��L��vyN�"��$(j�B�6W����� BC:�Xxq/�"-�\����f�����d�f��6�U޼���������K;���n�wk�_c�,W�7���0��m��4d���(�)�;ױb���Z6+E^���Q2[+=���mő��s�+�z]�
�WǤn����(�"L�m#=�� :
��i���������r�κn��ƨ	m>5��HoɼAL�T��v�N�/�?2`F@-�/�Ի�YJ�@f��7�i"{�jiڥ�v-��
>��R��:��gjfHȂ��)��W�I�����~#�ek������T��f�<t����䟕�1�!�(�@0M����_9�z2L%�܇�p���&�O%2����]�!�������.ۆ�CփyrЄc�4};�ނ�IH�%��y�OͶm�msҵG3)�BE�M�rK%��4��ji&��s΍w��qEsL*�B�+�mu��1��7	�*�×�0N�xB�|�B���D��܂5��E/ �Q�a�%&�(��SJY��g6Ț�́�(���D���uk��n�ф���8g�`�|1W�*?����|�����KQ�"��P�\��F�Un�� %��L��o��}�8�x���>фƂ.T��x�T�7�foXk#Xr�rt�cN���	��hBBaA>���l���`T�����K���y���w����;웷�o�>����l�o�T}Ŷ~�뇻��o��៻w����-��OZ��@�V��X�����v<lJ����?|����Vr+�Bc�"�#B���Qĵ���P�`I�b�HG	)ʨp�V��=�"ڏ"�S�O�r$Qe�Kb������������\ͨ�j�l����������7�^�����>}���=\�	�,�P��^�eo�;;;�8�`�      �      x������ � �            x��<�r�H�g�WT�Ɏ��U�z �Î^��e����@Z�H
�yG���e��>v�l��f� IP��ӻ���)�̬�|gx�;BN	�U�����}E�z�{vtH.ZdN�V�"Sr<ȦY/�N���H�{������o/��<�8}��x�nxpt����j�zB)�?K�� ��a<�%Fip�ߥ�ϟn���\��q2 ���F���,��|8#�}���u0+�a�_M���O�IP�F�P*��!���Ȃ�lH���8�,�Y�?�״EN��l� ^'�0���Y�=9����u/n@�R���GR+���
x`��I$H;��*�2�"����N���h<ͧ�r�7 �<-ොd�c66 K�����=`�ή�Y�t�"���N9���X�1�|����ݾc�R��!��Y�Fn���rM�T�B����!��%�l4�'|^��g��>� �0VB�t�,��v�1����X�Ʋ6V������U��}��M��-9�{�G���߾|��(*�y\^\,���oL�Ğ�TD8#�,l����K�↭���:)f��"_�����m^�d�P�8�l�S�/�i� \f�,0���Ð���K~V�dLIg6��V��T֢l ��H}�C(i����1J�Z� ��3Y�K`n	:RL	�J=4�
_�H��K⯂��'Ac�h�m1r�\�"���[FQ BJ�P�y�un@Y:�'��Y��!���D�$�҉��J�� �Q�J��i�d��ch` >,�n�� R^5x8�� ���x��9�2���)�,/��R\k@�����h�B�YXJ��.��"��o�@9�@��9�� f�����.!g0���^?Kos����Gv�f�M�b4��	9Ko�d��)����iQd��$�5[������g��&���C�U4�ḘܓWio�������'�,�ϒ��XC�I� 4��fE�2�Pn�W��hEp-hKBg�Cm�@���̔\%��|�d�5����-���8�*<�%��0�a�y`y͟[Qǻ&YFڃ���i?i��f��`�w>Rժ Z�P.d�;Y2JؙY-���Π�P'�R'�ъ�*�T�c��=���ˣ�Ѓ������E~�8\��r� +�*���!��}�56�N�"��$�F�����m��A�Ԗ�,u�Q�� s!C!h���l_���8��PJ`�ף��%DH	G�S�ym�Ƣ6�,?0UqÙnM#G��+D+J�&Y	�&�T��J�hE ^&Ӽ@�nIv������¶�-3�=N�ޑ!��z�9aP"n܈�d��E/kt���lv��TBy]C4c���C$��X�є�D�6l�m��P-f�&'�ܴnc��QF=��� c����dƨ���I��־�JkѸ4�-���W�)���f��Z����*�Sr/SaQ�b��x_%���؜,�suS@43�w�Y_R���ysP��@a9�	���"��Ĭ�]�m�(Ä�F��ZX	��6�Fs�)� 0�f_~&W�ȳɠE�f����8!�@����ec�iƲ<�lh��Fy �R@hz3u�����}�!V�-���図��0�λv歓T��~�>>9�:wr
B�)��u��L���A���|f��AÓj�7`���̝��.�h�-�d��^����՗�{6)z}\˫�ӽ�9m���o��^���Ǔ�c`��_�Gn�{�6�D�<�)`�����	�����>ꞟ\�~���4�A��=zshׂA�������ǟ�����t��ڗm���nw���5�m�UN��7҇7"�YD��t�Av&��|h�,#�T���fŤ�5A�l4.��-�S�S�Ym�~ ^�G�����'ـ�t^�l~�<�8ޥ�?���o�z|5�>$h������$�J�,�-�y]^��"��m����3#45Yyn�6 ��Ύ��GW5,`F�Zg���M@�&�θ�����M�F2���ģ���1Q�M8>G$�zR|�!��H��üO4Z8�����o��1����c�B2�\��~e8:[�$f�Q���ҿC�2jY�.ĽCt\l��E^~�4OLH7�Ml�Mz�u��NS�Y�Y��*f�y�v�R���G����|�0&��D*2���V�i��x�b<O�1n�btr���t��������#��a�Sk� P�+yn�7�@e������ޫ��=��HE=��:��'\r��2�=E} T�����0i�D�`zǏ!�[|�Z,���9��-&P�6z��"H�Y�Y�q����0{���|/��T`~��w]�/Z{�B��>�����_�۴؜Y�i:��w%��$/����#͘�t����Il5���*'/Q�2�&9�\`u��>W���Ϯ����Y:�ϖ�&�Bд�I��"�|O�Ѹu`�G����ee���0�W�N�6�"�:�I'�yB���<��˔��FU����h�zx�:�[h��LQyI�4��R��@SA�� k�>}�HP��~~7�-�N���p����K7���KofS�����9��5�aR���v��bЧ`U�3gH�����"�x�Xr���t?Lz^����#�N2M=�s�A ����ۿ_���k�6;:�$�`zx�0�5ĴLR��j�r�\��m��e1)t��ӵB�xI�ƺpq
���+�����S]R̎A� pM��%y6H�I1'�</nfC��/?��r"��D�g����p��	d�u��A�a4º�h޳��6�n�
�H���ʗ��H%[�5/��eb=�x���v�U#�����١+a6�m'�ௐ��(7������+�!������=y��I���<C���g��<��b*f0��a�a����e��tT]���ःG�pk���dV��z���r��* ?^�\��h��}}P7�d<�y
�h����\-H	�vpA�J~t�/L ��p6z��3�R���VM�����]*݃�>H���Xs4��Z�UN��ު���҂Y�аF]�����cB� �RΫ*������4�T�o�{�����[�tq=����� �1γ�am�,��K�n�;۔&���<�^P,t0���w�ϗSf>�ʪ�0�t2[���Y�P��3�ո��X8��8�U�]�� �����17>��-�#z��@��Z�oDG��_�� GĳM�_�	�w��U
`JN����2O�컴�Œ���޲_�����Z��O7,�5]����0"�ժ�m��2�fjͺU9���.s���(�LB��z����9 �p�L�	���龐�.��\l���D����z=�N,w�`�yPia�5�P����N:�$&mX��m��U�%2�*Sg��
42y�"����u��过"��ENAŧ�g���O���n`b���v��s�\��;|��?UDv��AXVq�Se�����i}	�o�3��}Ӄ4�_�1�4����,�VY��h{���M��V	�@���e5�n�{+�c| IP�U�_d�RcU8}��%��p��>14�� Z�<�Pi@e�-�S�NF���yc$����XH�j��4l�D��Q�"�Č��j�`� R��2W�(�s�ܗj���;�XmuZBA�.��p�J.t�6���m#T���y��/����e���0�bsp��8�Ю>qY4L]0�x��1(�;&m���?�����o&0��n3�0_*C@ e7��È��p�>�B���q���\���
����;��7�A'À�Y�ZS������I?�LؓۂrU#�h�Wa���˅oC%�x��8�T�mi��Pb$T�V6�Q�\_�.�����'=����IJ2���[s0
��zhV��}��"몃�������3|�Ga��`�ѓ�ub��ݗ�_��yL��(+�ȅi@�gt,�uJ)O�
�C]C}M�ge�a��+-U��&��e��d
\#Yy����މ��9���nT���/�SW/����y`:��8�@P���w�����hkt���&G� �
  餛��x�0[�\ށ��{u��t��� t ��*R�+Ɣn9}a]`T��=J�I�|u��M?)�p��㺶E�[��|V{	kB��7�k�*�2��QH��s�ko��j:�2X���q2��P���H�~J�?~ ^�P�������ބ
*\Xl�&|r��]rT��/r*k/��e7�pn\Rky%���:�*2��v��n�^��Sʻ�P�J���q���s��!�;D��U+�'���ڌb�u�/�������������;sХ�c��N:��2��vc�A����=�:�y��b/�g79h��>ߩ~ɳ����[�����J�g��m�� �F��H�&9�OZ�����Rg+��_���0�] ����.����h��La�����^���|�L6��1�f�I_�FYR([tEݭ�� ��> �����cGZ��~�٘E� �j�\�p<��K��bWLk�]�nHga*��L�I���1��F�b��{����V9��hb��U��4)n2��d8M@�P������ݾ�������]�~s����Q�|�w߀���֒Ke��4�D>��2R��@�mVv��qm{�۬�ܢ���Sr���k�o3a7���{&���&۸	cl�)�����sr�w�<�o[q��-i���H�q�����F���bpر�t��iڝ5��b' ��t�G�qLXi��9[B�o����!6?�۠e�i�G�y��3�w��j_�l��y�mқ0�0�,�II�S��Yb���r�J���(4Z��ʃr�h W�mu�+����vńZ���_�Qsb|�{ۖ�M7�à�$+c�'�DU��c�Fj��..1�,-�p��Zut\��巋��k�� �G;�8�Ƶ�l+�Z�8|�'3W
#��c�����e�� ��Zm�X�K�O��md*�)ǚ~|n�f�PZzΘl�H��b�����}4x��:Kǳ��{�(���^t���.��2E(��ŗ�����-8da�Û��BtW>p���XV	���*�9*�3N�{�4����di�Ӹ���f0�i�Į����J�rX=�Bt�-Bno�FFGx�2�5D�Y%�r?{B��K���&	Ը�Q�ZP*_Í5�����ˊT2F/~��TR]�_!	A3o�#�מ�T�y�
.��)�m�]����:'A�6G����� V.钿�1����˲�jmW!�����#3]||pu�n>�a�#.��R���vk��B��~�������hԘ���qjW:����������W��ە��,���#{�������^���>3�M�K�ieB��ֵ��;�<@a����rf�]yS$߁� �Clg��K��d9�����rrX�-k16�z#�9�8���h}�.�]�#E�6)��<ƻ/hN���P�4z]L ����Kו z��W_�x�I-�vw���ړ��#�-�ϡ���1�����[�<��=�Bw�{\)��e��F�ׅ��2w�9X~7>��KI�$���%�Uj�$��4Lu^&�'2&�2ب�����55�Ou�^�M>��c_H�8ɛ�J��_�0cU�E�Q�ar���f�K�d\�o�1H���w�/i2�?H
ز_g�z�o݋a����ꍉnz��k;�3*q�<�X;ו�M��X��a��LRs�P;4�eķ�\��R��-�"�'�_�!�G�*O�B��U�ؖ+��3���p����Ӝ.d��nMp�K+"��nB���Ýv砤d\J���)���Q8Os��0@ٛ�������<p�f%�q3��Ni��f2����f���.Zv���rH�2���a��-o�r�I�b����C�k�ڌ���m`�}7ȫ��<!ª#��IW�b..Q#YK�\
z	Ng����$���x�U�r�v̷s>�����b_Rl�^]�-0y��B�VU��1Ӫ�͂��B�qZ�U��z�+��yh�[��?I��IA���ԟjI����{��Z5���BVW�
�O�^E��5�����l gӛ��1K;%
NW�b���ݾ��z,e5P&p��+�� � _�:S�ņ0$�[c̡B�����J��:Q�s�G�'{���X�
<ͯ�3�Zj+Y���3���.uQ���b/٦J�q������Po&c쉋���a73;��oe�չkZ���kÅ"p�Č ��bo�m�������P�٭���>� >̪۵�9P+�.���-:��%���R�$�9FF3�P�|����	ؔ�>������m����w5ݭN�6W���f�ʫO��7;Q��W;�oC��R�@$�]��G�_��f'z����C������p��������w��x�����U�i�|�3	`��s��X����e�
G-�ł�;k�^��U��@/l����ǂ�U�5hX�a�����G�pAY3����6+?�H����3h@�O�1�Ά���h��i~�ofhuwJ��ؽ��л��ɶ�`��+:�_F1�d����Ѥ�A�^u�e���G�2,~;��ƒ%�T��ea��?�bu0� -n�e�`�;���=B��{�겿K.O�gխ/��Z�����	I��?`�S���i^���xw�ݦC���"�<�%m��j5��� K_7�5:R�|8N���A����t�%�1�ަ�f�iڻߝ,�d�z�`NQ�6E��]���oxu;�      �   `   x�3�L�LIOIK/K)N+�4202�50�52W02�20 "��9X̂3���BR�K�+�6%&W��e&*T)T%�yy�ٙ����Ɯ&����\1z\\\ ���      �   [   x�3�,���+.)*�N�JT�U(O,I�K�O��,-��OLq*J�K�p��/NM��������D��L��B��������H�����ܔӐ+F��� 7b)      �   �   x�E�;�0@��a ��-X�X��Bn��jY͵8C��I�SӖ�#9�����K`�s���\*���ȱ�4�Y�019tأ�Bp�Fbs7	n�O4˴��M����]�n�z>��>��<�      �      x��}�r$Ǳ��+���0�[.��p����n�*�����T�
àn�m�����M���5�d��QhRs��
YY������ɛݰ�Ϊ��vR����N��r��/�_��i{��W�����޻{��V��WW���ۏ+FY�pZ�U���LsV��o�W/���r7T�����a=<�T��Zo���C�ُ�����z]�.�����^���߯��w�?�y��?o������������W_�p��w'�C��!�������g��~7\��~�uM���C����q7���_�o�����\�X�W�ۍ����:��W�ۇ{Iu��f�ڬ%v���j|C^�[��ܫ�3�զZO�|;V���0��۷���'���m5��>�>�ZV������|QU����|vx���~��q�N�&�b+���'Ï���~�ю��'��q�ty5L��������Qn���q�pBzI�\J�`uY��r��rX��Vڻ�W�#Z��$xg4 ^������ڮ���r���0X����Ɏ	��>���w<����f��x]�9 ��RO����8Ĩ�!.XK�XT�����IV˕}����r�;��C�J;	.�E�g�����r����a3<�C
�3���I�%�$w�YD����n���z^M�!ճ�pN��侖?�۪����ՏÛ��z?\�S�l{k����|�]�劐[�V�z�Rf%E���+Rƭ��^�;�_�(�?��I��b�LÙ�=q_Ӿ�b��ȳ��$k)��]y�\�GN.��"��tKǨ9L�=Q4M��������l��AѴu^�:d�}�p���T��Ic�4:,��%c��\-;ړ�����������ѻ�ʵun~K;���Y������9�[�����[��3 0'�YFc�'��{	�~��f�G��z�Z`�}#�$B S]㸤v�j��!Hh��Ԡ��hH����8�	=����Z²�1���(cO����E#i�g��*ce4����I����y���s�>śH�dy�s`M�`6!L�g�	� ��hKl�0��A�h�0���_��4&��V��UC��k�|�U���n> ��xi�`�zk�׮~�y�i��Rm&�gF�L0����jh���^����|�K�f����YX����#�����g�|���G��-�k򠩞U�|�=�%g��t���GΩ�^y�˟P�;r^���C��q���<<�?�􇙧�pt��<� ~u
W�a]��VdώY��n�[�����������$�*�$-�\RG`�(on_.ђq��������� ����vg}��ҟթW��W�c�vu�`b=�w�ů,(�����Y��1����ǿV��e��Kz�YՈ��}�/��Wr	y�ጷ��l����^�W���@����0^J K���Đ�fP�Ms`�ѓ1�����V��\¥=#�)�����P��Jo��+`o"�]ۗ��������۵�0H��ڌ?�WwѶ;�f|�^�Zӑ\�Ikc�wg�7�V�rs�{
��Xo��|���#�v?��I^��Ǜ�ZXlyy�֖%(�r�E��>&�������!��a#��Kmл{���a���I�1����C�����{�:޷����z�jꛞK�+�+j���#g	�×��.4�$� 64�M~'���x��!���T������k�g΋��	��U�然��a��Q�ş�s~���Ͻ_���7d>��R�t����wp�����D�)��ݬO�
���{���ܛC�n.P-ߕ�����]�8��i���/��:��	�bO
�U*}�RM-��O��)wEA�i�%��D̲!BM��3�y���KRa�?J�� u�%����6��vo��2����cgG�y���zz8?oN�uzݳ6^�j�'�/�@��!<����T��[m<m~
� ���t�/��Q*���t�}V�49g�;u�<���a��w���o�O9��ͯSx�Or&�6ف�6NkX���9��q>�ή�!�
��� ���|����Q���狼bw�D���3�痚�L�~[�P�].��Z�8]�ϴ�{[�/)i�G)��UV�
c>���-K�� V^`�VM�Y��Z
��pY�yYߧ��#�P�<"[�Vʉ( n"�$tOz�T�\��i#4,DCS����P�]����	��K0�]L�е~��w����c@� �Di�}H�hSӥ�-�ٮ��Vy�kc�Dǻ�9
pS�]��� �V��Q�~�}�Â=�m/Ε�
4ڒJ^3�s��7&ǖ��h�������~sZ_;�j�y�2���a;ޯo��ߜ��󢀧��16��E�p��d�\���1��Ç�����>#,�����`��)<���[?lo6��7$EM��r���ėQ$�E�H�����m7}l���Η�MGW\�Q��`
s����gW���h�����������p UtQ��������j3no�����5ev&aT�u���ɨ.?n�ͫJ�Pg�l�߯WW�v����{�Mu����l�6��v?L�LdA��Y�RL����i&�����D�W(Ҽ�0>6V �� �^v�,�t�*�c(�&Oդi� ��B{���Z�j�sd�_n���yA[���B��V�7�z�y������ZP+P��ޫĒ�V�)��L��:C� DQ����������	8��/�/Ԛ\V�/H2\&pG�/H=R�eA.���x?��UpB�����˻������\�Xa{�:��&���W��j�����au?^�At尻����*�*���	¡+QR�6g�ܞ<j8Tdw�/���S+\uad��
�X����4���{^}�������0�*���=��N矶4 �kWT�� ���NKm�b��&\�\4�s��o���������=/}Ip#^��1�������ڹ�-�D��.�?1�y��08- #%Q����R ��&���!^\��uBZЅ��X^B5�O�.c�^zy럀�E�+.�_	��G�;{�5��ta>������]��&1�^]jKq:�b�g�:��aqׄ��bA��6F��i�J�%Vx�CZ9@I��'���73������N�ދ����th	w�����l38y#'�v��w��O�ҡ䏋���_M����7�GA��M]�pe�� `�cǞʋ?��+��,�X~�i7��|�����E���x�.Oe�,��%�|ę���^����D���ش9��=�5gq���I�dv��Ro2�%�b�]1��������h�O�Cɭ��j7�_a+~��Z}�Pm/-��b�Me2�]�ۚ�d�
����(��EQ�ȅ3�y��C�C-��X�9G�{��w�z�c�@䗧1�I�,�T|Z�k�fXo!��
Y똾��Jtb��R�.��6�����z!גK� �F�^d��2����-}�(��k'UN�t/�N�"���X�jkf��q���Ҙ@���X4:�1�/��wWM�.�������'w3��ϵ��˷��FJ�(�#��o��f�&h�"y �U&Xmq
�xu6�̾R��2y�]��Q�U��f�-*��|l�}7���&�Y~�J��(`')P�ų���nTz����}����~xiYC%�<�/�tP}�9{��f����ҠX,�8b~���|��^�jk[��Xʱ�ɳU��Dq\	������x9�%/G)�׫w�����aWI)�^mA�-�qX�%Աl��+41��5l�\߭��s�-�Q13�a�4*%�
�j܍}~x#�������OcR>)�) ���e���@��������=_����,���� �v%��1��k0�����E��V�����}��d�9��5�#�E�/C�/n�,䗚M�@�vm$�I��Y���=���A����]M��{�̕.]�$"o��`;�D	�_O�+_�Aڢ��\��C;V̼Ç���j�A;�"%,<�\��<<�\�"�	9�Q�q���!��(�^�͂��!���A��    ��sr�/�z�X�Y�g՝c_����~��F#�M{�	�v���s�=ܬ���֮�	Gq�a7l/�@�K�D�AԺ�Zϔ���Y��ͦ�\�mM���~#u��8���4��%Z��]ۗ(�:q�z���Σ��ɥV[@ĉbO"*)ӢE@�����%�H�m�nc.08���x��S<s���Uq`v���5{��ׇ����Ͼ�vS���Lf�A4��5�$���j��8�'R��r�r����/����Q؏LDST�?2/n'�'���~ux7-*����;vq�x9ttM�(����5�nG��M'e����܍(��7��z��ӿ���N�����R�o�'B+�m��h#T�V/s��K���:z�����Q�'}d9�*j�58Q�S��a�.m�9�.fL7(]4R��t��E}H]@J����[*L�L��&�� )}� -'ڿ	iʎ���?���/�_�z��W?���U��dʅm��H�B
5��ht�1�s\'������;��9����Z��.���Q�:i#���@���D��l�^�@_.�$J"H�s�CU8��%���XT��9]���~5���*D�������Mc�g��"[-�<�O�[î�*U�L�bSL�G1#��:PD?�Z��b���;q���V���phK�[�B�ri*������ ��{�ۍŧ8M�B�]m��z�]K�?�NL�4�҆MY9�����@�I�jjAჰ؁_3���������$�rj佲�u�CÐHU[E1�@�@x��M�T���u�r)��,-��Q^8�	�E�0�w
�"�c�1	��)a�1�:�N�{���ѥ{n��/+HqbXL�����E�܏�
n��)畭o�� 6�R�!�^�^\W�����y��)������q!�8�`B����M��,��Ҽ�-���,�(�%���x��픤r�A�8� ���$��)�n(x�I*�IZ&��/kh<_�/䩵ߌr�^��������7��B\��7��Y,�蟂"팣�s�5{�������~��>l����.I��RLjl�O�������s�:� N*�H�� �T�/1�M~��v�;)���}*6R��.<����X�`{��g���ꤣ��b�t�<�:"1qp<GR�z��b��.�`tl�\,��Y���%�F`�c�ό�4�wTkW�q,���6P�(���.MWS��9 ��sT
��2�%�̬�)!m�d�/��0��8���(���8�u>��R#�Z?�\e跥)�ӿC�옅�v���:����}�=P �`;��n�9u	<E�B��3��Z�N��dO]��\.�:?9=����X8W����1� �+s�.6y����*�3\�V�Aq6�Cڒ��v���|Ώ?�A���6��P��*���t*�/��E�x�y1*j%�bBX����cGaK��RLvJqGL�kZ;u{y����}~���խ��uj��
��.&�-Q��^ʺ��(��cT�NP�Đ)���
��.��@v� ��x6G�+d@/�נ�B�q�XMIf*ILeO�T�yv�������x6��U�B]L��澧�e��{���y~k�5/�x�@54����6V�Y�t���KPEb	��j����8�&�%�#H����M]��ߝX��ʷ=�)�u��k�	�.pQG�Y\��8�q�g�S��mF0�m��R��sz�2��ɍWE���tI�휬���ʷ8��w�ƿ@��+S�k�su�O��N-Z3FO���)Q��DEy%׹�7l�ؼ�����cs��g��ʴS�K�H}e:~q2��~�z��W���ݠӫS-[�6t:�R���1��2}�I��F�J�o(�p��hi��Y'w4��w�x�H"�˚�e�g��??������[iM>��?�m��k�Z�zo}������y�e D#N8}*�:�N0{*�0O���xZ��D�ĳ��E��Ƽ6�ױb�sN����L���]v����T�,݅���~��nG]&h�����v		��W昿����a}lF!T޳�����Z2ז�i�㙣y�:U6�7�-g9�d)��IOT��&����lq�8s2Ѣfq�ߦƘP`�Զij!nУ��j#��&����!�u�8�禀����R-�W ��؇ęD�D4Y�?iA�u] �-�q܌��u�"cj����EY$="K-��\��uH�
P��Z�F�(���)��kAa`�U�h�#jZ)�g�@Af��v>vr����g�v�*y�T�+�9��K�u��|y�*�X�K��0&(Wu$�[��ś!*a��*��j�t�]����ݵ
eM�[�C��n�,Բ2�}�y��]�5��|���6���`�=��Ӄ�C�wǛ��?�NU��/��	Ԉ�|���Yrjm/�+��0�N����_R��1���V�7N�  �ד�
ѵ�a�U)���~»��#Z��6��Й���h�����8���K��O��ڥ��=-F�Eë��յv��k�\_\�}�LU!�<1\����/%ߢ�[��X�Zrk��?��ꃷR/A�_���J��L�,�p"��sӂ≿���}�A����U�SG�w����3͑����i�X��9BCU׋{��!5m����� �=T@|�*�C��?����{����n�ǅ�1�H������������J�	B�XUwR�9Vw��Ϲ�^�Isbcq��'�81}�phm�֌��x%���͚�6��o�!S�۷�ִ�n�ߤ�A}a�>
T�m��%��Ѽ^N��P���K�͚�q�u �@���|q?�_%H�b�(���W[�:7��������=�9���q>wN�z@��"�?Cs�H�˺&]@?����~J�c�5 T9=H��foZa;
>�S���T�g&�]��Ӡ��q�-�\&
�x���;�T�T[��%�k�8G�#�
�E����B�Dӭ���T���6@2��AS!�-�z>=<�-?}ψ5k[����e��<�re����4�X� �|5X��j�ھX]k*y���J�����a2�T)-��#�����d�<�H�M�΅���mA��\/�m���)4����ѱ�9�$ϖ�H:�a��c������9�V�)���V�hizJ}� ��a�p�LCx��ҡ˗oM��]��1��ô�
�śv�ւIdX3'Xֱ�K��˚r�M�_���?�#IX�0��o=F��%�	&�p+&���n�K�"������;sK �
�#O���(���A��և�j�o�e���y+W0N`I�4����Yz�"P��(�	��K��������D0�<̩V(��:f�(5��#�$Ӟ�nE3�}�$"L4O��.-��z@� ���=�EӑŔ�ug�r�����r���d��tm�#1��
5��y�[}��1T�p=�B�L)��X��,U����aF��w�]��2�N8�&�u%<����h'�^9��G>d9��D������x������z���f&9�.M���	�� Q�>|�p6N�PP}�w믝�}���Z��s��#��?���:���P��w�|v�������H��Z��v���:H>������|��������ru��8B�9�q:��v�٭���a^��t��V>���;���b�L�`��-�n �fNx��S�.5�B8��ʗ9Z ���6yS��Yh'a�e9!���-�+��di��ɐps���H��x,|!�{�S�(#�CP�߬�ʩ�H���ME�
My�
�I����?��#��[Z~�"�C�}�i�ifY��[�!8�&���-ר��v�[��M����WR��(��0�<���+��T��r�B�4m�꙽'ͥ��!��Rнp
�<uv����v*6>�~�ҹ=�b19���$OI�+f4}qf��6��Ȥ�Prޛ//�?E۠�j��3M�!7�j깂s�O����Iߐ�.X\�Ñ��8S{e�ԑ:]i@�	��A�tk �:1����#-¤��k���$��<��irx�i� 
tS����G�>:g��A0���Lj��?���зV    @�U6P��>������ yJ!}Μ��dNG��}Lvw՚\���{�����ғ*�x'����LPc_�;�l�
!'(4�cY��C��đ&c�!�yV���9~7�i��L6�ъ9����@�JW@@���@u��[8����^�*�t����A]���D.,�����,08U,�*ꎗ	����8a�$��
�x�;��"�,bd4r)ր����+��?��,`hC��<����w,2���l�����:`���I��Ʃs�'�������>0��1�a��' �u�igo��pS8�ĉ|t��|�c&������.������:�N����A�z�Yܦ��+����i��\o���GN�O��:l9�5��Z-���G	Hu�xm;R�>�Z�k<��Y=��]�ŧ���t�O�:�@4��K�$����g֢QL�ȍ�i7���r�.��n8��h({)�5�_.��%�FC�4dA�b�S)8C�;D���s�!��R�+���0�qzյ?;���v?�	ox�L-����V��:�G�\���)0���!ukc9��0B�U�J.��Ǭ���wsuLgM�F��I9�]�87L=�k��P�
�j��o�X�j觬ww���������������+�=��.��ե��=��W��u}F��Lp�gr���]��q"�j�� ��/����ó���62�uNs��.xC�RF�+�����٦-�=�(〵(+%�4�&_o%�hEt>��р���N�����1U άH�������483V�c凊"7gpd�F���}K=Gɜo��]���`�i�i]�ӗM4q�W�{)o�>�NJ�ngM|�05�v�u�F�����6BVǺA�i��o-,�f*��_yժ^�!-i�j3N�T
��)��C։����V����yCJ��H�ˬSEq��*�	�N0�LӪT�����/1sV����*�6
�F�?�1}�#���qr-�Ą `�wH����z
�m�P)�eb��culۜ�ֱ��T��_c<��̜z�I��m3�:7�B�o�@�z��1s�>w"�]Z�դ�bY��S�����;����?@�Z�"�O�KeJ�����L�mqSG��6�V:�L8�v������ſ�a1������nP��3k��G�F�L���e�M����P=�%,����v���)�ޭ.W[9Ç�j%�,m֔Q��ۛ� ��t�4 	�G���k/j�%S��.q��-���a�����,��7����G �Q��Yo�2<���fS9�^�=������]�Q�������JL��<��7+��j�=�6��f8Ck��-�L$�":�F��x��)�f�����s ���I�xk;�u!:��'*Z�d*��%�0Sc	?��H��M���Å��ʍ���#���Ejg�e��-}�|�^�n�*�:�hg/�ʮ�tAHVî{D��륑A��s�L�xq<�����TJ�`���w->\R�|�B1������`�:���OA��L_��nG�_K>O�S�M,\"����� �荧^��:1��Df}�Q"Oc�bbzX�i�ya�d�X7X���S:��j� ��W#q��Q�"�p������5tX� R�������Ḇ*N)<���Kg~��]����\�y��N�hx	B~��.�2��)�a��i��;-$�a�(�Q�́�Bh�T@�n,@MVo.P��R��W|�q�2[�Y��C��}g~IB{�7Z�a����n�� !�G��udA����%9F[;� ��\
�~SB{\
�|c�)�RS��M�U3p-�:p�D&"LOr+�qH*�T"�Ku@���:�J.B~)k���X������l��&Z� 9���,���J��V
 �2U6}��)@E�7p(��ȟ��:�{�TY}V;�ܭwN��{C����ǟ��.��*���X�n͏R�$W��0�����>3"h٫��O���I��>��L���=	�^�y�6(�k�?���͠%����c���+ۀ�A���6Q��p=c��v���.7�Z7ʋ�^�%P��JV+��f��oGHς�i�Q�z�n�W�)�TT���� z>�ZTj#B���w
�
�B��`�P���f)lBh���$�4r^�K��U7�p��d+�.ϯ�� W����W�D�X��"w=��9���Ûd�9�um`Jg�̑���!�W�I=��>�;qu���.���KZ7~��eM����Q�d���-V7��#��� ���Nէ[��v�j�{��5���ۛr ai�؁_}�`�ٳ �|͈�PDz敝�H��]U����})���~Ƌ8$�P�ƹ�j���%���-ÈH�]i�R�ߏ�>���[%�*k]
��4���
f�f�{�gU�A0Џ�yr�{�pe�������V����xHl&ˉPB`m,�����zkar���N�<-U</�X;ȩ�c�O�< ����Fj)���Q{��V��>پ�H�t�|Gb/\n�nL���DZ^Q�Д�PH��i��#~��QJ8���Q�:�ȵ��%�_�v*��Q�lֱ�gB'
�"�F��M}	�[2�d�qֻQ�}e�~����]-������3�0��^��H珡�0F^Ǻ�j2���.��/�0t�s���V�I�Ԙ������jة�<��\�E�h�� z�]�L@/1�zH.�߾�U�K�'l8-:B�S��
�Wbw�d�Z7�/S��Xj${OK��6OCzX��j�ʅ��l�~.���@� )��� ���Ƅ��(� �J1�9�1^�Q嬖2l��A�ࠕyC����(�a�����+�}P�J���0ي��@�3���K�Г�+�Κ.&�w�ִm��ع��G��=����Vo�FI�荐�J�Ѿ���	ƹ���Vs��7��NB� ��T>;��/W�A��z꙱t�4��K��z���@�(��M �C�%n����;7�X/���tV�7�u:�$x�yHA@��,�t�����P����T��m�cƸ�H~zDP�l*�U����n��9?Q�� ���ik�y���|�%X�#�!5!�z���(
ɖ�������d�2�anڼ�f�	��>�ֵ���TA����DW��zu�b# ����D��,��Ф���k�}�ze��"��^�� Lvwv��!ǅ����Vߐ:�f�]zfM6���b#����p� �"L��l�x�OgR��f4��&n�4�{2J}��{t�^��1�L��uZ/	��p'/ó	��84?`��S-UԷ-�� ��7P��:�)�Byzt�o�p�=\�n��@%P��| e~�݈$��K��"�	�S@y�¦�%��3��NR�Ӎ��Z�+��_2��I(�X�:	z����'��jF�����阻�N�p�0e��)�S'��0-��x��l>dL��Cr�����M�`q�O��Jj���2R0{3�PI.w�9�%D;�O"
���w���+P쉊sţT%+����d�Y7��j�g?���ۇE����II3O������a�PN���F_:_]ތ;kX�Z�S�������k4"��T��/�܈l�(%�&���U��Wnm�����{��7-��畘���dԞ9B^�H��J������k�o���]�Ji q:�u(�<����b��K-�X���N��Ȫ�AT/�u�[�!�ִ�|]��G����D��%}DC�	�D����~x嚐]�]��Zm{D��a@�3��,�%L"��5yv����ˑK�������Dq�:�����=m+��D^�'��T1?j��1��o���i"i���ID�Λ���Y}�l��	����L	S�!7��_g���*��<��
1ى���ic�����M-$q��	Ф�]c�_�Jj)������Ҟc��c���s���̱K^k�Nݢ����]mkƢ�uH�W��}���r�%<����
���j�.|ݜ���i�(8j�'A�3y�g�rs����k�K�|y�asQ}r���n����S5�D�������z�F+�c)%e`rP+Ђ��:Z�� 2�"    � 
�����J]�@�Ej	�$��y���ص����g��}-?��*7�<��uuL�k�΢�"��q�
*���䧌����_��:�NQ7hq=U�z��t�H�ڝզ�yέS�/"�p����ı�(�Ea��嚸���:�坜����z	(���V��#2`��N.�4Bi|��W�Rс,f�,���G\�Yz�h��^��ۄ?������M��s:rV�;	�\%"HH�DL�H� �P9�6՗D�5���c�~�|�}�i������㣎�9�g
�F���T%�C��� �]n~Z�-Y[��~N��a�Y<BIH0�y��G��;���P���aa�<hO�5�����h�����?�!�!�����/��7���QCc4��d�KS���k��+4w�*/�B�M��-�A���;Q%���I+���*��j����^�:��d�iY�M,��7q�Z D�u��k*��m���lB�.�g��1D�#��>�x�
���������.���<�c|`&����}�s������Sډ���9wZ���9�[���b�?�%��\}BؔȀj~b�����6���+�������Ps��ј>G����:��(��ɣ��Rmk/+�%��aq���J.�*��n?CB-�)���.V��Y� �v1}��l��R�*��?W8	M4r��emM�_�f�|Iϸ� ������)��G{nF��/�-sTa�E_&~w������ Dܲ��[�����U����8'��P[$
݂���A0�b�k�y�v������OMM]���ԤM�]�H�ѵ����1V��:p���z��^ʭٱ
�{/j��lŠ�H��\�w��D�TL?6�J(�Hh�mI&&+�2Nj��n�0lSm���`"�y���g��x��)k��X
"���^���Dd|��.Xɢo}A�CAn��8���ч�F'&z�C�v�R_�ڒmOX�¥����f����Z(e��xX�{ԍ��F��m˂�s���R7?�|�Я�^L��4J�R{�����c9a���v�5&�� {����v��+	B%99/�D�X�f}8}�,u|���@ũAʸ���ו�+�K*����%���	#u��9����y�ڀrO�H)��G��������O*z+8|�o�q�'�����g�f-r����N�`M+���+�������E����5?.��(�0<�0RC}_�JB�[Ƴ@!t�Jm\90�e�:_�#p��Y��V�ӭ��Wy�h��H|���z��1��D�>qId��wT��t�@'����!P�B���1Wx�HQ�߀Vx�ޚ�K�����q�2�UId��9��WW����S��k
�ș�b�[\�-9%����5C�'�w�锠t{#���WoG�aG�<���:�R�ed���̶o�w� ��� è3��A菡��D;�;G>/�Q�*Ų)�%Zf��	cPu��*dn�p{^�D�#��6��,^f��8��)�ٌ�m'HW������
���u�|��9�|irߋ�����"yq��0L`v���H����B�*\Y�&�b�3��S;/�rzh�O�a쾠f�)L�{�����uU�c��}G�8�ۯϿ�����;h�ɧ:�䙲^~P�j����h�2��EK���ٍ1A~��wF�q[��޲�2R�e��;_�dB�v]����ә4|��QM�o�䵡�t�S���*UD���%(�-wh���, ��RՎ�u���K�s�0��a΀�7�H�St�ґ�>K!7ڟd7q�*�i����,�*l�w8��êZ����qxR�܍s��NM����t�ѓ-�$�0i����T�$����	
[W�_V�����7t�T�-PC+nJ�Eն��G�����<3�$-ǳ���!8	��7�iŚx�d�x��L�=<u 8�����.�v#���E��1G�#����#T2.�1�^����B����Ū���&m(�}��%��L�Ci:� ��Y<n�t��`B/� ^
���>����YgMu%�X`�"T8��ᒳ��3����OG)��GLň�5��і�/�0�r��*H���
��#���L;n�jTi?�v���1���0k�����옫���zzB�Zrҡ1������鐎 5���.BQ�&.���R}�#����5a\�8��?,�7�Q��LW�/ #!2F�<��D�1(��U	�_�2��8A#�5G�.aJ��#N�y���S��3]�E��'v5q�UE�,Q���98IMHt�J�d�m��k�$�*.��$I�Rs���uIt$A���1�J�-��U�I��IIo8�L4�+��g��(��g�t��n���t�r]ڡ�CdP���-/\���gJ�Z�:l�t���¦vEޅ�]拆g��6�-�Kp��EM�_H޺_L���Gm�:�C�5ӤM��Q���/p�b.kᵭԠ&��� �(R�$CΚ-����"�@�Cߛ��Q�:�ӕ�L<��n�Ȩ��y]S]Q�Ü<"�K�`8>� �U�pRߔ���a��-sр�Y8�<A~�#? ؛#�$bLn�]�
9����ޜ8�&��ƭ5Tۼ��*\��J�
7l��9^:JU�g�S�ty�gg)�C�U%��W�S;P�C&�>JY/ˢ&�`�̩@�4v��Ӑ_�䌒��z����Յ�K�f}���D�7}sҋJ�;O�R���������p	�2E�<'�W���9b5�/���!�c�k���Θ!1�� ������\����z\O!7ݸ�ت@`�&Ma�EU*r!���B2�eq,y5-�E+�}���r%�}U���fQ��e�
������,���w+�Ʃߚ"м��)j�I�c)��n����]E�j,���Ry��#��ж�y�b��Jѧ%� �Ҧ�|-	�mǳ�W[�Y��gp����r���<���*
����=
�Io
R�Ox��.|��Jc��;�dT�$�ܷG���T3�����>�t2Ɂ`Ng��s��3�W�ņʃG{���e˿p�Z;�����W�M1i	���֮�1F0r��I�Su\�U%�xX����=#Y&�P��%����z��J��T��M7�][χt���W�`��7�/��@i�Յ���9H«`���O�c�0�YIբ��*<��Q- ��Ԁ�����c;�n��	Dp��D�Ĩ�i	!��Ch���� ��-i��t��{�M�az��-c?�>�������v~dj��n�8E�n��uXt�`M<��ܒ��e�/P��\n�괠-mLis��#�EQ<}�c�ٰ�����6�Yi��BJU���M�������.w�YaT�ēRg��Ui�Df�ǲ��h�TU [ŵ ���3A�d��%D<�|�E��}���}[ >���W��<���Ӏ���S	s^ӎN��NWB���h�O���!���h��u�N=��Tջz���_Ww�+='�`˲�[���W�޳�=k�w3K��$����$y�����,��Is,�.iq���<�(M&i���5x�^mIc�0 � �!��N��a]��kG�JwG'���a�_��a 7���G���W�p0�0.Z2R�c��j�����G����|��KY�Ul1�P�%����[���J���m�ȱ��[�m��5k�������y�'
w�)2�	�? ������R��}����T���cu�7[�{���ۯ����n�`����ṹ����V��P�����ȯ�kN(��ɱ,�J������W������;G�͟"8�����y�����;9%q� ���tR�q���Ƥ������1U�3"*y��S������Ms�����F�����'���p���3���穚k՗��݀\��V@+�d~j�����v3��9�J�G��'�0dP�����A9�r��N�T����Ģ���������F��䆸Z͕�t��	��s��V�q{���m.t��W�ѼJ�P������dJȳ<|��O�+Րu���:��v�Ϥ&uo���{    �Q�S鱠]!��䜵��D����T)��ǟ����a������r���b1�jS�e����v=\�\v�~�:�f�\���ݠ�k*G�ضH^�#�|�A�s.� ��S@��($}��ĒD�Ӎ��w�^GW]� NT4�It� ��� 3A��H8�>����d�њ�*w��� O�\`��+����@]���#�.-VBEbTA�U�Ժ	Ec���E��ɱ�d(��q2�b!��|�'�
�TCI+/�Z
���(����ҵ�D��U�t�P�mau�ZG0k1}l�n,�L�9)a��_|��W{P���ĭo"<�"��hl*�LKLu:�;�Y�,�A�-���2�[�wG���5s�p��~�j�`�'���"���V�T�s]$��ݴ�����v/��ԙ�Ai�m/z�D�#,�{�N�U�Z��_��S���\���6��y~~T�Hȵ���.mj�ECL����[��\0�KG:�����N,�\���v��h��op�me�ȐD4�׫�D�U{'�Bƚ�t�ɾ���s0���y���</�w�6xGLo�
�n:�TW+�����u[���fa��{���"�'��T�)�iCuG-n-��m�<��-w��/���c�D_$�:��/�����2�im
,)�����D,f"���8�.�7]�b6s�,쒖�@�JV��r3J.Jd�/�d�����i&$j�m;���Ma#�(�]տH�TJ��9���6P#K3$�7���ꛀQ�j�:�TҍFx#a���6߽ 6�{8�ݒ�] ��=��9�ȯ�ԅJߒA��P��"g���q���'�-B��ڷVܰ�W:��?"��ƽ��+��vo�p�Ix�x�f��
������c�_���T���E������ ?���
Q��6iSX��DJ����b��j��M_b��Ġ� 1_��y�S��!E�{���Ӂ�/l�6�h\�����j��<����Nς���|m���T�ť�^2!����}�wj�z� B�Q��v�A��%^2�$�`,�C"a�F:�+���_�
ܓ�b��̪�!��mTT��+i;U1�Q|��)����1Z�G֤�ͪi	�8'���q�Ɂ�'L[+E	Y!l͓����>�G��f�����L�0���rng\ӝ���Xs��,�1<c��bD�u��N�. ���6nB����XT"�$A�����iu�$,ݪ0N��d��U�a3>�U��V�~}�2��4 ��X���%��u�ԵHi�~�.�����~�:M��\�o�yR� pP<Ն�2���*�"&�����ˇ�R��3�dʫ'�u�t��HP$��+0bCM�iMܔS�/���<h�&6��L���ׯ�^�P�������ɗ����Ꝯ��Ձ�ʲO��@r�Ij���;e�� z������7����勥�p���A�y�,����������K���v.�\Y��29�C�֛#j� z$,�=������K�"Y�r��Q��Tے�h�^�\�ga zD=f�}�,0�T$�w�'�aO�Zy�r���/|縗Ν��ٷ��'�;k2�e�ك^�0���\Һ� :!�� ���*��wr�HF�c��g��ٖ�������]Z��RD~r���TK�`B���<�?�� Uas��ƍ�h慉�.��o�8m������L�$�e��z����Dj,"�!<�H�Y���%�"6?P�
Q7E�M�`��~o�0�����d�v�j�H�����Pw�8I��v�[��h�-�YRU���k���"�V�˩yniL��]�CƘ�(t]_�{p̀:! �ȉ;�����/����9���r;A�F�G���>;;��C�<�����׍SEԑ�����l�������"D,��Xn{��� ��@�:�����~��m�YD7RA<�ۻ�~����}��f_��c~ya>��g:h�0)Q�1ш^v���~�3���Е�ܔ�ZV���\"p޶X1�����"�t����8%���JJ8��kml��U�3YG;9�v�.H������F��a
3(��õ|/Ux����&F�
]*����X4F�ĭ^ǆ���}jR4K�D<�f1}��#����zc!"T-C�M�i��moY�"��ioYW�6���S��G�~Ę�7�r�~�I����������&I����2�r��R=&2~�@��<V��c?y�u�m��w�,�9������0m��rn7 L~���$3�M����M�~�91�����f������vԵ�^��V��J�9�S�9����%��n~o5,a��^=��,���y�6�B�B�ߔww7�n�j�߄n�A.���*�^�.z�/�4r/rvRMx�P����Z���.%�GJ,u��;������Rnɦ8D�%LB��c=ݍߦE����H���S�4�wy/C�C�G<�'P*W�{Ȩ�ꦲuȥ*�`�o �~�r�H�)n�Ѐ�]���u�h�����d@����AcM��H����S��\:E(��磪���g�j欹�b���ҸIM�eF�3�*��(�ù|x���NG���؂����d���3����	�1<�¾Po�*�4�a�}��#jsZ`
~��V���q��P�@���G+&����B?<�6=��Ok������Cj�r�~����XPֈ�q�P8Ӷ�F��Z�����1���������鈵�}6/R쵽1i4:"�kSCtjK�4�<(#�w��WS	M���g�`�@���]ѧa�\ٮ�uy���m��MT�L;xX��꜈z_P��<`�M�a]Mϥ����j�	'T�
w˳��:q�jȮ������`�@e}<5�R�7�2��Z7rSe+����v��H� ST��}��q��*���p*8P}1�t�E�f(���zl�����	���Z������E4*%	����M�U�a):\��JO����*O(=~���g-5<S��kI�A���)�^_�%L$f���=�y?߭���zu)�=��W��u}F��L�>�¾�c���«����q��x��d�z�]= J=l��lW��R�	[�i���	ۺ�6��r}q������QcG���ͪ�R:<NV���RR2� ��Xv`��jR7n�7�0���k��5r���:��/`����~U �J�y@ތ�%��n�ڻ�ގp���S-���ӧ/@�h	v�%O��79ܙ�~�g�{[�l��]�t�=����$?��Y=��]�/����p�
�:>;\��A�H3M3�ճ����N'i�V��8���[{JD*���d9��#0�����C��VN�+�'u���q�p=� ��m򖋒���@}[��j����P7�u����5�u���trY��mz��ֱkK���%�=���D\�TR#P�����wM,y
�����*WN�;�:P�P�jۉZ4�*��Eޔ��h3m
�]~BcX�̭8���^�ia�.��T}y��"���s��a��Z���n���f}��+����~g)�8�,E)C�p镟#
(5Q�IɅk��"���j�8n�7wW�w:�b*���t�z�&�h�^��:i ����ot�^�mk'�
�t�i����u���{*THP�O0ܦ�w��U�[�n��&�vr�{*&#���p�f-ck�[&��ٮ�l5;܀���N5+/d_�f���:60A��������­�I
�!��4���靁B�}A�H.r �� �D�I��(:��z����mr�O�yI��O���[>)'�|�'tu��n�嚱�Tuɴ�D�ؾ�J�!���~#�C���lX2N��
�9a�ɔ�_Nm�p�}ˢ�S��W(x��&``���it�4���"c^&�����2�1x���~���1PZg�f�b��x8�&����0�)��i�r��fT�eԗ�{!���Aj~�]�hpN���@�joH���'B�܅�/�>W$`�_��K��s:�sJU�tPI�ʊ����v"�d��F�yP}��9��m����H�-^��k��:Ak1]�ul��%���A���Nj��k�k�W��e �  E����Tf�q�\��\M��* ��X�<�f��Q�L�6�O���*�h�G�R��"�*?�"$ΰ���g{"�_��u�b��r4�%���Z��;�K"��	�|�X��_?��2�����qʤ��;�:��5�+�a;����x��U��\���o�G���Z�p�ҹXٲ`r1��ԘV��9;�j�h���}%3,���$�/���j�I0#e��@}6����
����P]����}<���N��a.���X	�٪�5�{o��X�9Q��V�=�X��j۳��&'�3kv��\`r�oכ�����=�a�f�6��	��r�T�3���k��&!uy���Cj�!����m?�c���ѐ2/�_;��)޸�+�[W[[�N��Ȯ8���8U���%��O��Rh'���F�����0�(��"�=>a�����W�_�AiyMy�D��h%DE�����,��&��9��HĈr7߀q�?Lں���U �SGI���=]%�����&�:Of�8v�n�x"9ܐ}�甚*]�#EN����_������&����Z*Y���6R����U���g�FS�̻(|g�졆�_�a��Uf�$�Ap��OWz�g�}7�������R�7����>��R�W����J2�'i~�2����Y`�� <aR���,ق��%�ZY�V%`H�+�P���^��Վ�i"��94�q�~٢�mv�����N�8�l���2S$L��8Q���h)�D�&��Nq�Xa��|��*��+��8�� uѧXR��#NTS *�� ��J.�lŔ��>�l���\��/����W�r&����t���҆hqN���ܲ,���h�5U(uE����M�~^�Yy��9$�U1i��;|�M~�7ubtMi�Y%��c�$Y�BƔ;y�0�^������H<t      �   |  x�M��N�0���S���vp$$N�K�U̴kPҩJ�b�Ǝp[�^$��q�����fpG�4jt�Ւ,0K��u��K�r�}T���B�4��b�,�g.�+p��ۨ�)�)���x���,�������2%��[QS�l����K�������9��muM�qdGK��n�",��ֳZ!��i��+�?/�n��l�sgM��_<=R�"^���Q��6x�����&[䵃����n6��g�Tg�O�ŌA����yA".χ9�n��)��6�%$3h��ի�G|��<3�Spܫ��7�78��x���撄���ލ�i����JF�i���:�9TkQQ��#��ǋ�Vָ�P5F�:�T�ꟑ�D�ź�      �   X   x�3���4202�50�52W02�20 "��	�XHjq�BbybQf�B�BU�Ѧ�䪼����\��2 L+K).�47�414�4����� �
�      �   b   x�3�,���/I,�NT�U����M,��J,�/��K�O��,-��OLqK��)-J-v��I-��������D��L��B��������@�����ؐӐ+F��� �$�      �   X  x�}�Mn� ���s� ~m�]v�q��I�fY�7k�����Ƒ,�x�o���I�v�.�3v�&Ԇ���s'�Ӓ
ř\Q&®#=i$��W�<������OWx9���c{�����p�|�0�v�:m)�Jj�&���Hb�B+�CZ4K��)�R�|M*\�@�!m���������/�4��N˥���'-fB�6L�5	��m�)�<��5)� Ļ^�x�XCU#��k�HĚ�	��"����5V3+�$x\��_�S%x�m�T�Z��	�>�3�	iL;�{�_~=M�1Z/#����82�H,|��p���$('4�F�M�&e�t�L��ϴ��_O�H      �   
  x����j�0 Eg�+46��^�-mK��A�"(N���2��D�+]��j��>�����s(��C���P�[��Gӆmc�f�ڍ��|����7U���VCk����a���ȈQD��D�3����v��c��s�?�o�@Dj�t�0�I�r� ?3��=������}��΢�U���l�8'���S�j�h�`�H.C1'^�j����}up�t4#��v������B�T)�8�0�˜���l��Pׇ�`������Y��<.4���$�(X`�'^��      �   H   x�3�,�4�(�ONM)-JT�O?�9'/��,^YR�\��
N�2
!)���N)7�ÕC�S�b���� h�       �      x���m��:�-�[o5�S&~�g=���8��%9R}s_׃�1K+�� 	� �A�8��������O������~[�㶜�����s�����[;�=z��+�S�ӭ;�ˡ�=�A/��B�	��s%�v�-3�աP���q���ȩ���i������r;���i�Ԯ�e��P��2zZo���SC!��ȩ���e��P��2rj(�t95r���
9]FN�:5m�y=�NM�ԩi��:5������t,'X��c�H9A�;��)j�o`���֡FS]�M534M5tj4����TC!��H��P���FQLFP��9�FP�mG�MFN��&#��BN��SCq���SC!��ȩ���l��P�i6rj(�49mO�ȩ��E��܏5rj(�895J���
%.FN��#��BN��SC!��ȩ���b�t�N�i1rj($�85�����tB�S�II85�X�V���N��鄜V)��:=��?�FP�턌W#��Bƫ���TC!������j�P��f�P�x3zj(��=5�،�
oNMԴ95]P���4�!���i�CO���t�*���;d�;EM\�v'��a�NS��sw��gשj�"�;Y�\jv�Jq?�]��t�9]�E.�BW�N��C�*,r��Z�>=BW�����j��i¢~]��q����z���BW�-�<2vyX����B��0=Ǽ���2o��i���e�2�yX�ʘ�a�+㚇�6�m�0�yXj��Xh���.X�s�0�yXh�x�a�c���6�{^�7$�7x�8���؃7Q㠇�q��N<�_�C�`�E����fw�~=�	�(���Q�r;�^���6�������5�*vk�U����w^�Hm'=���X$�����<g���=�C��M��u��&^��Յ��e��bg�1��"���֛i�9K=,��x�=`�^�T_�ۄ"�e\��+��b�n[=,�㫇�X]���z6��r��"����;��x��>6�_c����w=,����a1��_�q6�*���ktu��b�4{X��x�a���=,�c����e\��g㲇�����26{X���{�<g��6'z�.㴇�&���4^{XhҘ�a�I����e���Ф���b~���4�{Xh�8�a�+㸇������Oޗq�{�`���^㸷�mBE�2�{X�q��"��^,��8�a��q�\0�{X��8�a1��q=+ǽXh�8�=�]�q�q�:]�3�Y���M���|�������5��n3J�����"���`,��X�������X�mc3�$z�=,�k�U,��X�a!hc���&���4�{�(^�ro��Im˽w�Æ����sF��2�{X���U�Ф���BW�q˱2�*�0�{�4����6�3b��������
�	iU��EXh�=�̸�5X����ѝ�PW{����
F��B_��yk��'���G����n���a�����q�o����������>7��1��C�P�Ɓ��0|��
��(��+ø���ƆLm>0�m���Զq�S�ƊL�/>0f����9��[wd����6�m���Զ1�ިm�����%��m<����1�S�ƕLy[>0Eb|���<K��g���<k>0�0���H�9��c�Tw~�����vk g�8�M��Nu�>0�m<��ݐ��k6.}`.�Ʀ��0>�V�j
��-��ye�������w�mV0�ʘ��)O��78�m$V��Ča����E�>�=q��g�Fh�p�i�#f\��O
�����k6+�5�}�n���
�@�u����s�4�}`�۸�[��wGv
;�3�߷��/*����0c����
3�V/&u�mVG���G6.~`.C���e����q�S$��L�'?0Eb�������vϓ���v�m��������)O���<���ːq�S���o��=O?pw�Nag�xd\��T��������I,܋���_��=,4�",4V0��d���a���3a���a���+a���6�X�;a!��ȫ�8���0��7��Db���Kw�Nag�0���:���d�����
�N�(�`&�q�31����a���L��fbg?0f���L����_0�(�q�Sa��L�g?0f���T�q�Sa��L�g?0f����q��z�����m�����)��^j2�~�¥lZH�n+�Q&c�ͼ񼍵�;��X��+c�ffk��G�4�~�L�c?0�����3c?�����{���y6�~��.��U�`f2�~`j���YR�����t	�6�n���H����X�U��;�h�`�,���m���Y�����3�~`j����W������������y6�~��~���RU�$vv�q�s��a����3���4�b��GJ6*+��e����E��]�QY�Lc�������s?0�Ҙ�N����y;�O������H���M��ܝ���u;�Q3w��7,>M��L}w?0�����i�G6�~���Ba������0�~��n4�~[�W�&������{�7�~�C��#�1�#�f���	��6
+���])��K'�&�8�QX��i�|6
�N3��=���o��M�l���~-�"l$V�A�s?0%f�����1�s����Se���;a#���;o����5�~��+���ܩ�H�`�ĸ������hw?0Ub��v�[�x5w?G�*f��lX����k�w#f$���>���;o#���1{?0�i���ԧ��s�����4�~`�b��o[�s�F�H��Lq{?0f����Ӗ
�;�q���DEb���4�f��������4�~`�Ӹ���F�;m�����6
+��f����k6
+�)i����*��fVw�`�y�q�3����ࣿf�����(�l�Myo?0�i�������S���Lyo?0��x�G}��Se��_Sw�FaW��Q���?ҙ�]������k�ϣ[>��N���O���io��G��b��snG�hg?0%f����#��K;2����/��L(,0�^c�����K+c����������|c?0�m|��G���?󋆔�1�ۿ�h����ϡ��`��#��U��]��X��h���g�`�Qf��fRg?0����޻{�q�sd�q�Sa��L�g?0f���T�q�Ca�q�k���-���<w�S��G��t���`�G�q�w�m��ŷ;�Q�~���.��o��Ʒ�c��F�(�`��b���a���w�Fas����ψr�����k��(�l��|6�~��.����0�~�n���
�<����4�~`N���Sa��/�$lV0Eb|���ʸ_?0Ebl������_�T9��E�7m|����X`\����4�~��
��i|�����S���o�qt�-$ֶ��6X��_0m����������0�~`�����)O��g��U��������b|������w�mV0f|���N$FaS$��L�_?0Eb|��\Ì��"1�~`������.1���ĠH��_���),7m$��cfc?0/�����c?0�����V��o�~uGk�mN�q����t�̌4�~`f�q�|�_���v[��l\��ݑ��
����_0뚋q�S_��LeW?0����<����4�~`�Ӹ�޻}�q�|t)i\���i��횙���]�QX�L�����b<��L��fbO?0�x��)��fbO?0f<��T���Sa��L�O��ή5�~�����x�W���ُ��o�����S?�L�H�����X�+a#��7�Fb�
>�5�E�՘���y6+��g�����jL�����/�{�՘�-O���1��Y���Vc�#o,L���LmS?0�mL��Զ1�w�mV0EbL����Կ�_j�m$v�CS���̴2�~`�Ӹ���O���>����4�~�ϭ;m!��B�~�@��_��g����E_��W�����v��Vc��#�j���/�aVc�׷���;�Zh~�u5�~�W�    �w�>�O�|+��Q3�~�nkd��*���j��[i�h����\����������1c�f�t5>�G����/:��~����P�,Ү����1�4�j��M���AS���/�����/:�xܨ�����M�Q[���9�x��-̓���1�4ݸ��ybl��ݽ�����f��M�8�h��1�4�f���͘�Z
L�����Yoܔ ��'Kz��<h�OL��bz�MZM�Aw׭�V4�f� �j3���	7����V����B��m�����j����L9�q�2S(�ꞀMA�q�؊�[��h�]LM�A3EMQ�ASk�*���̥֮����4un
�K����qn�ֶ{W�0Ł�	7ՁM���@�n�`��b3���[���#�G�L}��3Q�lp[���۹t�U�mD���fg'l�՞ډm-���V�Q���F=o�$Pg���͔
f!x3%��-cm�"P,e�
�!����j/�2�f
��Nk��ݸ��L9�Xf���l0ŀ�l2�L1��۝m,�)���͔��Uf�Ôbc�5�^S?�����c'T7�ݞ�.J�;b���bj�_Wwp#��~Я�HUx���*<p^���wGW��zȚ;\�#�saP%�6��Ug��N�y���٢���Se�&����Wu��kW������^զ*��^Ux�T��<p&�*<p�VU8o��<��M���ս4x�����?]~�<~������}�g��s?������a�.��6=����O!s~���~sA�?%�m�1�̃oc��gr|�@�?3�ۘ'b��F�Ƽ����2�cw��τ�6&4����6&5?(�h�c�mLh�c_�e��b��0t��?����<[���c���sL"�cJ��������g��Eж	ܡ��*�1�����11���b�s.�_9}*`z���׿���t�ﾟՔ2�������_���	�r��Ğ#�����?�����C���o��{}�;g��c8�ϐ_?N��)hO@�����]������[���7?���1�~�C�?ߪx�����}�`&l�0X�7V�����}�e'l�a9�wXN��*L�?ߪx�Na��*�~��mr3u��b�ۆ+�/V�r��Y1�Şd�{��isMd??p��M�s�_�q\����g�_���`�X7���y�f��Wzɚ��_%+f��9Цm�XN�i�*v'k&x�wΰ��*Yu�QGc�ӭ�؇��d���75�a�/D�5�j,�e�����L�V����*��2�Y�r~MoVc7ί��*��k����������]������v�:�t0Y>w��i�Jyi��MCV{��Y���2#L3V��(ӊU,3�4b��ҴaK}�&�b���k�o�:����9s�M�U�u�LE�}U,�ez����L�U���a���R;��RXj'}��|�5�:�K�b�����5�<��{�n�k'ݱFX�J�5�:o�B��+Y����5�:o�A��'Y#��v\d����y'k�Uo3�5��R��Xj��[Km�~�b7�NW׽���N
˴[%	��r�:y�M��\��d����귪�s�FZ����U��u�(i�muݮ�9��}������u�������ﹼi���G����O���TWeD�.&�i+��b����jMX��5�V,o�����M�לx�N�ӝ�7�_�������ԇi�
L�����T�i�
L��v��swd���[RM�W�ݺh���q�M�WZ�xڦ�+0ôx<u�,��aڻ�ڣPۦ����ʴvUK����i�
�Y(,0��X���0��fV�>0�ټ���6�`jۼ��ࣻC������	��zꞰQثy�	����~`S3x��=a��W��6
{5�=a��W'�6
{��=a��Wo��
cYi7��w���
�^S;@��m��F�'�$vt�XS?x�~=a'��s.L�\O�hli��]��X��\�̼2E��ݦ�������Ȧ��Ii�������Ii��)SG�e�33L%���ޝ�Q�z�����%�5�ZB`^�)&fJ�jB�3Ô31L=a����6
+�Se*
>:�ڔ�c�ufVp7`Fac%Q=~��Fa{^?lV?@~6
{�x>a��W/�6
���;a���'�Fa���'l�j�~�Fa�>�ؔ��O�(�jG�	�L��
C���QX�a����x�C�n���
��L�!0f����������Ô�nb��a��)OShLy??0�i����q�f��0�~`��x���y
LyW?0�i\��T�q�Sa��o�t��vtw����(�=Ʋ�zW?0ø�����/���a\��L��fbW?0�m\���g������_0Eb\��4������v��iK�ݻ}������13�����#�m��E����������0�~`����o����al����������#�̜4�~`�����)Oc��<��_0K�����N��Dbl�v�{B1�~[vfVc��N�(�`������0���W?0Eb\��i���o���=W?0Gۘ����6
�>�n���ڭi��t��o��=XS?߼�iS�`��c��<S��{�HgL�v;�Y�;�����1�S����{�1����Z7�Fam#�u�m��Ӧ<����aL��<mc��S�`��c�fbS?0�mL��Զ1�S���LmS?0vS?�A�)������o�uG6
[�i����
��5�śӘ��'�Faw�mV�J�(�`��4�~`�Ә��)c��<S�`oNc��<S?�LX*�V�iL�{7UNaӽ�h'���-D��o��F�il��T���sȌ���f����[?0S���[�)Pc�l�Y�:���3�~`����3�����4��Vi�nW��ϡ)1��7����6��f'�i���ߞ��sc?p7bFcf��4�~`^�1�S���̹2�~`
����~c?0�Oc������U�wd��s�lv�fVNc����
3�~`*���[�(��6�~�L�_?pwd����_?0�!���ƕ������;�8�-,����L�_�m\��y�����p������h|������S����e�����m��7x�	����m|������Sa�����ewh'�Fs���_��=,4��a���Y�8����q�w�-4�3m���\����a���\���ye���T�q�|v"1�~��n3e���
3�~�#,����/���8��y�����0�~`&�q�31����a���L������a���T�q�f�2�~���T�(�q�/���XG���x#,�:�e���a�0:<�q��z{����>�_���3�~�/�.����3*�ù���6�+�Q.c�ͼu�m$Vpwd#����2+��a���?^��ϑ�c�fZc�`�p.c�皹|c���8���/x��(���ޝ�QX�Զ1����pc�����2�n'���8�94�.c�W�g�`���O�Fcwm4V?S��6�~`j����1c�f^c?0�Oc�fRc?0���޻�6�~��;�.��7��P�����]�X����so�AS(���$a��|v��QY��hc��5s?0�Ø����0�~`����̴4��^?@٭���o�A��2�~���Fbf��2�~`��q�|���2�~�oX|�����4�~`�Su���Bwd�wG6?�[03ø�����o�ѭ���ow��u�˸���0��7�����T���Fb�m�6��?����6��k`Bs?0sҘ��y�1�~�n���
�Ts?0�ʘ��𼍻��u��~w�`�͗q�S%��L�w?0Ub����h�ܩDH�)j�����ϑ��w��ٗq��z�e+�e���!vZݗ��w�m$V?Oq{?0�i���ԧ��w�mV���������6��6�N<�wc���a�04�7X*�?m�0��7�)쀡�`����N�)�_�`��7��n��������>b�x�����V�~��5��]�QX�LI��fVw?0��    ��q�3����ࣻf��7�<x���o�S���Lyw?0�i�����q�S����M�QX}׫�*���vM�fc��[z���c�m��F��ݘ�m�yt˧1����zP���ܝ��X���n!�� ��h��Č�V!�G6�~{�[Q|j��X�'̘����o?0f��]Zk�=��'�i���\>����6�~���˧1���� %f��F_%f��z�Uk���]���wm4V03�X���3k�Eug?0��8������o���3���#3����
3�~`*�8���0�����
3�~M�B�g?���Na{�he���lw&�q�󴍳�ཻOg��W��c��_۝Ye���mc�fJc?0S�������܍�QX�R'G�����wc�[�vg>_����4�~`&���wfV0�i|������wSeV0�|����_?0Eb|��g�����)c��H���ཻ�[�L�EG�]���O���>���;m#���|N��|6+�$l$vݎ�;m!���������6���x",x&,x!,x%,�V��U�����γ��S���ܝ�QX�T���^)���H���"1�~`�����7�Naˋ���S$��/mw�a|�$Eb|�����Naӝ{����n�u	m����E�5�5�����V��̴2�~�w�,�1�ۂ�i6�~�9m[�̌4�~`f�q�|�����6|��'���l�U0�m\��Yל����2�~`*۸����W?0�i\����q�S���o���[����KI���N�(lo���0�~`^�1�31��_0�7���31����a<��L���H����a<��T���Sa��L�O?0f<��i�N��o��=�O��7�݈���)nc�������6�~`�ۘ��)nc��\S?0�ʘ��H7S?0�٘��9���o����o��m�_p�W7��u�N���1��v���7S�ycar2�~`jۘ���mc�������mL���1����7S��~�n�n\�F�N��̴2�~`�Ӹ���O���>����4�~��n�l\�2��;j\��������E_sw�Bd��,�M���G��8�E_,����/+��c����;�٘�E_sG�Uag�s6����FMi������"�>u׭�Vtwl����6����;i���O�JkE_����2�l|���{wl��|þ6%��1(t��?h
ݘ��R5n���T����)U��}pK<ÿ��t�n�֒j�W�� ϟ���9?����?���y����w^�ݎ��W~Y�E\�#��q>o�!���o�o��N�?�뛀���g�}�|�3�x�����|T���L�.๾#����D��[�~�>����#ȖZ��R���|�-��/#��#�eiw�w�|ܣ�	�FG��z[�)�q+�.���G�IS_NxG�4�u���="iZ�w�|����N�����I�q�2�;i>*�_F�pզ:_�����l����r�T�My�Aw�#�-��)Ї�M��As�L��Asc�j�EsCk����BS�М1S�/z�߻�K�M��1��-�d��l���O~�\_�I'�>���?h^�)�?h��T�4�fJ��nj�EO���p%��v^�����7�fS���)�?μ�2%��vѫ�M��ql^���?h^�)�?h��z�����|���5S��ww�RkWgB�
����M	�AsI75���{'6Sů.ī�?�2��愛:����M!?t�0��M��R~�ӽ�8�Z~;����ȻqU2u�+��»��f��m���25�lv�Ӧ��vhj���(jS�o(m���r��l��u�KQ5x����j�uydj��RV�t�ގn3iJ���d��lJ�m����M�X�(L�Xf����l0e��l�M�~��v6�Φl_�hw�B[�|;�}�)�ǃkj�m�5�l>�R!c*��}�0ݻe�T�����)�Wk�t�J�8��*���t���wG7��\�I]�L�8r{Q��6�ӝ�����?��{e𓸺_���{�T��]�6�w׮n�u���!�E��Dܨ��č�8vQu�NѪB�_�+��5�vU�Ϗ���~Q��[n+�j��_��s�-����6_J+��o󥴂��2_J+�����W0ST}��`.N�[|��~/Mˡ^)}�{��~в8���}�1_��4_�N��4��N��4�T�wJ���/Xv�_�g�N���;�=��_�Sأ��;�=��_��~�{�`���{�`�i���~�Fa�~�'�^)}�{�`�iNm��J���/�v�S$��g��6
{�{?�yQ�W�>�����~�D�Xq���k��^�|�>ɚ����k�:���ɉWS�9��?z�"%��F/V(��S�b��~��^��O�Ћ5�zv�`���ޟk�����b���ǲ'k��Νk��ӣ�b��~�q^��O�͋5���y�FX?�4/��k��:]m��:]m��:]m�_S�m��e���6�X�F��l�]:��l�ϝ�eʲq$7�ڔe۽�g��ˌ0%�b��2ꪯ�5�j,WKS�-��0��b�����(�:L���́6Eض�ٙ��[,�eJ��RX�[lw�FXG~���a5��2E�b),S�-��2E��\�L���n갵��X#��=�FX���(M�X��Ta���L�X
�a���L�X
��`{RX�[,�aj��R�[,��J����6T���\�T��]�v�:),S�Mr�L6W�t0ع���iU�Y#�j8$k�u�.Jڔ]���M͵�n�����EI�jk�P�jJ���d����u�u��N�NW�E��j��	;aM���S�t_;iM�����t���5ݩSRL���j���;���΅k5�������T���mJU��N[(,0Ô�
��k
��0���vԶ)U�#]V�RU�JL3a���ݑ��w�,�
3�|`f���3��'��6�|`j۸�>�;����6�Զ��SaƗL�c>0f������S$ƛL�o>0Eb���.�ƝL�{>0Eb����1�S$ơ_����x��;����Gw�5.}���Nb���Rb������r�趯ƪ̹2V}`敱�|v�fc�WS}��X���#�̤4V}`&���3)�Y��QX�\��]��a�����Wc�7���Ʊ�]�S��퇌e�)i<��g&�1�31�k���i�̩2�}�z«1��&db�u5�}`���s%1�}`�$ƻ��QX�;�m���k�Xp\�}��ە���䦝�l���g���<?0��x��9���_�[��(�M����L�?0�!c��2d���Y�[����m���T�q�Sa��̔4^~���;m������~�7?0�i�������S���yn��/����X��'�Ba�g�Ba��Ba�W�Ra,	n���v
ۗ�����16��Ǣ���͸��O�Fa31��_0]�͸�������0�~`j۸���y6
+��V�~��q�|��ی��#w�S�9w�-v߻C;�]�>7c��l$��fE7c�ff[?03�����[��������]W椱�wG6+�9il�����S���Ly[?l�<���v�g/�����	e3��z�fV7c��i[?0�il��T�q�wfV0Eb\��i�m��_���g�͸����6
+��mL���8`��o��;�1���i��{"�i��2�fL���gc�7x�#�fL�6�3k|�1�s10�~`�Ә��y�2��V��<S��'��7c�75�|=l3�~`&�1�w�mVp7`Faf�l3�~`&�1�S���LmS?0�mL��Զ1�Sa��L�S��G?`Na���(l�ͬ�l��LmS�`o6c�������mL����1�S���LyS?0EbL���gc��w�,�w�,��ͦ>�V0EbL�,�l���W��6�~�n!2�~����6c������2����k6+�K���#5vc�oU��	���%�����'�Fbw�mV�B�(����QX}=o���H�}6;ڮ��h#�:ovb���o��O8�    1�sČ�_0�V�1�w�l4V0j����+c��@��x#l$V�N�H�`���[��������(�ͬ����L�_?0f|��T����zQ�m��:2f|��ݑ��
�2d|��\���_WBv���H���"1�~`����m�z�,��L7�Na�(���S���Ly_?0�!��������������w��v��h7�~`*���[޹��$��n����Q����35��_0��q�s!2�~`�q�s����ˁq�35���ˁq�3����
3�~��N$��o�v�6S��ϑ�0���:���n�����
�N�(�`&�q�31����a���L��fbg?0f���L����_0�(�q�Sa��L�g?0f���T�q�Sa��L�g?0f����q��z{������8���s
����q�������0�~K��{F1�~��[w�Fb����̹2�~`f���|t�G����T�1�3���_0K8�1�s�\>�����t�<;�]�.��U�`�0�~���Q�v�YR8�������a��F�Gwh#�:4�c�W�g�`���O�Fcwm4��n����1c��ƌ�x!l4V�J�H�����X��gc�7x�G�)l��]A�fD�Ͻ����=�5�~h>�_�x��1���Fب,�Lب���
�٨�`&�1�o���
�
j���LKc����`��k������Fd��l$�`֏��F�N�H��Q�Q�����>����T]������6S�<�q�33����a���
h��vw_YW8���
3�~�ϵm���@::�Hl�����G�(Bw�Fb��Lhc�fNs?0o8���3�~`N�1�3����PIw�Fc�m��~w�`�͇q�w*1+�*1�~`�ĸ��9���L�w�-k��6�~���׸�>X�>�����ލ���~[iu��ܝ��X�6/�m���ԧ��S�����6�~`�������{�m �����92�m���T����O[*��������Eb�����b���Զ��S���Ly{�ibݺ�6
+�m����k6
+��f�������̬R�l^0�ʸ�w.�q�3����oUv��vv��q��vN�q�S���Lyw?0�yw?�N�(����QX}��$lv��Uw�Fa�m��{o�H�Vw�Fb��X��k�����i��voZ钟����6�~�>����owŕ�i�����1��*dwGk��ŧӘ��݀	���L�o��G�V��o{��>�i���+a����mc�7x�O}c��O�Qb��o�E��4�~�tWm4֞d��6+��h��������3�~���O��fRg?0��8�޻{�q�sd�q�Sa��L�g?0f���T�q�Sa�ٯ��wg?���Na;�N�췅`�;)�q�w�m����>i��_��k���~m|�4�~�n���
fJc?0S���������6��Y����6�~����f����t_����4�~`&���wfV0�i|������s����
S�~�\��"1�~�lq;���"1�~`����޻����ϴX�6�~��m,0���L}_?pw�Fbs�4�~`�����)n��7�8��k[ލ]����l��ff_?03����)O���<��ߞvVQN��7x�4���S���ܝ�QX�T���^;��L�_?0Eb|�����s3�~`�����)�뗶��0�~�"1�~�{wd��������ߦfcB_��|6k0k��1�O���
�	�-���,$�v�+Q#���mlV�F�������z;h�_��oٻ���2�~���F_S���/�u�˸���/������x!lV0�i\����q�S���o��}�e\�]JW?pw�Fa�mcQ�2�~��
fbO�`Vo.��fbO?0�x�����L�O?0�x���0�����
3�~`*�x�Ӯ�����c��)�mú3;n+��1�S���LqS?0�mL���1�s����SeL��Y������g#���yv
�i8\��o��m�_p�W7�~{:�^��o�œ6�eL�v䍅�˘���mc�������6�~�n���
�H������˘�W�Ku�u��7zg}�2�~`��q�S���L}W?0�i\��ԧq�|v�f��;�m�+^�q��>�g+c�}�׿��?5��,�]���=Rg��e��X�S��>u�B͏w^��/��Vp��O-����o���9j���m���?���Y ������c+�͵�x����1�4�۸��9fl��,�^��/�����EO���0V���vi/��?h
ݘ��R5n���T����)U��}t[bc�ݒ�;u���k7eFm:����OmU;�܍���7�Fl�/�FlE�^�܍���'�Fl�g���/z!m�z%��Vt7cJk)0u�bk�q��)L��ϕZ55�}�Vjk�'�f� ��n����6Sx�T�)<hN���������\���'�Sx��)<ΜSf�E_w����[���؊�I+��5E�M����c��3�Z�.&��<h��4�tS(z�wb3���)����8�9�:�)tS��L}�ASl�@P�t�6N�B����U�Tj����۹t�U�q�Le �洩�|�m-7��TJE����ܠ��϶�?�n��s~��n�����?���y�w;��^S}�BmI����7Q�}F�s`��8#���]�����">���ό�j~n���{�w)���
�M�G&=#��p|�D�?W��"^�8"w~��rD��^sD괘;/}D�	�qk�2$���v�]�#��?1?���<,7�obn��!G��v���9"��ۄ���6�e��±�M���*�;��q�r��}ҏ�_��(���Ś}�S�/�씞�}�f��#�k�J?J|�f��#�k6K?�z�F[��ع�3���~�wα�n��m�Y���\??O}��v|y��ǲ�I�l�R��b*���4�\Lq��sRLu{���G��R��N���祫
w�{wt���e�����3�U����t�EU�8SE��8�����S��a��Kw���׮J�KmzW�Nպ8����:U�~�LXU�~���w?p�U�{��]�kW������d�r[;/M}��`����;Ƕpo��~@E|?��Z�}y�G�-䱼�G�r}?r��Z�s��? �����4�h�F�<S�O]#�����;�"�kD�l����=���P�����K�?Gm��G� -�9�'{�������p*�;iF� �4��1�#�����<#�H��4U�/#����J�2�;i>���"�{͇��e����^�7!�ہ�#��>M��8"i�\��>\۱�>r�L?Y5�d+w��|d�����o�|lQ��-l�Wa��L?�ퟟ	����w��yE�����^3{�3���+?�<a����;OX����xҪ������V-��w��j1}�3�U?�띁'���_�<iլ�zg��VN����'�Z^�<iյ�zg�I+���x�Jk�w����[��wǶ���e˿�xҲw�睁�8�xg�I��4f�ܘ�xg�I��4��<q�;O���<i�;�w)���;OZ������Vb{�3�C����<q���zg�I����;O���?z������ʛ�3�u�<sT9��w���?���������ʖ�3��{݊�Ly�3�ĥ؞�<q���;OZ������ֽ�T�r���<i���;OZ������^A{�3����<q����������'������'�{�9e���;OZ��w׭���۾�qa�~P�<i���D�j���\j�⣍�Q�3��~�x���֞�Y���������;�]�*��y��[��������j���|O�g���y^��i�w]�����7��^�����~���O[��<�j���,�3e_4�fK�
^�xҪ�����^�{�`�U���'��O�/X<q�<u뎬��n3Q� u�j�^�{�`�    �n�@)}=_�x®E��z;���'�zLnT�z/���œU�%�~�'�ZK���O���ُ�d�����O���Տ����^��O��g�QI��Ϋ��i=�Q���ֳ��m��Q���ֻ�	m��Q���ֻ�	q��Q���ֻ�	��f*���Џ���=�Տ���=�ݏ��UO����W����O\����G}��ݏ����ݏ��UO�������w/3��Q���_��Q���g��Q���m��Q���ɤ�T��O\�d��Q���~��>q��w?�W�{���ઘ�~�'�n��~�'n~��Տ��m���R��O��!p�M%%p7]��_�O�v�2EM��{��*��0<�/柧���������i�
����N�ۿ��k4ۣ����ZmKu��������f������<Y�zPW�f�؍��6v'k��m��ʳWIo+��w�VwV罙�����IJ��<)eM7n!&���^d���eO�(�JO�H�JO�=�,Y�d�L�'k��L�'k��L��X}�Tz�FY�j;�(��T�1�ˍ�d\�b),c�Ka��X
��|�RX��+��26_�����������������Ћu��w2F�띠�u�����z��;i�{7^N[?��h����t�������X���7o^�Q��;6/֨��m�k����̋5��yC��m���b���o��`#���[^��ϛ,O��|�wV^����)/���=�k����ɋ5��y���a��E�b��~�y�FX�7C^���w����O�xy��:^�Vc)J��Ka�X
��w�RXƼ+��2�]cٸ5ۮXj�xv�v�p�b�֤>J�XjC}���\��7I��u�`',6[MƦKv��uv7pc���3D�H����iUY#���&��Xt�RҦ˹XN��q.��6��R����Xj�t7KE���b�+��\,ue���7v���d��S��90�az�S ��90b��S"��������k�.��\p���^� �h��z��6�́����`֠&����a����	Pۦ������0W��կɴ0�,��f���T�q�#�T�'�A�(lJ�<`��)�����|��
>�|��B����	���l6��QX��H������a���H�7�"1�|��u��;�"1�|`����)c��H�C��M�n����^%Nbﱳq���Ʀo�yt��؝N�l���p��~��w�~*���sd��:2��X�>��5����>�l���ݑ��
fR�>0��x����Ƭ��0n}`.�Ʈ��0~}���;m���=�S�Ʊ�]�S��퇌e�˧������1�31�k�T�yw�Fas��o�����l���>���QX�݀�̕�X�����>0̘�>:m��e�Ă�l��ݮ���-}'~;f6~`γq�s�����l<���h����]�Q�u�XÛ���
3>~`.C���e����7'?0G�8���0�����)i��gw�Ba��6��p6n~`�����)O���<����4�~�����LyO?0�٘��)O���<���
3�~`*̸�޻gw��7������]�QX{�e)s6�~`&�q�31��_0]�ٸ�����;0ø���m���<W?0��\��)��7��<�����vv�q����n_al������0�~`y1�~{��Y]��x"l$V�L�H�����X{�dQt1�~}���������#��6
+� lV0�[?0�il��Y�\��߶�g'c�#�|BY���ևX�mc��N�(�`������0����(�`�ĸ��[���^�����q�s�����m����S�L(l��f��c�7x?��
��Ӗ�CX�y
�y6�~�w>�-�������bL��\����4�~`ޫ����'38���o�u�m��f���n��0�~`��1�s���_0Ke�1�31����6�~`jۘ���mc������
3�~`*̘�>�3�~�O���S[o3+?�1�S���/�śŘ���mc��F�(�`�Ә��)Oc��<���"1�~`γ1�f�f1�~`γ1�sS?Z0EbL�,�,���wG��v���Bdl�&Ι�-��Lu[?0�����y����%�������ߪ�M�[�e�̒�bl������w�mV0�����)Oc�o����ve|��3�~��F�_?�=q�����0s��c���݈�5�E�����k6+�5�~`Ε1�S���������~c?0�m���z��#;��݃�1�۞df�g1�~`*�����0����V��o���N�(���6
+�;�QX�'a���/�Fad!d5�~���S��B�j|���H��������j|�lg8����i����VQV���<��� lFm_����]�Sؾu��v��h5�~`*���[޹䡍���9��ٯG���0�~��f���̅�8�����ʹ�X`.����0�~`.��̼2�~`*�8�>;�g���ҝ�S��)�8������g�ॻf�����6
+��a���L��fbg?0�8�����L�g?0�8���0���:�j���T�q�Sa��L�g?0f���T�q�Sa��L�g?0Eb����^�`����F�)�8�s
����q����6�pVc��m�Q��_6�֝��X�ݑ��
�\k?03�X�>���q�sd�����V��/�%����f.�����}:γ1��vq�دB�ޝ�QX�Զ1�����c��t�6���o�yt�6�C��h5�~�~X�Y���;���Eg�`VaV���ƌ��3�~`�1�s�4�~`&�1�w���w�m��Ow�+���o��-���ϡ�����Cw�8����1����e�e�	��]�QY��5���،�x#lDV�N؈�����X�6��͸�<�o������H���m��ܝ���u;�Q�w��7,>m��L}w?0�����i�;��E���#�_�)��a������7��
�w���W�6����������q���@::�Hlmwi�Ę�G�(/ژ�� ݌��9i���a#���3+��*#���V�����m��&���f����7o��L�w?0Ub���T�q�w�m$V0Ub�����G7`Fbud.��2���r50��QO�l�܌�_��I�{3�~����A)nc��>����4�~�n��*V0�i���\Ō��6�'�
7c������Sa��/�?m�0��o��?�D���|�i;���K6c��<����4��q�V�䛱�s���_0�Y��e��f��3%��_̬R?Y0�J��e���l��/fV���<����f����ڦ~��t�7���<����4�~`�Ӹ��)O���Tw���zuSev��Uw�Fa�m�^�����Es��Gww7�~;��-���oZ�o��ܝ��X���Ř��ףm!����1��*dwGk�����s���h1�~`����L�o��G�V��o�Z�So��������mc�7x�|jc���>J�8���:��8�94�wc���Zyջ�����
>	�|6k0���8��'�Fcτ�ƶ۾u��Xy%l$V0f���T�q�Sa��L�g?0f���*�q�q�3�����j7�~[6���g?pw�Fa{[|yd��7��ڻc��_߆ٍ���m���LIc�fJc?0S�����6
����F�(�h��]�Q�y�Xxڍ�_0�w��fb_?0����)O���<���Se|��T����o|���H����_?0Ebl������w7wc�i��h#�붱��_?0�i|���i�������)n���������}����ۖwc�n|��i�����0�~`f���S���Ly_�=#�k7�Baޖn�M�`�����y���L�_�`��_?0Eb|�����S$���5����)���D��w�a|�$Eb|�����Naӽ��c�Zn[�����]��X�YSݍ��ie���L+c�7x�lc�7��l\�k�m�.~�.Ο���9?����?���y����w^�ݎ���t��~^�=4U�    ?��ˈ�;�s�e���ω�2������}�zE��/}1��O�?��/#N��/_F���\s����#��}������WĖ�f���}����hjk>X��Mm�=�mp�>vߍ�u����ˉy/��/�z�Ǭ��^ ?6߄�n�{9��u|�}lE��x�����ɗ���Ǟ�ˈ���c#�eķ|>v7_F|/g[�/#���c�eD(|DҴ�����3}�3K���9�q����c��6�;k>�߆|�����ېo��b|�-��oC�u�ѷ�mH}L����,?z<���G�Ǘ!q���v5��G��!�{�\���I�����Q�e�	c9 {�l|t�|r���;�?ZR�;�+�G��7!�v��=��Ѿ�m�1�Ob��9 �sC�T1w��B�@�9T1O��D�B�Y�bؽ��iک
U�Vx`�^d�����6?���)v"+���Ɋg�b��ѻؕ�x�.v#+��bw��]-��kZu�u��t�u��t�q~M�Nc��m�t|<jKO�)������4��9^�OgNc(Umuڿ;}t�|���Z�;���ۘb���UL�
>ZW���]�GG˷1a~Φ�����jM�T�����o�ܦ;���oc�N��w�mLܩ?ڱ��yީ�;��_��G/ҷ1�C�hQ�6&vh�K���w\�GC�w1/��>�������h�6&��+�ۘȣ�^�/c�X�?Z����<���&����k�G�Z�G��7x��h��&�~�6��G�ַ11G�\���=����ۘ��~�~}s���]���Ϧ����������'��\,�.MOs��O���b��b:�����iDE�������vbb�Q�NL��#j���5pD��bX�F�y�Ո:obb�Q�ML�W#J����jD���<N^��<j{���~oD�71��#J����Q�ML�戲ob"7G~+&������Dn�(�&&�9��������Dn�� '&�hD	81�G#j�-�p<��ѱ3�<:�:�ܞ't2M#����5dD!81����WLT������2���XCF��>�����rpb"߇ԃ+&4?� �b�3�9(���3���<��G��':&���D�1�t�<����ftN�#JIS�O�?cm������h��)�ocN��	_�>#戄��b�H��v���*�M��6���Z�mL��G�ۘ;b���������mL�!��ocb���mT���/b���?��ߝ�s�F��y����Y��6&���:�mL��G��ۘȣ�Z��11G%�ocB���/c�`���M��6�`�Y��6&�}DUL���<��V�р<�����8�b�0�>��obN�����s�>G4s$&�9�����a��#�9��6/X�G4$&������@���/�h h1�����0�#��6/����5dDAb��G�Q���ȣMf����2�� 1��#�>�� 1��#�>�� 1�G#y4����88G#Z�s�y�ȣ�6�if���D���|@�D��<���|�	��ļ���@b"7G|F 1��#>$������	͏h�HL�sD�Eń8�h�HL�sD�Eb�~4��"1��1yt��f�x�U�<tD�E���1���e�#�G�^$&2~D�Ebr�FdR��x�Ȥ���܈֋��*2��b��Pd�֋�z�h��G�^$&iD�Eb��G�^$&V������z�b�Eb�{�E"��h1��:"���'�iD&����͈���$�h���h��G4_$&�sD�Eb";G4_$&�4��"1��#�/w����;���Dh�����<:�[-#�/�~~F��2��"1'��GsF�yT1��G��1G�Q�'��6��!1y�#�b��9"�*慘#��C�2��!1��=�	͏�iHLh~DOC{�=W��GyB����iȵ��9&���,#z�9��!1q��Ӑ���=-�m�Ӑ���=-�	?h�Ӑ�ȣ=[>y��H-(g~@&����I��UdDWC�D��2��!1q��Ր���]�	���jHL��#��Ȉ���Ī<��!1�2��jHL�ш����Gt5��;�fFt5�<�G#�j�G'�2���b��g�Ր���yT1����jHL�!#�kȈ����2��!1����jHL�ш����2��!1�G#�*&�Y�]��<�Ր�ȣ]��<�Ր�ȣ]��<�Ր�ȣ]��<�Ր������s��hDW�^?Ìy�Ր���]-�Ň�]�����m�t[i��hk���Ƌ�H��9"�*&�4"�*&�m-����]9O�~DSCbba��P1�v��hj�x��9��a��rA�#�*&�F45T���k�G�>������|��hjh1�;�Gt5�����Hu�x�c��Pm<;c�Ȥ��������䀎Ȥ��ďȤ��L�Ԑ�ȤM���iDSCb��9��!1�ڍhjHL�sDSC��s�G45�����ˈ����sDWCN�{�m	J�fD_�#(u?"���W�uDcCbN�9"�*挘#r�b.�9"�*折#r�bn�9"�*掘#R�b�9"��[�'��Ȥ�v�)��TK�sDgC�D��:��!1q�#:Z�o'�#:js���uDgCb"9Gt6$&�s�����yH���yȣ��"2��!1����lh1��Ft6�M��uDgCb"�Ft6��'<�uDgC�|��sDUL�K#�kȈ���ĦaD_Cb"�G�5$&rsD_Cb"7G�5$&�hD_�Q/8᛭�Ɔt��:���Bhl��(į#�4��!1�H#�s4"�*&�4��!1��#��ŏ�lhI���e��P1с���lHL�~DgCbB�#:��ِ����T1)���v`+l�uDgC�w��-���uDg�Q�7^�]G�6�mE��:��!1y�#��D��:��!1��#Z�9��!19�#�H�9��!1qG��pM��:��!牄�ڐ�ȣ����Ay���#:�z:��Gt6����k�G'�H�Ά�Dn��lHL��Ά㸭�>YGt6$&�}DgCbr<G�Q��x�ȣ���nDgCbb]�ِ�X�Ft6TL������uiDgC�yp<G46��'j��ƆoE��:��!1��#��9��!1��#��9��!1��yt�>��kh1/���:������{񈾆#�a@G46��7�#�Bt��9���-D+�O�}��k�H-�A�eD[C[0׃�> ��4������yn#��¾�+n��P1Q��F45$愘#�bΈ9"��v?浏ȣ����c�Ԑ�+b�ȣ��!�<Zo;:�=g~��4�����,��hjȉ¯�Ft5�Z9�#��:"�*托#2�br�FdR��n�mDWCbb��Ր�X�Ft5��;v"ۈ���'V�]��<�Ր�ȣ]��<�Ր�ȣ]��<��PZB�k��}2�<�a1m#�����!#��>���&C��<�ۍ�����E�s��hjHL�������Z7��!1�֍hjHL�u#���>"���O������U��hjh��qۈ�����mDOCbb�Ӑ���yT1��#z�9��!1��yT1�GCz*&�#z���P1��6��!1��-�	͏hih1w�iG�4�y-�AG$�u�����iHL$爞��䵏H���爞��D�iHL$�����8x��=o�T�6���b�R�F�4$&�=��EdDOCb"7G�4$&rsDO�5�v��l#zZ��N�F�4$&rsDOCb��G�Q�D��i�����6��!1��=�	͏�iHLh~DOCb�~4��!1��=�	͏�i�|�2��!k4?���b�<�1y4��4�hj����tDSCbr@G$R���mDSCbba�Ԑ�X�F45��;]�M�����p��mc�iT1�ԍ�hHL,u#:Z�U�mDGC;���爎���y�Ȣ��l��P1Ѷ���hH�	1G܎*挘#�b.�9"�*折#�bn�9"�*掘c�h�#�>����<6��<:6^��<�oZ�����А�b�ȣ��    *�!#�kȈ~���2��!1����gHLh~D?Cbb�ϐ�ȣ���<�ϐ�ȣ���<��P1Q��G�3\�"<�hD?�Uߋ�s�F$�q��^��hhHL$�����DhhHL$�����DhhHL�iDCCbBK#*&���	}�hhHL�sDCC��/�9&��������q<G��y;Q4�G44�M׉��>������}DCCb"�G44$&�}DCCb"�G44$&�}DCCbB�#Z�Mf�����ޙ�x�#���\�Gt4$&�����ѐ�H�����ѐ�H�-�ɧ�m�x��A�}DGC=�1�hi������JSˣ�f�����m7����^��G�5L-���g: ���hl����#:��:����G�6<�r��dTʇ��S[H��c:$�*(�tHFUP,�#�A�F�hpx�z:����Ԉ�Es�>�ǡ�\OG49T��N?|D�Cۗ�v42�#�A��#A��#:A��#ZA��#z*������-���9��;z|�����1��ajw��.ሆ�GPN���JP,)#Z��=����M��P����
�eD��#(2jD��#($5������	�ꠔj�T����Zo'������إ�h��ڶ�d�dD�#�{L�-��3�ɩ
� 萜��+�ɩz���#*Dm+���cDg�Զ��ŋ��-(�q?F�V<�:$I���!Izݮ;'jH�֙bLG�W<�bLG4X<��:$I+艠C���b��c��)/PF]�{�]����m���ʨ��@J�贘��ޅ��1���B�k����l��؟#�-A�R#*Q-���#*Qm�w�S#*Qm���1��&��=�G�rDjkW>3星�8�~�1�c��=b�"�|"	�4�UQ/��T��~� ��!��GT$ӐZ�#*�uĝ$Q�<�!w���Ó<���Qq/R�jJmQ�N)H=�b�R�zD��2�$����R�j{mฎȭGT���Z�����ǐ��#*n�C�R��ȭ!��GT��C*S����!��GTlԇԦ�|���:"��D�OGZ���0���{�4Զ�������*���'x�f�o�D�O��π?,�����2�^	���������	����Ï�l^�S��u���xo���G_�_๾���~`q�����ȓ�\�BV\q�+Y�R�v�+2�؝�H�b����'Y�N�^dE656[�k�U��a#��vt�V}����y;(ʏ��_X���A����x�����>��a)��'�_X
��I���Ia}<���Rϵ�������/,����Km|<���r��x��;{�;�	뤰>�KB���C�oW�t�x�\F7Y#�r��iUy����u�(�g�_XJ��I���$#��vQ�OU��T�ǳ�/,����KE<��RWO;�����3����Na}4��SY�s����G��o0�����	ĉk�S!�m����G���}����w�G[�/p��|�����p�ͳq\��31̳q�Sw�Ba����x�� �m��ۑ�.�̳q�nW{�l�;�PX��Sa��80��<f>4Q�S��R����GS���w����o�|�扰QX�3a��9�V�Fas�K���
�	�ͩ� 6
�SlV�E�(lN� �Q��t��S$:���G'�o0E��q�|��j�h��;�w*�h��;|��|���wGv;���o�L�Ɩ6Y��V��`��G��o0��5����M��т�7x�M+������ݑ��
fR~|��7�I��M��`&���7~�;���e��s��̌��f���#/��;|qo��>pw�Na��]�S����b<��g&�1�31�k�.qZ��6
+�Se|��c�/U���>0�X�����>0W��/�Z-`���isj۸�M���|6�}��nWb��&�i�<?0��8��9����y6~`��1��k6
�ڑ�z?0f|��\����ː1�fo1N~`��q�Sa��L�+?0S�x�>���?Զq�S���Ly??0�i����q�f5p1�~`��x��9���LyW?0�i\��T�q�Sa��o��=�W��Gw�0�~`^�q���ib)s1�~`&�q�31��_0]�Ÿ�������0�~`j۸���y6
+��V�~��q�|vF�q�s�v
;;sȸ�u�{��0��Z_�af[?pwd#��6�(�[?03��������p5�~�EWc��ݢ���X�ݑ��
�	�|6
+�$lV�E�(�޺�
k[���Q�~����[�=�ά.�����6�~`������0����(�`�ĸ��[���^��5��n���
�hS�>�1��{;2�ʘ�ޏ��"aw�Ba�L�S?0�٘���H�S�ۑ�S?0c��<���}��ToFu-;/?6k����m<�m���i<������N��`���f�l5�~`���S���LiO?0�m<��܆O?0f<��T���|��vnݑ�������j<��Զ��f�f5�~`j�x��9���LyO?0�i<������S$���y6�~�{7�Ra{7�Ra�ݬ��L�O��+(����"fw����-D��o�����j\��T�q�wCf4Vpw�Fcs	4�~`��q���}S���o98�b�W?0%f\���i�̼2�~`�Ӹ�[}@��][?��Č�����.�H�Λ�ث���j;w8���3�~��Y����]��X����s����5�~`����������)n�D�U�?�l|��ݑ�®����j|��T���Sa��L�[�����6
�#Sa����(�`,C���_����:�fl��a���u������Bam�x�,��L7�Na�(���o���Q6c�>[�Q���o��G�������v
;�x�[?0fl�-�\v�vkt7�Bc�(��Bc����/�Ō����c?0����9�����������������W��L�c��g'c�7x�fj3��92f��ZGX�ٌ�_��]�QX��i���0�~`&�q�31����a���L������a���T�q�fe3�~`*�8���0�����
3�~`*�8���0�����"1��^//v�S����8���s
����q���@!�p6c��m�Q��_6�֝��X�<���s�����a�����8�92Ub���L+c���f��\3�Oc���:]7�NaW��3�~2X�ٌ���6�~�w�6c����]��8��>���Fbuh�m�گ����Fcsga����E�5���h�`j����1c�f^c?0�Oc�fRc?0������v
��lW،���[@���Cwwc��q����)c�?~���QY晰QY��E��]�QY�Lc�������s?0�Ҙ�{}���n����w��g��l$�`֏v���N�H��ٍ�_��v��^	��aӴ_Oݑ�������
|
k��p7�~����+���L�w���ڍ�QXu m$��vn.vc�7p���6k0�ݘ�������6+�f����*c�fZs���ƶ�J�}7�~���w���Tb$V0Ub���T�q�s����*1�~[�Vn�w����\|�������ݸ�G=��݈����V�n����y��eQ���L}{?0�i���mc��>���������ܺ�6�#S���L�{�������{�{��Q$��o�I�e7�~`j����)Oc��<���u�N�(��n���
��(���
fJw?0�ʸ���U��/�.�n����*��7���)�<�k6
;o+��ݸ��)O���<����4�~`�Ӹ��9U��?�^�*c�7���k6
�nk��o�H�Vw�Fb�������o�ϣ[>���G��1�󴍹��{D1����i����L�s��Bvwd!�v���'��swF�1�s�5�~`*�x�>��2�~ܕ>�����\>����6�~�w�������J!%f��F_��j���{6�~���j�����    6+�m�����8��_?��x"l4V�L�hl��[�ՑW�Fbo����~�a���a�0��qg?0f���*�q�q�3������0�~[6��rg?pw�Fa�m?�#��m��H���֯�o���܍�QX�LIc�fJc?0S���9���?��09���o�u�lv�6����v����������QX�����S���̩2�~`*L��s�7�~`�������0�~`�����)c�7x�n���?�bA���m���x_?0�i|���i�������)n����������N����t�؅~_�`����33����a|������S���o�;�(�����M�����)O���N�(�`*�����H��
�H���"1�~`�������_?0Eb|�����K�]b_?�A�_��;�S�t����ؿ�?�� [V$ɒc�U�:�������%~�hew��Q�KfWC��s���y�F�7̞�e�~`����YVF���f1b�vۜfc����<l�0+�X���Hc����/c�k�w��gc��#�|5�d��0�������/c�3����:b�~`��X�������Oc�^c�j�~��(Ic���6	[��M��H���M�fa��0�7�q��Y��fa��q��G�$�ᓰIXË�L{��q��o�2alk���7L]{�_�u�s	�m�1��s��z�x'l"�0�m�~`��H������9WF��T��0�t�����<��5<��%lQ8�F�|q���0�귑���ߴ����U75�m�~�dc�6R?0�m�~`f�H��̶����h��5̐�_�b��6R�����qh������̲2V?0�i�~`��X��̧����Oc���q�"bu��,���6V���V���M?�����[%l��w�����1�M?l��F�o﵍c�����;o#��~�
n��V���1�*kMsԌ�=�FF�oU؋�����VYk�k�q�/���H��f}��Ҭ1��C�Mz���5�ۈ���/-�mT��>�M�۸��fЍ�iF����fT��iF������%6¿�*�q�&m���ߘ2�����a��V��=U��i���/�:1�?�����5#�_�qq�i����/ͬ���c�T��`�a��8Gݴ ���-��� ^�����Nt�d� /=�[��i���^�i3���愛N@ӵ0�Wq����m�����m�/Ͱ�v�{�2�h�O��!�{\�
[��Uؚ����^�%j�/ͬ���;���e�>�<�/��?�2k�c:Mג�%n�V۽����4^�&m��!m���6�ۄ-�Fڄm�o�~ǜ�G��l��ow����À��@��1��"��@��@6;���W=�5�:>��
�D���v|F�MK�Ϙo?>�%�0��i	�|�:2�f+���tn&��$���iT���d����h��d�ͲL3�؋/<�P9\|��1̀�!߁~L+�rxq��V@4Y��������MX������&��h�y���=��V�(*�xq&E�^�������f��9i��Cgm��@�x�,�xq���
�8��/�ԩ�@-'�q���׮:G߲�ɩG�^�wO�xq�N5^���/�Ъ����^��G~?�]�J���g7z�nj�C���������&����y��?s��~�l��4�U�i��>��0�&����Tse2�o��qvF��⬛��f�Q�}�b�Ŋմ��~��,�]��n�^X)���u�lʱv�� `�O�Jp�6��3Y����=�5	��ɊX7�Țt���-�?�I��9��k�VE\��ߟ��6��?K�߬��z�l&x��c����5\u��5�}�߀���F��,5{�5�G��`�Uj��2=�fY��s}�,ys9k�U,�e�I}S��u7�,�G�s3���f�U,��6��2X����;w�c�L��Yί��ƃ�k:G͎����s✕N���q0>��{�=���/�����~�����본�0B��q�f�����(�f��0N�Y�I�So��2J�؋�Ycԛ�j��z�uk�՟�$k�u.���fJ#ԛe��Po��2B�Y��f,�����`)��?� �ru3ʦߟ��06�Yf���f�`�^�����`��"��u�g;���~����V��A�D�ߖ!k��|F�x�fi#͛�$c�,#mty�L�q�͎l�`=���6��Y��(�f�+����C�k�2Yƍf<��|/�1V<0bޚ<"��v�H���e�x�c�1R<+G�H�4��i��fa)��6�Y$,0ü*�� �mޔ�#_��̋���۸ڛ����F]�5u�	3�20������gc/3�F_f���,�wH#0kC��̶���0c03aFaf�̐��!130Cb,f`��h̆.��cfH��<B"F����!1.���F8W�f�FJ��,��X�3�#������N�4q��c\��X���ճ+��W��}���5M�:��=s�&b�φ���k���ǑM��	��5|6	k�G�$�ᓰ	XË�	X�a���>k񴍯/��֠`��g�5a��l�}���Kس�0����0��藕�i��5<��$��\�x�c}��f�}`�1����s�+�Q��9`����	�m#��z6�����mv�5��$��1�&as����y6
?0G�8���2��H��#s�4?0f4~`.C���2d<~�fD~�1�&a3aF�f�̒4*����-Vg�]̶���Oc�3�F�f<���x����x���4J?0��8�������O#�3aF�f�/x�]®q�0R?�f��z��YF�fa���a�~��H��,#��0���l���l�~`f[I��#���1�2aa#�sd����}���W���O��2��<�l"v~�/+�X���c��2����X���/+�X��	�_֤���ydc��&���p���4V?0�i�~��i�~�=Bb�~y�'c�kӶo̶���y���f<��̄Q�f�~`��H���3R����x6R?�m����h���k
c�D�jg��N��_���f�~~�	k]��f�~����	��#�f�~=��h��6#��E����>	����8�F�|�m#���o?O#��0��<N�$��1`&a�U����a�~`f�H��̶����m#�3�F�f�̄�_�5�H���s�$�W��l���6R�a6o6#�3�F��h���4R?0�i�~`��H�����MÜg#�f�f3R?0��H��\Ì�<B�v�����/V��6V?�X��֯p��6Z?0�m�~�1d&c�k6k�K����YF���f@�֯j�ٲڌ�̈���m�~`֕���O�����Ӹ]��C3b��|=�M����1Y&c�=�p���3b�a6�6#���̀��se�~`Ԉ��\?����ӈ����g��?��v�3#�+�;�?����0��3a��f�?�wRm��sd&�x����&as2^?0�!��{��F�f�~`��x��������k��������p����is4^?0�i�~`��x��\����l�_������i�_�=���̄��'���.b�w�-2֏���0f�av36c�c!ڍ��|�#lV��O�fkx|�	c�7f���!ٍ�/x�]��0c�{a�g7f�a�vc���6	k��a�~`�1��Y��fa���a�~`&̘��,c�3a��7�>�n�~`&̘��L�1���0c�3a��f�̄��	3f?0Cb���/�%���n�~`�1�?�K����63����7�Ϗ�(�Q����q�&b�#��5<��D�aV�Q�_�?�����L���YVF�7��n�~��˧��O�y6b�᱋3b�k��IX�̶�/�v#�W��˱�4f����6�C��ݨ������5̝�1���E��|��6k�3b?03f�~`֕���~��Ei�~`�    ���1�F��}���n�~��X@��ϡ�]è���Ǹ��A1)��e���3a���y�F��5���a�~`n.�������,K#�W�U����_��m"�u�#��0�G����y���|�����߰�����4v?0���暈qd����"a�Y��fe�_�5V@c�k�����>��	3v��{<���HנM�~u�fJ�ܿ����M����,h#��&����a�~�a��O�&b/�&bI�8o���}6+���0v?�F�D�ᝰ�X�#%&bs���̔�_�ߏ������"l"v���v	۾k����T݇����y���ߕd����|���4z?0G����̧������_��O����92�m�~`&�����i˄��������@4B�vS�F�f����x���4z���~�8m���9���7<��$��q�&a�$��̪2v?0�����iyc�����/��l�~��5��$��f<���x���4v?0�i�~`������*c������������l����.��6n��[�MĞzX�-"V��k,�F����OK~�x���X��xD1r��G*���������w7�ǑE��m���S�F���k�~`&̸���QVF����MO}��˧���m#�^�ԇ�w��+#f�~���a�~=��گ��ͫ6kx\��Xìh���3+�~�0f?0�Ҙ��,Jc�^�a�~�̺2f?0f�~`&̘��L�1���0c�3a���Tg�~晰1�����_�{�7)�1���i���Z|ǑM���k�������9��<F�$�a����Y�F�FI���|6	�?��6	�>�F�W��l<���o��#����6	kx�IX�a����M��T��	S^�ᛰIX������������3$F���1U.a�w�D��f>���|���m�~`.���f����p�_�u���m�ɷ���7Lm�3^?0+�x�����3���f<�ׯ}�b�g�~�'I�3^?0�i�~�q�&a3a��7�����̐�x��$�a��x��\Ì�̐��!1^��=
�x�Cb�~�k�%l�r��3b����Q�F�m"V0{�?#�����̲2b����#���~��l�~=w��M�fE��i�~����X����|~���G6V?0�m�~��k����|���6V?0�c�3���f<���x�_��Vc��FI���m����YF��5���a�~��������0N?0�8��,������5��0N?0f�~`&�8��L�q���0������_�5�O����?C?��\u�����n#�3�F�f����p��se�~`N����I�3R?0��H���g#��߮!��/�}#��^�4R���5=�ԯ��M�w�_G>٘<��|6	kx6	k�"l��m����&a�g��w����Rܮ�����<���6k��4V?0�i�~`��X��̧����8m����?�:��o�Zc�EȚ~��O�����,��N#�C��4f��m�Ө���$k�A͏w�F�7�������(���������V�=Ң���c��i�(����`�Ksq0���Y���4k�h��l����7}��6�����ư����`Ѝ�i����fT��iF����fT��o�:�u���ގq�&m��.6�N�����A��ժv�Q�4���Ǡ���f��z܋��i���/͸8��4�����f֌�iΘ��M��g\��n�c�U�~��-��� ^�����t�&���Ҽn�xi���^�i3���愛N@ӵ0�Wq����m�����i�/Ͱ�v�{�2�h�O��!���m:/��6-������^�%j�/ͬ���;���e֞�hc�/͜���KsI7���kIg�Lo��T�3��9�Ҝp�xiݴB�����4�fMנ�9S��qd�x��d�=V@Mo��{�Mo�6(��f�5m:�C����a�MW�P&����3�lZ}�ǀM�
^�M�~��2�fw�&V�����2��K��LC����`M����˴�=ɚl�Țlճ5_2X��׳�s,�U�|z�V�����0��h��/:�6?�O�<��-1?��W��_mD���=��V�(*�xq&E�^|\�YĂ���TG`��}�����z5ㅳPTS��Y*�+���j�8S���pZ�׮n��ǵ�g߲�ɩ�Z/λ���8S��/΂U݁ghU{��y/T��#?�׮n��������Vm�/�4<��|��q���+s��~�t�/�4��V_�i�%����0'����UsiRm�������_�HX�B�˂X��s�m�?�ٮ��e��ܭ�`M7�ه�٬U1mdE������NVD�ك�HV��8���,�e����	��L�q�g���7�d�_�{s�Úd��xɚ`��eɚ`�`��,�ed��Q��2XF�7;��������,��(�f9�F��F�_�up�6z��Q��|�1^.[�[c��ܯǑɚtˊ0b�YN���Ͳ"��o���1��2��7�J46���F:��/���@�h]��R4�Yˈ�f,c�����,�eL~��Q��2X��7�`�_��5˸�f�=��������uI���\�q��"��q��.�&X��Ț`ݟ�&k�u���	����dM���d]���}�u��G6\�n,X��������f���Or���������U�&Z�Y�~m�����yi#�e���o��d�}���q��2�F�7�l[�,mT}�̕���2WF��yE����e���<�ᢵ}�#�3 F�fB��̈-_��Ǒ]��X���ox�>F�g�-��8m���,#��x�F�fa!�� �m�|�Ue�|w�6��F�G	<�Y$,0f�|`V�Q�Y���f����l+_�5�F��z��̶��0��3aF�f�̐5�!1n>��IX����\ ��̐=�!1~>0Cb}`���#?��\G_�)1���k�c��<��"v?`<}F���2���R�m���̹2�>0�ʨ���i6��_��翌�<�l"�0�Ҩ��,J���(��̐[�˾���Y����8m��_=�3���������Q��Y���7��0����0���׆y�F��To_�5�������zsx�IX�\I��̕ĸ��c�L��O2����3�Ɔ�m�}�w%���u��֗�IX�a���w�&a�M��m�ny\�I�SG^�M����5�e�6"?�C�$�`��nc�s���̄��	3*?0KҸ���{��HXm�6�~x���4:?0�i|~`������1��x���4N?0��H�������Oc�3a��f�/x���6V��k�1���k6V��6�2oc��0����0V�aZ��X��,c��0���l���l�~`f[Y��c����y���9�]��}��L�w�+����G�XF�G6;?;������YF�fe��+���_l��F�״�l��F�G6k�5i�~`��h�������O��fk�6Z�v�����u�5�P�֯
��]���<N�$�a��h��L����ǀ��5̐���>Bb��5�X��m#�s�����{
0#�k��ǝ�H���x�2R?�J�-�0�t�����<����#���uk��㻍����H�������y�2R���p���/�������u/����H��,#���6	kx�IX�l��F�fa���6R?0�m�~`f�H��̶����0#�3aF�|�s	��qd��_�6����!lV0�7����7�&a�M��6	k�$l��"l��E�$��1�2al�<F��<�x',F��_���c�~�1/�El�r!z�֯p����c�~`��h��c�L��5��K����YF���f@�֯j�ٲz��̈�x��IXì+��3�F���q�2^?�fČ�/���H��s�|�1b���;�p#�sČ�o�M�ǈ���M�    f@��<��d�aԈ��\?����ӈ����g��?��v��&a�gg��1b?0f�~`&�x��L���g�Pj��IX�	3^?0�l�~`.C���2d�~o\�y��̐��!1^?0Cb�~m\�߀E²���v������4^?0�i�~`.C��f���/x�GB����v	�������0�����r�E�h��1��(:a���,c�f7�1f?0"c�s���̙6f?0�c��4���������+c�3a��|���_��)c�sd&̘�^G��y��o��l��8m���Y��fa���a�~`�1��Y��f���0f?0f�~��<��f�̄��	3f?�?	;���>	˄��r~��|�	��9������]®{��K�u�s	{��:����J2��)�|�w����r~��o�|��<�l"�0�ʨ������6F̘��)1b?0�ʈ��Cb�~�y#l��=�و��w^����X<m#�3�F��Cb���?5�s���/��ơM���j�~�~րM��	��5̋6f���m�~`f̈��̘��YWF���i�~`���9�F���h��m�sL���=Pc�s�q�0j?���������)�q�&e�g�&e��6)kx\�IY�,#�ssa�~`��F�fY����ˌ�����/'���,���&b?̧����i��=��dI������6v?0�i�~`�S���O<����Ǒ�_�h��a�~`V���_c4v���/�m�~`&�������o���o ]�6�}��\��E�E���΂6r?0k�������x��XÜ*#�����S2��d�C�4��o�`Q��)1v?0Sb�~`�����mc�3%�����ƶ��������_7Wc��~�]c�L�V�7�i�~`�����������O��3�F��h���4z?0W1��kf��Th�~��p�	ی�o����x#�vQ�mF�|_�]�n������?�.a7�C���uO���M��m�0������fc�/�&a_�M�fU��0-�f�~`V���_�]��k\�I�]��x���4v?0�i�~`����������9U��_�]/N���?۸f���vq̶q�W��m"�|��8o��}^c�4r���?Z�����<m#������_?*���������w7�ǑE��q����f�~��0���\{��̄�_�5�ʨ�z���So����i�~`fۈ��=�f���?�ǈ�_�C����C�M��Iv^��Xüh�������3f�a��͘��,Jc��(��/x�{�1�92�ʘ��L�1���0c�3a��f�̄��SE���y�K��V���Bp~Y���m�>k�'��/�k���~�_V���9�F�fI��%i�~`����9�F����0�h��]�g<��_������x���:�f�~`����9`��f<���x��Se�~`&Ly������!1^�a���x�D&�]��h��׸����A��=u�̧����O����6k�˧���n��3���|]�E�*'�Bߍ�o��`7^?�FX$,�NX$,�AX$,���HX�be7^����9w��_�E���6	k�	3^��Cb�~`��x����������]�N�w��3$��w�Ga���!q	[T���O�'ڈ��������̋6b�a�Tw#�����̲2b����#��U�i6��I��aV����Y���|Q����������n�~�qd����lc�f_s7V?0�e�~`&�X��\G���x���4V?0�i�~�����X���Q����m��YF��l�0�8��ٽٍ���0N?0�8��,��3$��fa��	3N?0f�~`&�8��L�q�S����|���������n�~=k���F�f����p���6R?0�m�~�1W&b��2+�M��H���g#�s���/x�`�~�������ث��ܟ��t7R���75�n�~�dcr7R?0�m�~`f�H��̶���9�F�fH��/x�÷����Rc�n�~ы���X��,+c�3���f>���|���4V��{l�������5����o��Ǚ����m�݈���Ҙ���av���u���c���~�q#��~�������������I��ͭ�a����q�*kM�c��5}�VYkz�VYk�&����CZe�h�I����X߇�Mo_Z�è��i�b��0���t#�_�Q5���U��_�Q5����׭��?x;Ʃ��U�C�q�M_ϠM�*[7U#�_��n��K�N���{�a��K�Q3a͸8��4�����f֌�iΘ��Mo_�4� x�8�@���fK�0=�����4��=7m�a� /=�[��i���^�i3�����֯��ň���Q7�������xi�ʹ�3甙~@����x�=�[���q�*lMs�bz/�5M��f�LW��o��id��hs���K3�1��\�Mg���;�fz���g�Ls�9�;���i���xi��4�޾c�d:u�������U�tz�����=vצ7P��1P*_��aM��@��j�u|j�(��6=����<��@��1`���8k��gԑ�4�X��@=��ͤi�^�m��4j�=v���,o��,+�t�e5�f@�_28L3��_c9L3�5�q�"[{��^�ô�1�ʿ���\�?m�R4���=��ˀ�4����i����(*�xq&E�^�������f��9ix7�xqֶ�	Ԍo�Q(�)��,�xq^�^����@=�n_���S�����g߲�ɩ�j��Fܤ��w�&u/~W�~W��#�R�ÏkW����������q��S_�i�s����0�Z}�aη��OÜ.�����h��4�5���7a����UsiRm���������@���˂X�:�ۆ�Ú�Zm^�9���M��֊}Ț�Z�FVd���7`�����dE��=Ȋdu��lZ �2X��7�Ț`���d��q�IV�L���ž7�?�IV���	V]��	V�����2XF�7�`��,�eD��_���=9�F�7��5��Yί�ŮQ���|\���ox����ߋ�e�~�kO������L֤�XV���r���o�a�~�\-��o��0>�YV���uϞ�0�Z�{�@�_���R4�Yˈ�f,c��k�u}�eL~��Q��2X��7�`�_��5˸�f�=��������uI���\�q��2���7�`��,�eT~��1��2X��{3X��7�l��,�aL~�̆���f6�ǿ?7,��������`��"��u����{��@�D�_� k�ޯ��5�z>#m�}���1��r���o��6ξY���f�c�e���o��2��Y��4�~�+*�]���F�%k��]�����e�4j>�"�ҵѴ�F���qd��Ņ�4J�a�>��YA8�Fȧ��6B>0����q�"a�YF��z'�l!_G�FU!��m',xY$,0����L�1�YUF�f='��6R>0�m�|��3�$l�l;�m�|`&�x��L��0c�3$F�fH��̐7�!1r�������3$��fH��<B"�7+��^#%F�|�{���Ǒ]��k�2b_��Ә�~K�m2��+���YWF�|�M�Q��j=�iT}`٘��,J���(��̢4�>0Cbl}`.�F�fe__�Z�M�~���xc��l�}`^�Q��Y���7��0����0���׆�i��5̩2޾��N�4�n��9�$��1`&as%1�>0W��s���?�O2����fc��4���k�J����ܶ8�F��<�x̳IX�c�M��h��[�5�_���=��h��L�������ː���w�x��IX�L�1���0���$��/�b��42�6p_?<���x���4>?0�i�~`�����<���x�x̳HX`�s��GX&�-�e�~�E�%l�]®5`��k�k6	��X�2����o�&a?�M�
��_�����5�6	k�    �6V?0��X��̶��3$��|S�-c�s�����8m��/��h�_���a�~�qd��)�����0Z?0+�h��\��/�bSt��[����e�~�qd��Y�F�f����x���4Z�a�&����S�GH�֯#�5�$����..����6	k��4Z?0f�~`����c��[������g�e�~`������h���{
c�D���gw:#�^�8m���*��m�~�l�-#�s���/x�n�_���[F��b`�~`��H���W��g�<���F��mv|v�<l���a�~`�����9`F�7�V�2R?0�H��̶����m#�3�F�f���̄��	3R��k�����8�I�ﳳ���l��0�7�H��̶����h��5�x���4R?0�i�~`��H���g#�f�f���l�~`�a�3;3$F�|�1U.a�w^�������Ν�[F�f����!3Z?�f�������a����o�h���-�e�~`F�h��8��h��a����M��L�]]����a��v��M����&�e�~��w>�\F�#f2V0�V���y�F�f@��̹2b?0j�~����XË��X���g��?��v��&a�gg��2b?0f�~`&�x��L���g�P��m�~�̄�x�$�a.C���2d�~o\����<B�v�r��!1^�6��o�"a��p����is4^?0�i�~`��x��\����l�_�:�5��->�]��|���2^?0f����\�C����6f�E',2��a�~��f\���Bd�~�1�"c�9����r`�~`��1�����ue�~`&̘���c�^c3e�~�̄����?�1���s���m�~`�1��Y��fa���a�~`�1���0c��0��̄��0�(�1���0c�3a��f�̄��	3f?0f�~`&̘���1���8`��k<���f�~���K���+�|�2j�
�7�Q��o�|��6kx�D��1W&b�2��/��Gc�sd�Ĉ��,+#�f�2b?���ӈ�տ��<������ߍ�5N�$�afۈ��[
�������@�_�M�{��C��ۨ������5|6kx\��X���������5�6k� l2�����X�(�ۈ���g#�^c���/x��u�ۘ���5`��G3�F��3�m��K3(F�$�e��e�	��5̋6r?0�����,#���M��
j�~`��������X��/�c�����=�l"V0�G����y���|�����߰�t���4v?0���暈qd�>G6�aV����Y��|��������W���̄�_���������@�m"�����0r��?�0.�D��*�����I#��c�~�1`&bs���̲2r�M	�����׏��6v�a������L�����c�3%���m"��H��X-���6v?G��k�~�ٷ��W?��U�����;�Tݷ����y���_xd����|���4z?�m��5�|���������S���92�m�~`&�����i˄��������@Đ�_�=d�����m��3�F�f<�ޯ��Q��F��h+���f����5��5̒4v?0�J�}܆YU��7<,����YU��|�k6v��{H5c���t���f<���x���4v?0�i�~�1U&a�]�1U&awݮp͏���X���>��_yc�"m"�|��8o�Z�/.�����N�h�#���+�:�p����w��|6{�nd��F�׽����c�~�-����7�&a3a��|��2j���?z�ǘ��?�&a3�F���#����>F̘��j�ǘ�����Q�5\�q�F�m2�0+ڨ��c�L�
�_��̢4f?0�Ҙ��׸g��#����̄��	3f?0f�~`&̘��L�1�=U�q�1�����->Z=���Bp�7)�1��y�����}Ҙ������_���_�<F��h��%i�~`����Y�F��m���m�~��#��Vs�����0_G|����0^?�0���O��3���Se�0��~�\��̐��0_q{��̐��!1Z��5n�F��y�b�&b��d��1^?0�i�~�q�&bs�4^?0�m�~`��x���k���XmyO���������fe���a�~`��x����������Ey��/��/i��3����m�0f�~��1�c�~`��x��������s3^?0Cb�~`��x���(��S����qd���;��F��i�����<.�D�`�T#������OY���/h��E�j��#j����M�>	��5��|�>�x�&_����s�&_�#�|5�6�*}��5V?0�e�~`&�X��a���Oc�3���f<��/x����_�$��<N�$l}���0R?0��H��,���X��fa���a�~`�q�����0��̄��	3N?0f�~`&�8��o&�8����f��ӿ���3�>��p���6R?0�m�~`��H������9WF��T���È���l�~`γ���c�.a׏5i�~��f���so\J�ԯ�ӽ3�F�בχ�6R?0�m�~`f�H��̶���9�F�fH��/x}YUF�?���خ�_��2���fY���4V?0�i�~`��X��̧���c�l�~�a?�ˀ���5����o��Ǚ��m���eD��=)��o��R������ƱE�B?̸��M?c7v��Z��������V����Ua�m\��Z���*kMsm0����8��Ҭoc�_�5f4�97���kԷ�Mo�a1�ꯛ�g��q�/͠��Ҍ���/ͨ��Ҍ���M_cKl�����n�V+��qʌ�o����o����Q�H���n��ub��q/2���1j��/��V�郴	[�i���O�*ki0��˰m�}��J��s��W�J[�7i��z��M�L�yݦ��L���4�f/�	7�����1.\ŭ�qp�����u�*lM3l����2����	x3��ؼn�xi^�i	��"���4K�4^�Y3]�w�Ǚˬ=|��L_ख़s�xi.�3���a3��������4^�n�/͠��@h�6�xi��4�޾�8m�CPg=��>\�Lw�Ǌ�z0���8��؇e:�찦Mg�nt5�:>��
�D���v|F�MK����	U�k�����3��t�e�TC���f�4z/�6�f����h�7
�h��d�ͲL3�؋/l�P{���X6����>�Zdk��;�!��V����s�6?�O��M'�7L�w,���36���{��;�J�^�IQ���n���qt������\�!���UO�f|��BQM�g�����3�-��L��Ԇs����m3��vu��[���S����S�^��Śg�����3��=���������U� *���m�?��7�j�?s��~Wm����o�����t��4��V_�i�%����0'����UciR�������߿`�{�?yY�o�l^����k�%���9�I�7Y1��>dE1���ȊJ.��XTr��w�f_�Ӈ��8&��X��1�]`������d��E�y�&Y�2Y�6Qln��f������YN�Y����e�YN�Y���8�E�ؓ�l��fY��s�,��m�]��L۶���Zi���X��m���岵}O���l��~��쏬IW� ��IW�"��I��9/�&]��ɚp������&[�t\�WZ���h�+����߇k���2X�5�,��4f�e�L[�Y��d�e�LG�Y��c���dM���u��4c{'=X���$Xӈm��4m�fJӄm��2-�f,Ӏm��2��f,�|-�f�L�Yf�4^��p����sm��0�f�`�~k��w�.X7�e��)�1Z.Y����f�ޯ�5��Țh��#dM����H�vk����6�I2��fi�om��4�f��pm��6��f�+�nm��2��=��v�ھL��f<L�50�a���q̄��k`F��\^�8�����<V    �t�d��HX:A<m�u��0]׆7^��fa���w̶i�֑�QU��ڝ����i�G	<�Y$,0f�x`V�Q�Y�ƍf���l;^�5�F��qۙm��3aƏf ̄Cx��$lϻ��ƑfH�#̐I����X���i�fHL+50Cb}`���#?�s�"�fJ\Įq�5�>0�l4}�����g�N�Ę�~[�m2�0�ʨ���+���Ǧ٨�~��Ǣ4�>�8��X�(J���a���M�>	��5���5|6	�}��m��<���T���l�]����޿�]�ni�ϩ�~}w��IXÜ*�����O�����1`&a�3	k�+�Q����w�f������6���>��7T_�8m����-γ��9����<���l~�1�&a��5��=��=<�ө�L�������ː����~6��mL~`&̘��L�Q��Y���|��E�j�]̶���O��3���f<���x��0���7T�O��s����x���4V?0f�~`&�X�����Ϩ
���X���M��1��L�K��,c��0��o�V_��*0�X��,c�3����<���VV�a��X��o�<�3�y�.a�>N[&�;�F����`�����F��bgST�v*0+�h�����s4Z���MQ����+�lǪ_LG6k�5i�~`��h�������O��fkR�J���!1Z�����������]T��
<N�$�a��h��L����ǀ��5̐���b���vq�����h���m����S&V��}���/x�+#����q�"ac�E�c�w#�^|�ۍԯ����n�~���HX�a���'a�����C�$�6b�m���N{6	k�"l�0O�H��0#�f�l7R?0�H��̶����m#�3�F�f���̄��	3R��k�����A�n�����f����l��0�7�����m#���6	k��4R?0�i�~`��H������9�F�7���n�~`γ�������!1R���-��H�|�a^�������Ν�ۍ��t��Cf�~`^��������a����o�h���-��h��������i��5̺2Z?0�i����B�+��shF�x��/��d7^?��7�w#�k���'#��3+�M�݈���M�f@��̹RIk�5b?0�O#�s�4b?0�m������#�����̈��֝ݟ݈��L�����0��3a���C)����92f�~�qd������ː���qe#d7^?0Cb�~`��x��#$"aU��x�4^?�����9m.���f<���x��ː����m��^��x���]���xd�~`&�x�3��䡍�i��1��(:a���,c�f7c7f?0"c���<fZd,0�c��4c�/�"b�/�2a����|3$�1��c��K�̈́���:���a�~�Ǹf����i��5��8��|6	k�G�$�a�1��Y��f���0f?0f�~����f�̄��	3f?0f�~`&̘��L�1���0c�3$�����]®{��K�u�s	{��:��_��b��s�_��?>�F��f>�y��5<�l"�0�ʨ�������<��ϑ�#�����o�-�È�\3�O#�W����l�~�cg�~72�8m����m#�^l)F����ci�~��5m"և�D�Q���a��0j?0w���E��0�0�1���1#�3cF�f]�����Y�F�����h�_����
�1�E�c5f?�w��C�g��_�A1r?%9.ۤ,_�'lR��6)kx\�IY�,#�ssa�~`��F�fY���，����/:����,���&b�t�x������F�a�~�o�|:���|���To����8��X�qd�wMfe��k�0+C�]����0�wM�:2����I�L���&�������HנM�~u�fJ�6�}~�Ni�~�C���5i�~`�p��<�D��1U&b����S����_��ѱ���o���g�~����X�;a���&b��6k�$,"V���f"�G������b5����,_�����g�~�q�&b��n��3�F�f>��<F۬b3�F�^�E���v��g�~��p��	3z��y�2a|��g���_ bH��/���i����%?��3�F�f<�ޯG�5�����me��5���l�~`�����YU��fU��0-������*c���5��ݔj?c���t����x���4v?0�i�~`������*c����ט*���nW�M��1���_yc�m�~�׸��_��k,�F����OK�3r?�8m����b��]���m������w7�ǑE��m���S����̵׸��L�q�_���ڿ�����g�~`.�F�f���/x�S��ؿ��1c��~�]�����1ب��߸j����̊6j?0G̘������fQ��Ei�~�k�3��ϑYW��f�̄��	3f?0f�~`&̘���a���<�%l�G+c��@'��3f?�8m��U�/�l�~��X{�د�9�k����9�F�fI��%i�~`�����h������mv�<�k6	��Qϧ���u��x��a���w�&a�M��6	k�$l��E�$�ᛰIX�#$2a;Cb�~`��h�����/��O���b1h��Λ�4^?0�i�~�q�&b/�&b3���f���/��{����uK=��i�~������Y��fe���4^?0�i�~�A�o̳HX��1��t�f<����6^?0f�~��1�i�~`��x��������s3^?0Cb�~���5
�x�Cb�~�k�%l�r��_��(h#���6+�=�ӈ��,+#�����/x=��"b�w�4�_�`�9`��Y���fE�_�E=~�_����ϧ���ǑM�f���o�}��X��̗����lc�s1V?0�i�~`��X��������o5V��k������i����ɦ�i�~�q�&a�0��o�ݛ�8��,���0����0N?0Cb�~`�q���0��3a��f�̄��0u�i�~��x>1N��_�P?�F�?��dG�4R?0�m�~`��H������n#���2k�Se�~�lҝF��<���l�~�k#���F�H���^�H����Ú�_��{h<#��ߞlL�F�F�����a���/�&a߄M�~��ݟ��2R�����qh���\���	��5|6k�\��f>���|�_�}���?@���e�~������M?�8s���׋m�e�~h>R.c��~؆YF����^�1.��C�������}�"j�w���������[�e����VYkz[e�i���4#�_��m,�K�ƌ��6�2���kԷ�Mo_Z�eT����&�2���t#�_�Q5���U��_�Q5���[�e��U�<u����/6��q�M_ϠM�jU������i���/�:1�?�����c�L�B��(��4�����f֌�iΘ��M��g\��n�u���o�����4�'�	�՝�MZ����Uښf�Lख़6�xiN��4]#/�������8�J[�|�z�n�K3l��9����~��i��׭����n���w1=��f����K3k�+���8s��g<ژ��K3�1��\�Mg��Z�6��j�����i���p���i���xi��4��A眙A��8�z<�pU2݁+����s�ݵ�Ԧa��WmvXӦ3P;4��/P(Cm��2Ѧ'���g��3>lBU�gmb���:2�f+������4��K��LC�����_��쏬������2݀fY��z��K�i���e�����������^�E��1�ʿ���\�?m�R�L'`��3�/quO��Fd\��o���.�xq&E�^|\�YĂ���:��s�>pu���V=����Y(�)��,�xq^�^��S}�z8����Uc��ǵ�g߲�ɩK�^|#nR��L�j�8Vu^    ��U��P����׮�S�|g�R_�9>?n�.����9��?�sՏ�N};M���>^��7['m���'=��|}�a���O�\���}zOͅI5��߻�n�"_5K輸X3��w��7+'y��ܫ�d�^�O���f�V����*��Xd�o�;X�h� +��:N�i 4�`���"k�u|�/�e��y�&Y�2Y�������&Y�5^�&X�mY���7�`��,�eT����2XF�7��5��ؓ�k��_#����r�F�_�up�6r��Q��|/��Q�y�=�j��kC>Y��bYF�7ˉ2R�YV�1��r�4>�ّ��s��˯���c�w����Y,Ec�e���o��2��q�&X�g1X��7�`��,�e<~����^\���ov�Í���`M��K�dM����P��,CiL~��1��2XF�7�`��,�u�_��%k�տ� �ru�d]����#�ru�d]���]��>F�%���6�Țh�+dM����&Z��a���o��6޾YN����2���7�T]��Ȇ	��y�h#�e���o��2�~�*�]��/�e�|`�����̇Q�#�3!F�q�Z;�l�|�c�2B������mt|�O�E��0���o�E��0����N��6B��|��2B��mW{#���F��5!�	3F>0��(���g��3�F�f���/�wH������6Z>0f�|`&̈��L�1���3$��fH��̐9����������GHd�ؽ���̐C���+��^#%F�|�{���Ǒ]��k�2b_��ۘ�~G�m2��+���YWF�|�M�Q��b=�mT}�qd��Y�F�fQW�Eid}`�����\�����0���E�|a_�3����5c��l�}`��q��,#��0��?���q�&a��2	;?��m�}=�ll�����u�+�Q����w�f��� ��6����66o���Ʈ�����mk̳IX�c�M��<?F�>��5|6	k��6	{�ȋ�IX�a���o�&a?�M�
f�1&?�m����0c�3aF��6	{>�=N[$�6p_?|���x���4>?0�i�~`�����|���x���l�~`��X��������0c�3a����q�.a׸c�x\�IX=Ʋ�����a�~`�����?��fa���a�~`f�X���gc�3���7̐�_�y�	c�1V?G�i��G��}�����$+�h����&b�ggS�1Z?0+�h�����s4Z���M��h��ĝ���h��<����Y�F�f����x���4Z�a�&��k�~���_G^�	�h�J����c�~`�����O��3a�����!1V�a
��X���}<�x��IX�c�M��=�1`"a�d��Ng�~�k<X��ߤ��o�m��H���g#�^��H�Z�w��#�s10R?0�i�~`ޫ��?���g#�����c�~��v�<�1R?0�H���M�fV0[e����YF�f����l���6R?0�m�~`&�H��L���_c���/�>ǑM�~u�̶����m#�f��1R?0�m�~�F����G�$�ᓰIXË�IX�a����2ah�,����5R?�NX&l����]�Se�~�1.�X��?δ���}1�F�f���<��d��q�&c߄M�fi�v�5Z��y�XWF�fČ���6Z?0��h������g��ǹ2^?�fČ�/�z�E���yoc�L���b����3b��5b?0�و�����9WF�f@����ӈ��\?���p������.a��#�_{��a�̄��	3^?0f���?��h��#3a��G6	k�ː�������/Cb�~`��x��������k�z�,��G�x��6@��3���f<���e�x��̶����Hh�~`��������x��L���g~s9�"�}�1�"c�(:a���,c�޹���1��9����L��ˁ1��Y���r`�~`֕1���0c��GH��/x�͔1�92f�~�#;Ø��^�1���i��5��0f?0Ø��,c��0����0f?0f�~`�1���0c��1a��f�̄��	3f?0f�~`&̘��L�1���0c�#$�1���8`�����1��a���{�͘���H�{8�f�~m#~|Fٌ�o�|��6kx�D��1W&b�26����܌�ϑ�#�_�M�
fg3b?׼6�X����l�~���f����5N�$�afۈ��[
�����$7��1�E��8��X�b@�������X�7a����E��|��6k�3b?03f�~`֕���~��Ei�~`γ��1�F��}ON�1�E�c5f?�w��C�g3n��GPL�z�x�F��t��.�M��5���a�~`n.�������,K#�W�u����_��m"�u�#��0�G����y���|�����߰�����4v?0���暈qd�>G6�aV����Y��|��������W،�̄�_���������@�m"�����0r��?�0.�D��*�����I#��c�~`����9UF�fY���d����Y�fi��0}�f�~`�����L����GJL��h��)1v���nc�sd.���|�������#f"�꼙O����6���p���4z?0�i�~`������O��s3z���O�F��������0����-v���޿�D#$.a7e�n�~���K�͛�n�~���YĮ�q�&a�M��l��f���a���/�&a��vc���ٍ��6	�>׸fc���q�&aw�6�i�~`����������Oc�3����T��w�8UF��l�f#�k��K�q�W��m"�|��8o��}^c�4r���?Z������E�
��1�"b���Q��F�fČܿ��=�,"V[��O���S��F���k�~`&̸���QVF���̏�z7f?0�O#�3�F���w#����>F̘��j�ݘ��Wm2VO��M�m2�0+ڨ��c�L�
�_ߍ�̢4f?0�Ҙ��׸g��#����̄��	3f?0f�~`&̘��L�1�=U��K���n�~`.����Bp�7)�1���i���Z|ǑM���k���~��5�n�~�1�&a�$��̒4b?0K҈��m#���{�m#�~�û�u�9�xڍ�o��#���fa�x�IXÌ����O��s���̄)��0}��3$��7�W�v��3$F�fH��/x�����w^����S��|���4^?0O�x��\>���p���6^����-"V�s�-��x���60^?0+�x�����#������E�*P�]��x��O���0^?�EX$,�8m����&a��0����w�&a����5̐��$�v��x��!1^��=
�x�Cb�~�k�%l�r��_��9
ڈ���M�
fO�0b?0�ʈ��,+#�^�8��X��X�����M�fE��i�~���a�~�N>?��摍��d��0�������/c�3����:b�~`��X�������Oc�^��K�5J�X��<mc�k�{�)z���l�~`�q��{s���a�~`�q��Y��!1	k��a�~`&�8��L�q���0��3a��7L]{�_�5�O����?�1b&bW�7�m�~`��H������n#�3�F��\��Se�~�l�F��<���l�~���K�56�F�7<��F�?��5=�ԯ��M�w�_G>٘<���l���6R?0�m�~�1�&a3$F����;���}��]7V�����a�~`������Oc�3���f>���|�_�=6�����I�u���5����o���?��,��#�C�GJc��~؆9���/��m[-4?�y���3Vpc���0���������V����ߤYl�����i���O�*kM/�*kMߤU֚~H���6��x����8��Z�a?�M��5�FZ��i�gd�K3����4�jt    �K3���7}�U��o�8u�������8���g�&m5�7UF���t�Ь��C�^�3���9jF��4����,#�_�Y3���9cF�7�}���2l�w,N�Пκ�����K�~b� �	��6�g� /��6m��f�Lख़6�xiN��4�}�q�*n��������������i�g�)3���>�LC�=6��t^��mZ/ͽ��	�4K�4^�Y3]�w�Ǚˬ=|�����K3�1��\�Mg���;�fz���g�Ls�9�;���i���xi��4�޾c�d:u�������U�tz����@���]��@m8P�3��k�tj�6P����P��@�L��	l�g�ٴ����P��Y�X�>��LG�Y�J5�!}l&MC���l�LC���c�o���Fa�Ͳ�L7�YV�i{�%��i�#�Zc�E���;�?�
����2��AV�E�}�����i����wc��XL/��gl<M3����}GQ�v��3)������"�͟�����4��j	�8k[�jƷ�(�xq���
�8��/�ԩ�@=�n�c\��m׮n�}��'�~�5��{��7��;q��?���?����W�ˏ�ǵ�[i�E�|����U;�~sn����j����9��?s��~�h�/�4|67Ԇo���+���giZ�)���������~�������������Ϗ�����'u�v�U��u��?������������׷�458�
�����t�����Vݺk2�[s���z����Gz��{��}\�j\w������p��)���u]��%��N�>��:��;������ �ľn5�u��x��F����ꜞ��,}��v�?������ozo����֚���������k;���v�?.�Ͽ��_�S�}���ZY5��N`��ZĪX{���?�X�\����<bԆ{��|¸��V�Y�Q7���X���aoRw�b9l� +��meN�i[5�`��U���	��L��Wu�ɚnU�L��U�nH��&Y�i�&X�Ed�&X�2X�G�,�eT�2X�=�,�e�S͎�u�:9��1�,�״������T�kT��Ie��5ڴ��`:R�k�����=�jӐ��u�&]Ų"L3�YN�iE5ˊ0}�f�Z�.T�̇�A5�J4����t��S��>�D��,���=5�`��S���>5��5��f,�}j��2��f,�}j��2��b/�Y���츇�T��k���g%k���4�&X��b(M��Y����e�L��Y�t��e�L��؛�2ݧf��}j��0ݧf��|�?�Ȇ���K��������`��S���ezO�b���=���Y�~񇬉V�jE�D��<��i85�H�nS��$�jj��6}�f�J�dj��0�f�h�^j��2��f�+�X��Za���d��R���|,�P
|v�ھ��K�FӲL+�൏#�|-.\˴���L)+�m��tM�i��~��5��M)�FX$��;f�4����j�&Rw����HX�qd����E�3a��fU%��l�|`f�H��̶��_�C.�����̶��0��3aF�f�̐5�!1n>��IX����\ ��̐=�!1~>0Cb}`���#?:�\G_�)1���k�c��<��"v�,��3b4�˘�t�y�F��ݪ�6����߰����M�~���Ux�D�a�Q��Y���fQY�!1�>0�}���2��/x�q�&a�z�g<��<��%��!���$��oxgai��a��ѯ�󴍶̩2޾��Nxq_����e�}�1`&as%1�>0W���3	�?k�l{_7��e�}��ؕ_7�mq����y6?0��(���g����6	k�<��$��l��-��3a���2dD~`.CF�7�>�2&?0Gۘ��L�1���0���$��/���i���n�����������O��3�F�f<��o���e�~`��8���g#�3���f<��̄��	3V���g��X���5`���w��X�z,��ʼ��|6	k�!lV0��e�~���IX�;a����M��<�x6	k�!1V���"�2V?G�Kؽ�Ӗ	��qh����2Z?�8��X�<��a�~`V����YF��
h�~��������Qk�h����&b�&���p���4Z?0�i�~�lM^F��N�!1Z�����r���?;�������i��5�x��	3V?�0���c��GHL��g��X��m#�s�����{
0#���gw:#�^�8m��|Ia��HX�l�]F��,V��#�e���v��.c����߰�����=����:˝����̄;x�����ǀ��*�=�����L���c��a�x`�aƎ�����L��す0c��怹���8�I�ﳳ�r;��6v�avA.c�3�Ǝ�h;��4v<0�i�x`�����c�3U�?/���w�{�����ھ������O���K��1���t�2����g{�2�>0h�}`.���O3�F�|�Irm�/�̋vٯg������˰ˈ��,;#��!3k��l�}`��F�fiqv{�5⾖��M�ˈ�������i��5̺2�>0�i���_�Qc�shD�6���?����y�]�ۨ��D�|�����6+�m�ۨ���M��	��5<��d��a���~�F�^�M�f���?�m�qd���G6	{>;�;�Q���0c�3a��f�?��Pc�M���L�1��ydc�s2�>0�!c�{��V�m�}`�Ę���1��c�k�z�,���m���}�ۘ����1��Oc�s2�>0�m�}������q�.a7�nc�3a�ܟ�U�8��X�o���Qt�"c�Y��7�~�m�}`.D���pw�3m�}`.��fiw�ˁq��YW���L�y!��{�ļ�_��)�rȑ�0�r�u��۴>�5��5<N�$�a�i9fa��C`�i9fa��C`�i9f�L�!0ô3a���0<�i9f�L�!0fZ��0�r̄��C`&̴3a���	3-���i9��}�]®��oZ�ǀ��=c/e���ow�M�ۨ�
�o<��ߚ�?����<�l"�0�ʨ��������ј��)1b?0�ʈ���¹���5s�4b�/�8�F�7<vqF�w#�M�ۈ��̶�/�n#����߱�4f��{�^c�sh�"t�߽�5`�����0f?0.�1f�avac�o�M��	��5|6k�G�D�ደ�X�7a��5G�%l��c�]�n.��1�94��Q�����������)�q�&e��>a�����IY��M�fq��$lB�0V�����,K#�W��#�����^t쏱�Y�ǑM�
f��1v?�8m��s�����߰�����4v?0�������������4��0v?0+�������_w��
�����0c��c�M��Oeg�+��d�g�*fc��H��2�_�0��ё��� �v��D�$EF�����h�kmqa����=ࠍ�/��5r?0k����|���]0��y���̲2r�KI;o��{���_c��o~��̔��)1v?0Sb�~`^mc�3%����j�nc�sdN���/x����_��{x�i�3�E�����m�~~w��6z?0�i�~`�������F�f>���Y���� |ڮ�����6z?0f�~�����̂6z�w1$F�/�i�����̶���O��3�F�{���M�
nW�$�`���������Y���fU�_m.�Ue�~�����Ue���g�K�Ӥ����h�_c�3���f<���x���4v?0o������������{�IػVq̶q�3ol�A����lOw#�ל51}�?#�לu��/XD,�MXDl�[������b_��X���Y�W#�YDl���O+�iL$,�N�$�`&̸����6j=����4f?�E�$�`fۈ�x������1c��ތ�1�9��Fm2�v�}�&cs�F�fE��W̘��_�ۘ��,Jc��(��_�h�c�sd֕1���0c�3a��f�̄��	3f    �n�ɐ����`��qs�5fM���a�~�v�&ac�9i����6�����Ǫ2b?0����Y�F�fI��%i�~`^m#�����v�M����m�&a�:mֳ�����Y���3^?0�i�~`��x���U��f�/��������>����Ȅ�����n���W,m"���f>���|�����X��>���p���6^�s��[K��`e�_p���fe���a�~`��x������k�0.�g��|�����f<���N�$�`&�x��/��x��������3$���f�~`��x�������V��0ZH\�������#c��F��b�#�s�F�|s�5b?0�ʈ��,+#�<�f1b���m6��I7��`T�n�~�A����&��n����7�ϻ���ۑM�
~	�|-}�w7V?�N�La�M�
>	���x���f<���x����u�n�������6[U��&�{�0����lV0�8��ٽٍ���0N?0�8��,��3$��fa��	3N?0f�~`&�8��L�q�S����/xr����'�w#��"�fGu7R?0�m�~`��H������n#��{e"Vp�U&bf�n7R?0ﳑ��y���_�8�6��ߍ�/�nc6	{���t7R-#j��H�u䛍��H��̶����m#�3�F���6R?0Cb���;|���o�/Ֆ���/z�?���ee�~`��X��̧����Oc�3���/�i�fc�k�:~���E϶�2Z���hg.BV���6�n�~趥4f��m�ݨ�ڱ��[-�ˌ�_��fpc�K68w��?�W����mid����q��ݎ��V4���?�������6���YcF�f�t7�����ۈ���_�F���l����4�nd�G3���4�jt�G3���=ے������Nݤmͨ����8��g�G�_��i[U#�?��X��f���=�����v�L�B3.���21����5c�?w�0����Ǖ�a ���0-�r�[z��|�CZ�mm>i����6n����*mE��Uڊn7\��^�����~��>L3 4߿>L7�6��Μ����~�>LC�;v�
[�m�*lE�*lE�DMSࣙ5���7�ܴrǸ�9L_ࣙs��hN�3P��ka3��ja�\?�9�Ѽ�;���i��۸M�B3l�AP�����0��~��l��Lw��Q�1؞�WElkJ�k{�=Lg`��5�:7��t�D���~n-Ϧ%Pg|6؄j�����յ�:2�b+�X����4�ZK�|���z��5ɺ7���(��d�ŲL3`��/���ჯ����G;k���~F��0��h��7������W��M'�^)�m0���߶�4̀z1`���R�gRT?��9t��kG7��Q�����	���z��V(�)��,��p^�>��S}����|��P����Ug�G��ԩ�����z�ԩ����`Uw��Z��p>U�̇���գ48c��g�ܮ�pQ߳S0������y������l��`�����9E��٩�-'#��V����cŐ�\C���AV��ؓ��v�o�������d�TZ� k��6?	�/�,�hk��}ɺ5�7���5ɪ/k%k�U_=J�k��_���~G����>�x�^Y���3���kB��?��3A�߃p�A�įA1�FQ��A],o�t���Ӌ�<���e���.��3Zz��M-�J/x~۱�.�թq�~��Q�ٍ�'i��{�I�bYFG�edt��c���4n<t�̇��Ų��^���a�5����6zp��}.��2��X���b�xM��6,㟋e���.��2��X���N�Y�@��A���ƚ`�74�5�z��P],Cit��1��2XF@�`�\,�e��b���b�㟋e6�.��P���fC��g{8a)��l��.X�e�s��]-���=��}>�O�D�Z�`�x>�e�&Z��2�F9�H�\,o����2��4�T�\,�as�L���2W�.�\�|��
�.X���2Z90�a�r`��(���ʁ���3"F&/x��._�M\F$�f�yf^m�y�&<m#��0��.xoc	��0��� �m�:�lUev��v��F`nG	�1���3a�����*�jy`ֳy�<0�m^,�l�v��g{B�~��I��m���0�0̄��A`$�2-����Iؑ�;`��#�s�&a��M�����:�	cW�2���'a����D&�Ǉ�e�Y?NϔI���g�e,}�vd�g6XF�GSS_����d��v�L�
f]U�����l2vm;=�eT}`٘��,J���(��̢4�>0Cbl}`N�F�fe_��1�i��]�˵�e�}`�����Q��Y���|�0����0����]�i���[e���'��e��:�~�fVp�`&as&1�>0g���y��1��ޯ;���x}���V%�߯ۺ�g#��>���g����}6	+�W�H���2�l,����=��h��L����9��Ӑ���w��]m����0c�3aF�fI����>�ed�����l���4:?0�i|~`������1��x���4N?p��"a�Oc�3���f�̄��������/x�'����ۘM��6����X��,c��0��/�V�2V?0�X��,c�3����}6V?0���~����~��3V?Gn�K��䐱�u�_[W��Wi�2��܎l"V/�2����0Z?0+�h�����_�dS�2Z�)�c/���#�������<	���6	+�%l�`�&o���2�aHn��ב�h�$��vo����6	+�"lV0f�~`^0c�3$��L!v��6�������y���ܮ�IX���.�H��ێ��*����N[$,���i�_0�t����y���_����6R�>��=��H������x��&lV�o��$l-��v�M������n#��0����6R?0/����Uv���a�~`f�H��̶����m#�3�F�f�̄����.���~�vd��k;������l�_0�7�����m#���mV0�i�~`��H�������#��>�_0�7����y����9L}9L�������*�����"���Dd����?7v���6Z?0/����ۘM�
�h�~`����w5�P��W��n��3bF��i��ue�~`��h���9�=���ϡ1��<�6h�:o��}��f���p��ܮ��؂ٴ����1��5b?0���P#�s�4b?0�O#�3�F����;�K��6fF������m�~`&�x��L�����0���������92f�~�vd���9��Ӑ���pe#�6^?p�K��F�0^?�IX$l�����"aYμ�]�NvQ����o�.a'�(�x����M�C�%l�m�.a���a���n������0���|��ElѼ����V��"c�Y���n�0f?�NXd,p��"c�y���������,c�s:0f?0�ʘ��L�1�~ZH��_�8�i��=-a���<���0f�`��1��y���fa���a�~`�1��Y��fa��	3f?0Ø��L�1���2��̄��	3f?0f�~`&̘��L�1���0c�3a��fH�������Mn��1��y���_���R���n_��3�ڟ�v�=�Q����v�&b�#���X����<��ј��)1b?0�ʈ����F�g̜>���y:�g#�n�8#���1�i���l������0b�$��1��~�{�1�94_ F�W�g4�d�`�,���m2�`va�1���1#�3cF�f]�����Y�F��}6b��]m#������0f�O�@��ϡ�Sè��m�c��G3(F�$۰M�
n�ˤ,!l�~`�����,#�sqa�~`ΠF�fY�?�WQ��k��'�0v?w;��؂�?���iOc�<�F�4v��7l>Mc�_�͂����yk�v���1
nG6��Q� l~��I��"ƾvv?�"a *	  ��~��0��̄������i���7�f�MĮmpq1�ܟ�km�&b�s,h#��&��|6+�]0��y���̲2r�K	�������}�_0}�4v?0Sb�~`�����L������6+��DDlM�����������ldOc�g�f�*�4z�~��{�����X�.!�m�~`�����̧�����6�X�̧���9����w������6z?0f�~���e����4z�71$F�/����]���i�~`���������sn5�4z?0�����1����lV0K�����*�������/��g��Ue���g���~(զ���h�����Oc�3���f<���x���*���^�v�L��☍ܟ�v��׸��7�8h#�=��������m�4r�Y[Z�i�~�v�"b�m�b������]m������O5�yd#��s��|�F��D����9���	3n����Q��@=�4f?0�O#�3�F�/x�SO#���T#f���ߦ]��ϡ�6ب�u��6j���A��̊6j?p�b&c�_���fQ��Ei�����1�9�E�D����L?���x�	�;c���]�m�c�~�s�]��V�1�k"����ǘ��<mc�<�vd����O�Ĉ�5��4�c�~`^m#��$��̒4b?0K҈���j����a�j������ǈ�����xz��/��#>��fa��]0���O��3���n��$�`&Ly��9���!1^�`�����!1Z?0Cb���G{�����F������c�~`��x����M�
��i�~`��x�����������Z��|�1^�`j��x������2���x���4^��(�����I��x��������i��̄�_0?���!1^?0Cb�~`��x���Ì�̐��!1^���
�x�Cb�~���%l������ݭ����m"�`�T#�����̲2b����1b��y������lV0+�X���Hc�<��c����n�gc��#�|�d�_0�������/c�3����<b�~`��X�������Oc�<ں�X��V���n�m6��M��H������Y�����c�~`�q��Y��fa��!1N?0�8��L�q�����8��a�0�5_����}��_����5N��O���3��͎�k�~����X�'a��/�&b#ܯ���y����[e�~�lҽF��}6R?0ﳑ�g�]�&�����m�&a��К�F�L<�x�����7������m#�3�F�f���̫m�~`��H�v�^#��z_�n�6{����k�~`������Oc�3���f>���|����n�-"�����G�^c����[�F����E�����6�k�~hn)_c��~نy���W��ގ-��_���_��fpc��U[������nWMem�mid��
{�m�*kE�c��͹�8����`$�G�����h֘����&}��/z��6����7�eSa+���������ͨ��ь���ͨ�_�lKb#��^E�Nݤmͨ����8��g�G翯Y�i[U#�?�]t�Ь��C�g���ͫf��G3.���21����5c�?�w�����ڧ\�m=��UWi���-��� >����ד�i6�t>��6m��f�Lࣙ6��h�p�	(zM�m�*nk���ݦ��_�����i|g�n�
ۻ�ml߱9n��h�۴>�k��h��i
|4�f���ng.������|4sn�)�t�^S:�fz��^��e��i��[��&o�c	Q�	\��&qG}�(VOū��֏�v	��X�G��ƪ�����*l[�Z�I�u�h�	���7֤��Z�M�`�ۖn�"�ϭg۴��N�x-z�7��^U�IPp�j����&3�%��l�a����6�7l	
6!���Օi�Jô	<G+�'X�f�v�M�`ݛ���H�Q?�ۃ"b�AX�o�Zt�����OZe�V�~�s�m^0݂�߷^=1���z����ǷȨ����ᛉ-����mGm��Ϋ�g�V�y�����U����F5>��_�>��O5V�����_=T����j=ү�?�J���lǗ�o�S턏o��
��Z
����p��m������[~���՗tꛁ�n�^}5P�}��[����|uK�����n)�]s��@E��U�Tt����"�߳���}ձVk��{������<���x�h����|�'���c;��s8��N�/��'���y\������?���gͿ�������{�ű>���~ԯg�|<q��_�����7�w�։�����?�Y��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   3  x�͙�NGǯ�S�0��5{G�(�J)Q)�Tm1I)Ŏ��K���7�zޫg��xgcNAD���7�9s>ga�yۇm����ev���'��w��nv��|���ly8?�v�δ;j^v�럓�?�x�l7�ϟN`k�\RZ�5��&�<i1;��R�����Q&�u۽�'����b�Q����Z/��#��k����D��K5/���h�o�x@-��9B6�_1��.�0��1��FJk��f�u��m�Ղ�]B	6���G��0�3a����P@�?��0�)�@* ��EI�50��
���!���j$�G`Ic9Duo0�����4��d
��c+�IH9�����2�l���O�G.�&S� ���.��̈́+�fW-P����ɔpPj`�&6��2����eۡ�0��5��ͯ1�e��hո#��U`	T3j�b	��Eׁ��ї-{��6�*jkk` �%�|q�mu���yQ;[�@4 �R�|p�!�M!�Z�K��n�b(���\��LԂ��@��	��m
� ��RnA�/Qڼ&U��>hz%�kK���\U$8mL6d�`�C�&�c �VMض k �P΄ћ��jg�@- d��50��� �:�
Ⱦ��ɦ0�@(��� F֑��z��L�W"J�ӦXt�cN�P�\��rҮ�t&���bBac5�
�m��8�$oL�B5/��0'o�� S�6ʘ�䴍˶%a ,�E�A�y0Cuӣ���by�-�Ǌ\v�>y�������;��}��gj�5�B���jj�KU$�d��
\������oG���B��e�귤� -��n�0��\I� Q�tg�U�Rs�]^���./���t�9�ϖ�f�{Wy��ۓ��do��d�YL����PKۼ�B����n��:WR���3s���NNoO~Y��E��t�:�[i\	u*�-C��Q&���`7�7�G��9m�����Ŕ	\������|>����ݲ;���x9��������N��f��h��W�*k\B��`(���6m�rήyS>k����ձ��J�c�a�f��f�]��A��2IG�M'�%��fy��X��CmP;��c$�7��Fp�묫�thљp�;!�	�[|�����5W{�r�� h'�_q8���Z�?�	���u҉M�F��iCv=:�dxy�5�v͍��X#��L����򰖇W]	��q/�jy��A;��-X�+y�{��"!��㓼�T'cu�ul�D���B��:��P��4l�C_�U֫N4�Q�ƪ\ֶ6u���*�U	:����C�dZ�����r������je������ɫ�O^h����]�S�z�X:ΐ��p���`�T^��N�c2ݑ$uԅ��ؿ@�Y{;��p�;��D���� �tmם)�@���y�=�ݝ}��a_�i	�檻[%��R����Iͭ	�t]�W�/�w>��l�m/�3���A�e⬾R���?=[�"j��Y]��j�2s�}2=�����釲��-��6�#g��䕨H�ݏ�.��"=K��T\8�ͨ?�����n`J      �   B   x�3�,�,�-)�+�I,��K-��v����674515�4365�,O.(���K�/�ML�J����� <C      �   =   x�3�,I-.�/�T(/�,��J��<:[�$1����T�9]*�R�K�8---u��+F��� ��Z      �   9  x���]n�0ǟ�S�H�[W�2��^�8�ҴIQ'��;ю��^�gNw��$��,�)�)!�
�x���2u�i�wg*9Q H7�u_��Z�eKf%É�D �A{a�"�X,�U.�Q���kv�EKp}�R
�fB�Y|��sk0�3SLb0���βC*P�벊�fu�;k3��L`Q����<��$ �E�X�קy�xKC�-��`�9.	$������K�H��j�y�qMPR��ޑ�.)HA%PѰy]��U��<�
�D��9�	���AB �e5��e>��������Y�W����qP~������ ���o��0�F��z')�%i�U��[O�yCZg�������l�8gO�j�|?�����DsC<����ũ�r��V�k�<�~�}ܧ��v����a���=�t�-��q&�L!z62~��j�h���{#��?-��IyԄ��MZm6/�y[g���a�޷��_C�|�-�]5lʋť�gc&�߁�L����I8�N�л�B�\��i �0$�V�����S6�NῈ�d�	|�      �      x������ � �      �     x��T�n�0<�_��� ��-�9�=��Aa@0 ,Dơ%��DE�o��~F?���jS�i��QE��wfɈ�M�������:�H�4�ȇ"�q&�鴹ʐ��H�\Û��?׹Y=�������f�Z�i�H�����yM]��f�e�tig�q"h�%�U�.�PlH��$�"ӥ�q3�_���]���z��J���>C�\�!�=�ap�jF;������q�L�ElN#{�]3���+����볲��O�&��V�d�����e-$"J
�D�2����he�mB`�i3�}��Qƞ4;�"Vr���A0��qŋ���e͗2_�c	�/����ӑ��6ev�֞H�"� K̪�s;+��21C��[	w~�v�8	�j�)ko4�Z�5�k��c��"1h4�ߏB��F�#����ߚ��j�R�9nN���m�{������������s�d��G���qZ]��ኧ.����0���Cn_Ι�(s��n���Q}�ܬ֫��慰��[�}:u)�? *疉      �      x������ � �      �   7   x�3�4202�50�50T0��20 "�┴�Ĕ4��X�����i������� ��      �   >   x�3�4202�50�54Q04�20 "ΐ����D���Ĕ�������s��q��%8�b���� �w@      �      x�E�K�l7E�v�\ʸ��\<�q8x(j�o�Nj6�����������\�=��l1f���c17�sg^1�ٙO����_���·��-|-|_���·��m|-|_���÷���m|=|_����w���|=|_����w���|����wʷ�����=�����c���3Ϙ�y���;��|b�o�������������Eoo���7|�����_���/z{�������Eoo���w|��;���_���/z{�������Eo��������~��ksx�1��:sx͘�k�^���^[oVoçކO��z;>�v|�������SoǧގO��z;>���{�S�O�>���{�S�O�>��׾�;s����٘�7;s��1�o:s��`_폘�W��7��ħ���.|���§���.|���§���.|���Ƨ���n|���Ƨ���n|���Ƨ��Gkٻ�G���sxk���1���G���sxk���1����oV�/z�_���=>|�{|�����E�������Ǉ/z�_���=��=��=��=��=��=��=��=��=��=j�����G���s�j���1���G���s�j���1����o����S_ç��O}��>�5|�k�����S_ç��O}��:>�u|�������S_ǧ��O}��:���G������#�����9��?roÛ�#�����9��?roÛ�C�zO|�=��ħ��zO|�=��ħ��zO|�=��§��z/|���§��z/|���§��zo|��w��ݙû�9�ۙûsx�d�^��ݛ9��0��|oV�O�>�>����S�O�>�>����S�/z�_����=?|�{~�����E��������/z�_��_�L�f����[c��o�9~�s�~s���6����d��o�9�}�~s��_��_��_��_��_��_��_��_����u|����S?ç~�O���>�3|�g������:_|�����:�|���1��;sxݘ���^����^_����^?oV�O�>���{�S�O�>���{�S�O�>����{�S�O�'>����{�S�O�'>����{�S�?F�}�cd߷?F�}�cd߷?F�}�cd߷?F�}�cd߷?F�}�cdߍO}7>����w�SߍO}7>����w�SߍO}7>�=����S߃O}>�=����S߃O}>�=����������z�c��z�c��z�c��z�c��z�c��z�c��z�c��z�c��z�c��z�c��j���j���j���j���j���j���j���j���j�������������������������������������������2|���G޳��y�^o�={�������G޳��y�^o�={�������G޳��y�^�O}��:>�u|�������S_ǧ��O}>���w�S߁O}>���w�S߁O}>���w�S߉O���;{������;{������;{������;{������;{�������§��z/|���§��z/|���Ƨ��zo|���Ƨ��zo|���Ƨ��z|�}���y�^o�={�������G޳��y�^o�={�������G޳��y��o�={�����E���������/z�_������������������������;��;��;��k�{���q�ٻ�ǽg�����k�{���q�ٻ�ǽg�����k�{���q�����S_ç��O}��>�5|�������S_ǧ��O}��:>�u|������������|�;����k�{���q�ٻ�ǽg�����k�{���q�ٻ�ǽg�����k�{���q��{�S�O�'>����{�S�O�>�^��{�S�O�>�^��{�S�O�>�^��{�S�O�7>���Ի�ǽg�����k�{���q�ٻ�ǽg�����k�{���q�ٻ�ǽg�����>�=����S߃O}>�=�����E��ዾ��}χ/��_�=��{>|��|�����E��ዾ�ዾ�ዾ�ዾ�ዾ������8u�>�?NݳO�S�����=���8u�>�?NݳO�S�����=���8u�>�?NݳO��O��O��O��O����SoçކO��z>�6|�m�����SoçގO��z;>�v|�����񩷗/���9�����9��c�h���9�Ø�;�9�c�Y�>���{�S�O�'>����{�S�O�'>����{�S�O�'>����{�S�O�>�^��{�/��g���5����b��of��a���s��n����3ǿ϶7��Ƨ~��m|���Ƨ~��|�w����~��|�w����~��|�w��������������f|���7��}����{����=�7O��b��7��|��onsx[co���m���on�m�Z��������k�k�Z�:�������k���Z�:�����������z�:��������SoçކO��z��1���#���1���#���1���#���1���#���1���#�:>�u|�������S߁O}>���w�S߁O}>���w�S߁O}>����w�S߉O}'>����w��������o�������o�������o�������o�������o����§��z/|���Ƨ��zo|���Ƨ��zo|���Ƨ��z|�}������z|����ʾo�����ʾo�����g���<c��+fc�1;�y�9��_�m���>|ѷ}��ok��ok��ok��ok��ok��ok��ok��ok��ok��ok��o���o���o���o���o���o���o���{no���7sx���=���?v�~�cg�?v�~�cg�?v�~�cg�?v�6|�m�����SoǧގO��z;>�v|�������Soǧ��z|�=������z|�=�����o�������o�������o�������o�������o��������zO|���§��z/|���§��z/|���§��zo|���Ƨ��zo|���Ƨ޵?���s�j�=�77�����{�o6�����{�o������߼ެ���|ѷ��o��E��ዾ��}��/��_�����?|ѷ��o��E���E���E���E���E���E���E���E���E������k�=���y��͍9��?���9��?���sxk�=�7/�����{�o����SoçކO��z>�6|�m�����SoçގO��z;>�v|�������SoǧގO�k�=���c_폼g�����y������y��͓9|�?������w�S߉O}'>����w�S߉O}'>����w�S߉O}'>�]��w�S߅O}>�]��w�S߅O}>�]��w�����ѿ{��͍9��w��ǝë�q��j�9��w��ǝë�q��j���z|�}������z|�}������z|��>|��>|��>|��>|��>|��>|��>|��>|��>|��>|����m�|�}[���m�����m�9�m2��-����v��ۿ7Go����u|��:��m_���/z[�������Eo����>�6|�m�����SoçކO��z>�6|�����9<ޙ���w���`�O���b�ofyΛ�s�SρO=>���s�SρO=>���s�SρO='>����s�SωO='>����s�SωO='>�����.|�~W������e��]��5�û&sx�b����]�9�o�}�6>����{�S�O�7>����{�S�O�7>�>����S�O�>�>����S�O�>�>�����������G޷�폼o��y���?��o�}����������m�#����G޷�폼o{�}�ዾ��E_o���7|�����_���/�z�}�㋾��E_����w|�    �;���_���/�z�}�㋾���S_�߳����m�#����G޷�폼o��y���?��o�}����������m�#��������SoǧގO��z;>�v|�=������z|�=������z|�=������zO|���G޷�폼o��y���?��o�}����������m�#����G޷�폼o�§���.|���§���.|���Ƨ���n|���Ƨ���n|���Ƨ���|�{������폼o��y���?��o�}����������m�#���폼o��?�=�������E�������Ǉ/z�_���=>|�{4|�{4|�{4|�{4|�{4|�{4|�{4|�{4|�{4|�{4|�{t|�{t|�{t|�{t|�{�������G޷��y�o�}{�������G޷��y�o�}{�������G޷��SoçކO��z>�6|�������SoǧގO��z;>�v|�����������z|�=�w�{��?�}{�����Q��޷G�{��?�}{�����Q��޷G�{��?�}{L|�;��ħ���N|�;��§���.|���§���.|���§���n|���Ƨ���n|��k�����q�ۣ�ǽo����=j�����q�ۣ�ǽo����=j�����q����S�O�>�>����������/z�_����=?|�{~�����E��������/zφ/zφ/zφ/zφ/zφ/z����=k�����q�۳�ǽo����=k�����q�۳�ǽo����=k�������������������������S_ç��O}��>�5|�k�����S_ǧ��O}��:>�u|����{����};ߟ�9��?Zݷ����Û���};ߟ�9��?Zݷ����Û���};ߟ���z|�=������zO|�=��ħ��zO|�=��ħ��zO|���§��z/|���§��z����{m�����1�w7�����m�����=�û��{�S�O�7>�>����S�O�>�>����S�O�>�>����������3�����<c������w���{v�?�s�y1��7�~�0�﷏9~�5���֙���1�����/ߟ�9|_����w_���������E�|~��u|�/ߟ�9|_����w_���������_ǧ~�O���>�3|�����{���w��/��������^;����9�ޘ��9�n��ug��7���SoǧގO��z|�=������z|�=������z|�=��ħ��zO|�=��ħ��z�������G޳��y�^o�={�������G޳��y�^o�={�������G޳�§���.|���Ƨ���n|���Ƨ���n|���Ƨ���|�{�������|�{������폼g��?����{�~�#���폼g�?����{�~�#���폼g�?�?|�{�����E���E���E���E���E���E���E���E���E���E���E���E���E���E���E���E���E���E���G޳��y��o�={�������G޳��y��o�={�������G޳��y�ކO}��>�u|�������S_ǧ��O}��:>�u|����w�S߁O}>���w�S߁O}>���{�o�={�������G޳��y��o�={�������G޳��y��o�={�����=��ħ��z/|���§��z/|���§��z/|���Ƨ��zo|���Ƨ��zo|����y��o�={�������G޳��y��o�={�������G޳��y��o�={|��|�����E�������χ/z�_�>��}>|��|�����E���E���E���E���E���E���E���E���E���E�S��޳O�{�>�?�=������S��޳O�{�>�?�=������S��޳O�{�>��>�5|�k�����S_ç��O}��>�5|�������S_ǧ��O}��:>�u|��������|j�{���q�٧�ǽg����}j�{���q�٧�ǽg����}j�{���q��g�S�O�'>����{�S�O�'>����{�S�O�>�^��{�S�O�>�^��{�S�O�>�^�Ի�ǽg����}j�{���q�٧�ǽg����}j�{���q�٧�ǽg����}>�=����S߃O}>�=����S߃O}>�=�~}���������������k߇��׾߯�}�__�>|���}�~}���������5|���޳-ߟ�9��?��g[�?�sxs�{϶|~�������m���������=۾��޳3�������k���Z�:�������k���Z�:�>çކO��z>�6|�m�����SoçކO��z;>�������^w���`�O���b�o���a����;ڛ�{�S�O�>���{�S�O�>���{�S�O�'>����{�S�O�'>����{�S�O�W�,�����:s��2�������k0������~3ǿ�:oV��O�6>����o�S��O�6>����o�S��O�6>�;����S��O�>�;����S��O�>�;���|����;��˧{����;����bvf�y0��'�y1��7��0����<������������������������������:���:���:���:���:���:���:���:���:���:����z��1���#���1���#���1���#���1���#���1���#�:>�u|�������S_ǧ��O}��:>���w�S߁O}>���w�S߁O}>���w�S߉O}'>}�o�������o�������o�������o�������o��������z/|���§��z/|���§��zo|���Ƨ��zo|���Ƨ��zo|�}�����o�����ʾo�����ʾo�����ʾo�����������=����g�f|ѷ��o��E��ዾ��}��/��_�����������������������������������;���;���;������g[�C�l�o�m��ݳ����{���?t϶�����������폝��������SoçކO��z>�6|�������SoǧގO��z;>�v|�����������z|�=���'{��q���'{��q���'{��q���'{��q���'{��q��ħ��zO|�=��ħ��z/|���§��z/|���§��z/|���Ƨ��zo|��w폼g[����l�?�m��G޳����{���y϶^�#���k�=�z폼g[����l���|�{�������|��>|��>|��>|��>|��>|��>|��>|��>|��>|��>|����k_���/�Z�}����j�=۬�G޳�j�=۬�G޳�j�=۬�G޳�j�=۬�G޳�j�=۬�G޳�:��m_���/z[�����f�����SoçކO��z>�6|�m�����SoǧގO��z;>�����l��y�6����l��y�6����l��y�6����l��y�6����l��y�6��w�S߁O}>���w�S߉O}'>����w�S߉O}'>����w�S߉O}>�]��w�S߅O}>�]��=����g���V������}ߟ[ݳ��s�{�}nuϾ�ϭ������=��?��g���V������}ߟ[ݳ��s�{�}nuϾ�ϭ������=��?��g���V������}ߟ[ݳ��s�{�}nuϾ�ϭ������=��?��g���V������}ߟ[ݳ��s�{�}nuϾ�ϭ������=��?��g���V������}ߟ[ݳ��s�{�}nuϾ�ϭ������=��?��g���V������}ߟ[ݳ��s�{�}nuϾ�ϭ������=��?��g���V������}ߟ[ݳ��s�{�}nuϾ�ϭ������=�� 
  ?��g���V������}ߟ[ݳ��s�{�}nuϾ�ϭ������=��?��g���V������}ߟ[ݳ��s�{�}nuϾ�ϭ������=��?��g���V������}ߟ[ݳ��s�{�}nuϾ�ϭ������=��?��g���V������}ߟ[ݳ��s�{�}nuϾ�ϭ������=��?��g���V������}ߟ[ݳ��s�{�}nuϾ�ϭ������=��?��g���V������}ߟ[ݳ}�S�O�>�^��{�S�O�7>����{�S�O�7>����{�S�O�>�>����S�O�>�>���폼g��y���?��o�={�������G޳��y�o�={�������G޳Ǉ/��_���;>|�w4|�w4|�w4|�w4|�w4|�w4|�w4|�w4|�w4|�w4|�wt|�wt|�wt|�wt|�wt|�wt|�wt|�=��?�=���{�x�#���폼g��?�=���{�x�#���폼g��?�=���{�0|�m�����SoǧގO��z;>�v|�������Soǧ��z|�=������z|�=���y�o�={�������G޳��y�o�={�������G޳��y�o�={L|�;��ħ���.|���§���.|���§���.|���Ƨ���n|���Ƨ���n|�����{�x�#���폼g��?�=���{�x�#���폼g��?�=���{�x�#����S�/z�_����=?|�{~�����E��������/z�_����=��=��=��=��=��=��=��=��=��=���{�|�#���폼gϷ?�=���{�|�#���폼gϷ?�=���{�|�#�ٳ�����SoçކO��z>�6|�m�����SoǧގO��z;>�v|�������Soǧ޵?�={�����Y��޳g�{Ϟ�?�={�����Y��޳g�{Ϟ�?�={�����9��ħ���N|�;��ħ���N|�;��ħ���.|���§���.|���§���.|���{��q�ٳ�ǽg����=k�{���q�ٳ�ǽg����=k�{���q�ٳ�ǽgσO�>�>����S�O�>�>����S�O���>|�{}�����E�������ׇ/z�_�^��>|�{}�����q�٫�ǽg�����j�{���q�٫�ǽg�����j�{���q�٫�ǽg��/���/���/���/���/���/���/���/���/���O}��>�5|�k�����S_ç��O}��>�u|�=���^������}ߟ{ݳ��s�{�}�uϾ�Ͻ������=��?��g���^������}ߟ{ݳ��s�{�}�uϾ�Ͻ������=��?��g���^������}ߟ{ݳ��s�{�}�uϾ�Ͻ������=��?��g���^������}ߟ{ݳ��s�{�}�uϾ�Ͻ������=��?��g���^������}ߟ{ݳ��s�{�}�uϾ�Ͻ������=��?��g���^������}ߟ{ݳ��s�{�}�uϾ�Ͻ������=��?��g���^������}ߟ{ݳ��s�{�}�uϾ�Ͻ������=��?��g���^������}ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{��ߟ{�}tߟ{�}tߟ{�}tߟ{�}tߟ{��sߟ�������������      �   �   x����j�@����S��6����Ui��Td�PB⮘�G��kޫ�)%�{��o���� {����yL�dMK���g?��v���<�GBfq�̿�~�^Z��K*�ٯ������Yh�S_!�\�8��q�&��e/�	���\�U�TeJ���]7��٦9e$~��&��G�&��;/�С�߻�o�g|������V�B�y^��� �	3&�O���Z      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�u��N�@���)f�-���Lӕ-ZE���7#C�:�^�b�=�!��1��{��|>�B`TgwF]��ϊ@���m�4�+袁���-�h]�\F�I�H<o�(�a��������}�M�ٷ\�qs��39�"[X���	�`�8�ހ.0���|N�\�2�|����V�hi���4���/�ᩨE���k�fr[�2��x^�ڎ��6g������fv�����F��GC�'��AAR8/�q�#(e�      �      x������ � �      �      x������ � �      �      x������ � �      �      x�3�4�2�=... ��     