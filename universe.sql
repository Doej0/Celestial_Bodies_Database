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
-- Name: age_in_mill_of_years; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.age_in_mill_of_years (
    name character varying(40) NOT NULL,
    moon_id integer,
    planet_id integer,
    galaxy_id integer,
    star_id integer,
    age_in_mill_of_years_id integer NOT NULL,
    age_in_millions_of_years numeric(5,2)
);


ALTER TABLE public.age_in_mill_of_years OWNER TO freecodecamp;

--
-- Name: distance_from_earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.distance_from_earth (
    name character varying(40) NOT NULL,
    moon_id integer,
    planet_id integer,
    galaxy_id integer,
    star_id integer,
    distance_from_earth_id integer NOT NULL,
    distance_from_earth integer
);


ALTER TABLE public.distance_from_earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_types character varying(50),
    distance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(40) NOT NULL,
    moon_id integer NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    planet_types character varying(50),
    is_spherical boolean,
    description text,
    age_in_millions_of_years numeric(5,2),
    distance_from_earth integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    description text,
    distance_from_earth integer,
    surface_temp_k integer,
    galaxy_id integer,
    age_in_millons_of_years integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: age_in_mill_of_years; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.age_in_mill_of_years VALUES ('Mercury', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.age_in_mill_of_years VALUES ('Venus', NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.age_in_mill_of_years VALUES ('Earth', NULL, NULL, NULL, NULL, 3, NULL);


--
-- Data for Name: distance_from_earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.distance_from_earth VALUES ('Mercury', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.distance_from_earth VALUES ('Venus', NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.distance_from_earth VALUES ('Earth', NULL, NULL, NULL, NULL, 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 1, NULL, NULL, 'Spiral', NULL);
INSERT INTO public.galaxy VALUES ('Canis Major Dwarf', 2, NULL, NULL, 'Irregular', NULL);
INSERT INTO public.galaxy VALUES ('Cygnus A', 3, NULL, NULL, 'Elliptical', NULL);
INSERT INTO public.galaxy VALUES ('Maffei I', 4, NULL, NULL, 'Elliptical', NULL);
INSERT INTO public.galaxy VALUES ('Maffei II', 5, NULL, NULL, 'Spiral', NULL);
INSERT INTO public.galaxy VALUES ('Magellanic Clouds', 6, NULL, NULL, 'Irregular', NULL);
INSERT INTO public.galaxy VALUES ('Milky Way', 7, NULL, NULL, 'Spiral', NULL);
INSERT INTO public.galaxy VALUES ('Virgo A', 8, NULL, NULL, 'Elliptical', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('The Moon', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Deimos', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Phobos', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Europa', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Ganymede', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Enceladus', 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Titan', 9, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Ariel', 10, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Bianca', 11, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Cupid', 12, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Desdemona', 13, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Juliet', 14, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Oberon', 15, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Ophelia', 16, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Larissa', 17, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Proteus', 18, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Triton', 19, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Charon', 20, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Hydra', 21, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Kerberos', 22, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Nix', 23, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Styx', 24, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Venus', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Earth', 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Mars', 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Jupiter', 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Saturn', 6, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Uranus', 7, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Neptune', 8, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Pluto', 9, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Ceres', 10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Makemake', 11, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Haumea', 12, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Eris', 13, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sirius', 1, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.star VALUES ('Mimosa', 2, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.star VALUES ('Alpheratz', 3, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES ('Tau Canis Majoris', 4, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.star VALUES ('R71', 5, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.star VALUES ('Spica', 6, NULL, NULL, NULL, 7, NULL);


--
-- Name: age_in_mill_of_years age_in_mill_of_years_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_in_mill_of_years
    ADD CONSTRAINT age_in_mill_of_years_name_key UNIQUE (name);


--
-- Name: age_in_mill_of_years age_in_mill_of_years_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_in_mill_of_years
    ADD CONSTRAINT age_in_mill_of_years_pkey PRIMARY KEY (age_in_mill_of_years_id);


--
-- Name: distance_from_earth distance_from_earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_name_key UNIQUE (name);


--
-- Name: distance_from_earth distance_from_earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_pkey PRIMARY KEY (distance_from_earth_id);


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
-- Name: age_in_mill_of_years age_in_mill_of_years_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_in_mill_of_years
    ADD CONSTRAINT age_in_mill_of_years_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: age_in_mill_of_years age_in_mill_of_years_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_in_mill_of_years
    ADD CONSTRAINT age_in_mill_of_years_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: age_in_mill_of_years age_in_mill_of_years_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_in_mill_of_years
    ADD CONSTRAINT age_in_mill_of_years_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: age_in_mill_of_years age_in_mill_of_years_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_in_mill_of_years
    ADD CONSTRAINT age_in_mill_of_years_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: distance_from_earth distance_from_earth_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: distance_from_earth distance_from_earth_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: distance_from_earth distance_from_earth_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: distance_from_earth distance_from_earth_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

