--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(6) NOT NULL,
    galaxy_id integer NOT NULL,
    table_id integer,
    constellation character varying(20),
    galaxy_names character varying(30),
    images boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20),
    moon_id integer NOT NULL,
    distance_from_earth numeric(3,1) NOT NULL,
    age integer,
    has_life boolean,
    table_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(12),
    planet_id integer NOT NULL,
    planet_names text NOT NULL,
    table_id integer,
    description character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(6) NOT NULL,
    star_id integer NOT NULL,
    table_id integer,
    hip_number integer,
    description text,
    images boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: world; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.world (
    name character varying(3),
    world_id integer NOT NULL,
    age integer,
    has_life boolean,
    table_id integer,
    life integer NOT NULL
);


ALTER TABLE public.world OWNER TO freecodecamp;

--
-- Name: world_world_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.world_world_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.world_world_id_seq OWNER TO freecodecamp;

--
-- Name: world_world_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.world_world_id_seq OWNED BY public.world.world_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: world world_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world ALTER COLUMN world_id SET DEFAULT nextval('public.world_world_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('andro', 1, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('corvus', 2, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('bodes', 3, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('cigar', 4, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('comet', 5, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('condor', 6, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, 1, 1.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 2, 2.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 3, 3.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 4, 4.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 5, 5.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 6, 6.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 7, 7.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 8, 8.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 9, 9.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 10, 10.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 11, 11.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 12, 12.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 13, 13.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 14, 14.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 15, 15.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 16, 16.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 17, 17.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 18, 18.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 19, 19.0, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, 20, 20.0, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, 2, 'mercur', NULL, NULL);
INSERT INTO public.planet VALUES (NULL, 3, 'venus', NULL, NULL);
INSERT INTO public.planet VALUES (NULL, 4, 'earth', NULL, NULL);
INSERT INTO public.planet VALUES (NULL, 5, 'mars', NULL, NULL);
INSERT INTO public.planet VALUES (NULL, 6, 'jupi', NULL, NULL);
INSERT INTO public.planet VALUES (NULL, 7, 'saturn', NULL, NULL);
INSERT INTO public.planet VALUES (NULL, 8, 'uranus', NULL, NULL);
INSERT INTO public.planet VALUES (NULL, 9, 'neptun', NULL, NULL);
INSERT INTO public.planet VALUES (NULL, 10, 'ceres', NULL, NULL);
INSERT INTO public.planet VALUES (NULL, 11, 'pluto', NULL, NULL);
INSERT INTO public.planet VALUES (NULL, 12, 'eris', NULL, NULL);
INSERT INTO public.planet VALUES (NULL, 13, 'haumea', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 8, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('castor', 9, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('pollux', 10, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('orion', 11, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('sirius', 12, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('cetus', 13, NULL, NULL, NULL, NULL);


--
-- Data for Name: world; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.world VALUES (NULL, 4, NULL, NULL, NULL, 39);
INSERT INTO public.world VALUES (NULL, 5, NULL, NULL, NULL, 35);
INSERT INTO public.world VALUES (NULL, 6, NULL, NULL, NULL, 37);
INSERT INTO public.world VALUES (NULL, 7, NULL, NULL, NULL, 40);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: world_world_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.world_world_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_table_id_key UNIQUE (table_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_table_id_key UNIQUE (table_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_names_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_names_key UNIQUE (planet_names);


--
-- Name: planet planet_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_table_id_key UNIQUE (table_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_table_id_key UNIQUE (table_id);


--
-- Name: world world_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world
    ADD CONSTRAINT world_pkey PRIMARY KEY (world_id);


--
-- Name: world world_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world
    ADD CONSTRAINT world_table_id_key UNIQUE (table_id);


--
-- Name: star add; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT add FOREIGN KEY (table_id) REFERENCES public.galaxy(table_id);


--
-- Name: moon moon_table_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_table_id_fkey FOREIGN KEY (table_id) REFERENCES public.planet(table_id);


--
-- Name: planet planet_table_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_table_id_fkey FOREIGN KEY (table_id) REFERENCES public.star(table_id);


--
-- Name: star star_table_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_table_id_fkey FOREIGN KEY (table_id) REFERENCES public.galaxy(table_id);


--
-- PostgreSQL database dump complete
--