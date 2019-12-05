--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-05 09:19:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 22 (class 2615 OID 18022)
-- Name: jmbermudo; Type: SCHEMA; Schema: -; Owner: datama2mi181
--

CREATE SCHEMA jmbermudo;


ALTER SCHEMA jmbermudo OWNER TO datama2mi181;

SET default_tablespace = '';

--
-- TOC entry 396 (class 1259 OID 25096)
-- Name: attraction; Type: TABLE; Schema: jmbermudo; Owner: datama2mi181
--

CREATE TABLE jmbermudo.attraction (
    id integer NOT NULL,
    attname character varying(255)
);


ALTER TABLE jmbermudo.attraction OWNER TO datama2mi181;

--
-- TOC entry 391 (class 1259 OID 24935)
-- Name: customer; Type: TABLE; Schema: jmbermudo; Owner: datama2mi181
--

CREATE TABLE jmbermudo.customer (
    id integer NOT NULL,
    cuslname character varying(255),
    cusfname character varying(255),
    cusinit character varying(255),
    cusage integer,
    cusaddress character varying(255),
    custype character varying(255)
);


ALTER TABLE jmbermudo.customer OWNER TO datama2mi181;

--
-- TOC entry 399 (class 1259 OID 25165)
-- Name: department; Type: TABLE; Schema: jmbermudo; Owner: datama2mi181
--

CREATE TABLE jmbermudo.department (
    id integer NOT NULL,
    empid integer,
    deptname character varying(255),
    depttype character varying(255)
);


ALTER TABLE jmbermudo.department OWNER TO datama2mi181;

--
-- TOC entry 397 (class 1259 OID 25114)
-- Name: employee; Type: TABLE; Schema: jmbermudo; Owner: datama2mi181
--

CREATE TABLE jmbermudo.employee (
    id integer NOT NULL,
    ticid integer,
    emplname character varying(255),
    empfname character varying(255),
    empinit character varying(255),
    empadress character varying(255),
    empsalary integer,
    empdob date
);


ALTER TABLE jmbermudo.employee OWNER TO datama2mi181;

--
-- TOC entry 395 (class 1259 OID 25071)
-- Name: payment; Type: TABLE; Schema: jmbermudo; Owner: datama2mi181
--

CREATE TABLE jmbermudo.payment (
    id integer NOT NULL,
    cusid integer,
    payamount integer,
    paytype character varying(255)
);


ALTER TABLE jmbermudo.payment OWNER TO datama2mi181;

--
-- TOC entry 394 (class 1259 OID 25016)
-- Name: ticket; Type: TABLE; Schema: jmbermudo; Owner: datama2mi181
--

CREATE TABLE jmbermudo.ticket (
    id integer NOT NULL,
    tictype character varying(255),
    ticdate date,
    ticdesc character varying(255)
);


ALTER TABLE jmbermudo.ticket OWNER TO datama2mi181;

--
-- TOC entry 3526 (class 0 OID 25096)
-- Dependencies: 396
-- Data for Name: attraction; Type: TABLE DATA; Schema: jmbermudo; Owner: datama2mi181
--

INSERT INTO jmbermudo.attraction VALUES (0, 'Roller Coaster');
INSERT INTO jmbermudo.attraction VALUES (1, 'Star Flyer');
INSERT INTO jmbermudo.attraction VALUES (2, 'Surf Dance');
INSERT INTO jmbermudo.attraction VALUES (3, 'Star Frisbee');
INSERT INTO jmbermudo.attraction VALUES (4, 'Jungel Splash');
INSERT INTO jmbermudo.attraction VALUES (5, 'Zyklon Loop');
INSERT INTO jmbermudo.attraction VALUES (6, 'Telecombat');
INSERT INTO jmbermudo.attraction VALUES (7, 'Dragon Express');
INSERT INTO jmbermudo.attraction VALUES (8, 'Mini Pirate Ship');
INSERT INTO jmbermudo.attraction VALUES (9, 'Spring Ride');
INSERT INTO jmbermudo.attraction VALUES (10, 'Wacky Worm');


--
-- TOC entry 3523 (class 0 OID 24935)
-- Dependencies: 391
-- Data for Name: customer; Type: TABLE DATA; Schema: jmbermudo; Owner: datama2mi181
--

