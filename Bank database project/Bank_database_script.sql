--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2021-03-19 19:07:18

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
-- TOC entry 204 (class 1259 OID 24636)
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts (
    account_number character varying(30) NOT NULL,
    catogary character varying(30),
    current_balance numeric(8,2),
    opening_date date,
    customer_socialsec_number character varying(15),
    banker_eid integer
);


ALTER TABLE public.accounts OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 24578)
-- Name: bankers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bankers (
    banker_eid integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(150)
);


ALTER TABLE public.bankers OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 24651)
-- Name: creditcards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.creditcards (
    credit_card_number character varying(30) NOT NULL,
    credit_limit numeric(8,2) NOT NULL,
    credit_balance numeric(8,2),
    expire_date date,
    customer_socialsec_number character varying(15),
    banker_eid integer
);


ALTER TABLE public.creditcards OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 24631)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_socialsec_number character varying(15) NOT NULL,
    customer_id character varying(15) NOT NULL,
    customer_first_name character varying(50) NOT NULL,
    customer_last_name character varying(50) NOT NULL,
    phone_number character varying(15),
    customer_dateof_birth date,
    customer_address character varying(150),
    customer_zipcode integer,
    banker_id integer
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 2838 (class 0 OID 24636)
-- Dependencies: 204
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts (account_number, catogary, current_balance, opening_date, customer_socialsec_number, banker_eid) FROM stdin;
000 123 567 890	Savings	25700.25	2015-04-12	234-22-2678	1
000 413 874 567	Savings	1500.25	2017-06-21	123-11-1234	5
024 714 824 227	Savings	4765.00	2019-10-01	555-11-1854	3
000 954 666 154	Savings	3000.70	2020-03-01	358-28-3850	2
000 111 674 333	Savings	7465.00	2018-04-20	217-26-3350	4
000 397 442 111	Ckecking	1200.00	2019-11-10	315-78-1234	6
\.


--
-- TOC entry 2836 (class 0 OID 24578)
-- Dependencies: 202
-- Data for Name: bankers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bankers (banker_eid, first_name, last_name, email) FROM stdin;
1	Raj	Kumarage	raj12345@gmail.com
2	Ruvi	Senevirathna	ruvi123@gmail.com
3	Sam	Gopal	samgopal78@yahoo.com
4	Donna	Anderson	anderson7812@gmail.com
5	Calvin	Barnes	calvinb90@gmail.com
6	Fallen	Andrea	fallenandrea95@yahoo.com
7	John	Adam	john147825@gmail.com
\.


--
-- TOC entry 2839 (class 0 OID 24651)
-- Dependencies: 205
-- Data for Name: creditcards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.creditcards (credit_card_number, credit_limit, credit_balance, expire_date, customer_socialsec_number, banker_eid) FROM stdin;
5000 0000 2456 0111	10000.00	5000.00	2025-12-30	234-22-2678	1
2000 0000 1156 0121	5000.00	2000.00	2022-04-30	123-11-1234	4
2000 000 1222 9741	5000.00	1500.00	2022-04-30	555-11-1854	4
0000 100 5524 2375	4000.00	1570.00	2023-01-30	217-26-3350	5
0010 100 6172 2222	6000.00	3525.00	2024-04-15	315-78-1234	2
\.


--
-- TOC entry 2837 (class 0 OID 24631)
-- Dependencies: 203
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customer_socialsec_number, customer_id, customer_first_name, customer_last_name, phone_number, customer_dateof_birth, customer_address, customer_zipcode, banker_id) FROM stdin;
123-11-1234	123 567 890	Rosi	Thomson	347-222-5050	1988-10-12	25,St.George Place,Staten Island,NY	10301	6
358-28-3850	612 537 860	Tyler	Anderson	 646-265-5514	1995-10-25	100,St.Gegary Place,Staten Island,NY	10314	2
555-11-1854	423 967 890	Ann	Thomson	 347-265-5960	1989-02-15	25,St.George Place,Staten Island,NY	10301	3
217-26-3350	512 259 952	Anusha	Siriwardena	 646-299-7754	1990-04-03	14,APT 6G,Victory Blvd, Place,Staten Island,NY	10314	4
315-78-1234	338 656 760	Benitha	Hills	 917-555-2915	1985-05-28	53A,St.Richmand Place,Staten Island,NY	10301	5
234-22-2678	256 789 667	Marry	Jason	646-598-1423	1975-01-05	100,Victory Blvd,NY	10005	1
\.


--
-- TOC entry 2702 (class 2606 OID 24640)
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (account_number);


--
-- TOC entry 2698 (class 2606 OID 24582)
-- Name: bankers bankers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bankers
    ADD CONSTRAINT bankers_pkey PRIMARY KEY (banker_eid);


--
-- TOC entry 2704 (class 2606 OID 24655)
-- Name: creditcards creditcards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.creditcards
    ADD CONSTRAINT creditcards_pkey PRIMARY KEY (credit_card_number);


--
-- TOC entry 2700 (class 2606 OID 24635)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_socialsec_number);


--
-- TOC entry 2707 (class 2606 OID 24646)
-- Name: accounts accounts_banker_eid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_banker_eid_fkey FOREIGN KEY (banker_eid) REFERENCES public.bankers(banker_eid);


--
-- TOC entry 2706 (class 2606 OID 24641)
-- Name: accounts accounts_customer_socialsec_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_customer_socialsec_number_fkey FOREIGN KEY (customer_socialsec_number) REFERENCES public.customers(customer_socialsec_number);


--
-- TOC entry 2709 (class 2606 OID 24661)
-- Name: creditcards creditcards_banker_eid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.creditcards
    ADD CONSTRAINT creditcards_banker_eid_fkey FOREIGN KEY (banker_eid) REFERENCES public.bankers(banker_eid);


--
-- TOC entry 2708 (class 2606 OID 24656)
-- Name: creditcards creditcards_customer_socialsec_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.creditcards
    ADD CONSTRAINT creditcards_customer_socialsec_number_fkey FOREIGN KEY (customer_socialsec_number) REFERENCES public.customers(customer_socialsec_number);


--
-- TOC entry 2705 (class 2606 OID 32823)
-- Name: customers fk_banker_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT fk_banker_id FOREIGN KEY (banker_id) REFERENCES public.bankers(banker_eid);


-- Completed on 2021-03-19 19:07:19

--
-- PostgreSQL database dump complete
--

