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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2018, 'Final', 71, 329, 328, 4, 2);
INSERT INTO public.games VALUES (2018, 'Third Place', 72, 331, 330, 2, 0);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 73, 328, 330, 2, 1);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 74, 329, 331, 1, 0);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 75, 328, 332, 3, 2);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 76, 330, 333, 2, 0);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 77, 331, 334, 2, 1);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 78, 329, 335, 2, 0);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 79, 330, 336, 2, 1);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 80, 333, 337, 1, 0);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 81, 331, 338, 3, 2);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 82, 334, 339, 2, 0);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 83, 328, 340, 2, 1);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 84, 332, 341, 2, 1);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 85, 335, 342, 2, 1);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 86, 329, 343, 4, 3);
INSERT INTO public.games VALUES (2014, 'Final', 87, 344, 343, 1, 0);
INSERT INTO public.games VALUES (2014, 'Third Place', 88, 345, 334, 3, 0);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 89, 343, 345, 1, 0);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 90, 344, 334, 7, 1);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 91, 345, 346, 1, 0);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 92, 343, 331, 1, 0);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 93, 334, 336, 2, 1);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 94, 344, 329, 1, 0);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 95, 334, 347, 2, 1);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 96, 336, 335, 2, 0);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 97, 329, 348, 2, 0);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 98, 344, 349, 2, 1);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 99, 345, 339, 2, 1);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 100, 346, 350, 2, 1);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 101, 343, 337, 1, 0);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 102, 331, 351, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (328, 'Croatia');
INSERT INTO public.teams VALUES (329, 'France');
INSERT INTO public.teams VALUES (330, 'England');
INSERT INTO public.teams VALUES (331, 'Belgium');
INSERT INTO public.teams VALUES (332, 'Russia');
INSERT INTO public.teams VALUES (333, 'Sweden');
INSERT INTO public.teams VALUES (334, 'Brazil');
INSERT INTO public.teams VALUES (335, 'Uruguay');
INSERT INTO public.teams VALUES (336, 'Colombia');
INSERT INTO public.teams VALUES (337, 'Switzerland');
INSERT INTO public.teams VALUES (338, 'Japan');
INSERT INTO public.teams VALUES (339, 'Mexico');
INSERT INTO public.teams VALUES (340, 'Denmark');
INSERT INTO public.teams VALUES (341, 'Spain');
INSERT INTO public.teams VALUES (342, 'Portugal');
INSERT INTO public.teams VALUES (343, 'Argentina');
INSERT INTO public.teams VALUES (344, 'Germany');
INSERT INTO public.teams VALUES (345, 'Netherlands');
INSERT INTO public.teams VALUES (346, 'Costa Rica');
INSERT INTO public.teams VALUES (347, 'Chile');
INSERT INTO public.teams VALUES (348, 'Nigeria');
INSERT INTO public.teams VALUES (349, 'Algeria');
INSERT INTO public.teams VALUES (350, 'Greece');
INSERT INTO public.teams VALUES (351, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 102, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 351, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