INSERT INTO jmbermudo.customer VALUES (0, 'Bermudo', 'Jesus', 'M', 19, 'Taguig City', 'VIP');
INSERT INTO jmbermudo.customer VALUES (1, 'Dioniso', 'Yobhel', 'M', 19, 'Taguig City', 'Regular');
INSERT INTO jmbermudo.customer VALUES (2, 'Eler', 'Daniel', 'B', 20, 'Cavite City', 'VIP');
INSERT INTO jmbermudo.customer VALUES (3, 'Abuacan', 'Rjam', 'S', 19, 'Makati City', 'VIP');
INSERT INTO jmbermudo.customer VALUES (4, 'Gardon', 'Aaro', 'G', 19, 'Taguig City', 'VIP');
INSERT INTO jmbermudo.customer VALUES (5, 'Cisnero', 'Rown', 'T', 19, 'Makati City', 'VIP');
INSERT INTO jmbermudo.customer VALUES (6, 'Chavez', 'Liezl', 'P', 19, 'Taguig City', 'VIP');
INSERT INTO jmbermudo.customer VALUES (7, 'Cambaliza', 'Carl Rober', 'Z', 19, 'Pampanga City', 'VIP');
INSERT INTO jmbermudo.customer VALUES (8, 'Caridad', 'Asirrh', 'C', 19, 'Makati City', 'Regular');
INSERT INTO jmbermudo.customer VALUES (9, 'Tingson', 'Vanessa', 'T', 19, 'Taguig City', 'VIP');
INSERT INTO jmbermudo.customer VALUES (10, 'Sipe', 'Rommel', 'M', 19, 'Taguig City', 'VIP');


--
-- TOC entry 3528 (class 0 OID 25165)
-- Dependencies: 399
-- Data for Name: department; Type: TABLE DATA; Schema: jmbermudo; Owner: datama2mi181
--

INSERT INTO jmbermudo.department VALUES (0, 0, 'Accounting', 'AC');
INSERT INTO jmbermudo.department VALUES (1, 1, 'Hiring Recruitment', 'HR');
INSERT INTO jmbermudo.department VALUES (2, 2, 'Finance', 'FE');
INSERT INTO jmbermudo.department VALUES (3, 3, 'Maintenance', 'MI');
INSERT INTO jmbermudo.department VALUES (4, 4, 'Management', 'MG');


--
-- TOC entry 3527 (class 0 OID 25114)
-- Dependencies: 397
-- Data for Name: employee; Type: TABLE DATA; Schema: jmbermudo; Owner: datama2mi181
--

INSERT INTO jmbermudo.employee VALUES (0, 0, 'Casio', 'James', 'A', 'Pasay City', 5000, '1985-10-01');
INSERT INTO jmbermudo.employee VALUES (1, 1, 'Durante', 'Nicole', 'B', 'Taguig City', 10000, '1985-10-01');
INSERT INTO jmbermudo.employee VALUES (2, 2, 'Mercado', 'Jaymie', 'C', 'Pasig City', 20000, '1985-10-01');
INSERT INTO jmbermudo.employee VALUES (3, 3, 'Disnisio', 'Janice', 'D', 'Makati City', 5000, '1985-10-01');
INSERT INTO jmbermudo.employee VALUES (4, 4, 'Eler', 'Karren', 'E', 'Makati City', 1000, '1985-10-01');
INSERT INTO jmbermudo.employee VALUES (5, 5, 'Gardon', 'Yobhel', 'F', 'Makati City', 2500, '1985-10-01');
INSERT INTO jmbermudo.employee VALUES (6, 6, 'Ramsey', 'Helena', 'G', 'Pasig City', 6000, '1985-10-01');
INSERT INTO jmbermudo.employee VALUES (7, 7, 'Diokno', 'Hanzel', 'H', 'Makati City', 1000, '1985-10-01');
INSERT INTO jmbermudo.employee VALUES (8, 8, 'Asia', 'Ace', 'I', 'Pasig City', 3000, '1985-10-01');
INSERT INTO jmbermudo.employee VALUES (9, 9, 'Abuacan', 'Rjam', 'J', 'Makati City', 4000, '1985-10-01');
INSERT INTO jmbermudo.employee VALUES (10, 10, 'Realiza', 'James', 'K', 'Makati City', 200, '1985-10-01');


--
-- TOC entry 3525 (class 0 OID 25071)
-- Dependencies: 395
-- Data for Name: payment; Type: TABLE DATA; Schema: jmbermudo; Owner: datama2mi181
--

INSERT INTO jmbermudo.payment VALUES (0, 0, 110, 'Cash');
INSERT INTO jmbermudo.payment VALUES (1, 1, 1000, 'Cash');
INSERT INTO jmbermudo.payment VALUES (2, 2, 220, 'Cash');
INSERT INTO jmbermudo.payment VALUES (3, 3, 220, 'Cash');
INSERT INTO jmbermudo.payment VALUES (4, 4, 330, 'Cash');
INSERT INTO jmbermudo.payment VALUES (5, 5, 440, 'Cash');
INSERT INTO jmbermudo.payment VALUES (6, 6, 550, 'Cash');
INSERT INTO jmbermudo.payment VALUES (7, 7, 660, 'Cash');
INSERT INTO jmbermudo.payment VALUES (8, 8, 770, 'Cash');
INSERT INTO jmbermudo.payment VALUES (9, 9, 880, 'Cash');
INSERT INTO jmbermudo.payment VALUES (10, 10, 990, 'Cash');


--
-- TOC entry 3524 (class 0 OID 25016)
-- Dependencies: 394
-- Data for Name: ticket; Type: TABLE DATA; Schema: jmbermudo; Owner: datama2mi181
--

