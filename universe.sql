--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constellation text,
    messier_nr integer,
    nr_of_stars_in_b integer,
    diameter_in_kpc numeric(6,2)
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
    name character varying(30) NOT NULL,
    discoverer text,
    discovery_year integer,
    radius_km integer,
    orbital_speed_km_per_s numeric(6,3),
    planet_id integer
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
    name character varying(30) NOT NULL,
    type text,
    distance_from_sun_au integer,
    radius_km integer,
    orbital_period_d numeric(8,3),
    star_id integer
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
    name character varying(30) NOT NULL,
    constellation text,
    distance_from_sun_ly integer,
    nr_of_planets integer,
    mass numeric(6,3),
    galaxy_id integer
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
-- Name: table5; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table5 (
    table5_id integer NOT NULL,
    bool_1 boolean,
    bool_2 boolean,
    name character varying(30) NOT NULL
);


ALTER TABLE public.table5 OWNER TO freecodecamp;

--
-- Name: table5_table5_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table5_table5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table5_table5_id_seq OWNER TO freecodecamp;

--
-- Name: table5_table5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table5_table5_id_seq OWNED BY public.table5.table5_id;


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
-- Name: table5 table5_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5 ALTER COLUMN table5_id SET DEFAULT nextval('public.table5_table5_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Sagittarius', 0, 250, 26.80);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Andromeda', 31, 1000, 46.56);
INSERT INTO public.galaxy VALUES (3, 'LMC', 'Dorado', 106, 20, 9.86);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 'Ursa Major', 82, 100, 12.52);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 'Ursa Major', 101, 1000, 77.31);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'Virgo', 104, 300, 32.32);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', '-', 0, 1738, 1.022, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Hall', 1877, 11, 2.138, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Hall', 1877, 6, 1.351, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Galileo', 1610, 2, 17.334, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Galileo', 1610, 2, 13.700, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Galileo', 1610, 3, 10.900, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Galileo', 1610, 2, 8.200, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'Bernard', 1892, 84, 26.470, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 'Perrine', 1904, 70, 3.340, 5);
INSERT INTO public.moon VALUES (10, 'Elara', 'Perrine', 1905, 40, 3.290, 5);
INSERT INTO public.moon VALUES (11, 'Pasiphae', 'Melotte', 1908, 29, 6.700, 5);
INSERT INTO public.moon VALUES (12, 'Sinope', 'Nicholson', 1914, 18, 2.258, 5);
INSERT INTO public.moon VALUES (13, 'Lysithea', 'Nicholson', 1938, 21, 3.290, 5);
INSERT INTO public.moon VALUES (14, 'Carme', 'Nicholson', 1938, 23, 2.281, 5);
INSERT INTO public.moon VALUES (15, 'Ananke', 'Nicholson', 1951, 15, -2.440, 5);
INSERT INTO public.moon VALUES (16, 'Leda', 'Kowal', 1974, 11, 0.000, 5);
INSERT INTO public.moon VALUES (17, 'Mimas', 'Herschel', 1789, 198, 14.280, 6);
INSERT INTO public.moon VALUES (18, 'Ariel', 'Lassell', 1851, 579, 0.000, 7);
INSERT INTO public.moon VALUES (19, 'Triton', 'Lassell', 1846, 1353, 4.390, 8);
INSERT INTO public.moon VALUES (20, 'Charon', 'Christy', 1978, 606, 0.000, 10);
INSERT INTO public.moon VALUES (21, 'Hiiaka', 'Brown et al.', 2005, 160, 0.000, 11);
INSERT INTO public.moon VALUES (22, 'S2015', 'Parker et al.', 2015, 88, 0.000, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'terrestrial planet', 0, 2441, 87.969, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'terrestrial planet', 1, 6052, 224.701, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'terrestrial planet', 1, 6378, 365.256, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'terrestrial planet', 2, 3396, 686.971, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'gas giant', 5, 71492, 4332.590, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'gas giant', 10, 60268, 10759.220, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'ice giant', 20, 25559, 30688.500, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'ice giant', 30, 24764, 60182.000, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 'dwarf planet', 3, 470, 4.599, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 'dwarf planet', 39, 1188, 247.900, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 'dwarf planet', 43, 772, 283.800, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 'dwarf planet', 46, 715, 306.200, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'NA', 0, 8, 1.000, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Centaurus', 4, 2, 0.122, 1);
INSERT INTO public.star VALUES (3, 'Bernards Star', 'Ophiuchus', 6, 4, 0.144, 1);
INSERT INTO public.star VALUES (4, 'Luhman 16', 'Vela', 7, 0, 0.032, 1);
INSERT INTO public.star VALUES (5, 'Wolf 359', 'Leo', 8, 1, 0.090, 1);
INSERT INTO public.star VALUES (6, 'Lalande 21185', 'Ursa Major', 8, 2, 0.390, 1);


--
-- Data for Name: table5; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table5 VALUES (1, true, false, 'name1');
INSERT INTO public.table5 VALUES (2, true, false, 'name2');
INSERT INTO public.table5 VALUES (3, true, false, 'name3');


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: table5_table5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table5_table5_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: table5 table5_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_name_key UNIQUE (name);


--
-- Name: table5 table5_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_pkey PRIMARY KEY (table5_id);


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

