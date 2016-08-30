--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: actors; Type: TABLE; Schema: public; Owner: rush
--

CREATE TABLE actors (
    actorsid integer NOT NULL,
    actors integer NOT NULL,
    movieid integer NOT NULL
);


ALTER TABLE actors OWNER TO rush;

--
-- Name: actors_actorsid_seq; Type: SEQUENCE; Schema: public; Owner: rush
--

CREATE SEQUENCE actors_actorsid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE actors_actorsid_seq OWNER TO rush;

--
-- Name: actors_actorsid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rush
--

ALTER SEQUENCE actors_actorsid_seq OWNED BY actors.actorsid;


--
-- Name: diretors; Type: TABLE; Schema: public; Owner: rush
--

CREATE TABLE diretors (
    diretorsid integer NOT NULL,
    directors integer NOT NULL,
    movieid integer NOT NULL
);


ALTER TABLE diretors OWNER TO rush;

--
-- Name: diretors_diretorsid_seq; Type: SEQUENCE; Schema: public; Owner: rush
--

CREATE SEQUENCE diretors_diretorsid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE diretors_diretorsid_seq OWNER TO rush;

--
-- Name: diretors_diretorsid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rush
--

ALTER SEQUENCE diretors_diretorsid_seq OWNED BY diretors.diretorsid;


--
-- Name: genre; Type: TABLE; Schema: public; Owner: rush
--

CREATE TABLE genre (
    genreid integer NOT NULL,
    genretype character varying(25) NOT NULL
);


ALTER TABLE genre OWNER TO rush;

--
-- Name: genre_genreid_seq; Type: SEQUENCE; Schema: public; Owner: rush
--

CREATE SEQUENCE genre_genreid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genre_genreid_seq OWNER TO rush;

--
-- Name: genre_genreid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rush
--

ALTER SEQUENCE genre_genreid_seq OWNED BY genre.genreid;


--
-- Name: movie; Type: TABLE; Schema: public; Owner: rush
--

CREATE TABLE movie (
    movieid integer NOT NULL,
    title character varying(50) NOT NULL,
    year integer NOT NULL,
    rating integer NOT NULL
);


ALTER TABLE movie OWNER TO rush;

--
-- Name: movie_movieid_seq; Type: SEQUENCE; Schema: public; Owner: rush
--

CREATE SEQUENCE movie_movieid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_movieid_seq OWNER TO rush;

--
-- Name: movie_movieid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rush
--

ALTER SEQUENCE movie_movieid_seq OWNED BY movie.movieid;


--
-- Name: moviegenre; Type: TABLE; Schema: public; Owner: rush
--

CREATE TABLE moviegenre (
    moviegenreid integer NOT NULL,
    movieid integer NOT NULL,
    genre integer NOT NULL
);


ALTER TABLE moviegenre OWNER TO rush;

--
-- Name: moviegenre_moviegenreid_seq; Type: SEQUENCE; Schema: public; Owner: rush
--

CREATE SEQUENCE moviegenre_moviegenreid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE moviegenre_moviegenreid_seq OWNER TO rush;

--
-- Name: moviegenre_moviegenreid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rush
--

ALTER SEQUENCE moviegenre_moviegenreid_seq OWNED BY moviegenre.moviegenreid;


--
-- Name: person; Type: TABLE; Schema: public; Owner: rush
--

CREATE TABLE person (
    personid integer NOT NULL,
    person character varying(50) NOT NULL,
    persontype integer NOT NULL
);


ALTER TABLE person OWNER TO rush;

--
-- Name: person_personid_seq; Type: SEQUENCE; Schema: public; Owner: rush
--

CREATE SEQUENCE person_personid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE person_personid_seq OWNER TO rush;

--
-- Name: person_personid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rush
--

ALTER SEQUENCE person_personid_seq OWNED BY person.personid;


--
-- Name: persontype; Type: TABLE; Schema: public; Owner: rush
--

CREATE TABLE persontype (
    persontypeid integer NOT NULL,
    persontype character varying(50) NOT NULL
);


