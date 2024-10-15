--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 14.6

-- Started on 2024-09-02 11:52:02

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

--
-- TOC entry 3503 (class 0 OID 60238)
-- Dependencies: 254
-- Data for Name: tab_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab_users (id, active, email, first_name, last_name, name, password, password_changed_time, user_name, hospital_id) FROM stdin;
5	t	skaznika@wcpr.slask.eu	dsfvbsdfvs	dsfvds sd 	dsfvbsdfvs dsfvds sd 	$2a$10$DrRE44/T7l/l1HxcwozHGOrzDWIy7RYBvKiBI76rAnfndEwAk8E8G	2024-08-23 12:12:52.30723	skaznika1	50
1	t	skaznika@wcpr.slask.eu	Adam	Skaźnik	Adam Skaźnik	$2a$10$QUfu3uwxlJsFI7elfYSYB.3ZWnunCFCwY1.k7VsH.uLMInVsELjN2	2024-08-26 08:40:45.3158	skaznika	73
\.


--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 253
-- Name: tab_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tab_users_id_seq', 5, true);


-- Completed on 2024-09-02 11:52:02

--
-- PostgreSQL database dump complete
--

