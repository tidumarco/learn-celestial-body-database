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
-- Name: alien_races; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien_races (
    name character varying(30) NOT NULL,
    alien_races_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.alien_races OWNER TO freecodecamp;

--
-- Name: alien_races_race_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_races_race_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_races_race_id_seq OWNER TO freecodecamp;

--
-- Name: alien_races_race_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_races_race_id_seq OWNED BY public.alien_races.alien_races_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    age_in_millions_of_years integer,
    mass numeric,
    description text,
    has_life boolean NOT NULL,
    galaxy_id integer NOT NULL
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
    name character varying(30),
    age_in_millions_of_years integer,
    mass numeric,
    description text,
    has_life boolean NOT NULL,
    planet_id integer,
    moon_id integer NOT NULL
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
    name character varying(30),
    age_in_millions_of_years integer,
    mass numeric,
    description text,
    has_life boolean NOT NULL,
    star_id integer,
    planet_id integer NOT NULL
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
    name character varying(30),
    age_in_millions_of_years integer,
    mass numeric,
    description text,
    has_life boolean NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL
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
-- Name: alien_races alien_races_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_races ALTER COLUMN alien_races_id SET DEFAULT nextval('public.alien_races_race_id_seq'::regclass);


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
-- Data for Name: alien_races; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien_races VALUES ('Zenae', 1, NULL);
INSERT INTO public.alien_races VALUES ('Taal', 2, NULL);
INSERT INTO public.alien_races VALUES ('Naga', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 10, 110000, 'Disc shape', true, 1);
INSERT INTO public.galaxy VALUES ('Corvus', 20, 140000, 'Disc shape', true, 2);
INSERT INTO public.galaxy VALUES ('Centaurus', 20, 140000, 'Disc shape', true, 3);
INSERT INTO public.galaxy VALUES ('Coma Berenices', 20, 140000, 'Disc shape', true, 4);
INSERT INTO public.galaxy VALUES ('Ursa Major', 20, 140000, 'Disc shape', true, 5);
INSERT INTO public.galaxy VALUES ('Virgo', 20, 140000, 'Disc shape', true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 23423, 23, 'Luna', true, 1, 1);
INSERT INTO public.moon VALUES ('Ganimede', 353, 35, 'Jupiter moon', true, 1, 2);
INSERT INTO public.moon VALUES ('Io', 353, 35, 'Jupiter moon', true, 1, 3);
INSERT INTO public.moon VALUES ('Europa', 353, 35, 'Jupiter moon', true, 1, 4);
INSERT INTO public.moon VALUES ('Callisto', 353, 35, 'Jupiter moon', true, 1, 5);
INSERT INTO public.moon VALUES ('Adrastea', 353, 35, 'Jupiter moon', true, 1, 6);
INSERT INTO public.moon VALUES ('Aitne', 353, 35, 'Jupiter moon', true, 1, 7);
INSERT INTO public.moon VALUES ('Amalthea', 353, 35, 'Jupiter moon', true, 1, 8);
INSERT INTO public.moon VALUES ('Ananke', 353, 35, 'Jupiter moon', true, 1, 9);
INSERT INTO public.moon VALUES ('Aoede', 353, 35, 'Jupiter moon', true, 1, 10);
INSERT INTO public.moon VALUES ('Arche', 353, 35, 'Jupiter moon', true, 1, 11);
INSERT INTO public.moon VALUES ('Autonoe', 353, 35, 'Jupiter moon', true, 1, 12);
INSERT INTO public.moon VALUES ('Carme', 353, 35, 'Jupiter moon', true, 1, 13);
INSERT INTO public.moon VALUES ('Carpo', 353, 35, 'Jupiter moon', true, 1, 14);
INSERT INTO public.moon VALUES ('Dia', 353, 35, 'Jupiter moon', true, 1, 15);
INSERT INTO public.moon VALUES ('Chaldene', 353, 35, 'Jupiter moon', true, 1, 16);
INSERT INTO public.moon VALUES ('Cyllene', 353, 35, 'Jupiter moon', true, 1, 17);
INSERT INTO public.moon VALUES ('Eirene', 353, 35, 'Jupiter moon', true, 1, 18);
INSERT INTO public.moon VALUES ('Elara', 353, 35, 'Jupiter moon', true, 1, 19);
INSERT INTO public.moon VALUES ('Erinome', 353, 35, 'Jupiter moon', true, 1, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Terra', 5, 345, 'Home', true, 1, 1);
INSERT INTO public.planet VALUES ('Jupiter', 35, 636, 'Giove', true, 1, 2);
INSERT INTO public.planet VALUES ('Mars', 35, 636, 'Giove', true, 1, 3);
INSERT INTO public.planet VALUES ('Mercury', 353, 35, 'Solar System', true, 1, 4);
INSERT INTO public.planet VALUES ('Venus', 353, 35, 'Solar System', true, 1, 5);
INSERT INTO public.planet VALUES ('Saturn', 353, 35, 'Solar System', true, 1, 6);
INSERT INTO public.planet VALUES ('Uran', 353, 35, 'Solar System', true, 1, 7);
INSERT INTO public.planet VALUES ('Neptune', 353, 35, 'Solar System', true, 1, 8);
INSERT INTO public.planet VALUES ('Pluto', 353, 35, 'Solar System', true, 1, 9);
INSERT INTO public.planet VALUES ('47 Ursae Majoris b', 353, 35, 'Exoplanet', true, 1, 10);
INSERT INTO public.planet VALUES ('18 Delphini b', 353, 35, 'Exoplanet', true, 1, 11);
INSERT INTO public.planet VALUES ('Kepler-186f', 353, 35, 'Exoplanet', true, 1, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('SIRIO A', 234, 3456, 'STAR A', true, 1, 1);
INSERT INTO public.star VALUES ('Sol', 454, 3646, 'Sun', false, 1, 2);
INSERT INTO public.star VALUES ('Sirio B', 353, 353, 'Star b', false, 1, 3);
INSERT INTO public.star VALUES ('Proxima Centauri', 353, 353, 'Close star', false, 1, 4);
INSERT INTO public.star VALUES ('Trappist-1', 353, 353, 'Close star', false, 1, 5);
INSERT INTO public.star VALUES ('HR-8799', 353, 353, 'Close star', false, 1, 6);


--
-- Name: alien_races_race_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_races_race_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: alien_races alien_races_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_races
    ADD CONSTRAINT alien_races_pkey PRIMARY KEY (alien_races_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: alien_races race_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_races
    ADD CONSTRAINT race_id UNIQUE (alien_races_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: alien_races alien_races_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien_races
    ADD CONSTRAINT alien_races_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