ALTER TABLE persontype OWNER TO rush;

--
-- Name: persontype_persontypeid_seq; Type: SEQUENCE; Schema: public; Owner: rush
--

CREATE SEQUENCE persontype_persontypeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE persontype_persontypeid_seq OWNER TO rush;

--
-- Name: persontype_persontypeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rush
--

ALTER SEQUENCE persontype_persontypeid_seq OWNED BY persontype.persontypeid;


--
-- Name: review; Type: TABLE; Schema: public; Owner: rush
--

CREATE TABLE review (
    reviewid integer NOT NULL,
    review character varying(500) NOT NULL,
    movieid integer NOT NULL
);


ALTER TABLE review OWNER TO rush;

--
-- Name: review_reviewid_seq; Type: SEQUENCE; Schema: public; Owner: rush
--

CREATE SEQUENCE review_reviewid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE review_reviewid_seq OWNER TO rush;

--
-- Name: review_reviewid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rush
--

ALTER SEQUENCE review_reviewid_seq OWNED BY review.reviewid;


--
-- Name: supportingcast; Type: TABLE; Schema: public; Owner: rush
--

CREATE TABLE supportingcast (
    supportingcastid integer NOT NULL,
    supportingcast integer NOT NULL,
    movieid integer NOT NULL
);


ALTER TABLE supportingcast OWNER TO rush;

--
-- Name: supportingcast_supportingcastid_seq; Type: SEQUENCE; Schema: public; Owner: rush
--

CREATE SEQUENCE supportingcast_supportingcastid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE supportingcast_supportingcastid_seq OWNER TO rush;

--
-- Name: supportingcast_supportingcastid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rush
--

ALTER SEQUENCE supportingcast_supportingcastid_seq OWNED BY supportingcast.supportingcastid;


--
-- Name: writers; Type: TABLE; Schema: public; Owner: rush
--

CREATE TABLE writers (
    writersid integer NOT NULL,
    writers integer NOT NULL,
    movieid integer NOT NULL
);


ALTER TABLE writers OWNER TO rush;

--
-- Name: writers_writersid_seq; Type: SEQUENCE; Schema: public; Owner: rush
--

CREATE SEQUENCE writers_writersid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE writers_writersid_seq OWNER TO rush;

--
-- Name: writers_writersid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rush
--

ALTER SEQUENCE writers_writersid_seq OWNED BY writers.writersid;


--
-- Name: actorsid; Type: DEFAULT; Schema: public; Owner: rush
--

ALTER TABLE ONLY actors ALTER COLUMN actorsid SET DEFAULT nextval('actors_actorsid_seq'::regclass);


--
-- Name: genreid; Type: DEFAULT; Schema: public; Owner: rush
--

ALTER TABLE ONLY genre ALTER COLUMN genreid SET DEFAULT nextval('genre_genreid_seq'::regclass);


--
-- Name: movieid; Type: DEFAULT; Schema: public; Owner: rush
--

ALTER TABLE ONLY movie ALTER COLUMN movieid SET DEFAULT nextval('movie_movieid_seq'::regclass);


--
-- Name: moviegenreid; Type: DEFAULT; Schema: public; Owner: rush
--

ALTER TABLE ONLY moviegenre ALTER COLUMN moviegenreid SET DEFAULT nextval('moviegenre_moviegenreid_seq'::regclass);


--
-- Name: personid; Type: DEFAULT; Schema: public; Owner: rush
--

ALTER TABLE ONLY person ALTER COLUMN personid SET DEFAULT nextval('person_personid_seq'::regclass);


--
-- Name: persontypeid; Type: DEFAULT; Schema: public; Owner: rush
--

ALTER TABLE ONLY persontype ALTER COLUMN persontypeid SET DEFAULT nextval('persontype_persontypeid_seq'::regclass);


--
-- Name: reviewid; Type: DEFAULT; Schema: public; Owner: rush
--

ALTER TABLE ONLY review ALTER COLUMN reviewid SET DEFAULT nextval('review_reviewid_seq'::regclass);


