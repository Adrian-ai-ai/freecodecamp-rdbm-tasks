--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    mass_in_solar_masses numeric
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    type character varying(35),
    description text,
    blackhole_id integer NOT NULL
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
    moon_id integer NOT NULL,
    name character varying(30),
    is_regular boolean,
    revolution_in_days integer,
    planet_id integer NOT NULL
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
    planet_id integer NOT NULL,
    name character varying(30),
    planet_size_in_kms integer,
    has_life boolean,
    star_id integer NOT NULL
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
    star_id integer NOT NULL,
    name character varying(30),
    type text,
    core_temp_in_million_degree_celsius integer,
    galaxy_id integer NOT NULL
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'sagittarius-a', 'supermassive blackhole', 4.3);
INSERT INTO public.blackhole VALUES (2, 'messier 87', 'supermassive blackhole', 7.2);
INSERT INTO public.blackhole VALUES (3, 'p2', 'supermassive blackhole', 140.5);
INSERT INTO public.blackhole VALUES (4, 'm-104', 'supermassive blackhole', 1);
INSERT INTO public.blackhole VALUES (5, 'lmc x-1', 'stellar mass blackhole', 11);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'barred spiral galaxy', 'the milky way is our home galaxy containing our solar ayatem.The Milky Way contains hundreds of billions of stars and is about 100,000 light-years in diameter.', 1);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 'spiral galaxy', 'The Andromeda Galaxy is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is about 220,000 light-years in diameter and contains approximately one trillion stars.', 2);
INSERT INTO public.galaxy VALUES (3, 'triangulum', 'spiral galaxy', 'The Triangulum Galaxy is the third-largest member of the Local Group of galaxies, which includes the Milky Way and Andromeda. It has a diameter of about 60,000 light-years and contains numerous H II regions where new stars are forming.', 3);
INSERT INTO public.galaxy VALUES (4, 'sombrero', 'unbarred spiral galaxy', 'The Sombrero Galaxy is known for its bright nucleus and the large, prominent dust lane in its inclined disk, giving it the appearance of a sombrero hat. It is about 31 million light-years away from Earth and has a diameter of approximately 50,000 light-years.', 3);
INSERT INTO public.galaxy VALUES (5, 'whirlpool', 'spiral galaxy', ' The Whirlpool Galaxy is famous for its well-defined spiral arms and is interacting with a smaller galaxy, NGC 5195. This interaction is thought to be the cause of its prominent spiral structure. It is located about 23 million light-years away from Earth.', 3);
INSERT INTO public.galaxy VALUES (6, 'messier 87', 'elliptical galaxy', 'Messier 87 is a giant elliptical galaxy in the Virgo Cluster. It is known for containing a supermassive black hole at its center, which was the subject of the first-ever black hole image captured by the Event Horizon Telescope. M87 is approximately 53 million light-years away from Earth and has a diameter of about 120,000 light-years.', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'ganymede', true, 7, 5);
INSERT INTO public.moon VALUES (2, 'titan', true, 15, 5);
INSERT INTO public.moon VALUES (3, 'callisto', true, 2, 5);
INSERT INTO public.moon VALUES (4, 'europa', true, 4, 5);
INSERT INTO public.moon VALUES (5, 'lo', true, 2, 5);
INSERT INTO public.moon VALUES (6, 'triton', false, 5, 7);
INSERT INTO public.moon VALUES (7, 'rhea', true, 5, 7);
INSERT INTO public.moon VALUES (8, 'lapetus', true, 79, 8);
INSERT INTO public.moon VALUES (9, 'titania', true, 9, 8);
INSERT INTO public.moon VALUES (10, 'oberon', true, 13, 8);
INSERT INTO public.moon VALUES (11, 'umbriel', true, 4, 8);
INSERT INTO public.moon VALUES (12, 'ariel', true, 3, 8);
INSERT INTO public.moon VALUES (13, 'dione', true, 3, 8);
INSERT INTO public.moon VALUES (14, 'enceladus', true, 1, 8);
INSERT INTO public.moon VALUES (15, 'miranda', true, 1, 8);
INSERT INTO public.moon VALUES (16, 'vso', true, 3, 8);
INSERT INTO public.moon VALUES (17, 'phobos', true, 0, 8);
INSERT INTO public.moon VALUES (18, 'deimos', true, 1, 8);
INSERT INTO public.moon VALUES (19, 'mimas', true, 1, 8);
INSERT INTO public.moon VALUES (20, 'hyperion', false, 21, 8);
INSERT INTO public.moon VALUES (21, 'himalia', false, 251, 8);
INSERT INTO public.moon VALUES (22, 'phoebe', false, 550, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 4880, false, 6);
INSERT INTO public.planet VALUES (2, 'venus', 12104, false, 6);
INSERT INTO public.planet VALUES (3, 'earth', 12742, false, 6);
INSERT INTO public.planet VALUES (4, 'mars', 6779, false, 6);
INSERT INTO public.planet VALUES (5, 'jupiter', 139820, false, 6);
INSERT INTO public.planet VALUES (6, 'saturn', 116460, false, 6);
INSERT INTO public.planet VALUES (7, 'neptune', 49244, false, 6);
INSERT INTO public.planet VALUES (8, 'pluto', 2377, false, 6);
INSERT INTO public.planet VALUES (9, 'eris', 2326, false, 6);
INSERT INTO public.planet VALUES (10, 'makemake', 1434, false, 6);
INSERT INTO public.planet VALUES (11, 'haumea', 2000, false, 6);
INSERT INTO public.planet VALUES (12, 'uranus', 50724, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'proxima-centauri ', 'm-type', 6, 1);
INSERT INTO public.star VALUES (2, 'alpha-centauri', 'g-type', 15, 1);
INSERT INTO public.star VALUES (3, 'sirius-a ', 'a-type', 25, 1);
INSERT INTO public.star VALUES (4, 'betelguese', 'red supergiant', 100, 1);
INSERT INTO public.star VALUES (5, 'rigel', 'blue supergiant', 100, 1);
INSERT INTO public.star VALUES (6, 'sol', 'g-type', 15, 1);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_blackhole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_blackhole_id_key UNIQUE (blackhole_id);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: galaxy galaxy_blackhole_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_blackhole_id_fkey FOREIGN KEY (blackhole_id) REFERENCES public.blackhole(blackhole_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

