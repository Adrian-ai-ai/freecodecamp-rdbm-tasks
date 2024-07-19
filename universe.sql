--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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
-- Name: universe; Type: DATABASE; Schema: -; Owner: vso
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE universe OWNER TO vso;

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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: vso
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30),
    type character varying(50),
    mass_in_solar_masses integer
);


ALTER TABLE public.blackhole OWNER TO vso;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: vso
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNER TO vso;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vso
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: vso
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    type text,
    blackhole_id integer
);


ALTER TABLE public.galaxy OWNER TO vso;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: vso
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNER TO vso;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vso
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: vso
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    is_regular boolean,
    revolution_in_days integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO vso;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: vso
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.moon_moon_id_seq OWNER TO vso;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vso
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: vso
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    planet_size_in_kms integer,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO vso;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: vso
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.planet_planet_id_seq OWNER TO vso;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vso
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: vso
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    type character varying(60),
    diameter_in_kms integer,
    temperature_in_degrees_celsius integer,
    core_temperature_in_degrees_celsius integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO vso;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: vso
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.star_star_id_seq OWNER TO vso;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vso
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: vso
--

INSERT INTO public.blackhole VALUES (1, 'sagittarius-a', 'supermassive blackhole', 4);
INSERT INTO public.blackhole VALUES (2, 'p2', 'supermassive blackhole', 140);
INSERT INTO public.blackhole VALUES (3, 'messier 87', 'supermassive blackhole', 7);
INSERT INTO public.blackhole VALUES (4, 'm-104', 'supermassive blackhole', 1);
INSERT INTO public.blackhole VALUES (5, 'lmc x-1', 'stellar mass blackhole', 11);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: vso
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'the milky way is our home galaxy containing our solar ayatem.The Milky Way contains hundreds of billions of stars and is about 100,000 light-years in diameter.', 'barred spiral galaxy', NULL);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 'The Andromeda Galaxy is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is about 220,000 light-years in diameter and contains approximately one trillion stars.', 'spiral galaxy', NULL);
INSERT INTO public.galaxy VALUES (3, 'triangulum', 'The Triangulum Galaxy is the third-largest member of the Local Group of galaxies, which includes the Milky Way and Andromeda. It has a diameter of about 60,000 light-years and contains numerous H II regions where new stars are forming.', 'spiral ', NULL);
INSERT INTO public.galaxy VALUES (4, 'sombrero', 'The Sombrero Galaxy is known for its bright nucleus and the large, prominent dust lane in its inclined disk, giving it the appearance of a sombrero hat. It is about 31 million light-years away from Earth and has a diameter of approximately 50,000 light-years.', 'unbarred spiral', NULL);
INSERT INTO public.galaxy VALUES (5, 'whirlpool', 'The Whirlpool Galaxy is famous for its well-defined spiral arms and is interacting with a smaller galaxy, NGC 5195. This interaction is thought to be the cause of its prominent spiral structure. It is located about 23 million light-years away from Earth.', 'spiral', NULL);
INSERT INTO public.galaxy VALUES (6, 'messier 87', 'Messier 87 is a giant elliptical galaxy in the Virgo Cluster. It is known for containing a supermassive black hole at its center, which was the subject of the first-ever black hole image captured by the Event Horizon Telescope. M87 is approximately 53 million light-years away from Earth and has a diameter of about 120,000 light-years.', 'elliptical', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: vso
--

INSERT INTO public.moon VALUES (1, 'ganymede', true, 7, NULL);
INSERT INTO public.moon VALUES (2, 'titan', true, 15, NULL);
INSERT INTO public.moon VALUES (3, 'callisto', true, 2, NULL);
INSERT INTO public.moon VALUES (4, 'europa', true, 4, NULL);
INSERT INTO public.moon VALUES (5, 'lo', true, 2, NULL);
INSERT INTO public.moon VALUES (6, 'triton', false, 5, NULL);
INSERT INTO public.moon VALUES (7, 'rhea', true, 5, NULL);
INSERT INTO public.moon VALUES (8, 'lapetus', true, 79, NULL);
INSERT INTO public.moon VALUES (9, 'titania', true, 9, NULL);
INSERT INTO public.moon VALUES (10, 'oberon', true, 13, NULL);
INSERT INTO public.moon VALUES (11, 'umbriel', true, 4, NULL);
INSERT INTO public.moon VALUES (12, 'ariel', true, 3, NULL);
INSERT INTO public.moon VALUES (13, 'dione', true, 3, NULL);
INSERT INTO public.moon VALUES (14, 'enceladus', true, 1, NULL);
INSERT INTO public.moon VALUES (15, 'miranda', true, 1, NULL);
INSERT INTO public.moon VALUES (16, 'ariel', true, 3, NULL);
INSERT INTO public.moon VALUES (17, 'phobos', true, 0, NULL);
INSERT INTO public.moon VALUES (18, 'deimos', true, 1, NULL);
INSERT INTO public.moon VALUES (19, 'mimas', true, 1, NULL);
INSERT INTO public.moon VALUES (20, 'hyperion', false, 21, NULL);
INSERT INTO public.moon VALUES (21, 'himalia', false, 251, NULL);
INSERT INTO public.moon VALUES (22, 'phoebe', false, 550, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: vso
--

INSERT INTO public.planet VALUES (1, 'mercury', 4880, false, NULL);
INSERT INTO public.planet VALUES (2, 'venus', 12104, false, NULL);
INSERT INTO public.planet VALUES (3, 'earth', 12742, true, NULL);
INSERT INTO public.planet VALUES (4, 'mars', 6779, false, NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', 139820, false, NULL);
INSERT INTO public.planet VALUES (6, 'saturn', 116460, false, NULL);
INSERT INTO public.planet VALUES (7, 'uranus', 50724, false, NULL);
INSERT INTO public.planet VALUES (8, 'neptune', 49244, false, NULL);
INSERT INTO public.planet VALUES (9, 'pluto', 2377, false, NULL);
INSERT INTO public.planet VALUES (10, 'eris', 2326, false, NULL);
INSERT INTO public.planet VALUES (11, 'makemake', 1434, false, NULL);
INSERT INTO public.planet VALUES (12, 'haumea', 2000, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: vso
--

INSERT INTO public.star VALUES (1, 'proxima-centauri', 'm-type', 200000, 3042, 6, NULL);
INSERT INTO public.star VALUES (2, 'alpha-centauri', 'g-type', 1200000, 5790, 15, NULL);
INSERT INTO public.star VALUES (3, 'sirius-a', 'a-type', 2000000, 9940, 25, NULL);
INSERT INTO public.star VALUES (4, 'betelguese', 'red supergiant', 12000000, 3500, 100, NULL);
INSERT INTO public.star VALUES (5, 'rigel', 'blue supergiant', 70000000, 11000, 100, NULL);
INSERT INTO public.star VALUES (6, 'sol', 'g-type', 1391000, 5500, 15000000, NULL);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vso
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vso
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vso
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vso
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vso
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_blackhole_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_blackhole_id_fkey FOREIGN KEY (blackhole_id) REFERENCES public.blackhole(blackhole_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vso
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