--
-- Name: supportingcastid; Type: DEFAULT; Schema: public; Owner: rush
--

ALTER TABLE ONLY supportingcast ALTER COLUMN supportingcastid SET DEFAULT nextval('supportingcast_supportingcastid_seq'::regclass);


--
-- Name: writersid; Type: DEFAULT; Schema: public; Owner: rush
--

ALTER TABLE ONLY writers ALTER COLUMN writersid SET DEFAULT nextval('writers_writersid_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: rush
--

COPY actors (actorsid, actors, movieid) FROM stdin;
1	5	3
2	6	3
3	5	5
4	6	5
5	7	5
6	9	6
7	10	8
8	8	9
9	9	9
10	6	10
11	7	11
12	8	12
13	5	14
14	8	14
\.


--
-- Name: actors_actorsid_seq; Type: SEQUENCE SET; Schema: public; Owner: rush
--

SELECT pg_catalog.setval('actors_actorsid_seq', 14, true);


--
-- Data for Name: diretors; Type: TABLE DATA; Schema: public; Owner: rush
--

COPY diretors (diretorsid, directors, movieid) FROM stdin;
5	3	9
7	4	11
8	4	12
9	3	13
2	1	8
3	4	6
4	1	3
10	3	14
1	1	5
6	3	5
\.


--
-- Name: diretors_diretorsid_seq; Type: SEQUENCE SET; Schema: public; Owner: rush
--

SELECT pg_catalog.setval('diretors_diretorsid_seq', 1, false);


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: rush
--

COPY genre (genreid, genretype) FROM stdin;
1	Comedy
2	Drama
3	Horror
4	Action
5	Crime
6	Sci-fi
7	Family
8	Musical
9	History
10	Romance
\.


--
-- Name: genre_genreid_seq; Type: SEQUENCE SET; Schema: public; Owner: rush
--

SELECT pg_catalog.setval('genre_genreid_seq', 7, true);


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: rush
--

COPY movie (movieid, title, year, rating) FROM stdin;
13	Bang	2001	10
14	Grade A	2014	8
6	Dude	2013	7
3	Boss	1999	2
5	Yay	2007	4
8	Wow	1950	2
9	Grrr	1995	9
10	BBRRR	1970	3
11	Pretty Dogs	1954	6
12	Pink Parade	2000	7
\.


--
-- Name: movie_movieid_seq; Type: SEQUENCE SET; Schema: public; Owner: rush
--

SELECT pg_catalog.setval('movie_movieid_seq', 14, true);


--
-- Data for Name: moviegenre; Type: TABLE DATA; Schema: public; Owner: rush
--

COPY moviegenre (moviegenreid, movieid, genre) FROM stdin;
1	3	1
2	5	4
3	5	7
4	6	4
6	8	5
7	9	9
8	10	2
9	11	6
10	12	3
11	13	2
12	14	10
\.


--
-- Name: moviegenre_moviegenreid_seq; Type: SEQUENCE SET; Schema: public; Owner: rush
--

SELECT pg_catalog.setval('moviegenre_moviegenreid_seq', 12, true);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: rush
--

COPY person (personid, person, persontype) FROM stdin;
1	Micheal Bay	1
3	Duder	1
4	Hass Boss	1
5	Regge Moon	1
6	Rager Boon	2
7	Tagg Got	2
8	Moon man	2
9	Rasida masse	3
10	Jane Doe	3
11	HA HA	4
12	Yabba Dude	4
13	Git giter	5
14	Jim Grab	6
15	Shasa Reg	7
16	Bull	8
17	Rara	9
18	Grr	10
\.


--
-- Name: person_personid_seq; Type: SEQUENCE SET; Schema: public; Owner: rush
--

SELECT pg_catalog.setval('person_personid_seq', 18, true);


--
-- Data for Name: persontype; Type: TABLE DATA; Schema: public; Owner: rush
--

COPY persontype (persontypeid, persontype) FROM stdin;
1	Director
2	Actor
3	Actress
4	Writer
5	Key Grip
6	Vice Grip
7	Boom Operator
8	Extra
9	Stunt man
10	Driver
\.


--
-- Name: persontype_persontypeid_seq; Type: SEQUENCE SET; Schema: public; Owner: rush
--

SELECT pg_catalog.setval('persontype_persontypeid_seq', 10, true);


--
-- Data for Name: review; Type: TABLE DATA; Schema: public; Owner: rush
--

COPY review (reviewid, review, movieid) FROM stdin;
\.


--
-- Name: review_reviewid_seq; Type: SEQUENCE SET; Schema: public; Owner: rush
--

SELECT pg_catalog.setval('review_reviewid_seq', 1, true);


--
-- Data for Name: supportingcast; Type: TABLE DATA; Schema: public; Owner: rush
--

COPY supportingcast (supportingcastid, supportingcast, movieid) FROM stdin;
1	13	3
2	14	5
3	15	6
6	17	8
7	18	9
8	13	10
9	15	11
10	17	12
11	18	13
12	14	14
13	15	3
\.


--
-- Name: supportingcast_supportingcastid_seq; Type: SEQUENCE SET; Schema: public; Owner: rush
--

SELECT pg_catalog.setval('supportingcast_supportingcastid_seq', 13, true);


--
-- Data for Name: writers; Type: TABLE DATA; Schema: public; Owner: rush
--

COPY writers (writersid, writers, movieid) FROM stdin;
1	11	3
2	12	5
3	11	6
6	12	8
7	11	9
8	11	10
9	11	11
10	12	12
11	11	13
12	12	14
\.


--
-- Name: writers_writersid_seq; Type: SEQUENCE SET; Schema: public; Owner: rush
--

SELECT pg_catalog.setval('writers_writersid_seq', 12, true);


--
-- Name: actors_actorsid_pk; Type: CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY actors
    ADD CONSTRAINT actors_actorsid_pk PRIMARY KEY (actorsid);


--
-- Name: diretors_diretorsid_pk; Type: CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY diretors
    ADD CONSTRAINT diretors_diretorsid_pk PRIMARY KEY (diretorsid);


--
-- Name: genre_pkey; Type: CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genreid);