INSERT INTO jmbermudo.ticket VALUES (0, 'VIP', '2019-10-01', 'Ride All You Can');
INSERT INTO jmbermudo.ticket VALUES (1, 'Regular', '2019-10-01', 'Limited Rides');
INSERT INTO jmbermudo.ticket VALUES (2, 'VIP', '2019-10-01', 'Ride All You Can');
INSERT INTO jmbermudo.ticket VALUES (3, 'Regular', '2019-10-01', 'Limited Rides');
INSERT INTO jmbermudo.ticket VALUES (4, 'Regular', '2019-10-01', 'Ride All You Can');
INSERT INTO jmbermudo.ticket VALUES (5, 'VIP', '2019-10-01', 'Ride All You Can');
INSERT INTO jmbermudo.ticket VALUES (6, 'Regular', '2019-10-01', 'Ride All You Can');
INSERT INTO jmbermudo.ticket VALUES (7, 'VIP', '2019-10-01', 'Ride All You Can');
INSERT INTO jmbermudo.ticket VALUES (8, 'Regular', '2019-10-01', 'Ride All You Can');
INSERT INTO jmbermudo.ticket VALUES (9, 'VIP', '2019-10-01', 'Limited Rides');
INSERT INTO jmbermudo.ticket VALUES (10, 'Regular', '2019-10-01', 'Ride All You Can');


--
-- TOC entry 3367 (class 2606 OID 25100)
-- Name: attraction attraction_pkey; Type: CONSTRAINT; Schema: jmbermudo; Owner: datama2mi181
--

ALTER TABLE ONLY jmbermudo.attraction
    ADD CONSTRAINT attraction_pkey PRIMARY KEY (id);


--
-- TOC entry 3361 (class 2606 OID 24939)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: jmbermudo; Owner: datama2mi181
--

ALTER TABLE ONLY jmbermudo.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- TOC entry 3371 (class 2606 OID 25169)
-- Name: department department_pkey; Type: CONSTRAINT; Schema: jmbermudo; Owner: datama2mi181
--

ALTER TABLE ONLY jmbermudo.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);


--
-- TOC entry 3369 (class 2606 OID 25118)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: jmbermudo; Owner: datama2mi181
--

ALTER TABLE ONLY jmbermudo.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- TOC entry 3365 (class 2606 OID 25075)
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: jmbermudo; Owner: datama2mi181
--

ALTER TABLE ONLY jmbermudo.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);


--
-- TOC entry 3363 (class 2606 OID 25020)
-- Name: ticket ticket_pkey; Type: CONSTRAINT; Schema: jmbermudo; Owner: datama2mi181
--

ALTER TABLE ONLY jmbermudo.ticket
    ADD CONSTRAINT ticket_pkey PRIMARY KEY (id);


--
-- TOC entry 3372 (class 2606 OID 25028)
-- Name: customer customer_fk; Type: FK CONSTRAINT; Schema: jmbermudo; Owner: datama2mi181
--

ALTER TABLE ONLY jmbermudo.customer
    ADD CONSTRAINT customer_fk FOREIGN KEY (id) REFERENCES jmbermudo.ticket(id);


--
-- TOC entry 3377 (class 2606 OID 25170)
-- Name: department department_empid_fkey; Type: FK CONSTRAINT; Schema: jmbermudo; Owner: datama2mi181
--

ALTER TABLE ONLY jmbermudo.department
    ADD CONSTRAINT department_empid_fkey FOREIGN KEY (empid) REFERENCES jmbermudo.employee(id);


--
-- TOC entry 3376 (class 2606 OID 25185)
-- Name: employee employee_fk; Type: FK CONSTRAINT; Schema: jmbermudo; Owner: datama2mi181
--

ALTER TABLE ONLY jmbermudo.employee
    ADD CONSTRAINT employee_fk FOREIGN KEY (id) REFERENCES jmbermudo.attraction(id);


--
-- TOC entry 3375 (class 2606 OID 25119)
-- Name: employee employee_ticid_fkey; Type: FK CONSTRAINT; Schema: jmbermudo; Owner: datama2mi181
--

ALTER TABLE ONLY jmbermudo.employee
    ADD CONSTRAINT employee_ticid_fkey FOREIGN KEY (ticid) REFERENCES jmbermudo.ticket(id);


--
-- TOC entry 3373 (class 2606 OID 25076)
-- Name: payment payment_cusid_fkey; Type: FK CONSTRAINT; Schema: jmbermudo; Owner: datama2mi181
--

ALTER TABLE ONLY jmbermudo.payment
    ADD CONSTRAINT payment_cusid_fkey FOREIGN KEY (cusid) REFERENCES jmbermudo.customer(id);


--
-- TOC entry 3374 (class 2606 OID 25144)
-- Name: payment payment_fk; Type: FK CONSTRAINT; Schema: jmbermudo; Owner: datama2mi181
--

ALTER TABLE ONLY jmbermudo.payment
    ADD CONSTRAINT payment_fk FOREIGN KEY (id) REFERENCES jmbermudo.employee(id);


-- Completed on 2019-12-05 09:19:17

--
-- PostgreSQL database dump complete
--

