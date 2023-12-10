--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (232, 2018, 'Final', 606, 607, 4, 2);
INSERT INTO public.games VALUES (233, 2018, 'Third Place', 608, 609, 2, 0);
INSERT INTO public.games VALUES (234, 2018, 'Semi-Final', 607, 609, 2, 1);
INSERT INTO public.games VALUES (235, 2018, 'Semi-Final', 606, 608, 1, 0);
INSERT INTO public.games VALUES (236, 2018, 'Quarter-Final', 607, 610, 3, 2);
INSERT INTO public.games VALUES (237, 2018, 'Quarter-Final', 609, 611, 2, 0);
INSERT INTO public.games VALUES (238, 2018, 'Quarter-Final', 608, 612, 2, 1);
INSERT INTO public.games VALUES (239, 2018, 'Quarter-Final', 606, 613, 2, 0);
INSERT INTO public.games VALUES (240, 2018, 'Eighth-Final', 609, 614, 2, 1);
INSERT INTO public.games VALUES (241, 2018, 'Eighth-Final', 611, 615, 1, 0);
INSERT INTO public.games VALUES (242, 2018, 'Eighth-Final', 608, 616, 3, 2);
INSERT INTO public.games VALUES (243, 2018, 'Eighth-Final', 612, 617, 2, 0);
INSERT INTO public.games VALUES (244, 2018, 'Eighth-Final', 607, 618, 2, 1);
INSERT INTO public.games VALUES (245, 2018, 'Eighth-Final', 610, 619, 2, 1);
INSERT INTO public.games VALUES (246, 2018, 'Eighth-Final', 613, 620, 2, 1);
INSERT INTO public.games VALUES (247, 2018, 'Eighth-Final', 606, 621, 4, 3);
INSERT INTO public.games VALUES (248, 2014, 'Final', 622, 621, 1, 0);
INSERT INTO public.games VALUES (249, 2014, 'Third Place', 623, 612, 3, 0);
INSERT INTO public.games VALUES (250, 2014, 'Semi-Final', 621, 623, 1, 0);
INSERT INTO public.games VALUES (251, 2014, 'Semi-Final', 622, 612, 7, 1);
INSERT INTO public.games VALUES (252, 2014, 'Quarter-Final', 623, 624, 1, 0);
INSERT INTO public.games VALUES (253, 2014, 'Quarter-Final', 621, 608, 1, 0);
INSERT INTO public.games VALUES (254, 2014, 'Quarter-Final', 612, 614, 2, 1);
INSERT INTO public.games VALUES (255, 2014, 'Quarter-Final', 622, 606, 1, 0);
INSERT INTO public.games VALUES (256, 2014, 'Eighth-Final', 612, 625, 2, 1);
INSERT INTO public.games VALUES (257, 2014, 'Eighth-Final', 614, 613, 2, 0);
INSERT INTO public.games VALUES (258, 2014, 'Eighth-Final', 606, 626, 2, 0);
INSERT INTO public.games VALUES (259, 2014, 'Eighth-Final', 622, 627, 2, 1);
INSERT INTO public.games VALUES (260, 2014, 'Eighth-Final', 623, 617, 2, 1);
INSERT INTO public.games VALUES (261, 2014, 'Eighth-Final', 624, 628, 2, 1);
INSERT INTO public.games VALUES (262, 2014, 'Eighth-Final', 621, 615, 1, 0);
INSERT INTO public.games VALUES (263, 2014, 'Eighth-Final', 608, 629, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (606, 'France');
INSERT INTO public.teams VALUES (607, 'Croatia');
INSERT INTO public.teams VALUES (608, 'Belgium');
INSERT INTO public.teams VALUES (609, 'England');
INSERT INTO public.teams VALUES (610, 'Russia');
INSERT INTO public.teams VALUES (611, 'Sweden');
INSERT INTO public.teams VALUES (612, 'Brazil');
INSERT INTO public.teams VALUES (613, 'Uruguay');
INSERT INTO public.teams VALUES (614, 'Colombia');
INSERT INTO public.teams VALUES (615, 'Switzerland');
INSERT INTO public.teams VALUES (616, 'Japan');
INSERT INTO public.teams VALUES (617, 'Mexico');
INSERT INTO public.teams VALUES (618, 'Denmark');
INSERT INTO public.teams VALUES (619, 'Spain');
INSERT INTO public.teams VALUES (620, 'Portugal');
INSERT INTO public.teams VALUES (621, 'Argentina');
INSERT INTO public.teams VALUES (622, 'Germany');
INSERT INTO public.teams VALUES (623, 'Netherlands');
INSERT INTO public.teams VALUES (624, 'Costa Rica');
INSERT INTO public.teams VALUES (625, 'Chile');
INSERT INTO public.teams VALUES (626, 'Nigeria');
INSERT INTO public.teams VALUES (627, 'Algeria');
INSERT INTO public.teams VALUES (628, 'Greece');
INSERT INTO public.teams VALUES (629, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 263, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 629, true);


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