--
-- Name: movie_pkey; Type: CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (movieid);


--
-- Name: moviegenre_pkey; Type: CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY moviegenre
    ADD CONSTRAINT moviegenre_pkey PRIMARY KEY (moviegenreid);


--
-- Name: person_pkey; Type: CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_pkey PRIMARY KEY (personid);


--
-- Name: persontype_pkey; Type: CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY persontype
    ADD CONSTRAINT persontype_pkey PRIMARY KEY (persontypeid);


--
-- Name: review_pkey; Type: CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY review
    ADD CONSTRAINT review_pkey PRIMARY KEY (reviewid);


--
-- Name: supportingcast_supportingcastid_pk; Type: CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY supportingcast
    ADD CONSTRAINT supportingcast_supportingcastid_pk PRIMARY KEY (supportingcastid);


--
-- Name: writers_writersid_pk; Type: CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY writers
    ADD CONSTRAINT writers_writersid_pk PRIMARY KEY (writersid);


--
-- Name: Genre_genreid_uindex; Type: INDEX; Schema: public; Owner: rush
--

CREATE UNIQUE INDEX "Genre_genreid_uindex" ON genre USING btree (genreid);


--
-- Name: Genre_genretype_uindex; Type: INDEX; Schema: public; Owner: rush
--

CREATE UNIQUE INDEX "Genre_genretype_uindex" ON genre USING btree (genretype);


--
-- Name: Review_reviewid_uindex; Type: INDEX; Schema: public; Owner: rush
--

CREATE UNIQUE INDEX "Review_reviewid_uindex" ON review USING btree (reviewid);


--
-- Name: diretors_diretorsid_uindex; Type: INDEX; Schema: public; Owner: rush
--

CREATE UNIQUE INDEX diretors_diretorsid_uindex ON diretors USING btree (diretorsid);


--
-- Name: movie_movieid_uindex; Type: INDEX; Schema: public; Owner: rush
--

CREATE UNIQUE INDEX movie_movieid_uindex ON movie USING btree (movieid);


--
-- Name: moviegenre_moviegenreid_uindex; Type: INDEX; Schema: public; Owner: rush
--

CREATE UNIQUE INDEX moviegenre_moviegenreid_uindex ON moviegenre USING btree (moviegenreid);


--
-- Name: person_personid_uindex; Type: INDEX; Schema: public; Owner: rush
--

CREATE UNIQUE INDEX person_personid_uindex ON person USING btree (personid);


--
-- Name: persontype_persontypeid_uindex; Type: INDEX; Schema: public; Owner: rush
--

CREATE UNIQUE INDEX persontype_persontypeid_uindex ON persontype USING btree (persontypeid);


--
-- Name: supportingcast_supportingcastid_uindex; Type: INDEX; Schema: public; Owner: rush
--

CREATE UNIQUE INDEX supportingcast_supportingcastid_uindex ON supportingcast USING btree (supportingcastid);


--
-- Name: writers_writersid_uindex; Type: INDEX; Schema: public; Owner: rush
--

CREATE UNIQUE INDEX writers_writersid_uindex ON writers USING btree (writersid);


--
-- Name: actors_movie_movieid_fk; Type: FK CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY actors
    ADD CONSTRAINT actors_movie_movieid_fk FOREIGN KEY (movieid) REFERENCES movie(movieid);


--
-- Name: actors_person_personid_fk; Type: FK CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY actors
    ADD CONSTRAINT actors_person_personid_fk FOREIGN KEY (actors) REFERENCES person(personid);


--
-- Name: diretors_movie_movieid_fk; Type: FK CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY diretors
    ADD CONSTRAINT diretors_movie_movieid_fk FOREIGN KEY (movieid) REFERENCES movie(movieid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: diretors_person_personid_fk; Type: FK CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY diretors
    ADD CONSTRAINT diretors_person_personid_fk FOREIGN KEY (directors) REFERENCES person(personid);


--
-- Name: moviegenre_genre_genreid_fk; Type: FK CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY moviegenre
    ADD CONSTRAINT moviegenre_genre_genreid_fk FOREIGN KEY (genre) REFERENCES genre(genreid);


--
-- Name: moviegenre_movie_movieid_fk; Type: FK CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY moviegenre
    ADD CONSTRAINT moviegenre_movie_movieid_fk FOREIGN KEY (movieid) REFERENCES movie(movieid);


--
-- Name: person_persontype_persontypeid_fk; Type: FK CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_persontype_persontypeid_fk FOREIGN KEY (persontype) REFERENCES persontype(persontypeid);


--
-- Name: review_movie_movieid_fk; Type: FK CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY review
    ADD CONSTRAINT review_movie_movieid_fk FOREIGN KEY (movieid) REFERENCES movie(movieid);


--
-- Name: supportingcast_movie_movieid_fk; Type: FK CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY supportingcast
    ADD CONSTRAINT supportingcast_movie_movieid_fk FOREIGN KEY (movieid) REFERENCES movie(movieid);


--
-- Name: supportingcast_person_personid_fk; Type: FK CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY supportingcast
    ADD CONSTRAINT supportingcast_person_personid_fk FOREIGN KEY (supportingcast) REFERENCES person(personid);


--
-- Name: writers_movie_movieid_fk; Type: FK CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY writers
    ADD CONSTRAINT writers_movie_movieid_fk FOREIGN KEY (movieid) REFERENCES movie(movieid);


--
-- Name: writers_person_personid_fk; Type: FK CONSTRAINT; Schema: public; Owner: rush
--

ALTER TABLE ONLY writers
    ADD CONSTRAINT writers_person_personid_fk FOREIGN KEY (writers) REFERENCES person(personid);


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

