--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- Name: card; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card (
    id integer NOT NULL,
    set character varying(10),
    number integer,
    amount integer,
    white boolean,
    blue boolean,
    black boolean,
    red boolean,
    green boolean,
    devoid boolean,
    name character varying(100),
    type character varying(50),
    rarity character varying(50)
);


ALTER TABLE public.card OWNER TO postgres;

--
-- Name: card_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.card_id_seq OWNER TO postgres;

--
-- Name: card_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.card_id_seq OWNED BY public.card.id;


--
-- Name: card id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card ALTER COLUMN id SET DEFAULT nextval('public.card_id_seq'::regclass);


--
-- Data for Name: card; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.card (id, set, number, amount, white, blue, black, red, green, devoid, name, type, rarity) FROM stdin;
50	IN1	50	0	\N	t	\N	\N	\N	\N	Elgaud Shieldmate	Creature	C
51	IN1	51	0	\N	t	\N	\N	\N	\N	Favorable Winds	Enchantment	U
52	IN1	52	0	\N	t	\N	\N	\N	\N	Fettergeist	Creature	U
53	IN1	53	0	\N	t	\N	\N	\N	\N	Fleeting Distraction	Instant	C
54	IN1	54	0	\N	t	\N	\N	\N	\N	Galvanic Alchemist	Creature	C
12	IN1	12	1	t	\N	\N	\N	\N	\N	Cloudshift	Instant	C
56	IN1	56	0	\N	t	\N	\N	\N	\N	Ghostform	Sorcery	C
57	IN1	57	0	\N	t	\N	\N	\N	\N	Ghostly Flicker	Instant	C
65	IN1	65	0	\N	t	\N	\N	\N	\N	Lunar Mystic	Creature	R
66	IN1	66	0	\N	t	\N	\N	\N	\N	Mass Appeal	Sorcery	U
67	IN1	67	0	\N	t	\N	\N	\N	\N	Mist Raven	Creature	C
68	IN1	68	0	\N	t	\N	\N	\N	\N	Misthollow Griffin	Creature	M
70	IN1	70	0	\N	t	\N	\N	\N	\N	Outwit	Instant	C
71	IN1	71	0	\N	t	\N	\N	\N	\N	Peel from Reality	Instant	C
72	IN1	72	0	\N	t	\N	\N	\N	\N	Rotcrown Ghoul	Creature	C
73	IN1	73	0	\N	t	\N	\N	\N	\N	Scrapskin Drake	Creature	C
80	IN1	80	2	\N	t	\N	\N	\N	\N	Tandem Lookout	Creature	U
29	IN1	29	1	t	\N	\N	\N	\N	\N	Moonlight Geist	Creature	C
1347	MAO	236	0	\N	\N	\N	\N	\N	\N	Pyromancer's Goggles	Lgd. Artifact	M
1349	MAO	238	1	\N	\N	\N	\N	\N	\N	Runed Servitor	Artifact Creature	U
1351	MAO	240	1	\N	\N	\N	\N	\N	\N	Sword of the Animist	Lgd. Artifact	R
1354	MAO	243	2	\N	\N	\N	\N	\N	\N	War Horn	Artifact	U
1355	MAO	244	1	\N	\N	\N	\N	\N	\N	Battlefield Forge	Land	R
1361	MAO	250	2	\N	\N	\N	\N	\N	\N	Rogue's Passage	Land	U
1364	MAO	253	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
1365	MAO	254	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
1370	MAO	259	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
1372	MAO	261	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
1374	MAO	263	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
1378	MAO	267	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
1382	MAO	271	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
2786	ZER	205	1	\N	\N	\N	\N	\N	\N	Springmantle Cleric	Creature	U
2788	ZER	207	1	\N	\N	\N	\N	\N	\N	Swarm Shambler	Creature	R
6	IN1	6	0	t	\N	\N	\N	\N	\N	Avacyn, Angel of Hope	Lgd. Creature	M
7	IN1	7	0	t	\N	\N	\N	\N	\N	Banishing Stroke	Instant	U
8	IN1	8	0	t	\N	\N	\N	\N	\N	Builder's Blessing	Enchantment	U
9	IN1	9	0	t	\N	\N	\N	\N	\N	Call to Serve	Enchantment	C
10	IN1	10	0	t	\N	\N	\N	\N	\N	Cathars' Crusade	Enchantment	R
11	IN1	11	2	t	\N	\N	\N	\N	\N	Cathedral Sanctifier	Creature	C
13	IN1	13	0	t	\N	\N	\N	\N	\N	Commander's Authority	Enchantment	U
14	IN1	14	0	t	\N	\N	\N	\N	\N	Cursebreak	Instant	C
15	IN1	15	0	t	\N	\N	\N	\N	\N	Defang	Enchantment	C
16	IN1	16	0	t	\N	\N	\N	\N	\N	Defy Death	Sorcery	U
17	IN1	17	0	t	\N	\N	\N	\N	\N	Devout Chaplain	Creature	U
18	IN1	18	0	t	\N	\N	\N	\N	\N	Divine Deflection	Instant	R
19	IN1	19	0	t	\N	\N	\N	\N	\N	Emancipation Angel	Creature	U
20	IN1	20	0	t	\N	\N	\N	\N	\N	Entreat the Angels	Sorcery	M
21	IN1	21	0	t	\N	\N	\N	\N	\N	Farbog Explorer	Creature	C
22	IN1	22	0	t	\N	\N	\N	\N	\N	Goldnight Commander	Creature	U
23	IN1	23	0	t	\N	\N	\N	\N	\N	Goldnight Redeemer	Creature	U
24	IN1	24	0	t	\N	\N	\N	\N	\N	Herald of War	Creature	R
25	IN1	25	0	t	\N	\N	\N	\N	\N	Holy Justiciar	Creature	U
26	IN1	26	0	t	\N	\N	\N	\N	\N	Leap of Faith	Instant	C
27	IN1	27	0	t	\N	\N	\N	\N	\N	Midnight Duelist	Creature	C
28	IN1	28	0	t	\N	\N	\N	\N	\N	Midvast Protector	Creature	C
63	IN1	63	1	\N	t	\N	\N	\N	\N	Latch Seeker	Creature	U
30	IN1	30	0	t	\N	\N	\N	\N	\N	Moorland Inquisitor	Creature	C
31	IN1	31	2	t	\N	\N	\N	\N	\N	Nearheath Pilgrim	Creature	U
32	IN1	32	0	t	\N	\N	\N	\N	\N	Restoration Angel	Creature	R
33	IN1	33	0	t	\N	\N	\N	\N	\N	Riders of Gavony	Creature	R
34	IN1	34	2	t	\N	\N	\N	\N	\N	Righteous Blow	Instant	C
35	IN1	35	0	t	\N	\N	\N	\N	\N	Seraph of Dawn	Creature	C
36	IN1	36	0	t	\N	\N	\N	\N	\N	Silverblade Paladin	Creature	R
37	IN1	37	0	t	\N	\N	\N	\N	\N	Spectral Gateguards	Creature	C
38	IN1	38	0	t	\N	\N	\N	\N	\N	Terminus	Sorcery	R
2791	ZER	210	5	\N	\N	\N	\N	\N	\N	Tajuru Snarecaster	Creature	C
39	IN1	39	0	t	\N	\N	\N	\N	\N	Thraben Valiant	Creature	C
40	IN1	40	0	t	\N	\N	\N	\N	\N	Voice of the Provinces	Creature	C
41	IN1	41	0	t	\N	\N	\N	\N	\N	Zealous Strike	Instant	C
42	IN1	42	0	\N	t	\N	\N	\N	\N	Alchemist's Apprentice	Creature	C
43	IN1	43	0	\N	t	\N	\N	\N	\N	Amass the Components	Sorcery	C
1	IN1	1	0	t	\N	\N	\N	\N	\N	Angel of Glory's Rise	Creature	R
2	IN1	2	0	t	\N	\N	\N	\N	\N	Angel of Jubilation	Creature	R
3	IN1	3	0	t	\N	\N	\N	\N	\N	Angel's Mercy	Instant	C
4	IN1	4	0	t	\N	\N	\N	\N	\N	Angelic Wall	Creature	C
5	IN1	5	0	t	\N	\N	\N	\N	\N	Archangel	Creature	U
44	IN1	44	0	\N	t	\N	\N	\N	\N	Arcane Melee	Enchantment	R
45	IN1	45	0	\N	t	\N	\N	\N	\N	Captain of the Mists	Creature	R
46	IN1	46	0	\N	t	\N	\N	\N	\N	Crippling Chill	Instant	C
47	IN1	47	0	\N	t	\N	\N	\N	\N	Deadeye Navigator	Creature	R
48	IN1	48	0	\N	t	\N	\N	\N	\N	Devastation Tide	Sorcery	R
49	IN1	49	0	\N	t	\N	\N	\N	\N	Dreadwaters	Sorcery	C
58	IN1	58	0	\N	t	\N	\N	\N	\N	Ghostly Touch	Enchantment	U
59	IN1	59	0	\N	t	\N	\N	\N	\N	Gryff Vanguard	Creature	C
60	IN1	60	0	\N	t	\N	\N	\N	\N	Havengul Skaab	Creature	C
61	IN1	61	0	\N	t	\N	\N	\N	\N	Infinite Reflection	Enchantment	R
62	IN1	62	0	\N	t	\N	\N	\N	\N	Into the Void	Sorcery	U
55	IN1	55	1	\N	t	\N	\N	\N	\N	Geist Snatch	Instant	C
64	IN1	64	0	\N	t	\N	\N	\N	\N	Lone Revenant	Creature	R
2793	ZER	212	1	\N	\N	\N	\N	\N	\N	Taunting Arbormage	Creature	U
2795	ZER	214	4	\N	\N	\N	\N	\N	\N	Turntimber Ascetic	Creature	C
2796	ZER	215	0	\N	\N	\N	\N	\N	\N	Turntimber Symbiosis // Turntimber, Serpentine Wood	Sorcery // Land	M
2798	ZER	217	1	\N	\N	\N	\N	\N	\N	Vastwood Surge	Sorcery	U
1385	AMO	2	0	\N	\N	\N	\N	\N	\N	Anointed Procession	Enchantment	R
1390	AMO	7	3	\N	\N	\N	\N	\N	\N	Cartouche of Solidarity	Enchantment	C
2800	ZER	219	1	\N	\N	\N	\N	\N	\N	Vine Gecko	Creature	U
2801	ZER	220	1	\N	\N	\N	\N	\N	\N	Akiri, Fearless Voyager	Lgd. Creature	R
111	IN1	111	1	\N	\N	t	\N	\N	\N	Killing Wave	Sorcery	R
97	IN1	97	0	\N	\N	t	\N	\N	\N	Descent into Madness	Enchantment	M
2139	MIB	72	2	\N	\N	\N	t	\N	\N	Ogre Resister	Creature	C
2127	MIB	60	3	\N	\N	\N	t	\N	\N	Concussive Bolt	Sorcery	C
187	IN1	187	0	\N	\N	\N	\N	t	\N	Nightshade Peddler	Creature	C
189	IN1	189	0	\N	\N	\N	\N	t	\N	Primal Surge	Sorcery	M
190	IN1	190	0	\N	\N	\N	\N	t	\N	Rain of Thorns	Sorcery	U
192	IN1	192	0	\N	\N	\N	\N	t	\N	Sheltering Word	Instant	C
193	IN1	193	0	\N	\N	\N	\N	t	\N	Snare the Skies	Instant	C
195	IN1	195	0	\N	\N	\N	\N	t	\N	Soul of the Harvest	Creature	R
197	IN1	197	0	\N	\N	\N	\N	t	\N	Timberland Guide	Creature	C
198	IN1	198	0	\N	\N	\N	\N	t	\N	Triumph of Ferocity	Enchantment	U
201	IN1	201	0	\N	\N	\N	\N	t	\N	Vorstclaw	Creature	U
202	IN1	202	0	\N	\N	\N	\N	t	\N	Wandering Wolf	Creature	C
204	IN1	204	0	\N	\N	\N	\N	t	\N	Wildwood Geist	Creature	C
205	IN1	205	0	\N	\N	\N	\N	t	\N	Wolfir Avenger	Creature	U
207	IN1	207	0	\N	\N	\N	\N	t	\N	Yew Spirit	Creature	U
209	IN1	209	0	t	\N	\N	t	\N	\N	Gisela, Blade of Goldnight	Lgd. Creature	M
211	IN1	211	0	\N	\N	\N	\N	\N	\N	Angel's Tomb	Artifact	U
212	IN1	212	0	\N	\N	\N	\N	\N	\N	Angelic Armaments	Artifact	U
213	IN1	213	0	\N	\N	\N	\N	\N	\N	Bladed Bracers	Artifact	C
215	IN1	215	0	\N	\N	\N	\N	\N	\N	Gallows at Willow Hill	Artifact	R
217	IN1	217	0	\N	\N	\N	\N	\N	\N	Moonsilver Spear	Artifact	R
219	IN1	219	0	\N	\N	\N	\N	\N	\N	Otherworld Atlas	Artifact	R
220	IN1	220	0	\N	\N	\N	\N	\N	\N	Scroll of Avacyn	Artifact	C
2079	MIB	12	1	t	\N	\N	\N	\N	\N	Loxodon Partisan	Creature	C
98	IN1	98	0	\N	\N	t	\N	\N	\N	Dread Slaver	Creature	R
99	IN1	99	0	\N	\N	t	\N	\N	\N	Driver of the Dead	Creature	C
101	IN1	101	0	\N	\N	t	\N	\N	\N	Evernight Shade	Creature	U
102	IN1	102	0	\N	\N	t	\N	\N	\N	Exquisite Blood	Enchantment	R
104	IN1	104	0	\N	\N	t	\N	\N	\N	Gloom Surgeon	Creature	R
105	IN1	105	0	\N	\N	t	\N	\N	\N	Grave Exchange	Sorcery	C
107	IN1	107	0	\N	\N	t	\N	\N	\N	Harvester of Souls	Creature	R
108	IN1	108	0	\N	\N	t	\N	\N	\N	Homicidal Seclusion	Enchantment	U
110	IN1	110	0	\N	\N	t	\N	\N	\N	Hunted Ghoul	Creature	C
112	IN1	112	0	\N	\N	t	\N	\N	\N	Maalfeld Twins	Creature	U
114	IN1	114	0	\N	\N	t	\N	\N	\N	Mental Agony	Sorcery	C
115	IN1	115	0	\N	\N	t	\N	\N	\N	Necrobite	Instant	C
116	IN1	116	0	\N	\N	t	\N	\N	\N	Polluted Dead	Creature	C
118	IN1	118	0	\N	\N	t	\N	\N	\N	Renegade Demon	Creature	C
119	IN1	119	0	\N	\N	t	\N	\N	\N	Searchlight Geist	Creature	C
121	IN1	121	0	\N	\N	t	\N	\N	\N	Treacherous Pit-Dweller	Creature	R
122	IN1	122	0	\N	\N	t	\N	\N	\N	Triumph of Cruelty	Enchantment	U
124	IN1	124	0	\N	\N	t	\N	\N	\N	Unhallowed Pact	Enchantment	C
150	IN1	150	0	\N	\N	\N	t	\N	\N	Raging Poltergeist	Creature	C
152	IN1	152	0	\N	\N	\N	t	\N	\N	Riot Ringleader	Creature	C
153	IN1	153	0	\N	\N	\N	t	\N	\N	Rite of Ruin	Sorcery	R
154	IN1	154	0	\N	\N	\N	t	\N	\N	Rush of Blood	Instant	U
156	IN1	156	0	\N	\N	\N	t	\N	\N	Somberwald Vigilante	Creature	C
157	IN1	157	0	\N	\N	\N	t	\N	\N	Stonewright	Creature	U
159	IN1	159	0	\N	\N	\N	t	\N	\N	Thunderbolt	Instant	C
160	IN1	160	0	\N	\N	\N	t	\N	\N	Thunderous Wrath	Instant	U
162	IN1	162	0	\N	\N	\N	t	\N	\N	Tyrant of Discord	Creature	R
163	IN1	163	0	\N	\N	\N	t	\N	\N	Uncanny Speed	Instant	C
164	IN1	164	0	\N	\N	\N	t	\N	\N	Vexing Devil	Creature	R
166	IN1	166	0	\N	\N	\N	t	\N	\N	Zealous Conscripts	Creature	R
186	IN1	186	0	\N	\N	\N	\N	t	\N	Nettle Swine	Creature	C
2083	MIB	16	0	t	\N	\N	\N	\N	\N	Priests of Norn	Creature	C
2084	MIB	17	1	t	\N	\N	\N	\N	\N	Tine Shrike	Creature	C
2085	MIB	18	0	t	\N	\N	\N	\N	\N	Victory's Herald	Creature	R
2086	MIB	19	1	t	\N	\N	\N	\N	\N	White Sun's Zenith	Instant	R
2074	MIB	7	0	t	\N	\N	\N	\N	\N	Gore Vassal	Creature	U
2073	MIB	6	1	t	\N	\N	\N	\N	\N	Frantic Salvage	Instant	C
2075	MIB	8	0	t	\N	\N	\N	\N	\N	Hero of Bladehold	Creature	M
2076	MIB	9	1	t	\N	\N	\N	\N	\N	Kemba's Legion	Creature	U
2077	MIB	10	1	t	\N	\N	\N	\N	\N	Leonin Relic-Warder	Creature	U
2094	MIB	27	1	\N	t	\N	\N	\N	\N	Mitotic Manipulation	Sorcery	R
2098	MIB	31	1	\N	t	\N	\N	\N	\N	Serum Raker	Creature	C
2101	MIB	34	1	\N	t	\N	\N	\N	\N	Treasure Mage	Creature	U
2103	MIB	36	1	\N	t	\N	\N	\N	\N	Vedalken Anatomist	Creature	U
2105	MIB	38	1	\N	t	\N	\N	\N	\N	Vivisection	Sorcery	C
2109	MIB	42	0	\N	\N	t	\N	\N	\N	Flesh-Eater Imp	Creature	U
2110	MIB	43	0	\N	\N	t	\N	\N	\N	Go for the Throat	Instant	U
2111	MIB	44	1	\N	\N	t	\N	\N	\N	Gruesome Encore	Sorcery	U
2113	MIB	46	0	\N	\N	t	\N	\N	\N	Massacre Wurm	Creature	M
2114	MIB	47	1	\N	\N	t	\N	\N	\N	Morbid Plunder	Sorcery	C
2115	MIB	48	0	\N	\N	t	\N	\N	\N	Nested Ghoul	Creature	U
2117	MIB	50	0	\N	\N	t	\N	\N	\N	Phyrexian Crusader	Creature	R
2118	MIB	51	1	\N	\N	t	\N	\N	\N	Phyrexian Rager	Creature	C
2120	MIB	53	0	\N	\N	t	\N	\N	\N	Sangromancer	Creature	R
2121	MIB	54	1	\N	\N	t	\N	\N	\N	Scourge Servant	Creature	C
2122	MIB	55	1	\N	\N	t	\N	\N	\N	Septic Rats	Creature	U
2128	MIB	61	1	\N	\N	\N	t	\N	\N	Crush	Instant	C
2129	MIB	62	1	\N	\N	\N	t	\N	\N	Galvanoth	Creature	R
2138	MIB	71	1	\N	\N	\N	t	\N	\N	Metallic Mastery	Sorcery	U
2141	MIB	74	1	\N	\N	\N	t	\N	\N	Red Sun's Zenith	Sorcery	R
2142	MIB	75	1	\N	\N	\N	t	\N	\N	Slagstorm	Sorcery	R
2131	MIB	64	1	\N	\N	\N	t	\N	\N	Goblin Wardriver	Creature	U
2133	MIB	66	1	\N	\N	\N	t	\N	\N	Hero of Oxid Ridge	Creature	M
2134	MIB	67	1	\N	\N	\N	t	\N	\N	Into the Core	Instant	U
2135	MIB	68	3	\N	\N	\N	t	\N	\N	Koth's Courier	Creature	C
2143	MIB	76	1	\N	\N	\N	t	\N	\N	Spiraling Duelist	Creature	U
2156	MIB	89	1	\N	\N	\N	\N	t	\N	Quilled Slagwurm	Creature	U
2158	MIB	91	1	\N	\N	\N	\N	t	\N	Tangle Mantis	Creature	C
2159	MIB	92	1	\N	\N	\N	\N	t	\N	Thrun, the Last Troll	Lgd. Creature	M
2162	MIB	95	0	\N	\N	\N	\N	t	\N	Viridian Emissary	Creature	C
2163	MIB	96	1	\N	\N	t	\N	t	\N	Glissa, the Traitor	Lgd. Creature	M
558	IN5	3	2	\N	\N	\N	\N	\N	\N	Angelic Purge	Sorcery	C
1392	AMO	9	4	\N	\N	\N	\N	\N	\N	Compulsory Rest	Enchantment	C
2738	ZER	157	4	\N	\N	\N	\N	\N	\N	Scavenged Blade	Artifact	C
2803	ZER	222	1	\N	\N	\N	\N	\N	\N	Cleric of Life's Bond	Creature	U
2805	ZER	224	1	\N	\N	\N	\N	\N	\N	Kargan Warleader	Creature	U
2807	ZER	226	0	\N	\N	\N	\N	\N	\N	Linvala, Shield of Sea Gate	Lgd. Creature	R
2810	ZER	229	1	\N	\N	\N	\N	\N	\N	Murasa Rootgrazer	Creature	U
2812	ZER	231	0	\N	\N	\N	\N	\N	\N	Nissa of Shadowed Boughs	Lgd. Planeswalker	M
2815	ZER	234	1	\N	\N	\N	\N	\N	\N	Phylath, World Sculptor	Lgd. Creature	R
2817	ZER	236	1	\N	\N	\N	\N	\N	\N	Soaring Thought-Thief	Creature	U
2818	ZER	237	3	\N	\N	\N	\N	\N	\N	Spoils of Adventure	Instant	U
2820	ZER	239	0	\N	\N	\N	\N	\N	\N	Verazol, the Split Current	Lgd. Creature	R
2822	ZER	241	0	\N	\N	\N	\N	\N	\N	Zagras, Thief of Heartbeats	Lgd. Creature	R
2824	ZER	243	3	\N	\N	\N	\N	\N	\N	Cliffhaven Kitesail	Artifact	C
2826	ZER	245	2	\N	\N	\N	\N	\N	\N	Lithoform Engine	Lgd. Artifact	M
2827	ZER	246	0	\N	\N	\N	\N	\N	\N	Myriad Construct	Artifact Creature	R
2829	ZER	248	1	\N	\N	\N	\N	\N	\N	Relic Axe	Artifact	U
2833	ZER	252	1	\N	\N	\N	\N	\N	\N	Skyclave Relic	Artifact	R
2835	ZER	254	4	\N	\N	\N	\N	\N	\N	Spare Supplies	Artifact	C
2837	ZER	256	3	\N	\N	\N	\N	\N	\N	Utility Knife	Artifact	C
2839	ZER	258	0	\N	\N	\N	\N	\N	\N	Branchloft Pathway // Boulderloft Pathway	Land // Land	R
2841	ZER	260	1	\N	\N	\N	\N	\N	\N	Clearwater Pathway // Murkwater Pathway	Land // Land	R
2842	ZER	261	0	\N	\N	\N	\N	\N	\N	Cragcrown Pathway // Timbercrown Pathway	Land // Land	R
2844	ZER	263	0	\N	\N	\N	\N	\N	\N	Needleverge Pathway // Pillarverge Pathway	Land // Land	R
2846	ZER	265	1	\N	\N	\N	\N	\N	\N	Throne of Makindi	Land	R
2851	ZER	270	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
2854	ZER	273	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
2856	ZER	275	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
2859	ZER	278	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
3179	DOM	44	3	\N	\N	\N	\N	\N	\N	Artificer's Assistant	Creature	C
3189	DOM	54	1	\N	\N	\N	\N	\N	\N	In Bolas's Clutches	Lgd. Enchantment	U
3231	DOM	96	0	\N	\N	\N	\N	\N	\N	Kazarov, Sengir Pureblood	Lgd. Creature	R
3236	DOM	101	4	\N	\N	\N	\N	\N	\N	Rat Colony	Creature	C
3257	DOM	122	1	\N	\N	\N	\N	\N	\N	The First Eruption	Enchantment	R
3309	DOM	174	0	\N	\N	\N	\N	\N	\N	Multani, Yavimaya's Avatar	Lgd. Creature	M
3331	DOM	196	4	\N	\N	\N	\N	\N	\N	Hallar, the Firefletcher	Lgd. Creature	U
27537	DKA	1	0	t	\N	\N	\N	\N	\N	Archangel's Light	Sorcery	M
36483	DKA	126	1	\N	\N	\N	\N	t	\N	Somberwald Dryad	Creature	C
36329	DKA	49	3	\N	t	\N	\N	\N	\N	Shriekgeist	Creature	C
27568	EVE	2	0	t	\N	\N	\N	\N	\N	Ballynock Trapper	Creature	C
27578	BOK	7	0	t	\N	\N	\N	\N	\N	Hokori, Dust Drinker	Lgd. Creature	R
36407	DKA	88	1	\N	\N	\N	t	\N	\N	Fires of Undeath	Instant	C
27598	CHK	6	0	t	\N	\N	\N	\N	\N	Cleanfall	Sorcery	U
32403	MRD	217	1	\N	\N	\N	\N	\N	\N	Needlebug	Artifact Creature	U
27618	WWK	12	0	t	\N	\N	\N	\N	\N	Lightkeeper of Emeria	Creature	U
27628	GTC	4	0	t	\N	\N	\N	\N	\N	Assault Griffin	Creature	C
27638	WWK	2	0	t	\N	\N	\N	\N	\N	Apex Hawks	Creature	C
27648	RTR	2	0	t	\N	\N	\N	\N	\N	Armory Guard	Creature	C
27668	CON	11	0	t	\N	\N	\N	\N	\N	Martial Coup	Sorcery	R
27678	GTC	11	0	t	\N	\N	\N	\N	\N	Dutiful Thrull	Creature	C
27688	GTC	5	0	t	\N	\N	\N	\N	\N	Basilica Guards	Creature	C
27698	WWK	3	0	t	\N	\N	\N	\N	\N	Archon of Redemption	Creature	R
27708	RTR	3	0	t	\N	\N	\N	\N	\N	Arrest	Enchantment	U
27718	WWK	9	0	t	\N	\N	\N	\N	\N	Join the Ranks	Instant	C
27728	GPT	7	0	t	\N	\N	\N	\N	\N	Graven Dominator	Creature	R
37618	BRO	9	0	t	\N	\N	\N	\N	\N	Kayla's Command	Sorcery	R
27748	GPT	13	0	t	\N	\N	\N	\N	\N	Order of the Stars	Creature	U
27758	EVE	8	0	t	\N	\N	\N	\N	\N	Kithkin Spellduster	Creature	C
27777	EVE	14	0	t	\N	\N	\N	\N	\N	Spirit of the Hearth	Creature	R
27787	BOK	15	0	t	\N	\N	\N	\N	\N	Mending Hands	Instant	C
27797	CHK	15	0	t	\N	\N	\N	\N	\N	Horizon Seed	Creature	U
27817	GPT	17	0	t	\N	\N	\N	\N	\N	Skyrider Trainee	Creature	C
27827	SOM	1	0	t	\N	\N	\N	\N	\N	Abuna Acolyte	Creature	U
27837	BOK	18	0	t	\N	\N	\N	\N	\N	Oyobi, Who Split the Heavens	Lgd. Creature	R
27847	ARB	19	0	\N	t	t	\N	\N	\N	Deny Reality	Sorcery	C
27857	SOK	19	0	t	\N	\N	\N	\N	\N	Michiko Konda, Truth Seeker	Lgd. Creature	R
27877	EVE	21	0	\N	t	\N	\N	\N	\N	Glamerdye	Instant	R
27880	MOR	21	0	t	\N	\N	\N	\N	\N	Redeem the Lost	Instant	U
27887	DGM	22	0	\N	\N	t	\N	\N	\N	Blood Scrivener	Creature	R
27897	EVE	23	0	\N	t	\N	\N	\N	\N	Idle Thoughts	Enchantment	U
27910	DKA	25	0	t	\N	\N	\N	\N	\N	Thraben Doomsayer	Creature	R
27917	BOK	27	0	t	\N	\N	\N	\N	\N	Terashi's Verdict	Instant	U
27927	ARB	31	0	\N	t	t	\N	\N	\N	Time Sieve	Artifact	R
27930	MID	5	0	t	\N	\N	\N	\N	\N	Blessed Defiance	Instant	C
27767	LRW	8	1	t	\N	\N	\N	\N	\N	Cenn's Heir	Creature	C
27528	ARB	1	1	t	t	\N	\N	\N	\N	Ardent Plea	Enchantment	U
27658	MOR	10	1	t	\N	\N	\N	\N	\N	Forfend	Instant	C
27807	MOR	16	1	t	\N	\N	\N	\N	\N	Kithkin Zephyrnaut	Creature	C
1387	AMO	4	1	\N	\N	\N	\N	\N	\N	Approach of the Second Sun	Sorcery	R
96	IN1	96	0	\N	\N	t	\N	\N	\N	Demonlord of Ashmouth	Creature	R
100	IN1	100	0	\N	\N	t	\N	\N	\N	Essence Harvest	Sorcery	C
103	IN1	103	0	\N	\N	t	\N	\N	\N	Ghoulflesh	Enchantment	C
106	IN1	106	0	\N	\N	t	\N	\N	\N	Griselbrand	Lgd. Creature	M
109	IN1	109	0	\N	\N	t	\N	\N	\N	Human Frailty	Instant	U
113	IN1	113	0	\N	\N	t	\N	\N	\N	Marrow Bats	Creature	U
117	IN1	117	0	\N	\N	t	\N	\N	\N	Predator's Gambit	Enchantment	C
120	IN1	120	0	\N	\N	t	\N	\N	\N	Soulcage Fiend	Creature	C
123	IN1	123	0	\N	\N	t	\N	\N	\N	Undead Executioner	Creature	C
151	IN1	151	0	\N	\N	\N	t	\N	\N	Reforge the Soul	Sorcery	R
155	IN1	155	0	\N	\N	\N	t	\N	\N	Scalding Devil	Creature	C
158	IN1	158	0	\N	\N	\N	t	\N	\N	Thatcher Revolt	Sorcery	C
161	IN1	161	0	\N	\N	\N	t	\N	\N	Tibalt, the Fiend-Blooded	Lgd. Planeswalker	M
165	IN1	165	0	\N	\N	\N	t	\N	\N	Vigilante Justice	Enchantment	U
188	IN1	188	0	\N	\N	\N	\N	t	\N	Pathbreaker Wurm	Creature	C
191	IN1	191	0	\N	\N	\N	\N	t	\N	Revenge of the Hunted	Sorcery	R
196	IN1	196	0	\N	\N	\N	\N	t	\N	Terrifying Presence	Instant	C
203	IN1	203	0	\N	\N	\N	\N	t	\N	Wild Defiance	Enchantment	R
208	IN1	208	0	t	t	\N	\N	\N	\N	Bruna, Light of Alabaster	Lgd. Creature	M
210	IN1	210	0	t	\N	\N	\N	t	\N	Sigarda, Host of Herons	Lgd. Creature	M
214	IN1	214	0	\N	\N	\N	\N	\N	\N	Conjurer's Closet	Artifact	R
218	IN1	218	0	\N	\N	\N	\N	\N	\N	Narstad Scrapper	Artifact Creature	C
238	IN1	238	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
241	IN1	241	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
243	IN1	243	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
625	IN5	70	3	\N	\N	\N	\N	\N	\N	Jace's Scrutiny	Instant	C
629	IN5	74	3	\N	\N	\N	\N	\N	\N	Nagging Thoughts	Sorcery	C
626	IN5	71	2	\N	\N	\N	\N	\N	\N	Just the Wind	Instant	C
606	IN5	51	2	\N	\N	\N	\N	\N	\N	Catalog	Instant	C
616	IN5	61	2	\N	\N	\N	\N	\N	\N	Essence Flux	Instant	U
615	IN5	60	1	\N	\N	\N	\N	\N	\N	Erdwal Illuminator	Creature	U
631	IN5	76	4	\N	\N	\N	\N	\N	\N	Niblis of Dusk	Creature	C
611	IN5	56	4	\N	\N	\N	\N	\N	\N	Drownyard Explorers	Creature	C
609	IN5	54	2	\N	\N	\N	\N	\N	\N	Daring Sleuth // Bearer of Overwhelming Truths	Creature	U
620	IN5	65	0	\N	\N	\N	\N	\N	\N	Geralf's Masterpiece	Creature	M
617	IN5	62	2	\N	\N	\N	\N	\N	\N	Fleeting Memories	Enchantment	U
607	IN5	52	2	\N	\N	\N	\N	\N	\N	Compelling Deterrence	Instant	U
622	IN5	67	3	\N	\N	\N	\N	\N	\N	Gone Missing	Sorcery	C
624	IN5	69	0	\N	\N	\N	\N	\N	\N	Jace, Unraveler of Secrets	Lgd. Planeswalker	M
612	IN5	57	2	\N	\N	\N	\N	\N	\N	Drunau Corpse Trawler	Creature	U
623	IN5	68	1	\N	\N	\N	\N	\N	\N	Invasive Surgery	Instant	U
605	IN5	50	2	\N	\N	\N	\N	\N	\N	Broken Concentration	Instant	U
599	IN5	44	3	\N	\N	\N	\N	\N	\N	Thraben Inspector	Creature	C
610	IN5	55	3	\N	\N	\N	\N	\N	\N	Deny Existence	Instant	C
630	IN5	75	0	\N	\N	\N	\N	\N	\N	Nephalia Moondrakes	Creature	R
627	IN5	72	3	\N	\N	\N	\N	\N	\N	Lamplighter of Selhoff	Creature	C
632	IN5	77	0	\N	\N	\N	\N	\N	\N	Ongoing Investigation	Enchantment	U
3964	BFZ	1	2	\N	\N	\N	\N	\N	\N	Bane of Bala Ged	Creature	U
3968	BFZ	5	1	\N	\N	\N	\N	\N	\N	Deathless Behemoth	Creature	U
4238	WOS	1	1	\N	\N	\N	\N	\N	\N	Karn, the Great Creator	Lgd. Planeswalker	R
36543	DKA	156	1	\N	\N	\N	\N	\N	\N	Grim Backwoods	Land	R
27538	DGM	1	0	t	\N	\N	\N	\N	\N	Boros Mastiff	Creature	C
27560	BOK	4	0	t	\N	\N	\N	\N	\N	Final Judgment	Sorcery	R
69	IN1	69	1	\N	t	\N	\N	\N	\N	Nephalia Smuggler	Creature	U
27580	ARB	8	0	t	t	\N	\N	\N	\N	Meddling Mage	Creature	R
27590	DKA	6	0	t	\N	\N	\N	\N	\N	Elgaud Inquisitor	Creature	C
27600	ISD	6	0	t	\N	\N	\N	\N	\N	Champion of the Parish	Creature	R
27610	CON	12	0	t	\N	\N	\N	\N	\N	Mirror-Sigil Sergeant	Creature	M
27620	GTC	12	0	t	\N	\N	\N	\N	\N	Frontline Medic	Creature	R
33245	CHK	301	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
560	IN5	5	1	\N	\N	\N	\N	\N	\N	Archangel Avacyn // Avacyn, the Purifier	Lgd. Creature	M
598	IN5	43	0	\N	\N	\N	\N	\N	\N	Thalia's Lieutenant	Creature	R
600	IN5	45	1	\N	\N	\N	\N	\N	\N	Topplegeist	Creature	U
602	IN5	47	3	\N	\N	\N	\N	\N	\N	Unruly Mob	Creature	C
601	IN5	46	2	\N	\N	\N	\N	\N	\N	Town Gossipmonger // Incited Rabble	Creature	U
603	IN5	48	3	\N	\N	\N	\N	\N	\N	Vessel of Ephemera	Enchantment	C
597	IN5	42	1	\N	\N	\N	\N	\N	\N	Tenacity	Instant	U
608	IN5	53	2	\N	\N	\N	\N	\N	\N	Confirm Suspicions	Instant	R
613	IN5	58	0	\N	\N	\N	\N	\N	\N	Engulf the Shore	Instant	R
614	IN5	59	0	\N	\N	\N	\N	\N	\N	Epiphany at the Drownyard	Instant	R
621	IN5	66	2	\N	\N	\N	\N	\N	\N	Ghostly Wings	Enchantment	C
628	IN5	73	1	\N	\N	\N	\N	\N	\N	Manic Scribe	Creature	U
619	IN5	64	3	\N	\N	\N	\N	\N	\N	Furtive Homunculus	Creature	C
604	IN5	49	1	\N	\N	\N	\N	\N	\N	Aberrant Researcher // Perfected Form	Creature	U
27630	MRD	4	0	t	\N	\N	\N	\N	\N	Auriok Steelshaper	Creature	R
27640	GTC	2	0	t	\N	\N	\N	\N	\N	Angelic Edict	Sorcery	C
27650	MID	2	0	t	\N	\N	\N	\N	\N	Ambitious Farmhand // Seasoned Cathar	Creature	U
27660	WWK	10	0	t	\N	\N	\N	\N	\N	Kitesail Apprentice	Creature	C
27670	DGM	11	0	\N	t	\N	\N	\N	\N	Aetherling	Creature	R
27682	GPT	5	0	t	\N	\N	\N	\N	\N	Ghost Warden	Creature	C
27692	SOM	5	0	t	\N	\N	\N	\N	\N	Dispense Justice	Instant	U
27702	MRD	3	0	t	\N	\N	\N	\N	\N	Auriok Bladewarden	Creature	U
27712	DGM	9	0	t	\N	\N	\N	\N	\N	Sunspire Gatekeepers	Creature	C
27722	MRD	9	0	t	\N	\N	\N	\N	\N	Leonin Den-Guard	Creature	C
27732	WWK	7	0	t	\N	\N	\N	\N	\N	Hada Freeblade	Creature	U
216	IN1	216	1	\N	\N	\N	\N	\N	\N	Haunted Guardian	Artifact Creature	U
27752	WWK	13	1	t	\N	\N	\N	\N	\N	Loam Lion	Creature	U
27549	CON	5	1	t	\N	\N	\N	\N	\N	Celestial Purge	Instant	U
618	IN5	63	1	\N	\N	\N	\N	\N	\N	Forgotten Creation	Creature	R
199	IN1	199	2	\N	\N	\N	\N	t	\N	Trusted Forcemage	Creature	C
764	IN5	209	1	\N	\N	\N	\N	\N	\N	Hermit of the Natterknolls // Lone Wolf of the Natterknolls	Creature	U
751	IN5	196	3	\N	\N	\N	\N	\N	\N	Byway Courier	Creature	C
763	IN5	208	1	\N	\N	\N	\N	\N	\N	Groundskeeper	Creature	U
759	IN5	204	3	\N	\N	\N	\N	\N	\N	Equestrian Skill	Enchantment	C
736	IN5	181	1	\N	\N	\N	\N	\N	\N	Sin Prodder	Creature	R
753	IN5	198	3	\N	\N	\N	\N	\N	\N	Confront the Unknown	Instant	C
1386	AMO	3	3	\N	\N	\N	\N	\N	\N	Anointer Priest	Creature	C
3965	BFZ	2	0	\N	\N	\N	\N	\N	\N	Blight Herder	Creature	R
3973	BFZ	10	4	\N	\N	\N	\N	\N	\N	Kozilek's Channeler	Creature	C
3138	DOM	3	5	\N	\N	\N	\N	\N	\N	Aven Sentry	Creature	C
4240	WOS	3	1	\N	\N	\N	\N	\N	\N	Ugin's Conjurant	Creature	U
4251	WOS	14	3	\N	\N	\N	\N	\N	\N	Gideon's Sacrifice	Instant	C
4253	WOS	16	1	\N	\N	\N	\N	\N	\N	God-Eternal Oketra	Lgd. Creature	M
4255	WOS	18	1	\N	\N	\N	\N	\N	\N	Ignite the Beacon	Instant	R
4256	WOS	19	5	\N	\N	\N	\N	\N	\N	Ironclad Krovod	Creature	C
4263	WOS	26	2	\N	\N	\N	\N	\N	\N	Prison Realm	Enchantment	U
4264	WOS	27	1	\N	\N	\N	\N	\N	\N	Rally of Wings	Instant	U
4267	WOS	30	1	\N	\N	\N	\N	\N	\N	Single Combat	Sorcery	R
4270	WOS	33	3	\N	\N	\N	\N	\N	\N	Teyo's Lightshield	Creature	C
4271	WOS	34	1	\N	\N	\N	\N	\N	\N	Tomik, Distinguished Advokist	Lgd. Creature	R
4273	WOS	36	3	\N	\N	\N	\N	\N	\N	Trusted Pegasus	Creature	C
4275	WOS	38	4	\N	\N	\N	\N	\N	\N	Wanderer's Strike	Sorcery	C
4277	WOS	40	4	\N	\N	\N	\N	\N	\N	Ashiok's Skulker	Creature	C
4280	WOS	43	1	\N	\N	\N	\N	\N	\N	Bond of Insight	Sorcery	U
4283	WOS	46	3	\N	\N	\N	\N	\N	\N	Contentious Plan	Sorcery	C
4286	WOS	49	2	\N	\N	\N	\N	\N	\N	Eternal Skylord	Creature	U
4288	WOS	51	0	\N	\N	\N	\N	\N	\N	Finale of Revelation	Sorcery	M
4290	WOS	53	1	\N	\N	\N	\N	\N	\N	God-Eternal Kefnet	Lgd. Creature	M
4292	WOS	55	1	\N	\N	\N	\N	\N	\N	Jace's Triumph	Sorcery	U
4295	WOS	58	4	\N	\N	\N	\N	\N	\N	Kiora's Dambreaker	Creature	C
4298	WOS	61	2	\N	\N	\N	\N	\N	\N	Narset, Parter of Veils	Lgd. Planeswalker	U
755	IN5	200	1	\N	\N	\N	\N	\N	\N	Cryptolith Rite	Enchantment	R
744	IN5	189	4	\N	\N	\N	\N	\N	\N	Vessel of Volatility	Enchantment	C
746	IN5	191	4	\N	\N	\N	\N	\N	\N	Voldaren Duelist	Creature	C
559	IN5	4	3	\N	\N	\N	\N	\N	\N	Apothecary Geist	Creature	C
741	IN5	186	3	\N	\N	\N	\N	\N	\N	Tormenting Voice	Sorcery	C
743	IN5	188	3	\N	\N	\N	\N	\N	\N	Uncaged Fury	Instant	C
745	IN5	190	1	\N	\N	\N	\N	\N	\N	Village Messenger // Moonrise Intruder	Creature	U
735	IN5	180	3	\N	\N	\N	\N	\N	\N	Senseless Rage	Enchantment	C
737	IN5	182	2	\N	\N	\N	\N	\N	\N	Skin Invasion // Skin Shedder	Enchantment	U
740	IN5	185	4	\N	\N	\N	\N	\N	\N	Structural Distortion	Sorcery	C
738	IN5	183	2	\N	\N	\N	\N	\N	\N	Spiteful Motives	Enchantment	U
742	IN5	187	1	\N	\N	\N	\N	\N	\N	Ulrich's Kindred	Creature	U
739	IN5	184	1	\N	\N	\N	\N	\N	\N	Stensia Masquerade	Enchantment	U
747	IN5	192	0	\N	\N	\N	\N	\N	\N	Wolf of Devil's Breach	Creature	M
750	IN5	195	1	\N	\N	\N	\N	\N	\N	Briarbridge Patrol	Creature	U
761	IN5	206	1	\N	\N	\N	\N	\N	\N	Gloomwidow	Creature	U
752	IN5	197	3	\N	\N	\N	\N	\N	\N	Clip Wings	Instant	C
756	IN5	201	1	\N	\N	\N	\N	\N	\N	Cult of the Waxing Moon	Creature	U
762	IN5	207	1	\N	\N	\N	\N	\N	\N	Graf Mole	Creature	U
758	IN5	203	1	\N	\N	\N	\N	\N	\N	Duskwatch Recruiter // Krallenhorde Howler	Creature	U
749	IN5	194	1	\N	\N	\N	\N	\N	\N	Autumnal Gloom // Ancient of the Equinox	Enchantment // Creature	U
757	IN5	202	1	\N	\N	\N	\N	\N	\N	Deathcap Cultivator	Creature	R
765	IN5	210	3	\N	\N	\N	\N	\N	\N	Hinterland Logger // Timber Shredder	Creature	C
760	IN5	205	3	\N	\N	\N	\N	\N	\N	Fork in the Road	Sorcery	C
754	IN5	199	1	\N	\N	\N	\N	\N	\N	Crawling Sensation	Enchantment	U
4299	WOS	62	0	\N	\N	\N	\N	\N	\N	Narset's Reversal	Instant	R
4302	WOS	65	2	\N	\N	\N	\N	\N	\N	Rescuer Sphinx	Creature	U
4304	WOS	67	3	\N	\N	\N	\N	\N	\N	Sky Theater Strix	Creature	C
4306	WOS	69	4	\N	\N	\N	\N	\N	\N	Spellkeeper Weird	Creature	C
4309	WOS	72	4	\N	\N	\N	\N	\N	\N	Teferi's Time Twist	Instant	C
4311	WOS	74	4	\N	\N	\N	\N	\N	\N	Totally Lost	Instant	C
4313	WOS	76	4	\N	\N	\N	\N	\N	\N	Aid the Fallen	Sorcery	C
4316	WOS	79	1	\N	\N	\N	\N	\N	\N	Bolas's Citadel	Lgd. Artifact	R
4319	WOS	82	1	\N	\N	\N	\N	\N	\N	Command the Dreadhorde	Sorcery	R
4320	WOS	83	1	\N	\N	\N	\N	\N	\N	Davriel, Rogue Shadowmage	Lgd. Planeswalker	U
4323	WOS	86	0	\N	\N	\N	\N	\N	\N	Dreadhorde Invasion	Enchantment	R
4326	WOS	89	0	\N	\N	\N	\N	\N	\N	The Elderspell	Sorcery	R
4328	WOS	91	1	\N	\N	\N	\N	\N	\N	Finale of Eternity	Sorcery	M
4330	WOS	93	3	\N	\N	\N	\N	\N	\N	Herald of the Dreadhorde	Creature	C
4333	WOS	96	4	\N	\N	\N	\N	\N	\N	Lazotep Reaver	Creature	C
4334	WOS	97	0	\N	\N	\N	\N	\N	\N	Liliana, Dreadhorde General	Lgd. Planeswalker	M
4338	WOS	101	4	\N	\N	\N	\N	\N	\N	Ob Nixilis's Cruelty	Instant	C
4341	WOS	104	3	\N	\N	\N	\N	\N	\N	Sorin's Thirst	Instant	C
4344	WOS	107	4	\N	\N	\N	\N	\N	\N	Tithebearer Giant	Creature	C
4346	WOS	109	2	\N	\N	\N	\N	\N	\N	Unlikely Aid	Instant	C
4348	WOS	111	2	\N	\N	\N	\N	\N	\N	Vizier of the Scorpion	Creature	U
4351	WOS	114	3	\N	\N	\N	\N	\N	\N	Blindblast	Instant	C
4353	WOS	116	1	\N	\N	\N	\N	\N	\N	Bond of Passion	Sorcery	U
4355	WOS	118	3	\N	\N	\N	\N	\N	\N	Chainwhip Cyclops	Creature	C
4357	WOS	120	3	\N	\N	\N	\N	\N	\N	Chandra's Pyrohelix	Instant	C
4359	WOS	122	2	\N	\N	\N	\N	\N	\N	Cyclops Electromancer	Creature	U
4362	WOS	125	1	\N	\N	\N	\N	\N	\N	Dreadhorde Arcanist	Creature	R
4366	WOS	129	4	\N	\N	\N	\N	\N	\N	Goblin Assault Team	Creature	C
4368	WOS	131	4	\N	\N	\N	\N	\N	\N	Heartfire	Instant	C
4370	WOS	133	0	\N	\N	\N	\N	\N	\N	Ilharg, the Raze-Boar	Lgd. Creature	M
3144	DOM	9	3	\N	\N	\N	\N	\N	\N	Call the Cavalry	Sorcery	C
3146	DOM	11	4	\N	\N	\N	\N	\N	\N	D'Avenant Trapper	Creature	C
3148	DOM	13	1	\N	\N	\N	\N	\N	\N	Daring Archaeologist	Creature	R
3151	DOM	16	0	\N	\N	\N	\N	\N	\N	Evra, Halcyon Witness	Lgd. Creature	R
3153	DOM	18	1	\N	\N	\N	\N	\N	\N	Fall of the Thran	Enchantment	R
3156	DOM	21	1	\N	\N	\N	\N	\N	\N	History of Benalia	Enchantment	M
3158	DOM	23	1	\N	\N	\N	\N	\N	\N	Knight of Grace	Creature	U
3160	DOM	25	2	\N	\N	\N	\N	\N	\N	Kwende, Pride of Femeref	Lgd. Creature	U
3163	DOM	28	1	\N	\N	\N	\N	\N	\N	On Serra's Wings	Lgd. Enchantment	U
3165	DOM	30	2	\N	\N	\N	\N	\N	\N	Sanctum Spirit	Creature	U
3167	DOM	32	3	\N	\N	\N	\N	\N	\N	Sergeant-at-Arms	Creature	C
3170	DOM	35	1	\N	\N	\N	\N	\N	\N	Shalai, Voice of Plenty	Lgd. Creature	R
3172	DOM	37	4	\N	\N	\N	\N	\N	\N	Tragic Poet	Creature	C
3174	DOM	39	1	\N	\N	\N	\N	\N	\N	Urza's Ruinous Blast	Lgd. Sorcery	R
3176	DOM	41	3	\N	\N	\N	\N	\N	\N	Academy Journeymage	Creature	C
3177	DOM	42	1	\N	\N	\N	\N	\N	\N	The Antiquities War	Enchantment	R
3178	DOM	43	4	\N	\N	\N	\N	\N	\N	Arcane Flight	Enchantment	C
3180	DOM	45	4	\N	\N	\N	\N	\N	\N	Befuddle	Instant	C
3182	DOM	47	4	\N	\N	\N	\N	\N	\N	Cloudreader Sphinx	Creature	C
3184	DOM	49	1	\N	\N	\N	\N	\N	\N	Curator's Ward	Enchantment	U
3187	DOM	52	3	\N	\N	\N	\N	\N	\N	Divination	Sorcery	C
3192	DOM	57	0	\N	\N	\N	\N	\N	\N	The Mirari Conjecture	Enchantment	R
3194	DOM	59	0	\N	\N	\N	\N	\N	\N	Naru Meha, Master Wizard	Lgd. Creature	M
3196	DOM	61	1	\N	\N	\N	\N	\N	\N	Precognition Field	Enchantment	R
3199	DOM	64	1	\N	\N	\N	\N	\N	\N	Sage of Lat-Nam	Creature	U
3201	DOM	66	1	\N	\N	\N	\N	\N	\N	Slinn Voda, the Rising Deep	Lgd. Creature	U
3204	DOM	69	1	\N	\N	\N	\N	\N	\N	Tetsuko Umezawa, Fugitive	Lgd. Creature	U
3206	DOM	71	4	\N	\N	\N	\N	\N	\N	Tolarian Scholar	Creature	C
3209	DOM	74	2	\N	\N	\N	\N	\N	\N	Weight of Memory	Sorcery	U
3213	DOM	78	3	\N	\N	\N	\N	\N	\N	Cabal Evangel	Creature	C
3217	DOM	82	1	\N	\N	\N	\N	\N	\N	Chainer's Torment	Enchantment	U
3222	DOM	87	4	\N	\N	\N	\N	\N	\N	Divest	Sorcery	C
3225	DOM	90	1	\N	\N	\N	\N	\N	\N	The Eldest Reborn	Enchantment	U
3229	DOM	94	5	\N	\N	\N	\N	\N	\N	Fungal Infection	Instant	C
3232	DOM	97	2	\N	\N	\N	\N	\N	\N	Knight of Malice	Creature	U
3234	DOM	99	1	\N	\N	\N	\N	\N	\N	Lingering Phantom	Creature	U
3238	DOM	103	2	\N	\N	\N	\N	\N	\N	Settle the Score	Sorcery	U
3241	DOM	106	4	\N	\N	\N	\N	\N	\N	Thallid Omnivore	Creature	C
3243	DOM	108	1	\N	\N	\N	\N	\N	\N	Torgaar, Famine Incarnate	Lgd. Creature	R
3245	DOM	110	3	\N	\N	\N	\N	\N	\N	Vicious Offering	Instant	C
3247	DOM	112	3	\N	\N	\N	\N	\N	\N	Windgrace Acolyte	Creature	C
3251	DOM	116	1	\N	\N	\N	\N	\N	\N	Champion of the Flame	Creature	U
3254	DOM	119	2	\N	\N	\N	\N	\N	\N	Fight with Fire	Sorcery	U
3259	DOM	124	3	\N	\N	\N	\N	\N	\N	Frenzied Rage	Enchantment	C
3262	DOM	127	3	\N	\N	\N	\N	\N	\N	Ghitu Lavarunner	Creature	C
3265	DOM	130	2	\N	\N	\N	\N	\N	\N	Goblin Warchief	Creature	U
3266	DOM	131	0	\N	\N	\N	\N	\N	\N	Haphazard Bombardment	Enchantment	R
3268	DOM	133	1	\N	\N	\N	\N	\N	\N	Jaya's Immolating Inferno	Lgd. Sorcery	R
3272	DOM	137	1	\N	\N	\N	\N	\N	\N	Orcish Vandal	Creature	U
3274	DOM	139	4	\N	\N	\N	\N	\N	\N	Rampaging Cyclops	Creature	C
3279	DOM	144	4	\N	\N	\N	\N	\N	\N	Skirk Prospector	Creature	C
3281	DOM	146	0	\N	\N	\N	\N	\N	\N	Squee, the Immortal	Lgd. Creature	R
3283	DOM	148	3	\N	\N	\N	\N	\N	\N	Valduk, Keeper of the Flame	Lgd. Creature	U
3286	DOM	151	4	\N	\N	\N	\N	\N	\N	Warlord's Fury	Sorcery	C
3288	DOM	153	3	\N	\N	\N	\N	\N	\N	Adventurous Impulse	Sorcery	C
3291	DOM	156	3	\N	\N	\N	\N	\N	\N	Baloth Gorger	Creature	C
3293	DOM	158	4	\N	\N	\N	\N	\N	\N	Corrosive Ooze	Creature	C
3295	DOM	160	2	\N	\N	\N	\N	\N	\N	Fungal Plots	Enchantment	U
3298	DOM	163	5	\N	\N	\N	\N	\N	\N	Gift of Growth	Instant	C
3300	DOM	165	1	\N	\N	\N	\N	\N	\N	Grunn, the Lonely King	Lgd. Creature	U
3302	DOM	167	3	\N	\N	\N	\N	\N	\N	Krosan Druid	Creature	C
3305	DOM	170	4	\N	\N	\N	\N	\N	\N	Llanowar Scout	Creature	C
3307	DOM	172	1	\N	\N	\N	\N	\N	\N	Marwyn, the Nurturer	Lgd. Creature	R
3311	DOM	176	4	\N	\N	\N	\N	\N	\N	Pierce the Sky	Instant	C
3314	DOM	179	1	\N	\N	\N	\N	\N	\N	Song of Freyalise	Enchantment	U
3316	DOM	181	2	\N	\N	\N	\N	\N	\N	Sporecrown Thallid	Creature	U
3319	DOM	184	1	\N	\N	\N	\N	\N	\N	Territorial Allosaurus	Creature	R
3321	DOM	186	2	\N	\N	\N	\N	\N	\N	Untamed Kavu	Creature	U
3323	DOM	188	1	\N	\N	\N	\N	\N	\N	Wild Onslaught	Instant	U
3325	DOM	190	2	\N	\N	\N	\N	\N	\N	Adeliz, the Cinder Wind	Lgd. Creature	U
3327	DOM	192	1	\N	\N	\N	\N	\N	\N	Aryel, Knight of Windgrace	Lgd. Creature	R
3330	DOM	195	0	\N	\N	\N	\N	\N	\N	Grand Warlord Radha	Lgd. Creature	R
3332	DOM	197	0	\N	\N	\N	\N	\N	\N	Jhoira, Weatherlight Captain	Lgd. Creature	M
3335	DOM	200	1	\N	\N	\N	\N	\N	\N	Oath of Teferi	Lgd. Enchantment	R
3336	DOM	201	1	\N	\N	\N	\N	\N	\N	Primevals' Glorious Rebirth	Lgd. Sorcery	R
3339	DOM	204	1	\N	\N	\N	\N	\N	\N	Shanna, Sisay's Legacy	Lgd. Creature	U
3341	DOM	206	1	\N	\N	\N	\N	\N	\N	Tatyova, Benthic Druid	Lgd. Creature	U
3343	DOM	208	1	\N	\N	\N	\N	\N	\N	Tiana, Ship's Caretaker	Lgd. Creature	U
3345	DOM	210	1	\N	\N	\N	\N	\N	\N	Amaranthine Wall	Artifact Creature	U
3347	DOM	212	2	\N	\N	\N	\N	\N	\N	Bloodtallow Candle	Artifact	C
3349	DOM	214	1	\N	\N	\N	\N	\N	\N	Forebear's Blade	Artifact	R
3351	DOM	216	4	\N	\N	\N	\N	\N	\N	Guardians of Koilos	Artifact Creature	C
3354	DOM	219	1	\N	\N	\N	\N	\N	\N	Icy Manipulator	Artifact	U
3356	DOM	221	3	\N	\N	\N	\N	\N	\N	Jousting Lance	Artifact	C
3358	DOM	223	0	\N	\N	\N	\N	\N	\N	Mishra's Self-Replicator	Artifact Creature	R
3360	DOM	225	3	\N	\N	\N	\N	\N	\N	Navigator's Compass	Artifact	C
3362	DOM	227	3	\N	\N	\N	\N	\N	\N	Powerstone Shard	Artifact	C
3365	DOM	230	4	\N	\N	\N	\N	\N	\N	Skittering Surveyor	Artifact Creature	C
1161	MAO	50	3	\N	\N	\N	\N	\N	\N	Claustrophobia	Enchantment	C
1393	AMO	10	1	\N	\N	\N	\N	\N	\N	Devoted Crop-Mate	Creature	U
1115	MAO	4	0	\N	\N	\N	\N	\N	\N	Archangel of Tithes	Creature	M
2710	ZER	129	1	\N	\N	\N	\N	\N	\N	Taborax, Hope's Demise	Lgd. Creature	R
3967	BFZ	4	1	\N	\N	\N	\N	\N	\N	Conduit of Ruin	Creature	R
3367	DOM	232	4	\N	\N	\N	\N	\N	\N	Sparring Construct	Artifact Creature	C
3369	DOM	234	1	\N	\N	\N	\N	\N	\N	Traxos, Scourge of Kroog	Lgd. Artifact Creature	R
689	IN5	134	3	\N	\N	\N	\N	\N	\N	Shamble Back	Sorcery	C
571	IN5	16	0	\N	\N	\N	\N	\N	\N	Eerie Interlude	Instant	R
596	IN5	41	4	\N	\N	\N	\N	\N	\N	Survive the Night	Instant	C
576	IN5	21	0	\N	\N	\N	\N	\N	\N	Hanweir Militia Captain // Westvale Cult Leader	Creature	R
573	IN5	18	2	\N	\N	\N	\N	\N	\N	Ethereal Guidance	Sorcery	C
594	IN5	39	2	\N	\N	\N	\N	\N	\N	Stern Constable	Creature	C
702	IN5	147	1	\N	\N	\N	\N	\N	\N	Breakneck Rider // Neck Breaker	Creature	U
578	IN5	23	2	\N	\N	\N	\N	\N	\N	Humble the Brute	Instant	U
592	IN5	37	2	\N	\N	\N	\N	\N	\N	Silverstrike	Instant	U
3372	DOM	237	1	\N	\N	\N	\N	\N	\N	Weatherlight	Lgd. Artifact	M
590	IN5	35	3	\N	\N	\N	\N	\N	\N	Puncturing Light	Instant	C
585	IN5	30	1	\N	\N	\N	\N	\N	\N	Not Forgotten	Sorcery	U
569	IN5	14	3	\N	\N	\N	\N	\N	\N	Devilthorn Fox	Creature	C
3375	DOM	240	1	\N	\N	\N	\N	\N	\N	Hinterland Harbor	Land	R
587	IN5	32	1	\N	\N	\N	\N	\N	\N	Open the Armory	Sorcery	U
588	IN5	33	1	\N	\N	\N	\N	\N	\N	Paranoid Parish-Blade	Creature	U
647	IN5	92	3	\N	\N	\N	\N	\N	\N	Thing in the Ice // Awoken Horror	Creature	R
636	IN5	81	0	\N	\N	\N	\N	\N	\N	Rattlechains	Creature	R
583	IN5	28	3	\N	\N	\N	\N	\N	\N	Nahiri's Machinations	Enchantment	U
663	IN5	108	2	\N	\N	\N	\N	\N	\N	Elusive Tormentor // Insidious Mist	Creature	R
643	IN5	88	0	\N	\N	\N	\N	\N	\N	Startled Awake // Persistent Nightmare	Sorcery // Creature	M
649	IN5	94	1	\N	\N	\N	\N	\N	\N	Uninvited Geist // Unimpeded Trespasser	Creature	U
633	IN5	78	4	\N	\N	\N	\N	\N	\N	Pieces of the Puzzle	Sorcery	C
640	IN5	85	3	\N	\N	\N	\N	\N	\N	Silburlind Snapper	Creature	C
684	IN5	129	1	\N	\N	\N	\N	\N	\N	Pick the Brain	Sorcery	U
682	IN5	127	1	\N	\N	\N	\N	\N	\N	Olivia's Bloodsworn	Creature	U
661	IN5	106	3	\N	\N	\N	\N	\N	\N	Dead Weight	Enchantment	C
656	IN5	101	1	\N	\N	\N	\N	\N	\N	Behold the Beyond	Sorcery	M
652	IN5	97	1	\N	\N	\N	\N	\N	\N	Accursed Witch // Infectious Curse	Creature	U
666	IN5	111	0	\N	\N	\N	\N	\N	\N	From Under the Floorboards	Sorcery	R
645	IN5	90	1	\N	\N	\N	\N	\N	\N	Stitchwing Skaab	Creature	U
668	IN5	113	1	\N	\N	\N	\N	\N	\N	Ghoulsteed	Creature	U
700	IN5	145	1	\N	\N	\N	\N	\N	\N	Avacyn's Judgment	Sorcery	R
670	IN5	115	3	\N	\N	\N	\N	\N	\N	Grotesque Mutation	Instant	C
677	IN5	122	0	\N	\N	\N	\N	\N	\N	Markov Dreadknight	Creature	R
679	IN5	124	0	\N	\N	\N	\N	\N	\N	Mindwrack Demon	Creature	M
659	IN5	104	1	\N	\N	\N	\N	\N	\N	Creeping Dread	Enchantment	U
3378	DOM	243	1	\N	\N	\N	\N	\N	\N	Memorial to Genius	Land	U
3380	DOM	245	2	\N	\N	\N	\N	\N	\N	Memorial to Unity	Land	U
674	IN5	119	1	\N	\N	\N	\N	\N	\N	Kindly Stranger // Demon-Possessed Witch	Creature	U
1236	MAO	125	3	\N	\N	\N	\N	\N	\N	Unholy Hunger	Instant	C
686	IN5	131	0	\N	\N	\N	\N	\N	\N	Relentless Dead	Creature	M
695	IN5	140	1	\N	\N	\N	\N	\N	\N	Tooth Collector	Creature	U
691	IN5	136	4	\N	\N	\N	\N	\N	\N	Stallion of Ashmouth	Creature	C
654	IN5	99	1	\N	\N	\N	\N	\N	\N	Asylum Visitor	Creature	R
693	IN5	138	2	\N	\N	\N	\N	\N	\N	Throttle	Instant	C
697	IN5	142	3	\N	\N	\N	\N	\N	\N	Twins of Maurer Estate	Creature	C
709	IN5	154	3	\N	\N	\N	\N	\N	\N	Ember-Eye Wolf	Creature	C
3383	DOM	248	0	\N	\N	\N	\N	\N	\N	Woodland Cemetery	Land	R
638	IN5	83	1	\N	\N	\N	\N	\N	\N	Rise from the Tides	Sorcery	U
704	IN5	149	2	\N	\N	\N	\N	\N	\N	Convicted Killer // Branded Howler	Creature	C
707	IN5	152	2	\N	\N	\N	\N	\N	\N	Dissension in the Ranks	Instant	U
580	IN5	25	4	\N	\N	\N	\N	\N	\N	Inspiring Captain	Creature	C
1110	GOR	258	0	\N	\N	\N	\N	\N	\N	Temple Garden	Land	R
1184	MAO	73	2	\N	\N	\N	\N	\N	\N	Sigiled Starfish	Creature	U
1162	MAO	51	0	\N	\N	\N	\N	\N	\N	Day's Undoing	Sorcery	M
1164	MAO	53	0	\N	\N	\N	\N	\N	\N	Disciple of the Ring	Creature	M
1173	MAO	62	0	\N	\N	\N	\N	\N	\N	Jhessian Thief	Creature	U
1177	MAO	66	3	\N	\N	\N	\N	\N	\N	Nivix Barrier	Creature	C
1195	MAO	84	0	\N	\N	\N	\N	\N	\N	Willbreaker	Creature	R
1201	MAO	90	0	\N	\N	\N	\N	\N	\N	Dark Petition	Sorcery	R
1203	MAO	92	0	\N	\N	\N	\N	\N	\N	Demonic Pact	Enchantment	M
1221	MAO	110	1	\N	\N	\N	\N	\N	\N	Necromantic Summons	Sorcery	U
1224	MAO	113	4	\N	\N	\N	\N	\N	\N	Rabid Bloodsucker	Creature	C
1245	MAO	134	2	\N	\N	\N	\N	\N	\N	Call of the Full Moon	Enchantment	U
1261	MAO	150	1	\N	\N	\N	\N	\N	\N	Goblin Glory Chaser	Creature	U
3386	DOM	251	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
1264	MAO	153	4	\N	\N	\N	\N	\N	\N	Lightning Javelin	Sorcery	C
3389	DOM	254	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
3392	DOM	257	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
3394	DOM	259	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
3397	DOM	262	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
3401	DOM	266	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
3403	DOM	268	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
3405	DOM	270	0	\N	\N	\N	\N	\N	\N	Teferi, Timebender	Lgd. Planeswalker	M
3407	DOM	272	0	\N	\N	\N	\N	\N	\N	Niambi, Faithful Healer	Lgd. Creature	R
3410	DOM	275	0	\N	\N	\N	\N	\N	\N	Chandra, Bold Pyromancer	Lgd. Planeswalker	M
3412	DOM	277	0	\N	\N	\N	\N	\N	\N	Karplusan Hound	Creature	U
3415	DOM	280	1	\N	\N	\N	\N	\N	\N	Firesong and Sunspeaker	Lgd. Creature	R
4241	WOS	4	1	\N	\N	\N	\N	\N	\N	Ajani's Pridemate	Creature	U
27530	BOK	1	0	t	\N	\N	\N	\N	\N	Day of Destiny	Lgd. Enchantment	R
27539	EVE	1	0	t	\N	\N	\N	\N	\N	Archon of Justice	Creature	R
2069	MIB	2	1	t	\N	\N	\N	\N	\N	Ardent Recruit	Creature	C
2078	MIB	11	1	t	\N	\N	\N	\N	\N	Leonin Skyhunter	Creature	C
2081	MIB	14	1	t	\N	\N	\N	\N	\N	Mirran Crusader	Creature	R
2190	MIB	123	0	\N	\N	\N	\N	\N	\N	Pierce Strider	Artifact Creature	U
1442	AMO	59	0	\N	\N	\N	\N	\N	\N	Kefnet the Mindful	Lgd. Creature	M
723	IN5	168	3	\N	\N	\N	\N	\N	\N	Insolent Neonate	Creature	C
714	IN5	159	0	\N	\N	\N	\N	\N	\N	Geier Reach Bandit // Vildin-Pack Alpha	Creature	R
725	IN5	170	2	\N	\N	\N	\N	\N	\N	Lightning Axe	Instant	U
718	IN5	163	0	\N	\N	\N	\N	\N	\N	Harness the Storm	Enchantment	R
730	IN5	175	1	\N	\N	\N	\N	\N	\N	Ravenous Bloodseeker	Creature	U
820	IN5	265	1	\N	\N	\N	\N	\N	\N	Tamiyo's Journal	Lgd. Artifact	R
721	IN5	166	2	\N	\N	\N	\N	\N	\N	Incorrigible Youths	Creature	U
716	IN5	161	1	\N	\N	\N	\N	\N	\N	Gibbering Fiend	Creature	U
732	IN5	177	3	\N	\N	\N	\N	\N	\N	Rush of Adrenaline	Instant	C
712	IN5	157	1	\N	\N	\N	\N	\N	\N	Flameblade Angel	Creature	R
766	IN5	211	2	\N	\N	\N	\N	\N	\N	Howlpack Resurgence	Enchantment	U
792	IN5	237	3	\N	\N	\N	\N	\N	\N	Vessel of Nascency	Enchantment	C
795	IN5	240	2	\N	\N	\N	\N	\N	\N	Weirding Wood	Enchantment	U
786	IN5	231	4	\N	\N	\N	\N	\N	\N	Stoic Builder	Creature	C
775	IN5	220	2	\N	\N	\N	\N	\N	\N	Obsessive Skinner	Creature	U
770	IN5	215	1	\N	\N	\N	\N	\N	\N	Lambholt Pacifist // Lambholt Butcher	Creature	U
783	IN5	228	1	\N	\N	\N	\N	\N	\N	Silverfur Partisan	Creature	R
785	IN5	230	1	\N	\N	\N	\N	\N	\N	Soul Swallower	Creature	R
797	IN5	242	1	\N	\N	\N	\N	\N	\N	Anguished Unmaking	Instant	R
768	IN5	213	3	\N	\N	\N	\N	\N	\N	Intrepid Provisioner	Creature	C
788	IN5	233	0	\N	\N	\N	\N	\N	\N	Tireless Tracker	Creature	R
790	IN5	235	0	\N	\N	\N	\N	\N	\N	Ulvenwald Hydra	Creature	M
727	IN5	172	3	\N	\N	\N	\N	\N	\N	Magmatic Chasm	Sorcery	C
773	IN5	218	3	\N	\N	\N	\N	\N	\N	Moldgraf Scavenger	Creature	C
799	IN5	244	0	\N	\N	\N	\N	\N	\N	Fevered Visions	Enchantment	R
801	IN5	246	0	\N	\N	\N	\N	\N	\N	Invocation of Saint Traft	Enchantment	R
803	IN5	248	0	\N	\N	\N	\N	\N	\N	Olivia, Mobilized for War	Lgd. Creature	M
805	IN5	250	0	\N	\N	\N	\N	\N	\N	Sigarda, Heron's Grace	Lgd. Creature	M
807	IN5	252	0	\N	\N	\N	\N	\N	\N	Brain in a Jar	Artifact	R
809	IN5	254	0	\N	\N	\N	\N	\N	\N	Epitaph Golem	Artifact Creature	U
811	IN5	256	0	\N	\N	\N	\N	\N	\N	Harvest Hand // Scrounged Scythe	Artifact Creature	U
36564	ISD	172	4	\N	\N	\N	\N	t	\N	Bramblecrush	Sorcery	U
814	IN5	259	0	\N	\N	\N	\N	\N	\N	Murderer's Axe	Artifact	U
816	IN5	261	0	\N	\N	\N	\N	\N	\N	Runaway Carriage	Artifact Creature	U
818	IN5	263	0	\N	\N	\N	\N	\N	\N	Skeleton Key	Artifact	U
780	IN5	225	1	\N	\N	\N	\N	\N	\N	Sage of Ancient Lore // Werewolf of Ancient Hunger	Creature	R
1290	MAO	179	1	\N	\N	\N	\N	\N	\N	The Great Aurora	Sorcery	M
1397	AMO	14	0	\N	\N	\N	\N	\N	\N	Gideon of the Trials	Lgd. Planeswalker	M
1396	AMO	13	4	\N	\N	\N	\N	\N	\N	Forsake the Worldly	Instant	C
1404	AMO	21	0	\N	\N	\N	\N	\N	\N	Oketra the True	Lgd. Creature	M
1407	AMO	24	0	\N	\N	\N	\N	\N	\N	Regal Caracal	Creature	R
1409	AMO	26	3	\N	\N	\N	\N	\N	\N	Rhet-Crop Spearmaster	Creature	C
27563	DGM	4	0	t	\N	\N	\N	\N	\N	Maze Sentinel	Creature	C
1412	AMO	29	3	\N	\N	\N	\N	\N	\N	Sparring Mummy	Creature	C
1414	AMO	31	3	\N	\N	\N	\N	\N	\N	Tah-Crop Elite	Creature	C
778	IN5	223	3	\N	\N	\N	\N	\N	\N	Rabid Bite	Sorcery	C
1416	AMO	33	1	\N	\N	\N	\N	\N	\N	Time to Reflect	Instant	U
1418	AMO	35	1	\N	\N	\N	\N	\N	\N	Trueheart Duelist	Creature	U
1420	AMO	37	2	\N	\N	\N	\N	\N	\N	Vizier of Deferment	Creature	U
1423	AMO	40	3	\N	\N	\N	\N	\N	\N	Ancient Crab	Creature	C
1425	AMO	42	0	\N	\N	\N	\N	\N	\N	As Foretold	Enchantment	M
1428	AMO	45	3	\N	\N	\N	\N	\N	\N	Cartouche of Knowledge	Enchantment	C
1431	AMO	48	1	\N	\N	\N	\N	\N	\N	Cryptic Serpent	Creature	U
1432	AMO	49	1	\N	\N	\N	\N	\N	\N	Curator of Mysteries	Creature	R
1435	AMO	52	4	\N	\N	\N	\N	\N	\N	Essence Scatter	Instant	C
1438	AMO	55	1	\N	\N	\N	\N	\N	\N	Glyph Keeper	Creature	R
27583	CON	8	0	t	\N	\N	\N	\N	\N	Gleam of Resistance	Instant	C
1440	AMO	57	3	\N	\N	\N	\N	\N	\N	Hieroglyphic Illumination	Instant	C
1443	AMO	60	2	\N	\N	\N	\N	\N	\N	Labyrinth Guardian	Creature	U
1447	AMO	64	2	\N	\N	\N	\N	\N	\N	Open into Wonder	Sorcery	U
27593	GPT	6	0	t	\N	\N	\N	\N	\N	Ghostway	Instant	R
27552	BOK	3	1	t	\N	\N	\N	\N	\N	Faithful Squire // Kaiso, Memory of Loyalty	Creature	U
1450	AMO	67	1	\N	\N	\N	\N	\N	\N	Sacred Excavation	Sorcery	U
1452	AMO	69	3	\N	\N	\N	\N	\N	\N	Seeker of Insight	Creature	C
1454	AMO	71	4	\N	\N	\N	\N	\N	\N	Slither Blade	Creature	C
1455	AMO	72	4	\N	\N	\N	\N	\N	\N	Tah-Crop Skirmisher	Creature	C
1457	AMO	74	0	\N	\N	\N	\N	\N	\N	Vizier of Many Faces	Creature	R
1458	AMO	75	1	\N	\N	\N	\N	\N	\N	Vizier of Tumbling Sands	Creature	U
1462	AMO	79	1	\N	\N	\N	\N	\N	\N	Baleful Ammit	Creature	U
1465	AMO	82	1	\N	\N	\N	\N	\N	\N	Bontu the Glorified	Lgd. Creature	M
1469	AMO	86	0	\N	\N	\N	\N	\N	\N	Dispossess	Sorcery	R
1508	AMO	125	0	\N	\N	\N	\N	\N	\N	Combat Celebrant	Creature	M
1521	AMO	138	0	\N	\N	\N	\N	\N	\N	Heart-Piercer Manticore	Creature	R
2642	ZER	61	1	\N	\N	\N	\N	\N	\N	Inscription of Insight	Sorcery	R
2705	ZER	124	1	\N	\N	\N	\N	\N	\N	Shadows' Verdict	Sorcery	R
4161	BFZ	198	0	\N	\N	\N	\N	\N	\N	Woodland Wanderer	Creature	R
4165	BFZ	202	0	\N	\N	\N	\N	\N	\N	Dust Stalker	Creature	R
2444	OAT	47	7	\N	\N	\N	\N	\N	\N	Slip Through Space	Sorcery	C
2447	OAT	50	8	\N	\N	\N	\N	\N	\N	Ancient Crab	Creature	C
2462	OAT	65	4	\N	\N	\N	\N	\N	\N	Umara Entangler	Creature	C
2463	OAT	66	2	\N	\N	\N	\N	\N	\N	Unity of Purpose	Instant	U
2522	OAT	125	2	\N	\N	\N	\N	\N	\N	Vile Redeemer	Creature	R
2527	OAT	130	8	\N	\N	\N	\N	\N	\N	Elemental Uprising	Instant	C
32786	CHK	248	2	\N	\N	\N	\N	t	\N	Venerable Kumo	Creature	C
37620	BRO	14	0	t	\N	\N	\N	\N	\N	Loran's Escape	Instant	C
2534	OAT	137	4	\N	\N	\N	\N	\N	\N	Netcaster Spider	Creature	C
2068	MIB	1	1	t	\N	\N	\N	\N	\N	Accorder Paladin	Creature	U
1467	AMO	84	0	\N	\N	\N	\N	\N	\N	Cruel Reality	Enchantment	M
1470	AMO	87	4	\N	\N	\N	\N	\N	\N	Doomed Dissenter	Creature	C
1472	AMO	89	4	\N	\N	\N	\N	\N	\N	Dune Beetle	Creature	C
1474	AMO	91	4	\N	\N	\N	\N	\N	\N	Festering Mummy	Creature	C
1477	AMO	94	1	\N	\N	\N	\N	\N	\N	Grim Strider	Creature	U
1479	AMO	96	1	\N	\N	\N	\N	\N	\N	Lay Bare the Heart	Sorcery	U
1480	AMO	97	0	\N	\N	\N	\N	\N	\N	Liliana, Death's Majesty	Lgd. Planeswalker	M
1481	AMO	98	1	\N	\N	\N	\N	\N	\N	Liliana's Mastery	Enchantment	R
1484	AMO	101	2	\N	\N	\N	\N	\N	\N	Nest of Scarabs	Enchantment	U
1485	AMO	102	4	\N	\N	\N	\N	\N	\N	Painful Lesson	Sorcery	C
1489	AMO	106	4	\N	\N	\N	\N	\N	\N	Scarab Feast	Instant	C
1491	AMO	108	2	\N	\N	\N	\N	\N	\N	Soulstinger	Creature	C
1493	AMO	110	1	\N	\N	\N	\N	\N	\N	Stir the Sands	Sorcery	U
1495	AMO	112	3	\N	\N	\N	\N	\N	\N	Trespasser's Curse	Enchantment	C
1500	AMO	117	5	\N	\N	\N	\N	\N	\N	Ahn-Crop Crasher	Creature	U
1502	AMO	119	4	\N	\N	\N	\N	\N	\N	Blazing Volley	Sorcery	C
1505	AMO	122	4	\N	\N	\N	\N	\N	\N	Brute Strength	Instant	C
1507	AMO	124	3	\N	\N	\N	\N	\N	\N	Cartouche of Zeal	Enchantment	C
1511	AMO	128	3	\N	\N	\N	\N	\N	\N	Desert Cerodon	Creature	C
27532	ARB	2	0	t	t	\N	\N	\N	\N	Aven Mimeomancer	Creature	R
1514	AMO	131	1	\N	\N	\N	\N	\N	\N	Flameblade Adept	Creature	U
1515	AMO	132	4	\N	\N	\N	\N	\N	\N	Fling	Instant	C
1518	AMO	135	3	\N	\N	\N	\N	\N	\N	Harsh Mentor	Creature	R
1522	AMO	139	3	\N	\N	\N	\N	\N	\N	Hyena Pack	Creature	C
1524	AMO	141	8	\N	\N	\N	\N	\N	\N	Magma Spray	Instant	C
1526	AMO	143	3	\N	\N	\N	\N	\N	\N	Minotaur Sureshot	Creature	C
1529	AMO	146	4	\N	\N	\N	\N	\N	\N	Pathmaker Initiate	Creature	C
1531	AMO	148	4	\N	\N	\N	\N	\N	\N	Soul-Scar Mage	Creature	R
1532	AMO	149	0	\N	\N	\N	\N	\N	\N	Sweltering Suns	Sorcery	R
27540	GPT	1	0	t	\N	\N	\N	\N	\N	Absolver Thrull	Creature	C
1534	AMO	151	3	\N	\N	\N	\N	\N	\N	Tormenting Voice	Sorcery	C
27548	BOK	5	0	t	\N	\N	\N	\N	\N	Genju of the Fields	Enchantment	U
1536	AMO	153	2	\N	\N	\N	\N	\N	\N	Trueheart Twins	Creature	U
1540	AMO	157	4	\N	\N	\N	\N	\N	\N	Bitterblade Warrior	Creature	C
1541	AMO	158	4	\N	\N	\N	\N	\N	\N	Cartouche of Strength	Enchantment	C
1546	AMO	163	1	\N	\N	\N	\N	\N	\N	Defiant Greatmaw	Creature	U
1548	AMO	165	2	\N	\N	\N	\N	\N	\N	Exemplar of Strength	Creature	U
1551	AMO	168	3	\N	\N	\N	\N	\N	\N	Greater Sandwurm	Creature	C
1552	AMO	169	1	\N	\N	\N	\N	\N	\N	Hapatra's Mark	Instant	U
1554	AMO	171	3	\N	\N	\N	\N	\N	\N	Haze of Pollen	Instant	C
1556	AMO	173	3	\N	\N	\N	\N	\N	\N	Hooded Brawler	Creature	C
1560	AMO	177	4	\N	\N	\N	\N	\N	\N	Oashra Cultivator	Creature	C
1562	AMO	179	4	\N	\N	\N	\N	\N	\N	Pouncing Cheetah	Creature	C
1565	AMO	182	1	\N	\N	\N	\N	\N	\N	Rhonas the Indomitable	Lgd. Creature	M
1566	AMO	183	0	\N	\N	\N	\N	\N	\N	Sandwurm Convergence	Enchantment	R
1571	AMO	188	3	\N	\N	\N	\N	\N	\N	Spidery Grasp	Instant	C
1572	AMO	189	3	\N	\N	\N	\N	\N	\N	Stinging Shot	Instant	C
1575	AMO	192	1	\N	\N	\N	\N	\N	\N	Vizier of the Menagerie	Creature	M
83	IN1	83	1	\N	t	\N	\N	\N	\N	Wingcrafter	Creature	C
1577	AMO	194	1	\N	\N	\N	\N	\N	\N	Ahn-Crop Champion	Creature	U
1579	AMO	196	2	\N	\N	\N	\N	\N	\N	Bounty of the Luxa	Enchantment	R
27569	GPT	2	0	t	\N	\N	\N	\N	\N	Belfry Spirit	Creature	U
27589	ARB	11	0	t	t	\N	\N	\N	\N	Shield of the Righteous	Artifact	U
27599	GTC	6	0	t	\N	\N	\N	\N	\N	Blind Obedience	Enchantment	R
27579	CON	7	1	t	\N	\N	\N	\N	\N	Darklit Gargoyle	Artifact Creature	C
1582	AMO	199	1	\N	\N	\N	\N	\N	\N	Hapatra, Vizier of Poisons	Lgd. Creature	R
1585	AMO	202	1	\N	\N	\N	\N	\N	\N	Merciless Javelineer	Creature	U
1586	AMO	203	1	\N	\N	\N	\N	\N	\N	Neheb, the Worthy	Lgd. Creature	R
1588	AMO	205	0	\N	\N	\N	\N	\N	\N	Samut, Voice of Dissent	Lgd. Creature	M
1589	AMO	206	1	\N	\N	\N	\N	\N	\N	Shadowstorm Vizier	Creature	U
1590	AMO	207	0	\N	\N	\N	\N	\N	\N	Temmet, Vizier of Naktamun	Lgd. Creature	R
1592	AMO	209	1	\N	\N	\N	\N	\N	\N	Weaver of Currents	Creature	U
1593	AMO	210	0	\N	\N	\N	\N	\N	\N	Dusk // Dawn	Sorcery // Sorcery	R
1594	AMO	211	0	\N	\N	\N	\N	\N	\N	Commit // Memory	Instant // Sorcery	R
1595	AMO	212	0	\N	\N	\N	\N	\N	\N	Never // Return	Sorcery // Sorcery	R
1596	AMO	213	0	\N	\N	\N	\N	\N	\N	Insult // Injury	Sorcery // Sorcery	R
1598	AMO	215	2	\N	\N	\N	\N	\N	\N	Start // Finish	Instant // Sorcery	U
1600	AMO	217	1	\N	\N	\N	\N	\N	\N	Destined // Lead	Instant // Sorcery	U
1602	AMO	219	2	\N	\N	\N	\N	\N	\N	Spring // Mind	Sorcery // Instant	U
1603	AMO	220	0	\N	\N	\N	\N	\N	\N	Prepare // Fight	Instant // Sorcery	R
1605	AMO	222	0	\N	\N	\N	\N	\N	\N	Rags // Riches	Sorcery // Sorcery	R
1607	AMO	224	0	\N	\N	\N	\N	\N	\N	Heaven // Earth	Instant // Sorcery	R
1608	AMO	225	2	\N	\N	\N	\N	\N	\N	Bontu's Monument	Lgd. Artifact	U
1609	AMO	226	1	\N	\N	\N	\N	\N	\N	Edifice of Authority	Artifact	U
1611	AMO	228	1	\N	\N	\N	\N	\N	\N	Gate to the Afterlife	Artifact	U
1613	AMO	230	3	\N	\N	\N	\N	\N	\N	Honed Khopesh	Artifact	C
1616	AMO	233	2	\N	\N	\N	\N	\N	\N	Oketra's Monument	Lgd. Artifact	U
1617	AMO	234	1	\N	\N	\N	\N	\N	\N	Oracle's Vault	Artifact	R
1630	AMO	247	0	\N	\N	\N	\N	\N	\N	Scattered Groves	Land	R
1645	AMO	262	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
1653	AMO	270	0	\N	\N	\N	\N	\N	\N	Gideon, Martial Paragon	Lgd. Planeswalker	M
1655	AMO	272	0	\N	\N	\N	\N	\N	\N	Gideon's Resolve	Enchantment	R
1657	AMO	274	0	\N	\N	\N	\N	\N	\N	Stone Quarry	Land	C
1659	AMO	276	0	\N	\N	\N	\N	\N	\N	Desiccated Naga	Creature	U
1660	AMO	277	0	\N	\N	\N	\N	\N	\N	Liliana's Influence	Sorcery	R
1662	AMO	279	0	\N	\N	\N	\N	\N	\N	Foul Orchard	Land	C
1705	KLD	43	0	\N	\N	\N	\N	\N	\N	Ascendant Spirit	Snow Creature	R
1713	KLD	51	0	\N	\N	\N	\N	\N	\N	Cosmos Charger	Creature	R
2669	ZER	88	3	\N	\N	\N	\N	\N	\N	Zulaport Duelist	Creature	C
2737	ZER	156	1	\N	\N	\N	\N	\N	\N	Roiling Vortex	Enchantment	R
2531	OAT	134	6	\N	\N	\N	\N	\N	\N	Lead by Example	Instant	C
2070	MIB	3	0	t	\N	\N	\N	\N	\N	Banishment Decree	Instant	C
2080	MIB	13	1	t	\N	\N	\N	\N	\N	Master's Call	Instant	C
1618	AMO	235	0	\N	\N	\N	\N	\N	\N	Pyramid of the Pantheon	Artifact	R
1623	AMO	240	1	\N	\N	\N	\N	\N	\N	Cascading Cataracts	Land	R
1626	AMO	243	1	\N	\N	\N	\N	\N	\N	Fetid Pools	Land	R
1627	AMO	244	1	\N	\N	\N	\N	\N	\N	Grasping Dunes	Land	U
1628	AMO	245	0	\N	\N	\N	\N	\N	\N	Irrigated Farmland	Land	R
1631	AMO	248	0	\N	\N	\N	\N	\N	\N	Sheltered Thicket	Land	R
1632	AMO	249	8	\N	\N	\N	\N	\N	\N	Sunscorched Desert	Land	C
1635	AMO	252	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
1637	AMO	254	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
1640	AMO	257	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
1643	AMO	260	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
1647	AMO	264	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
1649	AMO	266	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
1650	AMO	267	2	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
1654	AMO	271	0	\N	\N	\N	\N	\N	\N	Companion of the Trials	Creature	U
1656	AMO	273	0	\N	\N	\N	\N	\N	\N	Graceful Cat	Creature	C
1658	AMO	275	0	\N	\N	\N	\N	\N	\N	Liliana, Death Wielder	Lgd. Planeswalker	M
1661	AMO	278	0	\N	\N	\N	\N	\N	\N	Tattered Mummy	Creature	C
1771	KLD	109	0	\N	\N	\N	\N	\N	\N	Skemfar Avenger	Creature	R
1776	KLD	114	0	\N	\N	\N	\N	\N	\N	Valki, God of Lies // Tibalt, Cosmic Impostor	Lgd. Creature	M
1777	KLD	115	0	\N	\N	\N	\N	\N	\N	Varragoth, Bloodsky Sire	Lgd. Creature	R
1793	KLD	131	0	\N	\N	\N	\N	\N	\N	Dragonkin Berserker	Creature	R
2757	ZER	176	2	\N	\N	\N	\N	\N	\N	Wayward Guide-Beast	Creature	R
3969	BFZ	6	1	\N	\N	\N	\N	\N	\N	Desolation Twin	Creature	R
4372	WOS	135	2	\N	\N	\N	\N	\N	\N	Jaya, Venerated Firemage	Lgd. Planeswalker	U
4374	WOS	137	1	\N	\N	\N	\N	\N	\N	Krenko, Tin Street Kingpin	Lgd. Creature	R
4378	WOS	141	3	\N	\N	\N	\N	\N	\N	Raging Kronch	Creature	C
4380	WOS	143	1	\N	\N	\N	\N	\N	\N	Sarkhan the Masterless	Lgd. Planeswalker	R
4383	WOS	146	1	\N	\N	\N	\N	\N	\N	Tibalt, Rakish Instigator	Lgd. Planeswalker	U
4384	WOS	147	2	\N	\N	\N	\N	\N	\N	Tibalt's Rager	Creature	U
4386	WOS	149	4	\N	\N	\N	\N	\N	\N	Arboreal Grazer	Creature	C
4388	WOS	151	4	\N	\N	\N	\N	\N	\N	Arlinn's Wolf	Creature	C
4390	WOS	153	4	\N	\N	\N	\N	\N	\N	Band Together	Instant	C
4394	WOS	157	1	\N	\N	\N	\N	\N	\N	Challenger Troll	Creature	U
4395	WOS	158	3	\N	\N	\N	\N	\N	\N	Courage in Crisis	Sorcery	C
4399	WOS	162	4	\N	\N	\N	\N	\N	\N	Giant Growth	Instant	C
4400	WOS	163	0	\N	\N	\N	\N	\N	\N	God-Eternal Rhonas	Lgd. Creature	M
4404	WOS	167	2	\N	\N	\N	\N	\N	\N	Mowu, Loyal Companion	Lgd. Creature	U
4406	WOS	169	0	\N	\N	\N	\N	\N	\N	Nissa, Who Shakes the World	Lgd. Planeswalker	R
4407	WOS	170	2	\N	\N	\N	\N	\N	\N	Nissa's Triumph	Sorcery	U
4412	WOS	175	4	\N	\N	\N	\N	\N	\N	Return to Nature	Instant	C
4415	WOS	178	2	\N	\N	\N	\N	\N	\N	Storm the Citadel	Sorcery	U
4416	WOS	179	3	\N	\N	\N	\N	\N	\N	Thundering Ceratok	Creature	C
4418	WOS	181	1	\N	\N	\N	\N	\N	\N	Vivien's Arkbow	Lgd. Artifact	R
4420	WOS	183	4	\N	\N	\N	\N	\N	\N	Wardscale Crocodile	Creature	C
4423	WOS	186	0	\N	\N	\N	\N	\N	\N	Bioessence Hydra	Creature	R
4425	WOS	188	1	\N	\N	\N	\N	\N	\N	Cruel Celebrant	Creature	U
4428	WOS	191	1	\N	\N	\N	\N	\N	\N	Domri, Anarch of Bolas	Lgd. Planeswalker	R
4430	WOS	193	2	\N	\N	\N	\N	\N	\N	Dovin's Veto	Instant	U
4433	WOS	196	1	\N	\N	\N	\N	\N	\N	Enter the God-Eternals	Sorcery	R
4436	WOS	199	1	\N	\N	\N	\N	\N	\N	Heartwarming Redemption	Instant	U
4438	WOS	201	2	\N	\N	\N	\N	\N	\N	Invade the City	Sorcery	U
4441	WOS	204	1	\N	\N	\N	\N	\N	\N	Mayhem Devil	Creature	U
4443	WOS	206	2	\N	\N	\N	\N	\N	\N	Neoform	Sorcery	U
4445	WOS	208	0	\N	\N	\N	\N	\N	\N	Niv-Mizzet Reborn	Lgd. Creature	M
4447	WOS	210	1	\N	\N	\N	\N	\N	\N	Pledge of Unity	Instant	U
4448	WOS	211	0	\N	\N	\N	\N	\N	\N	Ral, Storm Conduit	Lgd. Planeswalker	R
4452	WOS	215	1	\N	\N	\N	\N	\N	\N	Rubblebelt Rioters	Creature	U
4454	WOS	217	1	\N	\N	\N	\N	\N	\N	Sorin, Vengeful Bloodlord	Lgd. Planeswalker	R
4457	WOS	220	1	\N	\N	\N	\N	\N	\N	Tamiyo, Collector of Tales	Lgd. Planeswalker	R
4458	WOS	221	0	\N	\N	\N	\N	\N	\N	Teferi, Time Raveler	Lgd. Planeswalker	R
4461	WOS	224	1	\N	\N	\N	\N	\N	\N	Tolsimir, Friend to Wolves	Lgd. Creature	R
4464	WOS	227	2	\N	\N	\N	\N	\N	\N	Angrath, Captain of Chaos	Lgd. Planeswalker	U
4466	WOS	229	0	\N	\N	\N	\N	\N	\N	Dovin, Hand of Control	Lgd. Planeswalker	U
4467	WOS	230	2	\N	\N	\N	\N	\N	\N	Huatli, the Sun's Heart	Lgd. Planeswalker	U
4469	WOS	232	1	\N	\N	\N	\N	\N	\N	Kiora, Behemoth Beckoner	Lgd. Planeswalker	U
4473	WOS	236	2	\N	\N	\N	\N	\N	\N	Vraska, Swarm's Eminence	Lgd. Planeswalker	U
4476	WOS	239	3	\N	\N	\N	\N	\N	\N	Guild Globe	Artifact	C
4478	WOS	241	3	\N	\N	\N	\N	\N	\N	Mana Geode	Artifact	C
4480	WOS	243	4	\N	\N	\N	\N	\N	\N	Saheeli's Silverwing	Artifact Creature	C
4483	WOS	246	3	\N	\N	\N	\N	\N	\N	Gateway Plaza	Land	C
4486	WOS	249	1	\N	\N	\N	\N	\N	\N	Mobilized District	Land	R
4489	WOS	252	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
4491	WOS	254	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
4494	WOS	257	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
4497	WOS	260	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
4499	WOS	262	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
4502	WOS	265	0	\N	\N	\N	\N	\N	\N	Gideon, the Oathsworn	Lgd. Planeswalker	M
4504	WOS	267	0	\N	\N	\N	\N	\N	\N	Gideon's Battle Cry	Sorcery	R
4507	WOS	270	0	\N	\N	\N	\N	\N	\N	Jace, Arcane Strategist	Lgd. Planeswalker	M
4509	WOS	272	0	\N	\N	\N	\N	\N	\N	Jace's Projection	Creature	U
4512	WOS	275	0	\N	\N	\N	\N	\N	\N	Tezzeret, Master of the Bridge	Lgd. Planeswalker	M
27564	EVE	4	0	t	\N	\N	\N	\N	\N	Endless Horizons	Enchantment	R
27584	ARB	9	0	t	t	\N	\N	\N	\N	Offering to Asha	Instant	C
27553	CON	3	1	t	\N	\N	\N	\N	\N	Aven Squire	Creature	C
27543	MOR	1	1	t	\N	\N	\N	\N	\N	Ballyrush Banneret	Creature	C
634	IN5	79	1	\N	\N	\N	\N	\N	\N	Pore Over the Pages	Sorcery	U
667	IN5	112	3	\N	\N	\N	\N	\N	\N	Ghoulcaller's Accomplice	Creature	C
563	IN5	8	2	\N	\N	\N	\N	\N	\N	Bygone Bishop	Creature	R
27574	BOK	6	1	t	\N	\N	\N	\N	\N	Heart of Light	Enchantment	C
37621	BRO	15	0	t	\N	\N	\N	\N	\N	Mass Production	Sorcery	U
2071	MIB	4	1	t	\N	\N	\N	\N	\N	Choking Fumes	Instant	U
2082	MIB	15	1	t	\N	\N	\N	\N	\N	Phyrexian Rebirth	Sorcery	R
822	IN5	267	0	\N	\N	\N	\N	\N	\N	True-Faith Censer	Artifact	C
824	IN5	269	0	\N	\N	\N	\N	\N	\N	Wild-Field Scarecrow	Artifact Creature	U
827	IN5	272	0	\N	\N	\N	\N	\N	\N	Foreboding Ruins	Land	R
832	IN5	277	0	\N	\N	\N	\N	\N	\N	Highland Lake	Land	U
835	IN5	280	0	\N	\N	\N	\N	\N	\N	Warped Landscape	Land	C
840	IN5	285	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
843	IN5	288	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
848	IN5	293	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
851	IN5	296	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
1667	KLD	5	3	\N	\N	\N	\N	\N	\N	Bound in Gold	Enchantment	C
1956	KLD	294	0	\N	\N	\N	\N	\N	\N	Starnheim Unleashed	Sorcery	M
1957	KLD	295	0	\N	\N	\N	\N	\N	\N	Alrund's Epiphany	Sorcery	M
1958	KLD	296	0	\N	\N	\N	\N	\N	\N	Haunting Voyage	Sorcery	M
1960	KLD	298	0	\N	\N	\N	\N	\N	\N	Battle Mammoth	Creature	M
1961	KLD	299	0	\N	\N	\N	\N	\N	\N	Halvar, God of Battle // Sword of the Realms	Lgd. Creature	M
1962	KLD	300	0	\N	\N	\N	\N	\N	\N	Reidane, God of the Worthy // Valkmira, Protector's Shield	Lgd. Creature	R
1964	KLD	302	0	\N	\N	\N	\N	\N	\N	Alrund, God of the Cosmos // Hakka, Whispering Raven	Lgd. Creature	M
1965	KLD	303	0	\N	\N	\N	\N	\N	\N	Cosima, God of the Voyage // The Omenkeel	Lgd. Creature	R
1966	KLD	304	0	\N	\N	\N	\N	\N	\N	Inga Rune-Eyes	Lgd. Creature	U
1968	KLD	306	0	\N	\N	\N	\N	\N	\N	Egon, God of Death // Throne of Death	Lgd. Creature	R
1969	KLD	307	0	\N	\N	\N	\N	\N	\N	Tergrid, God of Fright // Tergrid's Lantern	Lgd. Creature	R
1970	KLD	308	0	\N	\N	\N	\N	\N	\N	Valki, God of Lies // Tibalt, Cosmic Impostor	Lgd. Creature	M
1972	KLD	310	0	\N	\N	\N	\N	\N	\N	Arni Brokenbrow	Lgd. Creature	R
1973	KLD	311	0	\N	\N	\N	\N	\N	\N	Birgi, God of Storytelling // Harnfel, Horn of Bounty	Lgd. Creature	R
1974	KLD	312	0	\N	\N	\N	\N	\N	\N	Magda, Brazen Outlaw	Lgd. Creature	R
1975	KLD	313	0	\N	\N	\N	\N	\N	\N	Toralf, God of Fury // Toralf's Hammer	Lgd. Creature	M
1976	KLD	314	0	\N	\N	\N	\N	\N	\N	Esika, God of the Tree // The Prismatic Bridge		M
1977	KLD	315	0	\N	\N	\N	\N	\N	\N	Esika's Chariot	Lgd. Artifact	R
1978	KLD	316	0	\N	\N	\N	\N	\N	\N	Fynn, the Fangbearer	Lgd. Creature	U
1980	KLD	318	0	\N	\N	\N	\N	\N	\N	Kolvori, God of Kinship // The Ringhart Crest	Lgd. Creature	R
1982	KLD	320	0	\N	\N	\N	\N	\N	\N	Vorinclex, Monstrous Raider	Lgd. Creature	M
1983	KLD	321	0	\N	\N	\N	\N	\N	\N	Aegar, the Freezing Flame	Lgd. Creature	U
1984	KLD	322	0	\N	\N	\N	\N	\N	\N	Firja, Judge of Valor	Lgd. Creature	U
1985	KLD	323	0	\N	\N	\N	\N	\N	\N	Harald, King of Skemfar	Lgd. Creature	U
1986	KLD	324	0	\N	\N	\N	\N	\N	\N	Kardur, Doomscourge	Lgd. Creature	U
1987	KLD	325	0	\N	\N	\N	\N	\N	\N	Koll, the Forgemaster	Lgd. Creature	U
1988	KLD	326	0	\N	\N	\N	\N	\N	\N	Koma, Cosmos Serpent	Lgd. Creature	M
1989	KLD	327	0	\N	\N	\N	\N	\N	\N	Maja, Bretagard Protector	Lgd. Creature	U
1990	KLD	328	0	\N	\N	\N	\N	\N	\N	Moritte of the Frost	Lgd. Snow Creature	U
1991	KLD	329	0	\N	\N	\N	\N	\N	\N	Narfi, Betrayer King	Lgd. Snow Creature	U
1992	KLD	330	0	\N	\N	\N	\N	\N	\N	Sarulf, Realm Eater	Lgd. Creature	R
1993	KLD	331	0	\N	\N	\N	\N	\N	\N	Svella, Ice Shaper	Lgd. Snow Creature	U
1994	KLD	332	0	\N	\N	\N	\N	\N	\N	Vega, the Watcher	Lgd. Creature	U
1995	KLD	333	0	\N	\N	\N	\N	\N	\N	|lornScs DuJhetmiserc.	|MewkfuDs fyrs,psewtr.	M
1996	KLD	334	0	\N	\N	\N	\N	\N	\N	Doomskar	Sorcery	R
1997	KLD	335	0	\N	\N	\N	\N	\N	\N	Glorious Protector	Creature	R
1998	KLD	336	0	\N	\N	\N	\N	\N	\N	Rally the Ranks	Enchantment	R
3977	BFZ	14	3	\N	\N	\N	\N	\N	\N	Titan's Presence	Instant	U
3979	BFZ	16	1	\N	\N	\N	\N	\N	\N	Ulamog's Despoiler	Creature	U
3982	BFZ	19	4	\N	\N	\N	\N	\N	\N	Angelic Gift	Enchantment	C
3984	BFZ	21	4	\N	\N	\N	\N	\N	\N	Courier Griffin	Creature	C
3986	BFZ	23	1	\N	\N	\N	\N	\N	\N	Encircling Fissure	Instant	U
3989	BFZ	26	0	\N	\N	\N	\N	\N	\N	Felidar Sovereign	Creature	R
3992	BFZ	29	1	\N	\N	\N	\N	\N	\N	Gideon, Ally of Zendikar	Lgd. Planeswalker	M
3995	BFZ	32	4	\N	\N	\N	\N	\N	\N	Inspired Charge	Instant	C
3997	BFZ	34	1	\N	\N	\N	\N	\N	\N	Kor Bladewhirl	Creature	U
3999	BFZ	36	1	\N	\N	\N	\N	\N	\N	Kor Entanglers	Creature	U
4002	BFZ	39	4	\N	\N	\N	\N	\N	\N	Makindi Patrol	Creature	C
4004	BFZ	41	3	\N	\N	\N	\N	\N	\N	Ondu Rising	Sorcery	U
4006	BFZ	43	1	\N	\N	\N	\N	\N	\N	Quarantine Field	Enchantment	M
4019	BFZ	56	2	\N	\N	\N	\N	\N	\N	Cryptic Cruiser	Creature	U
4022	BFZ	59	2	\N	\N	\N	\N	\N	\N	Horribly Awry	Instant	U
4024	BFZ	61	3	\N	\N	\N	\N	\N	\N	Mist Intruder	Creature	C
4027	BFZ	64	2	\N	\N	\N	\N	\N	\N	Ruination Guide	Creature	U
4030	BFZ	67	2	\N	\N	\N	\N	\N	\N	Tide Drifter	Creature	U
4032	BFZ	69	4	\N	\N	\N	\N	\N	\N	Anticipate	Instant	C
4035	BFZ	72	4	\N	\N	\N	\N	\N	\N	Clutch of Currents	Sorcery	C
4037	BFZ	74	4	\N	\N	\N	\N	\N	\N	Coralhelm Guide	Creature	C
4042	BFZ	79	1	\N	\N	\N	\N	\N	\N	Halimar Tidecaller	Creature	U
4045	BFZ	82	1	\N	\N	\N	\N	\N	\N	Retreat to Coralhelm	Enchantment	U
27534	BOK	2	0	t	\N	\N	\N	\N	\N	Empty-Shrine Kannushi	Creature	U
27544	SOK	1	0	t	\N	\N	\N	\N	\N	Aether Shockwave	Instant	U
27554	DKA	3	0	t	\N	\N	\N	\N	\N	Break of Day	Instant	C
27557	GPT	3	0	t	\N	\N	\N	\N	\N	Benediction of Moons	Sorcery	C
27567	DGM	2	0	t	\N	\N	\N	\N	\N	Haazda Snare Squad	Creature	C
845	IN5	290	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
27597	WWK	6	0	t	\N	\N	\N	\N	\N	Guardian Zendikon	Enchantment	C
27607	ARB	12	0	t	t	\N	\N	\N	\N	Sovereigns of Lost Alara	Creature	R
27617	SOK	12	0	t	\N	\N	\N	\N	\N	Hand of Honor	Creature	U
27637	SOK	2	0	t	\N	\N	\N	\N	\N	Araba Mothrider	Creature	C
27587	ARB	10	1	t	t	\N	\N	\N	\N	Sanctum Plowbeast	Artifact Creature	C
829	IN5	274	1	\N	\N	\N	\N	\N	\N	Fortified Village	Land	R
836	IN5	281	1	\N	\N	\N	\N	\N	\N	Westvale Abbey // Ormendahl, Profane Prince	Land // Lgd. Creature	R
27659	SOK	10	3	t	\N	\N	\N	\N	\N	Ghost-Lit Redeemer	Creature	U
27647	ALA	2	1	t	\N	\N	\N	\N	\N	Angel's Herald	Creature	U
37622	BRO	16	0	t	\N	\N	\N	\N	\N	Meticulous Excavation	Enchantment	U
1665	KLD	3	3	\N	\N	\N	\N	\N	\N	Battlefield Raptor	Creature	C
4049	BFZ	86	2	\N	\N	\N	\N	\N	\N	Tightening Coils	Enchantment	C
4052	BFZ	89	1	\N	\N	\N	\N	\N	\N	Windrider Patrol	Creature	U
4055	BFZ	92	3	\N	\N	\N	\N	\N	\N	Dominator Drone	Creature	C
4058	BFZ	95	3	\N	\N	\N	\N	\N	\N	Mind Raker	Creature	C
2112	MIB	45	1	\N	\N	t	\N	\N	\N	Horrifying Revelation	Sorcery	C
2116	MIB	49	0	\N	\N	t	\N	\N	\N	Phyresis	Enchantment	C
2119	MIB	52	1	\N	\N	t	\N	\N	\N	Phyrexian Vatmother	Creature	R
2123	MIB	56	0	\N	\N	t	\N	\N	\N	Spread the Sickness	Sorcery	C
2130	MIB	63	1	\N	\N	\N	t	\N	\N	Gnathosaur	Creature	C
2132	MIB	65	0	\N	\N	\N	t	\N	\N	Hellkite Igniter	Creature	R
2136	MIB	69	0	\N	\N	\N	t	\N	\N	Kuldotha Flamefiend	Creature	U
2137	MIB	70	0	\N	\N	\N	t	\N	\N	Kuldotha Ringleader	Creature	C
2140	MIB	73	1	\N	\N	\N	t	\N	\N	Rally the Forces	Instant	C
2146	MIB	79	0	\N	\N	\N	\N	t	\N	Fangren Marauder	Creature	C
2150	MIB	83	0	\N	\N	\N	\N	t	\N	Melira's Keepers	Creature	U
2175	MIB	108	1	\N	\N	\N	\N	\N	\N	Gust-Skimmer	Artifact Creature	C
2177	MIB	110	1	\N	\N	\N	\N	\N	\N	Ichor Wellspring	Artifact	C
2182	MIB	115	0	\N	\N	\N	\N	\N	\N	Mortarpod	Artifact	U
2184	MIB	117	0	\N	\N	\N	\N	\N	\N	Myr Turbine	Artifact	R
2188	MIB	121	1	\N	\N	\N	\N	\N	\N	Phyrexian Juggernaut	Artifact Creature	U
2192	MIB	125	0	\N	\N	\N	\N	\N	\N	Plague Myr	Artifact Creature	U
2195	MIB	128	1	\N	\N	\N	\N	\N	\N	Rusted Slasher	Artifact Creature	C
2197	MIB	130	1	\N	\N	\N	\N	\N	\N	Shriekhorn	Artifact	C
2200	MIB	133	1	\N	\N	\N	\N	\N	\N	Skinwing	Artifact	U
2202	MIB	135	1	\N	\N	\N	\N	\N	\N	Spin Engine	Artifact Creature	C
2204	MIB	137	1	\N	\N	\N	\N	\N	\N	Strandwalker	Artifact	U
2206	MIB	139	1	\N	\N	\N	\N	\N	\N	Tangle Hulk	Artifact Creature	C
2209	MIB	142	1	\N	\N	\N	\N	\N	\N	Training Drone	Artifact Creature	C
2210	MIB	143	1	\N	\N	\N	\N	\N	\N	Viridian Claw	Artifact	U
2212	MIB	145	1	\N	\N	\N	\N	\N	\N	Inkmoth Nexus	Land	R
2220	MIB	153	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
854	GOR	2	1	\N	\N	\N	\N	\N	\N	Bounty Agent	Creature	R
861	GOR	9	1	\N	\N	\N	\N	\N	\N	Demotion	Enchantment	U
4062	BFZ	99	1	\N	\N	\N	\N	\N	\N	Smothering Abomination	Creature	R
27535	ARB	3	0	t	t	\N	\N	\N	\N	Ethercaste Knight	Artifact Creature	C
27545	WWK	1	0	t	\N	\N	\N	\N	\N	Admonition Angel	Creature	M
27555	DGM	3	0	t	\N	\N	\N	\N	\N	Lyev Decree	Sorcery	C
27565	CON	2	0	t	\N	\N	\N	\N	\N	Asha's Favor	Enchantment	C
672	IN5	117	3	\N	\N	\N	\N	\N	\N	Hound of the Farbogs	Creature	C
27595	MOR	6	0	t	\N	\N	\N	\N	\N	Changeling Sentinel	Creature	C
27605	RAV	6	0	t	\N	\N	\N	\N	\N	Caregiver	Creature	C
27881	SOK	21	1	t	\N	\N	\N	\N	\N	Nikko-Onna	Creature	U
27635	ALA	4	0	t	\N	\N	\N	\N	\N	Angelsong	Instant	C
27625	SOK	4	1	t	\N	\N	\N	\N	\N	Charge Across the Araba	Instant	U
27655	EVE	10	0	t	\N	\N	\N	\N	\N	Light from Within	Enchantment	R
27675	SOK	11	0	t	\N	\N	\N	\N	\N	Hail of Arrows	Instant	U
27705	ROE	3	0	\N	\N	\N	\N	\N	\N	Eldrazi Conscription	Tribal Enchantment	R
36657	NEO	1	0	t	\N	\N	\N	\N	\N	Ancestral Katana	Artifact	C
27725	DKA	7	0	t	\N	\N	\N	\N	\N	Faith's Shield	Instant	U
27735	ISD	7	0	t	\N	\N	\N	\N	\N	Chapel Geist	Creature	C
27745	DKA	13	0	t	\N	\N	\N	\N	\N	Loyal Cathar // Unhallowed Cathar	Creature	C
27755	ISD	13	0	t	\N	\N	\N	\N	\N	Elite Inquisitor	Creature	R
27765	GTC	8	0	t	\N	\N	\N	\N	\N	Court Street Denizen	Creature	C
27775	DKA	14	0	t	\N	\N	\N	\N	\N	Midnight Guard	Creature	C
27805	GPT	16	0	t	\N	\N	\N	\N	\N	Sinstriker's Will	Enchantment	U
27815	DGM	17	0	\N	t	\N	\N	\N	\N	Runner's Bane	Enchantment	C
27845	SOK	18	0	t	\N	\N	\N	\N	\N	Kiyomaro, First to Stand	Lgd. Creature	R
27627	CHK	4	1	t	\N	\N	\N	\N	\N	Call to Glory	Instant	C
27865	EVE	20	0	\N	t	\N	\N	\N	\N	Dream Thief	Creature	C
27875	DKA	21	0	t	\N	\N	\N	\N	\N	Silverclaw Griffin	Creature	C
27895	DKA	23	0	t	\N	\N	\N	\N	\N	Sudden Disappearance	Sorcery	R
27905	EVE	24	0	\N	t	\N	\N	\N	\N	Indigo Faerie	Creature	U
27911	ARB	26	0	\N	t	t	\N	\N	\N	Mind Funeral	Sorcery	U
27921	BOK	28	0	t	\N	\N	\N	\N	\N	Ward of Piety	Enchantment	U
27925	ARB	30	0	\N	t	t	\N	\N	\N	Soulquake	Sorcery	R
27935	MRD	12	0	t	\N	\N	\N	\N	\N	Loxodon Mender	Creature	C
27941	GPT	25	0	\N	t	\N	\N	\N	\N	Frazzle	Instant	U
27951	SOK	23	0	t	\N	\N	\N	\N	\N	Presence of the Wise	Sorcery	U
27955	DGM	28	0	\N	\N	t	\N	\N	\N	Rakdos Drake	Creature	C
27961	LRW	11	0	t	\N	\N	\N	\N	\N	Crib Swap	Tribal Instant	U
27965	DKA	26	0	t	\N	\N	\N	\N	\N	Thraben Heretic	Creature	U
27981	SOK	24	0	t	\N	\N	\N	\N	\N	Promise of Bunrei	Enchantment	R
27985	ISD	16	0	t	\N	\N	\N	\N	\N	Gallows Warden	Creature	U
27971	ROE	9	1	\N	\N	\N	\N	\N	\N	Pathrazer of Ulamog	Creature	U
27825	MRD	1	1	t	\N	\N	\N	\N	\N	Altar's Light	Instant	U
27945	SHM	4	1	t	\N	\N	\N	\N	\N	Barrenton Medic	Creature	C
2218	MIB	151	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
27665	LRW	10	1	t	\N	\N	\N	\N	\N	Cloudgoat Ranger	Creature	U
27891	ARB	23	1	\N	t	t	\N	\N	\N	Kathari Remnant	Creature	U
27835	ARB	18	1	\N	t	t	\N	\N	\N	Brainbite	Sorcery	C
27975	ARB	32	1	\N	t	t	\N	\N	\N	Vedalken Ghoul	Creature	C
27915	ARB	27	1	\N	t	t	\N	\N	\N	Mistvein Borderpost	Artifact	C
27785	ARB	15	3	t	t	\N	\N	\N	\N	Unbender Tine	Artifact	U
2215	MIB	148	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
27685	SOK	5	2	t	\N	\N	\N	\N	\N	Cowed by Wisdom	Enchantment	C
2186	MIB	119	2	\N	\N	\N	\N	\N	\N	Peace Strider	Artifact Creature	U
27931	THS	5	2	t	\N	\N	\N	\N	\N	Chosen by Heliod	Enchantment	C
2179	MIB	112	2	\N	\N	\N	\N	\N	\N	Lumengrid Gargoyle	Artifact Creature	U
27575	CON	6	2	t	\N	\N	\N	\N	\N	Court Homunculus	Artifact Creature	C
27885	CON	22	2	\N	t	\N	\N	\N	\N	Constricting Tendrils	Instant	C
27795	SOK	15	1	t	\N	\N	\N	\N	\N	Kitsune Bonesetter	Creature	C
27901	BOK	24	2	t	\N	\N	\N	\N	\N	Takeno's Cavalry	Creature	C
27695	ALA	5	2	t	\N	\N	\N	\N	\N	Bant Battlemage	Creature	U
36658	NEO	5	0	t	\N	\N	\N	\N	\N	Blade-Blizzard Kitsune	Creature	U
2235	NPH	13	1	\N	\N	\N	\N	\N	\N	Lost Leonin	Creature	C
2244	NPH	22	0	\N	\N	\N	\N	\N	\N	Sensor Splicer	Creature	C
2251	NPH	29	1	\N	\N	\N	\N	\N	\N	Blighted Agent	Creature	C
2266	NPH	44	0	\N	\N	\N	\N	\N	\N	Psychic Surgery	Enchantment	R
2267	NPH	45	0	\N	\N	\N	\N	\N	\N	Spined Thopter	Artifact Creature	C
2268	NPH	46	0	\N	\N	\N	\N	\N	\N	Spire Monitor	Creature	C
2362	NPH	140	1	\N	\N	\N	\N	\N	\N	Insatiable Souleater	Artifact Creature	C
2367	NPH	145	1	\N	\N	\N	\N	\N	\N	Mycosynth Wellspring	Artifact	C
860	GOR	8	1	\N	\N	\N	\N	\N	\N	Dawn of Hope	Enchantment	R
951	GOR	99	1	\N	\N	\N	\N	\N	\N	Experimental Frenzy	Enchantment	R
955	GOR	103	1	\N	\N	\N	\N	\N	\N	Goblin Cratermaker	Creature	U
956	GOR	104	3	\N	\N	\N	\N	\N	\N	Goblin Locksmith	Creature	C
959	GOR	107	1	\N	\N	\N	\N	\N	\N	Inescapable Blaze	Instant	U
961	GOR	109	2	\N	\N	\N	\N	\N	\N	Legion Warboss	Creature	R
963	GOR	111	4	\N	\N	\N	\N	\N	\N	Maximize Velocity	Sorcery	C
965	GOR	113	1	\N	\N	\N	\N	\N	\N	Risk Factor	Instant	R
970	GOR	118	4	\N	\N	\N	\N	\N	\N	Sure Strike	Instant	C
972	GOR	120	4	\N	\N	\N	\N	\N	\N	Wojek Bodyguard	Creature	C
975	GOR	123	1	\N	\N	\N	\N	\N	\N	Beast Whisperer	Creature	R
976	GOR	124	2	\N	\N	\N	\N	\N	\N	Bounty of Might	Instant	R
993	GOR	141	1	\N	\N	\N	\N	\N	\N	Pelt Collector	Creature	R
1004	GOR	152	1	\N	\N	\N	\N	\N	\N	Assassin's Trophy	Instant	R
1009	GOR	157	1	\N	\N	\N	\N	\N	\N	Camaraderie	Sorcery	R
1011	GOR	159	1	\N	\N	\N	\N	\N	\N	Chance for Glory	Instant	M
1012	GOR	160	1	\N	\N	\N	\N	\N	\N	Charnel Troll	Creature	R
1022	GOR	170	1	\N	\N	\N	\N	\N	\N	Etrata, the Silencer	Lgd. Creature	R
1023	GOR	171	1	\N	\N	\N	\N	\N	\N	Firemind's Research	Enchantment	R
1031	GOR	179	1	\N	\N	\N	\N	\N	\N	Ionize	Instant	R
1032	GOR	180	1	\N	\N	\N	\N	\N	\N	Izoni, Thousand-Eyed	Lgd. Creature	R
1035	GOR	183	1	\N	\N	\N	\N	\N	\N	Knight of Autumn	Creature	R
1040	GOR	188	1	\N	\N	\N	\N	\N	\N	March of the Multitudes	Instant	M
1047	GOR	195	1	\N	\N	\N	\N	\N	\N	Ral, Izzet Viceroy	Lgd. Planeswalker	M
1056	GOR	204	1	\N	\N	\N	\N	\N	\N	Tajic, Legion's Edge	Lgd. Creature	R
1057	GOR	205	1	\N	\N	\N	\N	\N	\N	Thief of Sanity	Creature	R
1084	GOR	232	1	\N	\N	\N	\N	\N	\N	Chamber Sentry	Artifact Creature	R
1085	GOR	233	1	\N	\N	\N	\N	\N	\N	Chromatic Lantern	Artifact	R
1542	AMO	159	1	\N	\N	\N	\N	\N	\N	Champion of Rhonas	Creature	R
1543	AMO	160	1	\N	\N	\N	\N	\N	\N	Channeler Initiate	Creature	R
1666	KLD	4	4	\N	\N	\N	\N	\N	\N	Beskir Shieldmate	Creature	C
1675	KLD	13	5	\N	\N	\N	\N	\N	\N	Gods' Hall Guardian	Creature	C
4065	BFZ	102	1	\N	\N	\N	\N	\N	\N	Wasteland Strangler	Creature	R
4070	BFZ	107	0	\N	\N	\N	\N	\N	\N	Defiant Bloodlord	Creature	R
4072	BFZ	109	0	\N	\N	\N	\N	\N	\N	Drana, Liberator of Malakir	Lgd. Creature	M
4076	BFZ	113	1	\N	\N	\N	\N	\N	\N	Hagra Sharpshooter	Creature	U
4079	BFZ	116	1	\N	\N	\N	\N	\N	\N	Malakir Familiar	Creature	U
4082	BFZ	119	1	\N	\N	\N	\N	\N	\N	Ob Nixilis Reignited	Lgd. Planeswalker	M
4085	BFZ	122	2	\N	\N	\N	\N	\N	\N	Rising Miasma	Sorcery	U
4088	BFZ	125	2	\N	\N	\N	\N	\N	\N	Voracious Null	Creature	C
4096	BFZ	133	0	\N	\N	\N	\N	\N	\N	Serpentine Spike	Sorcery	R
4120	BFZ	157	3	\N	\N	\N	\N	\N	\N	Sure Strike	Instant	C
4124	BFZ	161	5	\N	\N	\N	\N	\N	\N	Volcanic Upheaval	Instant	C
4126	BFZ	163	3	\N	\N	\N	\N	\N	\N	Blisterpod	Creature	C
4129	BFZ	166	4	\N	\N	\N	\N	\N	\N	Eyeless Watcher	Creature	C
4132	BFZ	169	0	\N	\N	\N	\N	\N	\N	Void Attendant	Creature	U
4134	BFZ	171	3	\N	\N	\N	\N	\N	\N	Broodhunter Wurm	Creature	C
4137	BFZ	174	0	\N	\N	\N	\N	\N	\N	Greenwarden of Murasa	Creature	M
4138	BFZ	175	2	\N	\N	\N	\N	\N	\N	Infuse with the Elements	Instant	U
4145	BFZ	182	6	\N	\N	\N	\N	\N	\N	Oran-Rief Invoker	Creature	C
4146	BFZ	183	2	\N	\N	\N	\N	\N	\N	Plated Crusher	Creature	U
4148	BFZ	185	5	\N	\N	\N	\N	\N	\N	Reclaiming Vines	Sorcery	C
4152	BFZ	189	2	\N	\N	\N	\N	\N	\N	Seek the Wilds	Sorcery	C
4154	BFZ	191	3	\N	\N	\N	\N	\N	\N	Swell of Growth	Instant	C
4157	BFZ	194	4	\N	\N	\N	\N	\N	\N	Tajuru Stalwart	Creature	C
4160	BFZ	197	2	\N	\N	\N	\N	\N	\N	Undergrowth Champion	Creature	M
4162	BFZ	199	0	\N	\N	\N	\N	\N	\N	Brood Butcher	Creature	R
4164	BFZ	201	2	\N	\N	\N	\N	\N	\N	Catacomb Sifter	Creature	U
4168	BFZ	205	2	\N	\N	\N	\N	\N	\N	Herald of Kozilek	Creature	U
4169	BFZ	206	0	\N	\N	\N	\N	\N	\N	Sire of Stagnation	Creature	M
4174	BFZ	211	1	\N	\N	\N	\N	\N	\N	Grove Rumbler	Creature	U
4176	BFZ	213	0	\N	\N	\N	\N	\N	\N	Kiora, Master of the Depths	Lgd. Planeswalker	M
4184	BFZ	221	1	\N	\N	\N	\N	\N	\N	Veteran Warleader	Creature	R
4185	BFZ	222	0	\N	\N	\N	\N	\N	\N	Aligned Hedron Network	Artifact	R
4188	BFZ	225	1	\N	\N	\N	\N	\N	\N	Pathway Arrows	Artifact	U
4196	BFZ	233	1	\N	\N	\N	\N	\N	\N	Blighted Woodland	Land	U
4199	BFZ	236	3	\N	\N	\N	\N	\N	\N	Evolving Wilds	Land	C
4208	BFZ	245	1	\N	\N	\N	\N	\N	\N	Shrine of the Forsaken Gods	Land	R
4213	BFZ	250	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
4215	BFZ	252	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
4218	BFZ	255	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
4221	BFZ	258	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
4226	BFZ	263	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
4227	BFZ	264	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
27536	ARB	4	0	t	t	\N	\N	\N	\N	Ethersworn Shieldmage	Artifact Creature	C
27556	EVE	3	0	t	\N	\N	\N	\N	\N	Cenn's Enlistment	Sorcery	C
27566	DKA	2	0	t	\N	\N	\N	\N	\N	Bar the Door	Instant	C
27576	ARB	7	0	t	t	\N	\N	\N	\N	Glassdust Hulk	Artifact Creature	C
27586	BOK	9	0	t	\N	\N	\N	\N	\N	Indebted Samurai	Creature	U
27596	SOK	6	0	t	\N	\N	\N	\N	\N	Curtain of Light	Instant	C
27606	ALA	6	0	t	\N	\N	\N	\N	\N	Battlegrace Angel	Creature	R
27616	MOR	12	0	t	\N	\N	\N	\N	\N	Idyllic Tutor	Sorcery	R
27546	ARB	5	2	t	t	\N	\N	\N	\N	Fieldmist Borderpost	Artifact	C
2236	NPH	14	1	\N	\N	\N	\N	\N	\N	Loxodon Convert	Creature	C
2245	NPH	23	1	\N	\N	\N	\N	\N	\N	Shattered Angel	Creature	U
2253	NPH	31	1	\N	\N	\N	\N	\N	\N	Chancellor of the Spires	Creature	R
2372	NPH	150	0	\N	\N	\N	\N	\N	\N	Phyrexian Hulk	Artifact Creature	C
2374	NPH	152	0	\N	\N	\N	\N	\N	\N	Shrine of Boundless Growth	Artifact	U
2375	NPH	153	0	\N	\N	\N	\N	\N	\N	Shrine of Burning Rage	Artifact	U
2376	NPH	154	0	\N	\N	\N	\N	\N	\N	Shrine of Limitless Power	Artifact	U
2377	NPH	155	0	\N	\N	\N	\N	\N	\N	Shrine of Loyal Legions	Artifact	U
2378	NPH	156	0	\N	\N	\N	\N	\N	\N	Shrine of Piercing Vision	Artifact	U
2379	NPH	157	0	\N	\N	\N	\N	\N	\N	Sickleslicer	Artifact	U
2380	NPH	158	0	\N	\N	\N	\N	\N	\N	Soul Conduit	Artifact	R
2381	NPH	159	0	\N	\N	\N	\N	\N	\N	Spellskite	Artifact Creature	R
2382	NPH	160	0	\N	\N	\N	\N	\N	\N	Surge Node	Artifact	U
2383	NPH	161	0	\N	\N	\N	\N	\N	\N	Sword of War and Peace	Artifact	M
2384	NPH	162	0	\N	\N	\N	\N	\N	\N	Torpor Orb	Artifact	R
2386	NPH	164	0	\N	\N	\N	\N	\N	\N	Unwinding Clock	Artifact	R
858	GOR	6	1	\N	\N	\N	\N	\N	\N	Conclave Tribunal	Enchantment	U
865	GOR	13	2	\N	\N	\N	\N	\N	\N	Haazda Marshal	Creature	U
868	GOR	16	1	\N	\N	\N	\N	\N	\N	Inspiring Unicorn	Creature	U
870	GOR	18	3	\N	\N	\N	\N	\N	\N	Ledev Guardian	Creature	C
872	GOR	20	4	\N	\N	\N	\N	\N	\N	Loxodon Restorer	Creature	C
876	GOR	24	1	\N	\N	\N	\N	\N	\N	Roc Charger	Creature	U
879	GOR	27	4	\N	\N	\N	\N	\N	\N	Sworn Companions	Sorcery	C
881	GOR	29	3	\N	\N	\N	\N	\N	\N	Tenth District Guard	Creature	C
884	GOR	32	1	\N	\N	\N	\N	\N	\N	Chemister's Insight	Instant	U
887	GOR	35	2	\N	\N	\N	\N	\N	\N	Devious Cover-Up	Instant	C
888	GOR	36	4	\N	\N	\N	\N	\N	\N	Dimir Informant	Creature	C
891	GOR	39	0	\N	\N	\N	\N	\N	\N	Drowned Secrets	Enchantment	R
893	GOR	41	1	\N	\N	\N	\N	\N	\N	Guild Summit	Enchantment	U
895	GOR	43	3	\N	\N	\N	\N	\N	\N	Maximize Altitude	Sorcery	C
897	GOR	45	2	\N	\N	\N	\N	\N	\N	Murmuring Mystic	Creature	U
900	GOR	48	1	\N	\N	\N	\N	\N	\N	Nightveil Sprite	Creature	U
902	GOR	50	4	\N	\N	\N	\N	\N	\N	Passwall Adept	Creature	C
905	GOR	53	2	\N	\N	\N	\N	\N	\N	Selective Snare	Sorcery	U
907	GOR	55	2	\N	\N	\N	\N	\N	\N	Thoughtbound Phantasm	Creature	U
909	GOR	57	4	\N	\N	\N	\N	\N	\N	Vedalken Mesmerist	Creature	C
912	GOR	60	4	\N	\N	\N	\N	\N	\N	Wishcoin Crab	Creature	C
915	GOR	63	0	\N	\N	\N	\N	\N	\N	Blood Operative	Creature	R
917	GOR	65	3	\N	\N	\N	\N	\N	\N	Child of Night	Creature	C
920	GOR	68	4	\N	\N	\N	\N	\N	\N	Deadly Visit	Sorcery	C
922	GOR	70	5	\N	\N	\N	\N	\N	\N	Douser of Lights	Creature	C
925	GOR	73	1	\N	\N	\N	\N	\N	\N	Kraul Swarm	Creature	U
927	GOR	75	0	\N	\N	\N	\N	\N	\N	Mausoleum Secrets	Instant	R
928	GOR	76	3	\N	\N	\N	\N	\N	\N	Mephitic Vapors	Sorcery	C
1005	GOR	153	0	\N	\N	\N	\N	\N	\N	Aurelia, Exemplar of Justice	Lgd. Creature	M
930	GOR	78	3	\N	\N	\N	\N	\N	\N	Moodmark Painter	Creature	C
1007	GOR	155	2	\N	\N	\N	\N	\N	\N	Beamsplitter Mage	Creature	U
931	GOR	79	0	\N	\N	\N	\N	\N	\N	Necrotic Wound	Instant	U
934	GOR	82	1	\N	\N	\N	\N	\N	\N	Plaguecrafter	Creature	U
937	GOR	85	4	\N	\N	\N	\N	\N	\N	Severed Strands	Sorcery	C
940	GOR	88	3	\N	\N	\N	\N	\N	\N	Veiled Shade	Creature	C
943	GOR	91	0	\N	\N	\N	\N	\N	\N	Arclight Phoenix	Creature	M
944	GOR	92	3	\N	\N	\N	\N	\N	\N	Barging Sergeant	Creature	C
948	GOR	96	4	\N	\N	\N	\N	\N	\N	Direct Current	Sorcery	C
949	GOR	97	2	\N	\N	\N	\N	\N	\N	Electrostatic Field	Creature	U
954	GOR	102	0	\N	\N	\N	\N	\N	\N	Goblin Banneret	Creature	U
957	GOR	105	3	\N	\N	\N	\N	\N	\N	Gravitic Punch	Sorcery	C
960	GOR	108	2	\N	\N	\N	\N	\N	\N	Lava Coil	Sorcery	U
964	GOR	112	3	\N	\N	\N	\N	\N	\N	Ornery Goblin	Creature	C
969	GOR	117	2	\N	\N	\N	\N	\N	\N	Street Riot	Enchantment	U
974	GOR	122	1	\N	\N	\N	\N	\N	\N	Arboretum Elemental	Creature	U
977	GOR	125	2	\N	\N	\N	\N	\N	\N	Circuitous Route	Sorcery	U
980	GOR	128	1	\N	\N	\N	\N	\N	\N	District Guide	Creature	U
984	GOR	132	0	\N	\N	\N	\N	\N	\N	Hatchery Spider	Creature	R
986	GOR	134	4	\N	\N	\N	\N	\N	\N	Ironshell Beetle	Creature	C
987	GOR	135	2	\N	\N	\N	\N	\N	\N	Kraul Foragers	Creature	C
989	GOR	137	2	\N	\N	\N	\N	\N	\N	Might of the Masses	Instant	U
992	GOR	140	6	\N	\N	\N	\N	\N	\N	Pause for Reflection	Instant	C
995	GOR	143	5	\N	\N	\N	\N	\N	\N	Prey Upon	Sorcery	C
997	GOR	145	2	\N	\N	\N	\N	\N	\N	Sprouting Renewal	Sorcery	U
999	GOR	147	3	\N	\N	\N	\N	\N	\N	Vigorspore Wurm	Creature	C
1002	GOR	150	4	\N	\N	\N	\N	\N	\N	Wild Ceratok	Creature	C
1010	GOR	158	3	\N	\N	\N	\N	\N	\N	Centaur Peacemaker	Creature	C
1015	GOR	163	1	\N	\N	\N	\N	\N	\N	Crackling Drake	Creature	U
1018	GOR	166	1	\N	\N	\N	\N	\N	\N	Dimir Spybug	Creature	U
1020	GOR	168	0	\N	\N	\N	\N	\N	\N	Emmara, Soul of the Accord	Lgd. Creature	R
1021	GOR	169	3	\N	\N	\N	\N	\N	\N	Erstwhile Trooper	Creature	C
1027	GOR	175	1	\N	\N	\N	\N	\N	\N	Golgari Findbroker	Creature	U
1030	GOR	178	4	\N	\N	\N	\N	\N	\N	Hypothesizzle	Instant	C
1034	GOR	182	1	\N	\N	\N	\N	\N	\N	Justice Strike	Instant	U
1037	GOR	185	1	\N	\N	\N	\N	\N	\N	League Guildmage	Creature	U
1042	GOR	190	1	\N	\N	\N	\N	\N	\N	Molderhulk	Creature	U
1044	GOR	192	1	\N	\N	\N	\N	\N	\N	Niv-Mizzet, Parun	Lgd. Creature	R
1048	GOR	196	3	\N	\N	\N	\N	\N	\N	Rhizome Lurcher	Creature	C
1050	GOR	198	3	\N	\N	\N	\N	\N	\N	Skyknight Legionnaire	Creature	C
1053	GOR	201	1	\N	\N	\N	\N	\N	\N	Swarm Guildmage	Creature	U
1055	GOR	203	0	\N	\N	\N	\N	\N	\N	Swiftblade Vindicator	Creature	R
748	IN5	193	4	\N	\N	\N	\N	\N	\N	Aim High	Instant	C
27687	CHK	5	1	t	\N	\N	\N	\N	\N	Candles' Glow	Instant	U
36660	NEO	6	0	t	\N	\N	\N	\N	\N	Born to Drive	Enchantment	U
37623	BRO	17	0	t	\N	\N	\N	\N	\N	Military Discipline	Enchantment	C
37624	BRO	18	0	t	\N	\N	\N	\N	\N	Myrel, Shield of Argive	Lgd. Creature	M
37626	BRO	20	0	t	\N	\N	\N	\N	\N	Powerstone Engineer	Creature	C
37627	BRO	21	0	t	\N	\N	\N	\N	\N	Prison Sentence	Enchantment	C
37628	BRO	22	1	t	\N	\N	\N	\N	\N	Recommission	Sorcery	C
2228	NPH	6	0	\N	\N	\N	\N	\N	\N	Chancellor of the Annex	Creature	R
1058	GOR	206	1	\N	\N	\N	\N	\N	\N	Thought Erasure	Sorcery	U
1060	GOR	208	0	\N	\N	\N	\N	\N	\N	Trostani Discordant	Lgd. Creature	M
1062	GOR	210	3	\N	\N	\N	\N	\N	\N	Undercity Uprising	Sorcery	C
1064	GOR	212	0	\N	\N	\N	\N	\N	\N	Unmoored Ego	Sorcery	R
1068	GOR	216	4	\N	\N	\N	\N	\N	\N	Fresh-Faced Recruit	Creature	C
1070	GOR	218	4	\N	\N	\N	\N	\N	\N	Pitiless Gorgon	Creature	C
1072	GOR	220	2	\N	\N	\N	\N	\N	\N	Whisper Agent	Creature	C
1073	GOR	221	0	\N	\N	\N	\N	\N	\N	Assure // Assemble	Instant // Instant	R
1076	GOR	224	1	\N	\N	\N	\N	\N	\N	Expansion // Explosion	Instant // Instant	R
1077	GOR	225	0	\N	\N	\N	\N	\N	\N	Find // Finality	Sorcery // Sorcery	R
1079	GOR	227	2	\N	\N	\N	\N	\N	\N	Integrity // Intervention	Instant // Instant	U
1080	GOR	228	1	\N	\N	\N	\N	\N	\N	Invert // Invent	Instant // Instant	U
1087	GOR	235	2	\N	\N	\N	\N	\N	\N	Gatekeeper Gargoyle	Artifact Creature	U
1089	GOR	237	3	\N	\N	\N	\N	\N	\N	Golgari Locket	Artifact	C
1092	GOR	240	4	\N	\N	\N	\N	\N	\N	Selesnya Locket	Artifact	C
1093	GOR	241	2	\N	\N	\N	\N	\N	\N	Silent Dart	Artifact	U
1096	GOR	244	6	\N	\N	\N	\N	\N	\N	Boros Guildgate	Land	C
1097	GOR	245	4	\N	\N	\N	\N	\N	\N	Dimir Guildgate	Land	C
1101	GOR	249	3	\N	\N	\N	\N	\N	\N	Golgari Guildgate	Land	C
1102	GOR	250	0	\N	\N	\N	\N	\N	\N	Guildmages' Forum	Land	R
1107	GOR	255	2	\N	\N	\N	\N	\N	\N	Selesnya Guildgate	Land	C
1109	GOR	257	1	\N	\N	\N	\N	\N	\N	Steam Vents	Land	R
1111	GOR	259	1	\N	\N	\N	\N	\N	\N	Watery Grave	Land	R
1668	KLD	6	1	\N	\N	\N	\N	\N	\N	Clarion Spirit	Creature	U
4191	BFZ	228	0	\N	\N	\N	\N	\N	\N	Ally Encampment	Land	R
4205	BFZ	242	0	\N	\N	\N	\N	\N	\N	Sanctum of Ugin	Land	R
4210	BFZ	247	0	\N	\N	\N	\N	\N	\N	Smoldering Marsh	Land	R
2581	OAT	184	1	\N	\N	\N	\N	\N	\N	Wastes	Basic Land	C
4219	BFZ	256	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
27541	CON	1	0	t	\N	\N	\N	\N	\N	Aerie Mystics	Creature	U
4224	BFZ	261	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
27551	DGM	5	0	t	\N	\N	\N	\N	\N	Renounce the Guilds	Instant	R
4225	BFZ	262	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
27562	DKA	4	0	t	\N	\N	\N	\N	\N	Burden of Guilt	Enchantment	C
4233	BFZ	270	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
27572	ARB	6	0	t	t	\N	\N	\N	\N	Filigree Angel	Artifact Creature	R
4234	BFZ	271	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
27582	BOK	8	0	t	\N	\N	\N	\N	\N	Hundred-Talon Strike	Instant	C
4235	BFZ	272	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
2400	OAT	3	0	\N	\N	\N	\N	\N	\N	Endbringer	Creature	R
2454	OAT	57	0	\N	\N	\N	\N	\N	\N	Hedron Alignment	Enchantment	R
2465	OAT	68	0	\N	\N	\N	\N	\N	\N	Dread Defiler	Creature	R
2467	OAT	70	1	\N	\N	\N	\N	\N	\N	Flaying Tendrils	Sorcery	U
2468	OAT	71	2	\N	\N	\N	\N	\N	\N	Havoc Sower	Creature	U
2469	OAT	72	0	\N	\N	\N	\N	\N	\N	Inverter of Truth	Creature	M
2472	OAT	75	6	\N	\N	\N	\N	\N	\N	Oblivion Strike	Sorcery	C
2483	OAT	86	0	\N	\N	\N	\N	\N	\N	Kalitas, Traitor of Ghet	Lgd. Creature	M
2488	OAT	91	5	\N	\N	\N	\N	\N	\N	Untamed Hunger	Enchantment	C
2495	OAT	98	0	\N	\N	\N	\N	\N	\N	Kozilek's Return	Instant	M
2523	OAT	126	0	\N	\N	\N	\N	\N	\N	World Breaker	Creature	M
2526	OAT	129	5	\N	\N	\N	\N	\N	\N	Canopy Gorger	Creature	C
2542	OAT	145	7	\N	\N	\N	\N	\N	\N	Tajuru Pathwarden	Creature	C
2544	OAT	147	1	\N	\N	\N	\N	\N	\N	Zendikar Resurgent	Enchantment	R
2546	OAT	149	2	\N	\N	\N	\N	\N	\N	Mindmelter	Creature	U
2548	OAT	151	0	\N	\N	\N	\N	\N	\N	Ayli, Eternal Pilgrim	Lgd. Creature	R
2552	OAT	155	0	\N	\N	\N	\N	\N	\N	Jori En, Ruin Diver	Lgd. Creature	R
2553	OAT	156	0	\N	\N	\N	\N	\N	\N	Mina and Denn, Wildborn	Lgd. Creature	R
2554	OAT	157	2	\N	\N	\N	\N	\N	\N	Reflector Mage	Creature	U
2566	OAT	169	0	\N	\N	\N	\N	\N	\N	Corrupted Crossroads	Land	R
2572	OAT	175	0	\N	\N	\N	\N	\N	\N	Needle Spires	Land	R
27592	EVE	6	0	t	\N	\N	\N	\N	\N	Flickerwisp	Creature	U
27602	LRW	6	0	t	\N	\N	\N	\N	\N	Brigid, Hero of Kinsbaile	Lgd. Creature	R
27612	DGM	12	0	\N	t	\N	\N	\N	\N	Hidden Strings	Sorcery	C
27622	GPT	4	0	t	\N	\N	\N	\N	\N	Droning Bureaucrats	Creature	U
27632	SOM	4	0	t	\N	\N	\N	\N	\N	Auriok Sunchaser	Creature	C
27642	MRD	2	0	t	\N	\N	\N	\N	\N	Arrest	Enchantment	C
27652	CON	10	0	t	\N	\N	\N	\N	\N	Mark of Asylum	Enchantment	R
27662	GTC	10	0	t	\N	\N	\N	\N	\N	Debtor's Pulpit	Enchantment	U
27672	GPT	11	0	t	\N	\N	\N	\N	\N	Lionheart Maverick	Creature	C
27686	WWK	5	0	t	\N	\N	\N	\N	\N	Fledgling Griffin	Creature	C
27696	MOR	3	0	t	\N	\N	\N	\N	\N	Burrenton Bombardier	Creature	C
27706	RAV	3	0	t	\N	\N	\N	\N	\N	Benevolent Ancestor	Creature	C
27716	MOR	9	0	t	\N	\N	\N	\N	\N	Feudkiller's Verdict	Tribal Sorcery	R
27726	DGM	7	0	t	\N	\N	\N	\N	\N	Scion of Vitu-Ghazi	Creature	R
27736	MRD	7	0	t	\N	\N	\N	\N	\N	Blinding Beam	Instant	C
27746	DGM	13	0	\N	t	\N	\N	\N	\N	Maze Glider	Creature	C
27756	DKA	8	0	t	\N	\N	\N	\N	\N	Gather the Townsfolk	Sorcery	C
27776	DGM	14	0	\N	t	\N	\N	\N	\N	Mindstatic	Instant	C
27766	ISD	8	1	t	\N	\N	\N	\N	\N	Cloistered Youth // Unholy Fiend	Creature	U
27796	WWK	15	0	t	\N	\N	\N	\N	\N	Marshal's Anthem	Enchantment	R
27816	EVE	17	0	\N	t	\N	\N	\N	\N	Banishing Knack	Instant	C
27826	LRW	1	0	t	\N	\N	\N	\N	\N	Ajani Goldmane	Lgd. Planeswalker	R
794	IN5	239	4	\N	\N	\N	\N	\N	\N	Watcher in the Web	Creature	C
27846	WWK	18	0	t	\N	\N	\N	\N	\N	Rest for the Weary	Instant	C
27866	GPT	20	0	t	\N	\N	\N	\N	\N	To Arms!	Instant	U
27876	DGM	21	0	\N	\N	t	\N	\N	\N	Bane Alley Blackguard	Creature	C
27886	DKA	22	0	t	\N	\N	\N	\N	\N	Skillful Lunge	Instant	C
27896	DGM	23	0	\N	\N	t	\N	\N	\N	Crypt Incursion	Instant	C
27906	ARB	25	0	\N	t	t	\N	\N	\N	Mask of Riddles	Artifact	U
27856	MOR	19	1	t	\N	\N	\N	\N	\N	Order of the Golden Cricket	Creature	C
32286	ALA	203	1	\N	t	t	\N	\N	\N	Tidehollow Strix	Artifact Creature	C
2230	NPH	8	1	\N	\N	\N	\N	\N	\N	Due Respect	Instant	U
27550	DKA	5	0	t	\N	\N	\N	\N	\N	Curse of Exhaustion	Enchantment	U
2389	NPH	167	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
2391	NPH	169	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
2394	NPH	172	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
2397	NPH	175	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
403	IN4	159	2	\N	\N	\N	\N	\N	\N	Gnarlwood Dryad	Creature	U
1113	MAO	2	3	\N	\N	\N	\N	\N	\N	Ampryn Tactician	Creature	C
1118	MAO	7	2	\N	\N	\N	\N	\N	\N	Blessed Spirits	Creature	U
1119	MAO	8	3	\N	\N	\N	\N	\N	\N	Celestial Flare	Instant	C
1678	KLD	16	3	\N	\N	\N	\N	\N	\N	Invoke the Divine	Instant	C
1679	KLD	17	4	\N	\N	\N	\N	\N	\N	Iron Verdict	Instant	C
1682	KLD	20	0	\N	\N	\N	\N	\N	\N	Rally the Ranks	Enchantment	R
1683	KLD	21	0	\N	\N	\N	\N	\N	\N	Reidane, God of the Worthy // Valkmira, Protector's Shield	Lgd. Creature	R
1687	KLD	25	1	\N	\N	\N	\N	\N	\N	Rune of Sustenance	Enchantment	U
1689	KLD	27	0	\N	\N	\N	\N	\N	\N	Search for Glory	Snow Sorcery	R
1691	KLD	29	0	\N	\N	\N	\N	\N	\N	Sigrid, God-Favored	Lgd. Creature	R
1695	KLD	33	1	\N	\N	\N	\N	\N	\N	Starnheim Unleashed	Sorcery	M
1696	KLD	34	4	\N	\N	\N	\N	\N	\N	Story Seeker	Creature	C
1698	KLD	36	1	\N	\N	\N	\N	\N	\N	Valkyrie's Sword	Artifact	U
1700	KLD	38	4	\N	\N	\N	\N	\N	\N	Warhorn Blast	Instant	C
1702	KLD	40	0	\N	\N	\N	\N	\N	\N	Alrund, God of the Cosmos // Hakka, Whispering Raven	Lgd. Creature	M
1706	KLD	44	3	\N	\N	\N	\N	\N	\N	Augury Raven	Creature	C
1708	KLD	46	4	\N	\N	\N	\N	\N	\N	Behold the Multiverse	Instant	C
1711	KLD	49	4	\N	\N	\N	\N	\N	\N	Brinebarrow Intruder	Creature	C
1712	KLD	50	0	\N	\N	\N	\N	\N	\N	Cosima, God of the Voyage // The Omenkeel	Lgd. Creature	R
1714	KLD	52	0	\N	\N	\N	\N	\N	\N	Cyclone Summoner	Creature	R
1717	KLD	55	4	\N	\N	\N	\N	\N	\N	Draugr Thought-Thief	Creature	C
1719	KLD	57	4	\N	\N	\N	\N	\N	\N	Frostpeak Yeti	Snow Creature	C
27571	MOR	2	0	t	\N	\N	\N	\N	\N	Battletide Alchemist	Creature	R
1720	KLD	58	1	\N	\N	\N	\N	\N	\N	Frostpyre Arcanist	Creature	U
1722	KLD	60	1	\N	\N	\N	\N	\N	\N	Glimpse the Cosmos	Sorcery	U
1726	KLD	64	2	\N	\N	\N	\N	\N	\N	Inga Rune-Eyes	Lgd. Creature	U
1729	KLD	67	4	\N	\N	\N	\N	\N	\N	Mists of Littjara	Enchantment	C
1731	KLD	69	1	\N	\N	\N	\N	\N	\N	Mystic Reflection	Instant	R
1732	KLD	70	0	\N	\N	\N	\N	\N	\N	Orvar, the All-Form	Lgd. Creature	M
1733	KLD	71	3	\N	\N	\N	\N	\N	\N	Pilfering Hawk	Snow Creature	C
1739	KLD	77	4	\N	\N	\N	\N	\N	\N	Strategic Planning	Sorcery	C
2657	ZER	76	0	\N	\N	\N	\N	\N	\N	Sea Gate Restoration // Sea Gate, Reborn	Sorcery // Land	M
1744	KLD	82	0	\N	\N	\N	\N	\N	\N	Crippling Fear	Sorcery	R
27591	DGM	6	0	t	\N	\N	\N	\N	\N	Riot Control	Instant	C
27561	CON	4	1	t	\N	\N	\N	\N	\N	Aven Trailblazer	Creature	C
1745	KLD	83	5	\N	\N	\N	\N	\N	\N	Deathknell Berserker	Creature	C
1747	KLD	85	5	\N	\N	\N	\N	\N	\N	Dogged Pursuit	Enchantment	C
1750	KLD	88	2	\N	\N	\N	\N	\N	\N	Draugr's Helm	Artifact	U
1752	KLD	90	1	\N	\N	\N	\N	\N	\N	Dream Devourer	Creature	R
2260	NPH	38	2	\N	\N	\N	\N	\N	\N	Mental Misstep	Instant	U
1754	KLD	92	0	\N	\N	\N	\N	\N	\N	Egon, God of Death // Throne of Death	Lgd. Creature	R
1755	KLD	93	4	\N	\N	\N	\N	\N	\N	Elderfang Disciple	Creature	C
1758	KLD	96	3	\N	\N	\N	\N	\N	\N	Grim Draugr	Snow Creature	C
1760	KLD	98	0	\N	\N	\N	\N	\N	\N	Haunting Voyage	Sorcery	M
1762	KLD	100	4	\N	\N	\N	\N	\N	\N	Jarl of the Forsaken	Creature	C
1764	KLD	102	4	\N	\N	\N	\N	\N	\N	Koma's Faithful	Creature	C
1766	KLD	104	4	\N	\N	\N	\N	\N	\N	Priest of the Haunted Edge	Snow Creature	C
2510	OAT	113	2	\N	\N	\N	\N	\N	\N	Oath of Chandra	Lgd. Enchantment	R
1768	KLD	106	2	\N	\N	\N	\N	\N	\N	Return Upon the Tide	Sorcery	U
1772	KLD	110	1	\N	\N	\N	\N	\N	\N	Skemfar Shadowsage	Creature	U
1785	KLD	123	1	\N	\N	\N	\N	\N	\N	Birgi, God of Storytelling // Harnfel, Horn of Bounty	Lgd. Creature	R
1796	KLD	134	5	\N	\N	\N	\N	\N	\N	Dwarven Reinforcements	Sorcery	C
1798	KLD	136	3	\N	\N	\N	\N	\N	\N	Fearless Pup	Creature	C
1799	KLD	137	2	\N	\N	\N	\N	\N	\N	Frenzied Raider	Creature	U
1803	KLD	141	4	\N	\N	\N	\N	\N	\N	Immersturm Raider	Creature	C
1804	KLD	142	0	\N	\N	\N	\N	\N	\N	Magda, Brazen Outlaw	Lgd. Creature	R
1808	KLD	146	2	\N	\N	\N	\N	\N	\N	Reckless Crew	Sorcery	R
1811	KLD	149	3	\N	\N	\N	\N	\N	\N	Seize the Spoils	Sorcery	C
1812	KLD	150	4	\N	\N	\N	\N	\N	\N	Shackles of Treachery	Sorcery	C
1815	KLD	153	2	\N	\N	\N	\N	\N	\N	Tibalt's Trickery	Instant	R
1816	KLD	154	0	\N	\N	\N	\N	\N	\N	Toralf, God of Fury // Toralf's Hammer	Lgd. Creature	M
1817	KLD	155	4	\N	\N	\N	\N	\N	\N	Tormentor's Helm	Artifact	C
1821	KLD	159	4	\N	\N	\N	\N	\N	\N	Arachnoform	Enchantment	C
1825	KLD	163	2	\N	\N	\N	\N	\N	\N	Boreal Outrider	Snow Creature	U
1829	KLD	167	0	\N	\N	\N	\N	\N	\N	Elvish Warmaster	Creature	R
1830	KLD	168	1	\N	\N	\N	\N	\N	\N	Esika, God of the Tree // The Prismatic Bridge		M
1832	KLD	170	1	\N	\N	\N	\N	\N	\N	Fynn, the Fangbearer	Lgd. Creature	U
1833	KLD	171	3	\N	\N	\N	\N	\N	\N	Glittering Frost	Snow Enchantment	C
2666	ZER	85	0	\N	\N	\N	\N	\N	\N	Thieving Skydiver	Creature	R
2676	ZER	95	0	\N	\N	\N	\N	\N	\N	Coveted Prize	Sorcery	R
2694	ZER	113	1	\N	\N	\N	\N	\N	\N	Mind Carver	Artifact	U
2754	ZER	173	5	\N	\N	\N	\N	\N	\N	Tuktuk Rubblefort	Creature	C
2630	ZER	49	0	\N	\N	\N	\N	\N	\N	Charix, the Raging Isle	Lgd. Creature	R
2634	ZER	53	0	\N	\N	\N	\N	\N	\N	Confounding Conundrum	Enchantment	R
2636	ZER	55	4	\N	\N	\N	\N	\N	\N	Cunning Geysermage	Creature	C
2644	ZER	63	0	\N	\N	\N	\N	\N	\N	Jace, Mirror Mage	Lgd. Planeswalker	M
2649	ZER	68	0	\N	\N	\N	\N	\N	\N	Master of Winds	Creature	R
4193	BFZ	230	2	\N	\N	\N	\N	\N	\N	Blighted Fen	Land	U
2508	OAT	111	6	\N	\N	\N	\N	\N	\N	Goblin Freerunner	Creature	C
4223	BFZ	260	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
4236	BFZ	273	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
4237	BFZ	274	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
27601	MRD	6	0	t	\N	\N	\N	\N	\N	Awe Strike	Instant	C
2243	NPH	21	1	\N	\N	\N	\N	\N	\N	Remember the Fallen	Sorcery	C
2261	NPH	39	0	\N	\N	\N	\N	\N	\N	Mindculling	Sorcery	U
2264	NPH	42	1	\N	\N	\N	\N	\N	\N	Phyrexian Metamorph	Artifact Creature	R
2269	NPH	47	0	\N	\N	\N	\N	\N	\N	Tezzeret's Gambit	Sorcery	U
2272	NPH	50	0	\N	\N	\N	\N	\N	\N	Wing Splicer	Creature	U
2274	NPH	52	1	\N	\N	\N	\N	\N	\N	Blind Zealot	Creature	C
2275	NPH	53	1	\N	\N	\N	\N	\N	\N	Caress of Phyrexia	Sorcery	U
2278	NPH	56	1	\N	\N	\N	\N	\N	\N	Despise	Sorcery	U
2280	NPH	58	0	\N	\N	\N	\N	\N	\N	Enslave	Enchantment	U
27611	DKA	12	0	t	\N	\N	\N	\N	\N	Lingering Souls	Sorcery	U
2283	NPH	61	1	\N	\N	\N	\N	\N	\N	Geth's Verdict	Instant	C
2284	NPH	62	1	\N	\N	\N	\N	\N	\N	Glistening Oil	Enchantment	R
2286	NPH	64	0	\N	\N	\N	\N	\N	\N	Ichor Explosion	Sorcery	U
2289	NPH	67	1	\N	\N	\N	\N	\N	\N	Parasitic Implant	Enchantment	C
2291	NPH	69	1	\N	\N	\N	\N	\N	\N	Pith Driller	Artifact Creature	C
2292	NPH	70	1	\N	\N	\N	\N	\N	\N	Postmortem Lunge	Sorcery	U
2294	NPH	72	1	\N	\N	\N	\N	\N	\N	Reaper of Sheoldred	Creature	U
2296	NPH	74	0	\N	\N	\N	\N	\N	\N	Surgical Extraction	Instant	R
2299	NPH	77	1	\N	\N	\N	\N	\N	\N	Whispering Specter	Creature	U
2302	NPH	80	1	\N	\N	\N	\N	\N	\N	Bludgeon Brawl	Enchantment	R
2304	NPH	82	1	\N	\N	\N	\N	\N	\N	Fallen Ferromancer	Creature	U
2306	NPH	84	1	\N	\N	\N	\N	\N	\N	Furnace Scamp	Creature	C
2309	NPH	87	1	\N	\N	\N	\N	\N	\N	Invader Parasite	Creature	R
2311	NPH	89	1	\N	\N	\N	\N	\N	\N	Ogre Menial	Creature	C
2313	NPH	91	1	\N	\N	\N	\N	\N	\N	Rage Extractor	Artifact	U
2316	NPH	94	1	\N	\N	\N	\N	\N	\N	Scrapyard Salvo	Sorcery	C
2318	NPH	96	0	\N	\N	\N	\N	\N	\N	Slash Panther	Artifact Creature	C
2321	NPH	99	0	\N	\N	\N	\N	\N	\N	Victorious Destruction	Sorcery	C
2323	NPH	101	0	\N	\N	\N	\N	\N	\N	Vulshok Refugee	Creature	U
2326	NPH	104	0	\N	\N	\N	\N	\N	\N	Birthing Pod	Artifact	R
2328	NPH	106	0	\N	\N	\N	\N	\N	\N	Chancellor of the Tangle	Creature	R
2331	NPH	109	0	\N	\N	\N	\N	\N	\N	Fresh Meat	Instant	R
27621	ISD	12	0	t	\N	\N	\N	\N	\N	Elder Cathar	Creature	C
2335	NPH	113	0	\N	\N	\N	\N	\N	\N	Leeching Bite	Instant	C
2340	NPH	118	0	\N	\N	\N	\N	\N	\N	Noxious Revival	Instant	U
2342	NPH	120	0	\N	\N	\N	\N	\N	\N	Rotted Hystrix	Creature	C
2345	NPH	123	0	\N	\N	\N	\N	\N	\N	Triumph of the Hordes	Sorcery	U
2347	NPH	125	1	\N	\N	\N	\N	\N	\N	Viridian Harvest	Enchantment	C
2349	NPH	127	0	\N	\N	\N	\N	\N	\N	Vorinclex, Voice of Hunger	Lgd. Creature	M
2351	NPH	129	0	\N	\N	\N	\N	\N	\N	Alloy Myr	Artifact Creature	U
2353	NPH	131	1	\N	\N	\N	\N	\N	\N	Blinding Souleater	Artifact Creature	C
27631	LRW	4	0	t	\N	\N	\N	\N	\N	Avian Changeling	Creature	C
2359	NPH	137	0	\N	\N	\N	\N	\N	\N	Hex Parasite	Artifact Creature	R
2361	NPH	139	1	\N	\N	\N	\N	\N	\N	Immolating Souleater	Artifact Creature	C
27641	ISD	2	0	t	\N	\N	\N	\N	\N	Angel of Flight Alabaster	Creature	R
2364	NPH	142	0	\N	\N	\N	\N	\N	\N	Kiln Walker	Artifact Creature	U
2368	NPH	146	0	\N	\N	\N	\N	\N	\N	Myr Superion	Artifact Creature	R
2371	NPH	149	1	\N	\N	\N	\N	\N	\N	Pestilent Souleater	Artifact Creature	C
2373	NPH	151	1	\N	\N	\N	\N	\N	\N	Pristine Talisman	Artifact	C
2385	NPH	163	1	\N	\N	\N	\N	\N	\N	Trespassing Souleater	Artifact Creature	C
1117	MAO	6	3	\N	\N	\N	\N	\N	\N	Aven Battle Priest	Creature	C
1836	KLD	174	4	\N	\N	\N	\N	\N	\N	Guardian Gladewalker	Creature	C
1839	KLD	177	2	\N	\N	\N	\N	\N	\N	In Search of Greatness	Enchantment	R
1840	KLD	178	4	\N	\N	\N	\N	\N	\N	Jaspera Sentinel	Creature	C
1841	KLD	179	0	\N	\N	\N	\N	\N	\N	Jorn, God of Winter // Kaldring, the Rimestaff	Lgd. Snow Creature	R
1845	KLD	183	3	\N	\N	\N	\N	\N	\N	Mammoth Growth	Instant	C
1846	KLD	184	4	\N	\N	\N	\N	\N	\N	Masked Vandal	Creature	C
1848	KLD	186	1	\N	\N	\N	\N	\N	\N	Path to the World Tree	Enchantment	U
1850	KLD	188	1	\N	\N	\N	\N	\N	\N	Realmwalker	Creature	R
1854	KLD	192	3	\N	\N	\N	\N	\N	\N	Sarulf's Packmate	Creature	C
1856	KLD	194	4	\N	\N	\N	\N	\N	\N	Snakeskin Veil	Instant	C
1858	KLD	196	3	\N	\N	\N	\N	\N	\N	Struggle for Skemfar	Sorcery	C
1861	KLD	199	0	\N	\N	\N	\N	\N	\N	Vorinclex, Monstrous Raider	Lgd. Creature	M
1863	KLD	201	1	\N	\N	\N	\N	\N	\N	Arni Slays the Troll	Enchantment	U
1865	KLD	203	0	\N	\N	\N	\N	\N	\N	Battle for Bretagard	Enchantment	R
1867	KLD	205	0	\N	\N	\N	\N	\N	\N	The Bears of Littjara	Enchantment	R
1869	KLD	207	2	\N	\N	\N	\N	\N	\N	The Bloodsky Massacre	Enchantment	R
1871	KLD	209	2	\N	\N	\N	\N	\N	\N	Firja, Judge of Valor	Lgd. Creature	U
1873	KLD	211	2	\N	\N	\N	\N	\N	\N	Forging the Tyrite Sword	Enchantment	U
1875	KLD	213	0	\N	\N	\N	\N	\N	\N	Harald Unites the Elves	Enchantment	R
1877	KLD	215	2	\N	\N	\N	\N	\N	\N	Invasion of the Giants	Enchantment	U
1880	KLD	218	0	\N	\N	\N	\N	\N	\N	Kaya the Inexorable	Lgd. Planeswalker	M
1883	KLD	221	0	\N	\N	\N	\N	\N	\N	Koma, Cosmos Serpent	Lgd. Creature	M
1885	KLD	223	1	\N	\N	\N	\N	\N	\N	Moritte of the Frost	Lgd. Snow Creature	U
1887	KLD	225	1	\N	\N	\N	\N	\N	\N	Niko Aris	Lgd. Planeswalker	M
1889	KLD	227	1	\N	\N	\N	\N	\N	\N	The Raven's Warning	Enchantment	R
1890	KLD	228	0	\N	\N	\N	\N	\N	\N	Sarulf, Realm Eater	Lgd. Creature	R
1892	KLD	230	0	\N	\N	\N	\N	\N	\N	Svella, Ice Shaper	Lgd. Snow Creature	U
2760	ZER	179	0	\N	\N	\N	\N	\N	\N	Ashaya, Soul of the Wild	Lgd. Creature	M
2779	ZER	198	0	\N	\N	\N	\N	\N	\N	Oran-Rief Ooze	Creature	R
2784	ZER	203	0	\N	\N	\N	\N	\N	\N	Scute Swarm	Creature	R
2806	ZER	225	0	\N	\N	\N	\N	\N	\N	Kaza, Roil Chaser	Lgd. Creature	R
2811	ZER	230	0	\N	\N	\N	\N	\N	\N	Nahiri, Heir of the Ancients	Lgd. Planeswalker	M
2813	ZER	232	0	\N	\N	\N	\N	\N	\N	Omnath, Locus of Creation	Lgd. Creature	M
27661	CHK	10	0	t	\N	\N	\N	\N	\N	Ghostly Prison	Enchantment	U
27671	EVE	11	0	t	\N	\N	\N	\N	\N	Loyal Gyrfalcon	Creature	U
27680	MRD	11	0	t	\N	\N	\N	\N	\N	Leonin Skyhunter	Creature	U
27690	MRD	5	0	t	\N	\N	\N	\N	\N	Auriok Transfixer	Creature	C
27651	BOK	10	1	t	\N	\N	\N	\N	\N	Kami of False Hope	Creature	C
2338	NPH	116	4	\N	\N	\N	\N	\N	\N	Mutagenic Growth	Instant	C
2333	NPH	111	4	\N	\N	\N	\N	\N	\N	Glistener Elf	Creature	C
36659	NEO	2	0	t	\N	\N	\N	\N	\N	Ao, the Dawn Sky	Lgd. Creature	M
2232	NPH	10	1	\N	\N	\N	\N	\N	\N	Exclusion Ritual	Enchantment	U
1123	MAO	12	4	\N	\N	\N	\N	\N	\N	Enlightened Ascetic	Creature	C
1894	KLD	232	2	\N	\N	\N	\N	\N	\N	The Trickster-God's Heist	Enchantment	U
1897	KLD	235	1	\N	\N	\N	\N	\N	\N	Bloodline Pretender	Artifact Creature	U
1900	KLD	238	3	\N	\N	\N	\N	\N	\N	Funeral Longboat	Artifact	C
1901	KLD	239	3	\N	\N	\N	\N	\N	\N	Goldvein Pick	Artifact	C
1903	KLD	241	0	\N	\N	\N	\N	\N	\N	Pyre of Heroes	Artifact	R
1906	KLD	244	1	\N	\N	\N	\N	\N	\N	Replicating Ring	Snow Artifact	U
1908	KLD	246	3	\N	\N	\N	\N	\N	\N	Scorn Effigy	Artifact Creature	C
1911	KLD	249	1	\N	\N	\N	\N	\N	\N	Arctic Treeline	Snow Land	C
1913	KLD	251	1	\N	\N	\N	\N	\N	\N	Barkchannel Pathway // Tidechannel Pathway	Land // Land	R
1914	KLD	252	0	\N	\N	\N	\N	\N	\N	Blightstep Pathway // Searstep Pathway	Land // Land	R
1918	KLD	256	2	\N	\N	\N	\N	\N	\N	Gates of Istfell	Land	U
1920	KLD	258	2	\N	\N	\N	\N	\N	\N	Gnottvold Slumbermound	Land	U
1924	KLD	262	1	\N	\N	\N	\N	\N	\N	Ice Tunnel	Snow Land	C
1926	KLD	264	1	\N	\N	\N	\N	\N	\N	Littjara Mirrorlake	Land	U
1929	KLD	267	4	\N	\N	\N	\N	\N	\N	Shimmerdrift Vale	Snow Land	C
1931	KLD	269	2	\N	\N	\N	\N	\N	\N	Snowfield Sinkhole	Snow Land	C
1932	KLD	270	1	\N	\N	\N	\N	\N	\N	Sulfurous Mire	Snow Land	C
1934	KLD	272	0	\N	\N	\N	\N	\N	\N	Tyrite Sanctum	Land	R
1935	KLD	273	2	\N	\N	\N	\N	\N	\N	Volatile Fjord	Snow Land	C
1939	KLD	277	1	\N	\N	\N	\N	\N	\N	Snow-Covered Plains	Basic Snow Land	C
1941	KLD	279	1	\N	\N	\N	\N	\N	\N	Snow-Covered Island	Basic Snow Land	C
1943	KLD	281	1	\N	\N	\N	\N	\N	\N	Snow-Covered Swamp	Basic Snow Land	C
1945	KLD	283	1	\N	\N	\N	\N	\N	\N	Snow-Covered Mountain	Basic Snow Land	C
1946	KLD	284	1	\N	\N	\N	\N	\N	\N	Snow-Covered Forest	Basic Snow Land	C
1948	KLD	286	0	\N	\N	\N	\N	\N	\N	Valki, God of Lies // Tibalt, Cosmic Impostor	Lgd. Creature	M
1950	KLD	288	0	\N	\N	\N	\N	\N	\N	Kaya the Inexorable	Lgd. Planeswalker	M
1952	KLD	290	0	\N	\N	\N	\N	\N	\N	Barkchannel Pathway // Tidechannel Pathway	Land // Land	R
1953	KLD	291	1	\N	\N	\N	\N	\N	\N	Blightstep Pathway // Searstep Pathway	Land // Land	R
1955	KLD	293	0	\N	\N	\N	\N	\N	\N	Hengegate Pathway // Mistgate Pathway	Land // Land	R
1967	KLD	305	1	\N	\N	\N	\N	\N	\N	Orvar, the All-Form	Lgd. Creature	M
1971	KLD	309	1	\N	\N	\N	\N	\N	\N	Varragoth, Bloodsky Sire	Lgd. Creature	R
1981	KLD	319	1	\N	\N	\N	\N	\N	\N	Toski, Bearer of Secrets	Lgd. Creature	R
2000	KLD	338	0	\N	\N	\N	\N	\N	\N	Righteous Valkyrie	Creature	R
2003	KLD	341	0	\N	\N	\N	\N	\N	\N	Ascendant Spirit	Snow Creature	R
2005	KLD	343	0	\N	\N	\N	\N	\N	\N	Cyclone Summoner	Creature	R
2007	KLD	345	0	\N	\N	\N	\N	\N	\N	Icebreaker Kraken	Snow Creature	R
2010	KLD	348	0	\N	\N	\N	\N	\N	\N	Blood on the Snow	Snow Sorcery	R
2012	KLD	350	0	\N	\N	\N	\N	\N	\N	Crippling Fear	Sorcery	R
2014	KLD	352	0	\N	\N	\N	\N	\N	\N	Dream Devourer	Creature	R
2016	KLD	354	0	\N	\N	\N	\N	\N	\N	Rise of the Dread Marn	Instant	R
2019	KLD	357	0	\N	\N	\N	\N	\N	\N	Dragonkin Berserker	Creature	R
2021	KLD	359	0	\N	\N	\N	\N	\N	\N	Reckless Crew	Sorcery	R
2023	KLD	361	0	\N	\N	\N	\N	\N	\N	Tundra Fumarole	Snow Sorcery	R
2025	KLD	363	0	\N	\N	\N	\N	\N	\N	Elvish Warmaster	Creature	R
2028	KLD	366	0	\N	\N	\N	\N	\N	\N	Realmwalker	Creature	R
2030	KLD	368	0	\N	\N	\N	\N	\N	\N	Cosmos Elixir	Artifact	R
2032	KLD	370	0	\N	\N	\N	\N	\N	\N	Pyre of Heroes	Artifact	R
2035	KLD	373	0	\N	\N	\N	\N	\N	\N	The World Tree	Land	R
2037	KLD	375	0	\N	\N	\N	\N	\N	\N	Surtland Elementalist	Creature	R
2039	KLD	377	0	\N	\N	\N	\N	\N	\N	Surtland Flinger	Creature	R
2042	KLD	380	0	\N	\N	\N	\N	\N	\N	Starnheim Aspirant	Creature	U
2044	KLD	382	0	\N	\N	\N	\N	\N	\N	Youthful Valkyrie	Creature	U
2046	KLD	384	0	\N	\N	\N	\N	\N	\N	Giant's Grasp	Enchantment	U
2049	KLD	387	0	\N	\N	\N	\N	\N	\N	Thornmantle Striker	Creature	U
2051	KLD	389	0	\N	\N	\N	\N	\N	\N	Fire Giant's Fury	Sorcery	U
2054	KLD	392	0	\N	\N	\N	\N	\N	\N	Gladewalker Ritualist	Creature	U
2056	KLD	394	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
2059	KLD	397	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
2062	KLD	400	0	\N	\N	\N	\N	\N	\N	Reflections of Littjara	Enchantment	R
2064	KLD	402	0	\N	\N	\N	\N	\N	\N	Strategic Planning	Sorcery	C
2066	KLD	404	0	\N	\N	\N	\N	\N	\N	Frost Bite	Snow Instant	C
2403	OAT	6	1	\N	\N	\N	\N	\N	\N	Matter Reshaper	Creature	R
3033	KAL	172	0	\N	\N	\N	\N	\N	\N	Verdurous Gearhulk	Artifact Creature	M
3035	KAL	174	0	\N	\N	\N	\N	\N	\N	Wildest Dreams	Sorcery	R
3044	KAL	183	0	\N	\N	\N	\N	\N	\N	Kambal, Consul of Allocation	Lgd. Creature	R
3045	KAL	184	0	\N	\N	\N	\N	\N	\N	Rashmi, Eternities Crafter	Lgd. Creature	M
3047	KAL	186	0	\N	\N	\N	\N	\N	\N	Saheeli Rai	Lgd. Planeswalker	M
3054	KAL	193	0	\N	\N	\N	\N	\N	\N	Aetherworks Marvel	Lgd. Artifact	M
3069	KAL	208	0	\N	\N	\N	\N	\N	\N	Dynavolt Tower	Artifact	R
3071	KAL	210	0	\N	\N	\N	\N	\N	\N	Electrostatic Pummeler	Artifact Creature	R
3075	KAL	214	0	\N	\N	\N	\N	\N	\N	Fleetwheel Cruiser	Artifact	R
3077	KAL	216	0	\N	\N	\N	\N	\N	\N	Ghirapur Orrery	Artifact	R
27603	SOM	6	0	t	\N	\N	\N	\N	\N	Elspeth Tirel	Lgd. Planeswalker	M
567	IN5	12	2	\N	\N	\N	\N	\N	\N	Declaration in Stone	Sorcery	R
36661	NEO	4	0	t	\N	\N	\N	\N	\N	Befriending the Moths // Imperial Moth	Enchantment	C
27643	LRW	2	0	t	\N	\N	\N	\N	\N	Arbiter of Knollridge	Creature	R
27653	DKA	10	0	t	\N	\N	\N	\N	\N	Hollowhenge Spirit	Creature	U
27663	ISD	10	0	t	\N	\N	\N	\N	\N	Divine Reckoning	Sorcery	R
36665	NEO	10	0	t	\N	\N	\N	\N	\N	Eiganjo Exemplar	Enchantment Creature	C
27694	RAV	5	0	t	\N	\N	\N	\N	\N	Boros Fury-Shield	Instant	C
27704	SOM	3	0	t	\N	\N	\N	\N	\N	Auriok Edgewright	Creature	U
27714	GPT	9	0	t	\N	\N	\N	\N	\N	Harrier Griffin	Creature	U
27724	SOM	9	0	t	\N	\N	\N	\N	\N	Glimmerpoint Stag	Creature	U
27734	GTC	7	0	t	\N	\N	\N	\N	\N	Boros Elite	Creature	U
27744	CON	13	0	t	\N	\N	\N	\N	\N	Nacatl Hunt-Pride	Creature	U
27754	GTC	13	0	t	\N	\N	\N	\N	\N	Gideon, Champion of Justice	Lgd. Planeswalker	M
27764	CHK	8	0	t	\N	\N	\N	\N	\N	Eight-and-a-Half-Tails	Lgd. Creature	R
27774	CON	14	0	t	\N	\N	\N	\N	\N	Paragon of the Amesha	Creature	U
27684	MOR	5	1	t	\N	\N	\N	\N	\N	Cenn's Tactician	Creature	U
27604	ROE	6	0	\N	\N	\N	\N	\N	\N	Kozilek, Butcher of Truth	Lgd. Creature	M
27614	GPT	12	0	t	\N	\N	\N	\N	\N	Martyred Rusalka	Creature	U
27634	RAV	4	0	t	\N	\N	\N	\N	\N	Blazing Archon	Creature	R
27644	SOM	2	0	t	\N	\N	\N	\N	\N	Arrest	Enchantment	C
27654	DGM	10	0	t	\N	\N	\N	\N	\N	Wake the Reflections	Sorcery	C
27664	MRD	10	0	t	\N	\N	\N	\N	\N	Leonin Elder	Creature	C
27674	MOR	11	0	t	\N	\N	\N	\N	\N	Graceful Reprieve	Instant	U
574	IN5	19	3	\N	\N	\N	\N	\N	\N	Expose Evil	Instant	C
27703	LRW	3	0	t	\N	\N	\N	\N	\N	Austere Command	Sorcery	R
27713	EVE	9	0	t	\N	\N	\N	\N	\N	Kithkin Zealot	Creature	C
2249	NPH	27	1	\N	\N	\N	\N	\N	\N	Argent Mutation	Instant	U
2258	NPH	36	1	\N	\N	\N	\N	\N	\N	Impaler Shrike	Creature	C
1121	MAO	10	3	\N	\N	\N	\N	\N	\N	Cleric of the Forward Order	Creature	C
27743	BOK	13	0	t	\N	\N	\N	\N	\N	Kentaro, the Smiling Cat	Lgd. Creature	R
27753	CHK	13	0	t	\N	\N	\N	\N	\N	Hold the Line	Instant	R
27773	BOK	14	0	t	\N	\N	\N	\N	\N	Kitsune Palliator	Creature	U
2584	ZER	3	5	\N	\N	\N	\N	\N	\N	Angelheart Protector	Creature	C
4151	BFZ	188	1	\N	\N	\N	\N	\N	\N	Scythe Leopard	Creature	U
2404	OAT	7	1	\N	\N	\N	\N	\N	\N	Reality Smasher	Creature	R
2932	KAL	71	1	\N	\N	\N	\N	\N	\N	Aetherborn Marauder	Creature	U
2933	KAL	72	4	\N	\N	\N	\N	\N	\N	Ambitious Aetherborn	Creature	C
2934	KAL	73	1	\N	\N	\N	\N	\N	\N	Demon of Dark Schemes	Creature	M
2935	KAL	74	3	\N	\N	\N	\N	\N	\N	Dhund Operative	Creature	C
2936	KAL	75	2	\N	\N	\N	\N	\N	\N	Diabolic Tutor	Sorcery	U
2937	KAL	76	3	\N	\N	\N	\N	\N	\N	Die Young	Sorcery	C
2938	KAL	77	4	\N	\N	\N	\N	\N	\N	Dukhara Scavenger	Creature	C
2940	KAL	79	1	\N	\N	\N	\N	\N	\N	Embraal Bruiser	Creature	U
2941	KAL	80	2	\N	\N	\N	\N	\N	\N	Essence Extraction	Instant	U
2947	KAL	86	3	\N	\N	\N	\N	\N	\N	Lawless Broker	Creature	C
2948	KAL	87	4	\N	\N	\N	\N	\N	\N	Live Fast	Sorcery	C
2950	KAL	89	2	\N	\N	\N	\N	\N	\N	Make Obsolete	Instant	U
2952	KAL	91	4	\N	\N	\N	\N	\N	\N	Maulfist Squad	Creature	C
2953	KAL	92	2	\N	\N	\N	\N	\N	\N	Midnight Oil	Enchantment	R
2955	KAL	94	1	\N	\N	\N	\N	\N	\N	Morbid Curiosity	Sorcery	U
2956	KAL	95	3	\N	\N	\N	\N	\N	\N	Night Market Lookout	Creature	C
2958	KAL	97	1	\N	\N	\N	\N	\N	\N	Ovalchase Daredevil	Creature	U
2959	KAL	98	4	\N	\N	\N	\N	\N	\N	Prakhata Club Security	Creature	C
2960	KAL	99	3	\N	\N	\N	\N	\N	\N	Rush of Vitality	Instant	C
2961	KAL	100	4	\N	\N	\N	\N	\N	\N	Subtle Strike	Instant	C
2964	KAL	103	3	\N	\N	\N	\N	\N	\N	Tidy Conclusion	Instant	C
2965	KAL	104	1	\N	\N	\N	\N	\N	\N	Underhanded Designs	Enchantment	U
2966	KAL	105	2	\N	\N	\N	\N	\N	\N	Weaponcraft Enthusiast	Creature	U
2971	KAL	110	2	\N	\N	\N	\N	\N	\N	Chandra, Torch of Defiance	Lgd. Planeswalker	M
2973	KAL	112	1	\N	\N	\N	\N	\N	\N	Combustible Gearhulk	Artifact Creature	M
2991	KAL	130	1	\N	\N	\N	\N	\N	\N	Skyship Stalker	Creature	R
3110	KAL	249	1	\N	\N	\N	\N	\N	\N	Spirebluff Canal	Land	R
3191	DOM	56	1	\N	\N	\N	\N	\N	\N	Merfolk Trickster	Creature	U
3210	DOM	75	2	\N	\N	\N	\N	\N	\N	Wizard's Retort	Instant	U
27733	CHK	7	1	t	\N	\N	\N	\N	\N	Devoted Retainer	Creature	C
3212	DOM	77	3	\N	\N	\N	\N	\N	\N	Blessing of Belzenlok	Instant	C
3214	DOM	79	3	\N	\N	\N	\N	\N	\N	Cabal Paladin	Creature	C
3215	DOM	80	3	\N	\N	\N	\N	\N	\N	Caligo Skin-Witch	Creature	C
3219	DOM	84	4	\N	\N	\N	\N	\N	\N	Deathbloom Thallid	Creature	C
3220	DOM	85	3	\N	\N	\N	\N	\N	\N	Demonic Vigor	Enchantment	C
3224	DOM	89	4	\N	\N	\N	\N	\N	\N	Drudge Sentinel	Creature	C
3226	DOM	91	3	\N	\N	\N	\N	\N	\N	Eviscerate	Sorcery	C
27803	DGM	16	0	\N	t	\N	\N	\N	\N	Opal Lake Gatekeepers	Creature	C
27813	CON	17	0	t	\N	\N	\N	\N	\N	Scepter of Dominance	Artifact	R
27823	GTC	1	0	t	\N	\N	\N	\N	\N	Aerial Maneuver	Instant	C
27833	MID	1	0	t	\N	\N	\N	\N	\N	Adeline, Resplendent Cathar	Lgd. Creature	R
27987	BOK	30	1	t	\N	\N	\N	\N	\N	Yomiji, Who Bars the Way	Lgd. Creature	R
27853	EVE	19	0	\N	t	\N	\N	\N	\N	Dream Fracture	Instant	U
27863	DKA	20	0	t	\N	\N	\N	\N	\N	Séance	Enchantment	R
27873	BOK	21	1	t	\N	\N	\N	\N	\N	Shining Shoal	Instant	R
27893	BOK	23	0	t	\N	\N	\N	\N	\N	Split-Tail Miko	Creature	C
27903	DKA	24	0	t	\N	\N	\N	\N	\N	Thalia, Guardian of Thraben	Lgd. Creature	R
27983	CHK	16	1	t	\N	\N	\N	\N	\N	Hundred-Talon Kami	Creature	C
27913	BOK	26	2	t	\N	\N	\N	\N	\N	Terashi's Grasp	Sorcery	C
27933	SOK	22	4	t	\N	\N	\N	\N	\N	Plow Through Reito	Instant	C
27936	LRW	12	0	t	\N	\N	\N	\N	\N	Dawnfluke	Creature	C
27947	THS	4	0	t	\N	\N	\N	\N	\N	Chained to the Rocks	Enchantment	R
27953	CON	28	0	\N	t	\N	\N	\N	\N	Frontline Sage	Creature	C
27957	SOM	10	0	t	\N	\N	\N	\N	\N	Glint Hawk	Creature	C
27963	ROE	11	0	\N	\N	\N	\N	\N	\N	Spawnsire of Ulamog	Creature	R
27967	EVE	26	0	\N	t	\N	\N	\N	\N	Merrow Levitator	Creature	C
27973	ALA	9	0	t	\N	\N	\N	\N	\N	Elspeth, Knight-Errant	Lgd. Planeswalker	M
27977	BOK	32	0	\N	t	\N	\N	\N	\N	Chisei, Heart of Oceans	Lgd. Creature	R
27993	BOK	31	0	\N	t	\N	\N	\N	\N	Callow Jushi // Jaraku the Interloper	Creature	U
27763	WWK	8	1	t	\N	\N	\N	\N	\N	Iona's Judgment	Sorcery	C
27723	LRW	9	1	t	\N	\N	\N	\N	\N	Changeling Hero	Creature	U
27624	MOR	4	1	t	\N	\N	\N	\N	\N	Burrenton Shield-Bearers	Creature	C
27943	MOR	25	2	t	\N	\N	\N	\N	\N	Stonybrook Schoolmaster	Creature	C
27783	CHK	14	2	t	\N	\N	\N	\N	\N	Honden of Cleansing Fire	Lgd. Enchantment	U
36663	NEO	8	0	t	\N	\N	\N	\N	\N	Cloudsteel Kirin	Artifact Creature	R
36664	NEO	9	0	t	\N	\N	\N	\N	\N	Dragonfly Suit	Artifact	C
36662	NEO	3	1	t	\N	\N	\N	\N	\N	Banishing Slash	Sorcery	U
37630	BRO	24	0	t	\N	\N	\N	\N	\N	Repair and Recharge	Sorcery	U
37631	BRO	25	0	t	\N	\N	\N	\N	\N	Siege Veteran	Creature	R
37632	BRO	26	0	t	\N	\N	\N	\N	\N	Soul Partition	Instant	R
3233	DOM	98	0	\N	\N	\N	\N	\N	\N	Lich's Mastery	Lgd. Enchantment	R
3235	DOM	100	0	\N	\N	\N	\N	\N	\N	Phyrexian Scriptures	Enchantment	M
3237	DOM	102	0	\N	\N	\N	\N	\N	\N	Rite of Belzenlok	Enchantment	R
3248	DOM	113	0	\N	\N	\N	\N	\N	\N	Yargle, Glutton of Urborg	Lgd. Creature	U
3249	DOM	114	0	\N	\N	\N	\N	\N	\N	Yawgmoth's Vile Offering	Lgd. Sorcery	R
3264	DOM	129	0	\N	\N	\N	\N	\N	\N	Goblin Chainwhirler	Creature	R
27619	CHK	12	0	t	\N	\N	\N	\N	\N	Hikari, Twilight Guardian	Lgd. Creature	R
2257	NPH	35	0	\N	\N	\N	\N	\N	\N	Gitaxian Probe	Sorcery	C
344	IN4	100	5	\N	\N	\N	\N	\N	\N	Olivia's Dragoon	Creature	C
1122	MAO	11	0	\N	\N	\N	\N	\N	\N	Consul's Lieutenant	Creature	U
1128	MAO	17	5	\N	\N	\N	\N	\N	\N	Healing Hands	Sorcery	C
1129	MAO	18	3	\N	\N	\N	\N	\N	\N	Heavy Infantry	Creature	C
1133	MAO	22	0	\N	\N	\N	\N	\N	\N	Knightly Valor	Enchantment	U
1134	MAO	23	1	\N	\N	\N	\N	\N	\N	Kytheon, Hero of Akros // Gideon, Battle-Forged	Lgd. Creature	M
1137	MAO	26	4	\N	\N	\N	\N	\N	\N	Mighty Leap	Instant	C
1139	MAO	28	1	\N	\N	\N	\N	\N	\N	Patron of the Valiant	Creature	U
1140	MAO	29	1	\N	\N	\N	\N	\N	\N	Relic Seeker	Creature	R
1142	MAO	31	1	\N	\N	\N	\N	\N	\N	Sigil of the Empty Throne	Enchantment	R
1145	MAO	34	4	\N	\N	\N	\N	\N	\N	Suppression Bonds	Enchantment	C
1148	MAO	37	3	\N	\N	\N	\N	\N	\N	Totem-Guide Hartebeest	Creature	U
1150	MAO	39	0	\N	\N	\N	\N	\N	\N	Valor in Akros	Enchantment	U
1154	MAO	43	0	\N	\N	\N	\N	\N	\N	Alhammarret, High Arbiter	Lgd. Creature	R
1155	MAO	44	2	\N	\N	\N	\N	\N	\N	Anchor to the Aether	Sorcery	U
1156	MAO	45	3	\N	\N	\N	\N	\N	\N	Artificer's Epiphany	Instant	C
1160	MAO	49	1	\N	\N	\N	\N	\N	\N	Clash of Wills	Instant	U
1163	MAO	52	4	\N	\N	\N	\N	\N	\N	Deep-Sea Terror	Creature	C
1166	MAO	55	0	\N	\N	\N	\N	\N	\N	Displacement Wave	Sorcery	R
1167	MAO	56	3	\N	\N	\N	\N	\N	\N	Dreadwaters	Sorcery	C
1168	MAO	57	5	\N	\N	\N	\N	\N	\N	Faerie Miscreant	Creature	C
1171	MAO	60	1	\N	\N	\N	\N	\N	\N	Jace, Vryn's Prodigy // Jace, Telepath Unbound	Lgd. Creature	M
1172	MAO	61	1	\N	\N	\N	\N	\N	\N	Jace's Sanctum	Enchantment	R
1175	MAO	64	0	\N	\N	\N	\N	\N	\N	Mizzium Meddler	Creature	R
1176	MAO	65	3	\N	\N	\N	\N	\N	\N	Negate	Instant	C
1180	MAO	69	4	\N	\N	\N	\N	\N	\N	Scrapskin Drake	Creature	C
1183	MAO	72	3	\N	\N	\N	\N	\N	\N	Separatist Voidmage	Creature	C
1185	MAO	74	0	\N	\N	\N	\N	\N	\N	Skaab Goliath	Creature	U
1186	MAO	75	0	\N	\N	\N	\N	\N	\N	Soulblade Djinn	Creature	R
1190	MAO	79	1	\N	\N	\N	\N	\N	\N	Thopter Spy Network	Enchantment	R
1194	MAO	83	1	\N	\N	\N	\N	\N	\N	Whirler Rogue	Creature	U
1198	MAO	87	2	\N	\N	\N	\N	\N	\N	Consecrated by Blood	Enchantment	U
1199	MAO	88	1	\N	\N	\N	\N	\N	\N	Cruel Revival	Instant	U
1200	MAO	89	4	\N	\N	\N	\N	\N	\N	Dark Dabbling	Instant	C
1204	MAO	93	0	\N	\N	\N	\N	\N	\N	Despoiler of Souls	Creature	R
1205	MAO	94	1	\N	\N	\N	\N	\N	\N	Erebos's Titan	Creature	M
1207	MAO	96	1	\N	\N	\N	\N	\N	\N	Eyeblight Massacre	Sorcery	U
1210	MAO	99	0	\N	\N	\N	\N	\N	\N	Gilt-Leaf Winnower	Creature	R
1212	MAO	101	0	\N	\N	\N	\N	\N	\N	Graveblade Marauder	Creature	R
1215	MAO	104	1	\N	\N	\N	\N	\N	\N	Kothophed, Soul Hoarder	Lgd. Creature	R
1216	MAO	105	0	\N	\N	\N	\N	\N	\N	Languish	Sorcery	R
1217	MAO	106	1	\N	\N	\N	\N	\N	\N	Liliana, Heretical Healer // Liliana, Defiant Necromancer	Lgd. Creature	M
1219	MAO	108	2	\N	\N	\N	\N	\N	\N	Malakir Cullblade	Creature	U
1225	MAO	114	3	\N	\N	\N	\N	\N	\N	Read the Bones	Sorcery	C
1227	MAO	116	4	\N	\N	\N	\N	\N	\N	Returned Centaur	Creature	C
1231	MAO	120	1	\N	\N	\N	\N	\N	\N	Tainted Remedy	Enchantment	R
1233	MAO	122	1	\N	\N	\N	\N	\N	\N	Tormented Thoughts	Sorcery	U
1234	MAO	123	4	\N	\N	\N	\N	\N	\N	Touch of Moonglove	Instant	C
1239	MAO	128	2	\N	\N	\N	\N	\N	\N	Acolyte of the Inferno	Creature	U
1240	MAO	129	3	\N	\N	\N	\N	\N	\N	Act of Treason	Sorcery	C
1243	MAO	132	3	\N	\N	\N	\N	\N	\N	Bellows Lizard	Creature	C
1244	MAO	133	4	\N	\N	\N	\N	\N	\N	Boggart Brute	Creature	C
1247	MAO	136	4	\N	\N	\N	\N	\N	\N	Chandra's Fury	Instant	C
1248	MAO	137	1	\N	\N	\N	\N	\N	\N	Chandra's Ignition	Sorcery	R
1251	MAO	140	4	\N	\N	\N	\N	\N	\N	Dragon Fodder	Sorcery	C
1253	MAO	142	1	\N	\N	\N	\N	\N	\N	Enthralling Victor	Creature	U
1258	MAO	147	0	\N	\N	\N	\N	\N	\N	Flameshadow Conjuring	Enchantment	R
1260	MAO	149	3	\N	\N	\N	\N	\N	\N	Ghirapur Gearcrafter	Creature	C
1263	MAO	152	5	\N	\N	\N	\N	\N	\N	Infectious Bloodlust	Enchantment	C
1266	MAO	155	2	\N	\N	\N	\N	\N	\N	Magmatic Insight	Sorcery	U
1268	MAO	157	1	\N	\N	\N	\N	\N	\N	Pia and Kiran Nalaar	Lgd. Creature	R
1270	MAO	159	1	\N	\N	\N	\N	\N	\N	Ravaging Blaze	Instant	U
1271	MAO	160	2	\N	\N	\N	\N	\N	\N	Scab-Clan Berserker	Creature	R
1273	MAO	162	2	\N	\N	\N	\N	\N	\N	Skyraker Giant	Creature	U
1275	MAO	164	3	\N	\N	\N	\N	\N	\N	Subterranean Scout	Creature	C
1279	MAO	168	3	\N	\N	\N	\N	\N	\N	Aerial Volley	Instant	C
1282	MAO	171	1	\N	\N	\N	\N	\N	\N	Conclave Naturalists	Creature	U
1283	MAO	172	1	\N	\N	\N	\N	\N	\N	Dwynen, Gilt-Leaf Daen	Lgd. Creature	R
1285	MAO	174	1	\N	\N	\N	\N	\N	\N	Elemental Bond	Enchantment	U
1287	MAO	176	1	\N	\N	\N	\N	\N	\N	Evolutionary Leap	Enchantment	R
1289	MAO	178	2	\N	\N	\N	\N	\N	\N	Gather the Pack	Sorcery	U
1291	MAO	180	1	\N	\N	\N	\N	\N	\N	Herald of the Pantheon	Creature	R
1294	MAO	183	1	\N	\N	\N	\N	\N	\N	Joraga Invocation	Sorcery	U
1296	MAO	185	3	\N	\N	\N	\N	\N	\N	Llanowar Empath	Creature	C
1298	MAO	187	3	\N	\N	\N	\N	\N	\N	Mantle of Webs	Enchantment	C
1300	MAO	189	1	\N	\N	\N	\N	\N	\N	Nissa, Vastwood Seer // Nissa, Sage Animist	Lgd. Creature	M
1302	MAO	191	0	\N	\N	\N	\N	\N	\N	Nissa's Revelation	Sorcery	R
1304	MAO	193	0	\N	\N	\N	\N	\N	\N	Outland Colossus	Creature	R
1309	MAO	198	2	\N	\N	\N	\N	\N	\N	Somberwald Alpha	Creature	U
1311	MAO	200	4	\N	\N	\N	\N	\N	\N	Timberpack Wolf	Creature	C
27629	ISD	4	0	t	\N	\N	\N	\N	\N	Avacynian Priest	Creature	C
27639	CHK	2	0	t	\N	\N	\N	\N	\N	Bushi Tenderfoot // Kenzo the Hardhearted	Creature	U
27649	SHM	2	0	t	\N	\N	\N	\N	\N	Armored Ascension	Enchantment	U
27609	BOK	12	1	t	\N	\N	\N	\N	\N	Kami of the Honored Dead	Creature	U
27636	RTR	4	0	t	\N	\N	\N	\N	\N	Avenging Arrow	Instant	C
3269	DOM	134	3	\N	\N	\N	\N	\N	\N	Keldon Overseer	Creature	C
3276	DOM	141	4	\N	\N	\N	\N	\N	\N	Seismic Shift	Sorcery	C
3385	DOM	250	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
4363	WOS	126	1	\N	\N	\N	\N	\N	\N	Dreadhorde Twins	Creature	U
27646	RAV	2	0	t	\N	\N	\N	\N	\N	Bathe in Light	Instant	U
1343	MAO	232	0	\N	\N	\N	\N	\N	\N	Mage-Ring Responder	Artifact Creature	R
1499	AMO	116	4	\N	\N	\N	\N	\N	\N	Wasteland Scorpion	Creature	C
245	IN4	1	2	\N	\N	\N	\N	\N	\N	Abundant Maw	Creature	U
1314	MAO	203	1	\N	\N	\N	\N	\N	\N	Valeron Wardens	Creature	U
1316	MAO	205	2	\N	\N	\N	\N	\N	\N	Vine Snare	Instant	C
1318	MAO	207	0	\N	\N	\N	\N	\N	\N	Woodland Bellower	Creature	M
1321	MAO	210	2	\N	\N	\N	\N	\N	\N	Blazing Hellhound	Creature	U
1323	MAO	212	1	\N	\N	\N	\N	\N	\N	Bounding Krasis	Creature	U
1325	MAO	214	1	\N	\N	\N	\N	\N	\N	Iroas's Champion	Creature	U
1326	MAO	215	2	\N	\N	\N	\N	\N	\N	Possessed Skaab	Creature	U
1330	MAO	219	0	\N	\N	\N	\N	\N	\N	Zendikar Incarnate	Creature	U
1332	MAO	221	0	\N	\N	\N	\N	\N	\N	Alhammarret's Archive	Lgd. Artifact	M
1334	MAO	223	4	\N	\N	\N	\N	\N	\N	Bonded Construct	Artifact Creature	C
1337	MAO	226	1	\N	\N	\N	\N	\N	\N	Gold-Forged Sentinel	Artifact Creature	U
1339	MAO	228	4	\N	\N	\N	\N	\N	\N	Guardians of Meletis	Artifact Creature	C
1341	MAO	230	2	\N	\N	\N	\N	\N	\N	Helm of the Gods	Artifact	R
2518	OAT	121	2	\N	\N	\N	\N	\N	\N	Birthing Hulk	Creature	U
2520	OAT	123	5	\N	\N	\N	\N	\N	\N	Scion Summoner	Creature	C
2525	OAT	128	2	\N	\N	\N	\N	\N	\N	Bonds of Mortality	Enchantment	U
2530	OAT	133	3	\N	\N	\N	\N	\N	\N	Harvester Troll	Creature	U
2535	OAT	138	1	\N	\N	\N	\N	\N	\N	Nissa, Voice of Zendikar	Lgd. Planeswalker	M
2536	OAT	139	2	\N	\N	\N	\N	\N	\N	Nissa's Judgment	Sorcery	U
2538	OAT	141	3	\N	\N	\N	\N	\N	\N	Pulse of Murasa	Instant	C
2539	OAT	142	4	\N	\N	\N	\N	\N	\N	Saddleback Lagac	Creature	C
2540	OAT	143	2	\N	\N	\N	\N	\N	\N	Seed Guardian	Creature	U
2547	OAT	150	2	\N	\N	\N	\N	\N	\N	Void Grafter	Creature	U
2585	ZER	4	0	\N	\N	\N	\N	\N	\N	Archon of Emeria	Creature	R
2591	ZER	10	3	\N	\N	\N	\N	\N	\N	Disenchant	Instant	C
4123	BFZ	160	3	\N	\N	\N	\N	\N	\N	Valakut Predator	Creature	C
2412	OAT	15	2	\N	\N	\N	\N	\N	\N	Allied Reinforcements	Sorcery	U
2414	OAT	17	5	\N	\N	\N	\N	\N	\N	Dazzling Reflection	Instant	C
2417	OAT	20	2	\N	\N	\N	\N	\N	\N	Immolating Glare	Instant	U
2419	OAT	22	5	\N	\N	\N	\N	\N	\N	Isolation Zone	Enchantment	C
2422	OAT	25	1	\N	\N	\N	\N	\N	\N	Linvala, the Preserver	Lgd. Creature	M
2424	OAT	27	4	\N	\N	\N	\N	\N	\N	Makindi Aeronaut	Creature	C
2427	OAT	30	1	\N	\N	\N	\N	\N	\N	Oath of Gideon	Lgd. Enchantment	R
2430	OAT	33	6	\N	\N	\N	\N	\N	\N	Searing Light	Instant	C
2432	OAT	35	7	\N	\N	\N	\N	\N	\N	Spawnbinder Mage	Creature	C
2434	OAT	37	0	\N	\N	\N	\N	\N	\N	Stone Haven Outfitter	Creature	R
2439	OAT	42	5	\N	\N	\N	\N	\N	\N	Cultivator Drone	Creature	C
2441	OAT	44	1	\N	\N	\N	\N	\N	\N	Dimensional Infiltrator	Creature	R
2442	OAT	45	5	\N	\N	\N	\N	\N	\N	Gravity Negator	Creature	C
2443	OAT	46	2	\N	\N	\N	\N	\N	\N	Prophet of Distortion	Creature	U
2448	OAT	51	6	\N	\N	\N	\N	\N	\N	Comparative Analysis	Instant	C
2450	OAT	53	1	\N	\N	\N	\N	\N	\N	Crush of Tentacles	Sorcery	M
2455	OAT	58	3	\N	\N	\N	\N	\N	\N	Jwar Isle Avenger	Creature	C
2458	OAT	61	1	\N	\N	\N	\N	\N	\N	Overwhelming Denial	Instant	R
2460	OAT	63	1	\N	\N	\N	\N	\N	\N	Sphinx of the Final Word	Creature	M
2461	OAT	64	5	\N	\N	\N	\N	\N	\N	Sweep Away	Instant	C
2470	OAT	73	5	\N	\N	\N	\N	\N	\N	Kozilek's Shrieker	Creature	C
2473	OAT	76	2	\N	\N	\N	\N	\N	\N	Reaver Drone	Creature	U
2476	OAT	79	4	\N	\N	\N	\N	\N	\N	Slaughter Drone	Creature	C
2478	OAT	81	3	\N	\N	\N	\N	\N	\N	Visions of Brutality	Enchantment	U
2481	OAT	84	1	\N	\N	\N	\N	\N	\N	Drana's Chosen	Creature	R
2482	OAT	85	2	\N	\N	\N	\N	\N	\N	Grasp of Darkness	Instant	U
2486	OAT	89	1	\N	\N	\N	\N	\N	\N	Remorseless Punishment	Sorcery	R
2489	OAT	92	4	\N	\N	\N	\N	\N	\N	Vampire Envoy	Creature	C
2492	OAT	95	4	\N	\N	\N	\N	\N	\N	Eldrazi Aggressor	Creature	C
2494	OAT	97	1	\N	\N	\N	\N	\N	\N	Immobilizer Eldrazi	Creature	U
2497	OAT	100	4	\N	\N	\N	\N	\N	\N	Reality Hemorrhage	Instant	C
2500	OAT	103	5	\N	\N	\N	\N	\N	\N	Brute Strength	Instant	C
2502	OAT	105	3	\N	\N	\N	\N	\N	\N	Cinder Hellion	Creature	C
2504	OAT	107	1	\N	\N	\N	\N	\N	\N	Embodiment of Fury	Creature	U
2507	OAT	110	2	\N	\N	\N	\N	\N	\N	Goblin Dark-Dwellers	Creature	R
2509	OAT	112	2	\N	\N	\N	\N	\N	\N	Kazuul's Toll Collector	Creature	U
2512	OAT	115	2	\N	\N	\N	\N	\N	\N	Pyromancer's Assault	Enchantment	U
2514	OAT	117	6	\N	\N	\N	\N	\N	\N	Sparkmage's Gambit	Sorcery	C
2517	OAT	120	5	\N	\N	\N	\N	\N	\N	Zada's Commando	Creature	C
2550	OAT	153	2	\N	\N	\N	\N	\N	\N	Cliffhaven Vampire	Creature	U
2556	OAT	159	1	\N	\N	\N	\N	\N	\N	Stormchaser Mage	Creature	U
2558	OAT	161	8	\N	\N	\N	\N	\N	\N	Bone Saw	Artifact	C
2560	OAT	163	1	\N	\N	\N	\N	\N	\N	Chitinous Cloak	Artifact	U
2561	OAT	164	4	\N	\N	\N	\N	\N	\N	Hedron Crawler	Artifact Creature	C
2569	OAT	172	5	\N	\N	\N	\N	\N	\N	Holdout Settlement	Land	C
2570	OAT	173	2	\N	\N	\N	\N	\N	\N	Meandering River	Land	U
2571	OAT	174	1	\N	\N	\N	\N	\N	\N	Mirrorpool	Land	M
2574	OAT	177	1	\N	\N	\N	\N	\N	\N	Sea Gate Wreckage	Land	R
2575	OAT	178	3	\N	\N	\N	\N	\N	\N	Submerged Boneyard	Land	U
2577	OAT	180	3	\N	\N	\N	\N	\N	\N	Tranquil Expanse	Land	U
2580	OAT	183	1	\N	\N	\N	\N	\N	\N	Wastes	Basic Land	C
3256	DOM	121	2	\N	\N	\N	\N	\N	\N	Firefist Adept	Creature	U
27656	GPT	10	0	t	\N	\N	\N	\N	\N	Leyline of the Meek	Enchantment	R
36364	ISD	64	1	\N	t	\N	\N	\N	\N	Ludevic's Test Subject // Ludevic's Abomination	Creature	R
27676	WWK	11	0	t	\N	\N	\N	\N	\N	Kor Firewalker	Creature	U
27697	SOK	3	0	t	\N	\N	\N	\N	\N	Celestial Kirin	Lgd. Creature	R
36666	NEO	7	0	t	\N	\N	\N	\N	\N	Brilliant Restoration	Sorcery	R
27721	ISD	9	1	t	\N	\N	\N	\N	\N	Dearly Departed	Creature	R
248	IN4	4	2	\N	\N	\N	\N	\N	\N	Drownyard Behemoth	Creature	U
27681	EVE	5	0	t	\N	\N	\N	\N	\N	Endure	Instant	U
27691	LRW	5	0	t	\N	\N	\N	\N	\N	Battle Mastery	Enchantment	U
2588	ZER	7	1	\N	\N	\N	\N	\N	\N	Canyon Jerboa	Creature	U
4116	BFZ	153	1	\N	\N	\N	\N	\N	\N	Retreat to Valakut	Enchantment	U
4117	BFZ	154	2	\N	\N	\N	\N	\N	\N	Rolling Thunder	Sorcery	U
4118	BFZ	155	5	\N	\N	\N	\N	\N	\N	Shatterskull Recruit	Creature	C
4121	BFZ	158	1	\N	\N	\N	\N	\N	\N	Tunneling Geopede	Creature	U
4122	BFZ	159	3	\N	\N	\N	\N	\N	\N	Valakut Invoker	Creature	C
4192	BFZ	229	2	\N	\N	\N	\N	\N	\N	Blighted Cataract	Land	U
4201	BFZ	238	3	\N	\N	\N	\N	\N	\N	Looming Spires	Land	C
2862	KAL	1	3	\N	\N	\N	\N	\N	\N	Acrobatic Maneuver	Instant	C
2866	KAL	5	0	\N	\N	\N	\N	\N	\N	Authority of the Consuls	Enchantment	R
4246	WOS	9	3	\N	\N	\N	\N	\N	\N	Defiant Strike	Instant	C
4402	WOS	165	3	\N	\N	\N	\N	\N	\N	Kraul Stinger	Creature	C
4468	WOS	231	1	\N	\N	\N	\N	\N	\N	Kaya, Bane of the Dead	Lgd. Planeswalker	U
4472	WOS	235	1	\N	\N	\N	\N	\N	\N	Samut, Tyrant Smasher	Lgd. Planeswalker	U
4475	WOS	238	1	\N	\N	\N	\N	\N	\N	God-Pharaoh's Statue	Lgd. Artifact	U
27701	ISD	3	0	t	\N	\N	\N	\N	\N	Angelic Overseer	Creature	M
27711	DKA	9	0	t	\N	\N	\N	\N	\N	Gavony Ironwright	Creature	U
27731	SOK	7	0	t	\N	\N	\N	\N	\N	Descendant of Kiyomaro	Creature	U
27761	MOR	8	0	t	\N	\N	\N	\N	\N	Daily Regimen	Enchantment	U
27782	WWK	14	0	t	\N	\N	\N	\N	\N	Marsh Threader	Creature	C
27792	GPT	15	0	t	\N	\N	\N	\N	\N	Shrieking Grotesque	Creature	C
27802	DKA	16	0	t	\N	\N	\N	\N	\N	Niblis of the Urn	Creature	U
27812	BOK	17	0	t	\N	\N	\N	\N	\N	Opal-Eye, Konda's Yojimbo	Lgd. Creature	R
27842	GPT	18	0	t	\N	\N	\N	\N	\N	Spelltithe Enforcer	Creature	R
27852	DGM	19	0	\N	t	\N	\N	\N	\N	Uncovered Clues	Sorcery	C
27862	CON	20	0	t	\N	\N	\N	\N	\N	Wall of Reverence	Creature	R
28077	SOK	28	1	t	\N	\N	\N	\N	\N	Shinen of Stars' Light	Creature	C
27677	CHK	11	1	t	\N	\N	\N	\N	\N	Harsh Deceiver	Creature	C
27902	CON	24	0	\N	t	\N	\N	\N	\N	Cumber Stone	Artifact	U
27667	BOK	11	1	t	\N	\N	\N	\N	\N	Kami of Tattered Shoji	Creature	C
27932	MOR	22	0	t	\N	\N	\N	\N	\N	Reveillark	Creature	R
27937	SOM	12	0	t	\N	\N	\N	\N	\N	Kemba, Kha Regent	Lgd. Creature	R
27822	CHK	1	1	t	\N	\N	\N	\N	\N	Blessed Breath	Instant	C
27946	MID	4	0	t	\N	\N	\N	\N	\N	Bereaved Survivor // Dauntless Avenger	Creature	U
27952	WWK	23	0	t	\N	\N	\N	\N	\N	Veteran's Reflexes	Instant	C
27956	EVE	28	0	\N	t	\N	\N	\N	\N	Razorfin Abolisher	Creature	U
27962	SOM	11	0	t	\N	\N	\N	\N	\N	Indomitable Archangel	Creature	M
27966	DGM	26	0	\N	\N	t	\N	\N	\N	Maze Abomination	Creature	C
27972	RAV	9	0	t	\N	\N	\N	\N	\N	Conclave Equenaut	Creature	C
28063	SOK	30	3	t	\N	\N	\N	\N	\N	Torii Watchward	Creature	C
27982	WWK	24	0	\N	t	\N	\N	\N	\N	Aether Tradewinds	Instant	C
27986	MRD	16	0	t	\N	\N	\N	\N	\N	Raise the Alarm	Instant	C
27751	SOK	13	1	t	\N	\N	\N	\N	\N	Inner-Chamber Guard	Creature	U
27996	MID	3	0	t	\N	\N	\N	\N	\N	Beloved Beggar // Generous Soul	Creature	U
27997	THS	3	0	t	\N	\N	\N	\N	\N	Celestial Archon	Enchantment Creature	R
28002	MRD	14	0	t	\N	\N	\N	\N	\N	Loxodon Punisher	Creature	R
28006	RTR	8	0	t	\N	\N	\N	\N	\N	Concordia Pegasus	Creature	C
28007	RTR	6	0	t	\N	\N	\N	\N	\N	Azorius Justiciar	Creature	U
28067	ALA	13	1	t	\N	\N	\N	\N	\N	Gustrider Exuberant	Creature	C
28016	DKA	27	0	\N	t	\N	\N	\N	\N	Artful Dodge	Sorcery	C
28017	DGM	27	0	\N	\N	t	\N	\N	\N	Pontiff of Blight	Creature	R
28022	BOK	33	0	\N	t	\N	\N	\N	\N	Disrupting Shoal	Instant	R
28026	ARB	34	0	\N	\N	t	t	\N	\N	Bituminous Blast	Instant	U
36667	NEO	11	0	t	\N	\N	\N	\N	\N	Era of Enlightenment // Hand of Enlightenment	Enchantment	C
28032	ZEN	1	0	t	\N	\N	\N	\N	\N	Armament Master	Creature	R
28046	WWK	27	0	\N	t	\N	\N	\N	\N	Enclave Elite	Creature	C
28047	SOM	14	0	t	\N	\N	\N	\N	\N	Leonin Arbiter	Creature	R
28052	LRW	15	0	t	\N	\N	\N	\N	\N	Galepowder Mage	Creature	R
28056	ALA	15	0	t	\N	\N	\N	\N	\N	Knight of the Skyward Eye	Creature	C
28057	DKA	30	0	\N	t	\N	\N	\N	\N	Call to the Kindred	Enchantment	R
28062	MOR	30	0	\N	t	\N	\N	\N	\N	Dewdrop Spy	Creature	C
28066	RAV	13	0	t	\N	\N	\N	\N	\N	Devouring Light	Instant	U
28072	BOK	36	0	\N	t	\N	\N	\N	\N	Heed the Mists	Sorcery	U
28082	GTC	20	0	t	\N	\N	\N	\N	\N	Luminate Primordial	Creature	R
28083	ISD	20	0	t	\N	\N	\N	\N	\N	Mausoleum Guard	Creature	U
28087	DKA	34	0	\N	t	\N	\N	\N	\N	Curse of Echoes	Enchantment	R
28092	GTC	19	0	t	\N	\N	\N	\N	\N	Knight Watch	Sorcery	C
28093	ISD	19	0	t	\N	\N	\N	\N	\N	Intangible Virtue	Enchantment	U
28096	MID	7	0	t	\N	\N	\N	\N	\N	Brutal Cathar // Moonrage Brute	Creature	R
27832	SHM	1	1	t	\N	\N	\N	\N	\N	Apothecary Initiate	Creature	C
28076	MOR	28	1	t	\N	\N	\N	\N	\N	Weight of Conscience	Enchantment	C
27741	ARB	13	1	t	t	\N	\N	\N	\N	Stormcaller's Boon	Enchantment	C
27922	ARB	29	1	\N	t	t	\N	\N	\N	Soul Manipulation	Instant	C
27771	ARB	14	1	t	t	\N	\N	\N	\N	Talon Trooper	Creature	C
27882	ARB	22	1	\N	t	t	\N	\N	\N	Jhessian Zombies	Creature	C
28037	CON	32	2	\N	t	\N	\N	\N	\N	Parasitic Strix	Artifact Creature	C
36669	NEO	13	0	t	\N	\N	\N	\N	\N	Farewell	Sorcery	R
28086	CON	34	1	\N	t	\N	\N	\N	\N	Scornful Aether-Lich	Artifact Creature	U
28097	THS	7	1	t	\N	\N	\N	\N	\N	Decorated Griffin	Creature	U
28036	THS	8	1	t	\N	\N	\N	\N	\N	Divine Verdict	Instant	C
28073	CON	36	2	\N	t	\N	\N	\N	\N	Traumatic Visions	Instant	C
36670	NEO	14	0	t	\N	\N	\N	\N	\N	Go-Shintai of Shared Purpose	Lgd. Enchantment Creature	U
36674	NEO	18	0	t	\N	\N	\N	\N	\N	Imperial Recovery Unit	Artifact	U
36668	NEO	12	1	t	\N	\N	\N	\N	\N	The Fall of Lord Konda // Fragment of Konda	Enchantment	U
36672	NEO	16	1	t	\N	\N	\N	\N	\N	Hotshot Mechanic	Artifact Creature	U
36671	NEO	15	1	t	\N	\N	\N	\N	\N	Golden-Tail Disciple	Enchantment Creature	C
2124	MIB	57	1	\N	\N	t	\N	\N	\N	Virulent Wound	Instant	C
249	IN4	5	1	\N	\N	\N	\N	\N	\N	Elder Deep-Fiend	Creature	R
4163	BFZ	200	1	\N	\N	\N	\N	\N	\N	Brutal Expulsion	Instant	R
4166	BFZ	203	1	\N	\N	\N	\N	\N	\N	Fathom Feeder	Creature	R
4171	BFZ	208	2	\N	\N	\N	\N	\N	\N	Angelic Captain	Creature	R
4172	BFZ	209	1	\N	\N	\N	\N	\N	\N	Bring to Light	Sorcery	R
4177	BFZ	214	2	\N	\N	\N	\N	\N	\N	March from the Tomb	Sorcery	R
4178	BFZ	215	1	\N	\N	\N	\N	\N	\N	Munda, Ambush Leader	Lgd. Creature	R
4197	BFZ	234	2	\N	\N	\N	\N	\N	\N	Canopy Vista	Land	R
4202	BFZ	239	1	\N	\N	\N	\N	\N	\N	Lumbering Falls	Land	R
4203	BFZ	240	1	\N	\N	\N	\N	\N	\N	Mortuary Mire	Land	C
4204	BFZ	241	1	\N	\N	\N	\N	\N	\N	Prairie Stream	Land	R
4207	BFZ	244	1	\N	\N	\N	\N	\N	\N	Shambling Vent	Land	R
2589	ZER	8	3	\N	\N	\N	\N	\N	\N	Cliffhaven Sell-Sword	Creature	C
2597	ZER	16	0	\N	\N	\N	\N	\N	\N	Felidar Retreat	Enchantment	R
2600	ZER	19	1	\N	\N	\N	\N	\N	\N	Kabira Takedown // Kabira Plateau	Instant // Land	U
2602	ZER	21	1	\N	\N	\N	\N	\N	\N	Kor Blademaster	Creature	U
2606	ZER	25	3	\N	\N	\N	\N	\N	\N	Makindi Ox	Creature	C
2609	ZER	28	5	\N	\N	\N	\N	\N	\N	Mesa Lynx	Creature	C
2611	ZER	30	1	\N	\N	\N	\N	\N	\N	Ondu Inversion // Ondu Skyruins	Sorcery // Land	R
2612	ZER	31	2	\N	\N	\N	\N	\N	\N	Paired Tactician	Creature	U
2615	ZER	34	4	\N	\N	\N	\N	\N	\N	Prowling Felidar	Creature	C
2617	ZER	36	3	\N	\N	\N	\N	\N	\N	Sea Gate Banneret	Creature	C
2619	ZER	38	3	\N	\N	\N	\N	\N	\N	Shepherd of Heroes	Creature	C
2621	ZER	40	2	\N	\N	\N	\N	\N	\N	Skyclave Cleric // Skyclave Basilica	Creature	U
2623	ZER	42	5	\N	\N	\N	\N	\N	\N	Smite the Monstrous	Instant	C
2624	ZER	43	4	\N	\N	\N	\N	\N	\N	Tazeem Raptor	Creature	C
2625	ZER	44	0	\N	\N	\N	\N	\N	\N	Tazri, Beacon of Unity	Lgd. Creature	M
2627	ZER	46	1	\N	\N	\N	\N	\N	\N	Beyeen Veil // Beyeen Coast	Instant // Land	U
2631	ZER	50	5	\N	\N	\N	\N	\N	\N	Chilling Trap	Instant	C
2632	ZER	51	4	\N	\N	\N	\N	\N	\N	Cleric of Chill Depths	Creature	C
2635	ZER	54	0	\N	\N	\N	\N	\N	\N	Coralhelm Chronicler	Creature	R
2638	ZER	57	5	\N	\N	\N	\N	\N	\N	Expedition Diviner	Creature	C
2641	ZER	60	1	\N	\N	\N	\N	\N	\N	Glasspool Mimic // Glasspool Shore	Creature	R
2643	ZER	62	2	\N	\N	\N	\N	\N	\N	Into the Roil	Instant	C
2645	ZER	64	1	\N	\N	\N	\N	\N	\N	Jwari Disruption // Jwari Ruins	Instant // Land	U
2648	ZER	67	0	\N	\N	\N	\N	\N	\N	Maddening Cacophony	Sorcery	R
2650	ZER	69	2	\N	\N	\N	\N	\N	\N	Merfolk Falconer	Creature	U
2653	ZER	72	0	\N	\N	\N	\N	\N	\N	Nimble Trapfinder	Creature	R
2655	ZER	74	1	\N	\N	\N	\N	\N	\N	Roost of Drakes	Enchantment	U
2658	ZER	77	0	\N	\N	\N	\N	\N	\N	Sea Gate Stormcaller	Creature	M
2659	ZER	78	4	\N	\N	\N	\N	\N	\N	Seafloor Stalker	Creature	C
2662	ZER	81	2	\N	\N	\N	\N	\N	\N	Skyclave Plunder	Sorcery	U
2664	ZER	83	1	\N	\N	\N	\N	\N	\N	Sure-Footed Infiltrator	Creature	U
2667	ZER	86	2	\N	\N	\N	\N	\N	\N	Umara Wizard // Umara Skyfalls	Creature	U
2671	ZER	90	0	\N	\N	\N	\N	\N	\N	Agadeem's Awakening // Agadeem, the Undercrypt	Sorcery // Land	M
2672	ZER	91	2	\N	\N	\N	\N	\N	\N	Blackbloom Rogue // Blackbloom Bog	Creature	U
2675	ZER	94	2	\N	\N	\N	\N	\N	\N	Bloodchief's Thirst	Sorcery	U
2678	ZER	97	1	\N	\N	\N	\N	\N	\N	Demon's Disciple	Creature	U
2679	ZER	98	0	\N	\N	\N	\N	\N	\N	Drana, the Last Bloodchief	Lgd. Creature	M
2683	ZER	102	3	\N	\N	\N	\N	\N	\N	Feed the Swarm	Sorcery	C
2685	ZER	104	5	\N	\N	\N	\N	\N	\N	Guul Draz Mucklord	Creature	C
2687	ZER	106	0	\N	\N	\N	\N	\N	\N	Hagra Mauling // Hagra Broodpit	Instant // Land	R
2689	ZER	108	1	\N	\N	\N	\N	\N	\N	Inscription of Ruin	Sorcery	R
2690	ZER	109	1	\N	\N	\N	\N	\N	\N	Lithoform Blight	Enchantment	U
2692	ZER	111	1	\N	\N	\N	\N	\N	\N	Malakir Rebirth // Malakir Mire	Instant // Land	U
2695	ZER	114	4	\N	\N	\N	\N	\N	\N	Mind Drain	Sorcery	C
2701	ZER	120	2	\N	\N	\N	\N	\N	\N	Pelakka Predation // Pelakka Caverns	Sorcery // Land	U
2702	ZER	121	1	\N	\N	\N	\N	\N	\N	Scion of the Swarm	Creature	U
2704	ZER	123	3	\N	\N	\N	\N	\N	\N	Shadow Stinger	Creature	U
2706	ZER	125	1	\N	\N	\N	\N	\N	\N	Skyclave Shade	Creature	R
2709	ZER	128	5	\N	\N	\N	\N	\N	\N	Subtle Strike	Instant	C
2712	ZER	131	3	\N	\N	\N	\N	\N	\N	Vanquish the Weak	Instant	C
2714	ZER	133	3	\N	\N	\N	\N	\N	\N	Akoum Hellhound	Creature	C
2716	ZER	135	3	\N	\N	\N	\N	\N	\N	Ardent Electromancer	Creature	C
2719	ZER	138	5	\N	\N	\N	\N	\N	\N	Expedition Champion	Creature	C
2721	ZER	140	4	\N	\N	\N	\N	\N	\N	Fissure Wizard	Creature	C
2723	ZER	142	3	\N	\N	\N	\N	\N	\N	Grotag Bug-Catcher	Creature	C
4209	BFZ	246	3	\N	\N	\N	\N	\N	\N	Skyline Cascade	Land	C
4212	BFZ	249	1	\N	\N	\N	\N	\N	\N	Sunken Hollow	Land	R
4231	BFZ	268	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
4228	BFZ	265	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
27669	DKA	11	0	t	\N	\N	\N	\N	\N	Increasing Devotion	Sorcery	R
4229	BFZ	266	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
4232	BFZ	269	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
4230	BFZ	267	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
2863	KAL	2	1	\N	\N	\N	\N	\N	\N	Aerial Responder	Creature	U
4258	WOS	21	3	\N	\N	\N	\N	\N	\N	Loxodon Sergeant	Creature	C
27689	ISD	5	0	t	\N	\N	\N	\N	\N	Bonds of Faith	Enchantment	C
27709	SHM	3	0	t	\N	\N	\N	\N	\N	Ballynock Cohort	Creature	C
27719	CHK	9	0	t	\N	\N	\N	\N	\N	Ethereal Haze	Instant	C
27699	CHK	3	3	t	\N	\N	\N	\N	\N	Cage of Hands	Enchantment	C
27739	ROE	7	0	\N	\N	\N	\N	\N	\N	It That Betrays	Creature	R
27679	ISD	11	2	t	\N	\N	\N	\N	\N	Doomed Traveler	Creature	C
27759	GPT	8	0	t	\N	\N	\N	\N	\N	Guardian's Magemark	Enchantment	C
27769	SOM	8	0	t	\N	\N	\N	\N	\N	Ghalma's Warden	Creature	C
27780	MOR	14	0	t	\N	\N	\N	\N	\N	Kinsbaile Borderguard	Creature	R
27789	DKA	15	0	t	\N	\N	\N	\N	\N	Niblis of the Mist	Creature	C
36677	NEO	21	0	t	\N	\N	\N	\N	\N	Invoke Justice	Sorcery	R
36676	NEO	20	1	t	\N	\N	\N	\N	\N	Intercessor's Arrest	Enchantment	C
27700	GTC	3	0	t	\N	\N	\N	\N	\N	Angelic Skirmisher	Creature	R
27710	CON	9	0	t	\N	\N	\N	\N	\N	Lapse of Certainty	Instant	C
27720	GTC	9	0	t	\N	\N	\N	\N	\N	Daring Skyjek	Creature	C
27740	RAV	7	0	t	\N	\N	\N	\N	\N	Chant of Vitu-Ghazi	Instant	U
27750	MOR	13	0	t	\N	\N	\N	\N	\N	Indomitable Ancients	Creature	R
28023	CHK	17	1	t	\N	\N	\N	\N	\N	Indomitable Will	Enchantment	C
256	IN4	12	4	\N	\N	\N	\N	\N	\N	Wretched Gryff	Creature	C
27770	ROE	8	0	\N	\N	\N	\N	\N	\N	Not of This World	Tribal Instant	U
28028	CHK	18	1	t	\N	\N	\N	\N	\N	Innocence Kami	Creature	U
27790	DGM	15	0	\N	t	\N	\N	\N	\N	Murmuring Phantasm	Creature	C
2586	ZER	5	1	\N	\N	\N	\N	\N	\N	Archpriest of Iona	Creature	R
27810	ARB	17	0	\N	t	t	\N	\N	\N	Architects of Will	Artifact Creature	C
4007	BFZ	44	1	\N	\N	\N	\N	\N	\N	Retreat to Emeria	Enchantment	U
4008	BFZ	45	2	\N	\N	\N	\N	\N	\N	Roil's Retribution	Instant	U
4009	BFZ	46	1	\N	\N	\N	\N	\N	\N	Serene Steward	Creature	U
27830	ALA	1	0	t	\N	\N	\N	\N	\N	Akrasan Squire	Creature	C
4010	BFZ	47	2	\N	\N	\N	\N	\N	\N	Shadow Glider	Creature	C
27840	DGM	18	0	\N	t	\N	\N	\N	\N	Trait Doctoring	Sorcery	R
4011	BFZ	48	4	\N	\N	\N	\N	\N	\N	Sheer Drop	Sorcery	C
27850	CON	19	0	t	\N	\N	\N	\N	\N	Valiant Guard	Creature	C
27820	SOK	17	1	t	\N	\N	\N	\N	\N	Kitsune Loreweaver	Creature	C
27869	SOK	20	4	t	\N	\N	\N	\N	\N	Moonwing Moth	Creature	C
4012	BFZ	49	4	\N	\N	\N	\N	\N	\N	Smite the Monstrous	Instant	C
27889	GPT	22	0	\N	t	\N	\N	\N	\N	Aetherplasm	Creature	U
27899	ARB	24	0	\N	t	t	\N	\N	\N	Lich Lord of Unx	Creature	R
4013	BFZ	50	2	\N	\N	\N	\N	\N	\N	Stasis Snare	Enchantment	U
4014	BFZ	51	4	\N	\N	\N	\N	\N	\N	Stone Haven Medic	Creature	C
4015	BFZ	52	3	\N	\N	\N	\N	\N	\N	Tandem Tactics	Instant	C
4016	BFZ	53	0	\N	\N	\N	\N	\N	\N	Unified Front	Sorcery	U
4018	BFZ	55	5	\N	\N	\N	\N	\N	\N	Benthic Infiltrator	Creature	C
27919	ARB	28	0	\N	t	t	\N	\N	\N	Nemesis of Reason	Creature	R
4038	BFZ	75	0	\N	\N	\N	\N	\N	\N	Dampening Pulse	Enchantment	U
27928	RTR	5	0	t	\N	\N	\N	\N	\N	Azorius Arrester	Creature	C
27938	ROE	12	0	\N	\N	\N	\N	\N	\N	Ulamog, the Infinite Gyre	Lgd. Creature	M
4041	BFZ	78	0	\N	\N	\N	\N	\N	\N	Guardian of Tazeem	Creature	R
4043	BFZ	80	0	\N	\N	\N	\N	\N	\N	Part the Waterveil	Sorcery	M
4048	BFZ	85	0	\N	\N	\N	\N	\N	\N	Scatter to the Winds	Instant	R
4053	BFZ	90	5	\N	\N	\N	\N	\N	\N	Complete Disregard	Instant	C
27940	EVE	25	0	\N	t	\N	\N	\N	\N	Inundate	Sorcery	R
4059	BFZ	96	4	\N	\N	\N	\N	\N	\N	Silent Skimmer	Creature	C
4061	BFZ	98	4	\N	\N	\N	\N	\N	\N	Sludge Crawler	Creature	C
4066	BFZ	103	3	\N	\N	\N	\N	\N	\N	Altar's Reap	Instant	C
4069	BFZ	106	1	\N	\N	\N	\N	\N	\N	Carrier Thrall	Creature	U
4074	BFZ	111	3	\N	\N	\N	\N	\N	\N	Geyserfield Stalker	Creature	C
4078	BFZ	115	4	\N	\N	\N	\N	\N	\N	Kalastria Nightwatch	Creature	C
4081	BFZ	118	4	\N	\N	\N	\N	\N	\N	Nirkana Assassin	Creature	C
4087	BFZ	124	2	\N	\N	\N	\N	\N	\N	Vampiric Rites	Enchantment	U
4091	BFZ	128	2	\N	\N	\N	\N	\N	\N	Crumble to Dust	Sorcery	U
4092	BFZ	129	4	\N	\N	\N	\N	\N	\N	Kozilek's Sentinel	Creature	C
4093	BFZ	130	1	\N	\N	\N	\N	\N	\N	Molten Nursery	Enchantment	U
4094	BFZ	131	4	\N	\N	\N	\N	\N	\N	Nettle Drone	Creature	C
4095	BFZ	132	1	\N	\N	\N	\N	\N	\N	Processor Assault	Sorcery	U
4097	BFZ	134	3	\N	\N	\N	\N	\N	\N	Touch of the Void	Sorcery	C
4170	BFZ	207	2	\N	\N	\N	\N	\N	\N	Ulamog's Nullifier	Creature	U
4186	BFZ	223	1	\N	\N	\N	\N	\N	\N	Hedron Archive	Artifact	U
4189	BFZ	226	1	\N	\N	\N	\N	\N	\N	Pilgrim's Eye	Artifact Creature	U
2871	KAL	10	1	\N	\N	\N	\N	\N	\N	Consulate Surveillance	Enchantment	U
27948	WWK	21	0	t	\N	\N	\N	\N	\N	Talus Paladin	Creature	R
27800	BOK	16	1	t	\N	\N	\N	\N	\N	Moonlit Strider	Creature	C
27958	ROE	10	0	\N	\N	\N	\N	\N	\N	Skittering Invasion	Tribal Sorcery	U
27959	RAV	10	0	t	\N	\N	\N	\N	\N	Conclave Phalanx	Creature	U
27968	GPT	26	0	\N	t	\N	\N	\N	\N	Gigadrowse	Instant	C
36678	NEO	22	0	t	\N	\N	\N	\N	\N	Kitsune Ace	Creature	C
27978	GPT	24	0	\N	t	\N	\N	\N	\N	Drowned Rusalka	Creature	U
36679	NEO	23	0	t	\N	\N	\N	\N	\N	Kyodai, Soul of Kamigawa	Lgd. Creature	R
27989	GTC	15	0	t	\N	\N	\N	\N	\N	Guildscorn Ward	Enchantment	C
27998	ALA	7	0	t	\N	\N	\N	\N	\N	Cradle of Vitality	Enchantment	R
27999	RTR	7	0	t	\N	\N	\N	\N	\N	Bazaar Krovod	Creature	U
28003	LRW	14	0	t	\N	\N	\N	\N	\N	Favor of the Mighty	Tribal Enchantment	R
28008	SHM	6	0	t	\N	\N	\N	\N	\N	Goldenglow Moth	Creature	C
28009	MID	6	0	t	\N	\N	\N	\N	\N	Borrowed Time	Enchantment	U
28018	EVE	27	0	\N	t	\N	\N	\N	\N	Oona's Grace	Instant	C
28019	GPT	27	0	\N	t	\N	\N	\N	\N	Hatching Plans	Enchantment	R
28029	GTC	18	0	t	\N	\N	\N	\N	\N	Knight of Obligation	Creature	U
28033	WWK	25	0	\N	t	\N	\N	\N	\N	Calcite Snapper	Creature	C
28038	DKA	32	0	\N	t	\N	\N	\N	\N	Chill of Foreboding	Sorcery	U
28039	DGM	32	0	\N	\N	\N	t	\N	\N	Clear a Path	Sorcery	C
36680	NEO	24	0	t	\N	\N	\N	\N	\N	Light the Way	Instant	C
36681	NEO	25	0	t	\N	\N	\N	\N	\N	Light-Paws, Emperor's Voice	Lgd. Creature	R
28049	RAV	14	0	t	\N	\N	\N	\N	\N	Divebomber Griffin	Creature	U
28053	SOM	15	0	t	\N	\N	\N	\N	\N	Loxodon Wayfarer	Creature	C
27988	CON	30	1	\N	t	\N	\N	\N	\N	Inkwell Leviathan	Artifact Creature	R
28013	CON	29	1	\N	t	\N	\N	\N	\N	Grixis Illusionist	Creature	C
27909	CON	25	1	\N	t	\N	\N	\N	\N	Esperzoa	Artifact Creature	U
36682	NEO	26	0	t	\N	\N	\N	\N	\N	Lion Sash	Artifact Creature	R
27730	MOR	7	2	t	\N	\N	\N	\N	\N	Coordinated Barrage	Instant	C
36683	NEO	27	0	t	\N	\N	\N	\N	\N	Lucky Offering	Sorcery	C
36684	NEO	28	0	t	\N	\N	\N	\N	\N	March of Otherworldly Light	Instant	R
36685	NEO	29	0	t	\N	\N	\N	\N	\N	Michiko's Reign of Truth // Portrait of Michiko	Enchantment	U
2992	KAL	131	2	\N	\N	\N	\N	\N	\N	Spark of Creativity	Sorcery	U
2994	KAL	133	4	\N	\N	\N	\N	\N	\N	Spireside Infiltrator	Creature	C
2996	KAL	135	2	\N	\N	\N	\N	\N	\N	Start Your Engines	Sorcery	U
250	IN4	6	1	\N	\N	\N	\N	\N	\N	Emrakul, the Promised End	Lgd. Creature	M
246	IN4	2	0	\N	\N	\N	\N	\N	\N	Decimator of the Provinces	Creature	M
2999	KAL	138	3	\N	\N	\N	\N	\N	\N	Thriving Grubs	Creature	C
2583	ZER	2	1	\N	\N	\N	\N	\N	\N	Angel of Destiny	Creature	M
4098	BFZ	135	1	\N	\N	\N	\N	\N	\N	Turn Against	Instant	U
4099	BFZ	136	4	\N	\N	\N	\N	\N	\N	Vestige of Emrakul	Creature	C
3002	KAL	141	3	\N	\N	\N	\N	\N	\N	Appetite for the Unnatural	Instant	C
4100	BFZ	137	0	\N	\N	\N	\N	\N	\N	Vile Aggregate	Creature	U
4101	BFZ	138	0	\N	\N	\N	\N	\N	\N	Akoum Firebird	Creature	M
4102	BFZ	139	0	\N	\N	\N	\N	\N	\N	Akoum Hellkite	Creature	R
3003	KAL	142	2	\N	\N	\N	\N	\N	\N	Arborback Stomper	Creature	U
3007	KAL	146	2	\N	\N	\N	\N	\N	\N	Blossoming Defense	Instant	U
4103	BFZ	140	2	\N	\N	\N	\N	\N	\N	Akoum Stonewaker	Creature	U
3008	KAL	147	0	\N	\N	\N	\N	\N	\N	Bristling Hydra	Creature	R
4104	BFZ	141	4	\N	\N	\N	\N	\N	\N	Belligerent Whiptail	Creature	C
3009	KAL	148	3	\N	\N	\N	\N	\N	\N	Commencement of Festivities	Instant	C
4247	WOS	10	4	\N	\N	\N	\N	\N	\N	Divine Arrow	Instant	C
4252	WOS	15	2	\N	\N	\N	\N	\N	\N	Gideon's Triumph	Instant	U
4105	BFZ	142	3	\N	\N	\N	\N	\N	\N	Boiling Earth	Sorcery	C
27707	ALA	3	0	t	\N	\N	\N	\N	\N	Angelic Benediction	Enchantment	U
3013	KAL	152	1	\N	\N	\N	\N	\N	\N	Dubious Challenge	Sorcery	R
4261	WOS	24	1	\N	\N	\N	\N	\N	\N	Parhelion II	Lgd. Artifact	R
4106	BFZ	143	1	\N	\N	\N	\N	\N	\N	Chasm Guide	Creature	U
4262	WOS	25	4	\N	\N	\N	\N	\N	\N	Pouncing Lynx	Creature	C
4107	BFZ	144	0	\N	\N	\N	\N	\N	\N	Dragonmaster Outcast	Creature	M
27717	SOK	9	0	t	\N	\N	\N	\N	\N	Enduring Ideal	Sorcery	R
4108	BFZ	145	2	\N	\N	\N	\N	\N	\N	Firemantle Mage	Creature	U
3014	KAL	153	1	\N	\N	\N	\N	\N	\N	Durable Handicraft	Enchantment	U
4109	BFZ	146	4	\N	\N	\N	\N	\N	\N	Goblin War Paint	Enchantment	C
4110	BFZ	147	3	\N	\N	\N	\N	\N	\N	Lavastep Raider	Creature	C
4111	BFZ	148	3	\N	\N	\N	\N	\N	\N	Makindi Sliderunner	Creature	C
4112	BFZ	149	3	\N	\N	\N	\N	\N	\N	Ondu Champion	Creature	C
4242	WOS	5	4	\N	\N	\N	\N	\N	\N	Battlefield Promotion	Instant	C
3016	KAL	155	1	\N	\N	\N	\N	\N	\N	Fairgrounds Trumpeter	Creature	U
4113	BFZ	150	2	\N	\N	\N	\N	\N	\N	Outnumber	Instant	C
3019	KAL	158	3	\N	\N	\N	\N	\N	\N	Hunt the Weak	Sorcery	C
4114	BFZ	151	1	\N	\N	\N	\N	\N	\N	Radiant Flames	Sorcery	R
3023	KAL	162	1	\N	\N	\N	\N	\N	\N	Nature's Way	Sorcery	U
4115	BFZ	152	4	\N	\N	\N	\N	\N	\N	Reckless Cohort	Creature	C
4190	BFZ	227	1	\N	\N	\N	\N	\N	\N	Slab Hammer	Artifact	U
2408	OAT	11	6	\N	\N	\N	\N	\N	\N	Warden of Geometries	Creature	C
2872	KAL	11	2	\N	\N	\N	\N	\N	\N	Consul's Shieldguard	Creature	U
3024	KAL	163	1	\N	\N	\N	\N	\N	\N	Nissa, Vital Force	Lgd. Planeswalker	M
2874	KAL	13	1	\N	\N	\N	\N	\N	\N	Fairgrounds Warden	Creature	U
2877	KAL	16	1	\N	\N	\N	\N	\N	\N	Gearshift Ace	Creature	U
2879	KAL	18	3	\N	\N	\N	\N	\N	\N	Herald of the Fair	Creature	C
2883	KAL	22	4	\N	\N	\N	\N	\N	\N	Ninth Bridge Patrol	Creature	C
2885	KAL	24	4	\N	\N	\N	\N	\N	\N	Propeller Pioneer	Creature	C
2888	KAL	27	2	\N	\N	\N	\N	\N	\N	Servo Exhibition	Sorcery	U
2891	KAL	30	3	\N	\N	\N	\N	\N	\N	Tasseled Dromedary	Creature	C
2893	KAL	32	0	\N	\N	\N	\N	\N	\N	Toolcraft Exemplar	Creature	R
2895	KAL	34	1	\N	\N	\N	\N	\N	\N	Visionary Augmenter	Creature	U
2898	KAL	37	4	\N	\N	\N	\N	\N	\N	Aether Theorist	Creature	C
2900	KAL	39	1	\N	\N	\N	\N	\N	\N	Aethersquall Ancient	Creature	R
2902	KAL	41	1	\N	\N	\N	\N	\N	\N	Confiscation Coup	Sorcery	R
2903	KAL	42	3	\N	\N	\N	\N	\N	\N	Curio Vendor	Creature	C
2904	KAL	43	1	\N	\N	\N	\N	\N	\N	Disappearing Act	Instant	U
2907	KAL	46	2	\N	\N	\N	\N	\N	\N	Experimental Aviator	Creature	U
2911	KAL	50	1	\N	\N	\N	\N	\N	\N	Glint-Nest Crane	Creature	U
2913	KAL	52	2	\N	\N	\N	\N	\N	\N	Insidious Will	Instant	R
2914	KAL	53	1	\N	\N	\N	\N	\N	\N	Janjeet Sentry	Creature	U
2917	KAL	56	0	\N	\N	\N	\N	\N	\N	Metallurgic Summonings	Enchantment	M
2920	KAL	59	1	\N	\N	\N	\N	\N	\N	Padeem, Consul of Innovation	Lgd. Creature	R
2921	KAL	60	0	\N	\N	\N	\N	\N	\N	Paradoxical Outcome	Instant	R
2924	KAL	63	4	\N	\N	\N	\N	\N	\N	Select for Inspection	Instant	C
2925	KAL	64	1	\N	\N	\N	\N	\N	\N	Shrewd Negotiation	Sorcery	U
2929	KAL	68	4	\N	\N	\N	\N	\N	\N	Vedalken Blademaster	Creature	C
2939	KAL	78	0	\N	\N	\N	\N	\N	\N	Eliminate the Competition	Sorcery	R
2942	KAL	81	4	\N	\N	\N	\N	\N	\N	Fortuitous Find	Sorcery	C
2944	KAL	83	2	\N	\N	\N	\N	\N	\N	Fretwork Colony	Creature	U
2949	KAL	88	0	\N	\N	\N	\N	\N	\N	Lost Legacy	Sorcery	R
2957	KAL	96	0	\N	\N	\N	\N	\N	\N	Noxious Gearhulk	Artifact Creature	M
2962	KAL	101	2	\N	\N	\N	\N	\N	\N	Syndicate Trafficker	Creature	R
2970	KAL	109	3	\N	\N	\N	\N	\N	\N	Cathartic Reunion	Sorcery	C
2972	KAL	111	3	\N	\N	\N	\N	\N	\N	Chandra's Pyrohelix	Instant	C
2975	KAL	114	0	\N	\N	\N	\N	\N	\N	Fateful Showdown	Instant	R
2980	KAL	119	1	\N	\N	\N	\N	\N	\N	Incendiary Sabotage	Instant	U
2981	KAL	120	1	\N	\N	\N	\N	\N	\N	Inventor's Apprentice	Creature	U
2983	KAL	122	1	\N	\N	\N	\N	\N	\N	Madcap Experiment	Sorcery	R
2986	KAL	125	1	\N	\N	\N	\N	\N	\N	Quicksmith Genius	Creature	U
2988	KAL	127	4	\N	\N	\N	\N	\N	\N	Renegade Tactics	Sorcery	C
3027	KAL	166	4	\N	\N	\N	\N	\N	\N	Peema Outrider	Creature	C
3028	KAL	167	5	\N	\N	\N	\N	\N	\N	Riparian Tiger	Creature	C
3030	KAL	169	2	\N	\N	\N	\N	\N	\N	Servant of the Conduit	Creature	U
3034	KAL	173	4	\N	\N	\N	\N	\N	\N	Wild Wanderer	Creature	C
3039	KAL	178	3	\N	\N	\N	\N	\N	\N	Depala, Pilot Exemplar	Lgd. Creature	R
3041	KAL	180	1	\N	\N	\N	\N	\N	\N	Empyreal Voyager	Creature	U
3043	KAL	182	2	\N	\N	\N	\N	\N	\N	Hazardous Conditions	Sorcery	U
3048	KAL	187	1	\N	\N	\N	\N	\N	\N	Unlicensed Disintegration	Instant	U
3051	KAL	190	1	\N	\N	\N	\N	\N	\N	Whirler Virtuoso	Creature	U
3052	KAL	191	3	\N	\N	\N	\N	\N	\N	Accomplished Automaton	Artifact Creature	C
255	IN4	11	1	\N	\N	\N	\N	\N	\N	Vexing Scuttler	Creature	U
27727	EVE	7	0	t	\N	\N	\N	\N	\N	Hallowed Burial	Sorcery	R
27737	LRW	7	0	t	\N	\N	\N	\N	\N	Burrenton Forge-Tender	Creature	U
27747	EVE	13	0	t	\N	\N	\N	\N	\N	Recumbent Bliss	Enchantment	C
27757	DGM	8	0	t	\N	\N	\N	\N	\N	Steeple Roc	Creature	C
27768	MRD	8	0	t	\N	\N	\N	\N	\N	Leonin Abunas	Creature	R
27778	GPT	14	0	t	\N	\N	\N	\N	\N	Shadow Lance	Enchantment	U
27798	ARB	16	0	t	t	\N	\N	\N	\N	Wall of Denial	Creature	U
2587	ZER	6	1	\N	\N	\N	\N	\N	\N	Attended Healer	Creature	U
2592	ZER	11	3	\N	\N	\N	\N	\N	\N	Emeria Captain	Creature	U
3056	KAL	195	4	\N	\N	\N	\N	\N	\N	Aradara Express	Artifact	C
3058	KAL	197	3	\N	\N	\N	\N	\N	\N	Bastion Mastodon	Artifact Creature	C
3059	KAL	198	1	\N	\N	\N	\N	\N	\N	Bomat Bazaar Barge	Artifact	U
3060	KAL	199	5	\N	\N	\N	\N	\N	\N	Bomat Courier	Artifact Creature	R
3061	KAL	200	1	\N	\N	\N	\N	\N	\N	Chief of the Foundry	Artifact Creature	U
3064	KAL	203	1	\N	\N	\N	\N	\N	\N	Cultivator's Caravan	Artifact	R
3065	KAL	204	1	\N	\N	\N	\N	\N	\N	Deadlock Trap	Artifact	R
3068	KAL	207	4	\N	\N	\N	\N	\N	\N	Dukhara Peafowl	Artifact Creature	C
3074	KAL	213	3	\N	\N	\N	\N	\N	\N	Fireforger's Puzzleknot	Artifact	C
3076	KAL	215	1	\N	\N	\N	\N	\N	\N	Foundry Inspector	Artifact Creature	U
3078	KAL	217	3	\N	\N	\N	\N	\N	\N	Glassblower's Puzzleknot	Artifact	C
3081	KAL	220	2	\N	\N	\N	\N	\N	\N	Key to the City	Artifact	R
3086	KAL	225	2	\N	\N	\N	\N	\N	\N	Ovalchase Dragster	Artifact	U
3087	KAL	226	0	\N	\N	\N	\N	\N	\N	Panharmonicon	Artifact	R
3089	KAL	228	4	\N	\N	\N	\N	\N	\N	Prakhata Pillar-Bug	Artifact Creature	C
3091	KAL	230	3	\N	\N	\N	\N	\N	\N	Renegade Freighter	Artifact	C
3096	KAL	235	1	\N	\N	\N	\N	\N	\N	Smuggler's Copter	Artifact	R
3097	KAL	236	1	\N	\N	\N	\N	\N	\N	Snare Thopter	Artifact Creature	U
3099	KAL	238	3	\N	\N	\N	\N	\N	\N	Weldfast Monitor	Artifact Creature	C
3100	KAL	239	2	\N	\N	\N	\N	\N	\N	Whirlermaker	Artifact	U
3101	KAL	240	3	\N	\N	\N	\N	\N	\N	Woodweaver's Puzzleknot	Artifact	C
3102	KAL	241	4	\N	\N	\N	\N	\N	\N	Workshop Assistant	Artifact Creature	C
3105	KAL	244	0	\N	\N	\N	\N	\N	\N	Botanical Sanctum	Land	R
3107	KAL	246	2	\N	\N	\N	\N	\N	\N	Inspiring Vantage	Land	R
3108	KAL	247	0	\N	\N	\N	\N	\N	\N	Inventors' Fair	Lgd. Land	R
3113	KAL	252	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
3114	KAL	253	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
3118	KAL	257	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
3121	KAL	260	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
3124	KAL	263	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
3126	KAL	265	0	\N	\N	\N	\N	\N	\N	Chandra, Pyrogenius	Lgd. Planeswalker	M
3129	KAL	268	0	\N	\N	\N	\N	\N	\N	Renegade Firebrand	Creature	U
3131	KAL	270	0	\N	\N	\N	\N	\N	\N	Nissa, Nature's Artisan	Lgd. Planeswalker	M
3133	KAL	272	0	\N	\N	\N	\N	\N	\N	Terrain Elemental	Creature	C
27808	SOK	16	0	t	\N	\N	\N	\N	\N	Kitsune Dawnblade	Creature	C
27990	ISD	15	3	t	\N	\N	\N	\N	\N	Fiend Hunter	Creature	U
27828	ROE	1	0	\N	\N	\N	\N	\N	\N	All Is Dust	Tribal Sorcery	M
27838	CON	18	0	t	\N	\N	\N	\N	\N	Sigil of the Empty Throne	Enchantment	R
28100	ALA	11	1	t	\N	\N	\N	\N	\N	Excommunicate	Sorcery	C
27858	WWK	19	0	t	\N	\N	\N	\N	\N	Ruin Ghost	Creature	U
27868	MOR	20	0	t	\N	\N	\N	\N	\N	Preeminent Captain	Creature	R
27878	GPT	21	0	t	\N	\N	\N	\N	\N	Withstand	Instant	C
27888	EVE	22	0	\N	t	\N	\N	\N	\N	Glen Elendra Archmage	Creature	R
27898	GPT	23	0	\N	t	\N	\N	\N	\N	Crystal Seer	Creature	C
27929	SHM	5	0	t	\N	\N	\N	\N	\N	Boon Reflection	Enchantment	R
27939	DGM	25	0	\N	\N	t	\N	\N	\N	Hired Torturer	Creature	C
27950	MOR	23	0	t	\N	\N	\N	\N	\N	Shinewend	Creature	C
27960	ALA	10	0	t	\N	\N	\N	\N	\N	Ethersworn Canonist	Artifact Creature	R
27970	MOR	26	0	t	\N	\N	\N	\N	\N	Swell of Courage	Instant	U
27991	MRD	15	0	t	\N	\N	\N	\N	\N	Luminous Angel	Creature	R
28000	SHM	7	0	t	\N	\N	\N	\N	\N	Greater Auramancy	Enchantment	R
28001	ISD	14	0	t	\N	\N	\N	\N	\N	Feeling of Dread	Instant	C
28010	MRD	13	0	t	\N	\N	\N	\N	\N	Loxodon Peacekeeper	Creature	R
28011	LRW	13	0	t	\N	\N	\N	\N	\N	Entangling Trap	Enchantment	U
28020	ARB	33	0	\N	\N	t	t	\N	\N	Anathemancer	Creature	U
27908	BOK	25	1	t	\N	\N	\N	\N	\N	Tallowisp	Creature	U
28031	CHK	19	0	t	\N	\N	\N	\N	\N	Isamaru, Hound of Konda	Lgd. Creature	R
28040	EVE	32	0	\N	t	\N	\N	\N	\N	Wilderness Hypnotist	Creature	C
28041	GPT	32	0	\N	t	\N	\N	\N	\N	Repeal	Instant	C
28050	ALA	14	0	t	\N	\N	\N	\N	\N	Invincible Hymn	Sorcery	R
28051	RTR	14	0	t	\N	\N	\N	\N	\N	Martial Law	Enchantment	R
28058	DGM	30	0	\N	\N	t	\N	\N	\N	Ubul Sar Gatekeepers	Creature	C
28060	GPT	30	0	\N	t	\N	\N	\N	\N	Mimeofacture	Sorcery	R
28108	SOK	29	4	t	\N	\N	\N	\N	\N	Spiritual Visit	Instant	C
28068	RTR	13	0	t	\N	\N	\N	\N	\N	Knightly Valor	Enchantment	C
28070	ARB	36	0	\N	\N	t	t	\N	\N	Deathbringer Thoctar	Creature	R
36686	NEO	30	0	t	\N	\N	\N	\N	\N	Mothrider Patrol	Creature	C
28078	WWK	28	0	\N	t	\N	\N	\N	\N	Goliath Sphinx	Creature	R
28080	WWK	26	0	\N	t	\N	\N	\N	\N	Dispel	Instant	C
28081	CHK	20	0	t	\N	\N	\N	\N	\N	Kabuto Moth	Creature	C
28088	DGM	34	0	\N	\N	\N	t	\N	\N	Possibility Storm	Enchantment	R
28090	BOK	35	0	\N	t	\N	\N	\N	\N	Genju of the Falls	Enchantment	U
28091	CON	35	0	\N	t	\N	\N	\N	\N	Telemin Performance	Sorcery	R
28101	RTR	11	0	t	\N	\N	\N	\N	\N	Fencing Ace	Creature	U
36687	NEO	31	0	t	\N	\N	\N	\N	\N	Norika Yamazaki, the Poet	Lgd. Creature	U
28102	SHM	11	1	t	\N	\N	\N	\N	\N	Last Breath	Instant	C
28030	ARB	35	1	\N	\N	t	t	\N	\N	Breath of Malfegor	Instant	C
27788	CON	15	1	t	\N	\N	\N	\N	\N	Path to Exile	Instant	U
27918	CON	27	3	\N	t	\N	\N	\N	\N	Faerie Mechanist	Artifact Creature	C
28098	THS	6	1	t	\N	\N	\N	\N	\N	Dauntless Onslaught	Instant	U
27980	MOR	24	1	t	\N	\N	\N	\N	\N	Stonehewer Giant	Creature	R
36690	NEO	34	0	t	\N	\N	\N	\N	\N	The Restoration of Eiganjo // Architect of Restoration	Enchantment	R
36688	NEO	32	1	t	\N	\N	\N	\N	\N	Regent's Authority	Instant	C
266	IN4	22	2	\N	\N	\N	\N	\N	\N	Drogskol Shieldmate	Creature	U
267	IN4	23	2	\N	\N	\N	\N	\N	\N	Extricator of Sin // Extricator of Flesh	Creature	U
273	IN4	29	2	\N	\N	\N	\N	\N	\N	Give No Ground	Instant	U
276	IN4	32	4	\N	\N	\N	\N	\N	\N	Ironwright's Cleansing	Sorcery	C
278	IN4	34	1	\N	\N	\N	\N	\N	\N	Long Road Home	Instant	U
282	IN4	38	2	\N	\N	\N	\N	\N	\N	Repel the Abominable	Instant	U
284	IN4	40	1	\N	\N	\N	\N	\N	\N	Selfless Spirit	Creature	R
286	IN4	42	5	\N	\N	\N	\N	\N	\N	Sigardian Priest	Creature	C
288	IN4	44	5	\N	\N	\N	\N	\N	\N	Steadfast Cathar	Creature	C
291	IN4	47	1	\N	\N	\N	\N	\N	\N	Thalia's Lancers	Creature	R
292	IN4	48	6	\N	\N	\N	\N	\N	\N	Thraben Standard Bearer	Creature	C
295	IN4	51	1	\N	\N	\N	\N	\N	\N	Coax from the Blind Eternities	Sorcery	R
298	IN4	54	2	\N	\N	\N	\N	\N	\N	Curious Homunculus // Voracious Reader	Creature	U
299	IN4	55	6	\N	\N	\N	\N	\N	\N	Displace	Instant	C
301	IN4	57	4	\N	\N	\N	\N	\N	\N	Drag Under	Sorcery	C
304	IN4	60	4	\N	\N	\N	\N	\N	\N	Fogwalker	Creature	C
306	IN4	62	2	\N	\N	\N	\N	\N	\N	Geist of the Archives	Creature	U
307	IN4	63	1	\N	\N	\N	\N	\N	\N	Grizzled Angler // Grisly Anglerfish	Creature	U
312	IN4	68	2	\N	\N	\N	\N	\N	\N	Lunar Force	Enchantment	U
313	IN4	69	0	\N	\N	\N	\N	\N	\N	Mausoleum Wanderer	Creature	R
317	IN4	73	2	\N	\N	\N	\N	\N	\N	Scour the Laboratory	Instant	U
318	IN4	74	4	\N	\N	\N	\N	\N	\N	Spontaneous Mutation	Enchantment	C
319	IN4	75	0	\N	\N	\N	\N	\N	\N	Summary Dismissal	Instant	R
321	IN4	77	4	\N	\N	\N	\N	\N	\N	Tattered Haunter	Creature	C
326	IN4	82	4	\N	\N	\N	\N	\N	\N	Borrowed Malevolence	Instant	C
327	IN4	83	4	\N	\N	\N	\N	\N	\N	Cemetery Recruitment	Sorcery	C
331	IN4	87	0	\N	\N	\N	\N	\N	\N	Dark Salvation	Sorcery	R
333	IN4	89	6	\N	\N	\N	\N	\N	\N	Gavony Unhallowed	Creature	C
337	IN4	93	0	\N	\N	\N	\N	\N	\N	Liliana, the Last Hope	Lgd. Planeswalker	M
340	IN4	96	3	\N	\N	\N	\N	\N	\N	Midnight Scavengers	Creature	C
341	IN4	97	2	\N	\N	\N	\N	\N	\N	Murder	Instant	U
345	IN4	101	2	\N	\N	\N	\N	\N	\N	Prying Questions	Sorcery	U
348	IN4	104	5	\N	\N	\N	\N	\N	\N	Skirsdag Supplicant	Creature	C
349	IN4	105	5	\N	\N	\N	\N	\N	\N	Strange Augmentation	Enchantment	C
353	IN4	109	1	\N	\N	\N	\N	\N	\N	Tree of Perdition	Creature	M
354	IN4	110	2	\N	\N	\N	\N	\N	\N	Vampire Cutthroat	Creature	U
356	IN4	112	5	\N	\N	\N	\N	\N	\N	Wailing Ghoul	Creature	C
358	IN4	114	2	\N	\N	\N	\N	\N	\N	Whispers of Emrakul	Sorcery	U
360	IN4	116	5	\N	\N	\N	\N	\N	\N	Alchemist's Greeting	Sorcery	C
363	IN4	119	2	\N	\N	\N	\N	\N	\N	Blood Mist	Enchantment	U
364	IN4	120	5	\N	\N	\N	\N	\N	\N	Bold Impaler	Creature	C
365	IN4	121	4	\N	\N	\N	\N	\N	\N	Borrowed Hostility	Instant	C
366	IN4	122	4	\N	\N	\N	\N	\N	\N	Brazen Wolves	Creature	C
368	IN4	124	2	\N	\N	\N	\N	\N	\N	Conduit of Storms // Conduit of Emrakul	Creature	U
370	IN4	126	4	\N	\N	\N	\N	\N	\N	Distemper of the Blood	Sorcery	C
373	IN4	129	4	\N	\N	\N	\N	\N	\N	Galvanic Bombardment	Instant	C
376	IN4	132	1	\N	\N	\N	\N	\N	\N	Impetuous Devils	Creature	R
380	IN4	136	0	\N	\N	\N	\N	\N	\N	Mirrorwing Dragon	Creature	M
381	IN4	137	1	\N	\N	\N	\N	\N	\N	Nahiri's Wrath	Sorcery	M
384	IN4	140	2	\N	\N	\N	\N	\N	\N	Savage Alliance	Instant	U
385	IN4	141	2	\N	\N	\N	\N	\N	\N	Shreds of Sanity	Sorcery	U
387	IN4	143	2	\N	\N	\N	\N	\N	\N	Spreading Flames	Instant	U
389	IN4	145	6	\N	\N	\N	\N	\N	\N	Stensia Innkeeper	Creature	C
391	IN4	147	5	\N	\N	\N	\N	\N	\N	Thermo-Alchemist	Creature	C
392	IN4	148	5	\N	\N	\N	\N	\N	\N	Vildin-Pack Outcast // Dronepack Kindred	Creature	C
396	IN4	152	2	\N	\N	\N	\N	\N	\N	Clear Shot	Instant	U
398	IN4	154	5	\N	\N	\N	\N	\N	\N	Crossroads Consecrator	Creature	C
400	IN4	156	1	\N	\N	\N	\N	\N	\N	Emrakul's Evangel	Creature	R
404	IN4	160	4	\N	\N	\N	\N	\N	\N	Grapple with the Past	Instant	C
405	IN4	161	2	\N	\N	\N	\N	\N	\N	Hamlet Captain	Creature	U
407	IN4	163	1	\N	\N	\N	\N	\N	\N	Kessig Prowler // Sinuous Predator	Creature	U
412	IN4	168	3	\N	\N	\N	\N	\N	\N	Shrill Howler // Howling Chorus	Creature	U
414	IN4	170	1	\N	\N	\N	\N	\N	\N	Spirit of the Hunt	Creature	R
416	IN4	172	5	\N	\N	\N	\N	\N	\N	Springsage Ritual	Instant	C
418	IN4	174	2	\N	\N	\N	\N	\N	\N	Tangleclaw Werewolf // Fibrous Entangler	Creature	U
419	IN4	175	4	\N	\N	\N	\N	\N	\N	Ulvenwald Captive // Ulvenwald Abomination	Creature	C
422	IN4	178	5	\N	\N	\N	\N	\N	\N	Wolfkin Bond	Enchantment	C
423	IN4	179	4	\N	\N	\N	\N	\N	\N	Woodcutter's Grit	Instant	C
426	IN4	182	2	\N	\N	\N	\N	\N	\N	Campaign of Vengeance	Enchantment	U
428	IN4	184	0	\N	\N	\N	\N	\N	\N	Grim Flayer	Creature	M
432	IN4	188	2	\N	\N	\N	\N	\N	\N	Ride Down	Instant	U
434	IN4	190	0	\N	\N	\N	\N	\N	\N	Tamiyo, Field Researcher	Lgd. Planeswalker	M
436	IN4	192	5	\N	\N	\N	\N	\N	\N	Cathar's Shield	Artifact	C
437	IN4	193	2	\N	\N	\N	\N	\N	\N	Cryptolith Fragment // Aurora of Emrakul	Artifact // Creature	U
441	IN4	197	0	\N	\N	\N	\N	\N	\N	Lupine Prototype	Artifact Creature	R
443	IN4	199	0	\N	\N	\N	\N	\N	\N	Soul Separator	Artifact	R
444	IN4	200	1	\N	\N	\N	\N	\N	\N	Stitcher's Graft	Artifact	R
446	IN4	202	1	\N	\N	\N	\N	\N	\N	Thirsting Axe	Artifact	U
2620	ZER	39	1	\N	\N	\N	\N	\N	\N	Skyclave Apparition	Creature	R
2682	ZER	101	3	\N	\N	\N	\N	\N	\N	Expedition Skulker	Creature	C
3137	DOM	2	4	\N	\N	\N	\N	\N	\N	Adamant Will	Instant	C
2605	ZER	24	1	\N	\N	\N	\N	\N	\N	Luminarch Aspirant	Creature	R
2654	ZER	73	5	\N	\N	\N	\N	\N	\N	Risen Riptide	Creature	C
27762	SOK	8	1	t	\N	\N	\N	\N	\N	Eiganjo Free-Riders	Creature	U
27781	SOK	14	0	t	\N	\N	\N	\N	\N	Kataki, War's Wage	Lgd. Creature	R
27791	EVE	15	0	t	\N	\N	\N	\N	\N	Springjack Shepherd	Creature	U
27851	DKA	19	1	t	\N	\N	\N	\N	\N	Sanctuary Cat	Creature	C
27821	WWK	17	0	t	\N	\N	\N	\N	\N	Refraction Trap	Instant	U
27831	RTR	1	0	t	\N	\N	\N	\N	\N	Angel of Serenity	Creature	M
27841	EVE	18	0	\N	t	\N	\N	\N	\N	Cache Raiders	Creature	U
27801	CON	16	1	t	\N	\N	\N	\N	\N	Rhox Meditant	Creature	C
36691	NEO	35	0	t	\N	\N	\N	\N	\N	Selfless Samurai	Creature	U
36692	NEO	36	0	t	\N	\N	\N	\N	\N	Seven-Tail Mentor	Creature	C
27784	GTC	14	0	t	\N	\N	\N	\N	\N	Guardian of the Gateless	Creature	U
2640	ZER	59	4	\N	\N	\N	\N	\N	\N	Glacial Grasp	Instant	C
3142	DOM	7	4	\N	\N	\N	\N	\N	\N	Blessed Light	Instant	C
27794	MOR	15	0	t	\N	\N	\N	\N	\N	Kinsbaile Cavalier	Creature	R
27804	EVE	16	0	t	\N	\N	\N	\N	\N	Suture Spirit	Creature	U
27814	DKA	17	0	t	\N	\N	\N	\N	\N	Ray of Revelation	Instant	C
27844	MOR	18	0	t	\N	\N	\N	\N	\N	Mosquito Guard	Creature	C
27854	GPT	19	0	t	\N	\N	\N	\N	\N	Storm Herd	Sorcery	R
27864	DGM	20	0	\N	t	\N	\N	\N	\N	Wind Drake	Creature	C
27874	CON	21	0	\N	t	\N	\N	\N	\N	Brackwater Elemental	Creature	C
27894	CON	23	0	\N	t	\N	\N	\N	\N	Controlled Instincts	Enchantment	U
27904	DGM	24	0	\N	\N	t	\N	\N	\N	Fatal Fumes	Instant	C
27914	CON	26	0	\N	t	\N	\N	\N	\N	Ethersworn Adjudicator	Artifact Creature	M
27934	WWK	22	0	t	\N	\N	\N	\N	\N	Terra Eternal	Enchantment	R
27944	SOK	25	0	t	\N	\N	\N	\N	\N	Pure Intentions	Instant	R
27954	DKA	28	0	\N	t	\N	\N	\N	\N	Beguiler of Wills	Creature	M
27964	RAV	11	0	t	\N	\N	\N	\N	\N	Conclave's Blessing	Enchantment	C
27974	RTR	9	0	t	\N	\N	\N	\N	\N	Ethereal Armor	Enchantment	C
27984	GTC	16	0	t	\N	\N	\N	\N	\N	Hold the Gates	Enchantment	U
27994	CON	31	0	\N	t	\N	\N	\N	\N	Master Transmuter	Artifact Creature	R
28004	RAV	8	0	t	\N	\N	\N	\N	\N	Concerted Effort	Enchantment	R
28005	ALA	8	0	t	\N	\N	\N	\N	\N	Dispeller's Capsule	Artifact	C
28014	DKA	29	0	\N	t	\N	\N	\N	\N	Bone to Ash	Instant	C
28015	DGM	29	0	\N	\N	t	\N	\N	\N	Sinister Possession	Enchantment	C
28024	GTC	17	0	t	\N	\N	\N	\N	\N	Holy Mantle	Enchantment	U
28035	MID	8	0	t	\N	\N	\N	\N	\N	Candlegrove Witch	Creature	C
74	IN1	74	0	\N	t	\N	\N	\N	\N	Second Guess	Instant	U
75	IN1	75	0	\N	t	\N	\N	\N	\N	Spectral Prison	Enchantment	C
76	IN1	76	0	\N	t	\N	\N	\N	\N	Spirit Away	Enchantment	R
77	IN1	77	0	\N	t	\N	\N	\N	\N	Stern Mentor	Creature	U
78	IN1	78	0	\N	t	\N	\N	\N	\N	Stolen Goods	Sorcery	R
79	IN1	79	0	\N	t	\N	\N	\N	\N	Tamiyo, the Moon Sage	Lgd. Planeswalker	M
81	IN1	81	0	\N	t	\N	\N	\N	\N	Temporal Mastery	Sorcery	M
82	IN1	82	0	\N	t	\N	\N	\N	\N	Vanishment	Instant	U
84	IN1	84	0	\N	\N	t	\N	\N	\N	Appetite for Brains	Sorcery	U
85	IN1	85	0	\N	\N	t	\N	\N	\N	Barter in Blood	Sorcery	U
86	IN1	86	0	\N	\N	t	\N	\N	\N	Blood Artist	Creature	U
87	IN1	87	0	\N	\N	t	\N	\N	\N	Bloodflow Connoisseur	Creature	C
88	IN1	88	0	\N	\N	t	\N	\N	\N	Bone Splinters	Sorcery	C
89	IN1	89	0	\N	\N	t	\N	\N	\N	Butcher Ghoul	Creature	C
90	IN1	90	0	\N	\N	t	\N	\N	\N	Corpse Traders	Creature	U
91	IN1	91	0	\N	\N	t	\N	\N	\N	Crypt Creeper	Creature	C
92	IN1	92	0	\N	\N	t	\N	\N	\N	Dark Impostor	Creature	R
93	IN1	93	0	\N	\N	t	\N	\N	\N	Death Wind	Instant	C
557	IN5	2	0	\N	\N	\N	\N	\N	\N	Angel of Deliverance	Creature	R
28025	ISD	17	1	t	\N	\N	\N	\N	\N	Geist-Honored Monk	Creature	R
28044	MOR	27	0	t	\N	\N	\N	\N	\N	Wandering Graybeard	Creature	U
28055	RAV	15	0	t	\N	\N	\N	\N	\N	Dromad Purebred	Creature	C
28059	EVE	30	0	\N	t	\N	\N	\N	\N	Talonrend	Creature	U
28064	WWK	30	0	\N	t	\N	\N	\N	\N	Horizon Drake	Creature	U
27824	ISD	1	1	t	\N	\N	\N	\N	\N	Abbey Griffin	Creature	C
28074	GPT	28	0	\N	t	\N	\N	\N	\N	Infiltrator's Magemark	Enchantment	C
561	IN5	6	1	\N	\N	\N	\N	\N	\N	Avacynian Missionaries // Lunarch Inquisitors	Creature	U
28079	SOK	26	0	t	\N	\N	\N	\N	\N	Reverence	Enchantment	R
28084	MRD	20	0	t	\N	\N	\N	\N	\N	Second Sunrise	Instant	R
28045	SOK	27	1	t	\N	\N	\N	\N	\N	Rune-Tail, Kitsune Ascendant // Rune-Tail's Essence	Lgd. Creature	R
28094	MRD	19	0	t	\N	\N	\N	\N	\N	Rule of Law	Enchantment	R
28095	LRW	19	0	t	\N	\N	\N	\N	\N	Harpoon Sniper	Creature	U
28099	ZEN	6	0	t	\N	\N	\N	\N	\N	Celestial Mantle	Enchantment	R
28103	MID	11	0	t	\N	\N	\N	\N	\N	Cathar's Call	Enchantment	U
28104	EVE	29	0	\N	t	\N	\N	\N	\N	Sanity Grinding	Sorcery	R
28105	GPT	29	0	\N	t	\N	\N	\N	\N	Leyline of Singularity	Enchantment	R
28107	MOR	29	0	\N	t	\N	\N	\N	\N	Declaration of Naught	Enchantment	R
28109	WWK	29	0	\N	t	\N	\N	\N	\N	Halimar Excavator	Creature	C
28110	ISD	18	0	t	\N	\N	\N	\N	\N	Ghostly Possession	Enchantment	C
28111	MRD	18	0	t	\N	\N	\N	\N	\N	Roar of the Kha	Instant	U
28113	SOM	18	0	t	\N	\N	\N	\N	\N	Revoke Existence	Sorcery	C
28114	RAV	12	0	t	\N	\N	\N	\N	\N	Courier Hawk	Creature	C
28116	RTR	12	0	t	\N	\N	\N	\N	\N	Keening Apparition	Creature	C
28117	SHM	12	0	t	\N	\N	\N	\N	\N	Mass Calcify	Sorcery	R
28118	RTR	10	0	t	\N	\N	\N	\N	\N	Eyes in the Skies	Instant	C
28119	SHM	10	0	t	\N	\N	\N	\N	\N	Kithkin Shielddare	Creature	C
28120	MID	10	0	t	\N	\N	\N	\N	\N	Cathar Commando	Creature	C
28122	ZEN	2	0	t	\N	\N	\N	\N	\N	Arrow Volley Trap	Instant	U
28123	MRD	17	0	t	\N	\N	\N	\N	\N	Razor Barrier	Instant	C
28125	SOM	17	0	t	\N	\N	\N	\N	\N	Razor Hippogriff	Creature	U
28126	ROE	17	0	t	\N	\N	\N	\N	\N	Deathless Angel	Creature	R
28131	DKA	33	0	\N	t	\N	\N	\N	\N	Counterlash	Instant	R
28115	ALA	12	1	t	\N	\N	\N	\N	\N	Guardians of Akrasa	Creature	C
28034	SHM	8	1	t	\N	\N	\N	\N	\N	Inquisitor's Snare	Instant	C
28127	SHM	9	1	t	\N	\N	\N	\N	\N	Kithkin Rabble	Creature	U
28069	SHM	13	1	t	\N	\N	\N	\N	\N	Mine Excavation	Sorcery	C
28124	LRW	17	1	t	\N	\N	\N	\N	\N	Goldmeadow Harrier	Creature	C
28112	LRW	18	1	t	\N	\N	\N	\N	\N	Goldmeadow Stalwart	Creature	U
28121	THS	10	1	t	\N	\N	\N	\N	\N	Ephara's Warden	Creature	C
27834	THS	1	1	t	\N	\N	\N	\N	\N	Battlewise Valor	Instant	C
27995	THS	2	1	t	\N	\N	\N	\N	\N	Cavalry Pegasus	Creature	C
28054	ROE	15	2	t	\N	\N	\N	\N	\N	Caravan Escort	Creature	C
28085	BOK	34	1	\N	t	\N	\N	\N	\N	Floodbringer	Creature	C
27884	BOK	22	1	t	\N	\N	\N	\N	\N	Silverstorm Samurai	Creature	C
27924	BOK	29	2	t	\N	\N	\N	\N	\N	Waxmane Baku	Creature	C
36693	NEO	37	0	t	\N	\N	\N	\N	\N	Sky-Blessed Samurai	Enchantment Creature	U
235	IN1	235	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
234	IN1	234	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
233	IN1	233	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
140	IN1	140	1	\N	\N	\N	t	\N	\N	Heirs of Stromkirk	Creature	C
128	IN1	128	1	\N	\N	\N	t	\N	\N	Battle Hymn	Instant	C
175	IN1	175	1	\N	\N	\N	\N	t	\N	Druid's Familiar	Creature	U
231	IN1	231	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
232	IN1	232	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
230	IN1	230	2	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
126	IN1	126	1	\N	\N	\N	t	\N	\N	Archwing Dragon	Creature	R
206	IN1	206	1	\N	\N	\N	\N	t	\N	Wolfir Silverheart	Creature	R
200	IN1	200	1	\N	\N	\N	\N	t	\N	Ulvenwald Tracker	Creature	R
194	IN1	194	1	\N	\N	\N	\N	t	\N	Somberwald Sage	Creature	R
135	IN1	135	0	\N	\N	\N	t	\N	\N	Fervent Cathar	Creature	C
136	IN1	136	0	\N	\N	\N	t	\N	\N	Gang of Devils	Creature	U
137	IN1	137	0	\N	\N	\N	t	\N	\N	Guise of Fire	Enchantment	C
138	IN1	138	0	\N	\N	\N	t	\N	\N	Hanweir Lancer	Creature	C
139	IN1	139	0	\N	\N	\N	t	\N	\N	Havengul Vampire	Creature	U
141	IN1	141	0	\N	\N	\N	t	\N	\N	Hound of Griselbrand	Creature	R
142	IN1	142	0	\N	\N	\N	t	\N	\N	Kessig Malcontents	Creature	U
143	IN1	143	0	\N	\N	\N	t	\N	\N	Kruin Striker	Creature	C
144	IN1	144	0	\N	\N	\N	t	\N	\N	Lightning Mauler	Creature	U
145	IN1	145	0	\N	\N	\N	t	\N	\N	Lightning Prowess	Enchantment	U
146	IN1	146	0	\N	\N	\N	t	\N	\N	Mad Prophet	Creature	C
147	IN1	147	0	\N	\N	\N	t	\N	\N	Malicious Intent	Enchantment	C
148	IN1	148	0	\N	\N	\N	t	\N	\N	Malignus	Creature	M
149	IN1	149	0	\N	\N	\N	t	\N	\N	Pillar of Flame	Sorcery	C
167	IN1	167	0	\N	\N	\N	\N	t	\N	Abundant Growth	Enchantment	C
168	IN1	168	0	\N	\N	\N	\N	t	\N	Blessings of Nature	Sorcery	U
169	IN1	169	0	\N	\N	\N	\N	t	\N	Borderland Ranger	Creature	C
170	IN1	170	0	\N	\N	\N	\N	t	\N	Bower Passage	Enchantment	U
171	IN1	171	0	\N	\N	\N	\N	t	\N	Champion of Lambholt	Creature	R
172	IN1	172	0	\N	\N	\N	\N	t	\N	Craterhoof Behemoth	Creature	M
173	IN1	173	0	\N	\N	\N	\N	t	\N	Descendants' Path	Enchantment	R
174	IN1	174	0	\N	\N	\N	\N	t	\N	Diregraf Escort	Creature	C
176	IN1	176	0	\N	\N	\N	\N	t	\N	Druids' Repository	Enchantment	R
177	IN1	177	0	\N	\N	\N	\N	t	\N	Eaten by Spiders	Instant	U
178	IN1	178	0	\N	\N	\N	\N	t	\N	Flowering Lumberknot	Creature	C
179	IN1	179	0	\N	\N	\N	\N	t	\N	Geist Trappers	Creature	C
180	IN1	180	0	\N	\N	\N	\N	t	\N	Gloomwidow	Creature	U
181	IN1	181	0	\N	\N	\N	\N	t	\N	Grounded	Enchantment	C
182	IN1	182	0	\N	\N	\N	\N	t	\N	Howlgeist	Creature	U
183	IN1	183	0	\N	\N	\N	\N	t	\N	Joint Assault	Instant	C
184	IN1	184	0	\N	\N	\N	\N	t	\N	Lair Delve	Sorcery	C
185	IN1	185	0	\N	\N	\N	\N	t	\N	Natural End	Instant	C
221	IN1	221	0	\N	\N	\N	\N	\N	\N	Scroll of Griselbrand	Artifact	C
222	IN1	222	0	\N	\N	\N	\N	\N	\N	Tormentor's Trident	Artifact	U
223	IN1	223	0	\N	\N	\N	\N	\N	\N	Vanguard's Shield	Artifact	C
224	IN1	224	0	\N	\N	\N	\N	\N	\N	Vessel of Endless Rest	Artifact	U
225	IN1	225	0	\N	\N	\N	\N	\N	\N	Alchemist's Refuge	Land	R
226	IN1	226	0	\N	\N	\N	\N	\N	\N	Cavern of Souls	Land	R
227	IN1	227	0	\N	\N	\N	\N	\N	\N	Desolate Lighthouse	Land	R
228	IN1	228	0	\N	\N	\N	\N	\N	\N	Seraph Sanctuary	Land	C
229	IN1	229	0	\N	\N	\N	\N	\N	\N	Slayers' Stronghold	Land	R
94	IN1	94	0	\N	\N	t	\N	\N	\N	Demonic Rising	Enchantment	R
95	IN1	95	0	\N	\N	t	\N	\N	\N	Demonic Taskmaster	Creature	U
125	IN1	125	0	\N	\N	\N	t	\N	\N	Aggravate	Instant	U
127	IN1	127	0	\N	\N	\N	t	\N	\N	Banners Raised	Instant	C
129	IN1	129	0	\N	\N	\N	t	\N	\N	Bonfire of the Damned	Sorcery	M
130	IN1	130	0	\N	\N	\N	t	\N	\N	Burn at the Stake	Sorcery	R
131	IN1	131	0	\N	\N	\N	t	\N	\N	Dangerous Wager	Instant	C
132	IN1	132	0	\N	\N	\N	t	\N	\N	Demolish	Sorcery	C
133	IN1	133	0	\N	\N	\N	t	\N	\N	Dual Casting	Enchantment	R
134	IN1	134	0	\N	\N	\N	t	\N	\N	Falkenrath Exterminator	Creature	U
236	IN1	236	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
237	IN1	237	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
239	IN1	239	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
240	IN1	240	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
242	IN1	242	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
244	IN1	244	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
287	IN4	43	4	\N	\N	\N	\N	\N	\N	Spectral Reserves	Sorcery	C
290	IN4	46	2	\N	\N	\N	\N	\N	\N	Thalia, Heretic Cathar	Lgd. Creature	R
294	IN4	50	2	\N	\N	\N	\N	\N	\N	Chilling Grasp	Instant	U
303	IN4	59	4	\N	\N	\N	\N	\N	\N	Exultant Cultist	Creature	C
308	IN4	64	0	\N	\N	\N	\N	\N	\N	Identity Thief	Creature	R
309	IN4	65	0	\N	\N	\N	\N	\N	\N	Imprisoned in the Moon	Enchantment	R
314	IN4	70	1	\N	\N	\N	\N	\N	\N	Mind's Dilation	Enchantment	M
324	IN4	80	2	\N	\N	\N	\N	\N	\N	Wharf Infiltrator	Creature	R
329	IN4	85	1	\N	\N	\N	\N	\N	\N	Collective Brutality	Sorcery	R
330	IN4	86	0	\N	\N	\N	\N	\N	\N	Cryptbreaker	Creature	R
335	IN4	91	4	\N	\N	\N	\N	\N	\N	Graf Rats	Creature	C
338	IN4	94	2	\N	\N	\N	\N	\N	\N	Liliana's Elite	Creature	U
339	IN4	95	2	\N	\N	\N	\N	\N	\N	Markov Crusader	Creature	U
343	IN4	99	1	\N	\N	\N	\N	\N	\N	Oath of Liliana	Lgd. Enchantment	R
350	IN4	106	2	\N	\N	\N	\N	\N	\N	Stromkirk Condemned	Creature	R
361	IN4	117	0	\N	\N	\N	\N	\N	\N	Assembled Alphas	Creature	R
362	IN4	118	0	\N	\N	\N	\N	\N	\N	Bedlam Reveler	Creature	R
1295	MAO	184	4	\N	\N	\N	\N	\N	\N	Leaf Gilder	Creature	C
1297	MAO	186	1	\N	\N	\N	\N	\N	\N	Managorger Hydra	Creature	R
1299	MAO	188	4	\N	\N	\N	\N	\N	\N	Might of the Masses	Instant	C
1344	MAO	233	1	\N	\N	\N	\N	\N	\N	Meteorite	Artifact	U
1346	MAO	235	2	\N	\N	\N	\N	\N	\N	Prism Ring	Artifact	U
1348	MAO	237	1	\N	\N	\N	\N	\N	\N	Ramroller	Artifact Creature	U
1350	MAO	239	2	\N	\N	\N	\N	\N	\N	Sigil of Valor	Artifact	U
1352	MAO	241	2	\N	\N	\N	\N	\N	\N	Throwing Knife	Artifact	U
1353	MAO	242	3	\N	\N	\N	\N	\N	\N	Veteran's Sidearm	Artifact	C
1358	MAO	247	1	\N	\N	\N	\N	\N	\N	Foundry of the Consuls	Land	U
1360	MAO	249	1	\N	\N	\N	\N	\N	\N	Mage-Ring Network	Land	U
1362	MAO	251	1	\N	\N	\N	\N	\N	\N	Shivan Reef	Land	R
1363	MAO	252	0	\N	\N	\N	\N	\N	\N	Yavimaya Coast	Land	R
1367	MAO	256	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
1368	MAO	257	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
1375	MAO	264	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
1376	MAO	265	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
1379	MAO	268	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
1381	MAO	270	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
1570	AMO	187	1	\N	\N	\N	\N	\N	\N	Sixth Sense	Enchantment	U
1573	AMO	190	2	\N	\N	\N	\N	\N	\N	Synchronized Strike	Instant	U
1574	AMO	191	1	\N	\N	\N	\N	\N	\N	Trial of Strength	Enchantment	U
1576	AMO	193	1	\N	\N	\N	\N	\N	\N	Watchful Naga	Creature	U
36695	NEO	39	0	t	\N	\N	\N	\N	\N	Sunblade Samurai	Enchantment Creature	C
1578	AMO	195	2	\N	\N	\N	\N	\N	\N	Aven Wind Guide	Creature	U
1580	AMO	197	2	\N	\N	\N	\N	\N	\N	Decimator Beetle	Creature	U
1581	AMO	198	2	\N	\N	\N	\N	\N	\N	Enigma Drake	Creature	U
1583	AMO	200	2	\N	\N	\N	\N	\N	\N	Honored Crop-Captain	Creature	U
1584	AMO	201	0	\N	\N	\N	\N	\N	\N	Khenra Charioteer	Creature	U
4125	BFZ	162	1	\N	\N	\N	\N	\N	\N	Zada, Hedron Grinder	Lgd. Creature	R
2562	OAT	165	2	\N	\N	\N	\N	\N	\N	Seer's Lantern	Artifact	C
289	IN4	45	2	\N	\N	\N	\N	\N	\N	Subjugator Angel	Creature	U
293	IN4	49	2	\N	\N	\N	\N	\N	\N	Advanced Stitchwing	Creature	U
296	IN4	52	5	\N	\N	\N	\N	\N	\N	Contingency Plan	Sorcery	C
297	IN4	53	6	\N	\N	\N	\N	\N	\N	Convolute	Instant	C
300	IN4	56	1	\N	\N	\N	\N	\N	\N	Docent of Perfection // Final Iteration	Creature	R
302	IN4	58	4	\N	\N	\N	\N	\N	\N	Enlightened Maniac	Creature	C
305	IN4	61	1	\N	\N	\N	\N	\N	\N	Fortune's Favor	Instant	U
310	IN4	66	6	\N	\N	\N	\N	\N	\N	Ingenious Skaab	Creature	C
311	IN4	67	3	\N	\N	\N	\N	\N	\N	Laboratory Brute	Creature	C
315	IN4	71	3	\N	\N	\N	\N	\N	\N	Nebelgast Herald	Creature	U
320	IN4	76	4	\N	\N	\N	\N	\N	\N	Take Inventory	Sorcery	C
322	IN4	78	5	\N	\N	\N	\N	\N	\N	Turn Aside	Instant	C
323	IN4	79	1	\N	\N	\N	\N	\N	\N	Unsubstantiate	Instant	U
332	IN4	88	3	\N	\N	\N	\N	\N	\N	Dusk Feaster	Creature	U
334	IN4	90	2	\N	\N	\N	\N	\N	\N	Graf Harvest	Enchantment	U
336	IN4	92	2	\N	\N	\N	\N	\N	\N	Haunted Dead	Creature	U
342	IN4	98	1	\N	\N	\N	\N	\N	\N	Noosegraf Mob	Creature	R
346	IN4	102	2	\N	\N	\N	\N	\N	\N	Rise from the Grave	Sorcery	U
347	IN4	103	1	\N	\N	\N	\N	\N	\N	Ruthless Disposal	Sorcery	U
351	IN4	107	6	\N	\N	\N	\N	\N	\N	Succumb to Temptation	Instant	C
355	IN4	111	1	\N	\N	\N	\N	\N	\N	Voldaren Pariah // Abolisher of Bloodlines	Creature	R
357	IN4	113	5	\N	\N	\N	\N	\N	\N	Weirded Vampire	Creature	C
359	IN4	115	2	\N	\N	\N	\N	\N	\N	Abandon Reason	Instant	U
369	IN4	125	2	\N	\N	\N	\N	\N	\N	Deranged Whelp	Creature	U
374	IN4	130	0	\N	\N	\N	\N	\N	\N	Hanweir Garrison	Creature	R
382	IN4	138	5	\N	\N	\N	\N	\N	\N	Otherworldly Outburst	Instant	C
388	IN4	144	4	\N	\N	\N	\N	\N	\N	Stensia Banquet	Sorcery	C
397	IN4	153	2	\N	\N	\N	\N	\N	\N	Crop Sigil	Enchantment	U
399	IN4	155	1	\N	\N	\N	\N	\N	\N	Eldritch Evolution	Sorcery	R
401	IN4	157	1	\N	\N	\N	\N	\N	\N	Emrakul's Influence	Enchantment	U
406	IN4	162	0	\N	\N	\N	\N	\N	\N	Ishkanah, Grafwidow	Lgd. Creature	M
409	IN4	165	1	\N	\N	\N	\N	\N	\N	Permeating Mass	Creature	R
420	IN4	176	1	\N	\N	\N	\N	\N	\N	Ulvenwald Observer	Creature	R
425	IN4	181	0	\N	\N	\N	\N	\N	\N	Bloodhall Priest	Creature	R
427	IN4	183	0	\N	\N	\N	\N	\N	\N	Gisa and Geralf	Lgd. Creature	M
430	IN4	186	1	\N	\N	\N	\N	\N	\N	Mercurial Geists	Creature	U
433	IN4	189	1	\N	\N	\N	\N	\N	\N	Spell Queller	Creature	R
435	IN4	191	0	\N	\N	\N	\N	\N	\N	Ulrich of the Krallenhorde // Ulrich, Uncontested Alpha	Lgd. Creature	M
439	IN4	195	4	\N	\N	\N	\N	\N	\N	Field Creeper	Artifact Creature	C
442	IN4	198	2	\N	\N	\N	\N	\N	\N	Slayer's Cleaver	Artifact	U
445	IN4	201	4	\N	\N	\N	\N	\N	\N	Terrarion	Artifact	C
448	IN4	204	0	\N	\N	\N	\N	\N	\N	Hanweir Battlements	Land	R
1301	MAO	190	4	\N	\N	\N	\N	\N	\N	Nissa's Pilgrimage	Sorcery	C
1303	MAO	192	4	\N	\N	\N	\N	\N	\N	Orchard Spirit	Creature	C
1306	MAO	195	4	\N	\N	\N	\N	\N	\N	Reclaim	Instant	C
1307	MAO	196	3	\N	\N	\N	\N	\N	\N	Rhox Maulers	Creature	C
1310	MAO	199	1	\N	\N	\N	\N	\N	\N	Sylvan Messenger	Creature	U
1312	MAO	201	2	\N	\N	\N	\N	\N	\N	Titanic Growth	Instant	C
1313	MAO	202	1	\N	\N	\N	\N	\N	\N	Undercity Troll	Creature	U
1315	MAO	204	4	\N	\N	\N	\N	\N	\N	Vastwood Gorger	Creature	C
1317	MAO	206	4	\N	\N	\N	\N	\N	\N	Wild Instincts	Sorcery	C
1319	MAO	208	4	\N	\N	\N	\N	\N	\N	Yeva's Forcemage	Creature	C
1320	MAO	209	1	\N	\N	\N	\N	\N	\N	Zendikar's Roil	Enchantment	U
1322	MAO	211	1	\N	\N	\N	\N	\N	\N	Blood-Cursed Knight	Creature	U
1324	MAO	213	1	\N	\N	\N	\N	\N	\N	Citadel Castellan	Creature	U
1327	MAO	216	3	\N	\N	\N	\N	\N	\N	Reclusive Artificer	Creature	U
1329	MAO	218	1	\N	\N	\N	\N	\N	\N	Thunderclap Wyvern	Creature	U
1331	MAO	220	3	\N	\N	\N	\N	\N	\N	Alchemist's Vial	Artifact	C
1333	MAO	222	0	\N	\N	\N	\N	\N	\N	Angel's Tomb	Artifact	U
1336	MAO	225	2	\N	\N	\N	\N	\N	\N	Chief of the Foundry	Artifact Creature	U
1338	MAO	227	3	\N	\N	\N	\N	\N	\N	Guardian Automaton	Artifact Creature	C
1342	MAO	231	1	\N	\N	\N	\N	\N	\N	Jayemdae Tome	Artifact	U
698	IN5	143	2	\N	\N	\N	\N	\N	\N	Vampire Noble	Creature	C
665	IN5	110	3	\N	\N	\N	\N	\N	\N	Farbog Revenant	Creature	C
669	IN5	114	2	\N	\N	\N	\N	\N	\N	Gisa's Bidding	Sorcery	U
673	IN5	118	1	\N	\N	\N	\N	\N	\N	Indulgent Aristocrat	Creature	U
1345	MAO	234	1	\N	\N	\N	\N	\N	\N	Orbs of Warding	Artifact	R
1356	MAO	245	1	\N	\N	\N	\N	\N	\N	Caves of Koilos	Land	R
1357	MAO	246	3	\N	\N	\N	\N	\N	\N	Evolving Wilds	Land	C
1359	MAO	248	1	\N	\N	\N	\N	\N	\N	Llanowar Wastes	Land	R
675	IN5	120	2	\N	\N	\N	\N	\N	\N	Liliana's Indignation	Sorcery	U
1366	MAO	255	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
1369	MAO	258	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
1371	MAO	260	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
1373	MAO	262	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
1377	MAO	266	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
1380	MAO	269	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
2559	OAT	162	2	\N	\N	\N	\N	\N	\N	Captain's Claws	Artifact	R
2951	KAL	90	0	\N	\N	\N	\N	\N	\N	Marionette Master	Creature	R
687	IN5	132	3	\N	\N	\N	\N	\N	\N	Rottenheart Ghoul	Creature	C
635	IN5	80	2	\N	\N	\N	\N	\N	\N	Press for Answers	Sorcery	C
671	IN5	116	2	\N	\N	\N	\N	\N	\N	Heir of Falkenrath // Heir to the Night	Creature	U
653	IN5	98	4	\N	\N	\N	\N	\N	\N	Alms of the Vein	Sorcery	C
699	IN5	144	4	\N	\N	\N	\N	\N	\N	Vessel of Malignity	Enchantment	C
678	IN5	123	3	\N	\N	\N	\N	\N	\N	Merciless Resolve	Instant	C
657	IN5	102	2	\N	\N	\N	\N	\N	\N	Biting Rain	Sorcery	U
658	IN5	103	1	\N	\N	\N	\N	\N	\N	Call the Bloodline	Enchantment	U
692	IN5	137	3	\N	\N	\N	\N	\N	\N	Stromkirk Mentor	Creature	C
690	IN5	135	1	\N	\N	\N	\N	\N	\N	Sinister Concoction	Enchantment	U
685	IN5	130	3	\N	\N	\N	\N	\N	\N	Rancid Rats	Creature	C
655	IN5	100	1	\N	\N	\N	\N	\N	\N	Behind the Scenes	Enchantment	U
680	IN5	125	2	\N	\N	\N	\N	\N	\N	Morkrut Necropod	Creature	U
681	IN5	126	4	\N	\N	\N	\N	\N	\N	Murderous Compulsion	Sorcery	C
660	IN5	105	2	\N	\N	\N	\N	\N	\N	Crow of Dark Tidings	Creature	C
782	IN5	227	1	\N	\N	\N	\N	\N	\N	Second Harvest	Instant	R
769	IN5	214	3	\N	\N	\N	\N	\N	\N	Kessig Dire Swine	Creature	C
637	IN5	82	1	\N	\N	\N	\N	\N	\N	Reckless Scholar	Creature	U
639	IN5	84	4	\N	\N	\N	\N	\N	\N	Seagraf Skaab	Creature	C
646	IN5	91	2	\N	\N	\N	\N	\N	\N	Stormrider Spirit	Creature	C
644	IN5	89	4	\N	\N	\N	\N	\N	\N	Stitched Mangler	Creature	C
641	IN5	86	2	\N	\N	\N	\N	\N	\N	Silent Observer	Creature	C
648	IN5	93	2	\N	\N	\N	\N	\N	\N	Trail of Evidence	Enchantment	U
772	IN5	217	3	\N	\N	\N	\N	\N	\N	Might Beyond Reason	Instant	C
711	IN5	156	4	\N	\N	\N	\N	\N	\N	Fiery Temper	Instant	C
776	IN5	221	2	\N	\N	\N	\N	\N	\N	Pack Guardian	Creature	U
774	IN5	219	2	\N	\N	\N	\N	\N	\N	Moonlight Hunt	Instant	U
777	IN5	222	3	\N	\N	\N	\N	\N	\N	Quilled Wolf	Creature	C
771	IN5	216	3	\N	\N	\N	\N	\N	\N	Loam Dryad	Creature	C
784	IN5	229	2	\N	\N	\N	\N	\N	\N	Solitary Hunter // One of the Pack	Creature	C
779	IN5	224	3	\N	\N	\N	\N	\N	\N	Root Out	Sorcery	C
705	IN5	150	1	\N	\N	\N	\N	\N	\N	Dance with Devils	Instant	U
726	IN5	171	2	\N	\N	\N	\N	\N	\N	Mad Prophet	Creature	U
728	IN5	173	1	\N	\N	\N	\N	\N	\N	Malevolent Whispers	Sorcery	U
642	IN5	87	2	\N	\N	\N	\N	\N	\N	Sleep Paralysis	Enchantment	C
708	IN5	153	3	\N	\N	\N	\N	\N	\N	Dual Shot	Instant	C
720	IN5	165	3	\N	\N	\N	\N	\N	\N	Hulking Devil	Creature	C
715	IN5	160	1	\N	\N	\N	\N	\N	\N	Geistblast	Instant	U
724	IN5	169	2	\N	\N	\N	\N	\N	\N	Kessig Forgemaster // Flameheart Werewolf	Creature	U
703	IN5	148	2	\N	\N	\N	\N	\N	\N	Burn from Within	Sorcery	R
729	IN5	174	4	\N	\N	\N	\N	\N	\N	Pyre Hound	Creature	C
731	IN5	176	3	\N	\N	\N	\N	\N	\N	Reduce to Ashes	Sorcery	C
722	IN5	167	1	\N	\N	\N	\N	\N	\N	Inner Struggle	Instant	U
713	IN5	158	3	\N	\N	\N	\N	\N	\N	Gatstaf Arsonists // Gatstaf Ravagers	Creature	C
701	IN5	146	3	\N	\N	\N	\N	\N	\N	Bloodmad Vampire	Creature	C
733	IN5	178	3	\N	\N	\N	\N	\N	\N	Sanguinary Mage	Creature	C
719	IN5	164	3	\N	\N	\N	\N	\N	\N	Howlpack Wolf	Creature	C
650	IN5	95	4	\N	\N	\N	\N	\N	\N	Vessel of Paramnesia	Enchantment	C
651	IN5	96	2	\N	\N	\N	\N	\N	\N	Welcome to the Fold	Sorcery	R
393	IN4	149	2	\N	\N	\N	\N	\N	\N	Weaver of Lightning	Creature	U
402	IN4	158	2	\N	\N	\N	\N	\N	\N	Foul Emissary	Creature	U
408	IN4	164	2	\N	\N	\N	\N	\N	\N	Noose Constrictor	Creature	U
411	IN4	167	3	\N	\N	\N	\N	\N	\N	Primal Druid	Creature	C
413	IN4	169	2	\N	\N	\N	\N	\N	\N	Somberwald Stag	Creature	U
424	IN4	180	4	\N	\N	\N	\N	\N	\N	Woodland Patrol	Creature	C
431	IN4	187	1	\N	\N	\N	\N	\N	\N	Mournwillow	Creature	U
440	IN4	196	2	\N	\N	\N	\N	\N	\N	Geist-Fueled Scarecrow	Artifact Creature	U
449	IN4	205	1	\N	\N	\N	\N	\N	\N	Nephalia Academy	Land	U
767	IN5	212	1	\N	\N	\N	\N	\N	\N	Inexorable Blob	Creature	R
717	IN5	162	1	\N	\N	\N	\N	\N	\N	Goldnight Castigator	Creature	M
676	IN5	121	3	\N	\N	\N	\N	\N	\N	Macabre Waltz	Sorcery	C
688	IN5	133	3	\N	\N	\N	\N	\N	\N	Sanitarium Skeleton	Creature	C
683	IN5	128	2	\N	\N	\N	\N	\N	\N	Pale Rider of Trostad	Creature	U
662	IN5	107	0	\N	\N	\N	\N	\N	\N	Diregraf Colossus	Creature	R
664	IN5	109	0	\N	\N	\N	\N	\N	\N	Ever After	Sorcery	R
694	IN5	139	0	\N	\N	\N	\N	\N	\N	To the Slaughter	Instant	R
696	IN5	141	0	\N	\N	\N	\N	\N	\N	Triskaidekaphobia	Enchantment	R
706	IN5	151	0	\N	\N	\N	\N	\N	\N	Devils' Playground	Sorcery	R
710	IN5	155	0	\N	\N	\N	\N	\N	\N	Falkenrath Gorger	Creature	R
734	IN5	179	0	\N	\N	\N	\N	\N	\N	Scourge Wolf	Creature	R
781	IN5	226	0	\N	\N	\N	\N	\N	\N	Seasons Past	Sorcery	M
1308	MAO	197	1	\N	\N	\N	\N	\N	\N	Skysnare Spider	Creature	U
2696	ZER	115	1	\N	\N	\N	\N	\N	\N	Nighthawk Scavenger	Creature	R
2726	ZER	145	0	\N	\N	\N	\N	\N	\N	Kargan Intimidator	Creature	R
2732	ZER	151	1	\N	\N	\N	\N	\N	\N	Nahiri's Lithoforming	Sorcery	R
4141	BFZ	178	0	\N	\N	\N	\N	\N	\N	Murasa Ranger	Creature	U
2452	OAT	55	2	\N	\N	\N	\N	\N	\N	Gift of Tusks	Instant	U
2453	OAT	56	2	\N	\N	\N	\N	\N	\N	Grip of the Roil	Instant	U
2456	OAT	59	4	\N	\N	\N	\N	\N	\N	Negate	Instant	C
2459	OAT	62	1	\N	\N	\N	\N	\N	\N	Roiling Waters	Sorcery	U
2945	KAL	84	0	\N	\N	\N	\N	\N	\N	Gonti, Lord of Luxury	Lgd. Creature	R
2967	KAL	106	2	\N	\N	\N	\N	\N	\N	Aethertorch Renegade	Creature	U
2968	KAL	107	1	\N	\N	\N	\N	\N	\N	Brazen Scourge	Creature	U
2974	KAL	113	1	\N	\N	\N	\N	\N	\N	Demolish	Sorcery	C
2976	KAL	115	1	\N	\N	\N	\N	\N	\N	Furious Reprisal	Sorcery	U
2978	KAL	117	1	\N	\N	\N	\N	\N	\N	Harnessed Lightning	Instant	U
2982	KAL	121	0	\N	\N	\N	\N	\N	\N	Lathnu Hellion	Creature	R
841	IN5	286	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
787	IN5	232	3	\N	\N	\N	\N	\N	\N	Thornhide Wolves	Creature	C
791	IN5	236	1	\N	\N	\N	\N	\N	\N	Ulvenwald Mysteries	Enchantment	U
793	IN5	238	1	\N	\N	\N	\N	\N	\N	Veteran Cathar	Creature	U
847	IN5	292	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
842	IN5	287	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
804	IN5	249	1	\N	\N	\N	\N	\N	\N	Prized Amalgam	Creature	R
839	IN5	284	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
838	IN5	283	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
796	IN5	241	1	\N	\N	\N	\N	\N	\N	Altered Ego	Creature	R
833	IN5	278	1	\N	\N	\N	\N	\N	\N	Port Town	Land	R
789	IN5	234	1	\N	\N	\N	\N	\N	\N	Traverse the Ulvenwald	Sorcery	R
802	IN5	247	1	\N	\N	\N	\N	\N	\N	Nahiri, the Harbinger	Lgd. Planeswalker	M
806	IN5	251	2	\N	\N	\N	\N	\N	\N	Sorin, Grim Nemesis	Lgd. Planeswalker	M
798	IN5	243	0	\N	\N	\N	\N	\N	\N	Arlinn Kord // Arlinn, Embraced by the Moon	Lgd. Planeswalker	M
800	IN5	245	0	\N	\N	\N	\N	\N	\N	The Gitrog Monster	Lgd. Creature	M
810	IN5	255	0	\N	\N	\N	\N	\N	\N	Explosive Apparatus	Artifact	C
812	IN5	257	0	\N	\N	\N	\N	\N	\N	Haunted Cloak	Artifact	U
808	IN5	253	0	\N	\N	\N	\N	\N	\N	Corrupted Grafstone	Artifact	R
813	IN5	258	0	\N	\N	\N	\N	\N	\N	Magnifying Glass	Artifact	U
815	IN5	260	0	\N	\N	\N	\N	\N	\N	Neglected Heirloom // Ashmouth Blade	Artifact	U
817	IN5	262	0	\N	\N	\N	\N	\N	\N	Shard of Broken Glass	Artifact	C
819	IN5	264	0	\N	\N	\N	\N	\N	\N	Slayer's Plate	Artifact	R
821	IN5	266	0	\N	\N	\N	\N	\N	\N	Thraben Gargoyle // Stonewing Antagonizer	Artifact Creature	U
823	IN5	268	0	\N	\N	\N	\N	\N	\N	Wicker Witch	Artifact Creature	C
825	IN5	270	0	\N	\N	\N	\N	\N	\N	Choked Estuary	Land	R
826	IN5	271	0	\N	\N	\N	\N	\N	\N	Drownyard Temple	Land	R
828	IN5	273	0	\N	\N	\N	\N	\N	\N	Forsaken Sanctuary	Land	U
830	IN5	275	0	\N	\N	\N	\N	\N	\N	Foul Orchard	Land	U
831	IN5	276	0	\N	\N	\N	\N	\N	\N	Game Trail	Land	R
834	IN5	279	0	\N	\N	\N	\N	\N	\N	Stone Quarry	Land	U
837	IN5	282	0	\N	\N	\N	\N	\N	\N	Woodland Stream	Land	U
844	IN5	289	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
846	IN5	291	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
849	IN5	294	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
850	IN5	295	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
852	IN5	297	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
894	GOR	42	3	\N	\N	\N	\N	\N	\N	Leapfrog	Creature	C
896	GOR	44	1	\N	\N	\N	\N	\N	\N	Mission Briefing	Instant	R
898	GOR	46	3	\N	\N	\N	\N	\N	\N	Muse Drake	Creature	C
899	GOR	47	1	\N	\N	\N	\N	\N	\N	Narcomoeba	Creature	R
901	GOR	49	0	\N	\N	\N	\N	\N	\N	Omnispell Adept	Creature	R
903	GOR	51	1	\N	\N	\N	\N	\N	\N	Quasiduplicate	Sorcery	R
904	GOR	52	4	\N	\N	\N	\N	\N	\N	Radical Idea	Instant	C
906	GOR	54	1	\N	\N	\N	\N	\N	\N	Sinister Sabotage	Instant	U
908	GOR	56	3	\N	\N	\N	\N	\N	\N	Unexplained Disappearance	Instant	C
910	GOR	58	3	\N	\N	\N	\N	\N	\N	Wall of Mist	Creature	C
911	GOR	59	3	\N	\N	\N	\N	\N	\N	Watcher in the Mist	Creature	C
914	GOR	62	4	\N	\N	\N	\N	\N	\N	Bartizan Bats	Creature	C
916	GOR	64	4	\N	\N	\N	\N	\N	\N	Burglar Rat	Creature	C
918	GOR	66	2	\N	\N	\N	\N	\N	\N	Creeping Chill	Sorcery	U
919	GOR	67	3	\N	\N	\N	\N	\N	\N	Dead Weight	Enchantment	C
923	GOR	71	0	\N	\N	\N	\N	\N	\N	Gruesome Menagerie	Sorcery	R
929	GOR	77	0	\N	\N	\N	\N	\N	\N	Midnight Reaper	Creature	R
936	GOR	84	0	\N	\N	\N	\N	\N	\N	Ritual of Soot	Sorcery	R
942	GOR	90	0	\N	\N	\N	\N	\N	\N	Whispering Snitch	Creature	U
950	GOR	98	0	\N	\N	\N	\N	\N	\N	Erratic Cyclops	Creature	R
967	GOR	115	0	\N	\N	\N	\N	\N	\N	Runaway Steam-Kin	Creature	R
979	GOR	127	3	\N	\N	\N	\N	\N	\N	Devkarin Dissident	Creature	C
983	GOR	131	1	\N	\N	\N	\N	\N	\N	Grappling Sundew	Creature	U
985	GOR	133	4	\N	\N	\N	\N	\N	\N	Hitchclaw Recluse	Creature	C
990	GOR	138	0	\N	\N	\N	\N	\N	\N	Nullhide Ferox	Creature	M
991	GOR	139	3	\N	\N	\N	\N	\N	\N	Pack's Favor	Instant	C
996	GOR	144	4	\N	\N	\N	\N	\N	\N	Siege Wurm	Creature	C
1000	GOR	148	0	\N	\N	\N	\N	\N	\N	Vivid Revival	Sorcery	R
1001	GOR	149	4	\N	\N	\N	\N	\N	\N	Wary Okapi	Creature	C
1017	GOR	165	0	\N	\N	\N	\N	\N	\N	Deafening Clarion	Sorcery	R
1024	GOR	172	3	\N	\N	\N	\N	\N	\N	Garrison Sergeant	Creature	C
1041	GOR	189	0	\N	\N	\N	\N	\N	\N	Mnemonic Betrayal	Sorcery	M
1059	GOR	207	0	\N	\N	\N	\N	\N	\N	Thousand-Year Storm	Enchantment	M
1063	GOR	211	0	\N	\N	\N	\N	\N	\N	Underrealm Lich	Creature	M
1065	GOR	213	0	\N	\N	\N	\N	\N	\N	Vraska, Golgari Queen	Lgd. Planeswalker	M
1074	GOR	222	0	\N	\N	\N	\N	\N	\N	Connive // Concoct	Sorcery // Sorcery	R
1081	GOR	229	0	\N	\N	\N	\N	\N	\N	Response // Resurgence	Instant // Sorcery	R
2734	ZER	153	0	\N	\N	\N	\N	\N	\N	Relic Robber	Creature	R
924	GOR	72	3	\N	\N	\N	\N	\N	\N	Hired Poisoner	Creature	C
926	GOR	74	2	\N	\N	\N	\N	\N	\N	Lotleth Giant	Creature	U
932	GOR	80	4	\N	\N	\N	\N	\N	\N	Never Happened	Sorcery	C
933	GOR	81	2	\N	\N	\N	\N	\N	\N	Pilfering Imp	Creature	U
935	GOR	83	2	\N	\N	\N	\N	\N	\N	Price of Fame	Instant	U
938	GOR	86	3	\N	\N	\N	\N	\N	\N	Spinal Centipede	Creature	C
939	GOR	87	1	\N	\N	\N	\N	\N	\N	Undercity Necrolisk	Creature	U
941	GOR	89	2	\N	\N	\N	\N	\N	\N	Vicious Rumors	Sorcery	C
945	GOR	93	1	\N	\N	\N	\N	\N	\N	Book Devourer	Creature	U
952	GOR	100	4	\N	\N	\N	\N	\N	\N	Fearless Halberdier	Creature	C
953	GOR	101	3	\N	\N	\N	\N	\N	\N	Fire Urchin	Creature	C
958	GOR	106	1	\N	\N	\N	\N	\N	\N	Hellkite Whelp	Creature	U
962	GOR	110	3	\N	\N	\N	\N	\N	\N	Maniacal Rage	Enchantment	C
966	GOR	114	5	\N	\N	\N	\N	\N	\N	Rubblebelt Boar	Creature	C
968	GOR	116	1	\N	\N	\N	\N	\N	\N	Smelt-Ward Minotaur	Creature	U
973	GOR	121	1	\N	\N	\N	\N	\N	\N	Affectionate Indrik	Creature	U
978	GOR	126	3	\N	\N	\N	\N	\N	\N	Crushing Canopy	Instant	C
981	GOR	129	4	\N	\N	\N	\N	\N	\N	Generous Stray	Creature	C
982	GOR	130	1	\N	\N	\N	\N	\N	\N	Golgari Raiders	Creature	U
988	GOR	136	2	\N	\N	\N	\N	\N	\N	Kraul Harpooner	Creature	U
998	GOR	146	4	\N	\N	\N	\N	\N	\N	Urban Utopia	Enchantment	C
1003	GOR	151	3	\N	\N	\N	\N	\N	\N	Artful Takedown	Instant	C
1006	GOR	154	2	\N	\N	\N	\N	\N	\N	Beacon Bolt	Sorcery	U
1008	GOR	156	1	\N	\N	\N	\N	\N	\N	Boros Challenger	Creature	U
1013	GOR	161	2	\N	\N	\N	\N	\N	\N	Conclave Cavalier	Creature	U
1014	GOR	162	2	\N	\N	\N	\N	\N	\N	Conclave Guildmage	Creature	U
1016	GOR	164	4	\N	\N	\N	\N	\N	\N	Darkblade Agent	Creature	C
1019	GOR	167	2	\N	\N	\N	\N	\N	\N	Disinformation Campaign	Enchantment	U
1025	GOR	173	2	\N	\N	\N	\N	\N	\N	Glowspore Shaman	Creature	U
1028	GOR	176	4	\N	\N	\N	\N	\N	\N	Hammer Dropper	Creature	C
1029	GOR	177	2	\N	\N	\N	\N	\N	\N	House Guildmage	Creature	U
1033	GOR	181	1	\N	\N	\N	\N	\N	\N	Join Shields	Instant	U
1036	GOR	184	1	\N	\N	\N	\N	\N	\N	Lazav, the Multifarious	Lgd. Creature	M
1038	GOR	186	2	\N	\N	\N	\N	\N	\N	Ledev Champion	Creature	U
1039	GOR	187	1	\N	\N	\N	\N	\N	\N	Legion Guildmage	Creature	U
1043	GOR	191	1	\N	\N	\N	\N	\N	\N	Nightveil Predator	Creature	U
1045	GOR	193	3	\N	\N	\N	\N	\N	\N	Notion Rain	Sorcery	C
1046	GOR	194	1	\N	\N	\N	\N	\N	\N	Ochran Assassin	Creature	U
1049	GOR	197	3	\N	\N	\N	\N	\N	\N	Rosemane Centaur	Creature	C
1051	GOR	199	3	\N	\N	\N	\N	\N	\N	Sonic Assault	Instant	C
1052	GOR	200	4	\N	\N	\N	\N	\N	\N	Sumala Woodshaper	Creature	C
1054	GOR	202	1	\N	\N	\N	\N	\N	\N	Swathcutter Giant	Creature	U
1061	GOR	209	1	\N	\N	\N	\N	\N	\N	Truefire Captain	Creature	U
1066	GOR	214	2	\N	\N	\N	\N	\N	\N	Wee Dragonauts	Creature	U
1067	GOR	215	1	\N	\N	\N	\N	\N	\N	Worldsoul Colossus	Creature	U
1069	GOR	217	4	\N	\N	\N	\N	\N	\N	Piston-Fist Cyclops	Creature	C
1071	GOR	219	3	\N	\N	\N	\N	\N	\N	Vernadi Shieldmate	Creature	C
1075	GOR	223	2	\N	\N	\N	\N	\N	\N	Discovery // Dispersal	Sorcery // Instant	U
1078	GOR	226	1	\N	\N	\N	\N	\N	\N	Flower // Flourish	Sorcery // Sorcery	U
1082	GOR	230	1	\N	\N	\N	\N	\N	\N	Status // Statue	Instant // Instant	U
1083	GOR	231	5	\N	\N	\N	\N	\N	\N	Boros Locket	Artifact	C
1088	GOR	236	2	\N	\N	\N	\N	\N	\N	Glaive of the Guildpact	Artifact	U
1091	GOR	239	1	\N	\N	\N	\N	\N	\N	Rampaging Monument	Artifact Creature	U
1105	GOR	253	2	\N	\N	\N	\N	\N	\N	Overgrown Tomb	Land	R
1106	GOR	254	1	\N	\N	\N	\N	\N	\N	Sacred Foundry	Land	R
1153	MAO	42	4	\N	\N	\N	\N	\N	\N	Yoked Ox	Creature	C
1157	MAO	46	4	\N	\N	\N	\N	\N	\N	Aspiring Aeronaut	Creature	C
1158	MAO	47	4	\N	\N	\N	\N	\N	\N	Bone to Ash	Instant	C
1165	MAO	54	3	\N	\N	\N	\N	\N	\N	Disperse	Instant	C
1170	MAO	59	2	\N	\N	\N	\N	\N	\N	Hydrolash	Instant	U
1174	MAO	63	3	\N	\N	\N	\N	\N	\N	Maritime Guard	Creature	C
1178	MAO	67	1	\N	\N	\N	\N	\N	\N	Psychic Rebuttal	Instant	U
1181	MAO	70	3	\N	\N	\N	\N	\N	\N	Screeching Skaab	Creature	C
1182	MAO	71	4	\N	\N	\N	\N	\N	\N	Send to Sleep	Instant	C
1187	MAO	76	2	\N	\N	\N	\N	\N	\N	Sphinx's Tutelage	Enchantment	U
1191	MAO	80	1	\N	\N	\N	\N	\N	\N	Tower Geist	Creature	U
1192	MAO	81	1	\N	\N	\N	\N	\N	\N	Turn to Frog	Instant	U
1197	MAO	86	3	\N	\N	\N	\N	\N	\N	Catacomb Slug	Creature	C
1211	MAO	100	0	\N	\N	\N	\N	\N	\N	Gnarlroot Trapper	Creature	U
1213	MAO	102	4	\N	\N	\N	\N	\N	\N	Infernal Scarring	Enchantment	C
1214	MAO	103	0	\N	\N	\N	\N	\N	\N	Infinite Obliteration	Sorcery	R
1218	MAO	107	2	\N	\N	\N	\N	\N	\N	Macabre Waltz	Sorcery	C
1223	MAO	112	1	\N	\N	\N	\N	\N	\N	Priest of the Blood Rite	Creature	R
1226	MAO	115	4	\N	\N	\N	\N	\N	\N	Reave Soul	Sorcery	C
1238	MAO	127	0	\N	\N	\N	\N	\N	\N	Abbot of Keral Keep	Creature	R
1242	MAO	131	0	\N	\N	\N	\N	\N	\N	Avaricious Dragon	Creature	M
1246	MAO	135	1	\N	\N	\N	\N	\N	\N	Chandra, Fire of Kaladesh // Chandra, Roaring Flame	Lgd. Creature	M
1249	MAO	138	2	\N	\N	\N	\N	\N	\N	Cobblebrute	Creature	C
1252	MAO	141	0	\N	\N	\N	\N	\N	\N	Embermaw Hellion	Creature	R
1254	MAO	143	1	\N	\N	\N	\N	\N	\N	Exquisite Firecraft	Sorcery	R
1255	MAO	144	1	\N	\N	\N	\N	\N	\N	Fiery Conclusion	Instant	U
1259	MAO	148	1	\N	\N	\N	\N	\N	\N	Ghirapur Aether Grid	Enchantment	U
1262	MAO	151	0	\N	\N	\N	\N	\N	\N	Goblin Piledriver	Creature	R
1267	MAO	156	0	\N	\N	\N	\N	\N	\N	Molten Vortex	Enchantment	R
1269	MAO	158	4	\N	\N	\N	\N	\N	\N	Prickleboar	Creature	C
1272	MAO	161	2	\N	\N	\N	\N	\N	\N	Seismic Elemental	Creature	U
1274	MAO	163	4	\N	\N	\N	\N	\N	\N	Smash to Smithereens	Instant	C
1276	MAO	165	2	\N	\N	\N	\N	\N	\N	Thopter Engineer	Creature	U
1280	MAO	169	0	\N	\N	\N	\N	\N	\N	Animist's Awakening	Sorcery	R
1427	AMO	44	4	\N	\N	\N	\N	\N	\N	Cancel	Instant	C
1429	AMO	46	1	\N	\N	\N	\N	\N	\N	Censor	Instant	U
1430	AMO	47	4	\N	\N	\N	\N	\N	\N	Compelling Argument	Sorcery	C
1433	AMO	50	4	\N	\N	\N	\N	\N	\N	Decision Paralysis	Instant	C
1434	AMO	51	1	\N	\N	\N	\N	\N	\N	Drake Haven	Enchantment	R
1436	AMO	53	4	\N	\N	\N	\N	\N	\N	Floodwaters	Sorcery	C
1437	AMO	54	2	\N	\N	\N	\N	\N	\N	Galestrike	Instant	U
27809	WWK	16	0	t	\N	\N	\N	\N	\N	Perimeter Captain	Creature	U
1439	AMO	56	3	\N	\N	\N	\N	\N	\N	Hekma Sentinels	Creature	C
1441	AMO	58	3	\N	\N	\N	\N	\N	\N	Illusory Wrappings	Enchantment	C
1444	AMO	61	2	\N	\N	\N	\N	\N	\N	Lay Claim	Enchantment	U
1446	AMO	63	1	\N	\N	\N	\N	\N	\N	New Perspectives	Enchantment	R
1448	AMO	65	1	\N	\N	\N	\N	\N	\N	Pull from Tomorrow	Instant	R
1449	AMO	66	5	\N	\N	\N	\N	\N	\N	River Serpent	Creature	C
1451	AMO	68	4	\N	\N	\N	\N	\N	\N	Scribe of the Mindful	Creature	C
1453	AMO	70	3	\N	\N	\N	\N	\N	\N	Shimmerscale Drake	Creature	C
1179	MAO	68	4	\N	\N	\N	\N	\N	\N	Ringwarden Owl	Creature	C
1188	MAO	77	3	\N	\N	\N	\N	\N	\N	Stratus Walk	Enchantment	C
1196	MAO	85	1	\N	\N	\N	\N	\N	\N	Blightcaster	Creature	U
1202	MAO	91	4	\N	\N	\N	\N	\N	\N	Deadbridge Shaman	Creature	C
1206	MAO	95	4	\N	\N	\N	\N	\N	\N	Eyeblight Assassin	Creature	C
1209	MAO	98	1	\N	\N	\N	\N	\N	\N	Fleshbag Marauder	Creature	U
1220	MAO	109	4	\N	\N	\N	\N	\N	\N	Nantuko Husk	Creature	C
1222	MAO	111	4	\N	\N	\N	\N	\N	\N	Nightsnare	Sorcery	C
1228	MAO	117	2	\N	\N	\N	\N	\N	\N	Revenant	Creature	U
1229	MAO	118	3	\N	\N	\N	\N	\N	\N	Shadows of the Past	Enchantment	U
1237	MAO	126	3	\N	\N	\N	\N	\N	\N	Weight of the Underworld	Enchantment	C
1241	MAO	130	4	\N	\N	\N	\N	\N	\N	Akroan Sergeant	Creature	C
1256	MAO	145	3	\N	\N	\N	\N	\N	\N	Fiery Impulse	Instant	C
1257	MAO	146	3	\N	\N	\N	\N	\N	\N	Firefiend Elemental	Creature	C
1278	MAO	167	2	\N	\N	\N	\N	\N	\N	Volcanic Rambler	Creature	C
1281	MAO	170	4	\N	\N	\N	\N	\N	\N	Caustic Caterpillar	Creature	C
1284	MAO	173	2	\N	\N	\N	\N	\N	\N	Dwynen's Elite	Creature	U
1286	MAO	175	3	\N	\N	\N	\N	\N	\N	Elvish Visionary	Creature	C
1456	AMO	73	1	\N	\N	\N	\N	\N	\N	Trial of Knowledge	Enchantment	U
1460	AMO	77	2	\N	\N	\N	\N	\N	\N	Zenith Seeker	Creature	U
1461	AMO	78	1	\N	\N	\N	\N	\N	\N	Archfiend of Ifnir	Creature	R
1463	AMO	80	4	\N	\N	\N	\N	\N	\N	Blighted Bat	Creature	C
1464	AMO	81	1	\N	\N	\N	\N	\N	\N	Bone Picker	Creature	U
1466	AMO	83	4	\N	\N	\N	\N	\N	\N	Cartouche of Ambition	Enchantment	C
1471	AMO	88	1	\N	\N	\N	\N	\N	\N	Dread Wanderer	Creature	R
1473	AMO	90	1	\N	\N	\N	\N	\N	\N	Faith of the Devoted	Enchantment	U
1475	AMO	92	3	\N	\N	\N	\N	\N	\N	Final Reward	Instant	C
1476	AMO	93	3	\N	\N	\N	\N	\N	\N	Gravedigger	Creature	U
1478	AMO	95	4	\N	\N	\N	\N	\N	\N	Horror of the Broken Lands	Creature	C
1483	AMO	100	3	\N	\N	\N	\N	\N	\N	Miasmic Mummy	Creature	C
1486	AMO	103	3	\N	\N	\N	\N	\N	\N	Pitiless Vizier	Creature	C
1488	AMO	105	2	\N	\N	\N	\N	\N	\N	Ruthless Sniper	Creature	U
1490	AMO	107	1	\N	\N	\N	\N	\N	\N	Shadow of the Grave	Instant	R
1492	AMO	109	3	\N	\N	\N	\N	\N	\N	Splendid Agony	Instant	C
1494	AMO	111	3	\N	\N	\N	\N	\N	\N	Supernatural Stamina	Instant	C
1497	AMO	114	4	\N	\N	\N	\N	\N	\N	Unburden	Sorcery	C
1498	AMO	115	3	\N	\N	\N	\N	\N	\N	Wander in Death	Sorcery	C
1516	AMO	133	1	\N	\N	\N	\N	\N	\N	Glorious End	Instant	M
1539	AMO	156	3	\N	\N	\N	\N	\N	\N	Benefaction of Rhonas	Sorcery	C
1545	AMO	162	1	\N	\N	\N	\N	\N	\N	Crocodile of the Crossing	Creature	U
1547	AMO	164	3	\N	\N	\N	\N	\N	\N	Dissenter's Deliverance	Instant	C
1549	AMO	166	3	\N	\N	\N	\N	\N	\N	Giant Spider	Creature	C
1550	AMO	167	4	\N	\N	\N	\N	\N	\N	Gift of Paradise	Enchantment	C
1553	AMO	170	0	\N	\N	\N	\N	\N	\N	Harvest Season	Sorcery	R
1555	AMO	172	1	\N	\N	\N	\N	\N	\N	Honored Hydra	Creature	R
1558	AMO	175	1	\N	\N	\N	\N	\N	\N	Manglehorn	Creature	U
1559	AMO	176	3	\N	\N	\N	\N	\N	\N	Naga Vitalist	Creature	C
1561	AMO	178	3	\N	\N	\N	\N	\N	\N	Ornery Kudu	Creature	C
1563	AMO	180	0	\N	\N	\N	\N	\N	\N	Prowling Serpopard	Creature	R
1569	AMO	186	1	\N	\N	\N	\N	\N	\N	Shefet Monitor	Creature	U
1587	AMO	204	1	\N	\N	\N	\N	\N	\N	Nissa, Steward of Elements	Lgd. Planeswalker	M
1610	AMO	227	1	\N	\N	\N	\N	\N	\N	Embalmer's Tools	Artifact	U
1614	AMO	231	2	\N	\N	\N	\N	\N	\N	Kefnet's Monument	Lgd. Artifact	U
1621	AMO	238	2	\N	\N	\N	\N	\N	\N	Watchers of the Dead	Artifact Creature	U
1633	AMO	250	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
1634	AMO	251	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
1636	AMO	253	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
1638	AMO	255	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
1639	AMO	256	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
1641	AMO	258	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
1642	AMO	259	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
1644	AMO	261	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
1646	AMO	263	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
1651	AMO	268	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
1723	KLD	61	0	\N	\N	\N	\N	\N	\N	Graven Lore	Snow Instant	R
1735	KLD	73	0	\N	\N	\N	\N	\N	\N	Reflections of Littjara	Enchantment	R
1743	KLD	81	0	\N	\N	\N	\N	\N	\N	Burning-Rune Demon	Creature	M
1748	KLD	86	0	\N	\N	\N	\N	\N	\N	Draugr Necromancer	Snow Creature	R
1756	KLD	94	0	\N	\N	\N	\N	\N	\N	Eradicator Valkyrie	Creature	M
2736	ZER	155	4	\N	\N	\N	\N	\N	\N	Roil Eruption	Sorcery	C
4143	BFZ	180	0	\N	\N	\N	\N	\N	\N	Nissa's Renewal	Sorcery	R
4179	BFZ	216	0	\N	\N	\N	\N	\N	\N	Noyan Dar, Roil Shaper	Lgd. Creature	R
2440	OAT	43	1	\N	\N	\N	\N	\N	\N	Deepfathom Skulker	Creature	R
2445	OAT	48	2	\N	\N	\N	\N	\N	\N	Thought Harvester	Creature	U
3004	KAL	143	0	\N	\N	\N	\N	\N	\N	Architect of the Untamed	Creature	R
1591	AMO	208	1	\N	\N	\N	\N	\N	\N	Wayward Servant	Creature	U
1597	AMO	214	1	\N	\N	\N	\N	\N	\N	Mouth // Feed	Sorcery // Sorcery	R
1599	AMO	216	1	\N	\N	\N	\N	\N	\N	Reduce // Rubble	Instant // Sorcery	U
1601	AMO	218	1	\N	\N	\N	\N	\N	\N	Onward // Victory	Instant // Sorcery	U
1604	AMO	221	1	\N	\N	\N	\N	\N	\N	Failure // Comply	Instant // Sorcery	R
1612	AMO	229	1	\N	\N	\N	\N	\N	\N	Hazoret's Monument	Lgd. Artifact	U
1615	AMO	232	4	\N	\N	\N	\N	\N	\N	Luxa River Shrine	Artifact	C
1622	AMO	239	1	\N	\N	\N	\N	\N	\N	Canyon Slough	Land	R
1624	AMO	241	4	\N	\N	\N	\N	\N	\N	Cradle of the Accursed	Land	C
1625	AMO	242	3	\N	\N	\N	\N	\N	\N	Evolving Wilds	Land	C
1629	AMO	246	4	\N	\N	\N	\N	\N	\N	Painted Bluffs	Land	C
1648	AMO	265	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
1709	KLD	47	4	\N	\N	\N	\N	\N	\N	Berg Strider	Snow Creature	C
1718	KLD	56	2	\N	\N	\N	\N	\N	\N	Frost Augur	Snow Creature	U
1721	KLD	59	2	\N	\N	\N	\N	\N	\N	Giant's Amulet	Artifact	U
1724	KLD	62	1	\N	\N	\N	\N	\N	\N	Icebind Pillar	Snow Artifact	U
1725	KLD	63	1	\N	\N	\N	\N	\N	\N	Icebreaker Kraken	Snow Creature	R
1727	KLD	65	4	\N	\N	\N	\N	\N	\N	Karfell Harbinger	Creature	C
1730	KLD	68	3	\N	\N	\N	\N	\N	\N	Mistwalker	Creature	C
1736	KLD	74	3	\N	\N	\N	\N	\N	\N	Run Ashore	Instant	C
1738	KLD	76	2	\N	\N	\N	\N	\N	\N	Saw It Coming	Instant	U
1740	KLD	78	3	\N	\N	\N	\N	\N	\N	Undersea Invader	Creature	C
1742	KLD	80	3	\N	\N	\N	\N	\N	\N	Bloodsky Berserker	Creature	U
1746	KLD	84	5	\N	\N	\N	\N	\N	\N	Demonic Gifts	Instant	C
1751	KLD	89	3	\N	\N	\N	\N	\N	\N	Dread Rider	Creature	C
1753	KLD	91	3	\N	\N	\N	\N	\N	\N	Duskwielder	Creature	C
1757	KLD	95	3	\N	\N	\N	\N	\N	\N	Feed the Serpent	Instant	C
1759	KLD	97	1	\N	\N	\N	\N	\N	\N	Hailstorm Valkyrie	Snow Creature	U
1761	KLD	99	5	\N	\N	\N	\N	\N	\N	Infernal Pet	Creature	C
1763	KLD	101	4	\N	\N	\N	\N	\N	\N	Karfell Kennel-Master	Creature	C
1767	KLD	105	3	\N	\N	\N	\N	\N	\N	Raise the Draugr	Instant	C
1770	KLD	108	1	\N	\N	\N	\N	\N	\N	Rune of Mortality	Enchantment	U
1783	KLD	121	3	\N	\N	\N	\N	\N	\N	Axgard Cavalry	Creature	C
1784	KLD	122	2	\N	\N	\N	\N	\N	\N	Basalt Ravager	Creature	U
1801	KLD	139	0	\N	\N	\N	\N	\N	\N	Goldspan Dragon	Creature	M
1806	KLD	144	2	\N	\N	\N	\N	\N	\N	Provoke the Trolls	Instant	U
1807	KLD	145	0	\N	\N	\N	\N	\N	\N	Quakebringer	Creature	M
1822	KLD	160	0	\N	\N	\N	\N	\N	\N	Battle Mammoth	Creature	M
1824	KLD	162	1	\N	\N	\N	\N	\N	\N	Blizzard Brawl	Snow Sorcery	U
1826	KLD	164	4	\N	\N	\N	\N	\N	\N	Broken Wings	Instant	C
1827	KLD	165	4	\N	\N	\N	\N	\N	\N	Elderleaf Mentor	Creature	C
1831	KLD	169	0	\N	\N	\N	\N	\N	\N	Esika's Chariot	Lgd. Artifact	R
1834	KLD	172	5	\N	\N	\N	\N	\N	\N	Gnottvold Recluse	Creature	C
1837	KLD	175	4	\N	\N	\N	\N	\N	\N	Horizon Seeker	Creature	C
1838	KLD	176	3	\N	\N	\N	\N	\N	\N	Icehide Troll	Snow Creature	C
1843	KLD	181	0	\N	\N	\N	\N	\N	\N	Kolvori, God of Kinship // The Ringhart Crest	Lgd. Creature	R
1851	KLD	189	2	\N	\N	\N	\N	\N	\N	Rootless Yew	Creature	U
1853	KLD	191	1	\N	\N	\N	\N	\N	\N	Rune of Might	Enchantment	U
1855	KLD	193	4	\N	\N	\N	\N	\N	\N	Sculptor of Winter	Snow Creature	C
1860	KLD	198	0	\N	\N	\N	\N	\N	\N	Tyvar Kell	Lgd. Planeswalker	M
1862	KLD	200	0	\N	\N	\N	\N	\N	\N	Aegar, the Freezing Flame	Lgd. Creature	U
1864	KLD	202	1	\N	\N	\N	\N	\N	\N	Ascent of the Worthy	Enchantment	U
1866	KLD	204	0	\N	\N	\N	\N	\N	\N	Battle of Frost and Fire	Enchantment	R
1868	KLD	206	2	\N	\N	\N	\N	\N	\N	Binding the Old Gods	Enchantment	U
1870	KLD	208	2	\N	\N	\N	\N	\N	\N	Fall of the Impostor	Enchantment	U
1872	KLD	210	0	\N	\N	\N	\N	\N	\N	Firja's Retribution	Enchantment	R
1874	KLD	212	1	\N	\N	\N	\N	\N	\N	Harald, King of Skemfar	Lgd. Creature	U
1876	KLD	214	0	\N	\N	\N	\N	\N	\N	Immersturm Predator	Creature	R
1878	KLD	216	1	\N	\N	\N	\N	\N	\N	Kardur, Doomscourge	Lgd. Creature	U
1882	KLD	220	3	\N	\N	\N	\N	\N	\N	Koll, the Forgemaster	Lgd. Creature	U
1884	KLD	222	1	\N	\N	\N	\N	\N	\N	Maja, Bretagard Protector	Lgd. Creature	U
1886	KLD	224	1	\N	\N	\N	\N	\N	\N	Narfi, Betrayer King	Lgd. Snow Creature	U
1888	KLD	226	1	\N	\N	\N	\N	\N	\N	Niko Defies Destiny	Enchantment	U
1891	KLD	229	0	\N	\N	\N	\N	\N	\N	Showdown of the Skalds	Enchantment	R
1893	KLD	231	3	\N	\N	\N	\N	\N	\N	The Three Seasons	Enchantment	U
1895	KLD	233	1	\N	\N	\N	\N	\N	\N	Vega, the Watcher	Lgd. Creature	U
1896	KLD	234	1	\N	\N	\N	\N	\N	\N	Waking the Trolls	Enchantment	R
1899	KLD	237	0	\N	\N	\N	\N	\N	\N	Cosmos Elixir	Artifact	R
1902	KLD	240	0	\N	\N	\N	\N	\N	\N	Maskwood Nexus	Artifact	R
1904	KLD	242	3	\N	\N	\N	\N	\N	\N	Raiders' Karve	Artifact	C
1905	KLD	243	4	\N	\N	\N	\N	\N	\N	Raven Wings	Artifact	C
1907	KLD	245	1	\N	\N	\N	\N	\N	\N	Runed Crown	Artifact	U
1909	KLD	247	1	\N	\N	\N	\N	\N	\N	Weathered Runestone	Artifact	U
1917	KLD	255	0	\N	\N	\N	\N	\N	\N	Faceless Haven	Snow Land	R
1922	KLD	260	0	\N	\N	\N	\N	\N	\N	Hengegate Pathway // Mistgate Pathway	Land // Land	R
1937	KLD	275	0	\N	\N	\N	\N	\N	\N	The World Tree	Land	R
1949	KLD	287	0	\N	\N	\N	\N	\N	\N	Tyvar Kell	Lgd. Planeswalker	M
1951	KLD	289	0	\N	\N	\N	\N	\N	\N	Niko Aris	Lgd. Planeswalker	M
1954	KLD	292	0	\N	\N	\N	\N	\N	\N	Darkbore Pathway // Slitherbore Pathway	Land // Land	R
2660	ZER	79	3	\N	\N	\N	\N	\N	\N	Shell Shield	Instant	C
2729	ZER	148	1	\N	\N	\N	\N	\N	\N	Magmatic Channeler	Creature	R
4180	BFZ	217	0	\N	\N	\N	\N	\N	\N	Omnath, Locus of Rage	Lgd. Creature	M
4182	BFZ	219	0	\N	\N	\N	\N	\N	\N	Roil Spout	Sorcery	U
4183	BFZ	220	1	\N	\N	\N	\N	\N	\N	Skyrider Elf	Creature	U
2457	OAT	60	2	\N	\N	\N	\N	\N	\N	Oath of Jace	Lgd. Enchantment	R
2521	OAT	124	7	\N	\N	\N	\N	\N	\N	Stalking Drone	Creature	C
2529	OAT	132	1	\N	\N	\N	\N	\N	\N	Gladehart Cavalry	Creature	R
27819	MOR	17	0	t	\N	\N	\N	\N	\N	Meadowboon	Creature	U
36696	NEO	40	0	t	\N	\N	\N	\N	\N	Touch the Spirit Realm	Enchantment	U
2125	MIB	58	3	\N	\N	\N	t	\N	\N	Blisterstick Shaman	Creature	C
1773	KLD	111	3	\N	\N	\N	\N	\N	\N	Skull Raid	Sorcery	C
1774	KLD	112	1	\N	\N	\N	\N	\N	\N	Tergrid, God of Fright // Tergrid's Lantern	Lgd. Creature	R
1775	KLD	113	1	\N	\N	\N	\N	\N	\N	Tergrid's Shadow	Instant	U
1778	KLD	116	1	\N	\N	\N	\N	\N	\N	Vengeful Reaper	Creature	U
1779	KLD	117	4	\N	\N	\N	\N	\N	\N	Village Rites	Instant	C
1780	KLD	118	3	\N	\N	\N	\N	\N	\N	Weigh Down	Sorcery	C
1781	KLD	119	4	\N	\N	\N	\N	\N	\N	Withercrown	Enchantment	C
1782	KLD	120	1	\N	\N	\N	\N	\N	\N	Arni Brokenbrow	Lgd. Creature	R
1786	KLD	124	2	\N	\N	\N	\N	\N	\N	Breakneck Berserker	Creature	C
1787	KLD	125	1	\N	\N	\N	\N	\N	\N	Calamity Bearer	Creature	R
1788	KLD	126	4	\N	\N	\N	\N	\N	\N	Cinderheart Giant	Creature	C
1790	KLD	128	1	\N	\N	\N	\N	\N	\N	Crush the Weak	Sorcery	U
1791	KLD	129	5	\N	\N	\N	\N	\N	\N	Demon Bolt	Instant	C
1792	KLD	130	1	\N	\N	\N	\N	\N	\N	Doomskar Titan	Creature	U
1794	KLD	132	1	\N	\N	\N	\N	\N	\N	Dual Strike	Instant	U
2126	MIB	59	1	\N	\N	\N	t	\N	\N	Burn the Impure	Instant	C
2155	MIB	88	0	\N	\N	\N	\N	t	\N	Praetor's Counsel	Sorcery	M
2164	MIB	97	0	\N	t	t	\N	\N	\N	Tezzeret, Agent of Bolas	Lgd. Planeswalker	M
1795	KLD	133	1	\N	\N	\N	\N	\N	\N	Dwarven Hammer	Artifact	U
1797	KLD	135	1	\N	\N	\N	\N	\N	\N	Fearless Liberator	Creature	U
1800	KLD	138	3	\N	\N	\N	\N	\N	\N	Frost Bite	Snow Instant	C
1802	KLD	140	4	\N	\N	\N	\N	\N	\N	Hagi Mob	Creature	C
1805	KLD	143	4	\N	\N	\N	\N	\N	\N	Open the Omenpaths	Instant	C
1809	KLD	147	4	\N	\N	\N	\N	\N	\N	Run Amok	Instant	C
1810	KLD	148	2	\N	\N	\N	\N	\N	\N	Rune of Speed	Enchantment	U
1814	KLD	152	4	\N	\N	\N	\N	\N	\N	Squash	Instant	C
1819	KLD	157	4	\N	\N	\N	\N	\N	\N	Tuskeri Firewalker	Creature	C
1820	KLD	158	3	\N	\N	\N	\N	\N	\N	Vault Robber	Creature	C
1823	KLD	161	1	\N	\N	\N	\N	\N	\N	Blessing of Frost	Snow Sorcery	R
1835	KLD	173	3	\N	\N	\N	\N	\N	\N	Grizzled Outrider	Creature	C
1842	KLD	180	4	\N	\N	\N	\N	\N	\N	King Harald's Revenge	Sorcery	C
1847	KLD	185	1	\N	\N	\N	\N	\N	\N	Old-Growth Troll	Creature	R
1849	KLD	187	5	\N	\N	\N	\N	\N	\N	Ravenous Lindwurm	Creature	C
1852	KLD	190	3	\N	\N	\N	\N	\N	\N	Roots of Wisdom	Sorcery	C
1859	KLD	197	1	\N	\N	\N	\N	\N	\N	Toski, Bearer of Secrets	Lgd. Creature	R
1916	KLD	254	1	\N	\N	\N	\N	\N	\N	Darkbore Pathway // Slitherbore Pathway	Land // Land	R
1938	KLD	276	1	\N	\N	\N	\N	\N	\N	Snow-Covered Plains	Basic Snow Land	C
1940	KLD	278	1	\N	\N	\N	\N	\N	\N	Snow-Covered Island	Basic Snow Land	C
1942	KLD	280	1	\N	\N	\N	\N	\N	\N	Snow-Covered Swamp	Basic Snow Land	C
1944	KLD	282	1	\N	\N	\N	\N	\N	\N	Snow-Covered Mountain	Basic Snow Land	C
1947	KLD	285	1	\N	\N	\N	\N	\N	\N	Snow-Covered Forest	Basic Snow Land	C
1959	KLD	297	1	\N	\N	\N	\N	\N	\N	Quakebringer	Creature	M
1963	KLD	301	1	\N	\N	\N	\N	\N	\N	Sigrid, God-Favored	Lgd. Creature	R
1979	KLD	317	1	\N	\N	\N	\N	\N	\N	Jorn, God of Winter // Kaldring, the Rimestaff	Lgd. Snow Creature	R
1999	KLD	337	0	\N	\N	\N	\N	\N	\N	Resplendent Marshal	Creature	M
2001	KLD	339	0	\N	\N	\N	\N	\N	\N	Runeforge Champion	Creature	R
2002	KLD	340	0	\N	\N	\N	\N	\N	\N	Search for Glory	Snow Sorcery	R
2004	KLD	342	0	\N	\N	\N	\N	\N	\N	Cosmos Charger	Creature	R
2006	KLD	344	0	\N	\N	\N	\N	\N	\N	Graven Lore	Snow Instant	R
2008	KLD	346	0	\N	\N	\N	\N	\N	\N	Mystic Reflection	Instant	R
2009	KLD	347	0	\N	\N	\N	\N	\N	\N	Reflections of Littjara	Enchantment	R
2011	KLD	349	0	\N	\N	\N	\N	\N	\N	Burning-Rune Demon	Creature	M
2013	KLD	351	0	\N	\N	\N	\N	\N	\N	Draugr Necromancer	Snow Creature	R
2015	KLD	353	0	\N	\N	\N	\N	\N	\N	Eradicator Valkyrie	Creature	M
2017	KLD	355	0	\N	\N	\N	\N	\N	\N	Skemfar Avenger	Creature	R
2018	KLD	356	0	\N	\N	\N	\N	\N	\N	Calamity Bearer	Creature	R
2020	KLD	358	0	\N	\N	\N	\N	\N	\N	Goldspan Dragon	Creature	M
2022	KLD	360	0	\N	\N	\N	\N	\N	\N	Tibalt's Trickery	Instant	R
2024	KLD	362	0	\N	\N	\N	\N	\N	\N	Blessing of Frost	Snow Sorcery	R
2026	KLD	364	0	\N	\N	\N	\N	\N	\N	In Search of Greatness	Enchantment	R
2027	KLD	365	0	\N	\N	\N	\N	\N	\N	Old-Growth Troll	Creature	R
2029	KLD	367	0	\N	\N	\N	\N	\N	\N	Immersturm Predator	Creature	R
2031	KLD	369	0	\N	\N	\N	\N	\N	\N	Maskwood Nexus	Artifact	R
2033	KLD	371	0	\N	\N	\N	\N	\N	\N	Faceless Haven	Snow Land	R
2036	KLD	374	0	\N	\N	\N	\N	\N	\N	Valkyrie Harbinger	Creature	R
2038	KLD	376	0	\N	\N	\N	\N	\N	\N	Cleaving Reaper	Creature	R
2040	KLD	378	0	\N	\N	\N	\N	\N	\N	Canopy Tactician	Creature	R
2041	KLD	379	0	\N	\N	\N	\N	\N	\N	Armed and Armored	Instant	U
2043	KLD	381	0	\N	\N	\N	\N	\N	\N	Warchanter Skald	Creature	U
2045	KLD	383	0	\N	\N	\N	\N	\N	\N	Absorb Identity	Instant	U
2047	KLD	385	0	\N	\N	\N	\N	\N	\N	Elderfang Ritualist	Creature	U
2048	KLD	386	0	\N	\N	\N	\N	\N	\N	Renegade Reaper	Creature	U
2050	KLD	388	0	\N	\N	\N	\N	\N	\N	Bearded Axe	Artifact	U
2052	KLD	390	0	\N	\N	\N	\N	\N	\N	Gilded Assault Cart	Artifact	U
2053	KLD	391	0	\N	\N	\N	\N	\N	\N	Elven Ambush	Instant	U
2055	KLD	393	0	\N	\N	\N	\N	\N	\N	Rampage of the Valkyries	Enchantment	U
2057	KLD	395	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
2058	KLD	396	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
2060	KLD	398	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
2061	KLD	399	0	\N	\N	\N	\N	\N	\N	Realmwalker	Creature	R
2063	KLD	401	0	\N	\N	\N	\N	\N	\N	Usher of the Fallen	Creature	U
2065	KLD	403	0	\N	\N	\N	\N	\N	\N	Poison the Cup	Instant	U
2067	KLD	405	0	\N	\N	\N	\N	\N	\N	Masked Vandal	Creature	C
2731	ZER	150	1	\N	\N	\N	\N	\N	\N	Moraug, Fury of Akoum	Lgd. Creature	M
2519	OAT	122	1	\N	\N	\N	\N	\N	\N	Ruin in Their Wake	Sorcery	U
2524	OAT	127	2	\N	\N	\N	\N	\N	\N	Baloth Pup	Creature	U
1426	AMO	43	3	\N	\N	\N	\N	\N	\N	Aven Initiate	Creature	C
1445	AMO	62	4	\N	\N	\N	\N	\N	\N	Naga Oracle	Creature	C
1459	AMO	76	3	\N	\N	\N	\N	\N	\N	Winds of Rebuke	Instant	C
1468	AMO	85	4	\N	\N	\N	\N	\N	\N	Cursed Minotaur	Creature	C
1482	AMO	99	2	\N	\N	\N	\N	\N	\N	Lord of the Accursed	Creature	U
1487	AMO	104	1	\N	\N	\N	\N	\N	\N	Plague Belcher	Creature	R
1496	AMO	113	2	\N	\N	\N	\N	\N	\N	Trial of Ambition	Enchantment	U
1501	AMO	118	1	\N	\N	\N	\N	\N	\N	Battlefield Scavenger	Creature	U
1503	AMO	120	4	\N	\N	\N	\N	\N	\N	Bloodlust Inciter	Creature	C
1504	AMO	121	2	\N	\N	\N	\N	\N	\N	Bloodrage Brawler	Creature	U
1506	AMO	123	2	\N	\N	\N	\N	\N	\N	By Force	Sorcery	U
1509	AMO	126	1	\N	\N	\N	\N	\N	\N	Consuming Fervor	Enchantment	U
36697	NEO	41	0	t	\N	\N	\N	\N	\N	Wanderer's Intervention	Instant	C
1510	AMO	127	1	\N	\N	\N	\N	\N	\N	Deem Worthy	Instant	U
1512	AMO	129	3	\N	\N	\N	\N	\N	\N	Electrify	Instant	C
1513	AMO	130	3	\N	\N	\N	\N	\N	\N	Emberhorn Minotaur	Creature	C
1517	AMO	134	2	\N	\N	\N	\N	\N	\N	Glorybringer	Creature	R
1520	AMO	137	1	\N	\N	\N	\N	\N	\N	Hazoret's Favor	Enchantment	R
1523	AMO	140	1	\N	\N	\N	\N	\N	\N	Limits of Solidarity	Sorcery	U
1525	AMO	142	5	\N	\N	\N	\N	\N	\N	Manticore of the Gauntlet	Creature	C
1527	AMO	144	3	\N	\N	\N	\N	\N	\N	Nef-Crop Entangler	Creature	C
1528	AMO	145	3	\N	\N	\N	\N	\N	\N	Nimble-Blade Khenra	Creature	C
1530	AMO	147	4	\N	\N	\N	\N	\N	\N	Pursue Glory	Instant	C
1533	AMO	150	4	\N	\N	\N	\N	\N	\N	Thresher Lizard	Creature	C
1535	AMO	152	1	\N	\N	\N	\N	\N	\N	Trial of Zeal	Enchantment	U
2144	MIB	77	2	\N	\N	\N	\N	t	\N	Blightwidow	Creature	C
1537	AMO	154	3	\N	\N	\N	\N	\N	\N	Violent Impact	Sorcery	C
1538	AMO	155	1	\N	\N	\N	\N	\N	\N	Warfire Javelineer	Creature	U
2161	MIB	94	4	\N	\N	\N	\N	t	\N	Viridian Corrupter	Creature	U
2157	MIB	90	3	\N	\N	\N	\N	t	\N	Rot Wolf	Creature	C
2160	MIB	93	2	\N	\N	\N	\N	t	\N	Unnatural Predation	Instant	C
2201	MIB	134	2	\N	\N	\N	\N	\N	\N	Sphere of the Suns	Artifact	U
1544	AMO	161	4	\N	\N	\N	\N	\N	\N	Colossapede	Creature	C
1557	AMO	174	4	\N	\N	\N	\N	\N	\N	Initiate's Companion	Creature	C
1564	AMO	181	3	\N	\N	\N	\N	\N	\N	Quarry Hauler	Creature	C
1567	AMO	184	1	\N	\N	\N	\N	\N	\N	Scaled Behemoth	Creature	U
1568	AMO	185	5	\N	\N	\N	\N	\N	\N	Shed Weakness	Instant	C
1606	AMO	223	1	\N	\N	\N	\N	\N	\N	Cut // Ribbons	Sorcery // Sorcery	R
1620	AMO	237	2	\N	\N	\N	\N	\N	\N	Throne of the God-Pharaoh	Lgd. Artifact	R
1652	AMO	269	2	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
2149	MIB	82	1	\N	\N	\N	\N	t	\N	Lead the Stampede	Sorcery	U
2165	MIB	98	0	\N	\N	\N	\N	\N	\N	Bladed Sentinel	Artifact Creature	C
2154	MIB	87	1	\N	\N	\N	\N	t	\N	Plaguemaw Beast	Creature	U
2145	MIB	78	1	\N	\N	\N	\N	t	\N	Creeping Corrosion	Sorcery	R
2151	MIB	84	1	\N	\N	\N	\N	t	\N	Mirran Mettle	Instant	C
2148	MIB	81	1	\N	\N	\N	\N	t	\N	Green Sun's Zenith	Sorcery	R
2147	MIB	80	1	\N	\N	\N	\N	t	\N	Glissa's Courier	Creature	C
2152	MIB	85	1	\N	\N	\N	\N	t	\N	Phyrexian Hydra	Creature	R
2153	MIB	86	1	\N	\N	\N	\N	t	\N	Pistus Strike	Instant	C
2166	MIB	99	0	\N	\N	\N	\N	\N	\N	Blightsteel Colossus	Artifact Creature	M
2167	MIB	100	1	\N	\N	\N	\N	\N	\N	Bonehoard	Artifact	R
2168	MIB	101	0	\N	\N	\N	\N	\N	\N	Brass Squire	Artifact Creature	U
2169	MIB	102	1	\N	\N	\N	\N	\N	\N	Copper Carapace	Artifact	C
2170	MIB	103	1	\N	\N	\N	\N	\N	\N	Core Prowler	Artifact Creature	U
2171	MIB	104	0	\N	\N	\N	\N	\N	\N	Darksteel Plate	Artifact	R
2172	MIB	105	1	\N	\N	\N	\N	\N	\N	Decimator Web	Artifact	R
2173	MIB	106	1	\N	\N	\N	\N	\N	\N	Dross Ripper	Artifact Creature	C
2174	MIB	107	1	\N	\N	\N	\N	\N	\N	Flayer Husk	Artifact	C
2178	MIB	111	0	\N	\N	\N	\N	\N	\N	Knowledge Pool	Artifact	R
2180	MIB	113	0	\N	\N	\N	\N	\N	\N	Magnetic Mine	Artifact	R
2181	MIB	114	0	\N	\N	\N	\N	\N	\N	Mirrorworks	Artifact	R
2183	MIB	116	0	\N	\N	\N	\N	\N	\N	Myr Sire	Artifact Creature	C
2185	MIB	118	1	\N	\N	\N	\N	\N	\N	Myr Welder	Artifact Creature	R
2187	MIB	120	1	\N	\N	\N	\N	\N	\N	Phyrexian Digester	Artifact Creature	C
2189	MIB	122	0	\N	\N	\N	\N	\N	\N	Phyrexian Revoker	Artifact Creature	R
2191	MIB	124	1	\N	\N	\N	\N	\N	\N	Piston Sledge	Artifact	U
2193	MIB	126	0	\N	\N	\N	\N	\N	\N	Psychosis Crawler	Artifact Creature	R
2196	MIB	129	0	\N	\N	\N	\N	\N	\N	Shimmer Myr	Artifact Creature	R
2198	MIB	131	1	\N	\N	\N	\N	\N	\N	Signal Pest	Artifact Creature	U
2199	MIB	132	1	\N	\N	\N	\N	\N	\N	Silverskin Armor	Artifact	U
2203	MIB	136	0	\N	\N	\N	\N	\N	\N	Spine of Ish Sah	Artifact	R
2205	MIB	138	0	\N	\N	\N	\N	\N	\N	Sword of Feast and Famine	Artifact	M
2207	MIB	140	0	\N	\N	\N	\N	\N	\N	Thopter Assembly	Artifact Creature	R
2208	MIB	141	0	\N	\N	\N	\N	\N	\N	Titan Forge	Artifact	R
2211	MIB	144	1	\N	\N	\N	\N	\N	\N	Contested War Zone	Land	R
2213	MIB	146	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
2214	MIB	147	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
2216	MIB	149	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
2217	MIB	150	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
2219	MIB	152	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
2221	MIB	154	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
2222	MIB	155	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
913	GOR	61	4	\N	\N	\N	\N	\N	\N	Barrier of Bones	Creature	C
946	GOR	94	3	\N	\N	\N	\N	\N	\N	Command the Storm	Instant	C
947	GOR	95	4	\N	\N	\N	\N	\N	\N	Cosmotronic Wave	Sorcery	C
971	GOR	119	3	\N	\N	\N	\N	\N	\N	Torch Courier	Creature	C
994	GOR	142	3	\N	\N	\N	\N	\N	\N	Portcullis Vine	Creature	C
1026	GOR	174	4	\N	\N	\N	\N	\N	\N	Goblin Electromancer	Creature	C
1086	GOR	234	4	\N	\N	\N	\N	\N	\N	Dimir Locket	Artifact	C
1090	GOR	238	3	\N	\N	\N	\N	\N	\N	Izzet Locket	Artifact	C
1094	GOR	242	1	\N	\N	\N	\N	\N	\N	Wand of Vertebrae	Artifact	U
1383	MAO	272	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
1737	KLD	75	1	\N	\N	\N	\N	\N	\N	Rune of Flight	Enchantment	U
1818	KLD	156	2	\N	\N	\N	\N	\N	\N	Tundra Fumarole	Snow Sorcery	R
2680	ZER	99	4	\N	\N	\N	\N	\N	\N	Drana's Silencer	Creature	C
2741	ZER	160	2	\N	\N	\N	\N	\N	\N	Shatterskull Minotaur	Creature	U
2358	NPH	136	2	\N	\N	\N	\N	\N	\N	Gremlin Mine	Artifact	C
2279	NPH	57	2	\N	\N	\N	\N	\N	\N	Dismember	Instant	U
36698	NEO	42	0	t	\N	\N	\N	\N	\N	The Wandering Emperor	Lgd. Planeswalker	M
2265	NPH	43	1	\N	\N	\N	\N	\N	\N	Psychic Barrier	Instant	C
2270	NPH	48	1	\N	\N	\N	\N	\N	\N	Vapor Snag	Instant	C
2271	NPH	49	0	\N	\N	\N	\N	\N	\N	Viral Drake	Creature	U
2273	NPH	51	1	\N	\N	\N	\N	\N	\N	Xenograft	Enchantment	R
2276	NPH	54	1	\N	\N	\N	\N	\N	\N	Chancellor of the Dross	Creature	R
2277	NPH	55	1	\N	\N	\N	\N	\N	\N	Dementia Bat	Creature	C
2281	NPH	59	0	\N	\N	\N	\N	\N	\N	Entomber Exarch	Creature	U
2282	NPH	60	1	\N	\N	\N	\N	\N	\N	Evil Presence	Enchantment	C
2285	NPH	63	0	\N	\N	\N	\N	\N	\N	Grim Affliction	Instant	C
2287	NPH	65	0	\N	\N	\N	\N	\N	\N	Life's Finale	Sorcery	R
2288	NPH	66	1	\N	\N	\N	\N	\N	\N	Mortis Dogs	Creature	C
2290	NPH	68	0	\N	\N	\N	\N	\N	\N	Phyrexian Obliterator	Creature	M
2293	NPH	71	0	\N	\N	\N	\N	\N	\N	Praetor's Grasp	Sorcery	R
2295	NPH	73	0	\N	\N	\N	\N	\N	\N	Sheoldred, Whispering One	Lgd. Creature	M
2298	NPH	76	1	\N	\N	\N	\N	\N	\N	Vault Skirge	Artifact Creature	C
2300	NPH	78	0	\N	\N	\N	\N	\N	\N	Act of Aggression	Instant	U
2301	NPH	79	1	\N	\N	\N	\N	\N	\N	Artillerize	Instant	C
2303	NPH	81	0	\N	\N	\N	\N	\N	\N	Chancellor of the Forge	Creature	R
2305	NPH	83	2	\N	\N	\N	\N	\N	\N	Flameborn Viron	Creature	C
2307	NPH	85	1	\N	\N	\N	\N	\N	\N	Geosurge	Sorcery	U
2308	NPH	86	0	\N	\N	\N	\N	\N	\N	Gut Shot	Instant	U
2310	NPH	88	1	\N	\N	\N	\N	\N	\N	Moltensteel Dragon	Artifact Creature	R
2312	NPH	90	1	\N	\N	\N	\N	\N	\N	Priest of Urabrask	Creature	U
2314	NPH	92	1	\N	\N	\N	\N	\N	\N	Razor Swine	Creature	C
2315	NPH	93	0	\N	\N	\N	\N	\N	\N	Ruthless Invasion	Sorcery	C
2317	NPH	95	0	\N	\N	\N	\N	\N	\N	Slag Fiend	Creature	R
2319	NPH	97	0	\N	\N	\N	\N	\N	\N	Tormentor Exarch	Creature	U
2320	NPH	98	0	\N	\N	\N	\N	\N	\N	Urabrask the Hidden	Lgd. Creature	M
2322	NPH	100	0	\N	\N	\N	\N	\N	\N	Volt Charge	Instant	C
2324	NPH	102	0	\N	\N	\N	\N	\N	\N	Whipflare	Sorcery	U
2325	NPH	103	1	\N	\N	\N	\N	\N	\N	Beast Within	Instant	U
2327	NPH	105	0	\N	\N	\N	\N	\N	\N	Brutalizer Exarch	Creature	U
2329	NPH	107	0	\N	\N	\N	\N	\N	\N	Corrosive Gale	Sorcery	U
2330	NPH	108	1	\N	\N	\N	\N	\N	\N	Death-Hood Cobra	Creature	C
2332	NPH	110	1	\N	\N	\N	\N	\N	\N	Glissa's Scorn	Instant	C
2334	NPH	112	0	\N	\N	\N	\N	\N	\N	Greenhilt Trainee	Creature	U
2336	NPH	114	1	\N	\N	\N	\N	\N	\N	Maul Splicer	Creature	C
2337	NPH	115	1	\N	\N	\N	\N	\N	\N	Melira, Sylvok Outcast	Lgd. Creature	R
2339	NPH	117	0	\N	\N	\N	\N	\N	\N	Mycosynth Fiend	Creature	U
2341	NPH	119	0	\N	\N	\N	\N	\N	\N	Phyrexian Swarmlord	Creature	R
2343	NPH	121	0	\N	\N	\N	\N	\N	\N	Spinebiter	Creature	U
2344	NPH	122	1	\N	\N	\N	\N	\N	\N	Thundering Tanadon	Artifact Creature	C
2346	NPH	124	1	\N	\N	\N	\N	\N	\N	Viridian Betrayers	Creature	C
2348	NPH	126	0	\N	\N	\N	\N	\N	\N	Vital Splicer	Creature	U
2350	NPH	128	0	\N	\N	\N	\N	\N	\N	Jor Kadeen, the Prevailer	Lgd. Creature	R
2352	NPH	130	0	\N	\N	\N	\N	\N	\N	Batterskull	Artifact	M
2354	NPH	132	0	\N	\N	\N	\N	\N	\N	Caged Sun	Artifact	R
2355	NPH	133	0	\N	\N	\N	\N	\N	\N	Conversion Chamber	Artifact	U
2357	NPH	135	0	\N	\N	\N	\N	\N	\N	Etched Monstrosity	Artifact Creature	M
2360	NPH	138	0	\N	\N	\N	\N	\N	\N	Hovermyr	Artifact Creature	C
2363	NPH	141	0	\N	\N	\N	\N	\N	\N	Isolation Cell	Artifact	U
2365	NPH	143	0	\N	\N	\N	\N	\N	\N	Lashwrithe	Artifact	R
2369	NPH	147	0	\N	\N	\N	\N	\N	\N	Necropouncer	Artifact	U
2370	NPH	148	0	\N	\N	\N	\N	\N	\N	Omen Machine	Artifact	R
2387	NPH	165	0	\N	\N	\N	\N	\N	\N	Phyrexia's Core	Land	U
2388	NPH	166	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
2390	NPH	168	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
2392	NPH	170	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
2393	NPH	171	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
2395	NPH	173	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
2396	NPH	174	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
328	IN4	84	4	\N	\N	\N	\N	\N	\N	Certain Death	Sorcery	C
352	IN4	108	4	\N	\N	\N	\N	\N	\N	Thraben Foulbloods	Creature	C
375	IN4	131	1	\N	\N	\N	\N	\N	\N	Harmless Offering	Sorcery	R
378	IN4	134	1	\N	\N	\N	\N	\N	\N	Insatiable Gorgers	Creature	U
386	IN4	142	2	\N	\N	\N	\N	\N	\N	Smoldering Werewolf // Erupting Dreadwolf	Creature	U
421	IN4	177	4	\N	\N	\N	\N	\N	\N	Waxing Moon	Instant	C
429	IN4	185	1	\N	\N	\N	\N	\N	\N	Heron's Grace Champion	Creature	R
1098	GOR	246	6	\N	\N	\N	\N	\N	\N	Dimir Guildgate	Land	C
1100	GOR	248	3	\N	\N	\N	\N	\N	\N	Golgari Guildgate	Land	C
1159	MAO	48	3	\N	\N	\N	\N	\N	\N	Calculated Dismissal	Instant	C
1169	MAO	58	1	\N	\N	\N	\N	\N	\N	Harbinger of the Tides	Creature	R
1189	MAO	78	1	\N	\N	\N	\N	\N	\N	Talent of the Telepath	Sorcery	R
1193	MAO	82	5	\N	\N	\N	\N	\N	\N	Watercourser	Creature	C
1208	MAO	97	3	\N	\N	\N	\N	\N	\N	Fetid Imp	Creature	C
1250	MAO	139	4	\N	\N	\N	\N	\N	\N	Demolish	Sorcery	C
1265	MAO	154	3	\N	\N	\N	\N	\N	\N	Mage-Ring Bully	Creature	C
1277	MAO	166	4	\N	\N	\N	\N	\N	\N	Titan's Strength	Instant	C
1288	MAO	177	2	\N	\N	\N	\N	\N	\N	Gaea's Revenge	Creature	R
1292	MAO	181	4	\N	\N	\N	\N	\N	\N	Hitchclaw Recluse	Creature	C
1293	MAO	182	2	\N	\N	\N	\N	\N	\N	Honored Hierarch	Creature	R
1305	MAO	194	4	\N	\N	\N	\N	\N	\N	Pharika's Disciple	Creature	C
1328	MAO	217	1	\N	\N	\N	\N	\N	\N	Shaman of the Pack	Creature	U
1704	KLD	42	4	\N	\N	\N	\N	\N	\N	Annul	Instant	C
1707	KLD	45	1	\N	\N	\N	\N	\N	\N	Avalanche Caller	Snow Creature	U
1710	KLD	48	3	\N	\N	\N	\N	\N	\N	Bind the Monster	Enchantment	C
1715	KLD	53	4	\N	\N	\N	\N	\N	\N	Depart the Realm	Instant	C
1716	KLD	54	4	\N	\N	\N	\N	\N	\N	Disdainful Stroke	Instant	C
1728	KLD	66	3	\N	\N	\N	\N	\N	\N	Littjara Kinseekers	Creature	C
1734	KLD	72	3	\N	\N	\N	\N	\N	\N	Ravenform	Sorcery	C
1741	KLD	79	1	\N	\N	\N	\N	\N	\N	Blood on the Snow	Snow Sorcery	R
1749	KLD	87	3	\N	\N	\N	\N	\N	\N	Draugr Recruiter	Creature	C
1765	KLD	103	1	\N	\N	\N	\N	\N	\N	Poison the Cup	Instant	U
1769	KLD	107	2	\N	\N	\N	\N	\N	\N	Rise of the Dread Marn	Instant	R
1789	KLD	127	3	\N	\N	\N	\N	\N	\N	Craven Hulk	Creature	C
1813	KLD	151	5	\N	\N	\N	\N	\N	\N	Smashing Success	Instant	C
1828	KLD	166	3	\N	\N	\N	\N	\N	\N	Elven Bow	Artifact	U
1844	KLD	182	2	\N	\N	\N	\N	\N	\N	Littjara Glade-Warden	Creature	U
1857	KLD	195	2	\N	\N	\N	\N	\N	\N	Spirit of the Aldergard	Snow Creature	U
1879	KLD	217	2	\N	\N	\N	\N	\N	\N	Kardur's Vicious Return	Enchantment	U
1881	KLD	219	2	\N	\N	\N	\N	\N	\N	King Narfi's Betrayal	Enchantment	R
316	IN4	72	1	\N	\N	\N	\N	\N	\N	Niblis of Frost	Creature	R
325	IN4	81	4	\N	\N	\N	\N	\N	\N	Boon of Emrakul	Enchantment	C
367	IN4	123	1	\N	\N	\N	\N	\N	\N	Collective Defiance	Sorcery	R
371	IN4	127	4	\N	\N	\N	\N	\N	\N	Falkenrath Reaver	Creature	C
372	IN4	128	2	\N	\N	\N	\N	\N	\N	Furyblade Vampire	Creature	U
377	IN4	133	2	\N	\N	\N	\N	\N	\N	Incendiary Flow	Sorcery	U
379	IN4	135	4	\N	\N	\N	\N	\N	\N	Make Mischief	Sorcery	C
390	IN4	146	1	\N	\N	\N	\N	\N	\N	Stromkirk Occultist	Creature	R
394	IN4	150	4	\N	\N	\N	\N	\N	\N	Backwoods Survivalists	Creature	C
410	IN4	166	5	\N	\N	\N	\N	\N	\N	Prey Upon	Sorcery	C
415	IN4	171	1	\N	\N	\N	\N	\N	\N	Splendid Reclamation	Sorcery	R
417	IN4	173	4	\N	\N	\N	\N	\N	\N	Swift Spinner	Creature	C
438	IN4	194	4	\N	\N	\N	\N	\N	\N	Cultist's Staff	Artifact	C
447	IN4	203	2	\N	\N	\N	\N	\N	\N	Geier Reach Sanitarium	Lgd. Land	R
1095	GOR	243	3	\N	\N	\N	\N	\N	\N	Boros Guildgate	Land	C
1099	GOR	247	5	\N	\N	\N	\N	\N	\N	Gateway Plaza	Land	C
1103	GOR	251	3	\N	\N	\N	\N	\N	\N	Izzet Guildgate	Land	C
1104	GOR	252	4	\N	\N	\N	\N	\N	\N	Izzet Guildgate	Land	C
1108	GOR	256	2	\N	\N	\N	\N	\N	\N	Selesnya Guildgate	Land	C
1230	MAO	119	4	\N	\N	\N	\N	\N	\N	Shambling Ghoul	Creature	C
1232	MAO	121	3	\N	\N	\N	\N	\N	\N	Thornbow Archer	Creature	C
1235	MAO	124	3	\N	\N	\N	\N	\N	\N	Undead Servant	Creature	C
1335	MAO	224	3	\N	\N	\N	\N	\N	\N	Brawler's Plate	Artifact	U
1898	KLD	236	1	\N	\N	\N	\N	\N	\N	Colossal Plow	Artifact	U
1910	KLD	248	1	\N	\N	\N	\N	\N	\N	Alpine Meadow	Snow Land	C
1912	KLD	250	1	\N	\N	\N	\N	\N	\N	Axgard Armory	Land	U
1915	KLD	253	1	\N	\N	\N	\N	\N	\N	Bretagard Stronghold	Land	U
1919	KLD	257	2	\N	\N	\N	\N	\N	\N	Glacial Floodplain	Snow Land	C
1921	KLD	259	1	\N	\N	\N	\N	\N	\N	Great Hall of Starnheim	Land	U
1923	KLD	261	2	\N	\N	\N	\N	\N	\N	Highland Forest	Snow Land	C
1925	KLD	263	1	\N	\N	\N	\N	\N	\N	Immersturm Skullcairn	Land	U
1927	KLD	265	2	\N	\N	\N	\N	\N	\N	Port of Karfell	Land	U
1928	KLD	266	1	\N	\N	\N	\N	\N	\N	Rimewood Falls	Snow Land	C
1930	KLD	268	1	\N	\N	\N	\N	\N	\N	Skemfar Elderhall	Land	U
1933	KLD	271	1	\N	\N	\N	\N	\N	\N	Surtland Frostpyre	Land	U
1936	KLD	274	1	\N	\N	\N	\N	\N	\N	Woodland Chasm	Snow Land	C
4194	BFZ	231	1	\N	\N	\N	\N	\N	\N	Blighted Gorge	Land	U
2446	OAT	49	1	\N	\N	\N	\N	\N	\N	Void Shatter	Instant	U
2464	OAT	67	1	\N	\N	\N	\N	\N	\N	Bearer of Silence	Creature	R
2466	OAT	69	1	\N	\N	\N	\N	\N	\N	Essence Depleter	Creature	U
2471	OAT	74	5	\N	\N	\N	\N	\N	\N	Kozilek's Translator	Creature	C
2474	OAT	77	1	\N	\N	\N	\N	\N	\N	Sifter of Skulls	Creature	R
2475	OAT	78	5	\N	\N	\N	\N	\N	\N	Sky Scourer	Creature	C
2477	OAT	80	5	\N	\N	\N	\N	\N	\N	Unnatural Endurance	Instant	C
2479	OAT	82	5	\N	\N	\N	\N	\N	\N	Witness the End	Sorcery	C
2484	OAT	87	2	\N	\N	\N	\N	\N	\N	Malakir Soothsayer	Creature	U
2485	OAT	88	2	\N	\N	\N	\N	\N	\N	Null Caller	Creature	U
2487	OAT	90	6	\N	\N	\N	\N	\N	\N	Tar Snare	Instant	C
2490	OAT	93	5	\N	\N	\N	\N	\N	\N	Zulaport Chainmage	Creature	C
2491	OAT	94	6	\N	\N	\N	\N	\N	\N	Consuming Sinkhole	Instant	C
2493	OAT	96	2	\N	\N	\N	\N	\N	\N	Eldrazi Obligator	Creature	R
2496	OAT	99	6	\N	\N	\N	\N	\N	\N	Maw of Kozilek	Creature	C
2498	OAT	101	5	\N	\N	\N	\N	\N	\N	Akoum Flameseeker	Creature	C
2499	OAT	102	6	\N	\N	\N	\N	\N	\N	Boulder Salvo	Sorcery	C
2501	OAT	104	1	\N	\N	\N	\N	\N	\N	Chandra, Flamecaller	Lgd. Planeswalker	M
2503	OAT	106	2	\N	\N	\N	\N	\N	\N	Devour in Flames	Sorcery	U
2505	OAT	108	6	\N	\N	\N	\N	\N	\N	Expedite	Instant	C
2506	OAT	109	1	\N	\N	\N	\N	\N	\N	Fall of the Titans	Instant	R
2511	OAT	114	2	\N	\N	\N	\N	\N	\N	Press into Service	Sorcery	U
2513	OAT	116	2	\N	\N	\N	\N	\N	\N	Reckless Bushwhacker	Creature	U
2515	OAT	118	2	\N	\N	\N	\N	\N	\N	Tears of Valakut	Instant	U
2516	OAT	119	1	\N	\N	\N	\N	\N	\N	Tyrant of Valakut	Creature	R
2532	OAT	135	3	\N	\N	\N	\N	\N	\N	Loam Larva	Creature	C
2541	OAT	144	1	\N	\N	\N	\N	\N	\N	Sylvan Advocate	Creature	R
2545	OAT	148	2	\N	\N	\N	\N	\N	\N	Flayer Drone	Creature	U
2549	OAT	152	2	\N	\N	\N	\N	\N	\N	Baloth Null	Creature	U
2551	OAT	154	2	\N	\N	\N	\N	\N	\N	Joraga Auxiliary	Creature	U
2555	OAT	158	1	\N	\N	\N	\N	\N	\N	Relentless Hunter	Creature	U
2557	OAT	160	1	\N	\N	\N	\N	\N	\N	Weapons Trainer	Creature	U
2565	OAT	168	2	\N	\N	\N	\N	\N	\N	Cinder Barrens	Land	U
2568	OAT	171	1	\N	\N	\N	\N	\N	\N	Hissing Quagmire	Land	R
2573	OAT	176	1	\N	\N	\N	\N	\N	\N	Ruins of Oran-Rief	Land	R
2579	OAT	182	1	\N	\N	\N	\N	\N	\N	Wandering Fumarole	Land	R
1399	AMO	16	0	\N	\N	\N	\N	\N	\N	Glory-Bound Initiate	Creature	R
2639	ZER	58	3	\N	\N	\N	\N	\N	\N	Field Research	Sorcery	C
2646	ZER	65	3	\N	\N	\N	\N	\N	\N	Living Tempest	Creature	C
2647	ZER	66	1	\N	\N	\N	\N	\N	\N	Lullmage's Domination	Sorcery	U
2651	ZER	70	2	\N	\N	\N	\N	\N	\N	Merfolk Windrobber	Creature	U
2652	ZER	71	3	\N	\N	\N	\N	\N	\N	Negate	Instant	C
2656	ZER	75	1	\N	\N	\N	\N	\N	\N	Ruin Crab	Creature	U
1114	MAO	3	2	\N	\N	\N	\N	\N	\N	Anointer of Champions	Creature	U
1131	MAO	20	4	\N	\N	\N	\N	\N	\N	Knight of the Pilgrim's Road	Creature	C
1136	MAO	25	4	\N	\N	\N	\N	\N	\N	Kytheon's Tactics	Sorcery	C
1138	MAO	27	1	\N	\N	\N	\N	\N	\N	Murder Investigation	Enchantment	U
1141	MAO	30	2	\N	\N	\N	\N	\N	\N	Sentinel of the Eternal Watch	Creature	U
2661	ZER	80	2	\N	\N	\N	\N	\N	\N	Silundi Vision // Silundi Isle	Instant // Land	U
2663	ZER	82	2	\N	\N	\N	\N	\N	\N	Skyclave Squid	Creature	C
2665	ZER	84	3	\N	\N	\N	\N	\N	\N	Tazeem Roilmage	Creature	C
2668	ZER	87	1	\N	\N	\N	\N	\N	\N	Windrider Wizard	Creature	U
2670	ZER	89	2	\N	\N	\N	\N	\N	\N	Acquisitions Expert	Creature	U
2673	ZER	92	5	\N	\N	\N	\N	\N	\N	Blood Beckoning	Sorcery	C
2674	ZER	93	4	\N	\N	\N	\N	\N	\N	Blood Price	Sorcery	C
2677	ZER	96	4	\N	\N	\N	\N	\N	\N	Deadly Alliance	Instant	C
2681	ZER	100	2	\N	\N	\N	\N	\N	\N	Dreadwurm	Creature	C
2684	ZER	103	3	\N	\N	\N	\N	\N	\N	Ghastly Gloomhunter	Creature	C
2686	ZER	105	4	\N	\N	\N	\N	\N	\N	Hagra Constrictor	Creature	C
2691	ZER	110	4	\N	\N	\N	\N	\N	\N	Malakir Blood-Priest	Creature	C
2693	ZER	112	3	\N	\N	\N	\N	\N	\N	Marauding Blight-Priest	Creature	C
2699	ZER	118	0	\N	\N	\N	\N	\N	\N	Nullpriest of Oblivion	Creature	R
2703	ZER	122	0	\N	\N	\N	\N	\N	\N	Scourge of the Skyclaves	Creature	M
2707	ZER	126	1	\N	\N	\N	\N	\N	\N	Skyclave Shadowcat	Creature	U
2708	ZER	127	0	\N	\N	\N	\N	\N	\N	Soul Shatter	Instant	R
2711	ZER	130	2	\N	\N	\N	\N	\N	\N	Thwart the Grave	Sorcery	U
2713	ZER	132	2	\N	\N	\N	\N	\N	\N	Zof Consumption // Zof Bloodbog	Sorcery // Land	U
2715	ZER	134	4	\N	\N	\N	\N	\N	\N	Akoum Warrior // Akoum Teeth	Creature	U
2717	ZER	136	1	\N	\N	\N	\N	\N	\N	Cinderclasm	Instant	U
2718	ZER	137	3	\N	\N	\N	\N	\N	\N	Cleansing Wildfire	Sorcery	C
2720	ZER	139	2	\N	\N	\N	\N	\N	\N	Fireblade Charger	Creature	U
2722	ZER	141	3	\N	\N	\N	\N	\N	\N	Goma Fada Vanguard	Creature	U
2724	ZER	143	2	\N	\N	\N	\N	\N	\N	Grotag Night-Runner	Creature	U
2725	ZER	144	3	\N	\N	\N	\N	\N	\N	Inordinate Rage	Instant	C
2727	ZER	146	3	\N	\N	\N	\N	\N	\N	Kazuul's Fury // Kazuul's Cliffs	Instant // Land	U
2626	ZER	45	3	\N	\N	\N	\N	\N	\N	Anticognition	Instant	C
2628	ZER	47	3	\N	\N	\N	\N	\N	\N	Bubble Snare	Enchantment	C
2629	ZER	48	5	\N	\N	\N	\N	\N	\N	Cascade Seer	Creature	C
2633	ZER	52	1	\N	\N	\N	\N	\N	\N	Concerted Defense	Instant	U
2637	ZER	56	4	\N	\N	\N	\N	\N	\N	Deliberate	Instant	C
2728	ZER	147	0	\N	\N	\N	\N	\N	\N	Leyline Tyrant	Creature	M
2730	ZER	149	4	\N	\N	\N	\N	\N	\N	Molten Blast	Instant	C
2733	ZER	152	4	\N	\N	\N	\N	\N	\N	Pyroclastic Hellion	Creature	C
2735	ZER	154	2	\N	\N	\N	\N	\N	\N	Rockslide Sorcerer	Creature	U
2739	ZER	158	4	\N	\N	\N	\N	\N	\N	Scorch Rider	Creature	C
2740	ZER	159	0	\N	\N	\N	\N	\N	\N	Shatterskull Charger	Creature	R
2743	ZER	162	3	\N	\N	\N	\N	\N	\N	Sizzling Barrage	Instant	C
2745	ZER	164	3	\N	\N	\N	\N	\N	\N	Sneaking Guide	Creature	C
2747	ZER	166	1	\N	\N	\N	\N	\N	\N	Spikefield Hazard // Spikefield Cave	Instant // Land	U
2749	ZER	168	6	\N	\N	\N	\N	\N	\N	Synchronized Spellcraft	Instant	C
2751	ZER	170	1	\N	\N	\N	\N	\N	\N	Thundering Rebuke	Sorcery	U
2753	ZER	172	4	\N	\N	\N	\N	\N	\N	Tormenting Voice	Sorcery	C
2758	ZER	177	3	\N	\N	\N	\N	\N	\N	Adventure Awaits	Sorcery	C
2775	ZER	194	5	\N	\N	\N	\N	\N	\N	Might of Murasa	Instant	C
2776	ZER	195	6	\N	\N	\N	\N	\N	\N	Murasa Brute	Creature	C
2781	ZER	200	3	\N	\N	\N	\N	\N	\N	Reclaim the Wastes	Sorcery	C
2789	ZER	208	3	\N	\N	\N	\N	\N	\N	Tajuru Blightblade	Creature	C
2814	ZER	233	1	\N	\N	\N	\N	\N	\N	Orah, Skyclave Hierophant	Lgd. Creature	R
2821	ZER	240	0	\N	\N	\N	\N	\N	\N	Yasharn, Implacable Earth	Lgd. Creature	R
2823	ZER	242	1	\N	\N	\N	\N	\N	\N	Zareth San, the Trickster	Lgd. Creature	R
2825	ZER	244	0	\N	\N	\N	\N	\N	\N	Forsaken Monument	Lgd. Artifact	M
2828	ZER	247	2	\N	\N	\N	\N	\N	\N	Relic Amulet	Artifact	U
2830	ZER	249	1	\N	\N	\N	\N	\N	\N	Relic Golem	Artifact Creature	U
2831	ZER	250	3	\N	\N	\N	\N	\N	\N	Relic Vial	Artifact	U
2836	ZER	255	4	\N	\N	\N	\N	\N	\N	Stonework Packbeast	Artifact Creature	C
2838	ZER	257	2	\N	\N	\N	\N	\N	\N	Base Camp	Land	U
2840	ZER	259	0	\N	\N	\N	\N	\N	\N	Brightclimb Pathway // Grimclimb Pathway	Land // Land	R
2843	ZER	262	1	\N	\N	\N	\N	\N	\N	Crawling Barrens	Land	R
2845	ZER	264	0	\N	\N	\N	\N	\N	\N	Riverglide Pathway // Lavaglide Pathway	Land // Land	R
2847	ZER	266	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
2437	OAT	40	4	\N	\N	\N	\N	\N	\N	Abstruse Interference	Instant	C
2480	OAT	83	6	\N	\N	\N	\N	\N	\N	Corpse Churn	Instant	C
2528	OAT	131	1	\N	\N	\N	\N	\N	\N	Embodiment of Insight	Creature	U
2533	OAT	136	6	\N	\N	\N	\N	\N	\N	Natural State	Instant	C
2537	OAT	140	1	\N	\N	\N	\N	\N	\N	Oath of Nissa	Lgd. Enchantment	R
2543	OAT	146	3	\N	\N	\N	\N	\N	\N	Vines of the Recluse	Instant	C
2564	OAT	167	2	\N	\N	\N	\N	\N	\N	Strider Harness	Artifact	U
2567	OAT	170	5	\N	\N	\N	\N	\N	\N	Crumbling Vestige	Land	C
2576	OAT	179	2	\N	\N	\N	\N	\N	\N	Timber Gorge	Land	U
2578	OAT	181	5	\N	\N	\N	\N	\N	\N	Unknown Shores	Land	C
3063	KAL	202	4	\N	\N	\N	\N	\N	\N	Consulate Skygate	Artifact Creature	C
3072	KAL	211	1	\N	\N	\N	\N	\N	\N	Fabrication Module	Artifact	U
3093	KAL	232	4	\N	\N	\N	\N	\N	\N	Self-Assembler	Artifact Creature	C
3139	DOM	4	3	\N	\N	\N	\N	\N	\N	Baird, Steward of Argive	Lgd. Creature	U
2688	ZER	107	3	\N	\N	\N	\N	\N	\N	Highborn Vampire	Creature	C
2762	ZER	181	4	\N	\N	\N	\N	\N	\N	Broken Wings	Instant	C
2763	ZER	182	2	\N	\N	\N	\N	\N	\N	Canopy Baloth	Creature	C
2765	ZER	184	4	\N	\N	\N	\N	\N	\N	Dauntless Survivor	Creature	C
2767	ZER	186	1	\N	\N	\N	\N	\N	\N	Inscription of Abundance	Instant	R
2769	ZER	188	3	\N	\N	\N	\N	\N	\N	Joraga Visionary	Creature	C
2771	ZER	190	3	\N	\N	\N	\N	\N	\N	Kazandu Nectarpot	Creature	C
2774	ZER	193	1	\N	\N	\N	\N	\N	\N	Lotus Cobra	Creature	R
2778	ZER	197	4	\N	\N	\N	\N	\N	\N	Nissa's Zendikon	Enchantment	C
2780	ZER	199	3	\N	\N	\N	\N	\N	\N	Rabid Bite	Sorcery	C
2783	ZER	202	3	\N	\N	\N	\N	\N	\N	Scale the Heights	Sorcery	C
2787	ZER	206	3	\N	\N	\N	\N	\N	\N	Strength of Solidarity	Sorcery	C
2790	ZER	209	1	\N	\N	\N	\N	\N	\N	Tajuru Paragon	Creature	R
2792	ZER	211	1	\N	\N	\N	\N	\N	\N	Tangled Florahedron // Tangled Vale	Creature	U
2794	ZER	213	2	\N	\N	\N	\N	\N	\N	Territorial Scythecat	Creature	C
2797	ZER	216	2	\N	\N	\N	\N	\N	\N	Vastwood Fortification // Vastwood Thicket	Instant // Land	U
2799	ZER	218	2	\N	\N	\N	\N	\N	\N	Veteran Adventurer	Creature	U
2802	ZER	221	1	\N	\N	\N	\N	\N	\N	Brushfire Elemental	Creature	U
2804	ZER	223	1	\N	\N	\N	\N	\N	\N	Grakmaw, Skyclave Ravager	Lgd. Creature	R
2808	ZER	227	2	\N	\N	\N	\N	\N	\N	Lullmage's Familiar	Creature	U
2809	ZER	228	1	\N	\N	\N	\N	\N	\N	Moss-Pit Skeleton	Creature	U
2816	ZER	235	1	\N	\N	\N	\N	\N	\N	Ravager's Mace	Artifact	U
2819	ZER	238	1	\N	\N	\N	\N	\N	\N	Umara Mystic	Creature	U
2832	ZER	251	4	\N	\N	\N	\N	\N	\N	Sea Gate Colossus	Artifact Creature	C
2834	ZER	253	5	\N	\N	\N	\N	\N	\N	Skyclave Sentinel	Artifact Creature	C
2848	ZER	267	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
2849	ZER	268	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
2850	ZER	269	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
2852	ZER	271	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
2853	ZER	272	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
2855	ZER	274	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
2857	ZER	276	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
2858	ZER	277	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
2860	ZER	279	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
2861	ZER	280	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
4139	BFZ	176	2	\N	\N	\N	\N	\N	\N	Jaddi Offshoot	Creature	U
4153	BFZ	190	4	\N	\N	\N	\N	\N	\N	Snapping Gnarlid	Creature	C
4155	BFZ	192	1	\N	\N	\N	\N	\N	\N	Sylvan Scrying	Sorcery	U
4195	BFZ	232	1	\N	\N	\N	\N	\N	\N	Blighted Steppe	Land	U
4206	BFZ	243	4	\N	\N	\N	\N	\N	\N	Sandstone Bridge	Land	C
2449	OAT	52	2	\N	\N	\N	\N	\N	\N	Containment Membrane	Enchantment	C
2451	OAT	54	2	\N	\N	\N	\N	\N	\N	Cyclone Sire	Creature	U
2563	OAT	166	1	\N	\N	\N	\N	\N	\N	Stoneforge Masterwork	Artifact	R
2906	KAL	45	2	\N	\N	\N	\N	\N	\N	Era of Innovation	Enchantment	U
2908	KAL	47	4	\N	\N	\N	\N	\N	\N	Failed Inspection	Instant	C
2910	KAL	49	1	\N	\N	\N	\N	\N	\N	Glimmer of Genius	Instant	U
2915	KAL	54	1	\N	\N	\N	\N	\N	\N	Long-Finned Skywhale	Creature	U
2918	KAL	57	1	\N	\N	\N	\N	\N	\N	Minister of Inquiries	Creature	U
2923	KAL	62	0	\N	\N	\N	\N	\N	\N	Saheeli's Artistry	Sorcery	R
2926	KAL	65	3	\N	\N	\N	\N	\N	\N	Tezzeret's Ambition	Sorcery	C
2927	KAL	66	3	\N	\N	\N	\N	\N	\N	Thriving Turtle	Creature	C
2969	KAL	108	4	\N	\N	\N	\N	\N	\N	Built to Smash	Instant	C
2977	KAL	116	2	\N	\N	\N	\N	\N	\N	Giant Spectacle	Enchantment	C
2979	KAL	118	4	\N	\N	\N	\N	\N	\N	Hijack	Sorcery	C
2984	KAL	123	2	\N	\N	\N	\N	\N	\N	Maulfist Doorbuster	Creature	U
2987	KAL	126	4	\N	\N	\N	\N	\N	\N	Reckless Fireweaver	Creature	C
2989	KAL	128	4	\N	\N	\N	\N	\N	\N	Ruinous Gremlin	Creature	C
2990	KAL	129	5	\N	\N	\N	\N	\N	\N	Salivating Gremlins	Creature	C
2993	KAL	132	2	\N	\N	\N	\N	\N	\N	Speedway Fanatic	Creature	U
2995	KAL	134	3	\N	\N	\N	\N	\N	\N	Spontaneous Artist	Creature	C
2998	KAL	137	4	\N	\N	\N	\N	\N	\N	Terror of the Fairgrounds	Creature	C
3000	KAL	139	4	\N	\N	\N	\N	\N	\N	Wayward Giant	Creature	C
3001	KAL	140	4	\N	\N	\N	\N	\N	\N	Welding Sparks	Instant	C
3005	KAL	144	1	\N	\N	\N	\N	\N	\N	Armorcraft Judge	Creature	U
3010	KAL	149	3	\N	\N	\N	\N	\N	\N	Cowl Prowler	Creature	C
3011	KAL	150	1	\N	\N	\N	\N	\N	\N	Creeping Mold	Sorcery	U
3015	KAL	154	1	\N	\N	\N	\N	\N	\N	Elegant Edgecrafters	Creature	U
3017	KAL	156	2	\N	\N	\N	\N	\N	\N	Ghirapur Guide	Creature	U
3018	KAL	157	4	\N	\N	\N	\N	\N	\N	Highspire Artisan	Creature	C
3021	KAL	160	3	\N	\N	\N	\N	\N	\N	Larger Than Life	Sorcery	C
3025	KAL	164	3	\N	\N	\N	\N	\N	\N	Ornamental Courage	Instant	C
3029	KAL	168	3	\N	\N	\N	\N	\N	\N	Sage of Shaila's Claim	Creature	C
3031	KAL	170	4	\N	\N	\N	\N	\N	\N	Take Down	Sorcery	C
3036	KAL	175	3	\N	\N	\N	\N	\N	\N	Wily Bandar	Creature	C
3083	KAL	222	0	\N	\N	\N	\N	\N	\N	Metalwork Colossus	Artifact Creature	R
3095	KAL	234	0	\N	\N	\N	\N	\N	\N	Skysovereign, Consul Flagship	Lgd. Artifact	M
3106	KAL	245	0	\N	\N	\N	\N	\N	\N	Concealed Courtyard	Land	R
3111	KAL	250	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
3112	KAL	251	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
3116	KAL	255	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
3120	KAL	259	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
3122	KAL	261	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
3123	KAL	262	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
3125	KAL	264	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
3127	KAL	266	0	\N	\N	\N	\N	\N	\N	Flame Lash	Instant	C
3128	KAL	267	0	\N	\N	\N	\N	\N	\N	Liberating Combustion	Sorcery	R
3130	KAL	269	0	\N	\N	\N	\N	\N	\N	Stone Quarry	Land	C
3132	KAL	271	0	\N	\N	\N	\N	\N	\N	Guardian of the Great Conduit	Creature	U
3134	KAL	273	0	\N	\N	\N	\N	\N	\N	Verdant Crescendo	Sorcery	R
3135	KAL	274	0	\N	\N	\N	\N	\N	\N	Woodland Stream	Land	C
27829	RAV	1	0	t	\N	\N	\N	\N	\N	Auratouched Mage	Creature	U
27839	DKA	18	0	t	\N	\N	\N	\N	\N	Requiem Angel	Creature	R
1519	AMO	136	1	\N	\N	\N	\N	\N	\N	Hazoret the Fervent	Lgd. Creature	M
1619	AMO	236	2	\N	\N	\N	\N	\N	\N	Rhonas's Monument	Lgd. Artifact	U
4127	BFZ	164	1	\N	\N	\N	\N	\N	\N	Brood Monitor	Creature	U
4128	BFZ	165	4	\N	\N	\N	\N	\N	\N	Call the Scions	Sorcery	C
4131	BFZ	168	4	\N	\N	\N	\N	\N	\N	Unnatural Aggression	Instant	C
4135	BFZ	172	3	\N	\N	\N	\N	\N	\N	Earthen Arms	Sorcery	C
4136	BFZ	173	4	\N	\N	\N	\N	\N	\N	Giant Mantis	Creature	C
4140	BFZ	177	5	\N	\N	\N	\N	\N	\N	Lifespring Druid	Creature	C
4142	BFZ	179	3	\N	\N	\N	\N	\N	\N	Natural Connection	Instant	C
4147	BFZ	184	3	\N	\N	\N	\N	\N	\N	Plummet	Instant	C
4149	BFZ	186	2	\N	\N	\N	\N	\N	\N	Retreat to Kazandu	Enchantment	U
4150	BFZ	187	4	\N	\N	\N	\N	\N	\N	Rot Shambler	Creature	U
4156	BFZ	193	2	\N	\N	\N	\N	\N	\N	Tajuru Beastmaster	Creature	C
4158	BFZ	195	1	\N	\N	\N	\N	\N	\N	Tajuru Warcaller	Creature	U
4159	BFZ	196	3	\N	\N	\N	\N	\N	\N	Territorial Baloth	Creature	C
2880	KAL	19	4	\N	\N	\N	\N	\N	\N	Impeccable Timing	Instant	C
2905	KAL	44	4	\N	\N	\N	\N	\N	\N	Dramatic Reversal	Instant	C
2909	KAL	48	4	\N	\N	\N	\N	\N	\N	Gearseeker Serpent	Creature	C
2912	KAL	51	4	\N	\N	\N	\N	\N	\N	Hightide Hermit	Creature	C
2916	KAL	55	3	\N	\N	\N	\N	\N	\N	Malfunction	Enchantment	C
2919	KAL	58	3	\N	\N	\N	\N	\N	\N	Nimble Innovator	Creature	C
2922	KAL	61	3	\N	\N	\N	\N	\N	\N	Revolutionary Rebuff	Instant	C
3181	DOM	46	3	\N	\N	\N	\N	\N	\N	Blink of an Eye	Instant	C
3183	DOM	48	4	\N	\N	\N	\N	\N	\N	Cold-Water Snapper	Creature	C
3185	DOM	50	4	\N	\N	\N	\N	\N	\N	Deep Freeze	Enchantment	C
3186	DOM	51	2	\N	\N	\N	\N	\N	\N	Diligent Excavator	Creature	U
3188	DOM	53	2	\N	\N	\N	\N	\N	\N	Homarid Explorer	Creature	C
3190	DOM	55	1	\N	\N	\N	\N	\N	\N	Karn's Temporal Sundering	Lgd. Sorcery	R
3193	DOM	58	1	\N	\N	\N	\N	\N	\N	Naban, Dean of Iteration	Lgd. Creature	R
3195	DOM	60	3	\N	\N	\N	\N	\N	\N	Opt	Instant	C
3197	DOM	62	2	\N	\N	\N	\N	\N	\N	Relic Runner	Creature	C
3198	DOM	63	4	\N	\N	\N	\N	\N	\N	Rescue	Instant	C
3200	DOM	65	1	\N	\N	\N	\N	\N	\N	Sentinel of the Pearl Trident	Creature	U
3202	DOM	67	4	\N	\N	\N	\N	\N	\N	Syncopate	Instant	C
3203	DOM	68	0	\N	\N	\N	\N	\N	\N	Tempest Djinn	Creature	R
3205	DOM	70	2	\N	\N	\N	\N	\N	\N	Time of Ice	Enchantment	U
3207	DOM	72	4	\N	\N	\N	\N	\N	\N	Unwind	Instant	C
3208	DOM	73	4	\N	\N	\N	\N	\N	\N	Vodalian Arcanist	Creature	C
3211	DOM	76	0	\N	\N	\N	\N	\N	\N	Zahid, Djinn of the Lamp	Lgd. Creature	R
3216	DOM	81	1	\N	\N	\N	\N	\N	\N	Cast Down	Instant	U
3218	DOM	83	4	\N	\N	\N	\N	\N	\N	Dark Bargain	Instant	C
3221	DOM	86	0	\N	\N	\N	\N	\N	\N	Demonlord Belzenlok	Lgd. Creature	M
3223	DOM	88	2	\N	\N	\N	\N	\N	\N	Dread Shade	Creature	R
3227	DOM	92	2	\N	\N	\N	\N	\N	\N	Feral Abomination	Creature	C
3228	DOM	93	1	\N	\N	\N	\N	\N	\N	Final Parting	Sorcery	U
3230	DOM	95	1	\N	\N	\N	\N	\N	\N	Josu Vess, Lich Knight	Lgd. Creature	R
3278	DOM	143	0	\N	\N	\N	\N	\N	\N	Siege-Gang Commander	Creature	R
383	IN4	139	4	\N	\N	\N	\N	\N	\N	Prophetic Ravings	Enchantment	C
395	IN4	151	4	\N	\N	\N	\N	\N	\N	Bloodbriar	Creature	C
2928	KAL	67	0	\N	\N	\N	\N	\N	\N	Torrential Gearhulk	Artifact Creature	M
2930	KAL	69	4	\N	\N	\N	\N	\N	\N	Weldfast Wingsmith	Creature	C
2931	KAL	70	3	\N	\N	\N	\N	\N	\N	Wind Drake	Creature	C
2943	KAL	82	4	\N	\N	\N	\N	\N	\N	Foundry Screecher	Creature	C
2946	KAL	85	1	\N	\N	\N	\N	\N	\N	Harsh Scrutiny	Sorcery	U
2954	KAL	93	3	\N	\N	\N	\N	\N	\N	Mind Rot	Sorcery	C
2963	KAL	102	4	\N	\N	\N	\N	\N	\N	Thriving Rats	Creature	C
2985	KAL	124	2	\N	\N	\N	\N	\N	\N	Pia Nalaar	Lgd. Creature	R
2997	KAL	136	1	\N	\N	\N	\N	\N	\N	Territorial Gorger	Creature	R
3006	KAL	145	4	\N	\N	\N	\N	\N	\N	Attune with Aether	Sorcery	C
3012	KAL	151	1	\N	\N	\N	\N	\N	\N	Cultivator of Blades	Creature	R
3020	KAL	159	3	\N	\N	\N	\N	\N	\N	Kujar Seedsculptor	Creature	C
3022	KAL	161	3	\N	\N	\N	\N	\N	\N	Longtusk Cub	Creature	U
3026	KAL	165	4	\N	\N	\N	\N	\N	\N	Oviya Pashiri, Sage Lifecrafter	Lgd. Creature	R
3032	KAL	171	4	\N	\N	\N	\N	\N	\N	Thriving Rhino	Creature	C
3037	KAL	176	1	\N	\N	\N	\N	\N	\N	Cloudblazer	Creature	U
3038	KAL	177	1	\N	\N	\N	\N	\N	\N	Contraband Kingpin	Creature	U
3040	KAL	179	1	\N	\N	\N	\N	\N	\N	Dovin Baan	Lgd. Planeswalker	M
3042	KAL	181	1	\N	\N	\N	\N	\N	\N	Engineered Might	Sorcery	U
3046	KAL	185	1	\N	\N	\N	\N	\N	\N	Restoration Gearsmith	Creature	U
3049	KAL	188	1	\N	\N	\N	\N	\N	\N	Veteran Motorist	Creature	U
3050	KAL	189	2	\N	\N	\N	\N	\N	\N	Voltaic Brawler	Creature	U
3053	KAL	192	1	\N	\N	\N	\N	\N	\N	Aetherflux Reservoir	Artifact	R
3057	KAL	196	1	\N	\N	\N	\N	\N	\N	Ballista Charger	Artifact	U
3062	KAL	201	3	\N	\N	\N	\N	\N	\N	Cogworker's Puzzleknot	Artifact	C
3067	KAL	206	1	\N	\N	\N	\N	\N	\N	Demolition Stomper	Artifact	U
3073	KAL	212	1	\N	\N	\N	\N	\N	\N	Filigree Familiar	Artifact Creature	U
3080	KAL	219	1	\N	\N	\N	\N	\N	\N	Iron League Steed	Artifact Creature	U
3085	KAL	224	3	\N	\N	\N	\N	\N	\N	Narnam Cobra	Artifact Creature	C
3088	KAL	227	2	\N	\N	\N	\N	\N	\N	Perpetual Timepiece	Artifact	U
3090	KAL	229	3	\N	\N	\N	\N	\N	\N	Prophetic Prism	Artifact	C
3092	KAL	231	1	\N	\N	\N	\N	\N	\N	Scrapheap Scrounger	Artifact Creature	R
3094	KAL	233	5	\N	\N	\N	\N	\N	\N	Sky Skiff	Artifact	C
3098	KAL	237	3	\N	\N	\N	\N	\N	\N	Torch Gauntlet	Artifact	C
3103	KAL	242	1	\N	\N	\N	\N	\N	\N	Aether Hub	Land	U
3104	KAL	243	2	\N	\N	\N	\N	\N	\N	Blooming Marsh	Land	R
3109	KAL	248	2	\N	\N	\N	\N	\N	\N	Sequestered Stash	Land	U
3115	KAL	254	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
3117	KAL	256	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
3119	KAL	258	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
4130	BFZ	167	3	\N	\N	\N	\N	\N	\N	From Beyond	Enchantment	R
4200	BFZ	237	4	\N	\N	\N	\N	\N	\N	Fertile Thicket	Land	C
3239	DOM	104	4	\N	\N	\N	\N	\N	\N	Soul Salvage	Sorcery	C
3240	DOM	105	3	\N	\N	\N	\N	\N	\N	Stronghold Confessor	Creature	C
3242	DOM	107	1	\N	\N	\N	\N	\N	\N	Thallid Soothsayer	Creature	U
3244	DOM	109	2	\N	\N	\N	\N	\N	\N	Urgoros, the Empty One	Lgd. Creature	U
3246	DOM	111	1	\N	\N	\N	\N	\N	\N	Whisper, Blood Liturgist	Lgd. Creature	U
3250	DOM	115	4	\N	\N	\N	\N	\N	\N	Bloodstone Goblin	Creature	C
3252	DOM	117	2	\N	\N	\N	\N	\N	\N	Fervent Strike	Instant	C
3253	DOM	118	4	\N	\N	\N	\N	\N	\N	Fiery Intervention	Sorcery	C
3255	DOM	120	3	\N	\N	\N	\N	\N	\N	Fire Elemental	Creature	C
3258	DOM	123	2	\N	\N	\N	\N	\N	\N	The Flame of Keld	Enchantment	U
3260	DOM	125	4	\N	\N	\N	\N	\N	\N	Ghitu Chronicler	Creature	C
3261	DOM	126	4	\N	\N	\N	\N	\N	\N	Ghitu Journeymage	Creature	C
3263	DOM	128	1	\N	\N	\N	\N	\N	\N	Goblin Barrage	Sorcery	U
3267	DOM	132	1	\N	\N	\N	\N	\N	\N	Jaya Ballard	Lgd. Planeswalker	M
3270	DOM	135	3	\N	\N	\N	\N	\N	\N	Keldon Raider	Creature	C
3271	DOM	136	4	\N	\N	\N	\N	\N	\N	Keldon Warcaller	Creature	C
3273	DOM	138	4	\N	\N	\N	\N	\N	\N	Radiating Lightning	Instant	C
3275	DOM	140	3	\N	\N	\N	\N	\N	\N	Run Amok	Instant	C
27849	BOK	19	0	t	\N	\N	\N	\N	\N	Patron of the Kitsune	Lgd. Creature	R
3277	DOM	142	4	\N	\N	\N	\N	\N	\N	Shivan Fire	Instant	C
3280	DOM	145	1	\N	\N	\N	\N	\N	\N	Skizzik	Creature	U
3282	DOM	147	0	\N	\N	\N	\N	\N	\N	Two-Headed Giant	Creature	R
3284	DOM	149	1	\N	\N	\N	\N	\N	\N	Verix Bladewing	Lgd. Creature	M
3285	DOM	150	1	\N	\N	\N	\N	\N	\N	Warcry Phoenix	Creature	U
3287	DOM	152	2	\N	\N	\N	\N	\N	\N	Wizard's Lightning	Instant	U
3289	DOM	154	3	\N	\N	\N	\N	\N	\N	Ancient Animus	Instant	C
3290	DOM	155	3	\N	\N	\N	\N	\N	\N	Arbor Armament	Instant	C
3292	DOM	157	3	\N	\N	\N	\N	\N	\N	Broken Bond	Sorcery	C
3294	DOM	159	0	\N	\N	\N	\N	\N	\N	Elfhame Druid	Creature	U
3296	DOM	161	2	\N	\N	\N	\N	\N	\N	Gaea's Blessing	Sorcery	U
3297	DOM	162	3	\N	\N	\N	\N	\N	\N	Gaea's Protector	Creature	C
3299	DOM	164	4	\N	\N	\N	\N	\N	\N	Grow from the Ashes	Sorcery	C
3301	DOM	166	1	\N	\N	\N	\N	\N	\N	Kamahl's Druidic Vow	Lgd. Sorcery	R
3303	DOM	168	3	\N	\N	\N	\N	\N	\N	Llanowar Elves	Creature	C
3304	DOM	169	4	\N	\N	\N	\N	\N	\N	Llanowar Envoy	Creature	C
3306	DOM	171	5	\N	\N	\N	\N	\N	\N	Mammoth Spider	Creature	C
3308	DOM	173	1	\N	\N	\N	\N	\N	\N	The Mending of Dominaria	Enchantment	R
3310	DOM	175	1	\N	\N	\N	\N	\N	\N	Nature's Spiral	Sorcery	U
3312	DOM	177	4	\N	\N	\N	\N	\N	\N	Primordial Wurm	Creature	C
3313	DOM	178	4	\N	\N	\N	\N	\N	\N	Saproling Migration	Sorcery	C
3315	DOM	180	1	\N	\N	\N	\N	\N	\N	Spore Swarm	Instant	U
3317	DOM	182	1	\N	\N	\N	\N	\N	\N	Steel Leaf Champion	Creature	R
3318	DOM	183	1	\N	\N	\N	\N	\N	\N	Sylvan Awakening	Sorcery	R
3320	DOM	185	1	\N	\N	\N	\N	\N	\N	Thorn Elemental	Creature	U
3322	DOM	187	0	\N	\N	\N	\N	\N	\N	Verdant Force	Creature	R
3324	DOM	189	3	\N	\N	\N	\N	\N	\N	Yavimaya Sapherd	Creature	C
3326	DOM	191	2	\N	\N	\N	\N	\N	\N	Arvad the Cursed	Lgd. Creature	U
3328	DOM	193	0	\N	\N	\N	\N	\N	\N	Darigaaz Reincarnated	Lgd. Creature	M
3329	DOM	194	0	\N	\N	\N	\N	\N	\N	Garna, the Bloodflame	Lgd. Creature	U
3333	DOM	198	1	\N	\N	\N	\N	\N	\N	Jodah, Archmage Eternal	Lgd. Creature	R
3334	DOM	199	0	\N	\N	\N	\N	\N	\N	Muldrotha, the Gravetide	Lgd. Creature	M
3337	DOM	202	1	\N	\N	\N	\N	\N	\N	Raff Capashen, Ship's Mage	Lgd. Creature	U
3338	DOM	203	1	\N	\N	\N	\N	\N	\N	Rona, Disciple of Gix	Lgd. Creature	U
3340	DOM	205	1	\N	\N	\N	\N	\N	\N	Slimefoot, the Stowaway	Lgd. Creature	U
3342	DOM	207	0	\N	\N	\N	\N	\N	\N	Teferi, Hero of Dominaria	Lgd. Planeswalker	M
3344	DOM	209	3	\N	\N	\N	\N	\N	\N	Aesthir Glider	Artifact Creature	C
3346	DOM	211	1	\N	\N	\N	\N	\N	\N	Blackblade Reforged	Lgd. Artifact	R
3348	DOM	213	1	\N	\N	\N	\N	\N	\N	Damping Sphere	Artifact	U
3350	DOM	215	0	\N	\N	\N	\N	\N	\N	Gilded Lotus	Artifact	R
3352	DOM	217	1	\N	\N	\N	\N	\N	\N	Helm of the Host	Lgd. Artifact	R
3353	DOM	218	1	\N	\N	\N	\N	\N	\N	Howling Golem	Artifact Creature	U
3355	DOM	220	2	\N	\N	\N	\N	\N	\N	Jhoira's Familiar	Artifact Creature	U
3357	DOM	222	1	\N	\N	\N	\N	\N	\N	Juggernaut	Artifact Creature	U
3359	DOM	224	0	\N	\N	\N	\N	\N	\N	Mox Amber	Lgd. Artifact	M
3361	DOM	226	4	\N	\N	\N	\N	\N	\N	Pardic Wanderer	Artifact Creature	C
3363	DOM	228	2	\N	\N	\N	\N	\N	\N	Shield of the Realm	Artifact	U
3364	DOM	229	4	\N	\N	\N	\N	\N	\N	Short Sword	Artifact	C
3366	DOM	231	1	\N	\N	\N	\N	\N	\N	Sorcerer's Wand	Artifact	U
3368	DOM	233	1	\N	\N	\N	\N	\N	\N	Thran Temporal Gateway	Lgd. Artifact	R
3370	DOM	235	2	\N	\N	\N	\N	\N	\N	Urza's Tome	Artifact	U
3371	DOM	236	3	\N	\N	\N	\N	\N	\N	Voltaic Servant	Artifact Creature	C
3373	DOM	238	0	\N	\N	\N	\N	\N	\N	Cabal Stronghold	Land	R
3374	DOM	239	0	\N	\N	\N	\N	\N	\N	Clifftop Retreat	Land	R
3376	DOM	241	1	\N	\N	\N	\N	\N	\N	Isolated Chapel	Land	R
3379	DOM	244	1	\N	\N	\N	\N	\N	\N	Memorial to Glory	Land	U
3381	DOM	246	2	\N	\N	\N	\N	\N	\N	Memorial to War	Land	U
3382	DOM	247	0	\N	\N	\N	\N	\N	\N	Sulfur Falls	Land	R
3384	DOM	249	2	\N	\N	\N	\N	\N	\N	Zhalfirin Void	Land	U
3399	DOM	264	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
3406	DOM	271	0	\N	\N	\N	\N	\N	\N	Temporal Machinations	Sorcery	C
3408	DOM	273	0	\N	\N	\N	\N	\N	\N	Teferi's Sentinel	Artifact Creature	U
3409	DOM	274	0	\N	\N	\N	\N	\N	\N	Meandering River	Land	C
3411	DOM	276	0	\N	\N	\N	\N	\N	\N	Chandra's Outburst	Sorcery	R
3413	DOM	278	0	\N	\N	\N	\N	\N	\N	Pyromantic Pilgrim	Creature	C
3414	DOM	279	0	\N	\N	\N	\N	\N	\N	Timber Gorge	Land	C
4376	WOS	139	4	\N	\N	\N	\N	\N	\N	Nahiri's Stoneblades	Instant	C
2297	NPH	75	1	\N	\N	\N	\N	\N	\N	Toxic Nim	Creature	C
4119	BFZ	156	4	\N	\N	\N	\N	\N	\N	Stonefury	Instant	C
4144	BFZ	181	1	\N	\N	\N	\N	\N	\N	Oran-Rief Hydra	Creature	R
3377	DOM	242	1	\N	\N	\N	\N	\N	\N	Memorial to Folly	Land	U
3387	DOM	252	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
3388	DOM	253	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
3390	DOM	255	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
3391	DOM	256	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
27859	ARB	20	0	\N	t	t	\N	\N	\N	Etherium Abomination	Artifact Creature	C
3393	DOM	258	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
3395	DOM	260	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
3396	DOM	261	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
3398	DOM	263	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
3400	DOM	265	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
3402	DOM	267	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
3404	DOM	269	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
4249	WOS	12	1	\N	\N	\N	\N	\N	\N	Finale of Glory	Sorcery	M
4279	WOS	42	4	\N	\N	\N	\N	\N	\N	Aven Eternal	Creature	C
4281	WOS	44	3	\N	\N	\N	\N	\N	\N	Callous Dismissal	Sorcery	C
4282	WOS	45	0	\N	\N	\N	\N	\N	\N	Commence the Endgame	Instant	R
4284	WOS	47	4	\N	\N	\N	\N	\N	\N	Crush Dissent	Instant	C
4285	WOS	48	3	\N	\N	\N	\N	\N	\N	Erratic Visionary	Creature	C
4287	WOS	50	0	\N	\N	\N	\N	\N	\N	Fblthp, the Lost	Lgd. Creature	R
4289	WOS	52	1	\N	\N	\N	\N	\N	\N	Flux Channeler	Creature	U
2194	MIB	127	1	\N	\N	\N	\N	\N	\N	Razorfield Rhino	Artifact Creature	C
4291	WOS	54	0	\N	\N	\N	\N	\N	\N	Jace, Wielder of Mysteries	Lgd. Planeswalker	R
4294	WOS	57	4	\N	\N	\N	\N	\N	\N	Kasmina's Transmutation	Enchantment	C
4296	WOS	59	1	\N	\N	\N	\N	\N	\N	Lazotep Plating	Instant	U
4297	WOS	60	3	\N	\N	\N	\N	\N	\N	Naga Eternal	Creature	C
4300	WOS	63	3	\N	\N	\N	\N	\N	\N	No Escape	Instant	C
4301	WOS	64	1	\N	\N	\N	\N	\N	\N	Relentless Advance	Sorcery	C
4303	WOS	66	1	\N	\N	\N	\N	\N	\N	Silent Submersible	Artifact	R
4305	WOS	68	1	\N	\N	\N	\N	\N	\N	Spark Double	Creature	R
4307	WOS	70	4	\N	\N	\N	\N	\N	\N	Stealth Mission	Sorcery	C
4308	WOS	71	4	\N	\N	\N	\N	\N	\N	Tamiyo's Epiphany	Sorcery	C
4310	WOS	73	3	\N	\N	\N	\N	\N	\N	Thunder Drake	Creature	C
4312	WOS	75	4	\N	\N	\N	\N	\N	\N	Wall of Runes	Creature	C
4314	WOS	77	3	\N	\N	\N	\N	\N	\N	Banehound	Creature	C
4315	WOS	78	1	\N	\N	\N	\N	\N	\N	Bleeding Edge	Sorcery	U
4317	WOS	80	1	\N	\N	\N	\N	\N	\N	Bond of Revival	Sorcery	U
4318	WOS	81	4	\N	\N	\N	\N	\N	\N	Charity Extractor	Creature	C
4321	WOS	84	4	\N	\N	\N	\N	\N	\N	Davriel's Shadowfugue	Sorcery	C
4322	WOS	85	1	\N	\N	\N	\N	\N	\N	Deliver Unto Evil	Sorcery	R
4324	WOS	87	2	\N	\N	\N	\N	\N	\N	Dreadmalkin	Creature	U
4325	WOS	88	4	\N	\N	\N	\N	\N	\N	Duskmantle Operative	Creature	C
4327	WOS	90	3	\N	\N	\N	\N	\N	\N	Eternal Taskmaster	Creature	U
4329	WOS	92	0	\N	\N	\N	\N	\N	\N	God-Eternal Bontu	Lgd. Creature	M
4331	WOS	94	3	\N	\N	\N	\N	\N	\N	Kaya's Ghostform	Enchantment	C
4332	WOS	95	4	\N	\N	\N	\N	\N	\N	Lazotep Behemoth	Creature	C
4335	WOS	98	1	\N	\N	\N	\N	\N	\N	Liliana's Triumph	Instant	U
4336	WOS	99	0	\N	\N	\N	\N	\N	\N	Massacre Girl	Lgd. Creature	R
4339	WOS	102	1	\N	\N	\N	\N	\N	\N	Price of Betrayal	Sorcery	U
4340	WOS	103	3	\N	\N	\N	\N	\N	\N	Shriekdiver	Creature	C
4342	WOS	105	4	\N	\N	\N	\N	\N	\N	Spark Harvest	Sorcery	C
4343	WOS	106	4	\N	\N	\N	\N	\N	\N	Spark Reaper	Creature	C
4345	WOS	108	4	\N	\N	\N	\N	\N	\N	Toll of the Invasion	Sorcery	C
4347	WOS	110	3	\N	\N	\N	\N	\N	\N	Vampire Opportunist	Creature	C
4349	WOS	112	3	\N	\N	\N	\N	\N	\N	Vraska's Finisher	Creature	C
4350	WOS	113	5	\N	\N	\N	\N	\N	\N	Ahn-Crop Invader	Creature	C
4352	WOS	115	1	\N	\N	\N	\N	\N	\N	Bolt Bend	Instant	U
4354	WOS	117	4	\N	\N	\N	\N	\N	\N	Burning Prophet	Creature	C
4356	WOS	119	1	\N	\N	\N	\N	\N	\N	Chandra, Fire Artisan	Lgd. Planeswalker	R
4358	WOS	121	2	\N	\N	\N	\N	\N	\N	Chandra's Triumph	Instant	U
4360	WOS	123	2	\N	\N	\N	\N	\N	\N	Demolish	Sorcery	C
4361	WOS	124	1	\N	\N	\N	\N	\N	\N	Devouring Hellion	Creature	U
4364	WOS	127	0	\N	\N	\N	\N	\N	\N	Finale of Promise	Sorcery	M
4365	WOS	128	4	\N	\N	\N	\N	\N	\N	Goblin Assailant	Creature	C
4367	WOS	130	4	\N	\N	\N	\N	\N	\N	Grim Initiate	Creature	C
4369	WOS	132	3	\N	\N	\N	\N	\N	\N	Honor the God-Pharaoh	Sorcery	C
4371	WOS	134	4	\N	\N	\N	\N	\N	\N	Invading Manticore	Creature	C
4373	WOS	136	4	\N	\N	\N	\N	\N	\N	Jaya's Greeting	Instant	C
4375	WOS	138	1	\N	\N	\N	\N	\N	\N	Mizzium Tank	Artifact	R
4377	WOS	140	0	\N	\N	\N	\N	\N	\N	Neheb, Dreadhorde Champion	Lgd. Creature	R
4379	WOS	142	3	\N	\N	\N	\N	\N	\N	Samut's Sprint	Instant	C
4381	WOS	144	3	\N	\N	\N	\N	\N	\N	Sarkhan's Catharsis	Instant	C
4382	WOS	145	3	\N	\N	\N	\N	\N	\N	Spellgorger Weird	Creature	C
4385	WOS	148	4	\N	\N	\N	\N	\N	\N	Turret Ogre	Creature	C
4387	WOS	150	2	\N	\N	\N	\N	\N	\N	Arlinn, Voice of the Pack	Lgd. Planeswalker	U
4389	WOS	152	1	\N	\N	\N	\N	\N	\N	Awakening of Vitu-Ghazi	Instant	R
4391	WOS	154	4	\N	\N	\N	\N	\N	\N	Bloom Hulk	Creature	C
4392	WOS	155	1	\N	\N	\N	\N	\N	\N	Bond of Flourishing	Sorcery	U
4397	WOS	160	0	\N	\N	\N	\N	\N	\N	Finale of Devastation	Sorcery	M
4403	WOS	166	3	\N	\N	\N	\N	\N	\N	Kronch Wrangler	Creature	C
4408	WOS	171	1	\N	\N	\N	\N	\N	\N	Paradise Druid	Creature	U
4409	WOS	172	0	\N	\N	\N	\N	\N	\N	Planewide Celebration	Sorcery	R
4421	WOS	184	0	\N	\N	\N	\N	\N	\N	Ajani, the Greathearted	Lgd. Planeswalker	R
4431	WOS	194	0	\N	\N	\N	\N	\N	\N	Dreadhorde Butcher	Creature	R
4446	WOS	209	0	\N	\N	\N	\N	\N	\N	Oath of Kaya	Lgd. Enchantment	R
4450	WOS	213	0	\N	\N	\N	\N	\N	\N	Roalesk, Apex Hybrid	Lgd. Creature	M
4455	WOS	218	0	\N	\N	\N	\N	\N	\N	Soul Diviner	Creature	R
4460	WOS	223	0	\N	\N	\N	\N	\N	\N	Time Wipe	Sorcery	R
4470	WOS	233	1	\N	\N	\N	\N	\N	\N	Nahiri, Storm of Stone	Lgd. Planeswalker	U
27861	BOK	20	0	t	\N	\N	\N	\N	\N	Scour	Instant	U
2746	ZER	165	2	\N	\N	\N	\N	\N	\N	Song-Mad Treachery // Song-Mad Ruins	Sorcery // Land	U
2748	ZER	167	2	\N	\N	\N	\N	\N	\N	Spitfire Lagac	Creature	C
2750	ZER	169	3	\N	\N	\N	\N	\N	\N	Teeterpeak Ambusher	Creature	C
2752	ZER	171	1	\N	\N	\N	\N	\N	\N	Thundering Sparkmage	Creature	U
2755	ZER	174	1	\N	\N	\N	\N	\N	\N	Valakut Awakening // Valakut Stoneforge	Instant // Land	R
2756	ZER	175	1	\N	\N	\N	\N	\N	\N	Valakut Exploration	Enchantment	R
2697	ZER	116	5	\N	\N	\N	\N	\N	\N	Nimana Skitter-Sneak	Creature	C
2742	ZER	161	1	\N	\N	\N	\N	\N	\N	Shatterskull Smashing // Shatterskull, the Hammer Pass	Sorcery // Land	M
2744	ZER	163	1	\N	\N	\N	\N	\N	\N	Skyclave Geopede	Creature	U
2759	ZER	178	0	\N	\N	\N	\N	\N	\N	Ancient Greenwarden	Creature	M
2761	ZER	180	1	\N	\N	\N	\N	\N	\N	Bala Ged Recovery // Bala Ged Sanctuary	Sorcery // Land	U
2764	ZER	183	1	\N	\N	\N	\N	\N	\N	Cragplate Baloth	Creature	R
2766	ZER	185	3	\N	\N	\N	\N	\N	\N	Gnarlid Colony	Creature	C
2768	ZER	187	1	\N	\N	\N	\N	\N	\N	Iridescent Hornbeetle	Creature	U
2770	ZER	189	0	\N	\N	\N	\N	\N	\N	Kazandu Mammoth // Kazandu Valley	Creature	R
2772	ZER	191	3	\N	\N	\N	\N	\N	\N	Kazandu Stomper	Creature	C
2773	ZER	192	1	\N	\N	\N	\N	\N	\N	Khalni Ambush // Khalni Territory	Instant // Land	U
3084	KAL	223	2	\N	\N	\N	\N	\N	\N	Multiform Wonder	Artifact Creature	R
4244	WOS	7	4	\N	\N	\N	\N	\N	\N	Bulwark Giant	Creature	C
4259	WOS	22	3	\N	\N	\N	\N	\N	\N	Makeshift Battalion	Creature	C
4268	WOS	31	2	\N	\N	\N	\N	\N	\N	Sunblade Angel	Creature	U
4293	WOS	56	2	\N	\N	\N	\N	\N	\N	Kasmina, Enigmatic Mentor	Lgd. Planeswalker	U
4337	WOS	100	1	\N	\N	\N	\N	\N	\N	Ob Nixilis, the Hate-Twisted	Lgd. Planeswalker	U
4393	WOS	156	3	\N	\N	\N	\N	\N	\N	Centaur Nurturer	Creature	C
4396	WOS	159	1	\N	\N	\N	\N	\N	\N	Evolution Sage	Creature	U
4398	WOS	161	3	\N	\N	\N	\N	\N	\N	Forced Landing	Instant	C
4401	WOS	164	1	\N	\N	\N	\N	\N	\N	Jiang Yanggu, Wildcrafter	Lgd. Planeswalker	U
4405	WOS	168	3	\N	\N	\N	\N	\N	\N	New Horizons	Enchantment	C
4410	WOS	173	4	\N	\N	\N	\N	\N	\N	Pollenbright Druid	Creature	C
4411	WOS	174	4	\N	\N	\N	\N	\N	\N	Primordial Wurm	Creature	C
4413	WOS	176	3	\N	\N	\N	\N	\N	\N	Snarespinner	Creature	C
4414	WOS	177	3	\N	\N	\N	\N	\N	\N	Steady Aim	Instant	C
4417	WOS	180	1	\N	\N	\N	\N	\N	\N	Vivien, Champion of the Wilds	Lgd. Planeswalker	R
4419	WOS	182	3	\N	\N	\N	\N	\N	\N	Vivien's Grizzly	Creature	C
4422	WOS	185	1	\N	\N	\N	\N	\N	\N	Angrath's Rampage	Sorcery	U
4424	WOS	187	2	\N	\N	\N	\N	\N	\N	Casualties of War	Sorcery	R
4426	WOS	189	1	\N	\N	\N	\N	\N	\N	Deathsprout	Instant	U
4427	WOS	190	2	\N	\N	\N	\N	\N	\N	Despark	Instant	U
4429	WOS	192	1	\N	\N	\N	\N	\N	\N	Domri's Ambush	Sorcery	U
268	IN4	24	2	\N	\N	\N	\N	\N	\N	Faith Unbroken	Enchantment	U
269	IN4	25	5	\N	\N	\N	\N	\N	\N	Faithbearer Paladin	Creature	C
272	IN4	28	0	\N	\N	\N	\N	\N	\N	Gisela, the Broken Blade	Lgd. Creature	M
279	IN4	35	5	\N	\N	\N	\N	\N	\N	Lunarch Mantle	Enchantment	C
281	IN4	37	0	\N	\N	\N	\N	\N	\N	Providence	Sorcery	R
4432	WOS	195	1	\N	\N	\N	\N	\N	\N	Elite Guardmage	Creature	U
4434	WOS	197	1	\N	\N	\N	\N	\N	\N	Feather, the Redeemed	Lgd. Creature	R
4435	WOS	198	2	\N	\N	\N	\N	\N	\N	Gleaming Overseer	Creature	U
4437	WOS	200	1	\N	\N	\N	\N	\N	\N	Huatli's Raptor	Creature	U
247	IN4	3	1	\N	\N	\N	\N	\N	\N	Distended Mindbender	Creature	R
252	IN4	8	4	\N	\N	\N	\N	\N	\N	It of the Horrid Swarm	Creature	C
261	IN4	17	1	\N	\N	\N	\N	\N	\N	Collective Effort	Sorcery	R
264	IN4	20	0	\N	\N	\N	\N	\N	\N	Deploy the Gatewatch	Sorcery	M
4439	WOS	202	1	\N	\N	\N	\N	\N	\N	Leyline Prowler	Creature	U
4440	WOS	203	1	\N	\N	\N	\N	\N	\N	Living Twister	Creature	R
4442	WOS	205	1	\N	\N	\N	\N	\N	\N	Merfolk Skydiver	Creature	U
4444	WOS	207	1	\N	\N	\N	\N	\N	\N	Nicol Bolas, Dragon-God	Lgd. Planeswalker	M
4449	WOS	212	1	\N	\N	\N	\N	\N	\N	Ral's Outburst	Instant	U
4451	WOS	214	1	\N	\N	\N	\N	\N	\N	Role Reversal	Sorcery	R
4453	WOS	216	1	\N	\N	\N	\N	\N	\N	Solar Blaze	Sorcery	R
4456	WOS	219	1	\N	\N	\N	\N	\N	\N	Storrev, Devkarin Lich	Lgd. Creature	R
4459	WOS	222	1	\N	\N	\N	\N	\N	\N	Tenth District Legionnaire	Creature	U
4462	WOS	225	1	\N	\N	\N	\N	\N	\N	Tyrant's Scorn	Instant	U
4463	WOS	226	1	\N	\N	\N	\N	\N	\N	Widespread Brutality	Sorcery	R
4465	WOS	228	3	\N	\N	\N	\N	\N	\N	Ashiok, Dream Render	Lgd. Planeswalker	U
4471	WOS	234	1	\N	\N	\N	\N	\N	\N	Saheeli, Sublime Artificer	Lgd. Planeswalker	U
4474	WOS	237	2	\N	\N	\N	\N	\N	\N	Firemind Vessel	Artifact	U
4477	WOS	240	3	\N	\N	\N	\N	\N	\N	Iron Bully	Artifact Creature	C
4479	WOS	242	5	\N	\N	\N	\N	\N	\N	Prismite	Artifact Creature	C
4481	WOS	244	0	\N	\N	\N	\N	\N	\N	Blast Zone	Land	R
4482	WOS	245	1	\N	\N	\N	\N	\N	\N	Emergence Zone	Land	U
4484	WOS	247	1	\N	\N	\N	\N	\N	\N	Interplanar Beacon	Land	U
4485	WOS	248	0	\N	\N	\N	\N	\N	\N	Karn's Bastion	Land	R
4487	WOS	250	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
4488	WOS	251	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
4490	WOS	253	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
4492	WOS	255	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
4493	WOS	256	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
4495	WOS	258	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
4496	WOS	259	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
4498	WOS	261	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
4500	WOS	263	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
4501	WOS	264	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
4503	WOS	266	0	\N	\N	\N	\N	\N	\N	Desperate Lunge	Instant	C
4505	WOS	268	0	\N	\N	\N	\N	\N	\N	Gideon's Company	Creature	U
4506	WOS	269	0	\N	\N	\N	\N	\N	\N	Orzhov Guildgate	Land	C
4508	WOS	271	0	\N	\N	\N	\N	\N	\N	Guildpact Informant	Creature	C
4510	WOS	273	0	\N	\N	\N	\N	\N	\N	Jace's Ruse	Sorcery	R
4511	WOS	274	0	\N	\N	\N	\N	\N	\N	Simic Guildgate	Land	C
1384	AMO	1	0	\N	\N	\N	\N	\N	\N	Angel of Sanctions	Creature	M
2777	ZER	196	1	\N	\N	\N	\N	\N	\N	Murasa Sproutling	Creature	U
2698	ZER	117	4	\N	\N	\N	\N	\N	\N	Nimana Skydancer	Creature	C
2700	ZER	119	5	\N	\N	\N	\N	\N	\N	Oblivion's Hunger	Instant	C
3990	BFZ	27	3	\N	\N	\N	\N	\N	\N	Fortified Rampart	Creature	C
4005	BFZ	42	1	\N	\N	\N	\N	\N	\N	Planar Outburst	Sorcery	R
4017	BFZ	54	3	\N	\N	\N	\N	\N	\N	Adverse Conditions	Instant	U
4020	BFZ	57	1	\N	\N	\N	\N	\N	\N	Drowner of Hope	Creature	R
4021	BFZ	58	4	\N	\N	\N	\N	\N	\N	Eldrazi Skyspawner	Creature	C
4023	BFZ	60	4	\N	\N	\N	\N	\N	\N	Incubator Drone	Creature	C
4025	BFZ	62	3	\N	\N	\N	\N	\N	\N	Murk Strider	Creature	C
4026	BFZ	63	3	\N	\N	\N	\N	\N	\N	Oracle of Dust	Creature	C
27870	WWK	20	0	t	\N	\N	\N	\N	\N	Stoneforge Mystic	Creature	R
4028	BFZ	65	4	\N	\N	\N	\N	\N	\N	Salvage Drone	Creature	C
4029	BFZ	66	4	\N	\N	\N	\N	\N	\N	Spell Shrivel	Instant	C
4031	BFZ	68	1	\N	\N	\N	\N	\N	\N	Ulamog's Reclaimer	Creature	U
4033	BFZ	70	2	\N	\N	\N	\N	\N	\N	Brilliant Spectrum	Sorcery	C
4034	BFZ	71	3	\N	\N	\N	\N	\N	\N	Cloud Manta	Creature	C
4036	BFZ	73	1	\N	\N	\N	\N	\N	\N	Coastal Discovery	Sorcery	U
4039	BFZ	76	4	\N	\N	\N	\N	\N	\N	Dispel	Instant	C
4040	BFZ	77	2	\N	\N	\N	\N	\N	\N	Exert Influence	Sorcery	R
4044	BFZ	81	1	\N	\N	\N	\N	\N	\N	Prism Array	Enchantment	R
4046	BFZ	83	3	\N	\N	\N	\N	\N	\N	Roilmage's Trick	Instant	C
4047	BFZ	84	4	\N	\N	\N	\N	\N	\N	Rush of Ice	Sorcery	C
4050	BFZ	87	0	\N	\N	\N	\N	\N	\N	Ugin's Insight	Sorcery	R
4051	BFZ	88	3	\N	\N	\N	\N	\N	\N	Wave-Wing Elemental	Creature	C
4054	BFZ	91	2	\N	\N	\N	\N	\N	\N	Culling Drone	Creature	C
4056	BFZ	93	4	\N	\N	\N	\N	\N	\N	Grave Birthing	Instant	C
565	IN5	10	4	\N	\N	\N	\N	\N	\N	Chaplain's Blessing	Sorcery	C
577	IN5	22	2	\N	\N	\N	\N	\N	\N	Hope Against Hope	Enchantment	U
584	IN5	29	2	\N	\N	\N	\N	\N	\N	Nearheath Chaplain	Creature	U
575	IN5	20	2	\N	\N	\N	\N	\N	\N	Gryff's Boon	Enchantment	U
562	IN5	7	1	\N	\N	\N	\N	\N	\N	Bound by Moonsilver	Enchantment	U
581	IN5	26	3	\N	\N	\N	\N	\N	\N	Militant Inquisitor	Creature	C
570	IN5	15	1	\N	\N	\N	\N	\N	\N	Drogskol Cavalry	Creature	R
582	IN5	27	2	\N	\N	\N	\N	\N	\N	Moorland Drifter	Creature	C
566	IN5	11	3	\N	\N	\N	\N	\N	\N	Dauntless Cathar	Creature	C
586	IN5	31	2	\N	\N	\N	\N	\N	\N	Odric, Lunarch Marshal	Lgd. Creature	R
579	IN5	24	4	\N	\N	\N	\N	\N	\N	Inquisitor's Ox	Creature	C
564	IN5	9	3	\N	\N	\N	\N	\N	\N	Cathar's Companion	Creature	C
572	IN5	17	3	\N	\N	\N	\N	\N	\N	Emissary of the Sleepless	Creature	C
4057	BFZ	94	0	\N	\N	\N	\N	\N	\N	Grip of Desolation	Instant	U
4060	BFZ	97	0	\N	\N	\N	\N	\N	\N	Skitterskin	Creature	U
251	IN4	7	1	\N	\N	\N	\N	\N	\N	Eternal Scourge	Creature	R
254	IN4	10	2	\N	\N	\N	\N	\N	\N	Mockery of Nature	Creature	U
257	IN4	13	2	\N	\N	\N	\N	\N	\N	Blessed Alliance	Instant	U
259	IN4	15	1	\N	\N	\N	\N	\N	\N	Bruna, the Fading Light	Lgd. Creature	R
263	IN4	19	3	\N	\N	\N	\N	\N	\N	Dawn Gryff	Creature	C
258	IN4	14	5	\N	\N	\N	\N	\N	\N	Borrowed Grace	Instant	C
262	IN4	18	2	\N	\N	\N	\N	\N	\N	Courageous Outrider	Creature	U
265	IN4	21	5	\N	\N	\N	\N	\N	\N	Desperate Sentry	Creature	C
270	IN4	26	3	\N	\N	\N	\N	\N	\N	Fiend Binder	Creature	C
271	IN4	27	2	\N	\N	\N	\N	\N	\N	Geist of the Lonely Vigil	Creature	U
274	IN4	30	4	\N	\N	\N	\N	\N	\N	Guardian of Pilgrims	Creature	C
275	IN4	31	4	\N	\N	\N	\N	\N	\N	Ironclad Slayer	Creature	C
277	IN4	33	3	\N	\N	\N	\N	\N	\N	Lone Rider // It That Rides as One	Creature	U
280	IN4	36	2	\N	\N	\N	\N	\N	\N	Peace of Mind	Enchantment	U
283	IN4	39	1	\N	\N	\N	\N	\N	\N	Sanctifier of Souls	Creature	R
285	IN4	41	1	\N	\N	\N	\N	\N	\N	Sigarda's Aid	Enchantment	R
568	IN5	13	0	\N	\N	\N	\N	\N	\N	Descend upon the Sinful	Sorcery	M
4063	BFZ	100	4	\N	\N	\N	\N	\N	\N	Swarm Surge	Sorcery	C
4064	BFZ	101	2	\N	\N	\N	\N	\N	\N	Transgress the Mind	Sorcery	U
556	IN5	1	0	\N	\N	\N	\N	\N	\N	Always Watching	Enchantment	R
4067	BFZ	104	2	\N	\N	\N	\N	\N	\N	Bloodbond Vampire	Creature	U
4068	BFZ	105	4	\N	\N	\N	\N	\N	\N	Bone Splinters	Sorcery	C
4071	BFZ	108	4	\N	\N	\N	\N	\N	\N	Demon's Grasp	Sorcery	C
4073	BFZ	110	3	\N	\N	\N	\N	\N	\N	Dutiful Return	Sorcery	C
4075	BFZ	112	0	\N	\N	\N	\N	\N	\N	Guul Draz Overseer	Creature	R
4077	BFZ	114	4	\N	\N	\N	\N	\N	\N	Kalastria Healer	Creature	C
4080	BFZ	117	4	\N	\N	\N	\N	\N	\N	Mire's Malice	Sorcery	C
4083	BFZ	120	0	\N	\N	\N	\N	\N	\N	Painful Truths	Sorcery	R
4084	BFZ	121	2	\N	\N	\N	\N	\N	\N	Retreat to Hagra	Enchantment	U
4086	BFZ	123	1	\N	\N	\N	\N	\N	\N	Ruinous Path	Sorcery	R
4089	BFZ	126	2	\N	\N	\N	\N	\N	\N	Zulaport Cutthroat	Creature	U
4090	BFZ	127	1	\N	\N	\N	\N	\N	\N	Barrage Tyrant	Creature	R
4133	BFZ	170	1	\N	\N	\N	\N	\N	\N	Beastcaller Savant	Creature	R
4167	BFZ	204	2	\N	\N	\N	\N	\N	\N	Forerunner of Slaughter	Creature	U
4173	BFZ	210	1	\N	\N	\N	\N	\N	\N	Drana's Emissary	Creature	U
4175	BFZ	212	4	\N	\N	\N	\N	\N	\N	Grovetender Druids	Creature	U
4181	BFZ	218	1	\N	\N	\N	\N	\N	\N	Resolute Blademaster	Creature	U
4187	BFZ	224	3	\N	\N	\N	\N	\N	\N	Hedron Blade	Artifact	C
4198	BFZ	235	1	\N	\N	\N	\N	\N	\N	Cinder Glade	Land	R
4211	BFZ	248	2	\N	\N	\N	\N	\N	\N	Spawning Bed	Land	U
3055	KAL	194	1	\N	\N	\N	\N	\N	\N	Animation Module	Artifact	R
4214	BFZ	251	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
4216	BFZ	253	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
4217	BFZ	254	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
4220	BFZ	257	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
4222	BFZ	259	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
3079	KAL	218	3	\N	\N	\N	\N	\N	\N	Inventor's Goggles	Artifact	C
3082	KAL	221	3	\N	\N	\N	\N	\N	\N	Metalspinner's Puzzleknot	Artifact	C
595	IN5	40	3	\N	\N	\N	\N	\N	\N	Strength of Arms	Instant	C
589	IN5	34	1	\N	\N	\N	\N	\N	\N	Pious Evangel // Wayward Disciple	Creature	U
593	IN5	38	1	\N	\N	\N	\N	\N	\N	Spectral Shepherd	Creature	U
1391	AMO	8	1	\N	\N	\N	\N	\N	\N	Cast Out	Enchantment	U
1394	AMO	11	2	\N	\N	\N	\N	\N	\N	Djeru's Resolve	Instant	C
1395	AMO	12	4	\N	\N	\N	\N	\N	\N	Fan Bearer	Creature	C
1388	AMO	5	1	\N	\N	\N	\N	\N	\N	Aven Mindcensor	Creature	R
1389	AMO	6	4	\N	\N	\N	\N	\N	\N	Binding Mummy	Creature	C
591	IN5	36	1	\N	\N	\N	\N	\N	\N	Reaper of Flight Moonsilver	Creature	U
36699	NEO	43	0	t	\N	\N	\N	\N	\N	When We Were Young	Instant	U
1398	AMO	15	2	\N	\N	\N	\N	\N	\N	Gideon's Intervention	Enchantment	R
1401	AMO	18	4	\N	\N	\N	\N	\N	\N	Impeccable Timing	Instant	C
1402	AMO	19	4	\N	\N	\N	\N	\N	\N	In Oketra's Name	Instant	C
1403	AMO	20	4	\N	\N	\N	\N	\N	\N	Mighty Leap	Instant	C
1405	AMO	22	1	\N	\N	\N	\N	\N	\N	Oketra's Attendant	Creature	U
1406	AMO	23	1	\N	\N	\N	\N	\N	\N	Protection of the Hekma	Enchantment	U
1408	AMO	25	2	\N	\N	\N	\N	\N	\N	Renewed Faith	Instant	U
1410	AMO	27	3	\N	\N	\N	\N	\N	\N	Sacred Cat	Creature	C
1411	AMO	28	1	\N	\N	\N	\N	\N	\N	Seraph of the Suns	Creature	U
1413	AMO	30	4	\N	\N	\N	\N	\N	\N	Supply Caravan	Creature	C
1415	AMO	32	3	\N	\N	\N	\N	\N	\N	Those Who Serve	Creature	C
1417	AMO	34	1	\N	\N	\N	\N	\N	\N	Trial of Solidarity	Enchantment	U
1419	AMO	36	4	\N	\N	\N	\N	\N	\N	Unwavering Initiate	Creature	C
1421	AMO	38	1	\N	\N	\N	\N	\N	\N	Vizier of Remedies	Creature	U
1422	AMO	39	3	\N	\N	\N	\N	\N	\N	Winged Shepherd	Creature	C
1424	AMO	41	1	\N	\N	\N	\N	\N	\N	Angler Drake	Creature	U
1663	KLD	1	3	\N	\N	\N	\N	\N	\N	Axgard Braggart	Creature	C
1664	KLD	2	1	\N	\N	\N	\N	\N	\N	Battershield Warrior	Creature	U
1672	KLD	10	3	\N	\N	\N	\N	\N	\N	Doomskar Oracle	Creature	C
1673	KLD	11	3	\N	\N	\N	\N	\N	\N	Giant Ox	Creature	C
1674	KLD	12	0	\N	\N	\N	\N	\N	\N	Glorious Protector	Creature	R
1670	KLD	8	2	\N	\N	\N	\N	\N	\N	Divine Gambit	Sorcery	U
1676	KLD	14	4	\N	\N	\N	\N	\N	\N	Goldmaw Champion	Creature	C
1677	KLD	15	0	\N	\N	\N	\N	\N	\N	Halvar, God of Battle // Sword of the Realms	Lgd. Creature	M
1680	KLD	18	2	\N	\N	\N	\N	\N	\N	Kaya's Onslaught	Instant	U
853	GOR	1	3	\N	\N	\N	\N	\N	\N	Blade Instructor	Creature	C
856	GOR	4	0	\N	\N	\N	\N	\N	\N	Citywide Bust	Sorcery	R
855	GOR	3	3	\N	\N	\N	\N	\N	\N	Candlelight Vigil	Enchantment	C
862	GOR	10	0	\N	\N	\N	\N	\N	\N	Divine Visitation	Enchantment	M
859	GOR	7	1	\N	\N	\N	\N	\N	\N	Crush Contraband	Instant	U
863	GOR	11	1	\N	\N	\N	\N	\N	\N	Flight of Equenauts	Creature	U
864	GOR	12	2	\N	\N	\N	\N	\N	\N	Gird for Battle	Sorcery	U
866	GOR	14	4	\N	\N	\N	\N	\N	\N	Healer's Hawk	Creature	C
867	GOR	15	4	\N	\N	\N	\N	\N	\N	Hunted Witness	Creature	C
869	GOR	17	4	\N	\N	\N	\N	\N	\N	Intrusive Packbeast	Creature	C
871	GOR	19	0	\N	\N	\N	\N	\N	\N	Light of the Legion	Creature	R
873	GOR	21	3	\N	\N	\N	\N	\N	\N	Luminous Bonds	Enchantment	C
875	GOR	23	3	\N	\N	\N	\N	\N	\N	Righteous Blow	Instant	C
878	GOR	26	2	\N	\N	\N	\N	\N	\N	Sunhome Stalwart	Creature	U
880	GOR	28	4	\N	\N	\N	\N	\N	\N	Take Heart	Instant	C
882	GOR	30	0	\N	\N	\N	\N	\N	\N	Venerated Loxodon	Creature	R
883	GOR	31	4	\N	\N	\N	\N	\N	\N	Capture Sphere	Enchantment	C
886	GOR	34	3	\N	\N	\N	\N	\N	\N	Dazzling Lights	Instant	C
889	GOR	37	3	\N	\N	\N	\N	\N	\N	Disdainful Stroke	Instant	C
890	GOR	38	0	\N	\N	\N	\N	\N	\N	Dream Eater	Creature	M
892	GOR	40	1	\N	\N	\N	\N	\N	\N	Enhanced Surveillance	Enchantment	U
1112	MAO	1	3	\N	\N	\N	\N	\N	\N	Akroan Jailer	Creature	C
1120	MAO	9	3	\N	\N	\N	\N	\N	\N	Charging Griffin	Creature	C
1124	MAO	13	3	\N	\N	\N	\N	\N	\N	Enshrouding Mist	Instant	C
1125	MAO	14	0	\N	\N	\N	\N	\N	\N	Gideon's Phalanx	Instant	R
1126	MAO	15	4	\N	\N	\N	\N	\N	\N	Grasp of the Hieromancer	Enchantment	C
1127	MAO	16	0	\N	\N	\N	\N	\N	\N	Hallowed Moonlight	Instant	R
1130	MAO	19	1	\N	\N	\N	\N	\N	\N	Hixus, Prison Warden	Lgd. Creature	R
1135	MAO	24	0	\N	\N	\N	\N	\N	\N	Kytheon's Irregulars	Creature	R
1143	MAO	32	4	\N	\N	\N	\N	\N	\N	Stalwart Aven	Creature	C
1146	MAO	35	2	\N	\N	\N	\N	\N	\N	Swift Reckoning	Sorcery	U
1149	MAO	38	0	\N	\N	\N	\N	\N	\N	Tragic Arrogance	Sorcery	R
1151	MAO	40	0	\N	\N	\N	\N	\N	\N	Vryn Wingmare	Creature	R
1152	MAO	41	2	\N	\N	\N	\N	\N	\N	War Oracle	Creature	U
1684	KLD	22	0	\N	\N	\N	\N	\N	\N	Resplendent Marshal	Creature	M
1685	KLD	23	4	\N	\N	\N	\N	\N	\N	Revitalize	Instant	C
1686	KLD	24	0	\N	\N	\N	\N	\N	\N	Righteous Valkyrie	Creature	R
1688	KLD	26	0	\N	\N	\N	\N	\N	\N	Runeforge Champion	Creature	R
1690	KLD	28	2	\N	\N	\N	\N	\N	\N	Shepherd of the Cosmos	Creature	U
1692	KLD	30	1	\N	\N	\N	\N	\N	\N	Spectral Steel	Enchantment	U
1693	KLD	31	4	\N	\N	\N	\N	\N	\N	Stalwart Valkyrie	Creature	C
1697	KLD	35	1	\N	\N	\N	\N	\N	\N	Usher of the Fallen	Creature	U
1699	KLD	37	4	\N	\N	\N	\N	\N	\N	Valor of the Worthy	Enchantment	C
1701	KLD	39	3	\N	\N	\N	\N	\N	\N	Wings of the Cosmos	Instant	C
1703	KLD	41	0	\N	\N	\N	\N	\N	\N	Alrund's Epiphany	Sorcery	M
2594	ZER	13	4	\N	\N	\N	\N	\N	\N	Expedition Healer	Creature	C
2438	OAT	41	6	\N	\N	\N	\N	\N	\N	Blinding Drone	Creature	C
2865	KAL	4	0	\N	\N	\N	\N	\N	\N	Angel of Invention	Creature	M
2864	KAL	3	1	\N	\N	\N	\N	\N	\N	Aetherstorm Roc	Creature	R
2869	KAL	8	0	\N	\N	\N	\N	\N	\N	Captured by the Consulate	Enchantment	R
2870	KAL	9	0	\N	\N	\N	\N	\N	\N	Cataclysmic Gearhulk	Artifact Creature	M
2867	KAL	6	4	\N	\N	\N	\N	\N	\N	Aviary Mechanic	Creature	C
2873	KAL	12	3	\N	\N	\N	\N	\N	\N	Eddytrail Hawk	Creature	C
3066	KAL	205	2	\N	\N	\N	\N	\N	\N	Decoction Module	Artifact	U
3070	KAL	209	4	\N	\N	\N	\N	\N	\N	Eager Construct	Artifact Creature	C
2234	NPH	12	2	\N	\N	\N	\N	\N	\N	Inquisitor Exarch	Creature	U
2092	MIB	25	2	\N	t	\N	\N	\N	\N	Fuel for the Cause	Instant	C
2097	MIB	30	2	\N	t	\N	\N	\N	\N	Quicksilver Geyser	Instant	C
2095	MIB	28	2	\N	t	\N	\N	\N	\N	Neurok Commando	Creature	U
2102	MIB	35	2	\N	t	\N	\N	\N	\N	Turn the Tide	Instant	C
1400	AMO	17	4	\N	\N	\N	\N	\N	\N	Gust Walker	Creature	C
1669	KLD	7	4	\N	\N	\N	\N	\N	\N	Codespell Cleric	Creature	C
1671	KLD	9	1	\N	\N	\N	\N	\N	\N	Doomskar	Sorcery	R
1681	KLD	19	4	\N	\N	\N	\N	\N	\N	Master Skald	Creature	C
1694	KLD	32	4	\N	\N	\N	\N	\N	\N	Starnheim Courser	Creature	C
2608	ZER	27	0	\N	\N	\N	\N	\N	\N	Maul of the Skyclaves	Artifact	R
2622	ZER	41	1	\N	\N	\N	\N	\N	\N	Squad Commander	Creature	R
2398	OAT	1	1	\N	\N	\N	\N	\N	\N	Deceiver of Form	Creature	R
2596	ZER	15	0	\N	\N	\N	\N	\N	\N	Fearless Fledgling	Creature	U
2402	OAT	5	4	\N	\N	\N	\N	\N	\N	Kozilek's Pathfinder	Creature	C
2399	OAT	2	1	\N	\N	\N	\N	\N	\N	Eldrazi Mimic	Creature	R
2405	OAT	8	2	\N	\N	\N	\N	\N	\N	Spatial Contortion	Instant	U
2401	OAT	4	0	\N	\N	\N	\N	\N	\N	Kozilek, the Great Distortion	Lgd. Creature	M
2407	OAT	10	2	\N	\N	\N	\N	\N	\N	Walker of the Wastes	Creature	U
2409	OAT	12	2	\N	\N	\N	\N	\N	\N	Warping Wail	Instant	U
2406	OAT	9	1	\N	\N	\N	\N	\N	\N	Thought-Knot Seer	Creature	R
2410	OAT	13	1	\N	\N	\N	\N	\N	\N	Eldrazi Displacer	Creature	R
2411	OAT	14	4	\N	\N	\N	\N	\N	\N	Affa Protector	Creature	C
2413	OAT	16	1	\N	\N	\N	\N	\N	\N	Call the Gatewatch	Sorcery	R
2415	OAT	18	6	\N	\N	\N	\N	\N	\N	Expedition Raptor	Creature	C
2416	OAT	19	1	\N	\N	\N	\N	\N	\N	General Tazri	Lgd. Creature	M
2418	OAT	21	2	\N	\N	\N	\N	\N	\N	Iona's Blessing	Enchantment	U
2420	OAT	23	5	\N	\N	\N	\N	\N	\N	Kor Scythemaster	Creature	C
2421	OAT	24	5	\N	\N	\N	\N	\N	\N	Kor Sky Climber	Creature	C
36700	NEO	44	0	\N	t	\N	\N	\N	\N	Acquisition Octopus	Artifact Creature	U
2423	OAT	26	1	\N	\N	\N	\N	\N	\N	Make a Stand	Instant	U
2425	OAT	28	5	\N	\N	\N	\N	\N	\N	Mighty Leap	Instant	C
2426	OAT	29	0	\N	\N	\N	\N	\N	\N	Munda's Vanguard	Creature	R
2428	OAT	31	5	\N	\N	\N	\N	\N	\N	Ondu War Cleric	Creature	C
2429	OAT	32	2	\N	\N	\N	\N	\N	\N	Relief Captain	Creature	U
2431	OAT	34	5	\N	\N	\N	\N	\N	\N	Shoulder to Shoulder	Sorcery	C
2433	OAT	36	2	\N	\N	\N	\N	\N	\N	Steppe Glider	Creature	U
2435	OAT	38	2	\N	\N	\N	\N	\N	\N	Stoneforge Acolyte	Creature	U
2436	OAT	39	2	\N	\N	\N	\N	\N	\N	Wall of Resurgence	Creature	U
2875	KAL	14	4	\N	\N	\N	\N	\N	\N	Fragmentize	Sorcery	C
2876	KAL	15	0	\N	\N	\N	\N	\N	\N	Fumigate	Sorcery	R
2878	KAL	17	4	\N	\N	\N	\N	\N	\N	Glint-Sleeve Artisan	Creature	C
2886	KAL	25	2	\N	\N	\N	\N	\N	\N	Refurbish	Sorcery	U
4257	WOS	20	4	\N	\N	\N	\N	\N	\N	Law-Rune Enforcer	Creature	C
2099	MIB	32	0	\N	t	\N	\N	\N	\N	Spire Serpent	Creature	C
2106	MIB	39	1	\N	\N	t	\N	\N	\N	Black Sun's Zenith	Sorcery	R
2107	MIB	40	0	\N	\N	t	\N	\N	\N	Caustic Hound	Creature	C
2100	MIB	33	1	\N	t	\N	\N	\N	\N	Steel Sabotage	Instant	C
2090	MIB	23	1	\N	t	\N	\N	\N	\N	Cryptoplasm	Creature	R
2096	MIB	29	0	\N	t	\N	\N	\N	\N	Oculus	Creature	C
2104	MIB	37	0	\N	t	\N	\N	\N	\N	Vedalken Infuser	Creature	U
2108	MIB	41	1	\N	\N	t	\N	\N	\N	Flensermite	Creature	C
2223	NPH	1	0	\N	\N	\N	\N	\N	\N	Karn Liberated	Lgd. Planeswalker	M
2224	NPH	2	1	\N	\N	\N	\N	\N	\N	Apostle's Blessing	Instant	C
2225	NPH	3	1	\N	\N	\N	\N	\N	\N	Auriok Survivors	Creature	U
2226	NPH	4	1	\N	\N	\N	\N	\N	\N	Blade Splicer	Creature	R
2233	NPH	11	1	\N	\N	\N	\N	\N	\N	Forced Worship	Enchantment	C
2087	MIB	20	1	\N	t	\N	\N	\N	\N	Blue Sun's Zenith	Instant	R
2088	MIB	21	0	\N	t	\N	\N	\N	\N	Consecrated Sphinx	Creature	M
2089	MIB	22	1	\N	t	\N	\N	\N	\N	Corrupted Conscience	Enchantment	U
2091	MIB	24	1	\N	t	\N	\N	\N	\N	Distant Memories	Sorcery	R
2093	MIB	26	1	\N	t	\N	\N	\N	\N	Mirran Spy	Creature	C
2237	NPH	15	1	\N	\N	\N	\N	\N	\N	Marrow Shards	Instant	U
2238	NPH	16	0	\N	\N	\N	\N	\N	\N	Master Splicer	Creature	U
2239	NPH	17	0	\N	\N	\N	\N	\N	\N	Norn's Annex	Artifact	R
2240	NPH	18	0	\N	\N	\N	\N	\N	\N	Phyrexian Unlife	Enchantment	R
2227	NPH	5	1	\N	\N	\N	\N	\N	\N	Cathedral Membrane	Artifact Creature	U
2242	NPH	20	0	\N	\N	\N	\N	\N	\N	Puresteel Paladin	Creature	R
2229	NPH	7	0	\N	\N	\N	\N	\N	\N	Dispatch	Instant	U
2246	NPH	24	1	\N	\N	\N	\N	\N	\N	Shriek Raptor	Creature	C
2231	NPH	9	0	\N	\N	\N	\N	\N	\N	Elesh Norn, Grand Cenobite	Lgd. Creature	M
2247	NPH	25	0	\N	\N	\N	\N	\N	\N	Suture Priest	Creature	C
2248	NPH	26	1	\N	\N	\N	\N	\N	\N	War Report	Instant	C
2250	NPH	28	1	\N	\N	\N	\N	\N	\N	Arm with Aether	Sorcery	U
2252	NPH	30	1	\N	\N	\N	\N	\N	\N	Chained Throatseeker	Creature	C
2254	NPH	32	0	\N	\N	\N	\N	\N	\N	Corrupted Resolve	Instant	U
2255	NPH	33	0	\N	\N	\N	\N	\N	\N	Deceiver Exarch	Creature	U
2256	NPH	34	1	\N	\N	\N	\N	\N	\N	Defensive Stance	Enchantment	C
2259	NPH	37	0	\N	\N	\N	\N	\N	\N	Jin-Gitaxias, Core Augur	Lgd. Creature	M
2262	NPH	40	0	\N	\N	\N	\N	\N	\N	Numbing Dose	Enchantment	C
2263	NPH	41	0	\N	\N	\N	\N	\N	\N	Phyrexian Ingester	Creature	R
857	GOR	5	3	\N	\N	\N	\N	\N	\N	Collar the Culprit	Instant	C
253	IN4	9	1	\N	\N	\N	\N	\N	\N	Lashweed Lurker	Creature	U
260	IN4	16	4	\N	\N	\N	\N	\N	\N	Choking Restraints	Enchantment	C
874	GOR	22	4	\N	\N	\N	\N	\N	\N	Parhelion Patrol	Creature	C
877	GOR	25	3	\N	\N	\N	\N	\N	\N	Skyline Scout	Creature	C
885	GOR	33	2	\N	\N	\N	\N	\N	\N	Citywatch Sphinx	Creature	U
1116	MAO	5	3	\N	\N	\N	\N	\N	\N	Auramancer	Creature	C
1132	MAO	21	1	\N	\N	\N	\N	\N	\N	Knight of the White Orchid	Creature	R
1144	MAO	33	1	\N	\N	\N	\N	\N	\N	Starfield of Nyx	Enchantment	M
1147	MAO	36	3	\N	\N	\N	\N	\N	\N	Topan Freeblade	Creature	C
2601	ZER	20	1	\N	\N	\N	\N	\N	\N	Kitesail Cleric	Creature	U
2603	ZER	22	4	\N	\N	\N	\N	\N	\N	Kor Celebrant	Creature	C
2604	ZER	23	1	\N	\N	\N	\N	\N	\N	Legion Angel	Creature	R
2607	ZER	26	1	\N	\N	\N	\N	\N	\N	Makindi Stampede // Makindi Mesas	Sorcery // Land	U
2610	ZER	29	4	\N	\N	\N	\N	\N	\N	Nahiri's Binding	Enchantment	C
2613	ZER	32	3	\N	\N	\N	\N	\N	\N	Practiced Tactics	Instant	C
2614	ZER	33	3	\N	\N	\N	\N	\N	\N	Pressure Point	Instant	C
2616	ZER	35	5	\N	\N	\N	\N	\N	\N	Resolute Strike	Instant	C
2618	ZER	37	1	\N	\N	\N	\N	\N	\N	Sejiri Shelter // Sejiri Glacier	Instant // Land	U
2782	ZER	201	2	\N	\N	\N	\N	\N	\N	Roiling Regrowth	Instant	U
2582	ZER	1	1	\N	\N	\N	\N	\N	\N	Allied Assault	Instant	U
2590	ZER	9	3	\N	\N	\N	\N	\N	\N	Dauntless Unity	Instant	C
2593	ZER	12	0	\N	\N	\N	\N	\N	\N	Emeria's Call // Emeria, Shattered Skyclave	Sorcery // Land	M
2595	ZER	14	4	\N	\N	\N	\N	\N	\N	Farsight Adept	Creature	C
2598	ZER	17	1	\N	\N	\N	\N	\N	\N	Journey to Oblivion	Enchantment	U
2599	ZER	18	3	\N	\N	\N	\N	\N	\N	Kabira Outrider	Creature	C
2785	ZER	204	3	\N	\N	\N	\N	\N	\N	Skyclave Pick-Axe	Artifact	U
3970	BFZ	7	3	\N	\N	\N	\N	\N	\N	Eldrazi Devastator	Creature	C
3966	BFZ	3	1	\N	\N	\N	\N	\N	\N	Breaker of Armies	Creature	U
3140	DOM	5	3	\N	\N	\N	\N	\N	\N	Benalish Honor Guard	Creature	C
3145	DOM	10	4	\N	\N	\N	\N	\N	\N	Charge	Instant	C
3141	DOM	6	0	\N	\N	\N	\N	\N	\N	Benalish Marshal	Creature	R
3143	DOM	8	1	\N	\N	\N	\N	\N	\N	Board the Weatherlight	Sorcery	U
3147	DOM	12	0	\N	\N	\N	\N	\N	\N	Danitha Capashen, Paragon	Lgd. Creature	U
3149	DOM	14	2	\N	\N	\N	\N	\N	\N	Dauntless Bodyguard	Creature	U
3150	DOM	15	3	\N	\N	\N	\N	\N	\N	Dub	Enchantment	C
3152	DOM	17	4	\N	\N	\N	\N	\N	\N	Excavation Elephant	Creature	C
3154	DOM	19	3	\N	\N	\N	\N	\N	\N	Gideon's Reproach	Instant	C
3155	DOM	20	3	\N	\N	\N	\N	\N	\N	Healing Grace	Instant	C
3157	DOM	22	3	\N	\N	\N	\N	\N	\N	Invoke the Divine	Instant	C
3159	DOM	24	3	\N	\N	\N	\N	\N	\N	Knight of New Benalia	Creature	C
3161	DOM	26	1	\N	\N	\N	\N	\N	\N	Lyra Dawnbringer	Lgd. Creature	M
3162	DOM	27	3	\N	\N	\N	\N	\N	\N	Mesa Unicorn	Creature	C
3164	DOM	29	4	\N	\N	\N	\N	\N	\N	Pegasus Courser	Creature	C
3166	DOM	31	1	\N	\N	\N	\N	\N	\N	Seal Away	Enchantment	U
3168	DOM	33	1	\N	\N	\N	\N	\N	\N	Serra Angel	Creature	U
3169	DOM	34	4	\N	\N	\N	\N	\N	\N	Serra Disciple	Creature	C
3171	DOM	36	1	\N	\N	\N	\N	\N	\N	Teshar, Ancestor's Apostle	Lgd. Creature	R
3173	DOM	38	2	\N	\N	\N	\N	\N	\N	Triumph of Gerrard	Enchantment	U
3175	DOM	40	4	\N	\N	\N	\N	\N	\N	Academy Drake	Creature	C
4243	WOS	6	2	\N	\N	\N	\N	\N	\N	Bond of Discipline	Sorcery	U
4239	WOS	2	0	\N	\N	\N	\N	\N	\N	Ugin, the Ineffable	Lgd. Planeswalker	R
3972	BFZ	9	0	\N	\N	\N	\N	\N	\N	Gruesome Slaughter	Sorcery	R
3974	BFZ	11	0	\N	\N	\N	\N	\N	\N	Oblivion Sower	Creature	M
3971	BFZ	8	0	\N	\N	\N	\N	\N	\N	Endless One	Creature	R
3975	BFZ	12	4	\N	\N	\N	\N	\N	\N	Ruin Processor	Creature	C
3976	BFZ	13	3	\N	\N	\N	\N	\N	\N	Scour from Existence	Instant	C
3978	BFZ	15	0	\N	\N	\N	\N	\N	\N	Ulamog, the Ceaseless Hunger	Lgd. Creature	M
3980	BFZ	17	0	\N	\N	\N	\N	\N	\N	Void Winnower	Creature	M
3981	BFZ	18	1	\N	\N	\N	\N	\N	\N	Angel of Renewal	Creature	U
3983	BFZ	20	3	\N	\N	\N	\N	\N	\N	Cliffside Lookout	Creature	C
3985	BFZ	22	0	\N	\N	\N	\N	\N	\N	Emeria Shepherd	Creature	R
3987	BFZ	24	2	\N	\N	\N	\N	\N	\N	Expedition Envoy	Creature	U
3988	BFZ	25	4	\N	\N	\N	\N	\N	\N	Felidar Cub	Creature	C
3991	BFZ	28	3	\N	\N	\N	\N	\N	\N	Ghostly Sentinel	Creature	C
3993	BFZ	30	3	\N	\N	\N	\N	\N	\N	Gideon's Reproach	Instant	C
3994	BFZ	31	0	\N	\N	\N	\N	\N	\N	Hero of Goma Fada	Creature	R
3996	BFZ	33	3	\N	\N	\N	\N	\N	\N	Kitesail Scout	Creature	C
3998	BFZ	35	3	\N	\N	\N	\N	\N	\N	Kor Castigator	Creature	C
4000	BFZ	37	1	\N	\N	\N	\N	\N	\N	Lantern Scout	Creature	R
4001	BFZ	38	3	\N	\N	\N	\N	\N	\N	Lithomancer's Focus	Instant	C
4003	BFZ	40	4	\N	\N	\N	\N	\N	\N	Ondu Greathorn	Creature	C
2868	KAL	7	4	\N	\N	\N	\N	\N	\N	Built to Last	Instant	C
2881	KAL	20	4	\N	\N	\N	\N	\N	\N	Inspired Charge	Instant	C
2882	KAL	21	2	\N	\N	\N	\N	\N	\N	Master Trinketeer	Creature	R
2884	KAL	23	4	\N	\N	\N	\N	\N	\N	Pressure Point	Instant	C
2887	KAL	26	4	\N	\N	\N	\N	\N	\N	Revoke Privileges	Enchantment	C
2889	KAL	28	2	\N	\N	\N	\N	\N	\N	Skyswirl Harrier	Creature	C
2890	KAL	29	2	\N	\N	\N	\N	\N	\N	Skywhaler's Shot	Instant	U
2892	KAL	31	4	\N	\N	\N	\N	\N	\N	Thriving Ibex	Creature	C
2894	KAL	33	1	\N	\N	\N	\N	\N	\N	Trusty Companion	Creature	U
2896	KAL	35	2	\N	\N	\N	\N	\N	\N	Wispweaver Angel	Creature	U
2897	KAL	36	1	\N	\N	\N	\N	\N	\N	Aether Meltdown	Enchantment	U
2899	KAL	38	3	\N	\N	\N	\N	\N	\N	Aether Tradewinds	Instant	C
2901	KAL	40	1	\N	\N	\N	\N	\N	\N	Ceremonious Rejection	Instant	U
3136	DOM	1	0	\N	\N	\N	\N	\N	\N	Karn, Scion of Urza	Lgd. Planeswalker	M
4248	WOS	11	3	\N	\N	\N	\N	\N	\N	Enforcer Griffin	Creature	C
4245	WOS	8	3	\N	\N	\N	\N	\N	\N	Charmed Stray	Creature	C
4250	WOS	13	0	\N	\N	\N	\N	\N	\N	Gideon Blackblade	Lgd. Planeswalker	M
4254	WOS	17	1	\N	\N	\N	\N	\N	\N	Grateful Apparition	Creature	U
4260	WOS	23	4	\N	\N	\N	\N	\N	\N	Martyr for the Cause	Creature	C
4265	WOS	28	0	\N	\N	\N	\N	\N	\N	Ravnica at War	Sorcery	R
4266	WOS	29	4	\N	\N	\N	\N	\N	\N	Rising Populace	Creature	C
4269	WOS	32	1	\N	\N	\N	\N	\N	\N	Teyo, the Shieldmage	Lgd. Planeswalker	U
4272	WOS	35	3	\N	\N	\N	\N	\N	\N	Topple the Statue	Instant	C
4274	WOS	37	1	\N	\N	\N	\N	\N	\N	The Wanderer	Lgd. Planeswalker	U
4276	WOS	39	2	\N	\N	\N	\N	\N	\N	War Screecher	Creature	C
4278	WOS	41	1	\N	\N	\N	\N	\N	\N	Augur of Bolas	Creature	U
28128	MID	9	0	t	\N	\N	\N	\N	\N	Candletrap	Enchantment	C
28138	DKA	31	0	\N	t	\N	\N	\N	\N	Chant of the Skifsang	Enchantment	C
28148	CHK	21	0	t	\N	\N	\N	\N	\N	Kami of Ancient Law	Creature	C
28158	ISD	22	0	t	\N	\N	\N	\N	\N	Midnight Haunting	Instant	U
28178	RTR	20	0	t	\N	\N	\N	\N	\N	Security Blockade	Enchantment	U
28188	RAV	18	0	t	\N	\N	\N	\N	\N	Flickerform	Enchantment	R
28198	GPT	33	0	\N	t	\N	\N	\N	\N	Runeboggle	Instant	C
28208	ISD	25	0	t	\N	\N	\N	\N	\N	Nevermore	Enchantment	R
28460	CHK	36	1	t	\N	\N	\N	\N	\N	Nagao, Bound by Honor	Lgd. Creature	U
28228	SOM	24	0	t	\N	\N	\N	\N	\N	Tempered Steel	Enchantment	R
28238	MOR	34	0	\N	t	\N	\N	\N	\N	Floodchaser	Creature	C
28258	MOR	32	0	\N	t	\N	\N	\N	\N	Distant Melody	Sorcery	C
28268	SOM	22	0	t	\N	\N	\N	\N	\N	Sunblast Angel	Creature	R
28278	EVE	38	0	\N	\N	t	\N	\N	\N	Necroskitter	Creature	R
28288	DKA	36	0	\N	t	\N	\N	\N	\N	Dungeon Geists	Creature	R
28308	DKA	37	0	\N	t	\N	\N	\N	\N	Geralf's Mindcrusher	Creature	R
28319	CHK	27	0	t	\N	\N	\N	\N	\N	Kitsune Healer	Creature	C
28329	ISD	28	0	t	\N	\N	\N	\N	\N	Rally the Peasants	Instant	U
28339	CHK	30	0	t	\N	\N	\N	\N	\N	Konda, Lord of Eiganjo	Lgd. Creature	R
28349	SOM	28	0	\N	t	\N	\N	\N	\N	Argent Sphinx	Creature	R
28359	SOM	26	0	t	\N	\N	\N	\N	\N	Vigil for the Lost	Enchantment	U
28369	RAV	25	0	t	\N	\N	\N	\N	\N	Loxodon Gatekeeper	Creature	R
28379	GTC	32	0	\N	t	\N	\N	\N	\N	Cloudfin Raptor	Creature	C
28400	SHM	21	0	t	\N	\N	\N	\N	\N	Runed Halo	Enchantment	R
28961	ALA	46	1	\N	t	\N	\N	\N	\N	Jhessian Lookout	Creature	C
28421	DGM	44	0	\N	\N	\N	\N	t	\N	Mending Touch	Instant	C
28430	ROE	28	0	t	\N	\N	\N	\N	\N	Kabira Vindicator	Creature	U
28440	ISD	33	0	t	\N	\N	\N	\N	\N	Smite the Monstrous	Instant	C
28450	WWK	41	0	\N	t	\N	\N	\N	\N	Tideforce Elemental	Creature	U
28470	RTR	26	0	t	\N	\N	\N	\N	\N	Swift Justice	Instant	C
28480	LRW	32	0	t	\N	\N	\N	\N	\N	Neck Snap	Instant	C
28490	MID	24	0	t	\N	\N	\N	\N	\N	Homestead Courage	Sorcery	C
28500	DGM	47	0	\N	\N	\N	\N	t	\N	Renegade Krasis	Creature	R
28510	ARB	54	0	\N	\N	\N	t	t	\N	Firewild Borderpost	Artifact	C
28520	EVE	47	0	\N	\N	t	\N	\N	\N	Talara's Bane	Sorcery	C
29057	SOK	65	2	\N	\N	t	\N	\N	\N	Deathknell Kami	Creature	C
28540	GTC	38	0	\N	t	\N	\N	\N	\N	Incursion Specialist	Creature	U
28550	ZEN	21	0	t	\N	\N	\N	\N	\N	Kor Outfitter	Creature	C
28560	ROE	33	0	t	\N	\N	\N	\N	\N	Linvala, Keeper of Silence	Lgd. Creature	M
28570	ISD	38	0	t	\N	\N	\N	\N	\N	Thraben Sentry // Thraben Militia	Creature	C
28590	CHK	41	0	t	\N	\N	\N	\N	\N	Reverse the Sands	Sorcery	R
28597	ALA	32	0	\N	t	\N	\N	\N	\N	Call to Heel	Instant	C
28606	WWK	47	0	\N	\N	t	\N	\N	\N	Abyssal Persecutor	Creature	M
28607	CON	54	0	\N	\N	t	\N	\N	\N	Sedraxis Alchemist	Creature	C
28618	GTC	41	0	\N	t	\N	\N	\N	\N	Leyline Phantom	Creature	C
28646	MID	30	0	t	\N	\N	\N	\N	\N	Ritual Guardian	Creature	C
28670	GTC	43	0	\N	t	\N	\N	\N	\N	Mindeye Drake	Creature	U
28674	ISD	42	0	t	\N	\N	\N	\N	\N	Voiceless Spirit	Creature	C
28298	BOK	42	2	\N	t	\N	\N	\N	\N	Minamo's Meddling	Instant	C
28704	RTR	35	0	\N	t	\N	\N	\N	\N	Cyclonic Rift	Instant	R
28708	DGM	55	0	\N	t	\N	t	\N	\N	Blast of Genius	Sorcery	U
28709	SHM	34	0	\N	t	\N	\N	\N	\N	Cursecatcher	Creature	U
28716	ROE	39	0	t	\N	\N	\N	\N	\N	Nomads' Assembly	Sorcery	R
28731	MOR	53	0	\N	t	\N	\N	\N	\N	Supreme Exemplar	Creature	R
28734	DGM	56	0	t	\N	\N	t	\N	\N	Blaze Commando	Creature	U
28743	GPT	55	0	\N	\N	t	\N	\N	\N	Ostiary Thrull	Creature	C
28749	BOK	61	0	\N	\N	t	\N	\N	\N	Bile Urchin	Creature	C
28750	MID	34	0	t	\N	\N	\N	\N	\N	Sigardian Savior	Creature	M
28780	EVE	57	0	\N	\N	\N	t	\N	\N	Hotheaded Giant	Creature	C
28800	GTC	48	0	\N	t	\N	\N	\N	\N	Scatter Arc	Instant	C
28812	DGM	59	0	\N	t	\N	\N	t	\N	Bred for the Hunt	Enchantment	U
28389	ALA	23	1	t	\N	\N	\N	\N	\N	Rockcaster Platoon	Creature	U
28856	ISD	49	0	\N	t	\N	\N	\N	\N	Curiosity	Enchantment	U
28863	MRD	48	0	\N	t	\N	\N	\N	\N	Regress	Instant	C
36701	NEO	45	0	\N	t	\N	\N	\N	\N	Anchor to Reality	Sorcery	U
28889	MRD	49	0	\N	t	\N	\N	\N	\N	Shared Fate	Enchantment	R
28892	WWK	58	0	\N	\N	t	\N	\N	\N	Jagwasp Swarm	Creature	C
28897	DKA	63	0	\N	\N	t	\N	\N	\N	Geralf's Messenger	Creature	R
28975	DKA	66	0	\N	\N	t	\N	\N	\N	Gruesome Discovery	Sorcery	C
29020	DGM	67	0	\N	\N	t	\N	t	\N	Drown in Filth	Sorcery	C
29021	SHM	46	0	\N	t	\N	\N	\N	\N	Prismwake Merrow	Creature	C
29035	BOK	72	0	\N	\N	t	\N	\N	\N	Kyoki, Sanity's Eclipse	Lgd. Creature	R
29064	ISD	57	0	\N	t	\N	\N	\N	\N	Frightful Delusion	Instant	C
36703	NEO	47	0	\N	t	\N	\N	\N	\N	Awakened Awareness	Enchantment	U
29095	MOR	67	0	\N	\N	t	\N	\N	\N	Moonglove Changeling	Creature	C
29096	ZEN	42	0	\N	t	\N	\N	\N	\N	Archmage Ascension	Enchantment	R
29109	SOK	67	0	\N	\N	t	\N	\N	\N	Exile into Darkness	Sorcery	U
29112	GTC	60	0	\N	\N	t	\N	\N	\N	Corpse Blockade	Creature	C
29144	EVE	71	0	\N	\N	\N	\N	t	\N	Nettle Sentinel	Creature	C
28794	ROE	42	1	t	\N	\N	\N	\N	\N	Repel the Darkness	Instant	C
28168	ROE	19	1	t	\N	\N	\N	\N	\N	Eland Umbra	Enchantment	C
28602	ZEN	23	1	t	\N	\N	\N	\N	\N	Kor Skyfisher	Creature	C
28866	WWK	57	1	\N	\N	t	\N	\N	\N	Death's Shadow	Creature	R
28580	WWK	46	1	\N	t	\N	\N	\N	\N	Wind Zendikon	Enchantment	C
29073	SHM	48	1	\N	t	\N	\N	\N	\N	Put Away	Instant	C
28248	LRW	23	1	t	\N	\N	\N	\N	\N	Kinsbaile Balloonist	Creature	C
28673	THS	30	1	t	\N	\N	\N	\N	\N	Setessan Griffin	Creature	C
28803	THS	35	1	t	\N	\N	\N	\N	\N	Vanquish the Foul	Sorcery	U
29011	THS	43	1	\N	t	\N	\N	\N	\N	Breaching Hippocamp	Creature	C
28787	SHM	37	1	\N	t	\N	\N	\N	\N	Faerie Swarm	Creature	U
36704	NEO	48	0	\N	t	\N	\N	\N	\N	Behold the Unspeakable // Vision of the Unspeakable	Enchantment	U
36705	NEO	49	0	\N	t	\N	\N	\N	\N	Covert Technician	Artifact Creature	U
36706	NEO	50	0	\N	t	\N	\N	\N	\N	Discover the Impossible	Instant	U
28129	THS	9	0	t	\N	\N	\N	\N	\N	Elspeth, Sun's Champion	Lgd. Planeswalker	M
28139	DGM	31	0	\N	\N	\N	t	\N	\N	Awe for the Guilds	Sorcery	C
28149	GTC	21	0	t	\N	\N	\N	\N	\N	Murder Investigation	Enchantment	U
28159	ZEN	4	0	t	\N	\N	\N	\N	\N	Brave the Elements	Instant	U
28169	RAV	19	0	t	\N	\N	\N	\N	\N	Gate Hound	Creature	C
28179	DKA	35	0	\N	t	\N	\N	\N	\N	Divination	Sorcery	C
28694	CHK	45	3	t	\N	\N	\N	\N	\N	Silent-Chant Zubera	Creature	C
28209	MRD	25	0	t	\N	\N	\N	\N	\N	Soul Nova	Instant	U
28219	BOK	40	0	\N	t	\N	\N	\N	\N	Kira, Great Glass-Spinner	Lgd. Creature	R
28239	SOK	34	0	\N	t	\N	\N	\N	\N	Dreamcatcher	Creature	C
28249	SOM	23	0	t	\N	\N	\N	\N	\N	Sunspear Shikari	Creature	C
28259	SOK	32	0	\N	t	\N	\N	\N	\N	Cut the Earthly Bond	Instant	C
28485	SOK	43	1	\N	t	\N	\N	\N	\N	Kiri-Onna	Creature	U
28279	GPT	38	0	\N	t	\N	\N	\N	\N	Torch Drake	Creature	C
28289	DGM	36	0	\N	\N	\N	t	\N	\N	Pyrewild Shaman	Creature	R
28309	DGM	37	0	\N	\N	\N	t	\N	\N	Riot Piker	Creature	C
28318	CON	43	0	\N	\N	t	\N	\N	\N	Dreadwing	Creature	U
28327	CHK	28	0	t	\N	\N	\N	\N	\N	Kitsune Mystic // Autumn-Tail, Kitsune Sage	Creature	R
28347	MRD	28	0	t	\N	\N	\N	\N	\N	Tempest of Light	Instant	U
28366	EVE	42	0	\N	\N	t	\N	\N	\N	Smoldering Butcher	Creature	C
28386	MID	19	0	t	\N	\N	\N	\N	\N	Flare of Faith	Instant	C
28405	CHK	33	0	t	\N	\N	\N	\N	\N	Masako the Humorless	Lgd. Creature	R
28415	ISD	32	0	t	\N	\N	\N	\N	\N	Slayer of the Wicked	Creature	U
28189	ALA	18	1	t	\N	\N	\N	\N	\N	Marble Chalice	Artifact	C
28376	SOK	38	3	\N	t	\N	\N	\N	\N	Freed from the Real	Enchantment	C
28444	RTR	25	0	t	\N	\N	\N	\N	\N	Sunspire Griffin	Creature	C
28454	LRW	31	0	t	\N	\N	\N	\N	\N	Mirror Entity	Creature	R
28464	MID	23	0	t	\N	\N	\N	\N	\N	Hedgewitch's Mask	Artifact	C
28475	SHM	25	0	t	\N	\N	\N	\N	\N	Twilight Shepherd	Creature	R
28495	RAV	29	0	t	\N	\N	\N	\N	\N	Screeching Griffin	Creature	C
28505	SOM	32	0	\N	t	\N	\N	\N	\N	Dissipation Field	Enchantment	R
28515	BOK	52	0	\N	t	\N	\N	\N	\N	Soratami Mindsweeper	Creature	U
28525	MRD	35	0	\N	t	\N	\N	\N	\N	Fabricate	Sorcery	U
28535	GPT	47	0	\N	\N	t	\N	\N	\N	Cryptwailing	Enchantment	U
28545	ALA	30	0	t	\N	\N	\N	\N	\N	Welkin Guide	Creature	C
36707	NEO	51	0	\N	t	\N	\N	\N	\N	Disruption Protocol	Instant	C
28585	DKA	51	0	\N	t	\N	\N	\N	\N	Stormbound Geist	Creature	C
28599	RAV	33	0	t	\N	\N	\N	\N	\N	Twilight Drover	Creature	R
28600	RTR	31	0	\N	t	\N	\N	\N	\N	Cancel	Instant	C
28611	DKA	52	0	\N	t	\N	\N	\N	\N	Thought Scour	Instant	C
28614	ARB	58	0	\N	\N	\N	t	t	\N	Predatory Advantage	Enchantment	R
28624	EVE	51	0	\N	\N	\N	t	\N	\N	Duergar Cave-Guard	Creature	U
28627	MOR	49	0	\N	t	\N	\N	\N	\N	Sigil Tracer	Creature	R
36708	NEO	52	0	\N	t	\N	\N	\N	\N	Essence Capture	Instant	U
36709	NEO	53	0	\N	t	\N	\N	\N	\N	Futurist Operative	Creature	U
28672	MID	31	0	t	\N	\N	\N	\N	\N	Ritual of Hope	Instant	U
28675	ALA	35	0	\N	t	\N	\N	\N	\N	Cloudheath Drake	Artifact Creature	C
28707	MRD	42	0	\N	t	\N	\N	\N	\N	March of the Machines	Enchantment	R
28710	WWK	51	0	\N	\N	t	\N	\N	\N	Bojuka Brigand	Creature	C
28715	DKA	56	0	\N	\N	t	\N	\N	\N	Curse of Misfortunes	Enchantment	R
28781	RAV	40	0	\N	t	\N	\N	\N	\N	Compulsive Research	Sorcery	C
28786	DGM	58	0	t	\N	\N	t	\N	\N	Boros Battleshaper	Creature	R
28795	GPT	57	0	\N	\N	t	\N	\N	\N	Poisonbelly Ogre	Creature	C
28797	SOK	55	0	\N	t	\N	\N	\N	\N	Shape Stealer	Creature	U
36710	NEO	54	0	\N	t	\N	\N	\N	\N	Futurist Sentinel	Artifact	C
28804	ISD	47	0	\N	t	\N	\N	\N	\N	Civilized Scholar // Homicidal Brute	Creature	U
28811	MRD	46	0	\N	t	\N	\N	\N	\N	Psychic Membrane	Creature	U
28815	CON	62	0	\N	\N	\N	t	\N	\N	Dragonsoul Knight	Creature	U
28818	LRW	45	0	t	\N	\N	\N	\N	\N	Triclopean Sight	Enchantment	C
28823	SOK	56	0	\N	t	\N	\N	\N	\N	Shifting Borders	Instant	U
28833	RAV	42	0	\N	t	\N	\N	\N	\N	Copy Enchantment	Enchantment	R
28838	DGM	60	0	t	\N	\N	\N	t	\N	Bronzebeak Moa	Creature	U
28864	DGM	61	0	\N	\N	t	t	\N	\N	Carnage Gladiator	Creature	U
28878	GTC	51	0	\N	t	\N	\N	\N	\N	Skygames	Enchantment	C
28884	EVE	61	0	\N	\N	\N	t	\N	\N	Rekindled Flame	Sorcery	R
28885	RAV	44	0	\N	t	\N	\N	\N	\N	Drake Familiar	Creature	C
28908	ISD	51	0	\N	t	\N	\N	\N	\N	Delver of Secrets // Insectile Aberration	Creature	C
28927	SOK	60	0	\N	t	\N	\N	\N	\N	Twincast	Instant	R
28936	EVE	63	0	\N	\N	\N	t	\N	\N	Thunderblust	Creature	R
28950	ROE	48	0	t	\N	\N	\N	\N	\N	Survival Cache	Sorcery	U
28965	MOR	62	0	\N	\N	t	\N	\N	\N	Festercreep	Creature	C
28966	ZEN	37	0	t	\N	\N	\N	\N	\N	Sunspring Expedition	Enchantment	C
28970	WWK	61	0	\N	\N	t	\N	\N	\N	Nemesis Trap	Instant	U
28994	DGM	66	0	\N	t	\N	t	\N	\N	Dragonshift	Instant	R
28396	SHM	22	4	t	\N	\N	\N	\N	\N	Safehold Sentry	Creature	C
28356	WWK	39	1	\N	t	\N	\N	\N	\N	Surrakar Banisher	Creature	C
28971	CON	68	2	\N	\N	\N	t	\N	\N	Maniacal Rage	Enchantment	C
28839	SHM	39	1	\N	t	\N	\N	\N	\N	Ghastly Discovery	Sorcery	C
28943	SHM	43	1	\N	t	\N	\N	\N	\N	Leech Bonder	Creature	U
28575	MOR	47	1	\N	t	\N	\N	\N	\N	Sage of Fables	Creature	U
28705	MOR	52	3	\N	t	\N	\N	\N	\N	Stream of Unconsciousness	Tribal Instant	C
28900	ARB	69	1	t	\N	\N	\N	t	\N	Grizzled Leotau	Creature	C
28337	ARB	46	1	\N	\N	t	t	\N	\N	Terminate	Instant	C
28229	ROE	24	2	t	\N	\N	\N	\N	\N	Harmless Assault	Instant	C
28299	CON	42	2	\N	\N	t	\N	\N	\N	Drag Down	Instant	C
28855	THS	37	1	t	\N	\N	\N	\N	\N	Yoked Ox	Creature	C
28907	THS	39	1	\N	t	\N	\N	\N	\N	Aqueous Form	Enchantment	C
28985	THS	42	1	\N	t	\N	\N	\N	\N	Bident of Thassa	Lgd. Enchantment Artifact	R
28865	SHM	40	1	\N	t	\N	\N	\N	\N	Isleback Spawn	Creature	R
28555	CON	52	2	\N	\N	t	\N	\N	\N	Salvage Slasher	Artifact Creature	C
36713	NEO	57	0	\N	t	\N	\N	\N	\N	Inventive Iteration // Living Breakthrough	Enchantment	R
36714	NEO	58	0	\N	t	\N	\N	\N	\N	Invoke the Winds	Sorcery	R
36711	NEO	55	1	\N	t	\N	\N	\N	\N	Go-Shintai of Lost Wisdom	Lgd. Enchantment Creature	U
28132	DGM	33	0	\N	\N	\N	t	\N	\N	Maze Rusher	Creature	C
28135	SOM	16	0	t	\N	\N	\N	\N	\N	Myrsmith	Creature	U
28141	GPT	31	0	\N	t	\N	\N	\N	\N	Quicken	Instant	R
28314	SOK	37	1	\N	\N	\N	\N	\N	\N	Evermind	Instant	U
28151	MRD	21	0	t	\N	\N	\N	\N	\N	Skyhunter Cub	Creature	C
28155	BOK	38	0	\N	t	\N	\N	\N	\N	Jetting Glasskite	Creature	U
28538	CHK	39	2	t	\N	\N	\N	\N	\N	Quiet Purity	Instant	C
28165	ARB	40	0	\N	\N	t	t	\N	\N	Igneous Pouncer	Creature	C
28171	RTR	19	0	t	\N	\N	\N	\N	\N	Rootborn Defenses	Instant	C
28175	ROE	20	0	t	\N	\N	\N	\N	\N	Emerge Unscathed	Instant	U
28182	GPT	35	0	\N	t	\N	\N	\N	\N	Steamcore Weird	Creature	C
28192	MID	18	0	t	\N	\N	\N	\N	\N	Fateful Absence	Instant	R
28202	WWK	33	0	\N	t	\N	\N	\N	\N	Mysteries of the Deep	Instant	C
28205	CHK	31	0	t	\N	\N	\N	\N	\N	Konda's Hatamoto	Creature	U
28212	BOK	39	0	\N	t	\N	\N	\N	\N	Kaijin of the Vanishing Touch	Creature	U
28215	DGM	39	0	\N	\N	\N	t	\N	\N	Smelt-Ward Gatekeepers	Creature	C
28222	DGM	40	0	\N	\N	\N	t	\N	\N	Weapon Surge	Instant	C
28225	ISD	24	0	t	\N	\N	\N	\N	\N	Moment of Heroism	Instant	C
28232	ZEN	12	0	t	\N	\N	\N	\N	\N	Felidar Sovereign	Creature	M
28235	EVE	34	0	\N	\N	t	\N	\N	\N	Creakwood Ghoul	Creature	U
28242	RTR	16	0	t	\N	\N	\N	\N	\N	Phantom General	Creature	U
28244	MID	16	0	t	\N	\N	\N	\N	\N	Duelcraft Trainer	Creature	U
28252	RAV	17	0	t	\N	\N	\N	\N	\N	Festival of the Guildpact	Instant	U
28254	RTR	17	0	t	\N	\N	\N	\N	\N	Precinct Captain	Creature	R
28272	SHM	14	0	t	\N	\N	\N	\N	\N	Mistmeadow Skulk	Creature	U
28274	THS	14	0	t	\N	\N	\N	\N	\N	Gift of Immortality	Enchantment	R
28282	LRW	21	0	t	\N	\N	\N	\N	\N	Hoofprints of the Stag	Tribal Enchantment	R
28284	ROE	21	0	t	\N	\N	\N	\N	\N	Gideon Jura	Lgd. Planeswalker	M
28185	SOK	35	1	\N	t	\N	\N	\N	\N	Erayo, Soratami Ascendant // Erayo's Essence	Lgd. Creature	R
28294	SOK	36	0	\N	t	\N	\N	\N	\N	Eternal Dominion	Sorcery	R
28302	ISD	26	0	t	\N	\N	\N	\N	\N	Paraselene	Sorcery	U
28195	BOK	41	1	\N	t	\N	\N	\N	\N	Minamo Sightbender	Creature	U
28322	MRD	27	0	t	\N	\N	\N	\N	\N	Taj-Nar Swordsmith	Creature	U
28324	ARB	44	0	\N	\N	t	t	\N	\N	Sanity Gnawers	Creature	U
36715	NEO	59	0	\N	t	\N	\N	\N	\N	Jin-Gitaxias, Progress Tyrant	Lgd. Creature	M
28334	CHK	29	0	t	\N	\N	\N	\N	\N	Kitsune Riftwalker	Creature	C
28342	ZEN	13	0	t	\N	\N	\N	\N	\N	Iona, Shield of Emeria	Lgd. Creature	M
28344	EVE	41	0	\N	\N	t	\N	\N	\N	Raven's Crime	Sorcery	C
28352	WWK	37	0	\N	t	\N	\N	\N	\N	Selective Memory	Sorcery	R
28354	MOR	39	0	\N	t	\N	\N	\N	\N	Latchkey Faerie	Creature	C
28362	SOM	27	0	t	\N	\N	\N	\N	\N	Whitesun's Passage	Instant	C
28365	DGM	42	0	\N	\N	\N	\N	t	\N	Kraul Warrior	Creature	C
36716	NEO	60	0	\N	t	\N	\N	\N	\N	Kairi, the Swirling Sky	Lgd. Creature	M
28382	BOK	46	0	\N	t	\N	\N	\N	\N	Phantom Wings	Enchantment	C
28385	BOK	47	0	\N	t	\N	\N	\N	\N	Quash	Instant	U
28392	MRD	30	0	\N	t	\N	\N	\N	\N	Assert Authority	Instant	U
28395	RTR	22	0	t	\N	\N	\N	\N	\N	Seller of Songbirds	Creature	C
28402	DKA	43	0	\N	t	\N	\N	\N	\N	Nephalia Seakite	Creature	C
28406	ZEN	15	0	t	\N	\N	\N	\N	\N	Kabira Evangel	Creature	R
28412	MID	21	0	t	\N	\N	\N	\N	\N	Gavony Silversmith	Creature	C
28416	EVE	43	0	\N	\N	t	\N	\N	\N	Soot Imp	Creature	U
28426	CON	47	0	\N	\N	t	\N	\N	\N	Infectious Horror	Creature	C
28432	ARB	51	0	\N	\N	\N	t	t	\N	Colossal Might	Instant	C
28436	GTC	34	0	\N	t	\N	\N	\N	\N	Enter the Infinite	Sorcery	M
28442	EVE	44	0	\N	\N	t	\N	\N	\N	Soul Reap	Sorcery	C
28446	ZEN	17	0	t	\N	\N	\N	\N	\N	Kor Aeronaut	Creature	U
36717	NEO	61	0	\N	t	\N	\N	\N	\N	March of Swirling Mist	Instant	R
36718	NEO	62	0	\N	t	\N	\N	\N	\N	Mindlink Mech	Artifact	R
28462	GTC	35	0	\N	t	\N	\N	\N	\N	Frilled Oculus	Creature	C
28467	ALA	27	0	t	\N	\N	\N	\N	\N	Sigiled Paladin	Creature	U
28473	MRD	33	0	\N	t	\N	\N	\N	\N	Domineer	Enchantment	U
28483	GPT	45	0	\N	\N	t	\N	\N	\N	Cremate	Instant	C
28488	GTC	36	0	\N	t	\N	\N	\N	\N	Gridlock	Instant	U
28493	ALA	28	0	t	\N	\N	\N	\N	\N	Soul's Grace	Instant	C
28498	ZEN	19	0	t	\N	\N	\N	\N	\N	Kor Duelist	Creature	U
28503	CON	50	0	\N	\N	t	\N	\N	\N	Pestilent Kathari	Creature	C
28514	GTC	37	0	\N	t	\N	\N	\N	\N	Hands of Binding	Sorcery	C
28518	ISD	36	0	t	\N	\N	\N	\N	\N	Stony Silence	Enchantment	R
28528	WWK	44	0	\N	t	\N	\N	\N	\N	Vapor Snare	Enchantment	U
28534	ROE	32	0	t	\N	\N	\N	\N	\N	Lightmine Field	Enchantment	R
28544	ISD	37	0	t	\N	\N	\N	\N	\N	Thraben Purebloods	Creature	C
28548	RTR	29	0	\N	t	\N	\N	\N	\N	Aquus Steed	Creature	U
28554	WWK	45	0	\N	t	\N	\N	\N	\N	Voyager Drake	Creature	U
28558	LRW	35	0	t	\N	\N	\N	\N	\N	Plover Knights	Creature	C
28564	CHK	40	0	t	\N	\N	\N	\N	\N	Reciprocate	Instant	U
28568	MID	27	0	t	\N	\N	\N	\N	\N	Lunarch Veteran // Luminous Phantom	Creature	C
28573	RAV	32	0	t	\N	\N	\N	\N	\N	Three Dreams	Sorcery	R
28578	DGM	50	0	\N	\N	\N	\N	t	\N	Thrashing Mossdog	Creature	C
28583	SOM	35	0	\N	t	\N	\N	\N	\N	Inexorable Tide	Enchantment	R
28588	ARB	57	0	\N	\N	\N	t	t	\N	Mage Slayer	Artifact	U
28592	GTC	40	0	\N	t	\N	\N	\N	\N	Last Thoughts	Sorcery	C
28604	DGM	51	0	t	\N	\N	\N	t	\N	Advent of the Wurm	Instant	R
28609	SOM	36	0	\N	t	\N	\N	\N	\N	Lumengrid Drake	Creature	C
28616	CHK	42	0	t	\N	\N	\N	\N	\N	Samurai Enforcers	Creature	U
28372	MOR	40	1	\N	t	\N	\N	\N	\N	Merrow Witsniper	Creature	C
28508	ROE	31	1	t	\N	\N	\N	\N	\N	Kor Spiritdancer	Creature	R
28422	MRD	31	1	\N	t	\N	\N	\N	\N	Broodstar	Creature	R
28262	SHM	15	1	t	\N	\N	\N	\N	\N	Niveous Wisps	Instant	C
28304	LRW	26	1	t	\N	\N	\N	\N	\N	Kithkin Harbinger	Creature	U
28595	THS	27	1	t	\N	\N	\N	\N	\N	Ray of Dissolution	Instant	C
28264	THS	15	1	t	\N	\N	\N	\N	\N	Glare of Heresy	Sorcery	U
28524	ZEN	20	2	t	\N	\N	\N	\N	\N	Kor Hookmaster	Creature	C
36721	NEO	65	0	\N	t	\N	\N	\N	\N	Mobilizer Mech	Artifact	U
36722	NEO	66	0	\N	t	\N	\N	\N	\N	The Modern Age // Vector Glider	Enchantment	C
36720	NEO	64	1	\N	t	\N	\N	\N	\N	Mnemonic Sphere	Artifact	C
28133	EVE	33	0	\N	\N	t	\N	\N	\N	Ashling, the Extinguisher	Lgd. Creature	R
28409	BOK	48	1	\N	t	\N	\N	\N	\N	Quillmane Baku	Creature	C
28378	CHK	32	1	t	\N	\N	\N	\N	\N	Lantern Kami	Creature	C
28146	BOK	37	0	\N	t	\N	\N	\N	\N	Higure, the Still Wind	Lgd. Creature	R
28152	ZEN	3	0	t	\N	\N	\N	\N	\N	Bold Defense	Instant	C
28156	CHK	22	0	t	\N	\N	\N	\N	\N	Kami of Old Stone	Creature	U
28172	SHM	19	0	t	\N	\N	\N	\N	\N	Resplendent Mentor	Creature	U
28176	RAV	20	0	t	\N	\N	\N	\N	\N	Ghosts of the Innocent	Creature	R
28181	EVE	35	0	\N	\N	t	\N	\N	\N	Crumbling Ashes	Enchantment	U
28186	WWK	35	0	\N	t	\N	\N	\N	\N	Quest for Ula's Temple	Enchantment	R
28191	SHM	18	0	t	\N	\N	\N	\N	\N	Prison Term	Enchantment	U
28196	CON	41	0	\N	\N	t	\N	\N	\N	Corrupted Roots	Enchantment	U
28201	SOK	33	0	\N	t	\N	\N	\N	\N	Descendant of Soramaro	Creature	C
28206	CHK	25	0	t	\N	\N	\N	\N	\N	Kitsune Blademaster	Creature	C
28211	SOM	25	0	t	\N	\N	\N	\N	\N	True Conviction	Enchantment	R
28216	EVE	39	0	\N	\N	t	\N	\N	\N	Needle Specter	Creature	R
28221	DKA	40	0	\N	t	\N	\N	\N	\N	Headless Skaab	Creature	C
28226	MRD	24	0	t	\N	\N	\N	\N	\N	Solar Tide	Sorcery	R
28236	GPT	34	0	\N	t	\N	\N	\N	\N	Sky Swallower	Creature	R
28241	ALA	16	0	t	\N	\N	\N	\N	\N	Knight of the White Orchid	Creature	R
28246	ISD	23	0	t	\N	\N	\N	\N	\N	Mikaeus, the Lunarch	Lgd. Creature	M
28251	RAV	23	0	t	\N	\N	\N	\N	\N	Leave No Trace	Instant	C
28256	MID	17	0	t	\N	\N	\N	\N	\N	Enduring Angel // Angelic Enforcer	Creature	M
28261	RTR	15	0	t	\N	\N	\N	\N	\N	Palisade Giant	Creature	R
28271	ALA	22	0	t	\N	\N	\N	\N	\N	Resounding Silence	Instant	C
28277	DGM	38	0	\N	\N	\N	t	\N	\N	Rubblebelt Maaka	Creature	C
28281	MOR	38	0	\N	t	\N	\N	\N	\N	Knowledge Exploitation	Tribal Sorcery	R
28287	RTR	21	0	t	\N	\N	\N	\N	\N	Selesnya Sentry	Creature	C
28291	GPT	36	0	\N	t	\N	\N	\N	\N	Stratozeppelid	Creature	U
28166	CHK	24	1	t	\N	\N	\N	\N	\N	Kami of the Palace Fields	Creature	U
28301	GTC	26	0	t	\N	\N	\N	\N	\N	Syndic of Tithes	Creature	C
28307	ZEN	8	0	t	\N	\N	\N	\N	\N	Conqueror's Pledge	Sorcery	R
28311	GPT	37	0	\N	t	\N	\N	\N	\N	Thunderheads	Instant	U
28321	ISD	27	0	t	\N	\N	\N	\N	\N	Purify the Grave	Instant	U
28328	GTC	28	0	t	\N	\N	\N	\N	\N	Zarichi Tiger	Creature	C
28317	BOK	43	1	\N	t	\N	\N	\N	\N	Mistblade Shinobi	Creature	C
28341	ARB	47	0	\N	\N	t	t	\N	\N	Thought Hemorrhage	Sorcery	R
28348	LRW	28	0	t	\N	\N	\N	\N	\N	Knight of Meadowgrain	Creature	U
28351	MID	20	0	t	\N	\N	\N	\N	\N	Gavony Dawnguard	Creature	U
28358	DKA	44	0	\N	t	\N	\N	\N	\N	Niblis of the Breath	Creature	U
28361	LRW	27	0	t	\N	\N	\N	\N	\N	Kithkin Healer	Creature	C
28489	BOK	51	1	\N	t	\N	\N	\N	\N	Shimmering Glasskite	Creature	C
28380	GTC	31	0	\N	t	\N	\N	\N	\N	Clinging Anemones	Creature	C
28390	RTR	23	0	t	\N	\N	\N	\N	\N	Soul Tithe	Enchantment	U
28398	MRD	29	0	\N	t	\N	\N	\N	\N	Annul	Instant	C
28399	LRW	29	0	t	\N	\N	\N	\N	\N	Lairwatch Giant	Creature	C
28417	RAV	26	0	t	\N	\N	\N	\N	\N	Nightguard Patrol	Creature	C
28419	RTR	24	0	t	\N	\N	\N	\N	\N	Sphere of Safety	Enchantment	U
28428	LRW	30	0	t	\N	\N	\N	\N	\N	Militia's Pride	Tribal Enchantment	R
28429	DKA	45	0	\N	t	\N	\N	\N	\N	Relentless Skaabs	Creature	U
28437	BOK	49	0	\N	t	\N	\N	\N	\N	Reduce to Dreams	Sorcery	R
28448	DGM	45	0	\N	\N	\N	\N	t	\N	Mutant's Prey	Instant	C
28458	ARB	52	0	\N	\N	\N	t	t	\N	Deadshot Minotaur	Creature	C
28468	EVE	45	0	\N	\N	t	\N	\N	\N	Soul Snuffers	Creature	U
28469	RAV	28	0	t	\N	\N	\N	\N	\N	Sandsower	Creature	U
28477	CON	49	0	\N	\N	t	\N	\N	\N	Nyxathid	Creature	R
28479	SOM	31	0	\N	t	\N	\N	\N	\N	Disperse	Instant	C
28162	CHK	23	3	t	\N	\N	\N	\N	\N	Kami of the Painted Road	Creature	C
28499	MRD	34	0	\N	t	\N	\N	\N	\N	Dream's Grip	Instant	C
28507	DKA	48	0	\N	t	\N	\N	\N	\N	Secrets of the Dead	Enchantment	U
28509	GPT	46	0	\N	\N	t	\N	\N	\N	Cry of Contrition	Sorcery	C
28519	ALA	29	0	t	\N	\N	\N	\N	\N	Sunseed Nurturer	Creature	U
28526	DGM	48	0	\N	\N	\N	\N	t	\N	Saruli Gatekeepers	Creature	C
28529	CON	51	0	\N	\N	t	\N	\N	\N	Rotting Rats	Creature	C
28408	CHK	34	1	t	\N	\N	\N	\N	\N	Mothrider Samurai	Creature	C
28546	EVE	48	0	\N	\N	t	\N	\N	\N	Umbra Stalker	Creature	R
28593	BOK	55	2	\N	t	\N	\N	\N	\N	Teardrop Kami	Creature	C
28559	DKA	50	0	\N	t	\N	\N	\N	\N	Soul Seizer // Ghastly Haunting	Creature	U
28567	BOK	54	0	\N	t	\N	\N	\N	\N	Sway of the Stars	Sorcery	R
28577	MRD	37	0	\N	t	\N	\N	\N	\N	Inertia Bubble	Enchantment	C
28587	GPT	49	0	\N	\N	t	\N	\N	\N	Douse in Gloom	Instant	C
28459	SOK	42	1	\N	t	\N	\N	\N	\N	Kami of the Crescent Moon	Lgd. Creature	R
28368	ROE	25	1	t	\N	\N	\N	\N	\N	Hedron-Field Purists	Creature	R
28266	MRD	22	1	t	\N	\N	\N	\N	\N	Skyhunter Patrol	Creature	C
28589	SOK	47	1	\N	t	\N	\N	\N	\N	Murmurs from Beyond	Instant	C
28579	SHM	29	0	\N	t	\N	\N	\N	\N	Biting Tether	Enchantment	U
28497	MOR	44	1	\N	t	\N	\N	\N	\N	Nevermaker	Creature	U
28549	MOR	46	1	\N	t	\N	\N	\N	\N	Research the Deep	Sorcery	U
28331	ARB	45	1	\N	\N	t	t	\N	\N	Singe-Mind Ogre	Creature	C
28536	ARB	55	1	\N	\N	\N	t	t	\N	Godtracker of Jund	Creature	C
28439	THS	21	1	t	\N	\N	\N	\N	\N	Lagonna-Band Elder	Creature	C
28517	THS	24	1	t	\N	\N	\N	\N	\N	Observant Alseid	Enchantment Creature	C
28388	THS	18	1	t	\N	\N	\N	\N	\N	Heliod's Emissary	Enchantment Creature	U
28569	THS	26	1	t	\N	\N	\N	\N	\N	Phalanx Leader	Creature	U
28231	THS	12	1	t	\N	\N	\N	\N	\N	Fabled Hero	Creature	R
28449	SHM	24	2	t	\N	\N	\N	\N	\N	Strip Bare	Instant	C
36724	NEO	68	0	\N	t	\N	\N	\N	\N	Moonfolk Puzzlemaker	Artifact Creature	C
36725	NEO	69	0	\N	t	\N	\N	\N	\N	Moonsnare Prototype	Artifact	C
36727	NEO	71	0	\N	t	\N	\N	\N	\N	Network Disruptor	Artifact Creature	C
36728	NEO	72	0	\N	t	\N	\N	\N	\N	Planar Incision	Instant	C
36729	NEO	73	0	\N	t	\N	\N	\N	\N	Prosperous Thief	Creature	U
36726	NEO	70	1	\N	t	\N	\N	\N	\N	Moonsnare Specialist	Creature	C
28137	RAV	16	0	t	\N	\N	\N	\N	\N	Faith's Fetters	Enchantment	C
28143	MOR	31	0	\N	t	\N	\N	\N	\N	Disperse	Instant	C
28157	GTC	22	0	t	\N	\N	\N	\N	\N	Nav Squad Commandos	Creature	C
28163	GTC	23	0	t	\N	\N	\N	\N	\N	Righteous Charge	Sorcery	U
28177	ALA	20	0	t	\N	\N	\N	\N	\N	Oblivion Ring	Enchantment	C
28533	DKA	49	3	\N	t	\N	\N	\N	\N	Shriekgeist	Creature	C
28187	ROE	18	0	t	\N	\N	\N	\N	\N	Demystify	Instant	C
28197	DKA	41	0	\N	t	\N	\N	\N	\N	Increasing Confusion	Sorcery	R
28203	SOK	31	0	\N	t	\N	\N	\N	\N	Cloudhoof Kirin	Lgd. Creature	R
28207	GTC	25	0	t	\N	\N	\N	\N	\N	Smite	Instant	C
28213	CON	39	0	\N	t	\N	\N	\N	\N	Worldly Counsel	Instant	C
28217	GPT	39	0	\N	t	\N	\N	\N	\N	Train of Thought	Sorcery	C
28223	EVE	40	0	\N	\N	t	\N	\N	\N	Nightmare Incursion	Sorcery	R
28227	LRW	24	0	t	\N	\N	\N	\N	\N	Kinsbaile Skirmisher	Creature	C
28563	SOK	46	1	\N	t	\N	\N	\N	\N	Moonbow Illusionist	Creature	C
28247	MRD	23	0	t	\N	\N	\N	\N	\N	Slith Ascendant	Creature	U
28255	SHM	17	0	t	\N	\N	\N	\N	\N	Pale Wayfarer	Creature	U
28257	THS	17	0	t	\N	\N	\N	\N	\N	Heliod, God of the Sun	Lgd. Enchantment Creature	M
28265	ZEN	7	0	t	\N	\N	\N	\N	\N	Cliff Threader	Creature	C
28276	DKA	38	0	\N	t	\N	\N	\N	\N	Griptide	Instant	C
28285	RAV	21	0	t	\N	\N	\N	\N	\N	Hour of Reckoning	Sorcery	R
28286	ALA	21	0	t	\N	\N	\N	\N	\N	Ranger of Eos	Creature	R
28296	ARB	42	0	\N	\N	t	t	\N	\N	Lightning Reaver	Creature	R
28305	MID	13	0	t	\N	\N	\N	\N	\N	Chaplain of Alms // Chapel Shieldgeist	Creature	U
28537	SOK	45	1	\N	t	\N	\N	\N	\N	Minamo Scrollkeeper	Creature	C
28615	SOK	48	2	\N	t	\N	\N	\N	\N	Oboro Breezecaller	Creature	C
28326	BOK	44	0	\N	t	\N	\N	\N	\N	Ninja of the Deep Hours	Creature	C
28335	GTC	29	0	\N	t	\N	\N	\N	\N	Aetherize	Instant	U
28336	ISD	29	0	t	\N	\N	\N	\N	\N	Rebuke	Instant	C
28345	GPT	41	0	\N	t	\N	\N	\N	\N	Vedalken Plotter	Creature	U
36730	NEO	74	0	\N	t	\N	\N	\N	\N	The Reality Chip	Lgd. Artifact Creature	R
28355	SOK	39	0	\N	t	\N	\N	\N	\N	Ghost-Lit Warder	Creature	U
28357	CON	44	0	\N	\N	t	\N	\N	\N	Extractor Demon	Creature	R
28364	DKA	42	0	\N	t	\N	\N	\N	\N	Mystic Retrieval	Sorcery	U
28367	GPT	42	0	\N	t	\N	\N	\N	\N	Vertigo Spawn	Creature	U
28374	ARB	48	0	\N	\N	t	t	\N	\N	Veinfire Borderpost	Artifact	C
28377	WWK	38	0	\N	t	\N	\N	\N	\N	Spell Contortion	Instant	U
28394	ALA	24	0	t	\N	\N	\N	\N	\N	Sanctum Gargoyle	Artifact Creature	C
28397	ZEN	14	0	t	\N	\N	\N	\N	\N	Journey to Nowhere	Enchantment	C
28407	ARB	50	0	\N	\N	\N	t	t	\N	Bloodbraid Elf	Creature	U
28423	WWK	40	0	\N	t	\N	\N	\N	\N	Thada Adel, Acquisitor	Lgd. Creature	R
36732	NEO	76	0	\N	t	\N	\N	\N	\N	Replication Specialist	Creature	U
28434	CHK	35	0	t	\N	\N	\N	\N	\N	Myojin of Cleansing Fire	Lgd. Creature	R
28438	MID	22	0	t	\N	\N	\N	\N	\N	Gavony Trapper	Creature	C
28445	MOR	42	0	\N	t	\N	\N	\N	\N	Mothdust Changeling	Creature	C
28447	MRD	32	0	\N	t	\N	\N	\N	\N	Disarm	Instant	C
28455	DKA	46	0	\N	t	\N	\N	\N	\N	Saving Grasp	Instant	C
28457	GPT	44	0	\N	\N	t	\N	\N	\N	Caustic Rain	Sorcery	U
28466	ISD	34	0	t	\N	\N	\N	\N	\N	Spare from Evil	Instant	C
28474	DGM	46	0	\N	\N	\N	\N	t	\N	Phytoburst	Sorcery	C
28476	WWK	42	0	\N	t	\N	\N	\N	\N	Treasure Hunt	Sorcery	C
28484	ARB	53	0	\N	\N	\N	t	t	\N	Dragon Broodmother	Creature	M
28486	CHK	37	0	t	\N	\N	\N	\N	\N	Otherworldly Journey	Instant	U
28494	EVE	46	0	\N	\N	t	\N	\N	\N	Syphon Life	Sorcery	U
28496	RTR	27	0	t	\N	\N	\N	\N	\N	Trained Caracal	Creature	C
28506	LRW	33	0	t	\N	\N	\N	\N	\N	Oaken Brawler	Creature	C
36734	NEO	78	0	\N	t	\N	\N	\N	\N	Short Circuit	Enchantment	C
28516	MID	25	0	t	\N	\N	\N	\N	\N	Intrepid Adversary	Creature	M
28523	MOR	45	0	\N	t	\N	\N	\N	\N	Notorious Throng	Tribal Sorcery	R
28547	RAV	31	0	t	\N	\N	\N	\N	\N	Suppression Field	Enchantment	U
28566	GTC	39	0	\N	t	\N	\N	\N	\N	Keymaster Rogue	Creature	C
28574	RTR	30	0	\N	t	\N	\N	\N	\N	Blustersquall	Instant	U
28584	LRW	36	0	t	\N	\N	\N	\N	\N	Pollen Lullaby	Instant	U
36735	NEO	79	0	\N	t	\N	\N	\N	\N	Skyswimmer Koi	Creature	C
28598	EVE	50	0	\N	\N	\N	t	\N	\N	Cinder Pyromancer	Creature	C
28601	MOR	48	0	\N	t	\N	\N	\N	\N	Sage's Dousing	Tribal Instant	U
28610	LRW	37	0	t	\N	\N	\N	\N	\N	Purity	Creature	R
28619	BOK	56	0	\N	t	\N	\N	\N	\N	Threads of Disloyalty	Enchantment	R
28418	MOR	41	1	\N	t	\N	\N	\N	\N	Mind Spring	Sorcery	R
28295	WWK	36	1	\N	t	\N	\N	\N	\N	Sejiri Merfolk	Creature	U
28167	SOM	19	1	t	\N	\N	\N	\N	\N	Salvage Scout	Creature	C
28557	SOM	34	1	\N	t	\N	\N	\N	\N	Halt Order	Instant	U
28527	SHM	27	1	t	\N	\N	\N	\N	\N	Woeleecher	Creature	C
28404	ARB	49	0	\N	\N	\N	t	t	\N	Blitz Hellion	Creature	R
28553	SHM	28	1	\N	t	\N	\N	\N	\N	Advice from the Fae	Sorcery	U
28267	LRW	22	1	t	\N	\N	\N	\N	\N	Judge of Currents	Creature	C
28173	LRW	20	1	t	\N	\N	\N	\N	\N	Hillcomber Giant	Creature	C
28134	LRW	16	1	t	\N	\N	\N	\N	\N	Goldmeadow Dodger	Creature	C
28315	ARB	43	1	\N	\N	t	t	\N	\N	Monstrous Carabid	Creature	C
28193	ARB	41	1	\N	\N	t	t	\N	\N	Kathari Bomber	Creature	C
28153	ARB	38	1	\N	\N	t	t	\N	\N	Demonic Dread	Sorcery	C
28275	CON	38	1	\N	t	\N	\N	\N	\N	View from Above	Instant	U
28147	CON	37	1	\N	t	\N	\N	\N	\N	Unsummon	Instant	C
28233	THS	11	1	t	\N	\N	\N	\N	\N	Evangel of Heliod	Creature	U
28413	THS	20	1	t	\N	\N	\N	\N	\N	Hundred-Handed One	Creature	R
28306	THS	13	1	t	\N	\N	\N	\N	\N	Favored Hoplite	Creature	U
28465	THS	22	1	t	\N	\N	\N	\N	\N	Last Breath	Instant	C
28245	THS	16	1	t	\N	\N	\N	\N	\N	Gods Willing	Instant	C
28543	THS	25	1	t	\N	\N	\N	\N	\N	Ordeal of Heliod	Enchantment	U
28387	THS	19	1	t	\N	\N	\N	\N	\N	Hopeful Eidolon	Enchantment Creature	C
28576	ZEN	22	2	t	\N	\N	\N	\N	\N	Kor Sanctifiers	Creature	C
36736	NEO	80	0	\N	t	\N	\N	\N	\N	Spell Pierce	Instant	C
36737	NEO	81	1	\N	t	\N	\N	\N	\N	Suit Up	Instant	C
36733	NEO	77	2	\N	t	\N	\N	\N	\N	Saiba Trespassers	Artifact Creature	C
28140	EVE	31	0	\N	t	\N	\N	\N	\N	Wake Thrasher	Creature	R
28150	ISD	21	0	t	\N	\N	\N	\N	\N	Mentor of the Meek	Creature	R
28160	ARB	39	0	\N	\N	t	t	\N	\N	Demonspine Whip	Artifact	U
28170	ALA	19	0	t	\N	\N	\N	\N	\N	Metallurgeon	Artifact Creature	U
28180	DGM	35	0	\N	\N	\N	t	\N	\N	Punish the Enemy	Instant	C
28190	RTR	18	0	t	\N	\N	\N	\N	\N	Rest in Peace	Enchantment	R
28230	MID	12	0	t	\N	\N	\N	\N	\N	Celestus Sanctifier	Creature	C
28240	WWK	34	0	\N	t	\N	\N	\N	\N	Permafrost Trap	Instant	U
29006	CHK	57	1	\N	t	\N	\N	\N	\N	Dampen Thought	Instant	U
28260	WWK	32	0	\N	t	\N	\N	\N	\N	Jwari Shapeshifter	Creature	R
28270	RAV	22	0	t	\N	\N	\N	\N	\N	Hunted Lammasu	Creature	R
28512	CHK	38	2	t	\N	\N	\N	\N	\N	Pious Kitsune	Creature	C
28290	EVE	36	0	\N	\N	t	\N	\N	\N	Lingering Tormentor	Creature	U
28300	CHK	26	0	t	\N	\N	\N	\N	\N	Kitsune Diviner	Creature	C
28310	EVE	37	0	\N	\N	t	\N	\N	\N	Merrow Bonegnawer	Creature	C
28320	GTC	27	0	t	\N	\N	\N	\N	\N	Urbis Protector	Creature	U
28330	ZEN	10	0	t	\N	\N	\N	\N	\N	Devout Lightcaster	Creature	R
28340	GTC	30	0	\N	t	\N	\N	\N	\N	Agoraphobia	Enchantment	U
28360	ROE	26	0	t	\N	\N	\N	\N	\N	Hyena Umbra	Enchantment	C
28370	GPT	40	0	\N	t	\N	\N	\N	\N	Vacuumelt	Sorcery	U
28381	ISD	31	0	t	\N	\N	\N	\N	\N	Silverchase Fox	Creature	C
28391	ISD	30	0	t	\N	\N	\N	\N	\N	Selfless Cathar	Creature	C
28401	CON	45	0	\N	\N	t	\N	\N	\N	Fleshformer	Creature	U
28411	GTC	33	0	\N	t	\N	\N	\N	\N	Diluvian Primordial	Creature	R
28420	ZEN	16	0	t	\N	\N	\N	\N	\N	Kazandu Blademaster	Creature	U
28431	GPT	43	0	\N	\N	t	\N	\N	\N	Abyssal Nocturnus	Creature	R
28441	ALA	26	0	t	\N	\N	\N	\N	\N	Sighted-Caste Sorcerer	Creature	C
28451	CON	48	0	\N	\N	t	\N	\N	\N	Kederekt Parasite	Creature	R
28481	DKA	47	0	\N	t	\N	\N	\N	\N	Screeching Skaab	Creature	C
28492	ISD	35	0	t	\N	\N	\N	\N	\N	Spectral Rider	Creature	U
28502	WWK	43	0	\N	t	\N	\N	\N	\N	Twitch	Instant	C
28521	RAV	30	0	t	\N	\N	\N	\N	\N	Seed Spark	Instant	U
28531	SOM	33	0	\N	t	\N	\N	\N	\N	Grand Architect	Creature	R
28542	MID	26	0	t	\N	\N	\N	\N	\N	Loyal Gryff	Creature	U
28552	DGM	49	0	\N	\N	\N	\N	t	\N	Skylasher	Creature	R
28572	EVE	49	0	\N	\N	\N	t	\N	\N	Chaotic Backlash	Instant	U
28581	CON	53	0	\N	\N	t	\N	\N	\N	Scepter of Fugue	Artifact	R
28622	ISD	40	0	t	\N	\N	\N	\N	\N	Urgent Exorcism	Instant	C
28629	MRD	39	0	\N	t	\N	\N	\N	\N	Lumengrid Augur	Creature	R
28632	WWK	48	0	\N	\N	t	\N	\N	\N	Agadeem Occultist	Creature	R
28644	GTC	42	0	\N	t	\N	\N	\N	\N	Metropolis Sprite	Creature	C
28651	RAV	35	0	t	\N	\N	\N	\N	\N	Votary of the Conclave	Creature	C
28652	RTR	33	0	\N	t	\N	\N	\N	\N	Conjured Currency	Enchantment	R
28661	SOM	38	0	\N	t	\N	\N	\N	\N	Plated Seastrider	Creature	C
28663	DKA	54	0	\N	\N	t	\N	\N	\N	Black Cat	Creature	C
28665	GPT	52	0	\N	\N	t	\N	\N	\N	Leyline of the Void	Enchantment	R
28681	MRD	41	0	\N	t	\N	\N	\N	\N	Lumengrid Warden	Creature	C
28684	WWK	50	0	\N	\N	t	\N	\N	\N	Bloodhusk Ritualist	Creature	U
28689	DKA	55	0	\N	\N	t	\N	\N	\N	Chosen of Markov // Markov's Servant	Creature	C
36739	NEO	83	0	\N	t	\N	\N	\N	\N	Tamiyo's Compleation	Enchantment	C
28726	ISD	44	0	\N	t	\N	\N	\N	\N	Back from the Brink	Enchantment	R
36740	NEO	84	0	\N	t	\N	\N	\N	\N	Tezzeret, Betrayer of Flesh	Lgd. Planeswalker	M
28739	SOM	41	0	\N	t	\N	\N	\N	\N	Scrapdiver Serpent	Creature	C
28758	ZEN	29	0	t	\N	\N	\N	\N	\N	Noble Vestige	Creature	C
28779	ALA	39	0	\N	t	\N	\N	\N	\N	Dawnray Archer	Creature	U
28788	WWK	54	0	\N	\N	t	\N	\N	\N	Caustic Crawler	Creature	U
28793	DKA	59	0	\N	\N	t	\N	\N	\N	Death's Caress	Sorcery	C
28801	BOK	63	0	\N	\N	t	\N	\N	\N	Call for Blood	Instant	C
28802	MID	36	0	t	\N	\N	\N	\N	\N	Sungold Barrage	Instant	C
28820	ROE	43	0	t	\N	\N	\N	\N	\N	Smite	Instant	C
28821	GPT	58	0	\N	\N	t	\N	\N	\N	Restless Bones	Creature	C
28831	ALA	41	0	\N	t	\N	\N	\N	\N	Etherium Astrolabe	Artifact	U
28834	RTR	40	0	\N	t	\N	\N	\N	\N	Hover Barrier	Creature	U
28837	MRD	47	0	\N	t	\N	\N	\N	\N	Quicksilver Elemental	Creature	R
28854	MID	38	0	t	\N	\N	\N	\N	\N	Sunset Revelry	Sorcery	U
28870	LRW	47	0	t	\N	\N	\N	\N	\N	Wellgabber Apothecary	Creature	C
28875	SOK	58	0	\N	t	\N	\N	\N	\N	Soramaro, First to Dream	Lgd. Creature	R
28901	SOK	59	0	\N	t	\N	\N	\N	\N	Trusted Advisor	Creature	U
28906	MID	40	0	t	\N	\N	\N	\N	\N	Unruly Mob	Creature	C
28909	ALA	44	0	\N	t	\N	\N	\N	\N	Filigree Sages	Artifact Creature	U
36741	NEO	85	0	\N	t	\N	\N	\N	\N	Thirst for Knowledge	Instant	U
28921	SOM	48	0	\N	t	\N	\N	\N	\N	Trinket Mage	Creature	U
28939	MOR	61	0	\N	\N	t	\N	\N	\N	Fendeep Summoner	Creature	R
28940	ZEN	36	0	t	\N	\N	\N	\N	\N	Steppe Lynx	Creature	C
28977	GPT	64	0	\N	\N	\N	t	\N	\N	Bloodscale Prowler	Creature	C
28979	SOK	62	0	\N	\N	t	\N	\N	\N	Choice of Damnations	Sorcery	R
28989	RAV	48	0	\N	t	\N	\N	\N	\N	Eye of the Storm	Enchantment	R
28990	RTR	46	0	\N	t	\N	\N	\N	\N	Paralyzing Grasp	Enchantment	C
28999	SOM	51	0	\N	t	\N	\N	\N	\N	Vault Skyward	Instant	C
29043	MOR	65	0	\N	\N	t	\N	\N	\N	Maralen of the Mornsong	Lgd. Creature	R
28664	ROE	37	1	t	\N	\N	\N	\N	\N	Mammoth Umbra	Enchantment	U
28840	WWK	56	1	\N	\N	t	\N	\N	\N	Dead Reckoning	Sorcery	C
28350	SHM	20	1	t	\N	\N	\N	\N	\N	Rune-Cervin Rider	Creature	C
28813	SHM	38	1	\N	t	\N	\N	\N	\N	Flow of Ideas	Sorcery	U
28210	LRW	25	1	t	\N	\N	\N	\N	\N	Kithkin Greatheart	Creature	C
28200	MOR	33	1	\N	t	\N	\N	\N	\N	Fencer Clique	Creature	C
28757	MOR	54	1	\N	t	\N	\N	\N	\N	Thieves' Fortune	Tribal Instant	U
28471	MOR	43	1	\N	t	\N	\N	\N	\N	Negate	Instant	C
28978	ARB	72	1	t	\N	\N	\N	t	\N	Leonin Armorguard	Creature	C
28562	ARB	56	1	\N	\N	\N	t	t	\N	Gorger Wurm	Creature	C
28220	CON	40	1	\N	\N	t	\N	\N	\N	Absorb Vis	Sorcery	C
28959	THS	41	1	\N	t	\N	\N	\N	\N	Benthic Giant	Creature	C
29037	THS	44	1	\N	t	\N	\N	\N	\N	Coastline Chimera	Creature	C
36742	NEO	86	0	\N	t	\N	\N	\N	\N	Thousand-Faced Shadow	Creature	R
28594	MID	28	0	t	\N	\N	\N	\N	\N	Mourning Patrol // Morning Apparition	Creature	C
28613	GPT	50	0	\N	\N	t	\N	\N	\N	Exhumer Thrull	Creature	U
28628	ZEN	24	0	t	\N	\N	\N	\N	\N	Landbind Ritual	Sorcery	U
28633	CON	55	0	\N	\N	t	\N	\N	\N	Voices from the Void	Sorcery	U
28639	GPT	51	0	\N	\N	t	\N	\N	\N	Hissing Miasma	Enchantment	U
28649	ALA	34	0	\N	t	\N	\N	\N	\N	Cathartic Adept	Creature	C
28654	ZEN	25	0	t	\N	\N	\N	\N	\N	Luminarch Ascension	Enchantment	R
28659	CON	56	0	\N	\N	t	\N	\N	\N	Wretched Banquet	Sorcery	C
28666	ARB	60	0	\N	\N	\N	t	t	\N	Spellbreaker Behemoth	Creature	R
28680	ZEN	26	0	t	\N	\N	\N	\N	\N	Makindi Shieldmate	Creature	C
28685	CON	57	0	\N	\N	t	\N	\N	\N	Yoke of the Damned	Enchantment	C
28688	LRW	40	0	t	\N	\N	\N	\N	\N	Soaring Hope	Enchantment	C
28722	GTC	45	0	\N	t	\N	\N	\N	\N	Realmwright	Creature	R
28745	SOK	53	0	\N	t	\N	\N	\N	\N	Sakashima the Impostor	Lgd. Creature	R
29373	BOK	85	1	\N	\N	t	\N	\N	\N	Stir the Grave	Sorcery	C
28752	ISD	45	0	\N	t	\N	\N	\N	\N	Battleground Geist	Creature	U
28814	WWK	55	0	\N	\N	t	\N	\N	\N	Corrupted Zendikon	Enchantment	C
28819	DKA	60	0	\N	\N	t	\N	\N	\N	Falkenrath Torturer	Creature	C
28832	EVE	59	0	\N	\N	\N	t	\N	\N	Outrage Shaman	Creature	U
29191	BOK	78	1	\N	\N	t	\N	\N	\N	Psychic Spear	Sorcery	C
28852	GTC	50	0	\N	t	\N	\N	\N	\N	Simic Manipulator	Creature	R
28859	RAV	43	0	\N	t	\N	\N	\N	\N	Dizzy Spell	Instant	C
28860	RTR	41	0	\N	t	\N	\N	\N	\N	Inaction Injunction	Sorcery	C
28869	SOM	46	0	\N	t	\N	\N	\N	\N	Stoic Rebuttal	Instant	C
28873	GPT	60	0	\N	\N	t	\N	\N	\N	Sanguine Praetor	Creature	R
29084	CHK	60	1	\N	t	\N	\N	\N	\N	Field of Reality	Enchantment	C
28912	RTR	43	0	\N	t	\N	\N	\N	\N	Isperia's Skywatch	Creature	C
28917	SHM	42	0	\N	t	\N	\N	\N	\N	Knacksaw Clique	Creature	R
28623	ALA	33	1	\N	t	\N	\N	\N	\N	Cancel	Instant	C
28930	GTC	53	0	\N	t	\N	\N	\N	\N	Stolen Identity	Sorcery	R
36743	NEO	87	0	\N	\N	t	\N	\N	\N	Assassin's Ink	Instant	U
28947	SOM	49	0	\N	t	\N	\N	\N	\N	Turn Aside	Instant	C
28958	MID	42	0	\N	t	\N	\N	\N	\N	Baithook Angler // Hook-Haunt Drifter	Creature	C
28986	ISD	54	0	\N	t	\N	\N	\N	\N	Dream Twist	Instant	C
28993	MRD	53	0	\N	t	\N	\N	\N	\N	Thirst for Knowledge	Instant	U
28996	WWK	62	0	\N	\N	t	\N	\N	\N	Pulse Tracker	Creature	C
29009	BOK	71	0	\N	\N	t	\N	\N	\N	Ink-Eyes, Servant of Oni	Lgd. Creature	R
29015	RAV	49	0	\N	t	\N	\N	\N	\N	Flight of Fancy	Enchantment	C
29016	RTR	47	0	\N	t	\N	\N	\N	\N	Psychic Spiral	Instant	U
29025	SOM	52	0	\N	t	\N	\N	\N	\N	Vedalken Certarch	Creature	C
29032	CHK	58	0	\N	t	\N	\N	\N	\N	Eerie Procession	Sorcery	U
36744	NEO	88	0	\N	\N	t	\N	\N	\N	Biting-Palm Ninja	Creature	R
29091	ALA	51	0	\N	t	\N	\N	\N	\N	Mindlock Orb	Artifact	R
29100	WWK	66	0	\N	\N	t	\N	\N	\N	Scrib Nibblers	Creature	U
29105	DKA	71	0	\N	\N	t	\N	\N	\N	Ravenous Demon // Archdemon of Greed	Creature	R
36745	NEO	89	0	\N	\N	t	\N	\N	\N	Blade of the Oni	Artifact Creature	M
29129	SOM	56	0	\N	\N	t	\N	\N	\N	Blistergrub	Creature	C
29140	MID	49	0	\N	t	\N	\N	\N	\N	Dissipate	Instant	U
29168	ISD	61	0	\N	t	\N	\N	\N	\N	Laboratory Maniac	Creature	R
29175	MRD	60	0	\N	\N	t	\N	\N	\N	Consume Spirit	Sorcery	C
29178	WWK	69	0	\N	\N	t	\N	\N	\N	Tomb Hex	Instant	C
29197	RAV	56	0	\N	t	\N	\N	\N	\N	Induce Paranoia	Instant	C
29198	RTR	54	0	\N	t	\N	\N	\N	\N	Syncopate	Instant	U
29207	SOM	59	0	\N	\N	t	\N	\N	\N	Corrupted Harvester	Creature	U
29214	CHK	65	0	\N	t	\N	\N	\N	\N	Hinder	Instant	U
29222	EVE	74	0	\N	\N	\N	\N	t	\N	Regal Force	Creature	R
36746	NEO	90	0	\N	\N	t	\N	\N	\N	Chainflail Centipede	Artifact Creature	C
29233	SOM	60	0	\N	\N	t	\N	\N	\N	Dross Hopper	Creature	C
29243	BOK	80	0	\N	\N	t	\N	\N	\N	Scourge of Numai	Creature	U
29248	EVE	75	0	\N	\N	\N	\N	t	\N	Savage Conception	Sorcery	U
29257	CON	79	0	\N	\N	\N	\N	t	\N	Cliffrunner Behemoth	Creature	R
29300	EVE	77	0	\N	\N	\N	\N	t	\N	Talara's Battalion	Creature	R
29307	SHM	57	0	\N	\N	t	\N	\N	\N	Beseech the Queen	Sorcery	U
29322	MID	56	0	\N	t	\N	\N	\N	\N	Geistwave	Instant	C
29338	LRW	65	0	\N	t	\N	\N	\N	\N	Fathom Trawl	Sorcery	R
29343	SOK	76	0	\N	\N	t	\N	\N	\N	Kemuri-Onna	Creature	U
29351	RAV	62	0	\N	t	\N	\N	\N	\N	Quickchange	Instant	C
29363	SOM	65	0	\N	\N	t	\N	\N	\N	Grasp of Darkness	Instant	C
29382	ZEN	53	0	\N	t	\N	\N	\N	\N	Lorthos, the Tidemaker	Lgd. Creature	M
29386	WWK	77	0	\N	\N	\N	t	\N	\N	Cosi's Ravager	Creature	C
29394	ARB	88	0	\N	t	\N	t	\N	\N	Magefire Wings	Enchantment	C
29422	CHK	73	0	\N	t	\N	\N	\N	\N	Lifted by Clouds	Instant	C
29457	RAV	66	0	\N	t	\N	\N	\N	\N	Stasis Cell	Enchantment	C
29464	WWK	80	0	\N	\N	\N	t	\N	\N	Deathforge Shaman	Creature	U
29469	DKA	85	0	\N	\N	\N	t	\N	\N	Curse of Bloodletting	Enchantment	R
29505	THS	62	0	\N	t	\N	\N	\N	\N	Sealock Monster	Creature	U
28872	ROE	45	1	t	\N	\N	\N	\N	\N	Soulbound Guardians	Creature	U
28638	ROE	36	3	t	\N	\N	\N	\N	\N	Makindi Griffin	Creature	C
28612	ROE	35	1	t	\N	\N	\N	\N	\N	Luminous Wake	Enchantment	U
28766	LRW	43	1	t	\N	\N	\N	\N	\N	Surge of Thoughtweft	Tribal Instant	C
28662	LRW	39	1	t	\N	\N	\N	\N	\N	Shields of Velis Vel	Tribal Instant	C
29260	LRW	62	1	\N	t	\N	\N	\N	\N	Faerie Trickery	Tribal Instant	C
28933	THS	40	2	\N	t	\N	\N	\N	\N	Artisan of Forms	Creature	R
28763	CON	60	1	\N	\N	\N	t	\N	\N	Canyon Minotaur	Creature	C
28777	THS	34	1	t	\N	\N	\N	\N	\N	Traveling Philosopher	Creature	C
28725	THS	32	1	t	\N	\N	\N	\N	\N	Soldier of the Pantheon	Creature	R
29115	THS	47	1	\N	t	\N	\N	\N	\N	Dissolve	Instant	U
29479	THS	61	1	\N	t	\N	\N	\N	\N	Sea God's Revenge	Sorcery	U
29225	MOR	72	1	\N	\N	t	\N	\N	\N	Oona's Blackguard	Creature	U
28822	ARB	66	2	t	\N	\N	\N	t	\N	Captured Sunlight	Sorcery	C
36750	NEO	94	0	\N	\N	t	\N	\N	\N	Dokuchi Shadow-Walker	Creature	C
36751	NEO	95	0	\N	\N	t	\N	\N	\N	Dokuchi Silencer	Creature	U
36749	NEO	93	1	\N	\N	t	\N	\N	\N	Dockside Chef	Enchantment Creature	U
36748	NEO	92	1	\N	\N	t	\N	\N	\N	Debt to the Kami	Instant	C
28603	MRD	38	0	\N	t	\N	\N	\N	\N	Looming Hoverguard	Creature	U
29298	ISD	66	1	\N	t	\N	\N	\N	\N	Memory's Journey	Instant	U
28596	ISD	39	1	t	\N	\N	\N	\N	\N	Unruly Mob	Creature	C
28656	DGM	53	0	t	t	\N	\N	\N	\N	Ascended Lawmage	Creature	U
28928	CHK	54	1	\N	t	\N	\N	\N	\N	Consuming Vortex	Instant	C
28677	RAV	36	0	t	\N	\N	\N	\N	\N	Wojek Apothecary	Creature	U
28692	ARB	61	0	\N	\N	\N	t	t	\N	Valley Rannet	Creature	C
28700	ISD	43	0	\N	t	\N	\N	\N	\N	Armored Skaab	Creature	C
28719	SOK	52	0	\N	t	\N	\N	\N	\N	Rushing-Tide Zubera	Creature	U
28728	EVE	55	0	\N	\N	\N	t	\N	\N	Hateflayer	Creature	R
28736	WWK	52	0	\N	\N	t	\N	\N	\N	Brink of Disaster	Enchantment	C
28741	DKA	57	0	\N	\N	t	\N	\N	\N	Curse of Thirst	Enchantment	U
28755	RAV	39	0	\N	t	\N	\N	\N	\N	Cerulean Sphinx	Creature	R
28760	DGM	57	0	t	\N	t	\N	\N	\N	Blood Baron of Vizkopa	Creature	M
28769	GPT	56	0	\N	\N	t	\N	\N	\N	Plagued Rusalka	Creature	U
28771	SOK	54	0	\N	t	\N	\N	\N	\N	Secretkeeper	Creature	U
28772	CHK	48	0	t	\N	\N	\N	\N	\N	Vassal's Duty	Enchantment	R
29247	ALA	57	1	\N	t	\N	\N	\N	\N	Spell Snip	Instant	C
28783	MOR	55	0	\N	t	\N	\N	\N	\N	Vendilion Clique	Lgd. Creature	R
28784	ZEN	30	0	t	\N	\N	\N	\N	\N	Ondu Cleric	Creature	C
29481	ALA	66	1	\N	\N	t	\N	\N	\N	Blister Beetle	Creature	C
28791	SOM	43	0	\N	t	\N	\N	\N	\N	Shape Anew	Sorcery	R
28807	RAV	41	0	\N	t	\N	\N	\N	\N	Convolute	Instant	C
28808	RTR	39	0	\N	t	\N	\N	\N	\N	Faerie Impostor	Creature	U
28827	BOK	64	0	\N	\N	t	\N	\N	\N	Crawling Filth	Creature	C
28845	DKA	61	0	\N	\N	t	\N	\N	\N	Farbog Boneflinger	Creature	U
28847	GPT	59	0	\N	\N	t	\N	\N	\N	Revenant Patriarch	Creature	U
28848	ARB	67	0	t	\N	\N	\N	t	\N	Dauntless Escort	Creature	R
28858	EVE	60	0	\N	\N	\N	t	\N	\N	Puncture Blast	Instant	C
28861	MOR	58	0	\N	\N	t	\N	\N	\N	Bitterblossom	Tribal Enchantment	R
36752	NEO	96	0	\N	\N	t	\N	\N	\N	Enormous Energy Blade	Artifact	U
28876	CHK	52	0	\N	t	\N	\N	\N	\N	Azami, Lady of Scrolls	Lgd. Creature	R
28890	DGM	62	0	t	t	\N	\N	\N	\N	Council of the Absolute	Creature	M
28891	SHM	41	0	\N	t	\N	\N	\N	\N	Kinscaer Harpoonist	Creature	C
36753	NEO	97	0	\N	\N	t	\N	\N	\N	Go-Shintai of Hidden Cruelty	Lgd. Enchantment Creature	U
28935	ALA	45	0	\N	t	\N	\N	\N	\N	Gather Specimens	Instant	R
28944	WWK	60	0	\N	\N	t	\N	\N	\N	Mire's Toll	Sorcery	C
28949	DKA	65	0	\N	\N	t	\N	\N	\N	Gravepurge	Instant	C
28956	GTC	54	0	\N	t	\N	\N	\N	\N	Totally Lost	Instant	C
28988	EVE	65	0	\N	\N	\N	\N	t	\N	Aerie Ouphes	Creature	C
36754	NEO	98	0	\N	\N	t	\N	\N	\N	Gravelighter	Creature	U
36755	NEO	99	0	\N	\N	t	\N	\N	\N	Hidetsugu, Devouring Chaos	Lgd. Creature	R
29036	MID	45	0	\N	t	\N	\N	\N	\N	Covetous Castaway // Ghostly Castigator	Creature	U
29056	ARB	75	0	t	\N	\N	\N	t	\N	Qasali Pridemage	Creature	C
29065	ALA	50	0	\N	t	\N	\N	\N	\N	Memory Erosion	Enchantment	R
29072	DGM	69	0	\N	\N	t	t	\N	\N	Exava, Rakdos Blood Witch	Lgd. Creature	R
29081	GPT	68	0	\N	\N	\N	t	\N	\N	Leyline of Lightning	Enchantment	R
29094	RTR	50	0	\N	t	\N	\N	\N	\N	Skyline Predator	Creature	U
29097	MRD	57	0	\N	\N	t	\N	\N	\N	Barter in Blood	Sorcery	U
29108	ARB	77	0	t	\N	\N	\N	t	\N	Sigil Captain	Creature	U
29113	BOK	75	0	\N	\N	t	\N	\N	\N	Ogre Marauder	Creature	U
29143	ALA	53	0	\N	t	\N	\N	\N	\N	Protomatter Powder	Artifact	U
29152	WWK	68	0	\N	\N	t	\N	\N	\N	Smother	Instant	U
29176	DGM	73	0	t	\N	\N	t	\N	\N	Gleam of Battle	Enchantment	U
29192	MID	51	0	\N	t	\N	\N	\N	\N	Fading Hope	Instant	U
29208	LRW	60	0	\N	t	\N	\N	\N	\N	Ethereal Whiskergill	Creature	U
29213	SOK	71	0	\N	\N	t	\N	\N	\N	Hand of Cruelty	Creature	U
29239	SOK	72	0	\N	\N	t	\N	\N	\N	Infernal Kirin	Lgd. Creature	R
29244	MID	53	0	\N	t	\N	\N	\N	\N	Firmament Sage	Creature	U
36756	NEO	100	0	\N	\N	t	\N	\N	\N	Inkrise Infiltrator	Creature	C
29259	SOM	61	0	\N	\N	t	\N	\N	\N	Exsanguinate	Sorcery	U
29269	BOK	81	0	\N	\N	t	\N	\N	\N	Shirei, Shizo's Caretaker	Lgd. Creature	R
29270	MID	54	0	\N	t	\N	\N	\N	\N	Flip the Switch	Instant	C
36757	NEO	101	0	\N	\N	t	\N	\N	\N	Invoke Despair	Sorcery	R
29355	MOR	77	0	\N	\N	t	\N	\N	\N	Scarblade Elite	Creature	R
29356	ZEN	52	0	\N	t	\N	\N	\N	\N	Living Tsunami	Creature	U
36758	NEO	102	0	\N	\N	t	\N	\N	\N	Junji, the Midnight Sky	Lgd. Creature	M
29380	RTR	61	0	\N	\N	t	\N	\N	\N	Dark Revenant	Creature	U
36759	NEO	103	0	\N	\N	t	\N	\N	\N	Kaito's Pursuit	Sorcery	C
29390	LRW	67	0	\N	t	\N	\N	\N	\N	Glen Elendra Pranksters	Creature	U
29391	DKA	82	0	\N	\N	\N	t	\N	\N	Alpha Brawl	Sorcery	R
29392	ROE	65	0	\N	t	\N	\N	\N	\N	Eel Umbra	Enchantment	C
29424	GTC	72	0	\N	\N	t	\N	\N	\N	Mental Vapors	Sorcery	U
29431	RAV	65	0	\N	t	\N	\N	\N	\N	Spawnbroker	Creature	R
29432	RTR	63	0	\N	\N	t	\N	\N	\N	Desecration Demon	Creature	R
29435	MRD	70	0	\N	\N	t	\N	\N	\N	Nim Devourer	Creature	R
29454	ISD	72	0	\N	t	\N	\N	\N	\N	Runic Repetition	Sorcery	U
36760	NEO	104	0	\N	\N	t	\N	\N	\N	Kami of Restless Shadows	Creature	C
29467	SOM	69	0	\N	\N	t	\N	\N	\N	Memoricide	Sorcery	R
29366	ROE	64	1	\N	t	\N	\N	\N	\N	Echo Mage	Creature	R
29314	ROE	62	1	\N	t	\N	\N	\N	\N	Dormant Gomazoa	Creature	R
29177	SHM	52	1	\N	t	\N	\N	\N	\N	Spell Syphon	Instant	C
29153	CON	75	1	\N	\N	\N	t	\N	\N	Voracious Dragon	Creature	R
28657	SHM	32	1	\N	t	\N	\N	\N	\N	Consign to Dream	Instant	C
29361	CON	83	1	\N	\N	\N	\N	t	\N	Gluttonous Slime	Creature	U
28647	THS	29	1	t	\N	\N	\N	\N	\N	Setessan Battle Priest	Creature	C
28699	THS	31	1	t	\N	\N	\N	\N	\N	Silent Artisan	Creature	C
29349	THS	56	1	\N	t	\N	\N	\N	\N	Nimbus Naiad	Enchantment Creature	C
29167	THS	49	1	\N	t	\N	\N	\N	\N	Gainsay	Instant	U
36762	NEO	106	0	\N	\N	t	\N	\N	\N	Leech Gauntlet	Artifact Creature	U
28991	MOR	63	2	\N	\N	t	\N	\N	\N	Final-Sting Faerie	Creature	C
28605	SHM	30	3	\N	t	\N	\N	\N	\N	Briarberry Cohort	Creature	C
36763	NEO	107	0	\N	\N	t	\N	\N	\N	Lethal Exploit	Instant	C
36761	NEO	105	1	\N	\N	t	\N	\N	\N	Kami of Terrible Secrets	Creature	C
28620	MID	29	0	t	\N	\N	\N	\N	\N	Odric's Outrider	Creature	U
28636	LRW	38	0	t	\N	\N	\N	\N	\N	Sentry Oak	Creature	U
28696	GTC	44	0	\N	t	\N	\N	\N	\N	Rapid Hybridization	Instant	U
28703	RAV	37	0	t	\N	\N	\N	\N	\N	Wojek Siren	Instant	C
29500	CHK	76	1	\N	t	\N	\N	\N	\N	Mystic Restraints	Enchantment	C
28713	SOM	40	0	\N	t	\N	\N	\N	\N	Riddlesmith	Creature	U
28724	MID	33	0	t	\N	\N	\N	\N	\N	Sigarda's Splendor	Enchantment	R
28753	ALA	38	0	\N	t	\N	\N	\N	\N	Covenant of Minds	Sorcery	R
28762	WWK	53	0	\N	\N	t	\N	\N	\N	Butcher of Malakir	Creature	R
28767	DKA	58	0	\N	\N	t	\N	\N	\N	Deadly Allure	Sorcery	U
28776	MID	35	0	t	\N	\N	\N	\N	\N	Soul-Guide Gryff	Creature	C
28828	MID	37	0	t	\N	\N	\N	\N	\N	Sungold Sentinel	Creature	R
28844	LRW	46	0	t	\N	\N	\N	\N	\N	Veteran of the Depths	Creature	U
28850	CHK	51	0	\N	t	\N	\N	\N	\N	Aura of Dominion	Enchantment	U
28888	ZEN	34	0	t	\N	\N	\N	\N	\N	Shepherd of the Lost	Creature	U
28893	CON	65	0	\N	\N	\N	t	\N	\N	Hellspark Elemental	Creature	U
28896	LRW	48	0	t	\N	\N	\N	\N	\N	Wispmare	Creature	C
28962	EVE	64	0	\N	\N	\N	t	\N	\N	Unwilling Recruit	Sorcery	U
28982	GTC	55	0	\N	t	\N	\N	\N	\N	Voidwalk	Sorcery	U
29002	ROE	50	0	t	\N	\N	\N	\N	\N	Totem-Guide Hartebeest	Creature	C
29003	GPT	65	0	\N	\N	\N	t	\N	\N	Fencer's Magemark	Enchantment	C
29018	ZEN	39	0	t	\N	\N	\N	\N	\N	World Queller	Creature	R
29034	GTC	57	0	\N	\N	t	\N	\N	\N	Balustrade Spy	Creature	C
29041	RAV	50	0	\N	t	\N	\N	\N	\N	Flow of Ideas	Sorcery	U
29049	CON	71	0	\N	\N	\N	t	\N	\N	Rakka Mar	Lgd. Creature	R
29062	MID	46	0	\N	t	\N	\N	\N	\N	Curse of Surveillance	Enchantment	R
29078	LRW	55	0	\N	t	\N	\N	\N	\N	Captivating Glance	Enchantment	U
29120	RTR	51	0	\N	t	\N	\N	\N	\N	Soulsworn Spirit	Creature	U
29123	MRD	58	0	\N	\N	t	\N	\N	\N	Betrayal of Flesh	Instant	U
29135	SOK	68	0	\N	\N	t	\N	\N	\N	Footsteps of the Goryo	Sorcery	U
29145	RAV	54	0	\N	t	\N	\N	\N	\N	Halcyon Glaze	Enchantment	U
29150	DGM	72	0	\N	\N	t	\N	t	\N	Gaze of Granite	Sorcery	R
29155	SOM	57	0	\N	\N	t	\N	\N	\N	Carnifex Demon	Creature	R
29165	BOK	77	0	\N	\N	t	\N	\N	\N	Patron of the Nezumi	Lgd. Creature	R
29183	DKA	74	0	\N	\N	t	\N	\N	\N	Skirsdag Flayer	Creature	U
29186	ARB	80	0	t	\N	\N	\N	t	\N	Wildfield Borderpost	Artifact	C
29196	EVE	73	0	\N	\N	\N	\N	t	\N	Primalcrux	Creature	R
29552	CHK	78	2	\N	t	\N	\N	\N	\N	Peer Through Depths	Instant	C
28723	BOK	60	1	\N	t	\N	\N	\N	\N	Walker of Secret Ways	Creature	U
29221	ALA	56	0	\N	t	\N	\N	\N	\N	Skill Borrower	Artifact Creature	R
29226	ZEN	47	0	\N	t	\N	\N	\N	\N	Hedron Crab	Creature	U
29234	LRW	61	0	\N	t	\N	\N	\N	\N	Faerie Harbinger	Creature	U
29268	GTC	66	0	\N	\N	t	\N	\N	\N	Grisly Spectacle	Instant	C
29271	THS	53	0	\N	t	\N	\N	\N	\N	Master of Waves	Creature	M
29395	SOK	78	1	\N	\N	t	\N	\N	\N	Kuon, Ogre Ascendant // Kuon's Essence	Lgd. Creature	R
29285	SOM	62	0	\N	\N	t	\N	\N	\N	Flesh Allergy	Sorcery	U
29296	MID	55	0	\N	t	\N	\N	\N	\N	Galedrifter // Waildrifter	Creature	C
29324	ISD	67	0	\N	t	\N	\N	\N	\N	Mindshrieker	Creature	R
29331	MRD	66	0	\N	\N	t	\N	\N	\N	Grim Reminder	Instant	R
28746	CHK	47	1	t	\N	\N	\N	\N	\N	Terashi's Cry	Sorcery	C
29347	BOK	84	0	\N	\N	t	\N	\N	\N	Skullsnatcher	Creature	C
29365	DKA	81	0	\N	\N	\N	t	\N	\N	Afflicted Deserter // Werewolf Ransacker	Creature	U
29372	GTC	70	0	\N	\N	t	\N	\N	\N	Killing Glare	Instant	U
29384	DGM	81	0	t	\N	\N	t	\N	\N	Legion's Initiative	Enchantment	M
29408	ZEN	54	0	\N	t	\N	\N	\N	\N	Lullmage Mentor	Creature	R
29416	LRW	68	0	\N	t	\N	\N	\N	\N	Glimmerdust Nap	Enchantment	C
29426	MID	60	0	\N	t	\N	\N	\N	\N	Locked in the Cemetery	Enchantment	C
29439	CON	86	0	\N	\N	\N	\N	t	\N	Nacatl Savage	Creature	C
29441	SOM	68	0	\N	\N	t	\N	\N	\N	Instill Infection	Instant	C
29443	DKA	84	0	\N	\N	\N	t	\N	\N	Burning Oil	Instant	U
29446	ARB	90	0	\N	t	\N	t	\N	\N	Spellbound Dragon	Creature	R
29451	BOK	88	0	\N	\N	t	\N	\N	\N	Throat Slitter	Creature	U
29483	RAV	67	0	\N	t	\N	\N	\N	\N	Surveilling Sprite	Creature	C
29488	DGM	85	0	\N	t	t	\N	\N	\N	Mirko Vosk, Mind Drinker	Lgd. Creature	R
29497	GPT	84	0	\N	\N	\N	\N	t	\N	Earth Surge	Enchantment	R
29532	ISD	75	0	\N	t	\N	\N	\N	\N	Silent Departure	Sorcery	C
29539	MRD	74	0	\N	\N	t	\N	\N	\N	Promise of Power	Sorcery	R
29542	WWK	83	0	\N	\N	\N	t	\N	\N	Grotag Thrasher	Creature	C
29562	RTR	68	0	\N	\N	t	\N	\N	\N	Grim Roustabout	Creature	C
29571	SOM	73	0	\N	\N	t	\N	\N	\N	Painful Quandary	Enchantment	R
29577	SOK	85	0	\N	\N	t	\N	\N	\N	Pain's Reward	Sorcery	R
29582	MID	66	0	\N	t	\N	\N	\N	\N	Organ Hoarder	Creature	C
29587	RAV	71	0	\N	t	\N	\N	\N	\N	Tidewater Minion	Creature	C
29588	RTR	69	0	\N	\N	t	\N	\N	\N	Launch Party	Instant	C
29591	MRD	76	0	\N	\N	t	\N	\N	\N	Relic Bane	Enchantment	U
29613	RAV	72	0	\N	t	\N	\N	\N	\N	Tunnel Vision	Sorcery	R
29618	DGM	90	0	\N	t	t	\N	\N	\N	Pilfered Plans	Sorcery	C
29385	SHM	60	1	\N	\N	t	\N	\N	\N	Cinderhaze Wretch	Creature	C
28974	LRW	51	1	\N	t	\N	\N	\N	\N	Amoeboid Changeling	Creature	C
29052	LRW	54	1	\N	t	\N	\N	\N	\N	Broken Ambitions	Instant	C
29134	ARB	78	1	t	\N	\N	\N	t	\N	Sigil of the Nayan Gods	Enchantment	C
29602	ARB	96	1	t	\N	\N	t	\N	\N	Cerodon Yearling	Creature	C
28641	SOK	49	2	\N	t	\N	\N	\N	\N	Oboro Envoy	Creature	U
29231	CON	78	1	\N	\N	\N	\N	t	\N	Beacon Behemoth	Creature	C
29023	CON	70	1	\N	\N	\N	t	\N	\N	Quenchable Fire	Sorcery	C
29075	CON	72	1	\N	\N	\N	t	\N	\N	Toxic Iguanar	Creature	C
28881	THS	38	1	\N	t	\N	\N	\N	\N	Annul	Instant	C
29199	MOR	71	1	\N	\N	t	\N	\N	\N	Offalsnout	Creature	U
29413	CON	85	2	\N	\N	\N	\N	t	\N	Might of Alara	Instant	C
29013	ALA	48	1	\N	t	\N	\N	\N	\N	Kederekt Leviathan	Creature	R
36765	NEO	109	0	\N	\N	t	\N	\N	\N	The Long Reach of Night // Animus of Night's Reach	Enchantment	U
36766	NEO	110	0	\N	\N	t	\N	\N	\N	Malicious Malfunction	Sorcery	U
36767	NEO	111	0	\N	\N	t	\N	\N	\N	March of Wretched Sorrow	Instant	R
28625	RAV	34	0	t	\N	\N	\N	\N	\N	Veteran Armorer	Creature	C
28626	RTR	32	0	\N	t	\N	\N	\N	\N	Chronic Flooding	Enchantment	C
28635	SOM	37	0	\N	t	\N	\N	\N	\N	Neurok Invisimancer	Creature	C
28642	CHK	43	0	t	\N	\N	\N	\N	\N	Samurai of the Pale Curtain	Creature	U
28682	DGM	54	0	\N	t	\N	\N	t	\N	Beetleform Mage	Creature	C
28683	SHM	33	0	\N	t	\N	\N	\N	\N	Counterbore	Instant	R
28690	ROE	38	0	t	\N	\N	\N	\N	\N	Near-Death Experience	Enchantment	R
28720	CHK	46	0	t	\N	\N	\N	\N	\N	Takeno, Samurai General	Lgd. Creature	R
28727	ALA	37	0	\N	t	\N	\N	\N	\N	Courier's Capsule	Artifact	C
28737	CON	59	0	\N	\N	\N	t	\N	\N	Bloodhall Ooze	Creature	R
28740	LRW	42	0	t	\N	\N	\N	\N	\N	Summon the School	Tribal Sorcery	U
28756	RTR	37	0	\N	t	\N	\N	\N	\N	Doorkeeper	Creature	C
28759	MRD	44	0	\N	t	\N	\N	\N	\N	Neurok Spy	Creature	C
28770	ARB	64	0	\N	\N	\N	t	t	\N	Vithian Renegades	Creature	U
28774	GTC	47	0	\N	t	\N	\N	\N	\N	Sapphire Drake	Creature	U
28830	ISD	48	0	\N	t	\N	\N	\N	\N	Claustrophobia	Enchantment	C
28835	MOR	57	0	\N	\N	t	\N	\N	\N	Auntie's Snitch	Creature	R
28836	ZEN	32	0	t	\N	\N	\N	\N	\N	Pitfall Trap	Instant	U
28853	BOK	65	0	\N	\N	t	\N	\N	\N	Eradicate	Sorcery	U
28879	BOK	66	0	\N	\N	t	\N	\N	\N	Genju of the Fens	Enchantment	U
28883	ALA	43	0	\N	t	\N	\N	\N	\N	Fatestitcher	Creature	U
28886	RTR	42	0	\N	t	\N	\N	\N	\N	Inspiration	Instant	C
28899	GPT	61	0	\N	\N	t	\N	\N	\N	Seize the Soul	Instant	R
28915	MRD	50	0	\N	t	\N	\N	\N	\N	Slith Strider	Creature	U
28926	ARB	70	0	t	\N	\N	\N	t	\N	Knight of New Alara	Creature	R
28937	RAV	46	0	\N	t	\N	\N	\N	\N	Drift of Phantasms	Creature	C
28942	DGM	64	0	t	\N	t	\N	\N	\N	Debt to the Deathless	Sorcery	U
28951	GPT	63	0	\N	\N	t	\N	\N	\N	Smogsteed Rider	Creature	U
28964	RTR	45	0	\N	t	\N	\N	\N	\N	Mizzium Skin	Instant	C
28967	MRD	52	0	\N	t	\N	\N	\N	\N	Temporal Cascade	Sorcery	R
29005	SOK	63	1	\N	\N	t	\N	\N	\N	Death Denied	Instant	C
28984	MID	43	0	\N	t	\N	\N	\N	\N	Component Collector	Creature	C
29000	LRW	52	0	\N	t	\N	\N	\N	\N	Aquitect's Will	Tribal Sorcery	C
29038	ISD	56	0	\N	t	\N	\N	\N	\N	Fortress Crab	Creature	C
29042	RTR	48	0	\N	t	\N	\N	\N	\N	Runewing	Creature	C
29046	DGM	68	0	t	\N	\N	\N	t	\N	Emmara Tandris	Lgd. Creature	R
29047	SHM	47	0	\N	t	\N	\N	\N	\N	Puca's Mischief	Enchantment	R
29054	ROE	52	0	t	\N	\N	\N	\N	\N	Umbra Mystic	Creature	R
29086	GTC	59	0	\N	\N	t	\N	\N	\N	Contaminated Ground	Enchantment	C
29089	THS	46	0	\N	t	\N	\N	\N	\N	Curse of the Swine	Sorcery	R
28954	CHK	55	2	\N	t	\N	\N	\N	\N	Counsel of the Soratami	Sorcery	C
29103	SOM	55	0	\N	\N	t	\N	\N	\N	Bleak Coven Vampires	Creature	C
29117	ALA	52	0	\N	t	\N	\N	\N	\N	Outrider of Jhess	Creature	C
29126	WWK	67	0	\N	\N	t	\N	\N	\N	Shoreline Salvager	Creature	U
29131	DKA	72	0	\N	\N	t	\N	\N	\N	Reap the Seagraf	Sorcery	C
29138	GTC	61	0	\N	\N	t	\N	\N	\N	Crypt Ghast	Creature	R
29170	EVE	72	0	\N	\N	\N	\N	t	\N	Phosphorescent Feast	Sorcery	U
29173	MOR	70	0	\N	\N	t	\N	\N	\N	Noggin Whack	Tribal Sorcery	U
36769	NEO	113	0	\N	\N	t	\N	\N	\N	Mukotai Soulripper	Artifact	R
36770	NEO	114	0	\N	\N	t	\N	\N	\N	Nashi, Moon Sage's Scion	Lgd. Creature	M
29218	MID	52	0	\N	t	\N	\N	\N	\N	Falcon Abomination	Creature	C
29223	RAV	57	0	\N	t	\N	\N	\N	\N	Lore Broker	Creature	U
29224	RTR	55	0	\N	t	\N	\N	\N	\N	Tower Drake	Creature	C
29237	GPT	74	0	\N	\N	\N	t	\N	\N	Scorched Rusalka	Creature	U
29252	ZEN	48	0	\N	t	\N	\N	\N	\N	Into the Roil	Instant	C
29253	MRD	63	0	\N	\N	t	\N	\N	\N	Dross Harvester	Creature	R
29264	ARB	83	0	t	\N	t	\N	\N	\N	Tainted Sigil	Artifact	U
29275	RAV	59	0	\N	t	\N	\N	\N	\N	Mnemonic Nexus	Instant	U
29280	DGM	77	0	t	t	\N	\N	\N	\N	Jelenn Sphinx	Creature	U
29289	GPT	76	0	\N	\N	\N	t	\N	\N	Siege of Towers	Sorcery	R
29292	CHK	68	0	\N	t	\N	\N	\N	\N	Hisoka's Guard	Creature	C
29302	RTR	58	0	\N	\N	t	\N	\N	\N	Catacomb Slug	Creature	C
29305	MRD	65	0	\N	\N	t	\N	\N	\N	Flayed Nim	Creature	U
29320	GTC	68	0	\N	\N	t	\N	\N	\N	Horror of the Dim	Creature	C
29340	ROE	63	0	\N	t	\N	\N	\N	\N	Drake Umbra	Enchantment	U
29341	GPT	78	0	\N	\N	\N	t	\N	\N	Tin Street Hooligan	Creature	C
29352	ALA	61	0	\N	t	\N	\N	\N	\N	Tortoise Formation	Instant	C
29358	DGM	80	0	t	t	\N	\N	\N	\N	Lavinia of the Tenth	Lgd. Creature	R
29400	MID	59	0	\N	t	\N	\N	\N	\N	Lier, Disciple of the Drowned	Lgd. Creature	M
29403	ALA	63	0	\N	\N	t	\N	\N	\N	Ad Nauseam	Instant	R
29420	ARB	89	0	\N	t	\N	t	\N	\N	Skyclaw Thrash	Artifact Creature	U
29438	WWK	79	0	\N	\N	\N	t	\N	\N	Cunning Sparkmage	Creature	U
29447	SOK	80	0	\N	\N	t	\N	\N	\N	Locust Miser	Creature	U
29450	GTC	73	0	\N	\N	t	\N	\N	\N	Midnight Recovery	Sorcery	C
29484	RTR	65	0	\N	\N	t	\N	\N	\N	Deviant Glee	Enchantment	C
29487	MRD	72	0	\N	\N	t	\N	\N	\N	Nim Shambler	Creature	U
29494	LRW	71	0	\N	t	\N	\N	\N	\N	Jace Beleren	Lgd. Planeswalker	R
29502	GTC	75	0	\N	\N	t	\N	\N	\N	Sepulchral Primordial	Creature	R
29523	GPT	85	0	\N	\N	\N	\N	t	\N	Gatherer of Graces	Creature	U
29533	ALA	68	0	\N	\N	t	\N	\N	\N	Corpse Connoisseur	Creature	U
29538	ZEN	59	0	\N	t	\N	\N	\N	\N	Quest for Ancient Secrets	Enchantment	U
29546	LRW	73	0	\N	t	\N	\N	\N	\N	Merrow Harbinger	Creature	U
29550	ARB	94	0	\N	\N	t	\N	t	\N	Morbid Bloom	Sorcery	U
29564	ZEN	60	0	\N	t	\N	\N	\N	\N	Reckless Scholar	Creature	C
29522	ROE	70	1	\N	t	\N	\N	\N	\N	Guard Gomazoa	Creature	U
29359	SHM	59	1	\N	\N	t	\N	\N	\N	Cinderbones	Creature	C
28969	SHM	44	1	\N	t	\N	\N	\N	\N	Merrow Wavebreakers	Creature	C
29312	LRW	64	1	\N	t	\N	\N	\N	\N	Familiar's Ruse	Instant	U
29543	CON	90	1	\N	\N	\N	\N	t	\N	Scattershot Archer	Creature	C
29491	CON	88	1	\N	\N	\N	\N	t	\N	Paleoloth	Creature	R
28841	CON	63	3	\N	\N	\N	t	\N	\N	Fiery Fall	Instant	C
29375	THS	57	1	\N	t	\N	\N	\N	\N	Omenspeaker	Creature	C
29427	THS	59	1	\N	t	\N	\N	\N	\N	Prescient Chimera	Creature	C
36772	NEO	116	0	\N	\N	t	\N	\N	\N	Nezumi Prowler	Artifact Creature	U
36771	NEO	115	1	\N	\N	t	\N	\N	\N	Nezumi Bladeblesser	Creature	C
28637	DKA	53	0	\N	t	\N	\N	\N	\N	Tower Geist	Creature	U
28650	EVE	52	0	\N	\N	\N	t	\N	\N	Fiery Bombardment	Enchantment	R
28653	MOR	50	0	\N	t	\N	\N	\N	\N	Slithermuse	Creature	R
28778	ISD	46	1	\N	t	\N	\N	\N	\N	Cackling Counterpart	Instant	R
28679	MOR	51	0	\N	t	\N	\N	\N	\N	Stonybrook Banneret	Creature	C
36775	NEO	119	1	\N	\N	t	\N	\N	\N	Reckoner Shakedown	Sorcery	C
28687	SOM	39	0	\N	t	\N	\N	\N	\N	Quicksilver Gargantuan	Creature	M
28697	BOK	59	0	\N	t	\N	\N	\N	\N	Veil of Secrecy	Instant	C
28702	EVE	54	0	\N	\N	\N	t	\N	\N	Hatchet Bully	Creature	U
28717	GPT	54	0	\N	\N	t	\N	\N	\N	Orzhov Euthanist	Creature	C
28730	RTR	36	0	\N	t	\N	\N	\N	\N	Dispel	Instant	C
28732	ZEN	28	0	t	\N	\N	\N	\N	\N	Nimbus Wings	Enchantment	C
28733	MRD	43	0	\N	t	\N	\N	\N	\N	Neurok Familiar	Creature	C
28748	GTC	46	0	\N	t	\N	\N	\N	\N	Sage's Row Denizen	Creature	C
28902	CHK	53	1	\N	t	\N	\N	\N	\N	Callous Deceiver	Creature	C
28765	SOM	42	0	\N	t	\N	\N	\N	\N	Screeching Silcaw	Creature	C
28805	ALA	40	0	\N	t	\N	\N	\N	\N	Esper Battlemage	Artifact Creature	U
28957	BOK	69	1	\N	\N	t	\N	\N	\N	Hired Muscle // Scarmaker	Creature	U
28817	SOM	44	0	\N	t	\N	\N	\N	\N	Sky-Eel School	Creature	C
28824	CHK	50	0	t	\N	\N	\N	\N	\N	Yosei, the Morning Star	Lgd. Creature	R
28857	ALA	42	0	\N	t	\N	\N	\N	\N	Etherium Sculptor	Artifact Creature	C
28862	ZEN	33	0	t	\N	\N	\N	\N	\N	Quest for the Holy Relic	Enchantment	U
28867	CON	64	0	\N	\N	\N	t	\N	\N	Goblin Razerunners	Creature	R
28871	DKA	62	0	\N	\N	t	\N	\N	\N	Fiend of the Shadows	Creature	R
28874	ARB	68	0	t	\N	\N	\N	t	\N	Enlisted Wurm	Creature	U
28913	MOR	60	0	\N	\N	t	\N	\N	\N	Earwig Squad	Creature	R
28916	DGM	63	0	\N	\N	t	\N	t	\N	Deadbridge Chant	Enchantment	M
28925	GPT	62	0	\N	\N	t	\N	\N	\N	Skeletal Vampire	Creature	R
28798	CHK	49	1	t	\N	\N	\N	\N	\N	Vigilance	Enchantment	C
28934	ISD	52	0	\N	t	\N	\N	\N	\N	Deranged Assistant	Creature	C
28987	ALA	47	0	\N	t	\N	\N	\N	\N	Kathari Screecher	Creature	C
28992	ZEN	38	0	t	\N	\N	\N	\N	\N	Windborne Charge	Sorcery	U
29008	GTC	56	0	\N	t	\N	\N	\N	\N	Way of the Thief	Enchantment	C
29027	DKA	68	0	\N	\N	t	\N	\N	\N	Highborn Ghoul	Creature	C
29040	EVE	67	0	\N	\N	\N	\N	t	\N	Duskdale Wurm	Creature	U
28667	SOK	50	1	\N	t	\N	\N	\N	\N	Oppressive Will	Instant	C
29051	SOM	53	0	\N	t	\N	\N	\N	\N	Volition Reins	Enchantment	U
29061	BOK	73	0	\N	\N	t	\N	\N	\N	Mark of the Oni	Enchantment	U
29266	CHK	67	2	\N	t	\N	\N	\N	\N	Hisoka's Defiance	Instant	C
29077	SOM	54	0	\N	\N	t	\N	\N	\N	Blackcleave Goblin	Creature	C
29087	BOK	74	0	\N	\N	t	\N	\N	\N	Nezumi Shadow-Watcher	Creature	U
29088	MID	47	0	\N	t	\N	\N	\N	\N	Delver of Secrets // Insectile Aberration	Creature	U
29118	EVE	70	0	\N	\N	\N	\N	t	\N	Monstrify	Sorcery	C
29125	SHM	50	0	\N	t	\N	\N	\N	\N	Savor the Moment	Sorcery	R
29132	ROE	55	0	\N	t	\N	\N	\N	\N	Cast Through Time	Enchantment	M
29148	ZEN	44	0	\N	t	\N	\N	\N	\N	Cancel	Instant	C
29157	DKA	73	0	\N	\N	t	\N	\N	\N	Sightless Ghoul	Creature	C
29160	ARB	79	0	t	\N	\N	\N	t	\N	Sigiled Behemoth	Creature	C
29161	SOK	69	0	\N	\N	t	\N	\N	\N	Ghost-Lit Stalker	Creature	U
29171	RAV	55	0	\N	t	\N	\N	\N	\N	Hunted Phantasm	Creature	R
29172	RTR	53	0	\N	t	\N	\N	\N	\N	Stealer of Secrets	Creature	C
29181	SOM	58	0	\N	\N	t	\N	\N	\N	Contagious Nim	Creature	C
29188	CHK	64	0	\N	t	\N	\N	\N	\N	Guardian of Solitude	Creature	U
29228	DGM	75	0	\N	\N	\N	t	t	\N	Gruul War Chant	Enchantment	U
29273	ALA	58	0	\N	t	\N	\N	\N	\N	Sphinx's Herald	Artifact Creature	U
36774	NEO	118	0	\N	\N	t	\N	\N	\N	Okiba Salvage	Sorcery	U
29287	DKA	78	0	\N	\N	t	\N	\N	\N	Vengeful Vampire	Creature	U
29294	GTC	67	0	\N	\N	t	\N	\N	\N	Gutter Skulk	Creature	C
29326	EVE	78	0	\N	\N	\N	\N	t	\N	Tilling Treefolk	Creature	C
36776	NEO	120	0	\N	\N	t	\N	\N	\N	Reckoner's Bargain	Instant	C
29377	ALA	62	0	\N	t	\N	\N	\N	\N	Vectis Silencers	Artifact Creature	C
29398	GTC	71	0	\N	\N	t	\N	\N	\N	Lord of the Void	Creature	M
29405	RAV	64	0	\N	t	\N	\N	\N	\N	Snapping Drake	Creature	C
29409	MRD	69	0	\N	\N	t	\N	\N	\N	Necrogen Mists	Enchantment	R
29417	DKA	83	0	\N	\N	\N	t	\N	\N	Blood Feud	Sorcery	U
29430	EVE	82	0	t	\N	t	\N	\N	\N	Beckon Apparition	Instant	C
29433	MOR	80	0	\N	\N	t	\N	\N	\N	Stinkdrinker Bandit	Creature	U
29434	ZEN	55	0	\N	t	\N	\N	\N	\N	Merfolk Seastalkers	Creature	U
29455	ALA	65	0	\N	\N	t	\N	\N	\N	Banewasp Affliction	Enchantment	C
29465	CON	87	0	\N	\N	\N	\N	t	\N	Noble Hierarch	Creature	R
29468	LRW	70	0	\N	t	\N	\N	\N	\N	Inkfathom Divers	Creature	C
29480	ISD	73	0	\N	t	\N	\N	\N	\N	Selhoff Occultist	Creature	C
29504	MID	63	0	\N	t	\N	\N	\N	\N	Mysterious Tome // Chilling Chronicle	Artifact // Artifact	U
28810	ZEN	31	1	t	\N	\N	\N	\N	\N	Pillarfield Ox	Creature	C
29236	ROE	59	1	\N	t	\N	\N	\N	\N	Deprive	Instant	C
29229	SHM	54	1	\N	t	\N	\N	\N	\N	Whimwader	Creature	C
28948	LRW	50	1	\N	t	\N	\N	\N	\N	Aethersnipe	Creature	C
28796	ARB	65	1	t	\N	\N	\N	t	\N	Behemoth Sledge	Artifact	U
28744	ARB	63	1	\N	\N	\N	t	t	\N	Violent Outburst	Instant	C
28640	ARB	59	1	\N	\N	\N	t	t	\N	Rhox Brute	Creature	C
29030	ARB	74	2	t	\N	\N	\N	t	\N	Pale Recluse	Creature	C
28997	CON	69	1	\N	\N	\N	t	\N	\N	Molten Frame	Instant	C
28945	CON	67	1	\N	\N	\N	t	\N	\N	Kranioceros	Creature	C
29219	THS	51	1	\N	t	\N	\N	\N	\N	Horizon Scholar	Creature	U
28751	THS	33	1	t	\N	\N	\N	\N	\N	Spear of Heliod	Lgd. Enchantment Artifact	R
29329	MOR	76	1	\N	\N	t	\N	\N	\N	Revive the Fallen	Sorcery	U
29147	MOR	69	1	\N	\N	t	\N	\N	\N	Nightshade Schemers	Creature	U
36778	NEO	122	0	\N	\N	t	\N	\N	\N	Soul Transfer	Sorcery	R
36779	NEO	123	0	\N	\N	t	\N	\N	\N	Tatsunari, Toad Rider	Lgd. Creature	R
36780	NEO	124	0	\N	\N	t	\N	\N	\N	Tribute to Horobi // Echo of Death's Wail	Enchantment	R
36781	NEO	125	0	\N	\N	t	\N	\N	\N	Twisted Embrace	Enchantment	C
36777	NEO	121	1	\N	\N	t	\N	\N	\N	Return to Action	Instant	C
28655	MRD	40	0	\N	t	\N	\N	\N	\N	Lumengrid Sentinel	Creature	U
28658	WWK	49	0	\N	\N	t	\N	\N	\N	Anowon, the Ruin Sage	Lgd. Creature	R
28668	CHK	44	0	t	\N	\N	\N	\N	\N	Sensei Golden-Tail	Lgd. Creature	R
28678	RTR	34	0	\N	t	\N	\N	\N	\N	Crosstown Courier	Creature	C
28691	GPT	53	0	\N	\N	t	\N	\N	\N	Necromancer's Magemark	Enchantment	C
28706	ZEN	27	0	t	\N	\N	\N	\N	\N	Narrow Escape	Instant	C
28711	CON	58	0	\N	\N	\N	t	\N	\N	Banefire	Sorcery	R
28714	LRW	41	0	t	\N	\N	\N	\N	\N	Springjack Knight	Creature	C
28782	RTR	38	0	\N	t	\N	\N	\N	\N	Downsize	Instant	C
28785	MRD	45	0	\N	t	\N	\N	\N	\N	Override	Instant	C
28806	EVE	58	0	\N	\N	\N	t	\N	\N	Impelled Giant	Creature	U
28809	MOR	56	0	\N	t	\N	\N	\N	\N	Waterspout Weavers	Creature	U
28826	GTC	49	0	\N	t	\N	\N	\N	\N	Simic Fluxmage	Creature	U
28849	SOK	57	0	\N	t	\N	\N	\N	\N	Shinen of Flight's Wings	Creature	C
28904	GTC	52	0	\N	t	\N	\N	\N	\N	Spell Rupture	Instant	C
28911	RAV	45	0	\N	t	\N	\N	\N	\N	Dream Leash	Enchantment	R
28918	WWK	59	0	\N	\N	t	\N	\N	\N	Kalastria Highborn	Creature	R
28923	DKA	64	0	\N	\N	t	\N	\N	\N	Gravecrawler	Creature	R
28931	BOK	68	0	\N	\N	t	\N	\N	\N	Hero's Demise	Instant	R
28932	MID	41	0	t	\N	\N	\N	\N	\N	Vanquish the Horde	Sorcery	R
28960	ISD	53	0	\N	t	\N	\N	\N	\N	Dissipate	Instant	U
28976	ROE	49	0	t	\N	\N	\N	\N	\N	Time of Heroes	Enchantment	U
28980	CHK	56	0	\N	t	\N	\N	\N	\N	Cut the Tethers	Sorcery	U
29012	ISD	55	0	\N	t	\N	\N	\N	\N	Forbidden Alchemy	Instant	C
29740	ISD	83	1	\N	t	\N	\N	\N	\N	Think Twice	Instant	C
29022	WWK	63	0	\N	\N	t	\N	\N	\N	Quag Vampires	Creature	C
29028	ROE	51	0	t	\N	\N	\N	\N	\N	Transcendent Master	Creature	M
29029	GPT	66	0	\N	\N	\N	t	\N	\N	Ghor-Clan Bloodscale	Creature	U
29039	ALA	49	0	\N	t	\N	\N	\N	\N	Master of Etherium	Artifact Creature	R
29055	GPT	67	0	\N	\N	\N	t	\N	\N	Hypervolt Grasp	Enchantment	U
29066	EVE	68	0	\N	\N	\N	\N	t	\N	Helix Pinnacle	Enchantment	R
29069	MOR	66	0	\N	\N	t	\N	\N	\N	Mind Shatter	Sorcery	R
29070	ZEN	41	0	\N	t	\N	\N	\N	\N	Archive Trap	Instant	R
29092	EVE	69	0	\N	\N	\N	\N	t	\N	Marshdrinker Giant	Creature	U
29099	SHM	49	0	\N	t	\N	\N	\N	\N	River Kelpie	Creature	R
29114	MID	48	0	\N	t	\N	\N	\N	\N	Devious Cover-Up	Instant	C
29142	ISD	60	0	\N	t	\N	\N	\N	\N	Invisible Stalker	Creature	U
29158	ROE	56	0	\N	t	\N	\N	\N	\N	Champion's Drake	Creature	C
29235	DKA	76	4	\N	\N	t	\N	\N	\N	Tragic Slip	Instant	C
29202	DGM	74	0	\N	t	\N	t	\N	\N	Goblin Test Pilot	Creature	U
29203	SHM	53	0	\N	t	\N	\N	\N	\N	Thought Reflection	Enchantment	R
29216	GTC	64	0	\N	\N	t	\N	\N	\N	Dying Wish	Enchantment	U
29220	ISD	63	0	\N	t	\N	\N	\N	\N	Lost in the Mist	Instant	C
29227	MRD	62	0	\N	\N	t	\N	\N	\N	Disciple of the Vault	Creature	C
29230	WWK	71	0	\N	\N	\N	t	\N	\N	Akoum Battlesinger	Creature	C
28648	ISD	41	1	t	\N	\N	\N	\N	\N	Village Bell-Ringer	Creature	C
29272	ISD	65	0	\N	t	\N	\N	\N	\N	Makeshift Mauler	Creature	C
29283	CON	80	0	\N	\N	\N	\N	t	\N	Cylian Sunsinger	Creature	R
29295	BOK	82	0	\N	\N	t	\N	\N	\N	Sickening Shoal	Instant	R
29325	ALA	60	0	\N	t	\N	\N	\N	\N	Tezzeret the Seeker	Lgd. Planeswalker	M
29335	CON	82	0	\N	\N	\N	\N	t	\N	Filigree Fracture	Instant	U
29346	GTC	69	0	\N	\N	t	\N	\N	\N	Illness in the Ranks	Enchantment	U
29376	ISD	69	0	\N	t	\N	\N	\N	\N	Moon Heron	Creature	C
29404	EVE	81	0	t	\N	t	\N	\N	\N	Batwing Brume	Instant	U
29410	DGM	82	0	\N	\N	t	t	\N	\N	Master of Cruelties	Creature	M
29411	SHM	61	0	\N	\N	t	\N	\N	\N	Corrosive Mentor	Creature	U
29418	ROE	66	0	\N	t	\N	\N	\N	\N	Enclave Cryptologist	Creature	U
29429	ALA	64	0	\N	\N	t	\N	\N	\N	Archdemon of Unx	Creature	R
29436	DGM	83	0	t	\N	t	\N	\N	\N	Maw of the Obzedat	Creature	U
29453	THS	60	0	\N	t	\N	\N	\N	\N	Prognostic Sphinx	Creature	R
29473	SOK	81	0	\N	\N	t	\N	\N	\N	Maga, Traitor to Mortals	Lgd. Creature	R
29476	GTC	74	0	\N	\N	t	\N	\N	\N	Ogre Slumlord	Creature	R
29508	EVE	85	0	t	\N	t	\N	\N	\N	Deathbringer Liege	Creature	R
29083	SOK	66	1	\N	\N	t	\N	\N	\N	Deathmask Nezumi	Creature	C
29399	BOK	86	1	\N	\N	t	\N	\N	\N	Takenuma Bleeder	Creature	C
29556	MID	65	0	\N	t	\N	\N	\N	\N	Ominous Roost	Enchantment	U
29559	ALA	69	0	\N	\N	t	\N	\N	\N	Cunning Lethemancer	Creature	R
29604	CHK	80	0	\N	t	\N	\N	\N	\N	Psychic Puppetry	Instant	C
29611	ALA	71	0	\N	\N	t	\N	\N	\N	Deathgreeter	Creature	C
29620	WWK	86	0	\N	\N	\N	t	\N	\N	Quest for the Goblin Lord	Enchantment	U
29625	DKA	91	0	\N	\N	\N	t	\N	\N	Forge Devil	Creature	C
36782	NEO	126	0	\N	\N	t	\N	\N	\N	Undercity Scrounger	Artifact Creature	C
29649	SOM	76	0	\N	\N	t	\N	\N	\N	Psychic Miasma	Sorcery	C
29660	MID	69	0	\N	t	\N	\N	\N	\N	Patrician Geist	Creature	R
29678	ROE	76	0	\N	t	\N	\N	\N	\N	Merfolk Observer	Creature	C
36783	NEO	127	0	\N	\N	t	\N	\N	\N	Unforgiving One	Creature	U
29722	DGM	94	0	\N	t	\N	t	\N	\N	Ral Zarek	Lgd. Planeswalker	M
29723	SHM	73	0	\N	\N	t	\N	\N	\N	Plague of Vermin	Sorcery	R
29736	GTC	84	0	\N	\N	t	\N	\N	\N	Wight of Precinct Six	Creature	U
29748	DGM	95	0	\N	t	t	\N	\N	\N	Reap Intellect	Sorcery	M
29745	MOR	92	1	\N	\N	\N	t	\N	\N	Kindled Fury	Instant	C
29106	ROE	54	1	\N	t	\N	\N	\N	\N	Aura Finesse	Instant	C
29330	ZEN	51	1	\N	t	\N	\N	\N	\N	Lethargy Trap	Instant	C
28792	LRW	44	1	t	\N	\N	\N	\N	\N	Thoughtweft Trio	Creature	R
29286	LRW	63	1	\N	t	\N	\N	\N	\N	Fallowsage	Creature	U
36784	NEO	128	0	\N	\N	t	\N	\N	\N	Virus Beetle	Artifact Creature	C
29635	THS	67	1	\N	t	\N	\N	\N	\N	Thassa's Bounty	Sorcery	C
29193	THS	50	1	\N	t	\N	\N	\N	\N	Griptide	Instant	C
28846	ROE	44	2	t	\N	\N	\N	\N	\N	Soul's Attendant	Creature	C
29713	THS	70	2	\N	t	\N	\N	\N	\N	Triton Shorethief	Creature	C
29511	MOR	83	2	\N	\N	t	\N	\N	\N	Weed-Pruner Poplar	Creature	C
28789	CON	61	2	\N	\N	\N	t	\N	\N	Dark Temper	Instant	C
36785	NEO	129	0	\N	\N	t	\N	\N	\N	You Are Already Dead	Instant	C
36786	NEO	130	0	\N	\N	\N	t	\N	\N	Akki Ember-Keeper	Enchantment Creature	C
28995	SHM	45	0	\N	t	\N	\N	\N	\N	Parapet Watchers	Creature	C
29010	MID	44	0	\N	t	\N	\N	\N	\N	Consider	Instant	C
29026	LRW	53	0	\N	t	\N	\N	\N	\N	Benthicore	Creature	U
29060	GTC	58	0	\N	\N	t	\N	\N	\N	Basilica Screecher	Creature	C
29067	RAV	51	0	\N	t	\N	\N	\N	\N	Followed Footsteps	Enchantment	R
29068	RTR	49	0	\N	t	\N	\N	\N	\N	Search the City	Enchantment	R
29071	MRD	56	0	\N	t	\N	\N	\N	\N	Wanderguard Sentry	Creature	C
29082	ARB	76	0	t	\N	\N	\N	t	\N	Reborn Hope	Sorcery	U
29093	RAV	52	0	\N	t	\N	\N	\N	\N	Grayscaled Gharial	Creature	C
29098	DGM	70	0	\N	\N	\N	t	t	\N	Feral Animist	Creature	U
29107	GPT	69	0	\N	\N	\N	t	\N	\N	Living Inferno	Creature	R
29922	ISD	90	1	\N	\N	t	\N	\N	\N	Bloodline Keeper // Lord of Lineage	Creature	R
29122	ZEN	43	0	\N	t	\N	\N	\N	\N	Caller of Gales	Creature	C
29159	GPT	71	0	\N	\N	\N	t	\N	\N	Parallectric Feedback	Instant	R
29194	ISD	62	0	\N	t	\N	\N	\N	\N	Lantern Spirit	Creature	U
29204	WWK	70	0	\N	\N	t	\N	\N	\N	Urge to Feed	Instant	U
29210	ROE	58	0	\N	t	\N	\N	\N	\N	Crab Umbra	Enchantment	U
29211	GPT	73	0	\N	\N	\N	t	\N	\N	Rabble-Rouser	Creature	U
29250	RTR	56	0	\N	t	\N	\N	\N	\N	Voidwielder	Creature	C
29277	MOR	74	0	\N	\N	t	\N	\N	\N	Prickly Boggart	Creature	C
29278	ZEN	49	0	\N	t	\N	\N	\N	\N	Ior Ruin Expedition	Enchantment	C
29297	THS	54	0	\N	t	\N	\N	\N	\N	Meletis Charlatan	Creature	R
29315	GPT	77	0	\N	\N	\N	t	\N	\N	Skarrgan Firebird	Creature	R
29350	ISD	68	0	\N	t	\N	\N	\N	\N	Mirror-Mad Phantasm	Creature	M
29354	RTR	60	0	\N	\N	t	\N	\N	\N	Daggerdrome Imp	Creature	C
29357	MRD	67	0	\N	\N	t	\N	\N	\N	Irradiate	Instant	C
29360	WWK	76	0	\N	\N	\N	t	\N	\N	Comet Storm	Instant	M
29367	GPT	79	0	\N	\N	\N	\N	t	\N	Battering Wurm	Creature	U
29370	CHK	71	0	\N	t	\N	\N	\N	\N	Kami of Twisted Reflection	Creature	C
29381	MOR	78	0	\N	\N	t	\N	\N	\N	Squeaking Pie Grubfellows	Creature	C
29396	CHK	72	0	\N	t	\N	\N	\N	\N	Keiga, the Tide Star	Lgd. Creature	R
29407	MOR	79	0	\N	\N	t	\N	\N	\N	Stenchskipper	Creature	R
29031	SOK	64	1	\N	\N	t	\N	\N	\N	Death of a Thousand Stings	Instant	C
29415	SOM	67	0	\N	\N	t	\N	\N	\N	Ichor Rats	Creature	U
29425	BOK	87	0	\N	\N	t	\N	\N	\N	Three Tragedies	Sorcery	U
29838	CHK	89	1	\N	t	\N	\N	\N	\N	Soratami Rainshaper	Creature	C
29162	CHK	63	1	\N	t	\N	\N	\N	\N	Graceful Adept	Creature	U
29445	GPT	82	0	\N	\N	\N	\N	t	\N	Crash Landing	Instant	U
29452	MID	61	0	\N	t	\N	\N	\N	\N	Malevolent Hermit // Benevolent Geist	Creature	R
29482	EVE	84	0	t	\N	t	\N	\N	\N	Cauldron Haze	Instant	U
29489	SHM	64	0	\N	\N	t	\N	\N	\N	Disturbing Plot	Sorcery	C
29496	ROE	69	0	\N	t	\N	\N	\N	\N	Gravitational Shift	Enchantment	R
29110	CHK	61	1	\N	t	\N	\N	\N	\N	Floating-Dream Zubera	Creature	C
29540	DGM	87	0	\N	t	\N	t	\N	\N	Nivix Cyclops	Creature	C
29541	SHM	66	0	\N	\N	t	\N	\N	\N	Faerie Macabre	Creature	C
29318	CHK	69	1	\N	t	\N	\N	\N	\N	Honden of Seeing Winds	Lgd. Enchantment	U
29561	RAV	70	0	\N	t	\N	\N	\N	\N	Terraformer	Creature	C
29580	GTC	78	0	\N	\N	t	\N	\N	\N	Slate Street Ruffian	Creature	C
29584	ISD	77	0	\N	t	\N	\N	\N	\N	Skaab Ruinator	Creature	M
29593	SHM	68	0	\N	\N	t	\N	\N	\N	Hollowborn Barghest	Creature	R
29606	GTC	79	0	\N	\N	t	\N	\N	\N	Smog Elemental	Creature	U
29941	SOK	99	2	\N	\N	\N	t	\N	\N	Ghost-Lit Raider	Creature	U
29623	SOM	75	0	\N	\N	t	\N	\N	\N	Plague Stinger	Creature	C
29637	ALA	72	0	\N	\N	t	\N	\N	\N	Demon's Herald	Creature	U
29646	WWK	87	0	\N	\N	\N	t	\N	\N	Ricochet Trap	Instant	U
29651	DKA	92	0	\N	\N	\N	t	\N	\N	Heckling Fiends	Creature	U
29658	GTC	81	0	\N	\N	t	\N	\N	\N	Thrull Parasite	Creature	U
29690	EVE	92	0	t	\N	t	\N	\N	\N	Nip Gwyllion	Creature	C
36789	NEO	133	0	\N	\N	\N	t	\N	\N	Ambitious Assault	Instant	C
36790	NEO	134	0	\N	\N	\N	t	\N	\N	Atsushi, the Blazing Sky	Lgd. Creature	M
29738	MID	72	0	\N	t	\N	\N	\N	\N	Revenge of the Drowned	Instant	C
29751	CON	98	0	\N	\N	\N	t	t	\N	Apocalypse Hydra	Creature	M
29754	LRW	81	0	\N	t	\N	\N	\N	\N	Ringskipper	Creature	C
29796	RTR	77	0	\N	\N	t	\N	\N	\N	Slum Reaper	Creature	U
29799	MRD	84	0	\N	\N	t	\N	\N	\N	Wrench Mind	Sorcery	C
29810	ARB	104	0	\N	t	\N	\N	t	\N	Vedalken Heretic	Creature	R
29811	SOK	94	0	\N	\N	\N	t	\N	\N	Barrel Down Sokenzan	Instant	C
29821	RAV	80	0	\N	\N	t	\N	\N	\N	Clinging Darkness	Enchantment	C
29826	DGM	98	0	\N	\N	t	\N	t	\N	Rot Farm Skeleton	Creature	U
29831	SOM	83	0	\N	\N	\N	t	\N	\N	Barrage Ogre	Creature	U
29870	ISD	88	0	\N	\N	t	\N	\N	\N	Bitterheart Witch	Creature	U
29877	MRD	87	0	\N	\N	\N	t	\N	\N	Confusion in the Ranks	Enchantment	R
29880	WWK	96	0	\N	\N	\N	\N	t	\N	Avenger of Zendikar	Creature	M
29885	DKA	101	0	\N	\N	\N	t	\N	\N	Pyreheart Wolf	Creature	U
29886	GPT	99	0	\N	\N	\N	\N	t	\N	Wurmweaver Coil	Enchantment	R
29918	GTC	91	0	\N	\N	\N	t	\N	\N	Five-Alarm Fire	Enchantment	R
29950	EVE	102	0	\N	t	\N	t	\N	\N	Dominus of Fealty	Creature	R
29600	ROE	73	1	\N	t	\N	\N	\N	\N	Jwari Scuttler	Creature	C
29262	ROE	60	1	\N	t	\N	\N	\N	\N	Distortion Strike	Sorcery	C
29201	MRD	61	1	\N	\N	t	\N	\N	\N	Contaminated Bond	Enchantment	C
29255	SHM	55	1	\N	\N	t	\N	\N	\N	Aphotic Wisps	Instant	C
29931	SHM	81	1	\N	\N	t	\N	\N	\N	Wound Reflection	Enchantment	R
29442	LRW	69	1	\N	t	\N	\N	\N	\N	Guile	Creature	R
29531	THS	63	1	\N	t	\N	\N	\N	\N	Shipbreaker Kraken	Creature	R
29609	THS	66	1	\N	t	\N	\N	\N	\N	Thassa, God of the Sea	Lgd. Enchantment Creature	M
29141	THS	48	1	\N	t	\N	\N	\N	\N	Fate Foretold	Enchantment	C
29121	MOR	68	1	\N	\N	t	\N	\N	\N	Morsel Theft	Tribal Sorcery	C
29693	MOR	90	2	\N	\N	\N	t	\N	\N	Fire Juggler	Creature	C
36792	NEO	136	0	\N	\N	\N	t	\N	\N	Crackling Emergence	Enchantment	C
36793	NEO	137	1	\N	\N	\N	t	\N	\N	Dragonspark Reactor	Artifact	U
36791	NEO	135	1	\N	\N	\N	t	\N	\N	Bronzeplate Boar	Artifact Creature	U
36794	NEO	138	1	\N	\N	\N	t	\N	\N	Experimental Synthesizer	Artifact	C
36795	NEO	139	1	\N	\N	\N	t	\N	\N	Explosive Entry	Sorcery	C
29044	ZEN	40	0	\N	t	\N	\N	\N	\N	Aether Figment	Creature	U
29045	MRD	55	0	\N	t	\N	\N	\N	\N	Vedalken Archmage	Creature	R
29048	WWK	64	0	\N	\N	t	\N	\N	\N	Quest for the Nihil Stone	Enchantment	R
29053	DKA	69	0	\N	\N	t	\N	\N	\N	Increasing Ambition	Sorcery	R
29079	DKA	70	0	\N	\N	t	\N	\N	\N	Mikaeus, the Unhallowed	Lgd. Creature	M
29119	RAV	53	0	\N	t	\N	\N	\N	\N	Grozoth	Creature	R
29124	DGM	71	0	\N	t	\N	t	\N	\N	Fluxcharger	Creature	U
29133	GPT	70	0	\N	\N	\N	t	\N	\N	Ogre Savant	Creature	C
29136	CHK	62	0	\N	t	\N	\N	\N	\N	Gifts Ungiven	Instant	R
29146	RTR	52	0	\N	t	\N	\N	\N	\N	Sphinx of the Chimes	Creature	R
29149	MRD	59	0	\N	\N	t	\N	\N	\N	Chimney Imp	Creature	C
29156	LRW	58	0	\N	t	\N	\N	\N	\N	Drowner of Secrets	Creature	U
29164	GTC	62	0	\N	\N	t	\N	\N	\N	Death's Approach	Enchantment	C
29184	ROE	57	0	\N	t	\N	\N	\N	\N	Coralhelm Commander	Creature	R
29185	GPT	72	0	\N	\N	\N	t	\N	\N	Pyromatics	Instant	C
29195	ALA	55	0	\N	t	\N	\N	\N	\N	Sharding Sphinx	Artifact Creature	R
29200	ZEN	46	0	\N	t	\N	\N	\N	\N	Gomazoa	Creature	U
29205	CON	77	0	\N	\N	\N	t	\N	\N	Worldheart Phoenix	Creature	R
29209	DKA	75	0	\N	\N	t	\N	\N	\N	Spiteful Shadows	Enchantment	C
29212	ARB	81	0	t	\N	t	\N	\N	\N	Identity Crisis	Sorcery	R
29240	CHK	66	0	\N	t	\N	\N	\N	\N	Hisoka, Minamo Sensei	Lgd. Creature	R
29251	MOR	73	0	\N	\N	t	\N	\N	\N	Pack's Disdain	Instant	C
29254	DGM	76	0	\N	t	t	\N	\N	\N	Haunter of Nightveil	Creature	U
29263	GPT	75	0	\N	\N	\N	t	\N	\N	Shattering Spree	Sorcery	U
29276	RTR	57	0	\N	\N	t	\N	\N	\N	Assassin's Strike	Sorcery	U
29279	MRD	64	0	\N	\N	t	\N	\N	\N	Dross Prowler	Creature	C
29290	ARB	84	0	t	\N	t	\N	\N	\N	Vectis Dominator	Artifact Creature	C
29291	SOK	74	0	\N	\N	t	\N	\N	\N	Kagemaro's Clutch	Enchantment	C
29301	RAV	60	0	\N	t	\N	\N	\N	\N	Muddle the Mixture	Instant	C
29306	DGM	78	0	\N	\N	t	\N	t	\N	Korozda Gorgon	Creature	U
29311	SOM	63	0	\N	\N	t	\N	\N	\N	Fume Spitter	Creature	C
29339	DKA	80	0	\N	\N	t	\N	\N	\N	Zombie Apocalypse	Sorcery	R
29342	ARB	86	0	\N	t	\N	t	\N	\N	Cloven Casting	Enchantment	R
29353	EVE	79	0	\N	\N	\N	\N	t	\N	Twinblade Slasher	Creature	U
29937	DKA	103	1	\N	\N	\N	t	\N	\N	Scorch the Fields	Sorcery	C
29374	MID	58	0	\N	t	\N	\N	\N	\N	Larder Zombie	Creature	C
29402	ISD	70	0	\N	t	\N	\N	\N	\N	Murder of Crows	Creature	U
29421	SOK	79	0	\N	\N	t	\N	\N	\N	Kuro's Taken	Creature	C
29458	RTR	64	0	\N	\N	t	\N	\N	\N	Destroy the Evidence	Sorcery	C
29470	ROE	68	0	\N	t	\N	\N	\N	\N	Frostwind Invoker	Creature	C
29478	MID	62	0	\N	t	\N	\N	\N	\N	Memory Deluge	Instant	R
29506	ISD	74	0	\N	t	\N	\N	\N	\N	Sensory Deprivation	Enchantment	C
29513	MRD	73	0	\N	\N	t	\N	\N	\N	Nim Shrieker	Creature	C
29321	BOK	83	1	\N	\N	t	\N	\N	\N	Skullmane Baku	Creature	C
29529	BOK	91	0	\N	\N	\N	t	\N	\N	Akki Blizzard-Herder	Creature	C
29555	BOK	92	0	\N	\N	\N	t	\N	\N	Akki Raider	Creature	U
29560	EVE	87	0	t	\N	t	\N	\N	\N	Edge of the Divinity	Enchantment	C
29581	BOK	93	0	\N	\N	\N	t	\N	\N	Ashen Monstrosity	Creature	U
29598	LRW	75	0	\N	t	\N	\N	\N	\N	Mistbind Clique	Creature	R
29614	RTR	70	0	\N	\N	t	\N	\N	\N	Mind Rot	Sorcery	C
29617	MRD	77	0	\N	\N	t	\N	\N	\N	Slith Bloodletter	Creature	U
29663	ALA	73	0	\N	\N	t	\N	\N	\N	Dreg Reaver	Creature	C
29675	SOM	77	0	\N	\N	t	\N	\N	\N	Relic Putrescence	Enchantment	C
29684	GTC	82	0	\N	\N	t	\N	\N	\N	Undercity Informer	Creature	U
29705	GPT	92	0	\N	\N	\N	\N	t	\N	Predatory Focus	Sorcery	U
29729	DKA	95	0	\N	\N	\N	t	\N	\N	Increasing Vengeance	Instant	R
29732	ARB	101	0	\N	t	\N	\N	t	\N	Lorescale Coatl	Creature	U
29767	ALA	77	0	\N	\N	t	\N	\N	\N	Glaze Fiend	Artifact Creature	C
29783	GPT	95	0	\N	\N	\N	\N	t	\N	Silhana Starfletcher	Creature	C
29790	MID	74	0	\N	t	\N	\N	\N	\N	Shipwreck Sifters	Creature	C
29818	ISD	86	0	\N	\N	t	\N	\N	\N	Altar's Reap	Instant	C
29834	ROE	82	0	\N	t	\N	\N	\N	\N	Recurring Insight	Sorcery	R
29835	GPT	97	0	\N	\N	\N	\N	t	\N	Starved Rusalka	Creature	U
29845	ALA	80	0	\N	\N	t	\N	\N	\N	Infest	Sorcery	U
29850	ZEN	71	0	\N	t	\N	\N	\N	\N	Summoner's Bane	Instant	U
29855	CON	102	0	t	t	t	t	t	\N	Conflux	Sorcery	M
29866	GTC	89	0	\N	\N	\N	t	\N	\N	Ember Beast	Creature	C
29893	BOK	105	0	\N	\N	\N	t	\N	\N	Genju of the Spires	Enchantment	U
29932	WWK	98	0	\N	\N	\N	\N	t	\N	Canopy Cover	Enchantment	U
29938	GPT	101	0	t	\N	t	\N	\N	\N	Angel of Despair	Creature	R
29953	MOR	100	0	\N	\N	\N	t	\N	\N	Roar of the Crowd	Sorcery	C
29954	ZEN	75	0	\N	t	\N	\N	\N	\N	Umara Raptor	Creature	C
29955	MRD	90	0	\N	\N	\N	t	\N	\N	Fiery Gambit	Sorcery	R
29963	DKA	104	0	\N	\N	\N	t	\N	\N	Shattered Perception	Sorcery	U
29971	BOK	108	0	\N	\N	\N	t	\N	\N	In the Web of War	Enchantment	R
29760	CHK	86	1	\N	t	\N	\N	\N	\N	Soratami Cloudskater	Creature	C
29987	SOM	89	0	\N	\N	\N	t	\N	\N	Flameborn Hellion	Creature	C
29074	WWK	65	1	\N	\N	t	\N	\N	\N	Ruthless Cullblade	Creature	C
29720	ZEN	66	1	\N	t	\N	\N	\N	\N	Sky Ruin Drake	Creature	C
29914	ROE	85	1	\N	t	\N	\N	\N	\N	Sea Gate Oracle	Creature	C
29704	ROE	77	1	\N	t	\N	\N	\N	\N	Merfolk Skyscout	Creature	U
29966	ROE	87	1	\N	t	\N	\N	\N	\N	Shared Discovery	Sorcery	C
29463	SHM	63	1	\N	\N	t	\N	\N	\N	Crowd of Cinders	Creature	U
29628	ARB	97	1	t	\N	\N	t	\N	\N	Fight to the Death	Instant	R
29725	CON	97	1	\N	\N	\N	\N	t	\N	Wild Leotau	Creature	C
29595	CON	92	1	\N	\N	\N	\N	t	\N	Soul's Majesty	Sorcery	R
29063	THS	45	1	\N	t	\N	\N	\N	\N	Crackling Triton	Creature	C
29401	THS	58	1	\N	t	\N	\N	\N	\N	Ordeal of Thassa	Enchantment	U
29921	THS	78	1	\N	\N	t	\N	\N	\N	Baleful Eidolon	Enchantment Creature	C
29973	THS	80	1	\N	\N	t	\N	\N	\N	Boon of Erebos	Instant	C
29958	WWK	99	1	\N	\N	\N	\N	t	\N	Explore	Sorcery	C
29633	BOK	95	1	\N	\N	\N	t	\N	\N	Blademane Baku	Creature	C
29715	ALA	75	1	\N	\N	t	\N	\N	\N	Executioner's Capsule	Artifact	C
36796	NEO	140	0	\N	\N	\N	t	\N	\N	Explosive Singularity	Sorcery	M
36797	NEO	141	0	\N	\N	\N	t	\N	\N	Fable of the Mirror-Breaker // Reflection of Kiki-Jiki	Enchantment	R
29127	CON	74	0	\N	\N	\N	t	\N	\N	Volcanic Fallout	Instant	U
29169	ALA	54	0	\N	t	\N	\N	\N	\N	Resounding Wave	Instant	C
29174	ZEN	45	0	\N	t	\N	\N	\N	\N	Cosi's Trickster	Creature	R
29190	GTC	63	0	\N	\N	t	\N	\N	\N	Devour Flesh	Instant	C
29217	BOK	79	0	\N	\N	t	\N	\N	\N	Pus Kami	Creature	U
29238	ARB	82	0	t	\N	t	\N	\N	\N	Necromancer's Covenant	Enchantment	R
29265	SOK	73	0	\N	\N	t	\N	\N	\N	Kagemaro, First to Suffer	Lgd. Creature	R
29274	EVE	76	0	\N	\N	\N	\N	t	\N	Swirling Spriggan	Creature	U
29246	ISD	64	1	\N	t	\N	\N	\N	\N	Ludevic's Test Subject // Ludevic's Abomination	Creature	R
29303	MOR	75	0	\N	\N	t	\N	\N	\N	Pulling Teeth	Sorcery	C
29304	ZEN	50	0	\N	t	\N	\N	\N	\N	Kraken Hatchling	Creature	C
29313	DKA	79	0	\N	\N	t	\N	\N	\N	Wakedancer	Creature	U
29316	ARB	85	0	t	\N	t	\N	\N	\N	Zealous Persecution	Instant	U
29317	SOK	75	0	\N	\N	t	\N	\N	\N	Kami of Empty Graves	Creature	C
29327	RAV	61	0	\N	t	\N	\N	\N	\N	Peel from Reality	Instant	C
29328	RTR	59	0	\N	\N	t	\N	\N	\N	Cremate	Instant	C
29337	SOM	64	0	\N	\N	t	\N	\N	\N	Geth, Lord of the Vault	Lgd. Creature	M
29344	CHK	70	0	\N	t	\N	\N	\N	\N	Jushi Apprentice // Tomoya the Revealer	Creature	R
29378	EVE	80	0	\N	\N	\N	\N	t	\N	Wickerbough Elder	Creature	C
29383	MRD	68	0	\N	\N	t	\N	\N	\N	Moriok Scavenger	Creature	C
29389	SOM	66	0	\N	\N	t	\N	\N	\N	Hand of the Praetors	Creature	R
29393	GPT	80	0	\N	\N	\N	\N	t	\N	Beastmaster's Magemark	Enchantment	C
29139	BOK	76	1	\N	\N	t	\N	\N	\N	Okiba-Gang Shinobi	Creature	C
29456	EVE	83	0	t	\N	t	\N	\N	\N	Bloodied Ghost	Creature	U
29460	ZEN	56	0	\N	t	\N	\N	\N	\N	Merfolk Wayfinder	Creature	U
29461	MRD	71	0	\N	\N	t	\N	\N	\N	Nim Lasher	Creature	C
29472	ARB	91	0	\N	\N	t	\N	t	\N	Lord of Extinction	Creature	M
29477	BOK	89	0	\N	\N	t	\N	\N	\N	Toshiro Umezawa	Lgd. Creature	R
29507	ALA	67	0	\N	\N	t	\N	\N	\N	Bone Splinters	Sorcery	C
36798	NEO	142	0	\N	\N	\N	t	\N	\N	Flame Discharge	Instant	U
29517	CON	89	0	\N	\N	\N	\N	t	\N	Sacellum Archers	Creature	U
29528	GTC	76	0	\N	\N	t	\N	\N	\N	Shadow Alley Denizen	Creature	C
29535	RAV	69	0	\N	t	\N	\N	\N	\N	Telling Time	Instant	U
29536	RTR	67	0	\N	\N	t	\N	\N	\N	Grave Betrayal	Enchantment	R
29545	SOM	72	0	\N	\N	t	\N	\N	\N	Necrotic Ooze	Creature	R
29551	SOK	84	0	\N	\N	t	\N	\N	\N	One with Nothing	Instant	R
29563	MOR	85	0	\N	\N	\N	t	\N	\N	Boldwyr Heavyweights	Creature	R
36799	NEO	143	0	\N	\N	\N	t	\N	\N	Gift of Wrath	Enchantment	C
29573	DKA	89	0	\N	\N	\N	t	\N	\N	Flayer of the Hatebound	Creature	R
29594	WWK	85	0	\N	\N	\N	t	\N	\N	Mordant Dragon	Creature	R
29599	DKA	90	0	\N	\N	\N	t	\N	\N	Fling	Instant	C
29607	BOK	94	0	\N	\N	\N	t	\N	\N	Aura Barbs	Instant	U
29608	MID	67	0	\N	t	\N	\N	\N	\N	Otherworldly Gaze	Instant	C
29638	EVE	90	0	t	\N	t	\N	\N	\N	Harvest Gwyllion	Creature	C
29645	SHM	70	0	\N	\N	t	\N	\N	\N	Incremental Blight	Sorcery	U
29652	ROE	75	0	\N	t	\N	\N	\N	\N	Lighthouse Chronologist	Creature	M
36800	NEO	144	0	\N	\N	\N	t	\N	\N	Go-Shintai of Ancient Wars	Lgd. Enchantment Creature	U
29667	MOR	89	0	\N	\N	\N	t	\N	\N	Countryside Crusher	Creature	R
29668	ZEN	64	0	\N	t	\N	\N	\N	\N	Seascape Aerialist	Creature	U
29673	CON	95	0	\N	\N	\N	\N	t	\N	Thornling	Creature	M
29686	MID	70	0	\N	t	\N	\N	\N	\N	Phantom Carriage	Creature	U
29707	SOK	90	0	\N	\N	t	\N	\N	\N	Skull Collector	Creature	U
29762	GTC	85	0	\N	\N	\N	t	\N	\N	Act of Treason	Sorcery	C
29785	SOK	93	0	\N	\N	\N	t	\N	\N	Akki Underling	Creature	C
29788	GTC	86	0	\N	\N	\N	t	\N	\N	Bomber Corps	Creature	C
29820	EVE	97	0	t	\N	t	\N	\N	\N	Voracious Hatchling	Creature	U
36801	NEO	145	0	\N	\N	\N	t	\N	\N	Goro-Goro, Disciple of Ryusei	Lgd. Creature	R
29869	THS	76	0	\N	\N	t	\N	\N	\N	Agent of the Fates	Creature	R
29878	DGM	100	0	\N	\N	\N	t	t	\N	Savageborn Hydra	Creature	M
29879	SHM	79	0	\N	\N	t	\N	\N	\N	Splitting Headache	Sorcery	C
36803	NEO	147	0	\N	\N	\N	t	\N	\N	Invoke Calamity	Instant	R
29897	ALA	82	0	\N	\N	t	\N	\N	\N	Puppet Conjurer	Artifact Creature	U
29900	RTR	81	0	\N	\N	t	\N	\N	\N	Thrill-Kill Assassin	Creature	U
29904	DGM	101	0	\N	\N	\N	t	t	\N	Scab-Clan Giant	Creature	U
29905	SHM	80	0	\N	\N	t	\N	\N	\N	Torture	Enchantment	C
29912	GPT	100	0	t	\N	t	\N	\N	\N	Agent of Masks	Creature	U
29945	BOK	107	0	\N	\N	\N	t	\N	\N	Heartless Hidetsugu	Lgd. Creature	R
29946	MID	80	0	\N	t	\N	\N	\N	\N	Suspicious Stowaway // Seafaring Werewolf	Creature	R
29976	EVE	103	0	\N	t	\N	t	\N	\N	Inside Out	Instant	C
29983	SHM	83	0	\N	\N	\N	t	\N	\N	Bloodmark Mentor	Creature	U
29990	GPT	103	0	\N	\N	\N	t	t	\N	Borborygmos	Lgd. Creature	R
29993	SOK	101	0	\N	\N	\N	t	\N	\N	Godo's Irregulars	Creature	U
29996	GTC	94	0	\N	\N	\N	t	\N	\N	Hellkite Tyrant	Creature	M
30003	RAV	87	0	\N	\N	t	\N	\N	\N	Golgari Thug	Creature	U
30008	DGM	105	0	\N	t	\N	\N	t	\N	Species Gorger	Creature	U
30009	SHM	84	0	\N	\N	\N	t	\N	\N	Bloodshed Fever	Enchantment	C
30027	ALA	87	0	\N	\N	t	\N	\N	\N	Shore Snapper	Creature	C
30032	ZEN	78	0	\N	t	\N	\N	\N	\N	Windrider Eel	Creature	C
30034	DGM	106	0	\N	\N	t	t	\N	\N	Spike Jester	Creature	U
29288	ROE	61	1	\N	t	\N	\N	\N	\N	Domestication	Enchantment	U
30035	SHM	85	3	\N	\N	\N	t	\N	\N	Boggart Arsonists	Creature	C
29702	LRW	79	1	\N	t	\N	\N	\N	\N	Ponder	Sorcery	C
29827	SHM	77	1	\N	\N	t	\N	\N	\N	Sickle Ripper	Creature	C
29130	LRW	57	1	\N	t	\N	\N	\N	\N	Deeptread Merrow	Creature	C
29576	ARB	95	1	\N	\N	t	\N	t	\N	Putrid Leech	Creature	C
29281	SHM	56	2	\N	\N	t	\N	\N	\N	Ashenmoor Cohort	Creature	C
29583	THS	65	2	\N	t	\N	\N	\N	\N	Swan Song	Instant	R
29765	THS	72	1	\N	t	\N	\N	\N	\N	Vaporkin	Creature	C
29245	THS	52	1	\N	t	\N	\N	\N	\N	Lost in a Labyrinth	Instant	C
36804	NEO	148	0	\N	\N	\N	t	\N	\N	Ironhoof Boar	Artifact Creature	C
30025	THS	82	1	\N	\N	t	\N	\N	\N	Cutthroat Maneuver	Instant	U
29387	CON	84	2	\N	\N	\N	\N	t	\N	Matca Rioters	Creature	C
29179	CON	76	2	\N	\N	\N	t	\N	\N	Wandering Goblins	Creature	C
29547	DKA	88	1	\N	\N	\N	t	\N	\N	Fires of Undeath	Instant	C
29166	MID	50	0	\N	t	\N	\N	\N	\N	Drownyard Amalgam	Creature	C
29182	LRW	59	0	\N	t	\N	\N	\N	\N	Ego Erasure	Tribal Instant	U
29187	SOK	70	0	\N	\N	t	\N	\N	\N	Gnat Miser	Creature	C
29242	GTC	65	0	\N	\N	t	\N	\N	\N	Gateway Shade	Creature	U
29249	RAV	58	0	\N	t	\N	\N	\N	\N	Mark of Eviction	Enchantment	U
29256	WWK	72	0	\N	\N	\N	t	\N	\N	Bazaar Trader	Creature	R
29261	DKA	77	0	\N	\N	t	\N	\N	\N	Undying Evil	Instant	C
29308	WWK	74	0	\N	\N	\N	t	\N	\N	Chain Reaction	Sorcery	R
29332	DGM	79	0	\N	t	\N	\N	t	\N	Krasis Incubation	Enchantment	U
29348	MID	57	0	\N	t	\N	\N	\N	\N	Grafted Identity	Enchantment	R
29364	LRW	66	0	\N	t	\N	\N	\N	\N	Forced Fruition	Enchantment	R
29379	RAV	63	0	\N	t	\N	\N	\N	\N	Remand	Instant	U
29714	ISD	82	1	\N	t	\N	\N	\N	\N	Sturmgeist	Creature	R
29406	RTR	62	0	\N	\N	t	\N	\N	\N	Dead Reveler	Creature	C
29419	GPT	81	0	\N	\N	\N	\N	t	\N	Bioplasm	Creature	R
29428	ISD	71	0	\N	t	\N	\N	\N	\N	Rooftop Storm	Enchantment	R
29448	CHK	74	0	\N	t	\N	\N	\N	\N	Meloku the Clouded Mirror	Lgd. Creature	R
29369	SOK	77	1	\N	\N	t	\N	\N	\N	Kiku's Shadow	Sorcery	U
29462	DGM	84	0	\N	t	\N	t	\N	\N	Melek, Izzet Paragon	Lgd. Creature	R
29471	GPT	83	0	\N	\N	\N	\N	t	\N	Dryad Sophisticate	Creature	U
29474	CHK	75	0	\N	t	\N	\N	\N	\N	Myojin of Seeing Winds	Lgd. Creature	R
29682	CHK	83	1	\N	t	\N	\N	\N	\N	River Kaijin	Creature	C
29486	ZEN	57	0	\N	t	\N	\N	\N	\N	Mindbreak Trap	Instant	M
29997	BOK	109	1	\N	\N	\N	t	\N	\N	Ire of Kaminari	Instant	C
29493	SOM	70	0	\N	\N	t	\N	\N	\N	Moriok Reaver	Creature	C
29503	BOK	90	0	\N	\N	t	\N	\N	\N	Yukora, the Prisoner	Lgd. Creature	R
29521	DKA	87	0	\N	\N	\N	t	\N	\N	Faithless Looting	Sorcery	C
29524	ARB	93	0	\N	\N	t	\N	t	\N	Marrow Chomper	Creature	U
29534	EVE	86	0	t	\N	t	\N	\N	\N	Divinity of Pride	Creature	R
29299	ALA	59	1	\N	t	\N	\N	\N	\N	Steelclad Serpent	Artifact Creature	C
29548	ROE	71	0	\N	t	\N	\N	\N	\N	Hada Spy Patrol	Creature	U
29549	GPT	86	0	\N	\N	\N	\N	t	\N	Ghor-Clan Savage	Creature	C
29565	MRD	75	0	\N	\N	t	\N	\N	\N	Reiver Demon	Creature	R
29568	WWK	84	0	\N	\N	\N	t	\N	\N	Kazuul, Tyrant of the Cliffs	Lgd. Creature	R
29578	CHK	79	0	\N	t	\N	\N	\N	\N	Petals of Insight	Sorcery	U
29586	EVE	88	0	t	\N	t	\N	\N	\N	Evershrike	Creature	R
29589	MOR	86	0	\N	\N	\N	t	\N	\N	Boldwyr Intimidator	Creature	U
29590	ZEN	61	0	\N	t	\N	\N	\N	\N	Rite of Replication	Sorcery	R
29603	SOK	86	0	\N	\N	t	\N	\N	\N	Raving Oni-Slave	Creature	C
29612	EVE	89	0	t	\N	t	\N	\N	\N	Gwyllion Hedge-Mage	Creature	U
29619	SHM	69	0	\N	\N	t	\N	\N	\N	Hollowsage	Creature	U
29626	ROE	74	0	\N	t	\N	\N	\N	\N	Lay Bare	Instant	C
29634	MID	68	0	\N	t	\N	\N	\N	\N	Overwhelmed Archivist // Archive Haunt	Creature	U
29662	ISD	80	0	\N	t	\N	\N	\N	\N	Stitched Drake	Creature	C
29679	GPT	91	0	\N	\N	\N	\N	t	\N	Petrified Wood-Kin	Creature	R
29721	MRD	81	0	\N	\N	t	\N	\N	\N	Wail of the Nim	Instant	C
29724	WWK	90	0	\N	\N	\N	t	\N	\N	Searing Blaze	Instant	C
36805	NEO	149	0	\N	\N	\N	t	\N	\N	Kami of Industry	Creature	C
29741	ALA	76	0	\N	\N	t	\N	\N	\N	Fleshbag Marauder	Creature	U
29744	RTR	75	0	\N	\N	t	\N	\N	\N	Sewer Shambler	Creature	C
29749	SHM	74	0	\N	\N	t	\N	\N	\N	Polluted Bonds	Enchantment	R
29771	MOR	93	0	\N	\N	\N	t	\N	\N	Lightning Crafter	Creature	R
29774	DGM	96	0	t	t	\N	\N	\N	\N	Render Silent	Instant	R
29775	SHM	75	0	\N	\N	t	\N	\N	\N	Puppeteer Clique	Creature	R
29782	ROE	80	0	\N	t	\N	\N	\N	\N	Phantasmal Abomination	Creature	U
36806	NEO	150	0	\N	\N	\N	t	\N	\N	Kami's Flare	Instant	C
29805	SOM	82	0	\N	\N	\N	t	\N	\N	Assault Strobe	Sorcery	C
29816	MID	75	0	\N	t	\N	\N	\N	\N	Skaab Wrangler	Creature	U
29842	MID	76	0	\N	t	\N	\N	\N	\N	Sludge Monster	Creature	R
29858	LRW	85	0	\N	t	\N	\N	\N	\N	Shapesharer	Creature	R
29863	SOK	96	0	\N	\N	\N	t	\N	\N	Captive Flame	Enchantment	U
29902	ZEN	73	0	\N	t	\N	\N	\N	\N	Trapfinder's Trick	Sorcery	C
29907	CON	104	0	\N	t	t	t	\N	\N	Elder Mastery	Enchantment	U
29978	RTR	84	0	\N	\N	t	\N	\N	\N	Zanikev Locust	Creature	U
29981	MRD	91	0	\N	\N	\N	t	\N	\N	Fists of the Anvil	Instant	C
30000	ISD	93	0	\N	\N	t	\N	\N	\N	Corpse Lunge	Instant	C
30014	LRW	91	0	\N	t	\N	\N	\N	\N	Streambed Aquitects	Creature	C
30018	ROE	89	0	\N	t	\N	\N	\N	\N	Sphinx of Magosi	Creature	R
30026	ISD	94	0	\N	\N	t	\N	\N	\N	Curse of Death's Hold	Enchantment	R
30028	EVE	105	0	\N	t	\N	t	\N	\N	Mirror Sheen	Enchantment	R
30033	MRD	93	0	\N	\N	\N	t	\N	\N	Fractured Loyalty	Enchantment	U
36808	NEO	152	0	\N	\N	\N	t	\N	\N	Kumano Faces Kakkazan // Etching of Kumano	Enchantment	U
29756	ROE	79	1	\N	t	\N	\N	\N	\N	Narcolepsy	Enchantment	C
29333	SHM	58	1	\N	\N	t	\N	\N	\N	Blowfly Infestation	Enchantment	U
29437	SHM	62	1	\N	\N	t	\N	\N	\N	Corrupt	Sorcery	U
29910	LRW	87	1	\N	t	\N	\N	\N	\N	Silvergill Douser	Creature	C
29676	LRW	78	1	\N	t	\N	\N	\N	\N	Pestermite	Creature	C
30017	ARB	112	1	\N	t	t	t	\N	\N	Grixis Sojourners	Creature	C
29368	ARB	87	1	\N	t	\N	t	\N	\N	Double Negative	Instant	U
29459	MOR	81	2	\N	\N	t	\N	\N	\N	Violet Pall	Tribal Instant	C
29791	THS	73	1	\N	t	\N	\N	\N	\N	Voyage's End	Instant	C
29323	THS	55	1	\N	t	\N	\N	\N	\N	Mnemonic Wall	Creature	C
29151	SHM	51	1	\N	t	\N	\N	\N	\N	Sinking Feeling	Enchantment	C
29537	MOR	84	1	\N	\N	t	\N	\N	\N	Weirding Shaman	Creature	R
29309	CON	81	3	\N	\N	\N	\N	t	\N	Ember Weaver	Creature	C
29485	MOR	82	1	\N	\N	t	\N	\N	\N	Warren Weirding	Tribal Sorcery	U
29895	THS	77	2	\N	\N	t	\N	\N	\N	Asphodel Wanderer	Creature	C
30031	MOR	103	1	\N	\N	\N	t	\N	\N	Shard Volley	Instant	C
36809	NEO	153	0	\N	\N	\N	t	\N	\N	Lizard Blades	Artifact Creature	R
36812	NEO	156	0	\N	\N	\N	t	\N	\N	Peerless Samurai	Creature	C
36810	NEO	154	1	\N	\N	\N	t	\N	\N	March of Reckless Joy	Instant	R
36807	NEO	151	1	\N	\N	\N	t	\N	\N	Kindled Fury	Instant	C
36811	NEO	155	1	\N	\N	\N	t	\N	\N	Ogre-Head Helm	Artifact Creature	R
29490	WWK	81	0	\N	\N	\N	t	\N	\N	Dragonmaster Outcast	Creature	M
29498	ARB	92	0	\N	\N	t	\N	t	\N	Maelstrom Pulse	Sorcery	R
29499	SOK	82	0	\N	\N	t	\N	\N	\N	Measure of Wickedness	Enchantment	U
29509	RAV	68	0	\N	t	\N	\N	\N	\N	Tattered Drake	Creature	C
29510	RTR	66	0	\N	\N	t	\N	\N	\N	Drainpipe Vermin	Creature	C
29519	SOM	71	0	\N	\N	t	\N	\N	\N	Necrogen Scudder	Creature	U
29526	CHK	77	0	\N	t	\N	\N	\N	\N	Part the Veil	Instant	R
29566	DGM	88	0	\N	t	t	\N	\N	\N	Notion Thief	Creature	R
29567	SHM	67	0	\N	\N	t	\N	\N	\N	Gloomlance	Sorcery	C
29495	DKA	86	1	\N	\N	\N	t	\N	\N	Erdwal Ripper	Creature	C
29585	ALA	70	0	\N	\N	t	\N	\N	\N	Death Baron	Creature	R
29592	DGM	89	0	t	\N	t	\N	\N	\N	Obzedat's Aid	Sorcery	R
29601	GPT	88	0	\N	\N	\N	\N	t	\N	Gruul Nodorog	Creature	C
30078	ISD	96	3	\N	\N	t	\N	\N	\N	Dead Weight	Enchantment	C
29610	ISD	78	0	\N	t	\N	\N	\N	\N	Snapcaster Mage	Creature	R
29624	LRW	76	0	\N	t	\N	\N	\N	\N	Mulldrifter	Creature	C
29636	ISD	79	0	\N	t	\N	\N	\N	\N	Spectral Flight	Enchantment	C
29650	LRW	77	0	\N	t	\N	\N	\N	\N	Paperfin Rascal	Creature	C
29689	ALA	74	0	\N	\N	t	\N	\N	\N	Dregscape Zombie	Creature	C
29694	ZEN	65	0	\N	t	\N	\N	\N	\N	Shoal Serpent	Creature	C
29710	GTC	83	0	\N	\N	t	\N	\N	\N	Undercity Plague	Sorcery	R
29717	RAV	76	0	\N	t	\N	\N	\N	\N	Zephyr Spirit	Creature	C
29718	RTR	74	0	\N	\N	t	\N	\N	\N	Perilous Shadow	Creature	C
29727	SOM	79	0	\N	\N	t	\N	\N	\N	Skithiryx, the Blight Dragon	Lgd. Creature	M
29731	GPT	93	0	\N	\N	\N	\N	t	\N	Primeval Light	Sorcery	U
29948	ISD	91	1	\N	\N	t	\N	\N	\N	Brain Weevil	Creature	C
29766	ISD	84	0	\N	t	\N	\N	\N	\N	Undead Alchemist	Creature	R
29789	BOK	101	0	\N	\N	\N	t	\N	\N	Flames of the Blood Hand	Instant	U
29819	ALA	79	0	\N	\N	t	\N	\N	\N	Immortal Coil	Artifact	R
29828	WWK	94	0	\N	\N	\N	t	\N	\N	Tuktuk Scrapper	Creature	U
29829	CON	101	0	t	t	t	t	t	\N	Child of Alara	Lgd. Creature	M
29840	GTC	88	0	\N	\N	\N	t	\N	\N	Crackling Perimeter	Enchantment	U
29860	ROE	83	0	\N	t	\N	\N	\N	\N	Regress	Instant	C
29861	GPT	98	0	\N	\N	\N	\N	t	\N	Wildsize	Instant	C
29871	ALA	81	0	\N	\N	t	\N	\N	\N	Onyx Goblet	Artifact	C
29876	ZEN	72	0	\N	t	\N	\N	\N	\N	Tempest Owl	Creature	C
29881	CON	103	0	\N	t	t	\N	\N	\N	Countersquall	Instant	U
29890	CHK	91	0	\N	t	\N	\N	\N	\N	Soratami Seer	Creature	U
29898	EVE	100	0	\N	t	\N	t	\N	\N	Crackleburr	Creature	R
29899	RAV	83	0	\N	\N	t	\N	\N	\N	Dimir House Guard	Creature	C
29659	BOK	96	1	\N	\N	\N	t	\N	\N	Blazing Shoal	Instant	R
29909	SOM	86	0	\N	\N	\N	t	\N	\N	Cerebral Eruption	Sorcery	R
29925	RAV	84	0	\N	\N	t	\N	\N	\N	Dimir Machinations	Sorcery	U
29926	RTR	82	0	\N	\N	t	\N	\N	\N	Ultimate Price	Instant	U
29929	MRD	89	0	\N	\N	\N	t	\N	\N	Electrostatic Bolt	Instant	C
29919	BOK	106	2	\N	\N	\N	t	\N	\N	Goblin Cohort	Creature	C
36814	NEO	158	0	\N	\N	\N	t	\N	\N	Reinforced Ronin	Artifact Creature	U
29961	SOM	88	0	\N	\N	\N	t	\N	\N	Ferrovore	Creature	C
29975	ALA	85	0	\N	\N	t	\N	\N	\N	Scavenger Drake	Creature	U
29984	WWK	100	0	\N	\N	\N	\N	t	\N	Feral Contest	Sorcery	C
29989	DKA	105	0	\N	\N	\N	t	\N	\N	Talons of Falkenrath	Enchantment	C
29994	CHK	95	0	\N	t	\N	\N	\N	\N	Teller of Tales	Creature	C
30004	RTR	85	0	\N	\N	\N	t	\N	\N	Annihilating Fire	Instant	C
30007	MRD	92	0	\N	\N	\N	t	\N	\N	Forge Armor	Instant	U
30010	WWK	101	0	\N	\N	\N	\N	t	\N	Gnarlid Pack	Creature	C
30024	MID	83	0	\N	t	\N	\N	\N	\N	Vivisection	Sorcery	U
30040	LRW	92	0	\N	t	\N	\N	\N	\N	Surgespanner	Creature	R
30043	ARB	113	0	\N	t	t	t	\N	\N	Thraximundar	Lgd. Creature	M
30046	CHK	97	0	\N	t	\N	\N	\N	\N	Time Stop	Instant	R
30053	ALA	88	0	\N	\N	t	\N	\N	\N	Skeletal Kathari	Creature	C
30058	ZEN	79	0	\N	\N	t	\N	\N	\N	Bala Ged Thief	Creature	R
30063	CON	110	0	t	t	\N	\N	\N	\N	Gwafa Hazid, Profiteer	Lgd. Creature	R
30066	LRW	93	0	\N	t	\N	\N	\N	\N	Tideshaper Mystic	Creature	C
36815	NEO	159	0	\N	\N	\N	t	\N	\N	Scrap Welder	Creature	R
30076	MID	85	0	\N	\N	t	\N	\N	\N	Baneblade Scoundrel // Baneclaw Marauder	Creature	U
30083	MOR	105	0	\N	\N	\N	t	\N	\N	Spitebellows	Creature	U
30085	MRD	95	0	\N	\N	\N	t	\N	\N	Grab the Reins	Instant	U
30092	LRW	94	0	\N	t	\N	\N	\N	\N	Turtleshell Changeling	Creature	U
30096	ROE	92	0	\N	t	\N	\N	\N	\N	Unified Will	Instant	U
30102	MID	86	0	\N	\N	t	\N	\N	\N	Bat Whisperer	Creature	C
30105	ALA	90	0	\N	\N	t	\N	\N	\N	Undead Leotau	Creature	C
30112	DGM	109	0	t	\N	t	\N	\N	\N	Tithe Drinker	Creature	C
30115	CON	112	0	t	t	\N	\N	\N	\N	Jhessian Balmgiver	Creature	U
30118	LRW	95	0	\N	t	\N	\N	\N	\N	Wanderwine Prophets	Creature	R
30121	ARB	116	0	\N	\N	t	t	t	\N	Jund Sojourners	Creature	C
30127	BOK	114	0	\N	\N	\N	t	\N	\N	Overblaze	Instant	U
30128	MID	87	0	\N	\N	t	\N	\N	\N	Bladebrand	Instant	C
30134	RTR	90	0	\N	\N	\N	t	\N	\N	Chaos Imps	Creature	R
30137	MRD	97	0	\N	\N	\N	t	\N	\N	Krark-Clan Grunt	Creature	C
30154	MID	88	0	\N	\N	t	\N	\N	\N	Blood Pact	Instant	C
30156	ISD	99	0	\N	\N	t	\N	\N	\N	Endless Ranks of the Dead	Enchantment	R
30162	ZEN	83	0	\N	\N	t	\N	\N	\N	Bloodghast	Creature	R
29730	ROE	78	1	\N	t	\N	\N	\N	\N	Mnemonic Wall	Creature	C
29784	ARB	103	1	\N	t	\N	\N	t	\N	Sages of the Anima	Creature	R
30089	CON	111	1	\N	\N	\N	t	t	\N	Hellkite Hatchling	Creature	U
29621	CON	93	2	\N	\N	\N	\N	t	\N	Spore Burst	Sorcery	U
30161	MOR	108	1	\N	\N	\N	t	\N	\N	Sunflare Shaman	Creature	C
30037	CON	109	3	\N	\N	t	t	\N	\N	Goblin Outlander	Creature	C
29647	CON	94	2	\N	\N	\N	\N	t	\N	Sylvan Bounty	Instant	C
29699	CON	96	2	\N	\N	\N	\N	t	\N	Tukatongue Thallid	Creature	C
30109	MOR	106	1	\N	\N	\N	t	\N	\N	Stingmoggie	Creature	C
36817	NEO	161	0	\N	\N	\N	t	\N	\N	Seismic Wave	Instant	U
36818	NEO	162	0	\N	\N	\N	t	\N	\N	The Shattered States Era // Nameless Conqueror	Enchantment	C
36819	NEO	163	0	\N	\N	\N	t	\N	\N	Simian Sling	Artifact Creature	C
36820	NEO	164	0	\N	\N	\N	t	\N	\N	Sokenzan Smelter	Creature	U
29514	DGM	86	0	\N	\N	t	t	\N	\N	Morgue Burst	Sorcery	C
29515	SHM	65	0	\N	\N	t	\N	\N	\N	Dusk Urchins	Creature	R
29530	MID	64	0	\N	t	\N	\N	\N	\N	Nebelgast Intruder	Creature	U
29554	GTC	77	0	\N	\N	t	\N	\N	\N	Shadow Slice	Sorcery	C
29558	ISD	76	0	\N	t	\N	\N	\N	\N	Skaab Goliath	Creature	U
29639	RAV	73	0	\N	t	\N	\N	\N	\N	Vedalken Dismisser	Creature	C
29644	DGM	91	0	\N	t	\N	\N	t	\N	Plasm Capture	Instant	R
29653	GPT	90	0	\N	\N	\N	\N	t	\N	Leyline of Lifeforce	Enchantment	R
29656	CHK	82	0	\N	t	\N	\N	\N	\N	Reweave	Instant	R
29666	RTR	72	0	\N	\N	t	\N	\N	\N	Ogre Jailbreaker	Creature	C
29669	MRD	79	0	\N	\N	t	\N	\N	\N	Terror	Instant	C
29672	WWK	88	0	\N	\N	\N	t	\N	\N	Roiling Terrain	Sorcery	C
29696	DGM	93	0	\N	\N	t	\N	t	\N	Putrefy	Instant	U
29697	SHM	72	0	\N	\N	t	\N	\N	\N	Midnight Banshee	Creature	R
29712	MID	71	0	\N	t	\N	\N	\N	\N	Poppet Stitcher // Poppet Factory	Creature	M
29728	LRW	80	0	\N	t	\N	\N	\N	\N	Protective Bubble	Enchantment	C
29733	SOK	91	0	\N	\N	\N	t	\N	\N	Adamaro, First to Desire	Lgd. Creature	R
29768	EVE	95	0	t	\N	t	\N	\N	\N	Stillmoon Cavalier	Creature	R
36821	NEO	165	0	\N	\N	\N	t	\N	\N	Tempered in Solitude	Enchantment	U
29794	EVE	96	0	t	\N	t	\N	\N	\N	Unmake	Instant	C
29801	SHM	76	0	\N	\N	t	\N	\N	\N	Rite of Consumption	Sorcery	C
29967	SOK	100	2	\N	\N	\N	t	\N	\N	Glitterfang	Creature	C
29824	ZEN	70	0	\N	t	\N	\N	\N	\N	Spreading Seas	Enchantment	C
29833	DKA	99	0	\N	\N	\N	t	\N	\N	Moonveil Dragon	Creature	M
29846	EVE	98	0	\N	t	\N	t	\N	\N	Call the Skybreaker	Sorcery	R
29849	MOR	96	0	\N	\N	\N	t	\N	\N	Pyroclast Consul	Creature	U
30097	SOK	105	1	\N	\N	\N	t	\N	\N	Inner Fire	Sorcery	C
30201	SOK	109	2	\N	\N	\N	t	\N	\N	Path of Anger's Flame	Instant	C
29873	RAV	82	0	\N	\N	t	\N	\N	\N	Darkblast	Instant	U
29874	RTR	80	0	\N	\N	t	\N	\N	\N	Terrus Wurm	Creature	C
29883	SOM	85	0	\N	\N	\N	t	\N	\N	Bloodshot Trainee	Creature	U
29888	ROE	84	0	\N	t	\N	\N	\N	\N	Renegade Doppelganger	Creature	R
29916	CHK	92	0	\N	t	\N	\N	\N	\N	Squelch	Instant	U
29924	EVE	101	0	\N	t	\N	t	\N	\N	Crag Puca	Creature	U
29927	MOR	99	0	\N	\N	\N	t	\N	\N	Rivals' Duel	Sorcery	U
29928	ZEN	74	0	\N	t	\N	\N	\N	\N	Trapmaker's Snare	Instant	U
29944	GTC	92	0	\N	\N	\N	t	\N	\N	Foundry Street Denizen	Creature	C
29947	THS	79	0	\N	\N	t	\N	\N	\N	Blood-Toll Harpy	Creature	C
29970	GTC	93	0	\N	\N	\N	t	\N	\N	Furious Resistance	Instant	C
30001	ALA	86	0	\N	\N	t	\N	\N	\N	Shadowfeed	Instant	C
30013	SOM	90	0	\N	\N	\N	t	\N	\N	Furnace Celebration	Enchantment	U
29759	SOK	92	2	\N	\N	\N	t	\N	\N	Akki Drillmaster	Creature	C
30045	SOK	103	0	\N	\N	\N	t	\N	\N	Homura, Human Ascendant // Homura's Essence	Lgd. Creature	R
30050	MID	84	0	\N	\N	t	\N	\N	\N	Arrogant Outlaw	Creature	C
30074	GTC	97	0	\N	\N	\N	t	\N	\N	Legion Loyalist	Creature	R
30098	CHK	99	0	\N	t	\N	\N	\N	\N	Uyo, Silent Prophet	Lgd. Creature	R
30104	ISD	97	0	\N	\N	t	\N	\N	\N	Diregraf Ghoul	Creature	U
36823	NEO	167	0	\N	\N	\N	t	\N	\N	Towashi Songshaper	Artifact Creature	C
30117	SOM	94	0	\N	\N	\N	t	\N	\N	Koth of the Hammer	Lgd. Planeswalker	M
30135	MOR	107	0	\N	\N	\N	t	\N	\N	Stomping Slabs	Sorcery	U
30136	ZEN	82	0	\N	\N	t	\N	\N	\N	Bloodchief Ascension	Enchantment	R
30158	EVE	110	0	\N	t	\N	t	\N	\N	Nucklavee	Creature	U
30171	DKA	112	0	\N	\N	\N	\N	t	\N	Deranged Outcast	Creature	R
30172	GPT	110	0	t	\N	t	t	t	\N	Dune-Brood Nephilim	Creature	R
30173	ARB	118	0	\N	\N	t	t	t	\N	Lavalanche	Sorcery	R
36824	NEO	168	0	\N	\N	\N	t	\N	\N	Twinshot Sniper	Artifact Creature	U
30183	ALA	93	0	\N	\N	\N	t	\N	\N	Bloodpyre Elemental	Creature	C
30184	EVE	111	0	\N	t	\N	t	\N	\N	Riverfall Mimic	Creature	C
30187	MOR	109	0	\N	\N	\N	t	\N	\N	Taurean Mauler	Creature	R
30188	ZEN	84	0	\N	\N	t	\N	\N	\N	Bog Tatters	Creature	C
30193	CON	115	0	t	t	t	t	t	\N	Maelstrom Archangel	Creature	M
36825	NEO	169	0	\N	\N	\N	t	\N	\N	Unstoppable Ogre	Artifact Creature	C
30202	CHK	103	0	\N	\N	t	\N	\N	\N	Blood Speaker	Creature	U
30211	RAV	95	0	\N	\N	t	\N	\N	\N	Moonlight Bargain	Instant	R
30212	RTR	93	0	\N	\N	\N	t	\N	\N	Electrickery	Instant	C
30221	SOM	98	0	\N	\N	\N	t	\N	\N	Molten Psyche	Sorcery	R
30226	ROE	97	0	\N	\N	t	\N	\N	\N	Bloodrite Invoker	Creature	C
30234	ISD	102	0	\N	\N	t	\N	\N	\N	Ghoulraiser	Creature	C
30236	EVE	113	0	\N	t	\N	t	\N	\N	Stream Hopper	Creature	C
30239	MOR	111	0	\N	\N	\N	t	\N	\N	Vengeful Firebrand	Creature	R
30241	MRD	101	0	\N	\N	\N	t	\N	\N	Molten Rain	Sorcery	C
30242	DGM	114	0	t	\N	\N	\N	t	\N	Voice of Resurgence	Creature	M
30243	SHM	93	0	\N	\N	\N	t	\N	\N	Furystoke Giant	Creature	R
30244	WWK	110	0	\N	\N	\N	\N	t	\N	Quest for Renewal	Enchantment	U
30247	SOM	99	0	\N	\N	\N	t	\N	\N	Ogre Geargrabber	Creature	U
30248	LRW	100	0	\N	\N	t	\N	\N	\N	Bog Hoodlums	Creature	C
30249	DKA	115	0	\N	\N	\N	\N	t	\N	Ghoultree	Creature	R
30250	GPT	113	0	\N	t	\N	t	\N	\N	Gelectrode	Creature	U
30251	ARB	121	0	t	\N	\N	t	t	\N	Mayael's Aria	Enchantment	R
30253	SOK	111	0	\N	\N	\N	t	\N	\N	Ronin Cavekeeper	Creature	C
30266	ZEN	87	1	\N	\N	t	\N	\N	\N	Disfigure	Instant	C
29808	ROE	81	1	\N	t	\N	\N	\N	\N	Reality Spasm	Instant	U
30170	LRW	97	1	\N	t	\N	\N	\N	\N	Wings of Velis Vel	Tribal Instant	C
29836	ARB	105	1	\N	t	\N	\N	t	\N	Winged Coatl	Creature	C
30271	CON	118	1	t	\N	\N	t	t	\N	Meglonoth	Creature	R
29557	THS	64	1	\N	t	\N	\N	\N	\N	Stymied Hopes	Instant	C
29687	THS	69	1	\N	t	\N	\N	\N	\N	Triton Fortune Hunter	Creature	U
30155	THS	87	1	\N	\N	t	\N	\N	\N	Felhide Minotaur	Creature	C
30233	THS	90	1	\N	\N	t	\N	\N	\N	Hero's Downfall	Instant	R
29779	SOM	81	2	\N	\N	\N	t	\N	\N	Arc Trail	Sorcery	U
29823	MOR	95	1	\N	\N	\N	t	\N	\N	Mudbutton Clanger	Creature	C
36822	NEO	166	1	\N	\N	\N	t	\N	\N	Thundering Raiju	Creature	R
36827	NEO	171	1	\N	\N	\N	t	\N	\N	Voltage Surge	Instant	C
36826	NEO	170	1	\N	\N	\N	t	\N	\N	Upriser Renegade	Creature	U
29525	SOK	83	0	\N	\N	t	\N	\N	\N	Neverending Torment	Sorcery	R
29640	RTR	71	0	\N	\N	t	\N	\N	\N	Necropolis Regent	Creature	M
29643	MRD	78	0	\N	\N	t	\N	\N	\N	Spoils of the Vault	Instant	R
29654	ARB	98	0	t	\N	\N	t	\N	\N	Glory of Warfare	Enchantment	R
29665	RAV	74	0	\N	t	\N	\N	\N	\N	Vedalken Entrancer	Creature	C
29670	DGM	92	0	\N	t	\N	\N	t	\N	Progenitor Mimic	Creature	M
29671	SHM	71	0	\N	\N	t	\N	\N	\N	Loch Korrigan	Creature	C
29688	ISD	81	0	\N	t	\N	\N	\N	\N	Stitcher's Apprentice	Creature	C
29695	MRD	80	0	\N	\N	t	\N	\N	\N	Vermiculos	Creature	R
29698	WWK	89	0	\N	\N	\N	t	\N	\N	Rumbling Aftershocks	Enchantment	U
30130	ISD	98	1	\N	\N	t	\N	\N	\N	Disciple of Griselbrand	Creature	U
29753	SOM	80	0	\N	\N	t	\N	\N	\N	Tainted Strike	Instant	C
29763	BOK	100	0	\N	\N	\N	t	\N	\N	First Volley	Instant	C
29764	MID	73	0	\N	t	\N	\N	\N	\N	Secrets of the Key	Instant	C
29786	CHK	87	0	\N	t	\N	\N	\N	\N	Soratami Mirror-Guard	Creature	C
29889	SOK	97	1	\N	\N	\N	t	\N	\N	Feral Lightning	Sorcery	U
29798	ZEN	69	0	\N	t	\N	\N	\N	\N	Sphinx of Lost Truths	Creature	R
29859	DKA	100	0	\N	\N	\N	t	\N	\N	Nearheath Stalker	Creature	C
29862	ARB	106	0	t	t	t	\N	\N	\N	Enigma Sphinx	Artifact Creature	R
29872	EVE	99	0	\N	t	\N	t	\N	\N	Clout of the Dominus	Enchantment	C
29875	MOR	97	0	\N	\N	\N	t	\N	\N	Rage Forger	Creature	U
29655	SOK	88	1	\N	\N	t	\N	\N	\N	Shinen of Fear's Chill	Creature	C
29915	SOK	98	0	\N	\N	\N	t	\N	\N	Gaze of Adamaro	Instant	U
29920	MID	79	0	\N	t	\N	\N	\N	\N	Stormrider Spirit	Creature	C
29935	SOM	87	0	\N	\N	\N	t	\N	\N	Embersmith	Creature	U
29951	RAV	85	0	\N	\N	t	\N	\N	\N	Disembowel	Instant	C
29957	SHM	82	0	\N	\N	\N	t	\N	\N	Blistering Dieflyn	Creature	C
29964	GPT	102	0	t	\N	t	\N	\N	\N	Blind Hunter	Creature	C
29968	CHK	94	0	\N	t	\N	\N	\N	\N	Swirl the Mists	Enchantment	R
29841	BOK	103	1	\N	\N	\N	t	\N	\N	Frostling	Creature	C
29979	MOR	101	0	\N	\N	\N	t	\N	\N	Seething Pathblazer	Creature	C
29980	ZEN	76	0	\N	t	\N	\N	\N	\N	Welkin Tern	Creature	C
29998	MID	82	0	\N	t	\N	\N	\N	\N	Unblinking Observer	Creature	C
30016	GPT	104	0	\N	\N	\N	t	t	\N	Burning-Tree Bloodscale	Creature	C
30019	SOK	102	0	\N	\N	\N	t	\N	\N	Hidetsugu's Second Rite	Instant	R
30029	RAV	88	0	\N	\N	t	\N	\N	\N	Helldozer	Creature	R
30030	RTR	86	0	\N	\N	\N	t	\N	\N	Ash Zealot	Creature	R
30039	SOM	91	0	\N	\N	\N	t	\N	\N	Galvanic Blast	Instant	C
30044	ROE	90	0	\N	t	\N	\N	\N	\N	Surrakar Spellblade	Creature	R
29711	BOK	98	2	\N	\N	\N	t	\N	\N	Crack the Earth	Sorcery	C
30054	EVE	106	0	\N	t	\N	t	\N	\N	Noggle Bandit	Creature	C
30057	MOR	104	0	\N	\N	\N	t	\N	\N	Shared Animosity	Enchantment	R
30059	MRD	94	0	\N	\N	\N	t	\N	\N	Goblin Striker	Creature	C
30067	DKA	108	0	\N	\N	\N	\N	t	\N	Briarpack Alpha	Creature	U
30072	CHK	98	0	\N	t	\N	\N	\N	\N	The Unspeakable	Lgd. Creature	R
30079	ALA	89	0	\N	\N	t	\N	\N	\N	Tar Fiend	Creature	R
30082	RTR	88	0	\N	\N	\N	t	\N	\N	Bellows Lizard	Creature	C
30086	DGM	108	0	t	\N	t	\N	\N	\N	Teysa, Envoy of Ghosts	Lgd. Creature	R
29737	BOK	99	1	\N	\N	\N	t	\N	\N	Cunning Bandit // Azamuki, Treachery Incarnate	Creature	U
30093	DKA	109	0	\N	\N	\N	\N	t	\N	Clinging Mists	Instant	C
30095	ARB	115	0	\N	\N	t	t	t	\N	Dragon Appeasement	Enchantment	U
30103	THS	85	0	\N	\N	t	\N	\N	\N	Erebos, God of the Dead	Lgd. Enchantment Creature	M
30106	EVE	108	0	\N	t	\N	t	\N	\N	Noggle Hedge-Mage	Creature	U
30108	RTR	89	0	\N	\N	\N	t	\N	\N	Bloodfray Giant	Creature	U
30114	WWK	105	0	\N	\N	\N	\N	t	\N	Harabaz Druid	Creature	R
30119	DKA	110	0	\N	\N	\N	\N	t	\N	Crushing Vines	Instant	C
30120	GPT	108	0	t	\N	t	\N	\N	\N	Conjurer's Ban	Sorcery	U
30209	ALA	94	1	\N	\N	\N	t	\N	\N	Bloodthorn Taunter	Creature	C
30126	GTC	99	0	\N	\N	\N	t	\N	\N	Mark for Death	Sorcery	U
30129	THS	86	0	\N	\N	t	\N	\N	\N	Erebos's Emissary	Enchantment Creature	U
30141	CON	113	0	t	\N	\N	\N	t	\N	Knight of the Reliquary	Creature	R
30143	SOM	95	0	\N	\N	\N	t	\N	\N	Kuldotha Phoenix	Creature	R
30152	GTC	100	0	\N	\N	\N	t	\N	\N	Massive Raid	Instant	C
30153	BOK	115	0	\N	\N	\N	t	\N	\N	Patron of the Akki	Lgd. Creature	R
30179	BOK	116	0	\N	\N	\N	t	\N	\N	Ronin Cliffrider	Creature	U
30180	MID	89	0	\N	\N	t	\N	\N	\N	Bloodline Culling	Instant	R
30197	DKA	113	0	\N	\N	\N	\N	t	\N	Favor of the Woods	Enchantment	C
30198	GPT	111	0	\N	t	\N	t	\N	\N	Electrolyze	Instant	U
30199	ARB	119	0	\N	\N	t	t	t	\N	Madrush Cyclops	Creature	R
30208	ISD	101	0	\N	\N	t	\N	\N	\N	Ghoulcaller's Chant	Sorcery	C
30214	ZEN	85	0	\N	\N	t	\N	\N	\N	Crypt Ripper	Creature	C
30215	MRD	100	0	\N	\N	\N	t	\N	\N	Megatog	Creature	R
30218	WWK	109	0	\N	\N	\N	\N	t	\N	Omnath, Locus of Mana	Lgd. Creature	M
30223	DKA	114	0	\N	\N	\N	\N	t	\N	Feed the Pack	Enchantment	R
30224	GPT	112	0	\N	\N	\N	t	t	\N	Feral Animist	Creature	U
30228	CHK	104	0	\N	\N	t	\N	\N	\N	Bloodthirsty Ogre	Creature	U
30062	WWK	103	1	\N	\N	\N	\N	t	\N	Graypelt Hunter	Creature	C
29940	ROE	86	1	\N	t	\N	\N	\N	\N	See Beyond	Sorcery	C
30113	SHM	88	1	\N	\N	\N	t	\N	\N	Crimson Wisps	Instant	C
30144	LRW	96	1	\N	t	\N	\N	\N	\N	Whirlpool Whelm	Instant	C
29520	LRW	72	1	\N	t	\N	\N	\N	\N	Merrow Commerce	Tribal Enchantment	U
29933	CON	105	1	t	t	\N	\N	\N	\N	Esper Cormorants	Artifact Creature	C
29817	THS	74	1	\N	t	\N	\N	\N	\N	Wavecrash Triton	Creature	C
30077	THS	84	1	\N	\N	t	\N	\N	\N	Disciple of Phenax	Creature	C
30219	CON	116	2	t	t	t	\N	\N	\N	Magister Sphinx	Artifact Creature	R
30196	LRW	98	0	\N	t	\N	\N	\N	\N	Zephyr Net	Enchantment	C
29797	MOR	94	2	\N	\N	\N	t	\N	\N	Lunk Errant	Creature	C
36831	NEO	175	0	\N	\N	\N	\N	t	\N	Blossom Prancer	Creature	U
36832	NEO	176	0	\N	\N	\N	\N	t	\N	Boon of Boseiju	Instant	U
36833	NEO	177	0	\N	\N	\N	\N	t	\N	Boseiju Reaches Skyward // Branch of Boseiju	Enchantment	U
36834	NEO	178	0	\N	\N	\N	\N	t	\N	Careful Cultivation	Enchantment	C
36835	NEO	179	0	\N	\N	\N	\N	t	\N	Coiling Stalker	Creature	C
29574	ROE	72	0	\N	t	\N	\N	\N	\N	Halimar Wavewatch	Creature	C
29575	GPT	87	0	\N	\N	\N	\N	t	\N	Gristleback	Creature	U
29755	DKA	96	1	\N	\N	\N	t	\N	\N	Markov Blademaster	Creature	R
29597	SOM	74	0	\N	\N	t	\N	\N	\N	Painsmith	Creature	U
29615	MOR	87	0	\N	\N	\N	t	\N	\N	Borderland Behemoth	Creature	R
29616	ZEN	62	0	\N	t	\N	\N	\N	\N	Roil Elemental	Creature	R
29629	SOK	87	0	\N	\N	t	\N	\N	\N	Razorjaw Oni	Creature	U
29632	GTC	80	0	\N	\N	t	\N	\N	\N	Syndicate Enforcer	Creature	C
29664	EVE	91	0	t	\N	t	\N	\N	\N	Nightsky Mimic	Creature	C
30145	DKA	111	2	\N	\N	\N	\N	t	\N	Dawntreader Elk	Creature	C
29685	BOK	97	0	\N	\N	\N	t	\N	\N	Clash of Realities	Enchantment	R
29703	DKA	94	0	\N	\N	\N	t	\N	\N	Hinterland Hermit // Hinterland Scourge	Creature	C
29706	ARB	100	0	t	\N	\N	t	\N	\N	Stun Sniper	Creature	U
29716	EVE	93	0	t	\N	t	\N	\N	\N	Pyrrhic Revival	Sorcery	R
29719	MOR	91	0	\N	\N	\N	t	\N	\N	Hostile Realm	Enchantment	C
29812	CHK	88	1	\N	t	\N	\N	\N	\N	Soratami Mirror-Mage	Creature	U
29734	CHK	85	0	\N	t	\N	\N	\N	\N	Sire of the Storm	Creature	U
29742	EVE	94	0	t	\N	t	\N	\N	\N	Restless Apparition	Creature	U
29743	RAV	77	0	\N	\N	t	\N	\N	\N	Blood Funnel	Enchantment	R
29750	WWK	91	0	\N	\N	\N	t	\N	\N	Skitter of Lizards	Creature	C
29795	RAV	79	0	\N	\N	t	\N	\N	\N	Carrion Howler	Creature	U
29800	DGM	97	0	t	t	\N	\N	\N	\N	Restore the Peace	Instant	U
29809	GPT	96	0	\N	\N	\N	\N	t	\N	Skarrgan Pit-Skulk	Creature	C
29822	RTR	78	0	\N	\N	t	\N	\N	\N	Stab Wound	Enchantment	C
29825	MRD	85	0	\N	\N	\N	t	\N	\N	Arc-Slogger	Creature	R
29837	SOK	95	0	\N	\N	\N	t	\N	\N	Burning-Eye Zubera	Creature	U
29847	RAV	81	0	\N	\N	t	\N	\N	\N	Dark Confidant	Creature	R
29848	RTR	79	0	\N	\N	t	\N	\N	\N	Tavern Swindler	Creature	U
29857	SOM	84	0	\N	\N	\N	t	\N	\N	Blade-Tribe Berserkers	Creature	C
29864	CHK	90	0	\N	t	\N	\N	\N	\N	Soratami Savant	Creature	U
29894	MID	78	0	\N	t	\N	\N	\N	\N	Startle	Instant	C
29913	ARB	108	0	t	t	t	\N	\N	\N	Etherwrought Page	Artifact	U
30176	CHK	102	1	\N	\N	t	\N	\N	\N	Befoul	Sorcery	C
29936	LRW	88	0	\N	t	\N	\N	\N	\N	Sower of Temptation	Creature	R
29939	ARB	109	0	t	t	t	\N	\N	\N	Sen Triplets	Lgd. Artifact Creature	M
29952	RTR	83	0	\N	\N	t	\N	\N	\N	Underworld Connections	Enchantment	R
29956	DGM	103	0	t	\N	t	\N	\N	\N	Sin Collector	Creature	U
29965	ARB	110	0	t	t	t	\N	\N	\N	Sphinx of the Steel Wind	Artifact Creature	M
29972	MID	81	0	\N	t	\N	\N	\N	\N	Triskaidekaphile	Creature	R
30015	DKA	106	0	\N	\N	\N	t	\N	\N	Torch Fiend	Creature	C
30020	CHK	96	0	\N	t	\N	\N	\N	\N	Thoughtbind	Instant	C
30048	GTC	96	0	\N	\N	\N	t	\N	\N	Homing Lightning	Instant	U
30055	RAV	89	0	\N	\N	t	\N	\N	\N	Hex	Sorcery	R
30056	RTR	87	0	\N	\N	\N	t	\N	\N	Batterhorn	Creature	C
30060	DGM	107	0	t	\N	\N	t	\N	\N	Tajic, Blade of the Legion	Lgd. Creature	R
30068	GPT	106	0	t	\N	t	\N	\N	\N	Castigate	Sorcery	C
30069	ARB	114	0	\N	t	t	t	\N	\N	Unscythe, Killer of Kings	Lgd. Artifact	R
30124	CHK	100	2	\N	t	\N	\N	\N	\N	Wandering Ones	Creature	C
30100	GTC	98	0	\N	\N	\N	t	\N	\N	Madcap Skills	Enchantment	C
30131	ALA	91	0	\N	\N	t	\N	\N	\N	Vein Drinker	Creature	R
30140	WWK	106	0	\N	\N	\N	\N	t	\N	Joraga Warcaller	Creature	R
30257	BOK	119	1	\N	\N	\N	t	\N	\N	Torrent of Stone	Instant	C
30157	ALA	92	0	\N	\N	t	\N	\N	\N	Viscera Dragger	Creature	C
30160	RTR	91	0	\N	\N	\N	t	\N	\N	Cobblebrute	Creature	C
30163	MRD	98	0	\N	\N	\N	t	\N	\N	Krark-Clan Shaman	Creature	C
30165	SHM	90	0	\N	\N	\N	t	\N	\N	Elemental Mastery	Enchantment	R
30231	BOK	118	1	\N	\N	\N	t	\N	\N	Sowing Salt	Sorcery	U
30181	THS	88	0	\N	\N	t	\N	\N	\N	Fleshmad Steed	Creature	C
30190	DGM	112	0	\N	\N	t	\N	t	\N	Varolz, the Scar-Striped	Lgd. Creature	R
30191	SHM	91	0	\N	\N	\N	t	\N	\N	Ember Gale	Sorcery	C
30204	GTC	102	0	\N	\N	\N	t	\N	\N	Mugging	Sorcery	C
30216	DGM	113	0	t	\N	\N	t	\N	\N	Viashino Firstblade	Creature	C
30217	SHM	92	0	\N	\N	\N	t	\N	\N	Flame Javelin	Instant	U
36836	NEO	180	0	\N	\N	\N	\N	t	\N	Commune with Spirits	Sorcery	C
30256	GTC	104	0	\N	\N	\N	t	\N	\N	Scorchwalker	Creature	C
30258	MID	92	0	\N	\N	t	\N	\N	\N	Covert Cutpurse // Covetous Geist	Creature	U
30261	ALA	96	0	\N	\N	\N	t	\N	\N	Crucible of Fire	Enchantment	R
30262	EVE	114	0	\N	t	\N	t	\N	\N	Unnerving Assault	Instant	U
30263	RAV	97	0	\N	\N	t	\N	\N	\N	Necromantic Thirst	Enchantment	C
30268	DGM	115	0	\N	t	\N	\N	t	\N	Vorel of the Hull Clade	Lgd. Creature	R
30276	GPT	114	0	t	\N	t	\N	\N	\N	Ghost Council of Orzhova	Lgd. Creature	R
30278	ROE	99	0	\N	\N	t	\N	\N	\N	Cadaver Imp	Creature	C
30282	GTC	105	0	\N	\N	\N	t	\N	\N	Skinbrand Goblin	Creature	C
30285	THS	92	0	\N	\N	t	\N	\N	\N	Insatiable Harpy	Creature	U
30286	ISD	104	0	\N	\N	t	\N	\N	\N	Heartless Summoning	Enchantment	R
30291	MOR	113	0	\N	\N	\N	\N	t	\N	Ambassador Oak	Creature	C
30294	DGM	116	0	t	\N	\N	t	\N	\N	Warleader's Helix	Instant	U
36837	NEO	181	0	\N	\N	\N	\N	t	\N	The Dragon-Kami Reborn // Dragon-Kami's Egg	Enchantment	R
30299	SOM	101	0	\N	\N	\N	t	\N	\N	Oxidda Scrapmelter	Creature	U
36838	NEO	182	0	\N	\N	\N	\N	t	\N	Fade into Antiquity	Sorcery	C
30269	SHM	94	1	\N	\N	\N	t	\N	\N	Horde of Boggarts	Creature	U
29572	LRW	74	1	\N	t	\N	\N	\N	\N	Merrow Reejerey	Creature	U
29832	LRW	84	1	\N	t	\N	\N	\N	\N	Sentinels of Glen Elendra	Creature	C
30277	ARB	122	1	t	\N	\N	t	t	\N	Naya Sojourners	Creature	C
30061	SHM	86	2	\N	\N	\N	t	\N	\N	Burn Trail	Sorcery	C
29569	CON	91	2	\N	\N	\N	\N	t	\N	Shard Convergence	Sorcery	U
30051	THS	83	1	\N	\N	t	\N	\N	\N	Dark Betrayal	Instant	U
29999	THS	81	2	\N	\N	t	\N	\N	\N	Cavern Lampad	Enchantment Creature	C
30207	THS	89	2	\N	\N	t	\N	\N	\N	Gray Merchant of Asphodel	Creature	C
36839	NEO	183	0	\N	\N	\N	\N	t	\N	Fang of Shigeki	Enchantment Creature	C
36840	NEO	184	0	\N	\N	\N	\N	t	\N	Favor of Jukai	Enchantment	C
36841	NEO	185	0	\N	\N	\N	\N	t	\N	Generous Visitor	Creature	U
36842	NEO	186	0	\N	\N	\N	\N	t	\N	Geothermal Kami	Creature	C
36843	NEO	187	0	\N	\N	\N	\N	t	\N	Go-Shintai of Boundless Vigor	Lgd. Enchantment Creature	U
29627	GPT	89	0	\N	\N	\N	\N	t	\N	Gruul Scrapper	Creature	C
29630	CHK	81	0	\N	t	\N	\N	\N	\N	Reach Through Mists	Instant	C
30150	CHK	101	1	\N	\N	t	\N	\N	\N	Ashen-Skin Zubera	Creature	C
29641	MOR	88	0	\N	\N	\N	t	\N	\N	Brighthearth Banneret	Creature	C
29642	ZEN	63	0	\N	t	\N	\N	\N	\N	Sea Gate Loremaster	Creature	R
29661	THS	68	0	\N	t	\N	\N	\N	\N	Thassa's Emissary	Enchantment Creature	U
29677	DKA	93	0	\N	\N	\N	t	\N	\N	Hellrider	Creature	R
29680	ARB	99	0	t	\N	\N	t	\N	\N	Intimidation Bolt	Instant	U
29681	SOK	89	0	\N	\N	t	\N	\N	\N	Sink into Takenuma	Sorcery	C
29691	RAV	75	0	\N	t	\N	\N	\N	\N	Wizened Snitches	Creature	U
29692	RTR	73	0	\N	\N	t	\N	\N	\N	Pack Rat	Creature	R
29701	SOM	78	0	\N	\N	t	\N	\N	\N	Skinrender	Creature	U
29746	ZEN	67	0	\N	t	\N	\N	\N	\N	Spell Pierce	Instant	C
29747	MRD	82	0	\N	\N	t	\N	\N	\N	Wall of Blood	Creature	U
29758	ARB	102	0	\N	t	\N	\N	t	\N	Nulltread Gargantuan	Creature	U
29769	RAV	78	0	\N	\N	t	\N	\N	\N	Brainspoil	Sorcery	C
29777	CON	99	0	\N	t	t	t	\N	\N	Blood Tyrant	Creature	R
29780	LRW	82	0	\N	t	\N	\N	\N	\N	Scattering Stroke	Instant	U
29802	WWK	93	0	\N	\N	\N	t	\N	\N	Stone Idol Trap	Instant	R
29807	DKA	98	0	\N	\N	\N	t	\N	\N	Mondronen Shaman // Tovolar's Magehunter	Creature	R
29814	GTC	87	0	\N	\N	\N	t	\N	\N	Cinder Elemental	Creature	U
29844	ISD	87	0	\N	\N	t	\N	\N	\N	Army of the Damned	Sorcery	M
29851	MRD	86	0	\N	\N	\N	t	\N	\N	Atog	Creature	U
29854	WWK	95	0	\N	\N	\N	\N	t	\N	Arbor Elf	Creature	C
29867	BOK	104	0	\N	\N	\N	t	\N	\N	Fumiko the Lowblood	Lgd. Creature	R
29892	GTC	90	0	\N	\N	\N	t	\N	\N	Firefist Striker	Creature	U
29896	ISD	89	0	\N	\N	t	\N	\N	\N	Bloodgift Demon	Creature	R
29903	MRD	88	0	\N	\N	\N	t	\N	\N	Detonate	Sorcery	U
29708	CHK	84	1	\N	t	\N	\N	\N	\N	Sift Through Sands	Instant	C
29911	DKA	102	0	\N	\N	\N	t	\N	\N	Russet Wolves	Creature	C
29977	RAV	86	0	\N	\N	t	\N	\N	\N	Empty the Catacombs	Sorcery	R
29982	DGM	104	0	\N	\N	t	t	\N	\N	Sire of Insanity	Creature	R
30002	EVE	104	0	\N	t	\N	t	\N	\N	Mindwrack Liege	Creature	R
30049	BOK	111	1	\N	\N	\N	t	\N	\N	Kumano's Blessing	Enchantment	C
30022	GTC	95	0	\N	\N	\N	t	\N	\N	Hellraiser Goblin	Creature	U
30071	SOK	104	0	\N	\N	\N	t	\N	\N	Iizuka the Ruthless	Lgd. Creature	R
30080	EVE	107	0	\N	t	\N	t	\N	\N	Noggle Bridgebreaker	Creature	C
30081	RAV	90	0	\N	\N	t	\N	\N	\N	Hunted Horror	Creature	R
30087	SHM	87	0	\N	\N	\N	t	\N	\N	Cragganwick Cremator	Creature	R
30094	GPT	107	0	\N	t	\N	t	\N	\N	Cerebral Vortex	Instant	R
30107	RAV	91	0	\N	\N	t	\N	\N	\N	Infectious Host	Creature	C
30110	ZEN	81	0	\N	\N	t	\N	\N	\N	Blood Tribute	Sorcery	R
30111	MRD	96	0	\N	\N	\N	t	\N	\N	Incite War	Instant	C
30133	RAV	92	0	\N	\N	t	\N	\N	\N	Keening Banshee	Creature	U
30138	DGM	110	0	t	\N	\N	\N	t	\N	Trostani's Summoner	Creature	U
30147	ARB	117	0	\N	\N	t	t	t	\N	Karrthus, Tyrant of Jund	Lgd. Creature	M
30166	WWK	107	0	\N	\N	\N	\N	t	\N	Leatherback Baloth	Creature	U
30167	CON	114	0	t	\N	\N	t	t	\N	Knotvine Mystic	Creature	U
29793	ALA	78	1	\N	\N	t	\N	\N	\N	Grixis Battlemage	Creature	U
30182	ISD	100	0	\N	\N	t	\N	\N	\N	Falkenrath Noble	Creature	U
30189	MRD	99	0	\N	\N	\N	t	\N	\N	Mass Hysteria	Enchantment	R
30192	WWK	108	0	\N	\N	\N	\N	t	\N	Nature's Claim	Instant	C
30206	MID	90	0	\N	\N	t	\N	\N	\N	Bloodtithe Collector	Creature	U
30222	LRW	99	0	\N	\N	t	\N	\N	\N	Black Poplar Shaman	Creature	C
30232	MID	91	0	\N	\N	t	\N	\N	\N	Champion of the Perished	Creature	R
30235	ALA	95	0	\N	\N	\N	t	\N	\N	Caldera Hellion	Creature	R
30240	ZEN	86	0	\N	\N	t	\N	\N	\N	Desecrated Earth	Sorcery	C
30245	CON	117	0	\N	\N	t	t	\N	\N	Malfegor	Lgd. Creature	M
36845	NEO	189	0	\N	\N	\N	\N	t	\N	Greater Tanuki	Enchantment Creature	C
30264	RTR	95	0	\N	\N	\N	t	\N	\N	Goblin Rally	Sorcery	U
30267	MRD	102	0	\N	\N	\N	t	\N	\N	Ogre Leadfoot	Creature	C
30270	WWK	111	0	\N	\N	\N	\N	t	\N	Slingbow Trap	Instant	U
30274	LRW	101	0	\N	\N	t	\N	\N	\N	Boggart Birth Rite	Tribal Sorcery	C
30275	DKA	116	0	\N	\N	\N	\N	t	\N	Gravetiller Wurm	Creature	U
30280	CHK	106	0	\N	\N	t	\N	\N	\N	Cruel Deceiver	Creature	C
30290	RTR	96	0	\N	\N	\N	t	\N	\N	Gore-House Chainwalker	Creature	C
30293	MRD	103	0	\N	\N	\N	t	\N	\N	Rustmouth Ogre	Creature	U
30304	ROE	100	0	\N	\N	t	\N	\N	\N	Consume the Meek	Instant	R
30306	CHK	107	0	\N	\N	t	\N	\N	\N	Cursed Ronin	Creature	C
36846	NEO	190	0	\N	\N	\N	\N	t	\N	Harmonious Emergence	Enchantment	C
30308	GTC	106	0	\N	\N	\N	t	\N	\N	Skullcrack	Instant	U
30312	ISD	105	0	\N	\N	t	\N	\N	\N	Liliana of the Veil	Lgd. Planeswalker	M
30313	ALA	98	0	\N	\N	\N	t	\N	\N	Dragon's Herald	Creature	U
30315	RAV	99	0	\N	\N	t	\N	\N	\N	Netherborn Phalanx	Creature	U
30316	RTR	97	0	\N	\N	\N	t	\N	\N	Guild Feud	Enchantment	R
30319	MRD	104	0	\N	\N	\N	t	\N	\N	Seething Song	Instant	C
30320	DGM	117	0	\N	t	t	\N	\N	\N	Warped Physique	Instant	U
30322	WWK	113	0	\N	\N	\N	\N	t	\N	Strength of the Tajuru	Instant	R
30323	CON	120	0	\N	t	t	t	\N	\N	Nicol Bolas, Planeswalker	Lgd. Planeswalker	M
36847	NEO	191	0	\N	\N	\N	\N	t	\N	Heir of the Ancient Fang	Creature	C
30252	ROE	98	1	\N	\N	t	\N	\N	\N	Bloodthrone Vampire	Creature	C
30292	ZEN	88	1	\N	\N	t	\N	\N	\N	Feast of Blood	Sorcery	U
30122	ROE	93	1	\N	t	\N	\N	\N	\N	Venerated Teacher	Creature	C
29992	ROE	88	1	\N	t	\N	\N	\N	\N	Skywatcher Adept	Creature	C
29901	MOR	98	1	\N	\N	\N	t	\N	\N	Release the Ants	Instant	U
29991	ARB	111	1	\N	t	t	t	\N	\N	Drastic Revelation	Sorcery	U
30303	ARB	123	1	t	\N	\N	t	t	\N	Retaliator Griffin	Creature	R
29739	THS	71	1	\N	t	\N	\N	\N	\N	Triton Tactics	Instant	U
30311	THS	93	1	\N	\N	t	\N	\N	\N	Keepsake Gorgon	Creature	U
30225	ARB	120	2	t	\N	\N	t	t	\N	Gloryscale Viashino	Creature	U
36848	NEO	192	0	\N	\N	\N	\N	t	\N	Historian's Wisdom	Enchantment	U
36849	NEO	193	0	\N	\N	\N	\N	t	\N	Invoke the Ancients	Sorcery	R
36850	NEO	194	0	\N	\N	\N	\N	t	\N	Jugan Defends the Temple // Remnant of the Rising Star	Enchantment	M
29757	GPT	94	0	\N	\N	\N	\N	t	\N	Silhana Ledgewalker	Creature	C
29770	RTR	76	0	\N	\N	t	\N	\N	\N	Shrieking Affliction	Enchantment	U
29773	MRD	83	0	\N	\N	t	\N	\N	\N	Woebearer	Creature	U
29776	WWK	92	0	\N	\N	\N	t	\N	\N	Slavering Nulls	Creature	U
29781	DKA	97	0	\N	\N	\N	t	\N	\N	Markov Warlord	Creature	U
29806	LRW	83	0	\N	t	\N	\N	\N	\N	Scion of Oona	Creature	R
29852	DGM	99	0	\N	\N	\N	t	t	\N	Ruric Thar, the Unbowed	Lgd. Creature	R
29868	MID	77	0	\N	t	\N	\N	\N	\N	Spectral Adversary	Creature	M
29884	LRW	86	0	\N	t	\N	\N	\N	\N	Silvergill Adept	Creature	U
29792	ISD	85	1	\N	\N	t	\N	\N	\N	Abattoir Ghoul	Creature	U
29923	ALA	83	0	\N	\N	t	\N	\N	\N	Resounding Scream	Sorcery	C
29930	DGM	102	0	\N	\N	t	t	\N	\N	Showstopper	Instant	U
29942	CHK	93	0	\N	t	\N	\N	\N	\N	Student of Elements // Tobita, Master of Winds	Creature	U
29949	ALA	84	0	\N	\N	t	\N	\N	\N	Salvage Titan	Artifact Creature	R
29959	CON	106	0	\N	\N	\N	t	t	\N	Exploding Borders	Sorcery	C
29962	LRW	89	0	\N	t	\N	\N	\N	\N	Spellstutter Sprite	Creature	C
29974	ISD	92	0	\N	\N	t	\N	\N	\N	Bump in the Night	Sorcery	C
29988	LRW	90	0	\N	t	\N	\N	\N	\N	Stonybrook Angler	Creature	C
30149	SOK	107	1	\N	\N	\N	t	\N	\N	Jiwari, the Earth Aflame	Lgd. Creature	R
30005	MOR	102	0	\N	\N	\N	t	\N	\N	Sensation Gorger	Creature	R
30006	ZEN	77	0	\N	t	\N	\N	\N	\N	Whiplash Trap	Instant	C
30011	CON	108	0	t	t	\N	\N	t	\N	Giltspire Avenger	Creature	R
30023	BOK	110	0	\N	\N	\N	t	\N	\N	Ishi-Ishi, Akki Crackshot	Lgd. Creature	R
30041	DKA	107	0	\N	\N	\N	t	\N	\N	Wrack with Madness	Sorcery	C
30042	GPT	105	0	\N	\N	\N	t	t	\N	Burning-Tree Shaman	Creature	R
30052	ISD	95	0	\N	\N	t	\N	\N	\N	Curse of Oblivion	Enchantment	C
30279	SOK	112	1	\N	\N	\N	t	\N	\N	Shinen of Fury's Fire	Creature	C
30065	SOM	92	0	\N	\N	\N	t	\N	\N	Goblin Gaveleer	Creature	C
30075	BOK	112	0	\N	\N	\N	t	\N	\N	Mannichi, the Fevered Dream	Lgd. Creature	R
30205	BOK	117	1	\N	\N	\N	t	\N	\N	Shinka Gatekeeper	Creature	C
30091	SOM	93	0	\N	\N	\N	t	\N	\N	Hoard-Smelter Dragon	Creature	R
30101	BOK	113	0	\N	\N	\N	t	\N	\N	Ogre Recluse	Creature	U
30123	SOK	106	0	\N	\N	\N	t	\N	\N	Into the Fray	Instant	C
30132	EVE	109	0	\N	t	\N	t	\N	\N	Noggle Ransacker	Creature	U
30139	SHM	89	0	\N	\N	\N	t	\N	\N	Deep-Slumber Titan	Creature	R
30146	GPT	109	0	t	\N	t	\N	\N	\N	Culling Sun	Sorcery	R
30159	RAV	93	0	\N	\N	t	\N	\N	\N	Last Gasp	Instant	C
30164	DGM	111	0	t	\N	\N	\N	t	\N	Unflinching Courage	Enchantment	U
30169	SOM	96	0	\N	\N	\N	t	\N	\N	Kuldotha Rebirth	Sorcery	C
30175	SOK	108	0	\N	\N	\N	t	\N	\N	Oni of Wild Places	Creature	U
30178	GTC	101	0	\N	\N	\N	t	\N	\N	Molten Primordial	Creature	R
30185	RAV	94	0	\N	\N	t	\N	\N	\N	Mausoleum Turnkey	Creature	U
30186	RTR	92	0	\N	\N	\N	t	\N	\N	Dynacharge	Instant	C
30200	ROE	96	0	\N	\N	t	\N	\N	\N	Baneful Omen	Enchantment	R
30210	EVE	112	0	\N	t	\N	t	\N	\N	Shrewd Hatchling	Creature	U
30213	MOR	110	0	\N	\N	\N	t	\N	\N	Titan's Revenge	Sorcery	R
29815	BOK	102	1	\N	\N	\N	t	\N	\N	Frost Ogre	Creature	C
30227	SOK	110	0	\N	\N	\N	t	\N	\N	Rally the Horde	Sorcery	R
30230	GTC	103	0	\N	\N	\N	t	\N	\N	Ripscale Predator	Creature	U
30237	RAV	96	0	\N	\N	t	\N	\N	\N	Mortipede	Creature	C
30238	RTR	94	0	\N	\N	\N	t	\N	\N	Explosive Impact	Instant	C
30254	CHK	105	0	\N	\N	t	\N	\N	\N	Cranial Extraction	Sorcery	R
30259	THS	91	0	\N	\N	t	\N	\N	\N	Hythonia the Cruel	Lgd. Creature	M
30260	ISD	103	0	\N	\N	t	\N	\N	\N	Gruesome Deformity	Enchantment	C
30287	ALA	97	1	\N	\N	\N	t	\N	\N	Dragon Fodder	Sorcery	C
30273	SOM	100	0	\N	\N	\N	t	\N	\N	Oxidda Daredevil	Creature	C
36851	NEO	195	0	\N	\N	\N	\N	t	\N	Jukai Preserver	Enchantment Creature	C
30283	BOK	120	0	\N	\N	\N	t	\N	\N	Twist Allegiance	Sorcery	R
30284	MID	93	0	\N	\N	t	\N	\N	\N	Crawl from the Cellar	Sorcery	C
30288	EVE	115	0	\N	\N	t	\N	t	\N	Canker Abomination	Creature	U
30289	RAV	98	0	\N	\N	t	\N	\N	\N	Necroplasm	Creature	R
30295	SHM	95	0	\N	\N	\N	t	\N	\N	Inescapable Brute	Creature	C
36852	NEO	196	0	\N	\N	\N	\N	t	\N	Jukai Trainee	Creature	C
30301	DKA	117	0	\N	\N	\N	\N	t	\N	Grim Flowering	Sorcery	U
30302	GPT	115	0	\N	t	t	t	t	\N	Glint-Eye Nephilim	Creature	R
30305	SOK	113	0	\N	\N	\N	t	\N	\N	Skyfire Kirin	Lgd. Creature	R
30309	BOK	121	0	\N	\N	\N	\N	t	\N	Body of Jukai	Creature	U
30310	MID	94	0	\N	\N	t	\N	\N	\N	Curse of Leeches // Leeching Lurker	Enchantment	R
30314	EVE	116	0	\N	\N	t	\N	t	\N	Cankerous Thirst	Instant	U
30325	SOM	102	0	\N	\N	\N	t	\N	\N	Scoria Elemental	Creature	C
30327	DKA	118	0	\N	\N	\N	\N	t	\N	Hollowhenge Beast	Creature	C
30328	GPT	116	0	\N	t	\N	t	\N	\N	Goblin Flectomancer	Creature	U
30329	ARB	124	0	t	\N	\N	t	t	\N	Uril, the Miststalker	Lgd. Creature	M
30318	ZEN	89	1	\N	\N	t	\N	\N	\N	Gatekeeper of Malakir	Creature	U
30148	ROE	94	1	\N	\N	t	\N	\N	\N	Arrogant Bloodlord	Creature	U
29772	ZEN	68	1	\N	t	\N	\N	\N	\N	Sphinx of Jwar Isle	Creature	R
30195	SOM	97	1	\N	\N	\N	t	\N	\N	Melt Terrain	Sorcery	C
30321	SHM	96	1	\N	\N	\N	t	\N	\N	Intimidator Initiate	Creature	C
29853	SHM	78	1	\N	\N	t	\N	\N	\N	Smolder Initiate	Creature	C
30317	MOR	114	1	\N	\N	\N	\N	t	\N	Bosk Banneret	Creature	C
30265	MOR	112	1	\N	\N	\N	t	\N	\N	War-Spike Changeling	Creature	C
30300	LRW	102	1	\N	\N	t	\N	\N	\N	Boggart Harbinger	Creature	U
29887	ARB	107	1	t	t	t	\N	\N	\N	Esper Sojourners	Artifact Creature	C
36853	NEO	197	0	\N	\N	\N	\N	t	\N	Kami of Transience	Creature	R
30326	LRW	103	2	\N	\N	t	\N	\N	\N	Boggart Loggers	Creature	C
29803	CON	100	1	\N	\N	t	t	t	\N	Charnelhoard Wurm	Creature	R
29843	THS	75	1	\N	\N	t	\N	\N	\N	Abhorrent Overlord	Creature	R
29985	CON	107	2	t	t	t	t	t	\N	Fusion Elemental	Creature	U
30297	CON	119	2	\N	\N	\N	t	t	\N	Nacatl Outlander	Creature	C
36854	NEO	198	0	\N	\N	\N	\N	t	\N	Kappa Tech-Wrecker	Creature	U
36855	NEO	199	0	\N	\N	\N	\N	t	\N	Kodama of the West Tree	Lgd. Creature	M
36856	NEO	200	0	\N	\N	\N	\N	t	\N	Kura, the Boundless Sky	Lgd. Creature	M
36857	NEO	201	0	\N	\N	\N	\N	t	\N	March of Burgeoning Life	Instant	R
28130	CON	33	0	\N	t	\N	\N	\N	\N	Scepter of Insight	Artifact	R
28775	BOK	62	1	\N	\N	t	\N	\N	\N	Blessing of Leeches	Enchantment	C
28174	SOM	20	0	t	\N	\N	\N	\N	\N	Seize the Initiative	Instant	C
28184	MOR	35	0	\N	t	\N	\N	\N	\N	Grimoire Thief	Creature	R
28882	ISD	50	2	\N	t	\N	\N	\N	\N	Curse of the Bloody Tome	Enchantment	C
28204	WWK	31	0	\N	t	\N	\N	\N	\N	Jace, the Mind Sculptor	Lgd. Planeswalker	M
28214	DKA	39	0	\N	t	\N	\N	\N	\N	Havengul Runebinder	Creature	R
28224	GTC	24	0	t	\N	\N	\N	\N	\N	Shielded Passage	Instant	C
28234	ZEN	11	0	t	\N	\N	\N	\N	\N	Emeria Angel	Creature	R
28253	ALA	17	0	t	\N	\N	\N	\N	\N	Knight-Captain of Eos	Creature	R
28263	MID	15	0	t	\N	\N	\N	\N	\N	Curse of Silence	Enchantment	R
28273	MID	14	0	t	\N	\N	\N	\N	\N	Clarion Cathars	Creature	C
28283	SOM	21	0	t	\N	\N	\N	\N	\N	Soul Parry	Instant	C
28303	MRD	26	0	t	\N	\N	\N	\N	\N	Sphere of Purity	Enchantment	C
28313	MOR	37	0	\N	t	\N	\N	\N	\N	Inspired Sprite	Creature	U
28323	ZEN	9	0	t	\N	\N	\N	\N	\N	Day of Judgment	Sorcery	R
28333	BOK	45	0	\N	t	\N	\N	\N	\N	Patron of the Moon	Lgd. Creature	R
28343	DGM	41	0	\N	\N	\N	\N	t	\N	Battering Krasis	Creature	C
29058	CHK	59	1	\N	t	\N	\N	\N	\N	Eye of Nowhere	Sorcery	C
28363	ROE	27	0	t	\N	\N	\N	\N	\N	Ikiral Outrider	Creature	C
28383	CON	46	0	\N	\N	t	\N	\N	\N	Grixis Slavedriver	Creature	U
28393	RAV	24	0	t	\N	\N	\N	\N	\N	Light of Sanction	Enchantment	R
28403	DGM	43	0	\N	\N	\N	\N	t	\N	Maze Behemoth	Creature	C
28414	ALA	25	0	t	\N	\N	\N	\N	\N	Scourglass	Artifact	R
28433	SOK	41	0	\N	t	\N	\N	\N	\N	Kaho, Minamo Historian	Lgd. Creature	R
28443	RAV	27	0	t	\N	\N	\N	\N	\N	Oathsworn Giant	Creature	U
28453	SOM	30	0	\N	t	\N	\N	\N	\N	Darkslick Drake	Creature	U
28472	ZEN	18	0	t	\N	\N	\N	\N	\N	Kor Cartographer	Creature	C
28482	ROE	30	0	t	\N	\N	\N	\N	\N	Kor Line-Slinger	Creature	C
28501	SHM	26	0	t	\N	\N	\N	\N	\N	Windbrisk Raptor	Creature	R
28511	SOK	44	0	\N	t	\N	\N	\N	\N	Meishin, the Mind Cage	Lgd. Enchantment	R
28522	RTR	28	0	t	\N	\N	\N	\N	\N	Trostani's Judgment	Instant	C
28541	BOK	53	0	\N	t	\N	\N	\N	\N	Stream of Consciousness	Instant	U
28551	MRD	36	0	\N	t	\N	\N	\N	\N	Fatespinner	Creature	R
28561	GPT	48	0	\N	\N	t	\N	\N	\N	Daggerclaw Imp	Creature	U
28571	ALA	31	0	t	\N	\N	\N	\N	\N	Yoked Plowbeast	Creature	C
28645	BOK	57	1	\N	t	\N	\N	\N	\N	Toils of Night and Day	Instant	C
28630	DGM	52	0	t	\N	\N	\N	t	\N	Armored Wolf-Rider	Creature	C
28631	SHM	31	0	\N	t	\N	\N	\N	\N	Cerulean Wisps	Instant	C
28671	BOK	58	0	\N	t	\N	\N	\N	\N	Tomorrow, Azami's Familiar	Lgd. Creature	R
28676	EVE	53	0	\N	\N	\N	t	\N	\N	Flame Jab	Sorcery	C
28693	SOK	51	0	\N	t	\N	\N	\N	\N	Overwhelming Intellect	Instant	U
28698	MID	32	0	t	\N	\N	\N	\N	\N	Search Party Captain	Creature	C
28701	ALA	36	0	\N	t	\N	\N	\N	\N	Coma Veil	Enchantment	C
28718	ARB	62	0	\N	\N	\N	t	t	\N	Vengeful Rebirth	Sorcery	U
28729	RAV	38	0	\N	t	\N	\N	\N	\N	Belltower Sphinx	Creature	U
28735	SHM	35	0	\N	t	\N	\N	\N	\N	Deepchannel Mentor	Creature	U
28742	ROE	40	0	t	\N	\N	\N	\N	\N	Oust	Sorcery	U
28754	EVE	56	0	\N	\N	\N	t	\N	\N	Heartlash Cinder	Creature	C
28373	SOK	40	1	\N	t	\N	\N	\N	\N	Ideas Unbound	Sorcery	C
28843	SOM	45	0	\N	t	\N	\N	\N	\N	Steady Progress	Instant	C
28463	BOK	50	1	\N	t	\N	\N	\N	\N	Ribbons of the Reikai	Sorcery	C
28880	MID	39	0	t	\N	\N	\N	\N	\N	Thraben Exorcism	Instant	C
28905	BOK	67	0	\N	\N	t	\N	\N	\N	Goryo's Vengeance	Instant	R
28910	EVE	62	0	\N	\N	\N	t	\N	\N	Stigma Lasher	Creature	R
28922	LRW	49	0	t	\N	\N	\N	\N	\N	Wizened Cenn	Creature	U
28938	RTR	44	0	\N	t	\N	\N	\N	\N	Jace, Architect of Thought	Lgd. Planeswalker	M
28941	MRD	51	0	\N	t	\N	\N	\N	\N	Somber Hoverguard	Creature	C
28952	ARB	71	0	t	\N	\N	\N	t	\N	Knotvine Paladin	Creature	R
28953	SOK	61	0	\N	\N	t	\N	\N	\N	Akuta, Born of Ash	Lgd. Creature	R
28963	RAV	47	0	\N	t	\N	\N	\N	\N	Ethereal Usher	Creature	U
28968	DGM	65	0	t	t	\N	\N	\N	\N	Deputy of Acquittals	Creature	C
28973	SOM	50	0	\N	t	\N	\N	\N	\N	Twisted Image	Instant	U
28983	BOK	70	0	\N	\N	t	\N	\N	\N	Horobi's Whisper	Instant	C
29001	DKA	67	0	\N	\N	t	\N	\N	\N	Harrowing Journey	Sorcery	U
29004	ARB	73	0	t	\N	\N	\N	t	\N	Mycoid Shepherd	Creature	R
29014	EVE	66	0	\N	\N	\N	\N	t	\N	Bloom Tender	Creature	R
29017	MOR	64	0	\N	\N	t	\N	\N	\N	Frogtosser Banneret	Creature	C
36859	NEO	203	0	\N	\N	\N	\N	t	\N	Orochi Merge-Keeper	Creature	U
36860	NEO	204	0	\N	\N	\N	\N	t	\N	Roaring Earth	Enchantment	U
29090	ISD	58	0	\N	t	\N	\N	\N	\N	Grasp of Phantoms	Sorcery	U
29104	LRW	56	0	\N	t	\N	\N	\N	\N	Cryptic Command	Instant	R
29116	ISD	59	0	\N	t	\N	\N	\N	\N	Hysterical Blindness	Instant	C
28164	ZEN	5	1	t	\N	\N	\N	\N	\N	Caravan Hurda	Creature	C
28895	SOM	47	1	\N	t	\N	\N	\N	\N	Thrummingbird	Creature	U
28243	SHM	16	1	t	\N	\N	\N	\N	\N	Order of Whiteclay	Creature	R
28424	SHM	23	1	t	\N	\N	\N	\N	\N	Spectral Procession	Sorcery	U
28761	SHM	36	1	\N	t	\N	\N	\N	\N	Drowner Initiate	Creature	C
28532	LRW	34	1	t	\N	\N	\N	\N	\N	Oblivion Ring	Enchantment	C
36862	NEO	206	0	\N	\N	\N	\N	t	\N	Shigeki, Jukai Visionary	Lgd. Enchantment Creature	R
28144	ARB	37	1	\N	\N	t	t	\N	\N	Defiler of Souls	Creature	M
28919	CON	66	1	\N	\N	\N	t	\N	\N	Ignite Disorder	Instant	U
29101	CON	73	1	\N	\N	\N	t	\N	\N	Viashino Slaughtermaster	Creature	U
28621	THS	28	1	t	\N	\N	\N	\N	\N	Scholar of Athreos	Creature	C
28829	THS	36	1	t	\N	\N	\N	\N	\N	Wingsteed Rider	Creature	C
28491	THS	23	1	t	\N	\N	\N	\N	\N	Leonin Snarecaster	Creature	C
28887	MOR	59	1	\N	\N	t	\N	\N	\N	Blightsoil Druid	Creature	C
28293	MOR	36	2	\N	t	\N	\N	\N	\N	Ink Dissolver	Creature	C
36863	NEO	207	0	\N	\N	\N	\N	t	\N	Spinning Wheel Kick	Sorcery	U
36864	NEO	208	0	\N	\N	\N	\N	t	\N	Spring-Leaf Avenger	Creature	R
36865	NEO	209	0	\N	\N	\N	\N	t	\N	Storyweave	Instant	U
36866	NEO	210	0	\N	\N	\N	\N	t	\N	Tales of Master Seshiro // Seshiro's Living Legacy	Enchantment	C
36858	NEO	202	1	\N	\N	\N	\N	t	\N	Master's Rebuke	Instant	C
30330	ROE	101	0	\N	\N	t	\N	\N	\N	Consuming Vapors	Sorcery	R
30358	CHK	109	1	\N	\N	t	\N	\N	\N	Deathcurse Ogre	Creature	C
30343	MOR	115	0	\N	\N	\N	\N	t	\N	Bramblewood Paragon	Creature	U
30561	DKA	127	4	\N	\N	\N	\N	t	\N	Strangleroot Geist	Creature	U
30353	DKA	119	0	\N	\N	\N	\N	t	\N	Hunger of the Howlpack	Instant	C
30398	DGM	120	0	\N	\N	\N	t	t	\N	Zhur-Taa Druid	Creature	C
30399	SHM	99	0	\N	\N	\N	t	\N	\N	Knollspine Invocation	Enchantment	R
30412	GTC	110	0	\N	\N	\N	t	\N	\N	Viashino Shanktail	Creature	U
30439	BOK	126	0	\N	\N	\N	\N	t	\N	Genju of the Cedars	Enchantment	U
30579	MRD	114	2	\N	\N	\N	\N	t	\N	Bloodscent	Instant	U
30455	SOM	107	0	\N	\N	\N	t	\N	\N	Vulshok Heartstoker	Creature	C
30459	ARB	129	0	t	t	\N	\N	t	\N	Wargate	Sorcery	R
30472	RTR	103	0	\N	\N	\N	t	\N	\N	Pyroconvergence	Enchantment	U
30485	ARB	130	0	t	t	t	t	t	\N	Maelstrom Nexus	Enchantment	M
30709	MRD	119	3	\N	\N	\N	\N	t	\N	Fangren Hunter	Creature	C
30494	ISD	112	0	\N	\N	t	\N	\N	\N	Reaper from the Abyss	Creature	M
30505	CON	127	0	\N	t	t	\N	\N	\N	Sphinx Summoner	Artifact Creature	R
30517	BOK	129	0	\N	\N	\N	\N	t	\N	Isao, Enlightened Bushi	Lgd. Creature	R
30520	ISD	113	0	\N	\N	t	\N	\N	\N	Rotting Fensnake	Creature	C
30527	MRD	112	0	\N	\N	\N	t	\N	\N	War Elemental	Creature	R
30543	BOK	130	0	\N	\N	\N	\N	t	\N	Iwamori of the Open Fist	Lgd. Creature	R
30562	GPT	125	0	t	\N	t	\N	\N	\N	Pillory of the Sleepless	Enchantment	C
30572	ISD	115	0	\N	\N	t	\N	\N	\N	Sever the Bloodline	Sorcery	R
30583	CON	130	0	t	\N	\N	\N	t	\N	Valeron Outlander	Creature	C
30586	LRW	113	0	\N	\N	t	\N	\N	\N	Final Revels	Sorcery	U
30596	MID	105	0	\N	\N	t	\N	\N	\N	Heirloom Mirror // Inherited Fiend	Artifact // Creature	U
30616	ROE	112	0	\N	\N	t	\N	\N	\N	Guul Draz Assassin	Creature	R
30622	MID	106	0	\N	\N	t	\N	\N	\N	Hobbling Zombie	Creature	C
30634	WWK	125	0	\N	\N	\N	\N	\N	\N	Hedron Rover	Artifact Creature	C
30639	DKA	130	0	\N	\N	\N	\N	t	\N	Village Survivors	Creature	U
30678	EVE	130	0	\N	\N	t	\N	t	\N	Woodlurker Mimic	Creature	C
30685	SHM	110	0	\N	\N	\N	\N	t	\N	Devoted Druid	Creature	C
30692	GPT	130	0	\N	\N	\N	t	t	\N	Skarrgan Skybreaker	Creature	U
30705	RAV	114	0	\N	\N	\N	t	\N	\N	Barbarian Riftcutter	Creature	C
31195	BOK	156	1	\N	\N	\N	\N	\N	\N	Orb of Dreams	Artifact	R
31025	SOK	141	4	\N	\N	\N	\N	t	\N	Promised Kannushi	Creature	C
30752	MID	111	0	\N	\N	t	\N	\N	\N	Mask of Griselbrand	Lgd. Artifact	R
30768	LRW	120	0	\N	\N	t	\N	\N	\N	Knucklebone Witch	Creature	R
30781	ALA	116	0	\N	\N	\N	t	\N	\N	Thorn-Thrash Viashino	Creature	C
30786	ZEN	107	0	\N	\N	t	\N	\N	\N	Ob Nixilis, the Fallen	Lgd. Creature	M
30787	MRD	122	0	\N	\N	\N	\N	t	\N	Hum of the Radix	Enchantment	R
30903	CHK	130	1	\N	\N	t	\N	\N	\N	Nezumi Ronin	Creature	C
30808	EVE	135	0	t	\N	\N	t	\N	\N	Double Cleave	Instant	C
30816	WWK	132	0	\N	\N	\N	\N	\N	\N	Bojuka Bog	Land	C
30821	DKA	137	0	t	t	\N	\N	\N	\N	Drogskol Reaver	Creature	M
30835	RAV	119	0	\N	\N	\N	t	\N	\N	Coalhauler Swine	Creature	C
30840	DGM	137	0	\N	\N	\N	\N	\N	\N	Boros Cluestone	Artifact	C
30849	ARB	144	0	t	t	\N	\N	t	\N	Crystallization	Enchantment	C
30860	EVE	137	0	t	\N	\N	t	\N	\N	Duergar Hedge-Mage	Creature	U
30872	LRW	124	0	\N	\N	t	\N	\N	\N	Makeshift Mannequin	Instant	U
30876	ROE	122	0	\N	\N	t	\N	\N	\N	Pawn of Ulamog	Creature	U
30886	EVE	138	0	t	\N	\N	t	\N	\N	Duergar Mine-Captain	Creature	U
30889	MOR	136	0	\N	\N	\N	\N	t	\N	Scapeshift	Sorcery	R
30695	SOK	128	4	\N	\N	\N	\N	t	\N	Elder Pine of Jukai	Creature	C
30933	THS	117	0	\N	\N	\N	t	\N	\N	Deathbellow Raider	Creature	C
30934	ISD	129	0	\N	\N	\N	t	\N	\N	Balefire Dragon	Creature	M
30955	GTC	131	0	\N	\N	\N	\N	t	\N	Scab-Clan Charger	Creature	C
30957	MID	119	0	\N	\N	t	\N	\N	\N	Rotten Reunion	Instant	C
30960	ALA	123	0	\N	\N	\N	\N	t	\N	Algae Gharial	Creature	U
30969	WWK	138	0	\N	\N	\N	\N	\N	\N	Khalni Garden	Land	C
30974	DKA	143	0	\N	\N	t	t	\N	\N	Stromkirk Captain	Creature	U
31006	MID	121	0	\N	\N	t	\N	\N	\N	Siege Zombie	Creature	C
31022	DKA	145	0	\N	\N	\N	\N	\N	\N	Avacyn's Collar	Artifact	U
31035	RAV	127	0	\N	\N	\N	t	\N	\N	Goblin Fire Fiend	Creature	C
31036	RTR	125	0	\N	\N	\N	\N	t	\N	Giant Growth	Instant	C
31048	ROE	129	0	\N	\N	t	\N	\N	\N	Thought Gorger	Creature	R
31059	EVE	145	0	t	\N	\N	t	\N	\N	Rise of the Hobgoblins	Enchantment	R
31064	DGM	146	0	\N	\N	\N	\N	\N	\N	Azorius Guildgate	Land	C
31070	DKA	147	0	\N	\N	\N	\N	\N	\N	Elbrus, the Binding Blade // Withengar Unbound	Lgd. Artifact	M
31071	GPT	145	0	\N	t	\N	t	\N	\N	Izzet Guildmage	Creature	U
31152	ALA	131	0	\N	\N	\N	\N	t	\N	Feral Hydra	Creature	R
31172	BOK	155	0	\N	\N	\N	\N	\N	\N	Neko-Te	Artifact	R
31218	BOK	157	0	\N	\N	\N	\N	\N	\N	Ornate Kanzashi	Artifact	R
31229	DGM	153	0	\N	\N	\N	\N	\N	\N	Orzhov Guildgate	Land	C
30850	ROE	121	1	\N	\N	t	\N	\N	\N	Null Champion	Creature	C
30625	ALA	110	1	\N	\N	\N	t	\N	\N	Resounding Thunder	Instant	C
31065	SHM	125	3	\N	\N	\N	\N	t	\N	Presence of Gond	Enchantment	C
30508	LRW	110	3	\N	\N	t	\N	\N	\N	Eyeblight's Ending	Tribal Instant	C
31045	LRW	131	1	\N	\N	t	\N	\N	\N	Nettlevine Blight	Enchantment	R
30456	LRW	108	1	\N	\N	t	\N	\N	\N	Dreamspoiler Witches	Creature	C
31230	SHM	132	2	\N	\N	\N	\N	t	\N	Viridescent Wisps	Instant	C
30983	THS	119	1	\N	\N	\N	t	\N	\N	Dragon Mantle	Enchantment	C
30519	THS	101	1	\N	\N	t	\N	\N	\N	Read the Bones	Sorcery	C
30389	THS	96	1	\N	\N	t	\N	\N	\N	March of the Returned	Sorcery	C
30771	ARB	141	2	t	\N	\N	t	t	\N	Naya Hushblade	Creature	C
30711	SHM	111	1	\N	\N	\N	\N	t	\N	Dramatic Entrance	Instant	R
36868	NEO	212	0	\N	\N	\N	\N	t	\N	Teachings of the Kirin // Kirin-Touched Orochi	Enchantment	R
36869	NEO	213	0	\N	\N	\N	\N	t	\N	Weaver of Harmony	Enchantment Creature	R
36870	NEO	214	0	\N	\N	\N	\N	t	\N	Webspinner Cuff	Artifact Creature	U
36872	NEO	216	0	\N	t	\N	\N	t	\N	Colossal Skyturtle	Enchantment Creature	U
36873	NEO	217	0	t	\N	\N	t	\N	\N	Eiganjo Uprising	Sorcery	R
36867	NEO	211	1	\N	\N	\N	\N	t	\N	Tamiyo's Safekeeping	Instant	C
30331	SOK	114	0	\N	\N	\N	t	\N	\N	Sokenzan Renegade	Creature	U
30342	RTR	98	0	\N	\N	\N	t	\N	\N	Guttersnipe	Creature	U
30345	MRD	105	0	\N	\N	\N	t	\N	\N	Shatter	Instant	C
30352	LRW	104	0	\N	\N	t	\N	\N	\N	Boggart Mob	Creature	R
31125	BOK	153	1	\N	\N	\N	\N	\N	\N	Blinding Powder	Artifact	U
30366	EVE	118	0	\N	\N	t	\N	t	\N	Deity of Scars	Creature	R
30624	ISD	117	2	\N	\N	t	\N	\N	\N	Skirsdag High Priest	Creature	R
30332	CHK	108	1	\N	\N	t	\N	\N	\N	Dance of Shadows	Sorcery	U
30414	MID	98	0	\N	\N	t	\N	\N	\N	Duress	Sorcery	C
31039	MRD	132	3	\N	\N	\N	\N	t	\N	Tel-Jilad Chosen	Creature	C
30443	ALA	103	0	\N	\N	\N	t	\N	\N	Hell's Thunder	Creature	R
30446	RTR	102	0	\N	\N	\N	t	\N	\N	Pursuit of Flight	Enchantment	C
30461	SOK	119	0	\N	\N	\N	t	\N	\N	Undying Flames	Sorcery	R
30470	EVE	122	0	\N	\N	t	\N	t	\N	Gift of the Deity	Enchantment	C
30476	DGM	123	0	t	t	\N	\N	t	\N	Beck // Call	Sorcery // Sorcery	R
30477	SHM	102	0	\N	\N	\N	t	\N	\N	Puncture Bolt	Instant	C
30484	GPT	122	0	t	\N	t	\N	\N	\N	Mortify	Instant	U
30490	GTC	113	0	\N	\N	\N	\N	t	\N	Adaptive Snapjaw	Creature	C
30729	ALA	114	1	\N	\N	\N	t	\N	\N	Skeletonize	Instant	U
30507	SOM	109	0	\N	\N	\N	\N	t	\N	Alpha Tyrranax	Creature	C
30538	ROE	109	0	\N	\N	t	\N	\N	\N	Escaped Null	Creature	U
30548	EVE	125	0	\N	\N	t	\N	t	\N	Odious Trow	Creature	C
31098	CHK	138	1	\N	\N	t	\N	\N	\N	Rag Dealer	Creature	C
30575	RAV	109	0	\N	\N	t	\N	\N	\N	Thoughtpicker Witch	Creature	C
30577	MOR	124	0	\N	\N	\N	\N	t	\N	Gilt-Leaf Archdruid	Creature	R
30600	EVE	127	0	\N	\N	t	\N	t	\N	Rendclaw Trow	Creature	C
30603	MOR	125	0	\N	\N	\N	\N	t	\N	Greatbow Doyen	Creature	R
30825	SOK	133	3	\N	\N	\N	\N	t	\N	Inner Calm, Outer Strength	Instant	C
30611	SOM	113	0	\N	\N	\N	\N	t	\N	Blunt the Assault	Instant	C
30621	BOK	133	0	\N	\N	\N	\N	t	\N	Lifespinner	Creature	U
30638	LRW	115	0	\N	\N	t	\N	\N	\N	Footbottom Feast	Instant	C
30679	RAV	113	0	\N	\N	t	\N	\N	\N	Woebringer Demon	Creature	R
30684	DGM	131	0	t	t	\N	\N	\N	\N	Protect // Serve	Instant // Instant	U
30698	GTC	121	0	\N	\N	\N	\N	t	\N	Giant Adephage	Creature	M
30734	ZEN	105	0	\N	\N	t	\N	\N	\N	Needlebite Trap	Instant	U
30739	CON	136	0	\N	\N	\N	\N	\N	\N	Font of Mythos	Artifact	R
30748	CHK	124	0	\N	\N	t	\N	\N	\N	Marrow-Gnawer	Lgd. Creature	R
30778	MID	112	0	\N	\N	t	\N	\N	\N	The Meathook Massacre	Lgd. Enchantment	M
30565	SOK	123	1	\N	\N	\N	\N	t	\N	Bounteous Kirin	Lgd. Creature	R
30794	LRW	121	0	\N	\N	t	\N	\N	\N	Liliana Vess	Lgd. Planeswalker	R
30828	GTC	126	0	\N	\N	\N	\N	t	\N	Miming Slime	Sorcery	U
30831	THS	113	0	\N	\N	\N	t	\N	\N	Arena Athlete	Creature	U
36874	NEO	218	0	\N	t	\N	t	\N	\N	Enthusiastic Mechanaut	Artifact Creature	U
30845	SOM	122	0	\N	\N	\N	\N	t	\N	Genesis Wave	Sorcery	R
30854	GTC	127	0	\N	\N	\N	\N	t	\N	Naturalize	Instant	C
30884	ISD	127	0	\N	\N	\N	t	\N	\N	Ancient Grudge	Instant	C
30894	WWK	135	0	\N	\N	\N	\N	\N	\N	Dread Statuary	Land	U
30905	GTC	129	0	\N	\N	\N	\N	t	\N	Predator's Rapport	Instant	C
30912	RAV	122	0	\N	\N	\N	t	\N	\N	Fiery Conclusion	Instant	C
30913	RTR	120	0	\N	\N	\N	\N	t	\N	Deadbridge Goliath	Creature	R
30922	SOM	125	0	\N	\N	\N	\N	t	\N	Molder Beast	Creature	C
30924	DKA	141	0	\N	\N	\N	t	t	\N	Immerwolf	Creature	U
30925	GPT	139	0	\N	\N	\N	t	t	\N	Wreak Havoc	Sorcery	U
30942	DGM	141	0	\N	\N	\N	\N	\N	\N	Izzet Cluestone	Artifact	C
30950	GPT	140	0	t	t	t	t	\N	\N	Yore-Tiller Nephilim	Creature	R
36875	NEO	219	0	\N	\N	t	\N	t	\N	Gloomshrieker	Enchantment Creature	U
30972	SOM	127	0	\N	\N	\N	\N	t	\N	Slice in Twain	Instant	U
30984	ISD	131	0	\N	\N	\N	t	\N	\N	Bloodcrazed Neonate	Creature	C
36876	NEO	220	0	t	\N	t	\N	\N	\N	Greasefang, Okiba Boss	Lgd. Creature	R
30996	SOM	128	0	\N	\N	\N	\N	t	\N	Tangle Angler	Creature	U
36877	NEO	221	0	\N	\N	t	t	\N	\N	Hidetsugu Consumes All // Vessel of the All-Consuming	Enchantment	M
31032	ISD	133	0	\N	\N	\N	t	\N	\N	Burning Vengeance	Enchantment	U
31042	WWK	141	0	\N	\N	\N	\N	\N	\N	Raging Ravine	Land	R
36878	NEO	222	0	t	t	\N	t	\N	\N	Hinata, Dawn-Crowned	Lgd. Creature	R
36879	NEO	223	0	\N	\N	\N	t	t	\N	Invigorating Hot Spring	Enchantment	U
31074	CHK	137	0	\N	\N	t	\N	\N	\N	Pull Under	Instant	C
31082	EVE	146	0	t	\N	\N	t	\N	\N	Scourge of the Nobilis	Enchantment	C
31085	MOR	144	0	\N	\N	\N	\N	\N	\N	Obsidian Battle-Axe	Tribal Artifact	U
31114	WWK	144	0	\N	\N	\N	\N	\N	\N	Stirring Wildwood	Land	R
31117	LRW	134	0	\N	\N	t	\N	\N	\N	Peppersmoke	Tribal Instant	C
31126	MID	126	0	\N	\N	t	\N	\N	\N	Vengeful Strangler // Strangling Grasp	Creature	U
31173	MID	128	0	\N	\N	\N	t	\N	\N	Ardent Elementalist	Creature	C
31194	GTC	141	0	t	\N	t	\N	\N	\N	Alms Beast	Creature	R
30590	ROE	111	1	\N	\N	t	\N	\N	\N	Gloomhunter	Creature	C
30891	MRD	126	1	\N	\N	\N	\N	t	\N	One Dozen Eyes	Sorcery	U
36881	NEO	225	0	t	\N	\N	\N	t	\N	Jukai Naturalist	Enchantment Creature	U
30943	SHM	120	1	\N	\N	\N	\N	t	\N	Hungry Spriggan	Creature	C
30451	SHM	101	1	\N	\N	\N	t	\N	\N	Power of Fire	Enchantment	C
30534	LRW	111	1	\N	\N	t	\N	\N	\N	Facevaulter	Creature	C
30355	ARB	125	1	t	t	\N	\N	t	\N	Bant Sojourners	Creature	C
30797	ARB	142	1	t	\N	\N	t	t	\N	Trace of Abundance	Enchantment	C
30537	ARB	132	1	t	t	t	\N	\N	\N	Esper Stormblade	Artifact Creature	C
30531	CON	128	1	\N	\N	t	t	\N	\N	Suicidal Charge	Enchantment	C
36882	NEO	226	0	\N	t	t	\N	\N	\N	Kaito Shizuki	Lgd. Planeswalker	M
31151	THS	126	1	\N	\N	\N	t	\N	\N	Labyrinth Champion	Creature	R
30623	THS	105	1	\N	\N	t	\N	\N	\N	Scourgemark	Enchantment	C
30493	THS	100	1	\N	\N	t	\N	\N	\N	Pharika's Cure	Instant	C
31061	MOR	143	1	\N	\N	\N	\N	\N	\N	Door of Destinies	Artifact	R
30635	CON	132	2	t	t	\N	\N	\N	\N	Vedalken Outlander	Artifact Creature	C
36883	NEO	227	0	t	t	t	t	t	\N	The Kami War // O-Kagachi Made Manifest	Enchantment	M
36884	NEO	228	0	\N	t	t	\N	\N	\N	Kotose, the Silent Spider	Lgd. Creature	R
36880	NEO	224	1	t	\N	t	t	\N	\N	Isshin, Two Heavens as One	Lgd. Creature	R
30334	GTC	107	0	\N	\N	\N	t	\N	\N	Structural Collapse	Sorcery	C
30365	ALA	100	0	\N	\N	\N	t	\N	\N	Flameblast Dragon	Creature	R
30377	SOM	104	0	\N	\N	\N	t	\N	\N	Spikeshot Elder	Creature	R
30415	THS	97	0	\N	\N	t	\N	\N	\N	Mogis's Marauder	Creature	U
30424	DGM	121	0	t	\N	\N	\N	t	\N	Alive // Well	Sorcery // Sorcery	U
30436	CHK	112	0	\N	\N	t	\N	\N	\N	Gibbering Kami	Creature	C
30444	EVE	121	0	\N	\N	t	\N	t	\N	Drain the Well	Sorcery	C
30445	RAV	104	0	\N	\N	t	\N	\N	\N	Sewerdreg	Creature	C
30452	WWK	118	0	\N	\N	\N	\N	t	\N	Wolfbriar Elemental	Creature	R
30460	ROE	106	0	\N	\N	t	\N	\N	\N	Demonic Appetite	Enchantment	C
30471	RAV	105	0	\N	\N	t	\N	\N	\N	Shred Memory	Instant	C
30475	MRD	110	0	\N	\N	\N	t	\N	\N	Vulshok Battlemaster	Creature	R
30478	WWK	119	0	t	\N	\N	\N	t	\N	Novablast Wurm	Creature	M
30483	DKA	124	0	\N	\N	\N	\N	t	\N	Predator Ooze	Creature	R
30492	MID	101	0	\N	\N	t	\N	\N	\N	Foul Play	Sorcery	U
30514	CHK	115	0	\N	\N	t	\N	\N	\N	Hideous Laughter	Instant	U
30523	RAV	107	0	\N	\N	t	\N	\N	\N	Stinkweed Imp	Creature	C
30524	RTR	105	0	\N	\N	\N	t	\N	\N	Splatter Thug	Creature	C
30546	ISD	114	0	\N	\N	t	\N	\N	\N	Screeching Bat // Stalking Vampire	Creature	U
30550	RTR	106	0	\N	\N	\N	t	\N	\N	Street Spasm	Instant	U
30556	WWK	122	0	\N	\N	\N	\N	\N	\N	Basilisk Collar	Artifact	R
30553	MRD	113	2	\N	\N	\N	\N	t	\N	Battlegrowth	Instant	C
30384	CHK	110	1	\N	\N	t	\N	\N	\N	Devouring Greed	Sorcery	C
30601	RAV	110	0	\N	\N	t	\N	\N	\N	Undercity Shade	Creature	U
30602	RTR	108	0	\N	\N	\N	t	\N	\N	Tenement Crasher	Creature	C
30491	BOK	128	1	\N	\N	\N	\N	t	\N	Harbinger of Spring	Creature	C
30613	DKA	129	0	\N	\N	\N	\N	t	\N	Ulvenwald Bear	Creature	C
30977	SOK	139	5	\N	\N	\N	\N	t	\N	Nightsoil Kami	Creature	C
30650	ISD	118	0	\N	\N	t	\N	\N	\N	Stromkirk Patrol	Creature	C
30661	CON	133	0	\N	t	t	\N	\N	\N	Zombie Outlander	Creature	C
30664	LRW	116	0	\N	\N	t	\N	\N	\N	Ghostly Changeling	Creature	U
30674	MID	108	0	\N	\N	t	\N	\N	\N	Jadar, Ghoulcaller of Nephalia	Lgd. Creature	R
30726	MID	110	0	\N	\N	t	\N	\N	\N	Lord of the Forsaken	Creature	M
30745	ARB	140	0	t	\N	\N	t	t	\N	Marisi's Twinclaws	Creature	U
30755	ALA	115	0	\N	\N	\N	t	\N	\N	Soul's Fire	Instant	C
30760	ZEN	106	0	\N	\N	t	\N	\N	\N	Nimana Sell-Sword	Creature	C
30774	CHK	125	0	\N	\N	t	\N	\N	\N	Midnight Covenant	Enchantment	C
30858	ISD	126	0	\N	\N	t	\N	\N	\N	Walking Corpse	Creature	C
30880	GTC	128	0	\N	\N	\N	\N	t	\N	Ooze Flux	Enchantment	R
30907	MID	117	0	\N	\N	t	\N	\N	\N	Novice Occultist	Creature	C
30930	GTC	130	0	\N	\N	\N	\N	t	\N	Rust Scarab	Creature	U
30937	RAV	123	0	\N	\N	\N	t	\N	\N	Flame Fusillade	Sorcery	R
30952	SOK	138	0	\N	\N	\N	\N	t	\N	Molting Skin	Enchantment	U
30963	RTR	122	0	\N	\N	\N	\N	t	\N	Drudge Beetle	Creature	C
30980	GTC	132	0	\N	\N	\N	\N	t	\N	Serene Remembrance	Sorcery	U
31021	LRW	130	0	\N	\N	t	\N	\N	\N	Nectar Faerie	Creature	U
31023	GPT	143	0	\N	\N	\N	t	t	\N	Giant Solifuge	Creature	R
31024	ROE	128	0	\N	\N	t	\N	\N	\N	Suffer the Past	Instant	U
31034	EVE	144	0	t	\N	\N	t	\N	\N	Nobilis of War	Creature	R
31037	MOR	142	0	\N	\N	\N	\N	\N	\N	Diviner's Wand	Tribal Artifact	U
31044	SOM	130	0	\N	\N	\N	\N	t	\N	Tel-Jilad Fallen	Creature	C
31049	SOK	142	0	\N	\N	\N	\N	t	\N	Reki, the History of Kamigawa	Lgd. Creature	R
31057	RAV	128	0	\N	\N	\N	t	\N	\N	Goblin Spelunkers	Creature	C
31072	ROE	130	0	\N	\N	t	\N	\N	\N	Vendetta	Instant	C
31149	BOK	154	0	\N	\N	\N	\N	\N	\N	Mirror Gallery	Artifact	R
31175	ALA	132	0	\N	\N	\N	\N	t	\N	Gift of the Gargantuan	Sorcery	C
31200	ISD	140	0	\N	\N	\N	t	\N	\N	Devil's Play	Sorcery	R
31203	MOR	149	0	\N	\N	\N	\N	\N	\N	Primal Beyond	Land	R
31213	ROE	136	0	\N	\N	\N	t	\N	\N	Battle-Rattle Shaman	Creature	C
31239	GTC	143	0	t	\N	\N	t	\N	\N	Aurelia, the Warleader	Lgd. Creature	M
31248	RTR	134	0	\N	\N	\N	\N	t	\N	Seek the Horizon	Sorcery	U
31251	DGM	154	0	\N	\N	\N	\N	\N	\N	Rakdos Guildgate	Land	C
31256	DKA	155	0	\N	\N	\N	\N	\N	\N	Evolving Wilds	Land	C
31312	ISD	145	0	\N	\N	\N	t	\N	\N	Hanweir Watchkeep // Bane of Hanweir	Creature	U
31009	ALA	125	1	\N	\N	\N	\N	t	\N	Cavern Thoctar	Creature	C
31326	GTC	147	0	\N	\N	\N	t	t	\N	Borborygmos Enraged	Lgd. Creature	M
31351	EVE	158	0	\N	t	\N	\N	t	\N	Selkie Hedge-Mage	Creature	U
31361	LRW	145	0	\N	\N	t	\N	\N	\N	Thoughtseize	Sorcery	R
31362	GPT	158	0	\N	\N	\N	\N	\N	\N	Gruul Turf	Land	C
31372	ALA	141	0	\N	\N	\N	\N	t	\N	Naturalize	Instant	C
31377	MRD	147	0	\N	\N	\N	\N	\N	\N	Bosh, Iron Golem	Lgd. Artifact Creature	R
31378	SHM	139	0	t	t	\N	\N	\N	\N	Curse of Chains	Enchantment	C
31380	SOM	145	0	\N	\N	\N	\N	\N	\N	Contagion Engine	Artifact	R
31383	ROE	144	0	\N	\N	\N	t	\N	\N	Fissure Vent	Sorcery	C
31395	ZEN	133	0	\N	\N	\N	t	\N	\N	Inferno Trap	Instant	U
36885	NEO	229	0	t	\N	t	\N	\N	\N	Naomi, Pillar of Order	Lgd. Creature	U
31399	SOM	146	0	\N	\N	\N	\N	\N	\N	Copper Myr	Artifact Creature	C
31190	ROE	135	1	\N	\N	\N	t	\N	\N	Battle Rampart	Creature	C
31134	ZEN	121	1	\N	\N	\N	t	\N	\N	Demolish	Sorcery	C
30605	MRD	115	3	\N	\N	\N	\N	t	\N	Brown Ouphe	Creature	U
30966	MRD	129	1	\N	\N	\N	\N	t	\N	Slith Predator	Creature	U
36886	NEO	230	0	\N	\N	t	t	\N	\N	Oni-Cult Anvil	Artifact	U
31319	SOM	142	1	\N	\N	\N	\N	\N	\N	Chrome Steed	Artifact Creature	C
30425	SHM	100	1	\N	\N	\N	t	\N	\N	Mudbrawler Cohort	Creature	C
31187	LRW	137	1	\N	\N	t	\N	\N	\N	Quill-Slinger Boggart	Creature	C
31069	LRW	132	1	\N	\N	t	\N	\N	\N	Nightshade Stinger	Creature	C
30765	CON	137	1	\N	\N	\N	\N	\N	\N	Kaleidostone	Artifact	C
31133	MOR	146	1	\N	\N	\N	\N	\N	\N	Veteran's Armaments	Tribal Artifact	U
30701	THS	108	2	\N	\N	t	\N	\N	\N	Tormented Hero	Creature	U
30742	LRW	119	1	\N	\N	t	\N	\N	\N	Hunter of Eyeblights	Creature	U
31317	SHM	136	1	t	t	\N	\N	\N	\N	Aethertow	Instant	C
31210	LRW	138	3	\N	\N	t	\N	\N	\N	Scarred Vinebreeder	Creature	C
36887	NEO	231	0	t	t	\N	\N	\N	\N	Prodigy's Prototype	Artifact	U
36888	NEO	232	0	t	\N	\N	t	\N	\N	Raiyuu, Storm's Edge	Lgd. Creature	R
36889	NEO	233	0	t	\N	\N	t	\N	\N	Risona, Asari Commander	Lgd. Creature	R
30367	RAV	101	0	\N	\N	t	\N	\N	\N	Ribbons of Night	Sorcery	U
30372	DGM	119	0	\N	\N	\N	t	t	\N	Zhur-Taa Ancient	Creature	R
30373	SHM	98	0	\N	\N	\N	t	\N	\N	Knollspine Dragon	Creature	R
30388	MID	97	0	\N	\N	t	\N	\N	\N	Dreadhound	Creature	U
30404	LRW	106	0	\N	\N	t	\N	\N	\N	Colfenor's Plans	Enchantment	R
30407	ARB	127	0	t	t	\N	\N	t	\N	Flurry of Wings	Instant	U
30417	ALA	102	0	\N	\N	\N	t	\N	\N	Goblin Mountaineer	Creature	C
30422	ZEN	93	0	\N	\N	t	\N	\N	\N	Guul Draz Vampire	Creature	C
30427	CON	124	0	\N	\N	t	t	\N	\N	Shambling Remains	Creature	U
30466	MID	100	0	\N	\N	t	\N	\N	\N	Ecstatic Awakener // Awoken Demon	Creature	C
30364	ISD	107	1	\N	\N	t	\N	\N	\N	Markov Patrician	Creature	C
30533	SOM	110	0	\N	\N	\N	\N	t	\N	Asceticism	Enchantment	R
31063	MRD	133	4	\N	\N	\N	\N	t	\N	Tel-Jilad Exile	Creature	C
30570	MID	104	0	\N	\N	t	\N	\N	\N	Graveyard Trespasser // Graveyard Glutton	Creature	R
30581	SHM	106	0	\N	\N	\N	t	\N	\N	Slinking Giant	Creature	U
30588	GPT	126	0	\N	\N	\N	t	t	\N	Rumbling Slum	Creature	R
30598	ISD	116	0	\N	\N	t	\N	\N	\N	Skeletal Grimace	Enchantment	C
30606	DGM	128	0	\N	\N	t	t	t	\N	Flesh // Blood	Sorcery // Sorcery	R
30614	GPT	127	0	\N	\N	\N	t	t	\N	Savage Twister	Sorcery	U
30651	ALA	111	0	\N	\N	\N	t	\N	\N	Ridge Rannet	Creature	C
30852	CHK	128	1	\N	\N	t	\N	\N	\N	Nezumi Cutthroat	Creature	C
30665	DKA	131	0	\N	\N	\N	\N	t	\N	Vorapede	Creature	M
30673	BOK	135	0	\N	\N	\N	\N	t	\N	Mark of Sakiko	Enchantment	U
30702	ISD	120	0	\N	\N	t	\N	\N	\N	Typhoid Rats	Creature	C
30725	BOK	137	0	\N	\N	\N	\N	t	\N	Nourishing Shoal	Instant	R
30743	DKA	134	0	\N	\N	\N	\N	t	\N	Young Wolf	Creature	C
30744	GPT	132	0	\N	t	\N	t	\N	\N	Stitch in Time	Sorcery	R
30754	ISD	122	0	\N	\N	t	\N	\N	\N	Unburial Rites	Sorcery	U
30761	MRD	121	0	\N	\N	\N	\N	t	\N	Groffskithur	Creature	C
30764	WWK	130	0	\N	\N	\N	\N	\N	\N	Seer's Sundial	Artifact	R
30769	DKA	135	0	\N	t	t	\N	\N	\N	Diregraf Captain	Creature	U
30770	GPT	133	0	\N	\N	\N	t	t	\N	Streetbreaker Wurm	Creature	C
30780	ISD	123	0	\N	\N	t	\N	\N	\N	Vampire Interloper	Creature	C
30790	WWK	131	0	\N	\N	\N	\N	\N	\N	Walking Atlas	Artifact Creature	C
30798	ROE	119	0	\N	\N	t	\N	\N	\N	Nirkana Cutthroat	Creature	U
30811	MOR	133	0	\N	\N	\N	\N	t	\N	Recross the Paths	Sorcery	U
30814	DGM	136	0	\N	\N	\N	\N	\N	\N	Azorius Cluestone	Artifact	C
30823	ARB	143	0	t	t	\N	\N	t	\N	Bant Sureblade	Creature	C
30833	ALA	118	0	\N	\N	\N	t	\N	\N	Viashino Skeleton	Creature	C
30842	WWK	133	0	\N	\N	\N	\N	\N	\N	Celestial Colonnade	Land	R
30847	DKA	138	0	\N	\N	t	t	\N	\N	Falkenrath Aristocrat	Creature	M
30862	RTR	118	0	\N	\N	\N	\N	t	\N	Centaur's Herald	Creature	C
30865	MRD	125	0	\N	\N	\N	\N	t	\N	Molder Slug	Creature	R
30335	BOK	122	1	\N	\N	\N	\N	t	\N	Budoka Pupil // Ichiga, Who Topples Oaks	Creature	U
30878	CHK	129	0	\N	\N	t	\N	\N	\N	Nezumi Graverobber // Nighteyes the Desecrator	Creature	U
30909	ISD	128	0	\N	\N	\N	t	\N	\N	Ashmouth Hound	Creature	C
30919	WWK	136	0	\N	\N	\N	\N	\N	\N	Eye of Ugin	Lgd. Land	M
30928	CHK	131	0	\N	\N	t	\N	\N	\N	Nezumi Shortfang // Stabwhisker the Odious	Creature	R
30939	MOR	138	0	\N	\N	\N	\N	t	\N	Walker of the Grove	Creature	U
31081	ALA	128	1	\N	\N	\N	\N	t	\N	Druid of the Anima	Creature	C
30988	RTR	123	0	\N	\N	\N	\N	t	\N	Druid's Deliverance	Instant	C
30991	MRD	130	0	\N	\N	\N	\N	t	\N	Sylvan Scrying	Sorcery	U
31004	GTC	133	0	\N	\N	\N	\N	t	\N	Skarrg Goliath	Creature	R
31031	THS	121	0	\N	\N	\N	t	\N	\N	Fanatic of Mogis	Creature	U
31040	DGM	145	0	\N	\N	\N	\N	\N	\N	Simic Cluestone	Artifact	C
31041	SHM	124	0	\N	\N	\N	\N	t	\N	Nurturer Initiate	Creature	C
31052	GTC	135	0	\N	\N	\N	\N	t	\N	Spire Tracer	Creature	C
31060	RTR	126	0	\N	\N	\N	\N	t	\N	Gobbling Ooze	Creature	U
30644	CHK	120	1	\N	\N	t	\N	\N	\N	Kami of the Waning Moon	Creature	C
31086	ZEN	119	0	\N	\N	\N	t	\N	\N	Burst Lightning	Instant	C
31214	SOK	149	3	\N	\N	\N	\N	t	\N	Shinen of Life's Roar	Creature	C
31093	LRW	133	0	\N	\N	t	\N	\N	\N	Oona's Prowler	Creature	R
31102	MID	125	0	\N	\N	t	\N	\N	\N	Vampire Interloper	Creature	C
31104	ISD	136	0	\N	\N	\N	t	\N	\N	Curse of Stalked Prey	Enchantment	R
31118	DKA	149	0	\N	\N	\N	\N	\N	\N	Grafdigger's Cage	Artifact	R
31124	GTC	138	0	\N	\N	\N	\N	t	\N	Verdant Haven	Enchantment	C
31150	MID	127	0	\N	\N	\N	t	\N	\N	Abandon the Post	Sorcery	C
31188	DKA	152	0	\N	\N	\N	\N	\N	\N	Jar of Eyeballs	Artifact	R
31189	GPT	150	0	\N	\N	\N	\N	\N	\N	Gruul Signet	Artifact	C
31199	EVE	151	0	\N	t	\N	\N	t	\N	Favor of the Overbeing	Enchantment	C
30465	BOK	127	3	\N	\N	\N	\N	t	\N	Gnarled Mass	Creature	C
31209	SOM	137	0	\N	\N	\N	\N	\N	\N	Argentum Armor	Artifact	R
31238	CHK	144	0	\N	\N	t	\N	\N	\N	Soulless Revival	Instant	C
31244	ALA	135	0	\N	\N	\N	\N	t	\N	Keeper of Progenitus	Creature	R
31259	SOK	151	0	\N	\N	t	\N	t	\N	Iname as One	Lgd. Creature	R
31270	RTR	135	0	\N	\N	\N	\N	t	\N	Slime Molding	Sorcery	U
31066	WWK	142	1	\N	\N	\N	\N	\N	\N	Sejiri Steppe	Land	C
31096	ROE	131	1	\N	\N	t	\N	\N	\N	Virulent Swipe	Instant	U
30434	ROE	105	1	\N	\N	t	\N	\N	\N	Death Cultist	Creature	C
30916	MRD	127	1	\N	\N	\N	\N	t	\N	Plated Slagwurm	Creature	R
36890	NEO	234	0	\N	t	t	\N	\N	\N	Satoru Umezawa	Lgd. Creature	R
30867	SHM	117	2	\N	\N	\N	\N	t	\N	Gloomwidow	Creature	U
31113	SHM	127	1	\N	\N	\N	\N	t	\N	Raking Canopy	Enchantment	U
30607	SHM	107	1	\N	\N	\N	t	\N	\N	Smash to Smithereens	Instant	C
31243	THS	130	1	\N	\N	\N	t	\N	\N	Minotaur Skullcleaver	Creature	C
31127	THS	125	1	\N	\N	\N	t	\N	\N	Ill-Tempered Cyclops	Creature	C
31174	THS	127	1	\N	\N	\N	t	\N	\N	Lightning Strike	Instant	C
30947	SOM	126	2	\N	\N	\N	\N	t	\N	Putrefax	Creature	R
36891	NEO	235	0	t	\N	\N	\N	t	\N	Satsuki, the Living Lore	Lgd. Creature	R
36893	NEO	237	0	t	\N	t	\N	\N	\N	Spirit-Sister's Call	Enchantment	M
36894	NEO	238	0	\N	t	\N	\N	t	\N	Tamiyo, Compleated Sage	Lgd. Planeswalker	M
36895	NEO	239	0	\N	\N	\N	\N	\N	\N	Automated Artificer	Artifact Creature	C
36896	NEO	240	0	\N	\N	\N	\N	\N	\N	Bronze Cudgels	Artifact	U
30336	MID	95	0	\N	\N	t	\N	\N	\N	Defenestrate	Instant	C
30369	MOR	116	0	\N	\N	\N	\N	t	\N	Chameleon Colossus	Creature	R
30370	ZEN	91	0	\N	\N	t	\N	\N	\N	Grim Discovery	Sorcery	C
30375	CON	122	0	t	\N	\N	\N	t	\N	Rhox Bodyguard	Creature	C
30386	GTC	109	0	\N	\N	\N	t	\N	\N	Towering Thunderfist	Creature	C
30438	GTC	111	0	\N	\N	\N	t	\N	\N	Warmind Infantry	Creature	C
30450	DGM	122	0	\N	\N	\N	t	t	\N	Armed // Dangerous	Sorcery // Sorcery	U
30462	CHK	113	0	\N	\N	t	\N	\N	\N	Gutwrencher Oni	Creature	U
30486	ROE	107	0	\N	\N	t	\N	\N	\N	Drana, Kalastria Bloodchief	Lgd. Creature	R
30497	RAV	106	0	\N	\N	t	\N	\N	\N	Sins of the Past	Sorcery	R
30502	DGM	124	0	\N	t	t	t	\N	\N	Breaking // Entering	Sorcery // Sorcery	R
30530	WWK	121	0	\N	\N	\N	\N	\N	\N	Amulet of Vigor	Artifact	R
30580	DGM	127	0	\N	t	t	\N	\N	\N	Far // Away	Instant // Instant	U
30589	ARB	134	0	\N	t	t	t	\N	\N	Grixis Grimblade	Creature	C
30599	ALA	109	0	\N	\N	\N	t	\N	\N	Predator Dragon	Creature	R
30604	ZEN	100	0	\N	\N	t	\N	\N	\N	Malakir Bloodwitch	Creature	R
30612	LRW	114	0	\N	\N	t	\N	\N	\N	Fodder Launch	Tribal Sorcery	U
30646	GTC	119	0	\N	\N	\N	\N	t	\N	Experiment One	Creature	U
30649	THS	106	0	\N	\N	t	\N	\N	\N	Sip of Hemlock	Sorcery	C
30535	DKA	126	1	\N	\N	\N	\N	t	\N	Somberwald Dryad	Creature	C
30675	THS	107	0	\N	\N	t	\N	\N	\N	Thoughtseize	Sorcery	R
30863	MOR	135	1	\N	\N	\N	\N	t	\N	Rhys the Exiled	Lgd. Creature	R
30689	SOM	116	0	\N	\N	\N	\N	t	\N	Copperhorn Scout	Creature	C
30693	ARB	138	0	\N	\N	t	t	t	\N	Jund Hackblade	Creature	C
30694	ROE	115	0	\N	\N	t	\N	\N	\N	Inquisition of Kozilek	Sorcery	U
30704	EVE	131	0	\N	\N	t	\N	t	\N	Worm Harvest	Sorcery	R
30718	GPT	131	0	t	\N	t	\N	\N	\N	Souls of the Faultless	Creature	U
30730	EVE	132	0	t	\N	\N	t	\N	\N	Balefire Liege	Creature	R
30442	ISD	110	2	\N	\N	t	\N	\N	\N	Morkrut Banshee	Creature	U
30791	CON	138	0	\N	\N	\N	\N	\N	\N	Mana Cylix	Artifact	C
30793	SOM	120	0	\N	\N	\N	\N	t	\N	Ezuri's Archers	Creature	C
30795	DKA	136	0	t	t	\N	\N	\N	\N	Drogskol Captain	Creature	U
30796	GPT	134	0	t	\N	t	\N	\N	\N	Teysa, Orzhov Scion	Lgd. Creature	R
30469	ALA	104	1	\N	\N	\N	t	\N	\N	Hissing Iguanar	Creature	C
30832	ISD	125	0	\N	\N	t	\N	\N	\N	Village Cannibals	Creature	U
30846	LRW	123	0	\N	\N	t	\N	\N	\N	Mad Auntie	Creature	R
30826	CHK	127	1	\N	\N	t	\N	\N	\N	Nezumi Bone-Reader	Creature	U
30864	ZEN	110	0	\N	\N	t	\N	\N	\N	Sadistic Sacrament	Sorcery	R
30868	WWK	134	0	\N	\N	\N	\N	\N	\N	Creeping Tar Pit	Land	R
30869	CON	141	0	\N	\N	\N	\N	\N	\N	Ancient Ziggurat	Land	U
30540	CHK	116	1	\N	\N	t	\N	\N	\N	Honden of Night's Reach	Lgd. Enchantment	U
30917	DGM	140	0	\N	\N	\N	\N	\N	\N	Gruul Cluestone	Artifact	C
31002	CHK	134	1	\N	\N	t	\N	\N	\N	Numai Outcast	Creature	U
30938	RTR	121	0	\N	\N	\N	\N	t	\N	Death's Presence	Enchantment	R
30951	ROE	125	0	\N	\N	t	\N	\N	\N	Repay in Kind	Sorcery	R
30964	MOR	139	0	\N	\N	\N	\N	t	\N	Winnower Patrol	Creature	C
30965	ZEN	114	0	\N	\N	t	\N	\N	\N	Vampire Hexmage	Creature	U
30985	ALA	124	0	\N	\N	\N	\N	t	\N	Behemoth's Herald	Creature	U
30994	WWK	139	0	\N	\N	\N	\N	\N	\N	Lavaclaw Reaches	Land	R
30997	LRW	129	0	\N	\N	t	\N	\N	\N	Nath's Buffoon	Creature	C
31038	ZEN	117	0	\N	\N	t	\N	\N	\N	Vampire's Bite	Instant	C
30747	SOK	130	1	\N	\N	\N	\N	t	\N	Fiddlehead Kami	Creature	C
31050	CHK	136	0	\N	\N	t	\N	\N	\N	Painwracker Oni	Creature	U
31153	EVE	149	0	\N	t	\N	\N	t	\N	Cold-Eyed Selkie	Creature	R
31166	GPT	149	0	\N	\N	\N	t	t	\N	Wild Cantor	Creature	C
31177	ISD	139	0	\N	\N	\N	t	\N	\N	Desperate Ravings	Instant	U
31180	MOR	148	0	\N	\N	\N	\N	\N	\N	Mutavault	Land	R
31181	ZEN	123	0	\N	\N	\N	t	\N	\N	Elemental Appeal	Sorcery	R
31186	SOM	136	0	\N	\N	\N	\N	\N	\N	Accorder's Shield	Artifact	C
31191	SOK	148	0	\N	\N	\N	\N	t	\N	Sekki, Seasons' Guide	Lgd. Creature	R
31201	RAV	134	0	\N	\N	\N	t	\N	\N	Instill Furor	Enchantment	U
31202	RTR	132	0	\N	\N	\N	\N	t	\N	Rubbleback Rhino	Creature	C
30413	BOK	125	2	\N	\N	\N	\N	t	\N	Forked-Branch Garami	Creature	U
31222	EVE	152	0	\N	t	\N	\N	t	\N	Gilder Bairn	Creature	U
31224	RAV	135	0	\N	\N	\N	t	\N	\N	Mindmoil	Enchantment	R
31225	RTR	133	0	\N	\N	\N	\N	t	\N	Savage Surge	Instant	U
31033	ALA	126	1	\N	\N	\N	\N	t	\N	Court Archers	Creature	C
31260	CHK	145	0	\N	\N	t	\N	\N	\N	Struggle for Sanity	Sorcery	U
31269	RAV	137	0	\N	\N	\N	t	\N	\N	Ordruun Commando	Creature	C
31272	MRD	142	0	\N	\N	\N	\N	\N	\N	Alpha Myr	Artifact Creature	C
31279	GPT	154	0	\N	\N	\N	\N	\N	\N	Moratorium Stone	Artifact	R
31167	ROE	134	1	\N	\N	\N	t	\N	\N	Akoum Boulderfoot	Creature	U
30720	ROE	116	1	\N	\N	t	\N	\N	\N	Last Kiss	Instant	C
30918	SHM	119	1	\N	\N	\N	\N	t	\N	Howl of the Night Pack	Sorcery	U
30733	MOR	130	1	\N	\N	\N	\N	t	\N	Lys Alana Bowmaster	Creature	C
30447	MOR	119	1	\N	\N	\N	\N	t	\N	Earthbrawn	Instant	C
30716	LRW	118	1	\N	\N	t	\N	\N	\N	Hornet Harasser	Creature	C
30719	ARB	139	1	\N	\N	t	t	t	\N	Sangrite Backlash	Enchantment	C
30511	ARB	131	1	t	t	t	\N	\N	\N	Arsenal Thresher	Artifact Creature	C
30609	CON	131	1	\N	t	t	\N	\N	\N	Vectis Agents	Artifact Creature	C
30843	CON	140	1	\N	\N	\N	\N	\N	\N	Obelisk of Alara	Artifact	R
30779	THS	111	1	\N	\N	\N	t	\N	\N	Akroan Crusader	Creature	C
30908	THS	116	1	\N	\N	\N	t	\N	\N	Coordinated Assault	Instant	U
30571	THS	103	1	\N	\N	t	\N	\N	\N	Returned Centaur	Creature	C
30363	THS	95	1	\N	\N	t	\N	\N	\N	Loathsome Catoblepas	Creature	C
30663	SOM	115	4	\N	\N	\N	\N	t	\N	Carrion Call	Instant	U
36899	NEO	243	0	\N	\N	\N	\N	\N	\N	Containment Construct	Artifact Creature	U
36901	NEO	245	0	\N	\N	\N	\N	\N	\N	Eater of Virtue	Lgd. Artifact	R
36902	NEO	246	0	\N	\N	\N	\N	\N	\N	Ecologist's Terrarium	Artifact	C
36903	NEO	247	0	\N	\N	\N	\N	\N	\N	High-Speed Hoverbike	Artifact	U
36904	NEO	248	0	\N	\N	\N	\N	\N	\N	Iron Apprentice	Artifact Creature	C
36900	NEO	244	1	\N	\N	\N	\N	\N	\N	Dramatist's Puppet	Artifact Creature	C
36898	NEO	242	1	\N	\N	\N	\N	\N	\N	Circuit Mender	Artifact Creature	U
30362	MID	96	0	\N	\N	t	\N	\N	\N	Diregraf Horde	Creature	C
30378	LRW	105	0	\N	\N	t	\N	\N	\N	Cairn Wanderer	Creature	R
30381	ARB	126	0	t	t	\N	\N	t	\N	Finest Hour	Enchantment	R
30392	EVE	119	0	\N	\N	t	\N	t	\N	Desecrator Hag	Creature	C
30395	MOR	117	0	\N	\N	\N	\N	t	\N	Cream of the Crop	Enchantment	R
30618	CHK	119	1	\N	\N	t	\N	\N	\N	Kami of Lunacy	Creature	U
30409	SOK	117	0	\N	\N	\N	t	\N	\N	Sunder from Within	Sorcery	U
30441	THS	98	0	\N	\N	t	\N	\N	\N	Nighthowler	Enchantment Creature	R
30448	ZEN	94	0	\N	\N	t	\N	\N	\N	Hagra Crocodile	Creature	C
30449	MRD	109	0	\N	\N	\N	t	\N	\N	Trash for Treasure	Sorcery	R
36905	NEO	249	0	\N	\N	\N	\N	\N	\N	Mechtitan Core	Artifact	R
30468	ISD	111	0	\N	\N	t	\N	\N	\N	Night Terrors	Sorcery	C
30487	SOK	120	0	\N	\N	\N	t	\N	\N	Yuki-Onna	Creature	U
30496	EVE	123	0	\N	\N	t	\N	t	\N	Hag Hedge-Mage	Creature	U
30503	SHM	103	0	\N	\N	\N	t	\N	\N	Pyre Charger	Creature	U
30510	GPT	123	0	\N	t	\N	t	\N	\N	Niv-Mizzet, the Firemind	Lgd. Creature	R
30773	SOK	131	2	\N	\N	\N	\N	t	\N	Ghost-Lit Nourisher	Creature	U
30522	EVE	124	0	\N	\N	t	\N	t	\N	Noxious Hatchling	Creature	U
30525	MOR	122	0	\N	\N	\N	\N	t	\N	Fertilid	Creature	C
30566	CHK	117	0	\N	\N	t	\N	\N	\N	Horobi, Death's Wail	Lgd. Creature	R
30594	GTC	117	0	\N	\N	\N	\N	t	\N	Crowned Ceratok	Creature	U
30628	RTR	109	0	\N	\N	\N	t	\N	\N	Traitorous Instinct	Sorcery	C
30631	MRD	116	0	\N	\N	\N	\N	t	\N	Copperhoof Vorrac	Creature	R
30642	ROE	113	0	\N	\N	t	\N	\N	\N	Hellcarver Demon	Creature	M
30653	RAV	112	0	\N	\N	t	\N	\N	\N	Vindictive Mob	Creature	U
30658	DGM	130	0	t	\N	t	\N	\N	\N	Profit // Loss	Instant // Instant	U
30667	ARB	137	0	\N	\N	t	t	t	\N	Giant Ambush Beetle	Creature	U
30672	GTC	120	0	\N	\N	\N	\N	t	\N	Forced Adaptation	Enchantment	C
30703	ALA	113	0	\N	\N	\N	t	\N	\N	Scourge Devil	Creature	U
30717	DKA	133	0	\N	\N	\N	\N	t	\N	Wolfbitten Captive // Krallenhorde Killer	Creature	R
30721	SOK	129	0	\N	\N	\N	\N	t	\N	Endless Swarm	Sorcery	R
30731	RAV	115	0	\N	\N	\N	t	\N	\N	Blockbuster	Enchantment	U
30732	RTR	113	0	\N	\N	\N	\N	t	\N	Aerial Predation	Instant	C
30741	SOM	118	0	\N	\N	\N	\N	t	\N	Engulfing Slagwurm	Creature	R
30746	ROE	117	0	\N	\N	t	\N	\N	\N	Mortician Beetle	Creature	R
30756	EVE	133	0	t	\N	\N	t	\N	\N	Battlegate Mimic	Creature	C
30759	MOR	131	0	\N	\N	\N	\N	t	\N	Orchard Warden	Creature	U
36906	NEO	250	0	\N	\N	\N	\N	\N	\N	Mirror Box	Artifact	R
30859	ALA	119	0	\N	\N	\N	t	\N	\N	Vicious Shadows	Enchantment	R
30873	DKA	139	0	\N	t	t	\N	\N	\N	Havengul Lich	Creature	M
30874	GPT	137	0	\N	t	\N	t	\N	\N	Wee Dragonauts	Creature	C
30875	ARB	145	0	t	t	\N	\N	t	\N	Messenger Falcons	Creature	U
30885	ALA	120	0	\N	\N	\N	t	\N	\N	Vithian Stinger	Creature	C
30890	ZEN	111	0	\N	\N	t	\N	\N	\N	Sorin Markov	Lgd. Planeswalker	M
30895	CON	142	0	\N	\N	\N	\N	\N	\N	Exotic Orchard	Land	R
36907	NEO	251	0	\N	\N	\N	\N	\N	\N	Network Terminal	Artifact	C
30932	MID	118	0	\N	\N	t	\N	\N	\N	Olivia's Midnight Ambush	Instant	C
30935	ALA	122	0	\N	\N	\N	t	\N	\N	Where Ancients Tread	Enchantment	R
36908	NEO	252	0	\N	\N	\N	\N	\N	\N	Ninja's Kunai	Artifact	C
30961	EVE	141	0	t	\N	\N	t	\N	\N	Hearthfire Hobgoblin	Creature	U
30975	GPT	141	0	t	\N	t	\N	\N	\N	Debtors' Knell	Enchantment	R
30982	MID	120	0	\N	\N	t	\N	\N	\N	Shady Traveler // Stalking Predator	Creature	C
31013	MOR	141	0	\N	\N	\N	\N	\N	\N	Cloak and Dagger	Tribal Artifact	U
36910	NEO	254	0	\N	\N	\N	\N	\N	\N	Patchwork Automaton	Artifact Creature	U
31077	BOK	151	0	t	t	t	t	t	\N	Genju of the Realm	Lgd. Enchantment	R
31100	GTC	137	0	\N	\N	\N	\N	t	\N	Tower Defense	Instant	U
31103	THS	124	0	\N	\N	\N	t	\N	\N	Hammer of Purphoros	Lgd. Enchantment Artifact	R
31107	RAV	130	0	\N	\N	\N	t	\N	\N	Hammerfist Giant	Creature	R
31108	RTR	128	0	\N	\N	\N	\N	t	\N	Horncaller's Chant	Sorcery	C
31111	MRD	135	0	\N	\N	\N	\N	t	\N	Troll Ascetic	Creature	R
31120	ROE	132	0	\N	\N	t	\N	\N	\N	Zof Shade	Creature	C
31131	RAV	131	0	\N	\N	\N	t	\N	\N	Hunted Dragon	Creature	R
31136	DGM	149	0	\N	\N	\N	\N	\N	\N	Golgari Guildgate	Land	C
31143	GPT	148	0	\N	t	\N	t	\N	\N	Petrahydrox	Creature	C
36911	NEO	255	0	\N	\N	\N	\N	\N	\N	Reckoner Bankbuster	Artifact	R
31154	ISD	138	0	\N	\N	\N	t	\N	\N	Curse of the Pierced Heart	Enchantment	C
31161	SHM	129	0	\N	\N	\N	\N	t	\N	Spawnwrithe	Creature	R
36912	NEO	256	0	\N	\N	\N	\N	\N	\N	Reito Sentinel	Artifact Creature	U
31171	GTC	140	0	\N	\N	\N	\N	t	\N	Wildwood Rebirth	Instant	C
31196	MID	129	0	\N	\N	\N	t	\N	\N	Bloodthirsty Adversary	Creature	M
31217	GTC	142	0	t	\N	\N	t	\N	\N	Assemble the Legion	Enchantment	R
31221	ALA	134	0	\N	\N	\N	\N	t	\N	Jungle Weaver	Creature	C
31227	ZEN	125	0	\N	\N	\N	t	\N	\N	Goblin Bushwhacker	Creature	C
31234	DKA	154	0	\N	\N	\N	\N	\N	\N	Wolfhunter's Quiver	Artifact	U
31262	BOK	159	0	\N	\N	\N	\N	\N	\N	Shuko	Artifact	U
31264	MID	132	0	\N	\N	\N	t	\N	\N	Burn the Accursed	Instant	C
31267	EVE	154	0	\N	t	\N	\N	t	\N	Groundling Pouncer	Creature	U
31277	LRW	141	0	\N	\N	t	\N	\N	\N	Spiderwig Boggart	Creature	C
31291	RAV	138	0	\N	\N	\N	t	\N	\N	Rain of Embers	Sorcery	C
31294	MRD	143	0	\N	\N	\N	\N	\N	\N	Altar of Shadows	Artifact	R
30382	ROE	103	1	\N	\N	t	\N	\N	\N	Corpsehatch	Sorcery	U
30552	ZEN	98	1	\N	\N	t	\N	\N	\N	Hideous End	Instant	C
31014	ZEN	116	1	\N	\N	t	\N	\N	\N	Vampire Nighthawk	Creature	U
31274	SHM	134	1	\N	\N	\N	\N	t	\N	Witherscale Wurm	Creature	R
36913	NEO	257	0	\N	\N	\N	\N	\N	\N	Runaway Trash-Bot	Artifact Creature	U
30968	SHM	121	2	\N	\N	\N	\N	t	\N	Juvenile Gloomwidow	Creature	C
30557	CON	129	1	t	\N	\N	\N	t	\N	Vagrant Plowbeasts	Creature	U
31007	THS	120	1	\N	\N	\N	t	\N	\N	Ember Swallower	Creature	R
31055	THS	122	1	\N	\N	\N	t	\N	\N	Firedrinker Satyr	Creature	R
30337	THS	94	1	\N	\N	t	\N	\N	\N	Lash of the Whip	Instant	C
30545	THS	102	1	\N	\N	t	\N	\N	\N	Rescue from the Underworld	Instant	U
30551	MOR	123	2	\N	\N	\N	\N	t	\N	Game-Trail Changeling	Creature	C
36914	NEO	258	0	\N	\N	\N	\N	\N	\N	Searchlight Companion	Artifact Creature	C
30338	ISD	106	0	\N	\N	t	\N	\N	\N	Manor Skeleton	Creature	C
30354	GPT	117	0	t	t	\N	t	t	\N	Ink-Treader Nephilim	Creature	R
30390	ISD	108	0	\N	\N	t	\N	\N	\N	Maw of the Mire	Sorcery	C
30397	MRD	107	0	\N	\N	\N	t	\N	\N	Slith Firewalker	Creature	U
30400	WWK	116	0	\N	\N	\N	\N	t	\N	Vastwood Animist	Creature	U
30813	MRD	123	2	\N	\N	\N	\N	t	\N	Journey of Discovery	Sorcery	C
30419	RAV	103	0	\N	\N	t	\N	\N	\N	Sadistic Augermage	Creature	C
30420	RTR	101	0	\N	\N	\N	t	\N	\N	Mizzium Mortars	Sorcery	R
30429	SOM	106	0	\N	\N	\N	t	\N	\N	Turn to Slag	Sorcery	C
30431	DKA	122	0	\N	\N	\N	\N	t	\N	Lambholt Elder // Silverpelt Werewolf	Creature	U
30432	GPT	120	0	\N	\N	\N	t	t	\N	Killer Instinct	Enchantment	R
30547	ALA	107	0	\N	\N	\N	t	\N	\N	Lightning Talons	Enchantment	C
30559	SOM	111	0	\N	\N	\N	\N	t	\N	Bellowing Tanglewurm	Creature	U
30574	EVE	126	0	\N	\N	t	\N	t	\N	Quillspike	Creature	U
30576	RTR	107	0	\N	\N	\N	t	\N	\N	Survey the Wreckage	Sorcery	C
30620	GTC	118	0	\N	\N	\N	\N	t	\N	Disciple of the Old Ways	Creature	C
30626	EVE	128	0	\N	\N	t	\N	t	\N	Sapling of Colfenor	Lgd. Creature	R
30633	SHM	108	0	\N	\N	\N	t	\N	\N	Wild Swing	Sorcery	U
30640	GPT	128	0	\N	\N	\N	t	t	\N	Scab-Clan Mauler	Creature	C
30655	MOR	127	0	\N	\N	\N	\N	t	\N	Hunting Triad	Tribal Sorcery	U
30676	ISD	119	0	\N	\N	t	\N	\N	\N	Tribute to Hunger	Instant	U
30687	CON	134	0	\N	\N	\N	\N	\N	\N	Armillary Sphere	Artifact	C
30690	LRW	117	0	\N	\N	t	\N	\N	\N	Hoarder's Greed	Sorcery	U
31079	THS	123	1	\N	\N	\N	t	\N	\N	Flamespeaker Adept	Creature	U
30707	MOR	129	0	\N	\N	\N	\N	t	\N	Luminescent Rain	Instant	C
30708	ZEN	104	0	\N	\N	t	\N	\N	\N	Mire Blight	Enchantment	C
30941	MRD	128	3	\N	\N	\N	\N	t	\N	Predator's Strike	Instant	C
30713	CON	135	0	\N	\N	\N	\N	\N	\N	Bone Saw	Artifact	C
30724	GTC	122	0	\N	\N	\N	\N	t	\N	Greenside Watcher	Creature	C
30751	BOK	138	0	\N	\N	\N	\N	t	\N	Patron of the Orochi	Lgd. Creature	R
30776	GTC	124	0	\N	\N	\N	\N	t	\N	Hindervines	Instant	U
30783	RAV	117	0	\N	\N	\N	t	\N	\N	Char	Instant	R
30784	RTR	115	0	\N	\N	\N	\N	t	\N	Axebane Guardian	Creature	C
30810	RTR	116	0	\N	\N	\N	\N	t	\N	Axebane Stag	Creature	C
30824	ROE	120	0	\N	\N	t	\N	\N	\N	Nirkana Revenant	Creature	M
30829	BOK	141	0	\N	\N	\N	\N	t	\N	Sakiko, Mother of Summer	Lgd. Creature	R
30830	MID	114	0	\N	\N	t	\N	\N	\N	Morkrut Behemoth	Creature	C
30881	BOK	143	0	\N	\N	\N	\N	t	\N	Scaled Hulk	Creature	C
30899	DKA	140	0	\N	\N	\N	t	t	\N	Huntmaster of the Fells // Ravager of the Fells	Creature	M
30900	GPT	138	0	t	t	t	\N	t	\N	Witch-Maw Nephilim	Creature	R
30910	ALA	121	0	\N	\N	\N	t	\N	\N	Volcanic Submersion	Sorcery	C
30915	ZEN	112	0	\N	\N	t	\N	\N	\N	Soul Stair Expedition	Enchantment	C
30920	CON	143	0	\N	\N	\N	\N	\N	\N	Reliquary Tower	Land	U
30926	ROE	124	0	\N	\N	t	\N	\N	\N	Pestilence Demon	Creature	R
30944	WWK	137	0	\N	\N	\N	\N	\N	\N	Halimar Depths	Land	C
30949	DKA	142	0	t	\N	t	\N	\N	\N	Sorin, Lord of Innistrad	Lgd. Planeswalker	M
30986	EVE	142	0	t	\N	\N	t	\N	\N	Hobgoblin Dragoon	Creature	C
30993	SHM	122	0	\N	\N	\N	\N	t	\N	Mana Reflection	Enchantment	R
30998	DKA	144	0	\N	\N	\N	\N	\N	\N	Altar of the Lost	Artifact	U
31001	SOK	140	0	\N	\N	\N	\N	t	\N	Okina Nightwatch	Creature	C
31011	RAV	126	0	\N	\N	\N	t	\N	\N	Galvanic Arc	Enchantment	C
31016	DGM	144	0	\N	\N	\N	\N	\N	\N	Selesnya Cluestone	Artifact	C
31017	SHM	123	0	\N	\N	\N	\N	t	\N	Mossbridge Troll	Creature	R
31029	BOK	149	0	\N	\N	\N	\N	t	\N	Uproot	Sorcery	C
31088	DGM	147	0	\N	\N	\N	\N	\N	\N	Boros Guildgate	Land	C
31089	SHM	126	0	\N	\N	\N	\N	t	\N	Prismatic Omen	Enchantment	R
31097	SOK	144	0	\N	\N	\N	\N	t	\N	Sakura-Tribe Scout	Creature	C
31135	MRD	136	3	\N	\N	\N	\N	t	\N	Trolls of Tel-Jilad	Creature	U
31116	SOM	133	0	\N	\N	\N	\N	t	\N	Wing Puncture	Instant	C
31132	RTR	129	0	\N	\N	\N	\N	t	\N	Korozda Monitor	Creature	C
31148	GTC	139	0	\N	\N	\N	\N	t	\N	Wasteland Viper	Creature	U
31176	EVE	150	0	\N	t	\N	\N	t	\N	Fable of Wolf and Owl	Enchantment	R
31183	DGM	151	0	\N	\N	\N	\N	\N	\N	Izzet Guildgate	Land	C
31184	SHM	130	0	\N	\N	\N	\N	t	\N	Toil to Renown	Sorcery	C
30357	SOK	115	2	\N	\N	\N	t	\N	\N	Sokenzan Spellblade	Creature	C
31232	SOM	138	0	\N	\N	\N	\N	\N	\N	Auriok Replica	Artifact Creature	C
31242	MID	131	0	\N	\N	\N	t	\N	\N	Burn Down the House	Sorcery	R
31245	EVE	153	0	\N	t	\N	\N	t	\N	Grazing Kelpie	Creature	C
31281	SOK	152	0	\N	\N	\N	\N	\N	\N	Ashes of the Fallen	Artifact	R
30799	SOK	132	2	\N	\N	\N	\N	t	\N	Haru-Onna	Creature	U
31286	MID	133	0	\N	\N	\N	t	\N	\N	Cathartic Pyre	Instant	U
31311	EVE	156	0	\N	t	\N	\N	t	\N	Murkfiend Liege	Creature	R
31322	GPT	156	0	\N	\N	\N	\N	\N	\N	Sword of the Paruns	Artifact	R
31323	ROE	141	0	\N	\N	\N	t	\N	\N	Disaster Radius	Sorcery	R
31333	ISD	146	0	\N	\N	\N	t	\N	\N	Harvest Pyre	Instant	C
31340	SOM	143	0	\N	\N	\N	\N	\N	\N	Clone Shell	Artifact Creature	U
31343	ROE	142	1	\N	\N	\N	t	\N	\N	Emrakul's Hatcher	Creature	C
31258	ROE	138	1	\N	\N	\N	t	\N	\N	Brood Birthing	Sorcery	C
30564	ROE	110	1	\N	\N	t	\N	\N	\N	Essence Feed	Sorcery	C
30656	ZEN	102	1	\N	\N	t	\N	\N	\N	Mind Sludge	Sorcery	U
30812	ZEN	108	1	\N	\N	t	\N	\N	\N	Quest for the Gravelord	Enchantment	U
30591	SOK	124	3	\N	\N	\N	\N	t	\N	Briarknit Kami	Creature	U
31053	BOK	150	2	\N	\N	\N	\N	t	\N	Vital Surge	Instant	C
36916	NEO	260	0	\N	\N	\N	\N	\N	\N	Surgehacker Mech	Artifact	R
31228	MRD	140	1	\N	\N	\N	\N	t	\N	Wurmskin Forger	Creature	C
30789	SHM	114	1	\N	\N	\N	\N	t	\N	Flourishing Defenses	Enchantment	U
30857	THS	114	1	\N	\N	\N	t	\N	\N	Borderland Minotaur	Creature	C
36917	NEO	261	0	\N	\N	\N	\N	\N	\N	Thundersteel Colossus	Artifact	C
31220	THS	129	1	\N	\N	\N	t	\N	\N	Messenger's Speed	Enchantment	C
30923	LRW	126	3	\N	\N	t	\N	\N	\N	Moonglove Winnower	Creature	C
36919	NEO	263	0	\N	\N	\N	\N	\N	\N	Walking Skyscraper	Artifact Creature	U
36920	NEO	264	0	\N	\N	\N	\N	\N	\N	Bloodfell Caves	Land	C
36918	NEO	262	1	\N	\N	\N	\N	\N	\N	Towashi Guide-Bot	Artifact Creature	U
36921	NEO	265	1	\N	\N	\N	\N	\N	\N	Blossoming Sands	Land	C
30339	ALA	99	0	\N	\N	\N	t	\N	\N	Exuberant Firestoker	Creature	U
30657	MRD	117	2	\N	\N	\N	\N	t	\N	Creeping Mold	Sorcery	U
30349	CON	121	0	t	t	t	t	t	\N	Progenitus		M
30379	DKA	120	0	\N	\N	\N	\N	t	\N	Increasing Savagery	Sorcery	R
30380	GPT	118	0	\N	t	\N	t	\N	\N	Invoke the Firemind	Sorcery	R
30393	RAV	102	0	\N	\N	t	\N	\N	\N	Roofstalker Wight	Creature	C
30394	RTR	100	0	\N	\N	\N	t	\N	\N	Minotaur Aggressor	Creature	U
30403	SOM	105	0	\N	\N	\N	t	\N	\N	Tunnel Ignus	Creature	R
30408	ROE	104	0	\N	\N	t	\N	\N	\N	Curse of Wizardry	Enchantment	U
30418	EVE	120	0	\N	\N	t	\N	t	\N	Doomgape	Creature	R
31073	SOK	143	3	\N	\N	\N	\N	t	\N	Rending Vines	Instant	C
30430	LRW	107	0	\N	\N	t	\N	\N	\N	Dread	Creature	R
30433	ARB	128	0	t	t	\N	\N	t	\N	Jenara, Asura of War	Lgd. Creature	M
30474	ZEN	95	0	\N	\N	t	\N	\N	\N	Hagra Diabolist	Creature	U
30498	RTR	104	0	\N	\N	\N	t	\N	\N	Racecourse Fury	Enchantment	U
30501	MRD	111	0	\N	\N	\N	t	\N	\N	Vulshok Berserker	Creature	C
30512	ROE	108	0	\N	\N	t	\N	\N	\N	Dread Drone	Creature	C
30529	SHM	104	0	\N	\N	\N	t	\N	\N	Rage Reflection	Enchantment	R
30536	GPT	124	0	t	\N	t	\N	\N	\N	Orzhov Pontiff	Creature	R
30539	SOK	122	0	\N	\N	\N	\N	t	\N	Ayumi, the Last Visitor	Lgd. Creature	R
30549	RAV	108	0	\N	\N	t	\N	\N	\N	Strands of Undeath	Enchantment	C
30554	DGM	126	0	\N	\N	t	\N	t	\N	Down // Dirty	Sorcery // Sorcery	U
30568	GTC	116	0	\N	\N	\N	\N	t	\N	Crocanura	Creature	C
30592	CHK	118	0	\N	\N	t	\N	\N	\N	Iname, Death Aspect	Lgd. Creature	R
30361	BOK	123	1	\N	\N	\N	\N	t	\N	Child of Thorns	Creature	C
30627	RAV	111	0	\N	\N	t	\N	\N	\N	Vigor Mortis	Sorcery	U
30632	DGM	129	0	\N	t	\N	\N	t	\N	Give // Take	Sorcery // Sorcery	U
30641	ARB	136	0	\N	t	t	t	\N	\N	Slave of Bolas	Sorcery	U
30654	RTR	110	0	\N	\N	\N	t	\N	\N	Utvara Hellkite	Creature	M
31005	BOK	148	2	\N	\N	\N	\N	t	\N	Unchecked Growth	Instant	U
30681	MOR	128	0	\N	\N	\N	\N	t	\N	Leaf-Crowned Elder	Creature	R
30682	ZEN	103	0	\N	\N	t	\N	\N	\N	Mindless Null	Creature	C
30700	MID	109	0	\N	\N	t	\N	\N	\N	Jerren, Corrupted Bishop // Ormendahl, the Corrupter	Lgd. Creature	M
30736	DGM	133	0	\N	\N	t	t	\N	\N	Toil // Trouble	Sorcery // Sorcery	U
30737	SHM	112	0	\N	\N	\N	\N	t	\N	Drove of Elves	Creature	U
30750	GTC	123	0	\N	\N	\N	\N	t	\N	Gyre Sage	Creature	R
30757	RAV	116	0	\N	\N	\N	t	\N	\N	Breath of Fury	Enchantment	R
30758	RTR	114	0	\N	\N	\N	\N	t	\N	Archweaver	Creature	U
30767	SOM	119	0	\N	\N	\N	\N	t	\N	Ezuri, Renegade Leader	Lgd. Creature	R
30772	ROE	118	0	\N	\N	t	\N	\N	\N	Nighthaze	Sorcery	C
30782	EVE	134	0	t	\N	\N	t	\N	\N	Belligerent Hatchling	Creature	U
30785	MOR	132	0	\N	\N	\N	\N	t	\N	Reach of Branches	Tribal Instant	R
30788	DGM	135	0	t	\N	\N	t	\N	\N	Wear // Tear	Instant // Instant	U
30800	CHK	126	0	\N	\N	t	\N	\N	\N	Myojin of Night's Reach	Lgd. Creature	R
30809	RAV	118	0	\N	\N	\N	t	\N	\N	Cleansing Beam	Instant	U
30822	GPT	135	0	\N	t	\N	t	\N	\N	Tibor and Lumia	Lgd. Creature	R
30834	EVE	136	0	t	\N	\N	t	\N	\N	Duergar Assailant	Creature	C
30848	GPT	136	0	\N	\N	\N	t	t	\N	Ulasht, the Hate Seed	Lgd. Creature	R
30861	RAV	120	0	\N	\N	\N	t	\N	\N	Dogpile	Instant	C
30866	DGM	138	0	\N	\N	\N	\N	\N	\N	Dimir Cluestone	Artifact	C
30871	SOM	123	0	\N	\N	\N	\N	t	\N	Liege of the Tangle	Creature	M
30877	SOK	135	0	\N	\N	\N	\N	t	\N	Kashi-Tribe Elite	Creature	U
30887	RAV	121	0	\N	\N	\N	t	\N	\N	Excruciator	Creature	R
30888	RTR	119	0	\N	\N	\N	\N	t	\N	Chorus of Might	Instant	C
30902	SOK	136	0	\N	\N	\N	\N	t	\N	Masumaro, First to Live	Lgd. Creature	R
30956	BOK	146	0	\N	\N	\N	\N	t	\N	Splinter	Sorcery	U
30959	ISD	130	0	\N	\N	\N	t	\N	\N	Blasphemous Act	Sorcery	R
30970	CON	145	0	\N	\N	\N	\N	\N	\N	Unstable Frontier	Land	U
30973	LRW	128	0	\N	\N	t	\N	\N	\N	Nameless Inversion	Tribal Instant	C
30978	CHK	133	0	\N	\N	t	\N	\N	\N	Night of Souls' Betrayal	Lgd. Enchantment	R
30851	SOK	134	3	\N	\N	\N	\N	t	\N	Kami of the Tended Garden	Creature	U
30989	MOR	140	0	\N	\N	\N	\N	t	\N	Wolf-Skull Shaman	Creature	U
31030	MID	122	0	\N	\N	t	\N	\N	\N	Slaughter Specialist	Creature	R
31046	DKA	146	0	\N	\N	\N	\N	\N	\N	Chalice of Life // Chalice of Death	Artifact // Artifact	U
31047	GPT	144	0	\N	\N	\N	t	t	\N	Gruul Guildmage	Creature	U
31058	ALA	127	0	\N	\N	\N	\N	t	\N	Cylian Elf	Creature	C
31068	SOM	131	0	\N	\N	\N	\N	t	\N	Untamed Might	Instant	C
31101	BOK	152	0	\N	\N	\N	\N	\N	\N	Baku Altar	Artifact	R
31105	ALA	129	0	\N	\N	\N	\N	t	\N	Drumhunter	Creature	U
31112	DGM	148	0	\N	\N	\N	\N	\N	\N	Dimir Guildgate	Land	C
31119	GPT	147	0	t	\N	t	\N	\N	\N	Orzhov Guildmage	Creature	U
30383	SOK	116	1	\N	\N	\N	t	\N	\N	Spiraling Embers	Sorcery	C
31128	ALA	130	1	\N	\N	\N	\N	t	\N	Elvish Visionary	Creature	C
31140	SOM	134	0	\N	\N	\N	\N	t	\N	Withstand Death	Instant	C
36922	NEO	266	0	\N	\N	\N	\N	\N	\N	Boseiju, Who Endures	Lgd. Land	R
31157	MOR	147	0	\N	\N	\N	\N	\N	\N	Murmuring Bosk	Land	R
31158	ZEN	122	0	\N	\N	\N	t	\N	\N	Electropotence	Enchantment	R
36923	NEO	267	0	\N	\N	\N	\N	\N	\N	Dismal Backwater	Land	C
30668	ROE	114	1	\N	\N	t	\N	\N	\N	Induce Despair	Instant	C
30990	ZEN	115	2	\N	\N	t	\N	\N	\N	Vampire Lacerator	Creature	C
30897	SOM	124	1	\N	\N	\N	\N	t	\N	Lifesmith	Creature	U
30815	SHM	115	1	\N	\N	\N	\N	t	\N	Foxfire Oak	Creature	C
30421	MOR	118	1	\N	\N	\N	\N	t	\N	Deglamer	Instant	C
30841	SHM	116	1	\N	\N	\N	\N	t	\N	Gleeful Sabotage	Sorcery	C
30555	SHM	105	1	\N	\N	\N	t	\N	\N	Rustrazor Butcher	Creature	C
36924	NEO	268	0	\N	\N	\N	\N	\N	\N	Eiganjo, Seat of the Empire	Lgd. Land	R
30479	CON	126	1	t	t	t	\N	\N	\N	Sludge Strider	Artifact Creature	U
30958	THS	118	1	\N	\N	\N	t	\N	\N	Demolish	Sorcery	C
30727	THS	109	1	\N	\N	t	\N	\N	\N	Viper's Kiss	Enchantment	C
30482	LRW	109	2	\N	\N	t	\N	\N	\N	Exiled Boggart	Creature	C
36926	NEO	270	0	\N	\N	\N	\N	\N	\N	Mech Hangar	Land	U
36927	NEO	271	0	\N	\N	\N	\N	\N	\N	Otawara, Soaring City	Lgd. Land	R
36928	NEO	272	0	\N	\N	\N	\N	\N	\N	Roadside Reliquary	Land	U
36929	NEO	273	0	\N	\N	\N	\N	\N	\N	Rugged Highlands	Land	C
30340	EVE	117	0	\N	\N	t	\N	t	\N	Creakwood Liege	Creature	R
30347	SHM	97	0	\N	\N	\N	t	\N	\N	Jaws of Stone	Sorcery	U
30509	DKA	125	3	\N	\N	\N	\N	t	\N	Scorned Villager // Moonscarred Werewolf	Creature	C
30360	GTC	108	0	\N	\N	\N	t	\N	\N	Tin Street Market	Enchantment	C
30368	RTR	99	0	\N	\N	\N	t	\N	\N	Lobber Crew	Creature	C
30371	MRD	106	0	\N	\N	\N	t	\N	\N	Shrapnel Blast	Instant	U
30374	WWK	115	0	\N	\N	\N	\N	t	\N	Terastodon	Creature	R
30387	BOK	124	0	\N	\N	\N	\N	t	\N	Enshrined Memories	Sorcery	R
30405	DKA	121	0	\N	\N	\N	\N	t	\N	Kessig Recluse	Creature	C
30406	GPT	119	0	\N	t	\N	t	\N	\N	Izzet Chronarch	Creature	C
30416	ISD	109	0	\N	\N	t	\N	\N	\N	Moan of the Unhallowed	Sorcery	U
30423	MRD	108	0	\N	\N	\N	t	\N	\N	Spikeshot Goblin	Creature	C
30426	WWK	117	0	\N	\N	\N	\N	t	\N	Vastwood Zendikon	Enchantment	C
30435	SOK	118	0	\N	\N	\N	t	\N	\N	Thoughts of Ruin	Sorcery	R
30464	GTC	112	0	\N	\N	\N	t	\N	\N	Wrecking Ogre	Creature	R
30488	CHK	114	0	\N	\N	t	\N	\N	\N	He Who Hungers	Lgd. Creature	R
30504	WWK	120	0	\N	t	t	\N	\N	\N	Wrexial, the Risen Deep	Lgd. Creature	M
30516	GTC	114	0	\N	\N	\N	\N	t	\N	Alpha Authority	Enchantment	U
30518	MID	102	0	\N	\N	t	\N	\N	\N	Ghoulish Procession	Enchantment	U
30521	ALA	106	0	\N	\N	\N	t	\N	\N	Jund Battlemage	Creature	U
30526	ZEN	97	0	\N	\N	t	\N	\N	\N	Heartstabber Mosquito	Creature	C
30544	MID	103	0	\N	\N	t	\N	\N	\N	Gisa, Glorious Resurrector	Lgd. Creature	R
30560	LRW	112	0	\N	\N	t	\N	\N	\N	Faerie Tauntings	Tribal Enchantment	U
30563	ARB	133	0	t	t	t	\N	\N	\N	Thopter Foundry	Artifact	U
30578	ZEN	99	0	\N	\N	t	\N	\N	\N	Kalitas, Bloodchief of Ghet	Lgd. Creature	M
30699	BOK	136	2	\N	\N	\N	\N	t	\N	Matsu-Tribe Sniper	Creature	C
30595	BOK	132	0	\N	\N	\N	\N	t	\N	Lifegift	Enchantment	R
30629	MOR	126	0	\N	\N	\N	\N	t	\N	Heritage Druid	Creature	U
30683	MRD	118	2	\N	\N	\N	\N	t	\N	Deconstruct	Sorcery	C
30643	SOK	126	0	\N	\N	\N	\N	t	\N	Descendant of Masumaro	Creature	U
30652	EVE	129	0	\N	\N	t	\N	t	\N	Stalker Hag	Creature	U
30659	SHM	109	0	\N	\N	\N	\N	t	\N	Crabapple Cohort	Creature	C
30666	GPT	129	0	\N	t	\N	t	\N	\N	Schismotivate	Instant	U
30670	CHK	121	0	\N	\N	t	\N	\N	\N	Kiku, Night's Flower	Lgd. Creature	R
30680	RTR	111	0	\N	\N	\N	t	\N	\N	Vandalblast	Sorcery	U
30728	ISD	121	0	\N	\N	t	\N	\N	\N	Unbreathing Horde	Creature	R
31015	MRD	131	3	\N	\N	\N	\N	t	\N	Tel-Jilad Archers	Creature	C
30738	WWK	129	0	\N	\N	\N	\N	\N	\N	Razor Boomerang	Artifact	U
30495	ALA	105	1	\N	\N	\N	t	\N	\N	Incurable Ogre	Creature	C
30802	GTC	125	0	\N	\N	\N	\N	t	\N	Ivy Lane Denizen	Creature	C
30804	MID	113	0	\N	\N	t	\N	\N	\N	Morbid Opportunist	Creature	U
30807	ALA	117	0	\N	\N	\N	t	\N	\N	Thunder-Thrash Elder	Creature	U
30836	RTR	117	0	\N	\N	\N	\N	t	\N	Brushstrider	Creature	U
30892	DGM	139	0	\N	\N	\N	\N	\N	\N	Golgari Cluestone	Artifact	C
30893	SHM	118	0	\N	\N	\N	\N	t	\N	Gloomwidow's Feast	Instant	C
30906	BOK	144	0	\N	\N	\N	\N	t	\N	Shizuko, Caller of Autumn	Lgd. Creature	R
30931	BOK	145	0	\N	\N	\N	\N	t	\N	Sosuke's Summons	Sorcery	U
30936	EVE	140	0	t	\N	\N	t	\N	\N	Fire at Will	Instant	C
30953	CHK	132	0	\N	\N	t	\N	\N	\N	Night Dealings	Enchantment	R
30962	RAV	124	0	\N	\N	\N	t	\N	\N	Flash Conscription	Instant	U
30967	DGM	142	0	\N	\N	\N	\N	\N	\N	Orzhov Cluestone	Artifact	C
30976	ROE	126	0	\N	\N	t	\N	\N	\N	Shrivel	Sorcery	C
31008	ISD	132	0	\N	\N	\N	t	\N	\N	Brimstone Volley	Instant	C
31012	RTR	124	0	\N	\N	\N	\N	t	\N	Gatecreeper Vine	Creature	C
31018	WWK	140	0	\N	\N	\N	\N	\N	\N	Quicksand	Land	C
31028	GTC	134	0	\N	\N	\N	\N	t	\N	Slaughterhorn	Creature	C
31054	MID	123	0	\N	\N	t	\N	\N	\N	Stromkirk Bloodthief	Creature	U
31078	MID	124	0	\N	\N	t	\N	\N	\N	Tainted Adversary	Creature	M
31083	RAV	129	0	\N	\N	\N	t	\N	\N	Greater Forgeling	Creature	U
31084	RTR	127	0	\N	\N	\N	\N	t	\N	Golgari Decoy	Creature	U
30777	BOK	139	3	\N	\N	\N	\N	t	\N	Petalmane Baku	Creature	C
31106	EVE	147	0	t	\N	\N	t	\N	\N	Spitemare	Creature	U
31109	MOR	145	0	\N	\N	\N	\N	\N	\N	Thornbite Staff	Tribal Artifact	U
31110	ZEN	120	0	\N	\N	\N	t	\N	\N	Chandra Ablaze	Lgd. Planeswalker	M
31121	SOK	145	0	\N	\N	\N	\N	t	\N	Sasaya, Orochi Ascendant // Sasaya's Essence	Lgd. Creature	R
31130	ISD	137	0	\N	\N	\N	t	\N	\N	Curse of the Nightly Hunt	Enchantment	U
31137	SHM	128	0	\N	\N	\N	\N	t	\N	Roughshod Mentor	Creature	U
31142	DKA	150	0	\N	\N	\N	\N	\N	\N	Heavy Mattock	Artifact	C
31145	SOK	146	0	\N	\N	\N	\N	t	\N	Seed the Land	Enchantment	R
31155	RAV	132	0	\N	\N	\N	t	\N	\N	Incite Hysteria	Sorcery	C
31160	DGM	150	0	\N	\N	\N	\N	\N	\N	Gruul Guildgate	Land	C
31163	SOM	135	0	t	t	\N	\N	\N	\N	Venser, the Sojourner	Lgd. Planeswalker	M
30617	SOK	125	1	\N	\N	\N	\N	t	\N	Dense Canopy	Enchantment	U
31206	DGM	152	0	\N	\N	\N	\N	\N	\N	Maze's End	Land	M
31207	SHM	131	0	\N	\N	\N	\N	t	\N	Tower Above	Sorcery	U
31211	DKA	153	0	\N	\N	\N	\N	\N	\N	Warden of the Wall	Artifact	U
31212	GPT	151	0	\N	\N	\N	\N	\N	\N	Gruul War Plow	Artifact	R
30839	MRD	124	1	\N	\N	\N	\N	t	\N	Living Hive	Creature	R
30855	BOK	142	1	\N	\N	\N	\N	t	\N	Sakura-Tribe Springcaller	Creature	C
30981	BOK	147	1	\N	\N	\N	\N	t	\N	Traproot Kami	Creature	C
30585	SOM	112	1	\N	\N	\N	\N	t	\N	Blight Mamba	Creature	C
30817	CON	139	3	\N	\N	\N	\N	\N	\N	Manaforce Mace	Artifact	U
31197	THS	128	1	\N	\N	\N	t	\N	\N	Magma Jet	Instant	U
30883	THS	115	1	\N	\N	\N	t	\N	\N	Boulderfall	Instant	C
30467	THS	99	1	\N	\N	t	\N	\N	\N	Ordeal of Erebos	Enchantment	U
30820	LRW	122	1	\N	\N	t	\N	\N	\N	Lys Alana Scarblade	Creature	U
30669	SOK	127	2	\N	\N	\N	\N	t	\N	Dosan's Oldest Chant	Sorcery	C
30573	ALA	108	1	\N	\N	\N	t	\N	\N	Magma Spray	Instant	C
36930	NEO	274	0	\N	\N	\N	\N	\N	\N	Scoured Barrens	Land	C
36932	NEO	276	0	\N	\N	\N	\N	\N	\N	Sokenzan, Crucible of Defiance	Lgd. Land	R
36933	NEO	277	0	\N	\N	\N	\N	\N	\N	Swiftwater Cliffs	Land	C
36934	NEO	278	0	\N	\N	\N	\N	\N	\N	Takenuma, Abandoned Mire	Lgd. Land	R
36935	NEO	279	0	\N	\N	\N	\N	\N	\N	Thornwood Falls	Land	C
30341	RAV	100	0	\N	\N	t	\N	\N	\N	Nightmare Void	Sorcery	U
30346	DGM	118	0	\N	t	t	\N	\N	\N	Woodlot Crawler	Creature	U
30351	SOM	103	0	\N	\N	\N	t	\N	\N	Shatter	Instant	C
30806	ISD	124	1	\N	\N	t	\N	\N	\N	Victim of Night	Instant	C
30391	ALA	101	0	\N	\N	\N	t	\N	\N	Goblin Assault	Enchantment	R
30396	ZEN	92	0	\N	\N	t	\N	\N	\N	Guul Draz Specter	Creature	R
30410	CHK	111	0	\N	\N	t	\N	\N	\N	Distress	Sorcery	C
30440	MID	99	0	\N	\N	t	\N	\N	\N	Eaten Alive	Sorcery	C
30453	CON	125	0	t	t	\N	\N	t	\N	Skyward Eye Prophets	Creature	U
30457	DKA	123	0	\N	\N	\N	\N	t	\N	Lost in the Woods	Enchantment	R
30458	GPT	121	0	\N	t	\N	t	\N	\N	Leap of Flame	Instant	C
31146	CHK	140	1	\N	\N	t	\N	\N	\N	Rend Flesh	Instant	C
30481	SOM	108	0	\N	\N	\N	\N	t	\N	Acid Web Spider	Creature	U
30499	MOR	121	0	\N	\N	\N	\N	t	\N	Everbark Shaman	Creature	C
30500	ZEN	96	0	\N	\N	t	\N	\N	\N	Halo Hunter	Creature	R
30528	DGM	125	0	t	t	\N	t	\N	\N	Catch // Release	Sorcery // Sorcery	R
30542	GTC	115	0	\N	\N	\N	\N	t	\N	Burst of Strength	Instant	C
30569	BOK	131	0	\N	\N	\N	\N	t	\N	Kodama of the Center Tree	Lgd. Creature	R
30582	WWK	123	0	\N	\N	\N	\N	\N	\N	Everflowing Chalice	Artifact	U
30587	DKA	128	0	\N	\N	\N	\N	t	\N	Tracker's Instincts	Sorcery	U
30615	ARB	135	0	\N	t	t	t	\N	\N	Sewn-Eye Drake	Creature	C
31122	CHK	139	1	\N	\N	t	\N	\N	\N	Ragged Veins	Enchantment	C
30648	MID	107	0	\N	\N	t	\N	\N	\N	Infernal Grasp	Instant	U
30686	WWK	127	0	\N	\N	\N	\N	\N	\N	Lodestone Golem	Artifact Creature	R
30691	DKA	132	0	\N	\N	\N	\N	t	\N	Wild Hunger	Instant	C
30696	CHK	122	0	\N	\N	t	\N	\N	\N	Kokusho, the Evening Star	Lgd. Creature	R
30706	RTR	112	0	\N	\N	\N	t	\N	\N	Viashino Racketeer	Creature	C
30710	DGM	132	0	t	\N	t	\N	t	\N	Ready // Willing	Instant // Instant	R
30715	SOM	117	0	\N	\N	\N	\N	t	\N	Cystbearer	Creature	C
30722	CHK	123	0	\N	\N	t	\N	\N	\N	Kuro, Pitlord	Lgd. Creature	R
30762	DGM	134	0	\N	t	\N	t	\N	\N	Turn // Burn	Instant // Instant	U
30927	SOK	137	1	\N	\N	\N	\N	t	\N	Matsu-Tribe Birdstalker	Creature	C
30803	BOK	140	0	\N	\N	\N	\N	t	\N	Roar of Jukai	Instant	C
30647	BOK	134	1	\N	\N	\N	\N	t	\N	Loam Dweller	Creature	U
30819	SOM	121	0	\N	\N	\N	\N	t	\N	Ezuri's Brigade	Creature	R
30837	MOR	134	0	\N	\N	\N	\N	t	\N	Reins of the Vinesteed	Enchantment	C
30838	ZEN	109	0	\N	\N	t	\N	\N	\N	Ravenous Trap	Instant	U
30856	MID	115	0	\N	\N	t	\N	\N	\N	Necrosynthesis	Enchantment	U
30882	MID	116	0	\N	\N	t	\N	\N	\N	No Way Out	Sorcery	C
30898	LRW	125	0	\N	\N	t	\N	\N	\N	Marsh Flitter	Creature	U
30513	SOK	121	1	\N	\N	\N	\N	t	\N	Arashi, the Sky Asunder	Lgd. Creature	R
30911	EVE	139	0	t	\N	\N	t	\N	\N	Figure of Destiny	Creature	R
30914	MOR	137	0	\N	\N	\N	\N	t	\N	Unstoppable Ash	Creature	R
31303	SOK	153	1	\N	\N	\N	\N	\N	\N	Blood Clock	Artifact	R
30940	ZEN	113	0	\N	\N	t	\N	\N	\N	Surrakar Marauder	Creature	C
30987	RAV	125	0	\N	\N	\N	t	\N	\N	Frenzied Goblin	Creature	U
30992	DGM	143	0	\N	\N	\N	\N	\N	\N	Rakdos Cluestone	Artifact	C
30999	GPT	142	0	\N	t	\N	t	\N	\N	Djinn Illuminatus	Creature	R
31000	ROE	127	0	\N	\N	t	\N	\N	\N	Skeletal Wurm	Creature	U
31010	EVE	143	0	t	\N	\N	t	\N	\N	Moonhold	Instant	U
31020	SOM	129	0	\N	\N	\N	\N	t	\N	Tel-Jilad Defiance	Instant	C
31026	CHK	135	0	\N	\N	t	\N	\N	\N	Oni Possession	Enchantment	U
31056	ISD	134	0	\N	\N	\N	t	\N	\N	Charmbreaker Devils	Creature	R
31076	GTC	136	0	\N	\N	\N	\N	t	\N	Sylvan Primordial	Creature	R
31080	ISD	135	0	\N	\N	\N	t	\N	\N	Crossway Vampire	Creature	C
31087	MRD	134	0	\N	\N	\N	\N	t	\N	Tooth and Nail	Sorcery	R
31090	WWK	143	0	\N	\N	\N	\N	\N	\N	Smoldering Spires	Land	C
31092	SOM	132	0	\N	\N	\N	\N	t	\N	Viridian Revel	Enchantment	U
31094	DKA	148	0	\N	\N	\N	\N	\N	\N	Executioner's Hood	Artifact	C
31095	GPT	146	0	t	\N	t	\N	\N	\N	Mourning Thrull	Creature	C
31129	EVE	148	0	t	\N	\N	t	\N	\N	Waves of Aggression	Sorcery	R
31138	WWK	145	0	\N	\N	\N	\N	\N	\N	Tectonic Edge	Land	U
31141	LRW	135	0	\N	\N	t	\N	\N	\N	Profane Command	Sorcery	R
31156	RTR	130	0	\N	\N	\N	\N	t	\N	Mana Bloom	Enchantment	R
31159	MRD	137	0	\N	\N	\N	\N	t	\N	Turn to Dust	Instant	C
31169	CHK	141	0	\N	\N	t	\N	\N	\N	Rend Spirit	Instant	C
31198	ALA	133	0	\N	\N	\N	\N	t	\N	Godtoucher	Creature	C
30677	ALA	112	1	\N	\N	\N	t	\N	\N	Rockslide Elemental	Creature	U
31215	CHK	143	0	\N	\N	t	\N	\N	\N	Seizan, Perverter of Truth	Lgd. Creature	R
31237	SOK	150	0	\N	\N	\N	\N	t	\N	Stampeding Serow	Creature	U
31249	ZEN	126	0	\N	\N	\N	t	\N	\N	Goblin Guide	Creature	R
31250	MRD	141	0	\N	\N	\N	\N	\N	\N	Aether Spellbomb	Artifact	C
31257	GPT	153	0	\N	\N	\N	\N	\N	\N	Mizzium Transreliquat	Artifact	R
31282	CHK	146	0	\N	\N	t	\N	\N	\N	Swallowing Plague	Sorcery	U
31289	EVE	155	0	\N	t	\N	\N	t	\N	Invert the Skies	Instant	U
31296	SHM	135	0	\N	\N	\N	\N	t	\N	Woodfall Primus	Creature	R
30637	SOM	114	1	\N	\N	\N	\N	t	\N	Carapace Forger	Creature	C
30763	SHM	113	1	\N	\N	\N	\N	t	\N	Farhaven Elf	Creature	C
30473	MOR	120	1	\N	\N	\N	\N	t	\N	Elvish Warrior	Creature	C
31299	LRW	142	1	\N	\N	t	\N	\N	\N	Squeaking Pie Sneak	Creature	U
30948	LRW	127	1	\N	\N	t	\N	\N	\N	Mournwhelk	Creature	C
30401	CON	123	1	\N	\N	t	t	t	\N	Scarland Thrinax	Creature	U
30945	CON	144	1	\N	\N	\N	\N	\N	\N	Rupture Spire	Land	C
30805	THS	112	1	\N	\N	\N	t	\N	\N	Anger of the Gods	Sorcery	R
30597	THS	104	1	\N	\N	t	\N	\N	\N	Returned Phalanx	Creature	C
30753	THS	110	1	\N	\N	t	\N	\N	\N	Whip of Erebos	Lgd. Enchantment Artifact	R
31164	LRW	136	1	\N	\N	t	\N	\N	\N	Prowess of the Fair	Tribal Enchantment	U
36939	NEO	283	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
36940	NEO	284	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
36941	NEO	285	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
36943	NEO	287	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
36944	NEO	288	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
36937	NEO	281	1	\N	\N	\N	\N	\N	\N	Uncharted Haven	Land	C
36938	NEO	282	1	\N	\N	\N	\N	\N	\N	Wind-Scarred Crag	Land	C
36936	NEO	280	1	\N	\N	\N	\N	\N	\N	Tranquil Cove	Land	C
31165	DKA	151	0	\N	\N	\N	\N	\N	\N	Helvault	Lgd. Artifact	M
31168	SOK	147	0	\N	\N	\N	\N	t	\N	Seek the Horizon	Sorcery	U
31178	RAV	133	0	\N	\N	\N	t	\N	\N	Indentured Oaf	Creature	U
31179	RTR	131	0	\N	\N	\N	\N	t	\N	Oak Street Innkeeper	Creature	U
31182	MRD	138	0	\N	\N	\N	\N	t	\N	Viridian Joiner	Creature	C
31205	MRD	139	2	\N	\N	\N	\N	t	\N	Viridian Shaman	Creature	U
33413	STX	19	1	t	\N	\N	\N	\N	\N	Guiding Voice	Sorcery	C
31246	ISD	142	0	\N	\N	\N	t	\N	\N	Feral Ridgewolf	Creature	C
31192	CHK	142	1	\N	\N	t	\N	\N	\N	Scuttling Death	Creature	C
31254	SOM	139	0	\N	\N	\N	\N	\N	\N	Barbed Battlegear	Artifact	U
31314	RTR	137	0	\N	\N	\N	\N	t	\N	Towering Indrik	Creature	C
31321	DKA	158	0	\N	\N	\N	\N	\N	\N	Vault of the Archangel	Land	R
31324	SOK	154	0	\N	\N	\N	\N	\N	\N	Ebony Owl Netsuke	Artifact	U
31334	RAV	140	0	\N	\N	\N	t	\N	\N	Sabertooth Alley Cat	Creature	C
31337	MRD	145	0	\N	\N	\N	\N	\N	\N	Blinkmoth Urn	Artifact	R
31338	SHM	137	0	t	t	\N	\N	\N	\N	Augury Adept	Creature	R
31345	CHK	149	0	\N	\N	t	\N	\N	\N	Waking Nightmare	Sorcery	C
31371	EVE	159	0	\N	t	\N	\N	t	\N	Shorecrasher Mimic	Creature	C
31393	RAV	143	0	\N	\N	\N	t	\N	\N	Smash	Instant	C
31409	ALA	143	0	\N	\N	\N	\N	t	\N	Ooze Garden	Enchantment	R
31421	SOK	159	0	\N	\N	\N	\N	\N	\N	Scroll of Origins	Artifact	R
31424	MID	140	0	\N	\N	\N	t	\N	\N	Festival Crasher	Creature	C
31447	RAV	146	0	\N	\N	\N	t	\N	\N	Surge of Zeal	Instant	C
31450	MRD	151	0	\N	\N	\N	\N	\N	\N	Chromatic Sphere	Artifact	C
31454	LRW	150	0	\N	\N	\N	t	\N	\N	Ashling's Prerogative	Enchantment	R
31455	GPT	163	0	\N	\N	\N	\N	\N	\N	Skarrg, the Rage Pits	Land	U
31465	RAV	147	0	\N	\N	\N	t	\N	\N	Torpid Moloch	Creature	C
31466	RTR	145	0	t	t	\N	\N	\N	\N	Azorius Charm	Instant	U
31471	SOM	150	0	\N	\N	\N	\N	\N	\N	Darksteel Juggernaut	Artifact Creature	R
31521	MRD	155	0	\N	\N	\N	\N	\N	\N	Clockwork Dragon	Artifact Creature	R
31531	EVE	168	0	\N	\N	\N	\N	\N	\N	Fang Skulkin	Artifact Creature	C
31546	EVE	169	0	\N	\N	\N	\N	\N	\N	Hoof Skulkin	Artifact Creature	C
31582	MRD	159	0	\N	\N	\N	\N	\N	\N	Crystal Shard	Artifact	U
31585	LRW	158	0	\N	\N	\N	t	\N	\N	Ceaseless Searblades	Creature	U
31586	ROE	156	0	\N	\N	\N	t	\N	\N	Lord of Shatterskull Pass	Creature	R
31591	EVE	172	0	\N	\N	\N	\N	\N	\N	Scarecrone	Artifact Creature	R
31624	RAV	157	0	\N	\N	\N	\N	t	\N	Civic Wayfinder	Creature	C
31627	MRD	162	0	\N	\N	\N	\N	\N	\N	Dead-Iron Sledge	Artifact	U
31630	LRW	161	0	\N	\N	\N	t	\N	\N	Consuming Bonfire	Tribal Sorcery	C
27738	SOM	7	0	t	\N	\N	\N	\N	\N	Fulgent Distraction	Instant	C
31474	ROE	149	1	\N	\N	\N	t	\N	\N	Grotag Siege-Runner	Creature	C
31315	ZEN	129	1	\N	\N	\N	t	\N	\N	Goblin War Paint	Enchantment	C
31631	ROE	159	1	\N	\N	\N	t	\N	\N	Ogre Sentry	Creature	C
31402	ROE	145	1	\N	\N	\N	t	\N	\N	Flame Slash	Sorcery	C
31204	ZEN	124	1	\N	\N	\N	t	\N	\N	Geyser Glider	Creature	U
29282	WWK	73	1	\N	\N	\N	t	\N	\N	Bull Rush	Instant	C
29412	WWK	78	1	\N	\N	\N	t	\N	\N	Crusher Zendikon	Enchantment	C
33411	STX	17	0	t	\N	\N	\N	\N	\N	Elite Spellbinder	Creature	R
33414	STX	20	0	t	\N	\N	\N	\N	\N	Leonin Lightscribe	Creature	R
33415	STX	21	0	t	\N	\N	\N	\N	\N	Mavinda, Students' Advocate	Lgd. Creature	M
33416	STX	22	0	t	\N	\N	\N	\N	\N	Pilgrim of the Ages	Creature	C
33418	STX	24	0	t	\N	\N	\N	\N	\N	Professor of Symbology	Creature	U
33419	STX	25	0	t	\N	\N	\N	\N	\N	Reduce to Memory	Sorcery	U
33420	STX	26	0	t	\N	\N	\N	\N	\N	Secret Rendezvous	Sorcery	U
33421	STX	27	0	t	\N	\N	\N	\N	\N	Semester's End	Instant	R
33422	STX	28	0	t	\N	\N	\N	\N	\N	Show of Confidence	Instant	U
33423	STX	29	0	t	\N	\N	\N	\N	\N	Sparring Regimen	Enchantment	R
33424	STX	30	0	t	\N	\N	\N	\N	\N	Star Pupil	Creature	C
33425	STX	31	0	t	\N	\N	\N	\N	\N	Stonebinder's Familiar	Creature	U
33427	STX	33	0	t	\N	\N	\N	\N	\N	Strict Proctor	Creature	R
33428	STX	34	0	t	\N	\N	\N	\N	\N	Study Break	Instant	C
33430	STX	36	0	\N	t	\N	\N	\N	\N	Arcane Subtraction	Instant	C
33431	STX	37	0	\N	t	\N	\N	\N	\N	Archmage Emeritus	Creature	R
33434	STX	40	0	\N	t	\N	\N	\N	\N	Curate	Instant	C
33435	STX	41	0	\N	t	\N	\N	\N	\N	Divide by Zero	Instant	U
33436	STX	42	0	\N	t	\N	\N	\N	\N	Dream Strix	Creature	R
33438	STX	44	0	\N	t	\N	\N	\N	\N	Ingenious Mastery	Sorcery	R
33439	STX	45	0	\N	t	\N	\N	\N	\N	Kelpie Guide	Creature	U
33440	STX	46	0	\N	t	\N	\N	\N	\N	Mentor's Guidance	Sorcery	U
33441	STX	47	0	\N	t	\N	\N	\N	\N	Mercurial Transformation	Sorcery	U
33442	STX	48	0	\N	t	\N	\N	\N	\N	Multiple Choice	Sorcery	R
33443	STX	49	0	\N	t	\N	\N	\N	\N	Pop Quiz	Instant	C
33445	STX	51	0	\N	t	\N	\N	\N	\N	Resculpt	Instant	C
33433	STX	39	1	\N	t	\N	\N	\N	\N	Bury in Books	Instant	C
33429	STX	35	1	t	\N	\N	\N	\N	\N	Thunderous Orator	Creature	U
33410	STX	12	2	t	\N	\N	\N	\N	\N	Defend the Campus	Instant	C
33444	STX	50	2	\N	t	\N	\N	\N	\N	Reject	Instant	C
36945	NEO	289	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33426	STX	32	1	t	\N	\N	\N	\N	\N	Stonerise Spirit	Creature	C
33437	STX	43	1	\N	t	\N	\N	\N	\N	Frost Trickster	Creature	C
33417	STX	23	2	t	\N	\N	\N	\N	\N	Pillardrop Rescuer	Creature	C
31520	ZEN	140	1	\N	\N	\N	t	\N	\N	Obsidian Fireheart	Creature	M
31524	LRW	154	1	\N	\N	\N	t	\N	\N	Boggart Forager	Creature	C
31575	THS	148	1	\N	\N	\N	\N	t	\N	Agent of Horizons	Creature	C
31560	THS	147	1	\N	\N	\N	t	\N	\N	Wild Celebrants	Creature	C
31583	SHM	151	1	t	t	\N	\N	\N	\N	Swans of Bryn Argoll	Creature	R
31385	CHK	151	2	\N	\N	\N	t	\N	\N	Akki Avalanchers	Creature	C
33432	STX	38	2	\N	t	\N	\N	\N	\N	Burrog Befuddler	Creature	C
33412	STX	18	2	t	\N	\N	\N	\N	\N	Expel	Instant	C
36946	NEO	290	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
36947	NEO	291	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
36948	NEO	292	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
36949	NEO	293	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
36950	NEO	294	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
36951	NEO	295	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
36952	NEO	296	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
31219	MID	130	0	\N	\N	\N	t	\N	\N	Brimstone Vandal	Creature	C
31223	ISD	141	0	\N	\N	\N	t	\N	\N	Falkenrath Marauders	Creature	R
31226	MOR	150	0	\N	\N	\N	\N	\N	\N	Rustic Clachan	Land	R
31235	GPT	152	0	\N	\N	\N	\N	\N	\N	Izzet Signet	Artifact	C
31261	GTC	144	0	t	\N	\N	t	\N	\N	Aurelia's Fury	Instant	M
31268	ISD	143	0	\N	\N	\N	t	\N	\N	Furor of the Bitten	Enchantment	C
31273	DGM	155	0	\N	\N	\N	\N	\N	\N	Selesnya Guildgate	Land	C
31284	BOK	160	0	\N	\N	\N	\N	\N	\N	Shuriken	Artifact	U
31310	ALA	138	0	\N	\N	\N	\N	t	\N	Manaplasm	Creature	R
31327	BOK	162	0	\N	\N	\N	\N	\N	\N	That Which Was Taken	Lgd. Artifact	R
31350	THS	135	0	\N	\N	\N	t	\N	\N	Purphoros, God of the Forge	Lgd. Enchantment Creature	M
31366	GTC	149	0	\N	t	t	\N	\N	\N	Call of the Nightwing	Sorcery	U
31374	RAV	142	0	\N	\N	\N	t	\N	\N	Sell-Sword Brute	Creature	C
31375	RTR	140	0	\N	\N	\N	\N	t	\N	Worldspine Wurm	Creature	M
31384	SOK	157	0	\N	\N	\N	\N	\N	\N	O-Naginata	Artifact	U
31394	RTR	141	0	\N	\N	t	\N	t	\N	Abrupt Decay	Instant	R
31401	GPT	160	0	\N	\N	\N	\N	\N	\N	Nivix, Aerie of the Firemind	Land	U
31410	ISD	150	0	\N	\N	\N	t	\N	\N	Into the Maw of Hell	Sorcery	U
31420	ROE	146	0	\N	\N	\N	t	\N	\N	Forked Bolt	Sorcery	U
31446	ISD	152	0	\N	\N	\N	t	\N	\N	Kruin Outlaw // Terror of Kruin Pass	Creature	R
31278	DKA	156	1	\N	\N	\N	\N	\N	\N	Grim Backwoods	Land	R
31453	SOM	149	0	\N	\N	\N	\N	\N	\N	Darksteel Axe	Artifact	U
31456	ROE	148	0	\N	\N	\N	t	\N	\N	Goblin Tunneler	Creature	C
31640	RTR	156	0	t	t	\N	\N	\N	\N	Dramatic Rescue	Instant	C
31648	GTC	166	0	\N	\N	\N	t	t	\N	Frenzied Tilling	Sorcery	U
31667	ALA	159	0	t	t	t	\N	\N	\N	Brilliant Ultimatum	Sorcery	R
31672	MRD	165	0	\N	\N	\N	\N	\N	\N	Duplicant	Artifact Creature	R
31673	SHM	157	0	t	t	\N	\N	\N	\N	Zealous Guardian	Creature	C
31678	GTC	168	0	\N	\N	\N	t	t	\N	Ground Assault	Sorcery	U
31683	ISD	167	0	\N	\N	\N	t	\N	\N	Vampiric Fury	Instant	C
31693	GTC	169	0	\N	\N	\N	t	t	\N	Gruul Charm	Instant	U
31698	ISD	168	0	\N	\N	\N	t	\N	\N	Village Ironsmith // Ironfang	Creature	C
31708	GTC	170	0	\N	\N	\N	t	t	\N	Gruul Ragebeast	Creature	R
31709	MID	158	0	\N	\N	\N	t	\N	\N	Seize the Storm	Sorcery	U
31743	RTR	163	0	\N	t	\N	t	\N	\N	Goblin Electromancer	Creature	C
31744	ZEN	155	0	\N	\N	\N	t	\N	\N	Zektar Shrine Expedition	Enchantment	C
31751	GTC	173	0	t	\N	t	\N	\N	\N	Kingpin's Pet	Creature	C
31768	ALA	166	0	t	t	\N	\N	t	\N	Empyrial Archangel	Creature	M
31773	MRD	172	0	\N	\N	\N	\N	\N	\N	Frogmite	Artifact Creature	C
31779	GTC	175	0	t	\N	\N	t	\N	\N	Martial Glory	Instant	C
31784	RAV	168	0	\N	\N	\N	\N	t	\N	Goliath Spider	Creature	U
31798	RAV	169	0	\N	\N	\N	\N	t	\N	Greater Mossdog	Creature	C
31805	ROE	171	0	\N	\N	\N	t	\N	\N	Vent Sentinel	Creature	C
31825	ISD	177	0	\N	\N	\N	\N	t	\N	Elder of Laurels	Creature	R
31830	SHM	168	0	\N	t	t	\N	\N	\N	Inkfathom Witch	Creature	U
31831	SOM	174	0	\N	\N	\N	\N	\N	\N	Memnite	Artifact Creature	U
31834	CHK	180	0	\N	\N	\N	t	\N	\N	Mindblaze	Sorcery	R
31854	RAV	173	0	\N	\N	\N	\N	t	\N	Moldervine Cloak	Enchantment	U
31857	MRD	178	0	\N	\N	\N	\N	\N	\N	Goblin Replica	Artifact Creature	C
31860	LRW	177	0	\N	\N	\N	t	\N	\N	Hurly-Burly	Sorcery	C
32021	ISD	191	3	\N	\N	\N	\N	t	\N	Lumberknot	Creature	U
31939	RTR	177	0	\N	\N	t	\N	t	\N	Lotleth Troll	Creature	R
31940	ZEN	169	0	\N	\N	\N	\N	t	\N	Mold Shambler	Creature	C
31947	GTC	187	0	\N	\N	\N	t	t	\N	Primal Visitation	Enchantment	C
31964	ALA	180	0	t	\N	\N	t	t	\N	Naya Charm	Instant	U
31969	MRD	186	0	\N	\N	\N	\N	\N	\N	Icy Manipulator	Artifact	U
31975	GTC	189	0	\N	t	t	\N	\N	\N	Psychic Strike	Instant	C
31978	ALA	181	0	\N	\N	t	\N	t	\N	Necrogenesis	Enchantment	U
31980	RAV	182	0	\N	\N	\N	\N	t	\N	Scion of the Wild	Creature	R
31981	RTR	180	0	\N	t	\N	t	\N	\N	Mercurial Chemister	Creature	R
31995	RTR	181	0	t	t	\N	\N	\N	\N	New Prahv Guildmage	Creature	U
32001	ROE	185	0	\N	\N	\N	\N	t	\N	Gravity Well	Enchantment	U
32006	ALA	183	0	t	t	t	\N	\N	\N	Punish Ignorance	Instant	R
32027	SOM	188	0	\N	\N	\N	\N	\N	\N	Nim Deathmantle	Artifact	R
32032	MID	181	0	\N	\N	\N	\N	t	\N	Deathbonnet Sprout // Deathbonnet Hulk	Creature	U
32060	MID	183	0	\N	\N	\N	\N	t	\N	Dryad's Revival	Sorcery	U
32064	RAV	188	0	\N	\N	\N	\N	t	\N	Ursapine	Creature	R
32065	RTR	186	0	\N	\N	t	t	\N	\N	Rakdos Ringleader	Creature	U
32070	LRW	192	0	\N	\N	\N	t	\N	\N	Sunrise Sovereign	Creature	R
32071	ROE	190	0	\N	\N	\N	\N	t	\N	Joraga Treespeaker	Creature	U
32080	ZEN	179	0	\N	\N	\N	\N	t	\N	Relic Crush	Instant	C
32084	LRW	193	0	\N	\N	\N	t	\N	\N	Tar Pitcher	Creature	U
32095	MRD	195	0	\N	\N	\N	\N	\N	\N	Leveler	Artifact Creature	R
32118	ALA	191	0	\N	\N	\N	t	t	\N	Sarkhan Vol	Lgd. Planeswalker	M
32130	MID	188	0	\N	\N	\N	\N	t	\N	Howl of the Hunt	Enchantment	C
32146	ALA	193	0	\N	t	t	t	\N	\N	Sedris, the Traitor King	Lgd. Creature	M
32151	MRD	199	0	\N	\N	\N	\N	\N	\N	Lightning Greaves	Artifact	U
32094	ZEN	180	1	\N	\N	\N	\N	t	\N	River Boa	Creature	U
31987	ROE	184	1	\N	\N	\N	\N	t	\N	Gigantomancer	Creature	R
31833	ROE	173	1	\N	\N	\N	t	\N	\N	Wrap in Flames	Sorcery	C
31641	ZEN	148	1	\N	\N	\N	t	\N	\N	Shatterskull Giant	Creature	C
32026	SHM	182	1	\N	\N	t	t	\N	\N	Cultbrand Cinder	Creature	C
31774	SHM	164	1	\N	t	t	\N	\N	\N	Gravelgill Axeshark	Creature	C
31970	SHM	178	3	\N	t	t	\N	\N	\N	Wanderbrine Rootcutters	Creature	C
31451	SHM	143	1	t	t	\N	\N	\N	\N	Mirrorweave	Instant	R
32098	LRW	194	1	\N	\N	\N	t	\N	\N	Tarfire	Tribal Instant	C
31986	LRW	186	1	\N	\N	\N	t	\N	\N	Needle Drop	Instant	C
31425	THS	139	1	\N	\N	\N	t	\N	\N	Satyr Rambler	Creature	C
31287	THS	132	1	\N	\N	\N	t	\N	\N	Peak Eruption	Sorcery	U
31792	CHK	177	1	\N	\N	\N	t	\N	\N	Kumano's Pupils	Creature	U
32104	ALA	190	1	\N	\N	\N	t	t	\N	Sangrite Surge	Sorcery	U
32048	ALA	186	1	t	\N	\N	t	t	\N	Rakeclaw Gargantuan	Creature	C
31810	ALA	169	1	\N	\N	t	t	\N	\N	Goblin Deathraiders	Creature	C
36953	NEO	297	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
36954	NEO	298	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
31304	CHK	147	1	\N	\N	t	\N	\N	\N	Thief of Hope	Creature	U
31769	ISD	173	2	\N	\N	\N	\N	t	\N	Caravan Vigil	Sorcery	C
31276	SOM	140	0	\N	\N	\N	\N	\N	\N	Bladed Pinions	Artifact	C
31292	RTR	136	0	\N	\N	\N	\N	t	\N	Stonefare Crocodile	Creature	C
31302	ROE	140	0	\N	\N	\N	t	\N	\N	Devastating Summons	Sorcery	R
31305	GTC	146	0	\N	t	\N	\N	t	\N	Biovisionary	Creature	R
31332	ALA	139	0	\N	\N	\N	\N	t	\N	Mosstodon	Creature	C
31341	LRW	144	0	\N	\N	t	\N	\N	\N	Thorntooth Witch	Creature	U
31342	GPT	157	0	\N	\N	\N	\N	\N	\N	Godless Shrine	Land	R
31352	ALA	140	0	\N	\N	\N	\N	t	\N	Mycoloth	Creature	R
31357	MRD	146	0	\N	\N	\N	\N	\N	\N	Bonesplitter	Artifact	C
31358	SHM	138	0	t	t	\N	\N	\N	\N	Barrenton Cragtreads	Creature	C
31413	ZEN	134	0	\N	\N	\N	t	\N	\N	Kazuul Warlord	Creature	R
31853	ISD	179	2	\N	\N	\N	\N	t	\N	Festerhide Boar	Creature	C
31567	MRD	158	3	\N	\N	\N	\N	\N	\N	Copper Myr	Artifact Creature	C
31427	ALA	144	0	\N	\N	\N	\N	t	\N	Resounding Roar	Instant	C
31365	CHK	150	1	\N	\N	t	\N	\N	\N	Wicked Akuba	Creature	C
31435	SOM	148	0	\N	\N	\N	\N	\N	\N	Culling Dais	Artifact	U
31460	MID	142	0	\N	\N	\N	t	\N	\N	Geistflame Reservoir	Artifact	R
31478	MID	143	0	\N	\N	\N	t	\N	\N	Harvesttide Infiltrator // Harvesttide Assailant	Creature	C
31496	MID	144	0	\N	\N	\N	t	\N	\N	Immolation	Enchantment	C
31499	ALA	148	0	\N	\N	\N	\N	t	\N	Skullmulcher	Creature	R
31512	GTC	157	0	\N	t	\N	\N	t	\N	Drakewing Krasis	Creature	C
31513	MID	145	0	\N	\N	\N	t	\N	\N	Lambholt Harrier	Creature	C
31535	RTR	149	0	\N	t	\N	t	\N	\N	Chemister's Trick	Instant	C
31536	ZEN	141	0	\N	\N	\N	t	\N	\N	Plated Geopede	Creature	C
31544	MID	147	0	\N	\N	\N	t	\N	\N	Lunar Frenzy	Instant	U
31568	SHM	150	0	t	t	\N	\N	\N	\N	Steel of the Godhead	Enchantment	C
31573	GTC	161	0	t	\N	t	\N	\N	\N	Executioner's Swing	Instant	C
31576	EVE	171	0	\N	\N	\N	\N	\N	\N	Leering Emblem	Artifact	R
31587	CHK	163	0	\N	\N	\N	t	\N	\N	Desperate Ritual	Instant	C
31589	MID	150	0	\N	\N	\N	t	\N	\N	Mounted Dreadknight	Creature	C
31595	RTR	153	0	\N	t	\N	t	\N	\N	Counterflux	Instant	R
31607	ALA	155	0	t	t	\N	\N	t	\N	Bant Charm	Instant	U
31636	EVE	175	0	\N	\N	\N	\N	\N	\N	Cascade Bluffs	Land	R
31679	MID	156	0	\N	\N	\N	t	\N	\N	Raze the Effigy	Instant	C
31682	ALA	160	0	\N	\N	t	t	t	\N	Broodmate Dragon	Creature	R
31694	MID	157	0	\N	\N	\N	t	\N	\N	Reckless Stormseeker // Storm-Charged Slasher	Creature	R
31697	ALA	161	0	t	\N	\N	t	\N	\N	Bull Cerodon	Creature	U
31714	RAV	163	0	\N	\N	\N	\N	t	\N	Farseek	Sorcery	C
31721	ROE	165	0	\N	\N	\N	t	\N	\N	Splinter Twin	Enchantment	R
31724	MID	159	0	\N	\N	\N	t	\N	\N	Smoldering Egg // Ashmouth Dragon	Creature	R
31741	ISD	171	0	\N	\N	\N	\N	t	\N	Boneyard Wurm	Creature	U
31746	SHM	162	0	\N	t	t	\N	\N	\N	Ghastlord of Fugue	Creature	R
31772	ZEN	157	0	\N	\N	\N	\N	t	\N	Baloth Woodcrasher	Creature	U
31775	SOM	170	0	\N	\N	\N	\N	\N	\N	Leaden Myr	Artifact Creature	C
31778	CHK	176	0	\N	\N	\N	t	\N	\N	Kumano, Master Yamabushi	Lgd. Creature	R
31781	THS	162	0	\N	\N	\N	\N	t	\N	Mistcutter Hydra	Creature	R
31782	ALA	167	0	t	t	t	\N	\N	\N	Esper Charm	Instant	U
31794	MID	164	0	\N	\N	\N	t	\N	\N	Thermo-Alchemist	Creature	U
31797	ISD	175	0	\N	\N	\N	\N	t	\N	Darkthicket Wolf	Creature	C
31826	RAV	171	0	\N	\N	\N	\N	t	\N	Ivy Dancer	Creature	U
31829	MRD	176	0	\N	\N	\N	\N	\N	\N	Goblin Charbelcher	Artifact	R
31832	LRW	175	0	\N	\N	\N	t	\N	\N	Heat Shimmer	Sorcery	R
31835	GTC	179	0	\N	t	t	\N	\N	\N	Mortus Strider	Creature	C
31855	RTR	171	0	t	t	\N	\N	\N	\N	Isperia, Supreme Judge	Lgd. Creature	M
31859	SOM	176	0	\N	\N	\N	\N	\N	\N	Mindslaver	Lgd. Artifact	M
31862	CHK	182	0	\N	\N	\N	t	\N	\N	Ore Gorger	Creature	U
31899	MRD	181	0	\N	\N	\N	\N	\N	\N	Golem-Skin Gauntlets	Artifact	U
31901	SOM	179	0	\N	\N	\N	\N	\N	\N	Mox Opal	Lgd. Artifact	M
31910	RAV	177	0	\N	\N	\N	\N	t	\N	Primordial Sage	Creature	R
31913	MRD	182	0	\N	\N	\N	\N	\N	\N	Granite Shard	Artifact	U
31914	SHM	174	0	\N	t	t	\N	\N	\N	River's Grasp	Sorcery	U
31915	SOM	180	0	\N	\N	\N	\N	\N	\N	Myr Battlesphere	Artifact Creature	R
31922	ALA	177	0	t	t	\N	\N	\N	\N	Kiss of the Amesha	Sorcery	U
31935	THS	173	0	\N	\N	\N	\N	t	\N	Reverent Hunter	Creature	R
31957	SOM	183	0	\N	\N	\N	\N	\N	\N	Myr Reservoir	Artifact	R
31806	CHK	178	1	\N	\N	\N	t	\N	\N	Lava Spike	Sorcery	C
32011	MRD	189	0	\N	\N	\N	\N	\N	\N	Jinxed Choker	Artifact	R
32014	LRW	188	0	\N	\N	\N	t	\N	\N	Rebellion of the Flamekin	Tribal Enchantment	U
31581	ZEN	144	1	\N	\N	\N	t	\N	\N	Quest for Pure Flame	Enchantment	U
31293	ZEN	128	1	\N	\N	\N	t	\N	\N	Goblin Shortcutter	Creature	C
31584	SOM	157	1	\N	\N	\N	\N	\N	\N	Gold Myr	Artifact Creature	C
31856	ZEN	163	1	\N	\N	\N	\N	t	\N	Grazing Gladehart	Creature	C
31900	SHM	173	1	\N	t	t	\N	\N	\N	Oona's Gatewarden	Creature	C
31956	SHM	177	1	\N	t	t	\N	\N	\N	Torpor Dust	Enchantment	C
31858	SHM	170	1	\N	t	t	\N	\N	\N	Memory Sluice	Sorcery	C
31233	LRW	139	1	\N	\N	t	\N	\N	\N	Shriekmaw	Creature	U
31665	THS	154	1	\N	\N	\N	\N	t	\N	Centaur Battlemaster	Creature	U
31960	CHK	189	1	\N	\N	\N	t	\N	\N	Soul of Magma	Creature	C
31949	THS	174	1	\N	\N	\N	\N	t	\N	Satyr Hedonist	Creature	C
31809	THS	164	1	\N	\N	\N	\N	t	\N	Nessian Asp	Creature	C
31620	THS	151	1	\N	\N	\N	\N	t	\N	Artisan's Sorrow	Instant	U
31265	THS	131	1	\N	\N	\N	t	\N	\N	Ordeal of Purphoros	Enchantment	U
31443	THS	140	1	\N	\N	\N	t	\N	\N	Spark Jolt	Instant	C
31650	THS	153	2	\N	\N	\N	\N	t	\N	Bow of Nylea	Lgd. Enchantment Artifact	R
31747	SOM	168	1	\N	\N	\N	\N	\N	\N	Iron Myr	Artifact Creature	C
31750	CHK	174	1	\N	\N	\N	t	\N	\N	Kami of Fire's Roar	Creature	C
31266	ALA	136	1	\N	\N	\N	\N	t	\N	Lush Growth	Enchantment	C
31562	ALA	152	1	\N	\N	\N	\N	t	\N	Wild Nacatl	Creature	C
36955	NEO	299	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
36956	NEO	300	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
36957	NEO	301	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
36958	NEO	302	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
36959	NEO	303	0	t	\N	\N	\N	\N	\N	The Wandering Emperor	Lgd. Planeswalker	M
31240	BOK	158	0	\N	\N	\N	\N	\N	\N	Ronin Warclub	Artifact	U
31247	RAV	136	0	\N	\N	\N	t	\N	\N	Molten Sentry	Creature	R
31313	RAV	139	0	\N	\N	\N	t	\N	\N	Reroute	Instant	U
31316	MRD	144	0	\N	\N	\N	\N	\N	\N	Banshee's Blade	Artifact	U
31325	CHK	148	0	\N	\N	t	\N	\N	\N	Villainous Ogre	Creature	C
31335	RTR	138	0	\N	\N	\N	\N	t	\N	Urban Burgeoning	Enchantment	C
31336	ZEN	130	0	\N	\N	\N	t	\N	\N	Hellfire Mongrel	Creature	U
31623	ISD	163	1	\N	\N	\N	t	\N	\N	Skirsdag Cultist	Creature	U
31344	SOK	155	0	\N	\N	\N	\N	\N	\N	Ivory Crane Netsuke	Artifact	U
31354	RAV	141	0	\N	\N	\N	t	\N	\N	Seismic Spike	Sorcery	C
31356	ZEN	131	0	\N	\N	\N	t	\N	\N	Hellkite Charger	Creature	R
31688	SHM	158	1	\N	t	t	\N	\N	\N	Cemetery Puca	Creature	R
31364	SOK	156	0	\N	\N	\N	\N	\N	\N	Manriki-Gusari	Artifact	U
31468	MRD	152	0	\N	\N	\N	\N	\N	\N	Chrome Mox	Artifact	R
31469	SHM	144	0	t	t	\N	\N	\N	\N	Mistmeadow Witch	Creature	U
31483	RAV	148	0	\N	\N	\N	t	\N	\N	Viashino Fangtail	Creature	C
31484	RTR	146	0	t	\N	\N	\N	t	\N	Call of the Conclave	Sorcery	U
31489	SOM	151	0	\N	\N	\N	\N	\N	\N	Darksteel Myr	Artifact Creature	U
31502	RTR	147	0	\N	\N	t	t	\N	\N	Carnival Hellsteed	Creature	R
31509	ROE	151	0	\N	\N	\N	t	\N	\N	Hellion Eruption	Sorcery	R
31528	GTC	158	0	\N	t	t	\N	\N	\N	Duskmantle Guildmage	Creature	U
31549	RAV	152	0	\N	\N	\N	t	\N	\N	Wojek Embermage	Creature	U
31552	MRD	157	0	\N	\N	\N	\N	\N	\N	Cobalt Golem	Artifact Creature	C
31600	LRW	159	0	\N	\N	\N	t	\N	\N	Chandra Nalaar	Lgd. Planeswalker	R
31601	ROE	157	0	\N	\N	\N	t	\N	\N	Lust for War	Enchantment	U
31603	GTC	163	0	t	\N	\N	t	\N	\N	Firemane Avenger	Creature	R
31604	MID	151	0	\N	\N	\N	t	\N	\N	Neonate's Rush	Instant	C
31628	SHM	154	0	t	t	\N	\N	\N	\N	Thoughtweft Gambit	Instant	U
31629	SOM	160	0	\N	\N	\N	\N	\N	\N	Golem Foundry	Artifact	C
31654	RAV	159	0	\N	\N	\N	\N	t	\N	Dowsing Shaman	Creature	U
31655	RTR	157	0	\N	\N	t	t	\N	\N	Dreadbore	Sorcery	R
31660	LRW	163	0	\N	\N	\N	t	\N	\N	Faultgrinder	Creature	C
31687	MRD	166	0	\N	\N	\N	\N	\N	\N	Duskworker	Artifact Creature	U
31689	SOM	164	0	\N	\N	\N	\N	\N	\N	Heavy Arbalest	Artifact	U
31705	LRW	166	0	\N	\N	\N	t	\N	\N	Flamekin Brawler	Creature	C
31727	ISD	170	0	\N	\N	\N	\N	t	\N	Avacyn's Pilgrim	Creature	C
31735	ROE	166	0	\N	\N	\N	t	\N	\N	Staggershock	Instant	C
31736	CHK	173	0	\N	\N	\N	t	\N	\N	Initiate of Blood // Goka the Unjust	Creature	U
31756	RAV	166	0	\N	\N	\N	\N	t	\N	Golgari Brownscale	Creature	C
31757	RTR	164	0	\N	\N	t	\N	t	\N	Golgari Charm	Instant	U
31763	ROE	168	0	\N	\N	\N	t	\N	\N	Traitorous Instinct	Sorcery	U
31814	ZEN	160	0	\N	\N	\N	\N	t	\N	Cobra Trap	Instant	U
31815	MRD	175	0	\N	\N	\N	\N	\N	\N	Gilded Lotus	Artifact	R
31818	LRW	174	0	\N	\N	\N	t	\N	\N	Hearthcage Giant	Creature	U
31850	MID	168	0	\N	\N	\N	\N	t	\N	Augur of Autumn	Creature	R
31865	THS	168	0	\N	\N	\N	\N	t	\N	Nylea's Emissary	Enchantment Creature	U
31878	MID	170	0	\N	\N	\N	\N	t	\N	Bounding Wolf	Creature	C
31881	ISD	181	0	\N	\N	\N	\N	t	\N	Garruk Relentless // Garruk, the Veil-Cursed	Lgd. Planeswalker	M
31882	RAV	175	0	\N	\N	\N	\N	t	\N	Overwhelm	Sorcery	U
31883	RTR	173	0	\N	t	\N	t	\N	\N	Izzet Staticaster	Creature	U
31891	GTC	183	0	t	\N	t	\N	\N	\N	One Thousand Lashes	Enchantment	U
31894	ALA	175	0	\N	\N	t	t	t	\N	Jund Charm	Instant	U
31911	RTR	175	0	\N	\N	t	\N	t	\N	Jarad's Orders	Sorcery	R
31920	MID	173	0	\N	\N	\N	\N	t	\N	Brood Weaver	Creature	U
31937	ISD	185	0	\N	\N	\N	\N	t	\N	Grizzled Outcasts // Krallenhorde Wantons	Creature	C
31942	SHM	176	0	\N	t	t	\N	\N	\N	Sygg, River Cutthroat	Lgd. Creature	R
31943	SOM	182	0	\N	\N	\N	\N	\N	\N	Myr Propagator	Artifact Creature	R
31965	ISD	187	0	\N	\N	\N	\N	t	\N	Hamlet Captain	Creature	U
31476	CHK	156	1	\N	\N	\N	t	\N	\N	Battle-Mad Ronin	Creature	C
31971	SOM	184	0	\N	\N	\N	\N	\N	\N	Necrogen Censer	Artifact	C
31974	CHK	190	0	\N	\N	\N	t	\N	\N	Soulblast	Instant	R
31990	MID	178	0	\N	\N	\N	\N	t	\N	Contortionist Troupe	Creature	U
31993	ISD	189	0	\N	\N	\N	\N	t	\N	Kessig Cagebreakers	Creature	R
32003	GTC	191	0	\N	\N	\N	t	t	\N	Rubblehulk	Creature	R
32004	MID	179	0	\N	\N	\N	\N	t	\N	Dawnhart Mentor	Creature	U
32023	RTR	183	0	\N	t	\N	t	\N	\N	Niv-Mizzet, Dracogenius	Lgd. Creature	M
32024	ZEN	175	0	\N	\N	\N	\N	t	\N	Predatory Urge	Enchantment	R
32029	ROE	187	0	\N	\N	\N	\N	t	\N	Haze Frog	Creature	C
32030	CHK	194	0	\N	\N	\N	t	\N	\N	Tide of War	Enchantment	R
32050	RAV	187	0	\N	\N	\N	\N	t	\N	Trophy Hunter	Creature	U
32053	MRD	192	0	\N	\N	\N	\N	\N	\N	Leonin Bladetrap	Artifact	U
31917	ROE	179	1	\N	\N	\N	\N	t	\N	Boar Umbra	Enchantment	U
31661	ROE	161	1	\N	\N	\N	t	\N	\N	Raid Bombardment	Enchantment	C
31556	ROE	154	1	\N	\N	\N	t	\N	\N	Lagac Lizard	Creature	C
31492	ROE	150	1	\N	\N	\N	t	\N	\N	Heat Ray	Instant	C
31701	ZEN	152	1	\N	\N	\N	t	\N	\N	Tuktuk Grunts	Creature	C
31599	SOM	158	1	\N	\N	\N	\N	\N	\N	Golden Urn	Artifact	C
31252	SHM	133	1	\N	\N	\N	\N	t	\N	Wildslayer Elves	Creature	C
31598	SHM	152	1	t	t	\N	\N	\N	\N	Thistledown Duo	Creature	C
32056	LRW	191	1	\N	\N	\N	t	\N	\N	Stinkdrinker Daredevil	Creature	C
31555	LRW	156	1	\N	\N	\N	t	\N	\N	Boggart Sprite-Chaser	Creature	C
31762	LRW	170	1	\N	\N	\N	t	\N	\N	Giant's Ire	Tribal Sorcery	C
31320	LRW	143	1	\N	\N	t	\N	\N	\N	Thieving Sprite	Creature	C
31255	LRW	140	1	\N	\N	t	\N	\N	\N	Skeletal Changeling	Creature	C
31823	THS	165	1	\N	\N	\N	\N	t	\N	Nessian Courser	Creature	C
31838	ALA	171	2	\N	t	t	t	\N	\N	Grixis Charm	Instant	U
36960	NEO	304	0	\N	t	\N	\N	\N	\N	Tezzeret, Betrayer of Flesh	Lgd. Planeswalker	M
31632	CHK	166	2	\N	\N	\N	t	\N	\N	Ember-Fist Zubera	Creature	C
31946	CHK	188	1	\N	\N	\N	t	\N	\N	Sokenzan Bruiser	Creature	C
31527	CHK	159	1	\N	\N	\N	t	\N	\N	Blood Rites	Enchantment	U
31516	ALA	149	1	\N	\N	\N	\N	t	\N	Soul's Might	Sorcery	C
31463	ALA	146	1	\N	\N	\N	\N	t	\N	Sacellum Godspeaker	Creature	R
31712	ALA	162	2	\N	\N	t	t	t	\N	Carrion Thrash	Creature	C
36961	NEO	305	0	\N	t	t	\N	\N	\N	Kaito Shizuki	Lgd. Planeswalker	M
31271	ZEN	127	0	\N	\N	\N	t	\N	\N	Goblin Ruinblaster	Creature	U
31280	ROE	139	0	\N	\N	\N	t	\N	\N	Conquering Manticore	Creature	R
31290	ISD	144	0	\N	\N	\N	t	\N	\N	Geistflame	Instant	C
31295	DGM	156	0	\N	\N	\N	\N	\N	\N	Simic Guildgate	Land	C
31300	DKA	157	0	\N	\N	\N	\N	\N	\N	Haunted Fengraf	Land	C
31308	MID	134	0	\N	\N	\N	t	\N	\N	Curse of Shaken Faith	Enchantment	R
31329	MID	135	0	\N	\N	\N	t	\N	\N	Electric Revelation	Instant	C
31593	ISD	161	1	\N	\N	\N	t	\N	\N	Rolling Temblor	Sorcery	U
31482	ISD	154	1	\N	\N	\N	t	\N	\N	Nightbird's Clutches	Sorcery	C
31388	MID	138	0	\N	\N	\N	t	\N	\N	Famished Foragers	Creature	C
31391	ALA	142	0	\N	\N	\N	\N	t	\N	Naya Battlemage	Creature	U
31407	THS	138	0	\N	\N	\N	t	\N	\N	Rageblood Shaman	Creature	R
31429	RAV	145	0	\N	\N	\N	t	\N	\N	Stoneshaker Shaman	Creature	U
31432	MRD	150	0	\N	\N	\N	\N	\N	\N	Chalice of the Void	Artifact	R
31437	GPT	162	0	\N	\N	\N	\N	\N	\N	Orzhova, the Church of Deals	Land	U
31439	SOK	160	0	\N	\N	\N	\N	\N	\N	Soratami Cloud Chariot	Artifact	U
31442	MID	141	0	\N	\N	\N	t	\N	\N	Flame Channeler // Embodiment of Flame	Creature	U
31477	GTC	155	0	\N	t	t	\N	\N	\N	Dinrova Horror	Creature	U
31485	ZEN	138	0	\N	\N	\N	t	\N	\N	Molten Ravager	Creature	C
32016	CHK	193	1	\N	\N	\N	t	\N	\N	Through the Breach	Instant	R
31493	SOK	163	0	\N	\N	\N	\N	\N	\N	Miren, the Moaning Well	Lgd. Land	R
31501	RAV	149	0	\N	\N	\N	t	\N	\N	Viashino Slasher	Creature	C
31510	SOK	164	0	\N	\N	\N	\N	\N	\N	Oboro, Palace in the Clouds	Lgd. Land	R
31515	EVE	167	0	\N	\N	\N	\N	\N	\N	Antler Skulkin	Artifact Creature	C
31533	ISD	157	0	\N	\N	\N	t	\N	\N	Rage Thrower	Creature	U
31539	SOM	154	0	\N	\N	\N	\N	\N	\N	Etched Champion	Artifact Creature	R
31541	ROE	153	0	\N	\N	\N	t	\N	\N	Kiln Fiend	Creature	C
31564	RAV	153	0	\N	\N	\N	\N	t	\N	Birds of Paradise	Creature	R
31565	RTR	151	0	t	\N	\N	\N	t	\N	Common Bond	Instant	C
32007	ISD	190	2	\N	\N	\N	\N	t	\N	Kindercatch	Creature	C
31609	RAV	156	0	\N	\N	\N	\N	t	\N	Chord of Calling	Instant	R
31611	ZEN	146	0	\N	\N	\N	t	\N	\N	Runeflare Trap	Instant	U
31612	MRD	161	0	\N	\N	\N	\N	\N	\N	Damping Matrix	Artifact	R
31615	LRW	160	0	\N	\N	\N	t	\N	\N	Changeling Berserker	Creature	U
31618	GTC	164	0	t	\N	\N	t	\N	\N	Fortress Cyclops	Creature	U
31638	ISD	164	0	\N	\N	\N	t	\N	\N	Stromkirk Noble	Creature	R
31644	SOM	161	0	\N	\N	\N	\N	\N	\N	Golem's Heart	Artifact	U
31647	CHK	167	0	\N	\N	\N	t	\N	\N	Frostwielder	Creature	C
31716	ZEN	153	0	\N	\N	\N	t	\N	\N	Unstable Footing	Instant	U
31725	THS	158	0	\N	\N	\N	\N	t	\N	Feral Invocation	Enchantment	C
31740	ALA	164	0	\N	t	t	t	\N	\N	Cruel Ultimatum	Sorcery	R
31752	MID	161	0	\N	\N	\N	t	\N	\N	Stolen Vitality	Instant	C
31780	MID	163	0	\N	\N	\N	t	\N	\N	Tavern Ruffian // Tavern Smasher	Creature	C
31783	ISD	174	0	\N	\N	\N	\N	t	\N	Creeping Renaissance	Sorcery	R
31793	GTC	176	0	\N	t	\N	\N	t	\N	Master Biomancer	Creature	M
31796	ALA	168	0	\N	t	t	t	\N	\N	Fire-Field Ogre	Creature	U
31807	GTC	177	0	t	\N	t	\N	\N	\N	Merciless Eviction	Sorcery	R
31808	MID	165	0	\N	\N	\N	t	\N	\N	Village Watch // Village Reavers	Creature	U
31827	RTR	169	0	t	t	\N	\N	\N	\N	Hussar Patrol	Creature	C
31828	ZEN	161	0	\N	\N	\N	\N	t	\N	Frontier Guide	Creature	U
31836	MID	167	0	\N	\N	\N	t	\N	\N	Voldaren Stinger	Creature	C
31852	ALA	172	0	\N	\N	t	t	t	\N	Hellkite Overlord	Creature	M
31863	GTC	181	0	\N	t	\N	\N	t	\N	Nimbus Swimmer	Creature	U
31898	ZEN	166	0	\N	\N	\N	\N	t	\N	Joraga Bard	Creature	C
31909	ISD	183	0	\N	\N	\N	\N	t	\N	Gnaw to the Bone	Instant	C
31918	CHK	186	0	\N	\N	\N	t	\N	\N	Shimatsu the Bloodcloaked	Lgd. Creature	R
31919	GTC	185	0	t	\N	t	\N	\N	\N	Orzhov Charm	Instant	U
31938	RAV	179	0	\N	\N	\N	\N	t	\N	Rolling Spoil	Sorcery	U
31941	MRD	184	0	\N	\N	\N	\N	\N	\N	Heartwood Shard	Artifact	U
31945	ROE	181	0	\N	\N	\N	\N	t	\N	Broodwarden	Creature	U
31966	RAV	181	0	\N	\N	\N	\N	t	\N	Scatter the Seeds	Instant	C
31967	RTR	179	0	t	t	\N	\N	\N	\N	Lyev Skyknight	Creature	U
31972	LRW	185	0	\N	\N	\N	t	\N	\N	Mudbutton Torchrunner	Creature	C
31973	ROE	183	0	\N	\N	\N	\N	t	\N	Gelatinous Genesis	Sorcery	R
31996	ZEN	173	0	\N	\N	\N	\N	t	\N	Oran-Rief Recluse	Creature	C
32000	LRW	187	0	\N	\N	\N	t	\N	\N	Nova Chaser	Creature	R
32017	GTC	192	0	\N	\N	\N	t	t	\N	Ruination Wurm	Creature	C
32036	RAV	186	0	\N	\N	\N	\N	t	\N	Transluminant	Creature	C
32039	MRD	191	0	\N	\N	\N	\N	\N	\N	Leaden Myr	Artifact Creature	C
32042	LRW	190	0	\N	\N	\N	t	\N	\N	Soulbright Flamekin	Creature	C
32043	ROE	188	0	\N	\N	\N	\N	t	\N	Irresistible Prey	Sorcery	U
32135	RTR	191	0	\N	\N	t	\N	t	\N	Rites of Reaping	Sorcery	U
32136	ZEN	183	0	\N	\N	\N	\N	t	\N	Scythe Tiger	Creature	C
32143	GTC	201	0	t	\N	t	\N	\N	\N	Treasury Thrull	Creature	R
32160	ALA	194	0	t	t	t	\N	\N	\N	Sharuum the Hegemon	Lgd. Artifact Creature	M
32165	MRD	200	0	\N	\N	\N	\N	\N	\N	Lodestone Myr	Artifact Creature	R
32166	SHM	192	0	\N	\N	t	t	\N	\N	Murderous Redcap	Creature	U
32171	GTC	203	0	\N	t	\N	\N	t	\N	Unexpected Results	Sorcery	R
32174	ALA	195	0	t	\N	\N	\N	t	\N	Sigil Blessing	Instant	C
32177	RTR	194	0	t	\N	\N	\N	t	\N	Selesnya Charm	Instant	U
31643	SHM	155	1	t	t	\N	\N	\N	\N	Turn to Mist	Instant	C
31538	SHM	148	1	t	t	\N	\N	\N	\N	Silkbind Faerie	Creature	C
31720	LRW	167	1	\N	\N	\N	t	\N	\N	Flamekin Harbinger	Creature	U
31944	LRW	183	1	\N	\N	\N	t	\N	\N	Lash Out	Instant	C
31902	LRW	180	1	\N	\N	\N	t	\N	\N	Ingot Chewer	Creature	C
31570	LRW	157	1	\N	\N	\N	t	\N	\N	Caterwauling Boggart	Creature	C
31795	THS	163	1	\N	\N	\N	\N	t	\N	Nemesis of Mortals	Creature	U
31767	THS	161	1	\N	\N	\N	\N	t	\N	Leafcrown Dryad	Enchantment Creature	C
31461	THS	141	1	\N	\N	\N	t	\N	\N	Spearpoint Oread	Enchantment Creature	C
31404	CHK	152	2	\N	\N	\N	t	\N	\N	Akki Coalflinger	Creature	U
36962	NEO	306	0	\N	t	\N	\N	t	\N	Tamiyo, Compleated Sage	Lgd. Planeswalker	M
31542	CHK	160	2	\N	\N	\N	t	\N	\N	Brothers Yamazaki	Lgd. Creature	U
36963	NEO	307	0	\N	t	\N	\N	\N	\N	|aEDn,Gyts BytPt,krwFTrh.	|MewkfuDs fyrs,psewtr.	M
36964	NEO	308	0	\N	t	\N	\N	t	\N	|temDwooD pcEnusL,iOlz.	|MewknmQYpmunt temDwooD.	M
31283	GTC	145	0	\N	t	t	\N	\N	\N	Bane Alley Broker	Creature	U
31288	ALA	137	0	\N	\N	\N	\N	t	\N	Mighty Emergence	Enchantment	U
31373	ISD	148	1	\N	\N	\N	t	\N	\N	Infernal Plunge	Sorcery	C
31298	SOM	141	0	\N	\N	\N	\N	\N	\N	Chimeric Mass	Artifact	R
32441	ISD	221	1	\N	\N	\N	\N	\N	\N	Demonmail Hauberk	Artifact	U
31349	MID	136	0	\N	\N	\N	t	\N	\N	Falkenrath Perforator	Creature	C
31367	BOK	164	0	\N	\N	\N	\N	\N	\N	Gods' Eye, Gate to the Reikai	Lgd. Land	U
31376	ZEN	132	0	\N	\N	\N	t	\N	\N	Highland Berserker	Creature	C
32217	ISD	205	1	\N	\N	\N	\N	t	\N	Splinterfright	Creature	R
31381	LRW	146	0	\N	\N	t	\N	\N	\N	Warren Pilferers	Creature	C
31382	GPT	159	0	\N	\N	\N	\N	\N	\N	Izzet Boilerworks	Land	C
31396	MRD	148	0	\N	\N	\N	\N	\N	\N	Bottle Gnomes	Artifact Creature	U
31397	SHM	140	0	t	t	\N	\N	\N	\N	Enchanted Evening	Enchantment	R
31400	LRW	147	0	\N	\N	t	\N	\N	\N	Weed Strangle	Sorcery	C
31411	RAV	144	0	\N	\N	\N	t	\N	\N	Sparkmage Apprentice	Creature	C
31419	GPT	161	0	\N	\N	\N	\N	\N	\N	Orzhov Basilica	Land	C
31426	EVE	162	0	\N	t	\N	\N	t	\N	Spitting Image	Sorcery	R
31445	ALA	145	0	\N	\N	\N	\N	t	\N	Rhox Charger	Creature	U
31458	CHK	155	0	\N	\N	\N	t	\N	\N	Akki Underminer	Creature	U
31480	EVE	165	0	\N	t	\N	\N	t	\N	Wistful Selkie	Creature	U
31491	GPT	165	0	\N	\N	\N	\N	\N	\N	Stomping Ground	Land	R
31503	ZEN	139	0	\N	\N	\N	t	\N	\N	Murasa Pyromancer	Creature	U
32226	CHK	208	1	\N	\N	\N	\N	t	\N	Feral Deceiver	Creature	C
31507	SOM	152	0	\N	\N	\N	\N	\N	\N	Darksteel Sentinel	Artifact Creature	U
31518	RAV	150	0	\N	\N	\N	t	\N	\N	Warp World	Sorcery	R
31525	ROE	152	0	\N	\N	\N	t	\N	\N	Kargan Dragonlord	Creature	M
31547	ALA	151	0	\N	\N	\N	\N	t	\N	Topan Ascetic	Creature	U
31559	MID	148	0	\N	\N	\N	t	\N	\N	Moonrager's Slash	Instant	C
31594	RAV	155	0	\N	\N	\N	\N	t	\N	Carven Caryatid	Creature	U
31608	ISD	162	0	\N	\N	\N	t	\N	\N	Scourge of Geier Reach	Creature	U
31616	ROE	158	0	\N	\N	\N	t	\N	\N	Magmaw	Creature	R
31617	CHK	165	0	\N	\N	\N	t	\N	\N	Earthshaker	Creature	U
31639	RAV	158	0	\N	\N	\N	\N	t	\N	Doubling Season	Enchantment	R
31642	MRD	163	0	\N	\N	\N	\N	\N	\N	Dragon Blood	Artifact	U
31645	LRW	162	0	\N	\N	\N	t	\N	\N	Crush Underfoot	Tribal Instant	U
31646	ROE	160	0	\N	\N	\N	t	\N	\N	Rage Nimbus	Creature	R
32051	RTR	185	0	\N	\N	t	t	\N	\N	Rakdos Ragemutt	Creature	U
32054	SHM	184	0	\N	\N	t	t	\N	\N	Din of the Fireherd	Sorcery	R
32055	SOM	190	0	\N	\N	\N	\N	\N	\N	Palladium Myr	Artifact Creature	U
32081	MRD	194	0	\N	\N	\N	\N	\N	\N	Leonin Sun Standard	Artifact	R
32082	SHM	186	0	\N	\N	t	t	\N	\N	Everlasting Torment	Enchantment	R
32083	SOM	192	0	\N	\N	\N	\N	\N	\N	Perilous Myr	Artifact Creature	C
32107	RTR	189	0	t	t	\N	\N	\N	\N	Righteous Authority	Enchantment	R
32110	SHM	188	0	\N	\N	t	t	\N	\N	Fulminator Mage	Creature	R
32111	SOM	194	0	\N	\N	\N	\N	\N	\N	Precursor Golem	Artifact Creature	R
32117	THS	186	0	t	\N	\N	t	\N	\N	Anax and Cymede	Lgd. Creature	R
32131	THS	187	0	t	\N	t	\N	\N	\N	Ashen Rider	Creature	M
32158	MID	190	0	\N	\N	\N	\N	t	\N	Outland Liberator // Frenzied Trapbreaker	Creature	U
32198	CHK	206	2	\N	\N	\N	\N	t	\N	Dripping-Tongue Zubera	Creature	C
32181	SOM	199	0	\N	\N	\N	\N	\N	\N	Rusted Relic	Artifact	U
32186	MID	192	0	\N	\N	\N	\N	t	\N	Pestilent Wolf	Creature	C
32189	ISD	203	0	\N	\N	\N	\N	t	\N	Spider Spawning	Sorcery	U
32199	GTC	205	0	t	\N	t	\N	\N	\N	Vizkopa Confessor	Creature	U
32223	SOM	202	0	\N	\N	\N	\N	\N	\N	Silver Myr	Artifact Creature	C
32291	MRD	209	0	\N	\N	\N	\N	\N	\N	Mourner's Shield	Artifact	U
32299	THS	199	0	\N	t	\N	\N	t	\N	Prophet of Kruphix	Creature	R
32313	THS	200	0	\N	t	t	\N	\N	\N	Psychic Intrusion	Sorcery	R
32340	MID	203	0	\N	\N	\N	\N	t	\N	Tireless Hauler // Dire-Strain Brawler	Creature	C
32343	ISD	214	0	\N	t	t	\N	\N	\N	Grimgrin, Corpse-Born	Lgd. Creature	M
32344	RAV	208	0	\N	t	t	\N	\N	\N	Glimpse the Unthinkable	Sorcery	R
32354	MID	204	0	\N	\N	\N	\N	t	\N	Tovolar's Huntmaster // Tovolar's Packleader	Creature	R
32357	ISD	215	0	\N	\N	t	t	\N	\N	Olivia Voldaren	Lgd. Creature	M
32367	GTC	217	0	\N	t	t	\N	\N	\N	Coerced Confession	Sorcery	U
32385	ISD	217	0	\N	\N	\N	\N	\N	\N	Butcher's Cleaver	Artifact	U
32390	SHM	208	0	\N	\N	\N	t	t	\N	Guttural Response	Instant	U
32396	MID	207	0	\N	\N	\N	\N	t	\N	Willow Geist	Creature	R
32412	ALA	212	0	\N	\N	\N	\N	\N	\N	Obelisk of Bant	Artifact	C
32417	MRD	218	0	\N	\N	\N	\N	\N	\N	Neurok Hoversail	Artifact	C
32418	SHM	210	0	\N	\N	\N	t	t	\N	Loamdragger Giant	Creature	C
32423	GTC	221	0	\N	t	\N	\N	t	\N	Merfolk of the Depths	Creature	U
32438	MID	210	0	\N	t	\N	t	\N	\N	Arcane Infusion	Instant	U
32451	GTC	223	0	\N	\N	\N	t	t	\N	Pit Fight	Instant	C
32456	RAV	216	0	\N	t	t	\N	\N	\N	Moroii	Creature	U
32459	MRD	221	0	\N	\N	\N	\N	\N	\N	Nuisance Engine	Artifact	U
32052	ZEN	177	1	\N	\N	\N	\N	t	\N	Quest for the Gemblades	Enchantment	U
32222	SHM	196	1	\N	\N	t	t	\N	\N	Sootwalkers	Creature	C
31490	LRW	152	1	\N	\N	\N	t	\N	\N	Blades of Velis Vel	Tribal Instant	C
31309	THS	133	1	\N	\N	\N	t	\N	\N	Portent of Betrayal	Sorcery	C
31530	THS	145	1	\N	\N	\N	t	\N	\N	Titan's Strength	Instant	C
32369	THS	204	1	\N	t	\N	t	\N	\N	Spellheart Chimera	Creature	U
32327	THS	201	1	\N	\N	t	\N	t	\N	Reaper of the Wilds	Creature	R
32145	THS	188	1	\N	t	t	\N	\N	\N	Ashiok, Nightmare Weaver	Lgd. Planeswalker	M
32173	THS	190	2	t	\N	\N	\N	t	\N	Chronicler of Heroes	Creature	U
32290	ZEN	194	1	\N	\N	\N	\N	t	\N	Zendikar Farguide	Creature	C
32391	SOM	214	2	\N	\N	\N	\N	\N	\N	Trigon of Infestation	Artifact	U
32294	LRW	208	2	\N	\N	\N	\N	t	\N	Elvish Promenade	Tribal Sorcery	U
32184	CHK	205	1	\N	\N	\N	\N	t	\N	Dosan the Falling Leaf	Lgd. Creature	R
32058	CHK	196	1	\N	\N	\N	t	\N	\N	Unearthly Blizzard	Sorcery	C
32370	ALA	209	1	t	\N	\N	t	t	\N	Woolly Thoctar	Creature	U
36965	NEO	309	0	t	\N	\N	\N	\N	\N	Eiganjo Exemplar	Enchantment Creature	C
36966	NEO	310	0	t	\N	\N	\N	\N	\N	Imperial Subduer	Creature	C
36967	NEO	311	0	t	\N	\N	\N	\N	\N	Norika Yamazaki, the Poet	Lgd. Creature	U
36968	NEO	312	0	t	\N	\N	\N	\N	\N	Selfless Samurai	Creature	U
31301	GPT	155	0	\N	\N	\N	\N	\N	\N	Orzhov Signet	Artifact	C
32035	ISD	192	1	\N	\N	\N	\N	t	\N	Make a Wish	Sorcery	U
31347	BOK	163	0	\N	\N	\N	\N	\N	\N	Umezawa's Jitte	Lgd. Artifact	R
31369	MID	137	0	\N	\N	\N	t	\N	\N	Falkenrath Pit Fighter	Creature	R
31387	BOK	165	0	\N	\N	\N	\N	\N	\N	Tendo Ice Bridge	Land	R
31392	ISD	149	0	\N	\N	\N	t	\N	\N	Instigator Gang // Wildblood Pack	Creature	R
31403	SOK	158	0	\N	\N	\N	\N	\N	\N	Pithing Needle	Artifact	R
31408	EVE	161	0	\N	t	\N	\N	t	\N	Snakeform	Instant	C
31428	ISD	151	0	\N	\N	\N	t	\N	\N	Kessig Wolf	Creature	C
31433	SHM	142	0	t	t	\N	\N	\N	\N	Godhead of Awe	Creature	R
31436	LRW	149	0	\N	\N	\N	t	\N	\N	Ashling the Pilgrim	Lgd. Creature	R
31440	CHK	154	0	\N	\N	\N	t	\N	\N	Akki Rockspeaker	Creature	C
31441	GTC	153	0	t	\N	t	\N	\N	\N	Deathpact Angel	Creature	M
31462	EVE	164	0	\N	t	\N	\N	t	\N	Trapjaw Kelpie	Creature	C
31472	LRW	151	0	\N	\N	\N	t	\N	\N	Axegrinder Giant	Creature	C
31473	GPT	164	0	\N	\N	\N	\N	\N	\N	Steam Vents	Land	R
31550	RTR	150	0	t	\N	\N	\N	t	\N	Collective Blessing	Enchantment	R
31551	ZEN	142	0	\N	\N	\N	t	\N	\N	Punishing Fire	Instant	U
31558	GTC	160	0	\N	t	\N	\N	t	\N	Elusive Krasis	Creature	U
31606	EVE	173	0	\N	\N	\N	\N	\N	\N	Shell Skulkin	Artifact Creature	C
31621	EVE	174	0	\N	\N	\N	\N	\N	\N	Ward of Bones	Artifact	R
31651	EVE	176	0	\N	\N	\N	\N	\N	\N	Fetid Heath	Land	R
31664	MID	155	0	\N	\N	\N	t	\N	\N	Purifying Dragon	Creature	U
31668	ISD	166	0	\N	\N	\N	t	\N	\N	Traitorous Blood	Sorcery	C
31671	ZEN	150	0	\N	\N	\N	t	\N	\N	Spire Barrage	Sorcery	C
31674	SOM	163	0	\N	\N	\N	\N	\N	\N	Grindclock	Artifact	R
31677	CHK	169	0	\N	\N	\N	t	\N	\N	Godo, Bandit Warlord	Lgd. Creature	R
31684	RAV	161	0	\N	\N	\N	\N	t	\N	Elves of Deep Shadow	Creature	C
31692	CHK	170	0	\N	\N	\N	t	\N	\N	Hanabi Blast	Instant	U
31696	EVE	179	0	\N	\N	\N	\N	\N	\N	Springjack Pasture	Land	R
31715	RTR	161	0	t	t	\N	\N	\N	\N	Fall of the Gavel	Instant	U
31717	MRD	168	0	\N	\N	\N	\N	\N	\N	Empyrial Plate	Artifact	R
31718	SHM	160	0	\N	t	t	\N	\N	\N	Dream Salvage	Instant	U
31726	ALA	163	0	t	t	\N	\N	t	\N	Clarion Ultimatum	Sorcery	R
31766	MID	162	0	\N	\N	\N	t	\N	\N	Sunstreak Phoenix	Creature	M
31770	RAV	167	0	\N	\N	\N	\N	t	\N	Golgari Grave-Troll	Creature	R
31771	RTR	165	0	\N	\N	t	\N	t	\N	Grisly Salvage	Instant	C
31776	LRW	171	0	\N	\N	\N	t	\N	\N	Glarewielder	Creature	U
31777	ROE	169	0	\N	\N	\N	t	\N	\N	Tuktuk the Explorer	Lgd. Creature	R
31785	RTR	166	0	\N	\N	t	t	\N	\N	Havoc Festival	Enchantment	R
31799	RTR	167	0	\N	\N	t	t	\N	\N	Hellhole Flailer	Creature	U
31801	MRD	174	0	\N	\N	\N	\N	\N	\N	Gate to the Aether	Artifact	R
31803	SOM	172	0	\N	\N	\N	\N	\N	\N	Livewire Lash	Artifact	R
31812	RAV	170	0	\N	\N	\N	\N	t	\N	Hunted Troll	Creature	R
31819	ROE	172	0	\N	\N	\N	t	\N	\N	World at War	Sorcery	R
31822	MID	166	0	\N	\N	\N	t	\N	\N	Voldaren Ambusher	Creature	U
31839	ISD	178	0	\N	\N	\N	\N	t	\N	Essence of the Wild	Creature	M
31844	SHM	169	0	\N	t	t	\N	\N	\N	Memory Plunder	Instant	R
31845	SOM	175	0	\N	\N	\N	\N	\N	\N	Mimic Vat	Artifact	R
31848	CHK	181	0	\N	\N	\N	t	\N	\N	Myojin of Infinite Rage	Lgd. Creature	R
31867	ISD	180	0	\N	\N	\N	\N	t	\N	Full Moon's Rise	Enchantment	U
31870	ZEN	164	0	\N	\N	\N	\N	t	\N	Greenweaver Druid	Creature	U
31873	SOM	177	0	\N	\N	\N	\N	\N	\N	Molten-Tail Masticore	Artifact Creature	M
31876	CHK	183	0	\N	\N	\N	t	\N	\N	Pain Kami	Creature	U
31896	RAV	176	0	\N	\N	\N	\N	t	\N	Perilous Forays	Enchantment	U
31924	RAV	178	0	\N	\N	\N	\N	t	\N	Recollect	Sorcery	U
31927	MRD	183	0	\N	\N	\N	\N	\N	\N	Grid Monitor	Artifact Creature	R
31933	GTC	186	0	\N	t	t	\N	\N	\N	Paranoid Delusions	Sorcery	C
31951	ISD	186	0	\N	\N	\N	\N	t	\N	Gutter Grime	Enchantment	R
31954	ZEN	170	0	\N	\N	\N	\N	t	\N	Nissa Revane	Lgd. Planeswalker	M
31961	GTC	188	0	\N	t	\N	\N	t	\N	Prime Speaker Zegana	Lgd. Creature	M
31997	MRD	188	0	\N	\N	\N	\N	\N	\N	Isochron Scepter	Artifact	U
31998	SHM	180	0	\N	\N	t	t	\N	\N	Ashenmoor Gouger	Creature	U
31999	SOM	186	0	\N	\N	\N	\N	\N	\N	Neurok Replica	Artifact Creature	C
32008	RAV	184	0	\N	\N	\N	\N	t	\N	Stone-Seeder Hierophant	Creature	C
32015	ROE	186	0	\N	\N	\N	\N	t	\N	Growth Spasm	Sorcery	C
32018	MID	180	0	\N	\N	\N	\N	t	\N	Dawnhart Rejuvenator	Creature	C
32040	SHM	183	0	\N	\N	t	t	\N	\N	Demigod of Revenge	Creature	R
32041	SOM	189	0	\N	\N	\N	\N	\N	\N	Origin Spellbomb	Artifact	C
32134	RAV	193	0	t	\N	\N	t	\N	\N	Boros Swiftblade	Creature	U
32137	MRD	198	0	\N	\N	\N	\N	\N	\N	Lightning Coils	Artifact	R
32140	LRW	197	0	\N	\N	\N	\N	t	\N	Battlewand Oak	Creature	C
31904	CHK	185	1	\N	\N	\N	t	\N	\N	Ryusei, the Falling Star	Lgd. Creature	R
32162	RAV	195	0	t	\N	\N	\N	t	\N	Chorus of the Conclave	Lgd. Creature	R
32163	RTR	193	0	t	t	\N	\N	\N	\N	Search Warrant	Sorcery	C
32168	LRW	199	0	\N	\N	\N	\N	t	\N	Briarhorn	Creature	U
32169	ROE	197	0	\N	\N	\N	\N	t	\N	Momentous Fall	Instant	R
32192	ZEN	187	0	\N	\N	\N	\N	t	\N	Terra Stomper	Creature	R
32196	LRW	201	0	\N	\N	\N	\N	t	\N	Cloudcrown Oak	Creature	C
32044	CHK	195	1	\N	\N	\N	t	\N	\N	Uncontrollable Anger	Enchantment	C
31438	ROE	147	1	\N	\N	\N	t	\N	\N	Goblin Arsonist	Creature	C
31791	ROE	170	1	\N	\N	\N	t	\N	\N	Valakut Fireboar	Creature	U
31930	LRW	182	2	\N	\N	\N	t	\N	\N	Inner-Flame Igniter	Creature	U
31802	SHM	166	1	\N	t	t	\N	\N	\N	Helm of the Ghastlord	Enchantment	C
31596	ZEN	145	2	\N	\N	\N	t	\N	\N	Ruinous Minotaur	Creature	C
31907	THS	171	1	\N	\N	\N	\N	t	\N	Pheres-Band Centaurs	Creature	C
31635	THS	152	1	\N	\N	\N	\N	t	\N	Boon Satyr	Enchantment Creature	R
31739	THS	159	1	\N	\N	\N	\N	t	\N	Hunt the Hunter	Sorcery	U
31753	THS	160	1	\N	\N	\N	\N	t	\N	Karametra's Acolyte	Creature	U
31695	THS	156	1	\N	\N	\N	\N	t	\N	Defend the Hearth	Instant	C
31719	SOM	166	2	\N	\N	\N	\N	\N	\N	Ichorclaw Myr	Artifact Creature	C
31330	THS	134	1	\N	\N	\N	t	\N	\N	Priest of Iroas	Creature	C
32201	THS	192	2	\N	\N	\N	t	t	\N	Destructive Revelry	Instant	U
36969	NEO	313	0	t	\N	\N	\N	\N	\N	Seven-Tail Mentor	Creature	C
31306	BOK	161	0	\N	\N	\N	\N	\N	\N	Slumbering Tora	Artifact	R
31331	EVE	157	0	\N	t	\N	\N	t	\N	Overbeing of Myth	Creature	R
31346	GTC	148	0	t	\N	\N	t	\N	\N	Boros Charm	Instant	U
31386	GTC	150	0	t	\N	t	\N	\N	\N	Cartel Aristocrat	Creature	U
31390	EVE	160	0	\N	t	\N	\N	t	\N	Slippery Bogle	Creature	C
31405	GTC	151	0	\N	\N	\N	t	t	\N	Clan Defiance	Sorcery	R
31406	MID	139	0	\N	\N	\N	t	\N	\N	Fangblade Brigand // Fangblade Eviscerator	Creature	U
31430	RTR	143	0	t	\N	\N	\N	t	\N	Armada Wurm	Creature	M
31431	ZEN	135	0	\N	\N	\N	t	\N	\N	Lavaball Trap	Instant	R
31444	EVE	163	0	\N	t	\N	\N	t	\N	Sturdy Hatchling	Creature	U
31459	GTC	154	0	\N	t	t	\N	\N	\N	Dimir Charm	Instant	U
31495	GTC	156	0	\N	\N	\N	t	t	\N	Domri Rade	Lgd. Planeswalker	M
31500	ISD	155	0	\N	\N	\N	t	\N	\N	Past in Flames	Sorcery	M
31511	CHK	158	0	\N	\N	\N	t	\N	\N	Blind with Anger	Instant	U
31534	RAV	151	0	\N	\N	\N	t	\N	\N	War-Torch Goblin	Creature	C
31537	MRD	156	0	\N	\N	\N	\N	\N	\N	Clockwork Vorrac	Artifact Creature	U
31540	LRW	155	0	\N	\N	\N	t	\N	\N	Boggart Shenanigans	Tribal Enchantment	U
31543	GTC	159	0	\N	t	t	\N	\N	\N	Duskmantle Seer	Creature	M
31563	ISD	159	0	\N	\N	\N	t	\N	\N	Reckless Waif // Merciless Predator	Creature	U
31566	ZEN	143	0	\N	\N	\N	t	\N	\N	Pyromancer Ascension	Enchantment	R
31569	SOM	156	0	\N	\N	\N	\N	\N	\N	Glint Hawk Idol	Artifact	C
31577	ALA	153	0	\N	t	t	\N	\N	\N	Agony Warp	Instant	C
31580	RTR	152	0	\N	\N	t	\N	t	\N	Corpsejack Menace	Creature	R
31588	GTC	162	0	\N	t	\N	\N	t	\N	Fathom Mage	Creature	R
31979	ISD	188	2	\N	\N	\N	\N	t	\N	Hollowhenge Scavenger	Creature	U
31625	RTR	155	0	t	t	\N	\N	\N	\N	Detention Sphere	Enchantment	R
31626	ZEN	147	0	\N	\N	\N	t	\N	\N	Seismic Shudder	Instant	C
31633	GTC	165	0	t	\N	\N	t	\N	\N	Foundry Champion	Creature	R
31653	ISD	165	0	\N	\N	\N	t	\N	\N	Tormented Pariah // Rampaging Werewolf	Creature	C
31656	ZEN	149	0	\N	\N	\N	t	\N	\N	Slaughter Cry	Instant	C
31659	SOM	162	0	\N	\N	\N	\N	\N	\N	Grafted Exoskeleton	Artifact	U
31690	LRW	165	0	\N	\N	\N	t	\N	\N	Flamekin Bladewhirl	Creature	U
31700	RTR	160	0	\N	t	\N	t	\N	\N	Essence Backlash	Instant	C
31711	EVE	180	0	\N	\N	\N	\N	\N	\N	Twilight Mire	Land	R
31728	RAV	164	0	\N	\N	\N	\N	t	\N	Fists of Ironwood	Enchantment	C
31730	ZEN	154	0	\N	\N	\N	t	\N	\N	Warren Instigator	Creature	M
31731	MRD	169	0	\N	\N	\N	\N	\N	\N	Extraplanar Lens	Artifact	R
31734	LRW	168	0	\N	\N	\N	t	\N	\N	Flamekin Spitfire	Creature	U
31737	GTC	172	0	\N	t	\N	\N	t	\N	Hydroform	Instant	C
31662	CHK	168	2	\N	\N	\N	t	\N	\N	Glacial Ray	Instant	C
31761	SOM	169	0	\N	\N	\N	\N	\N	\N	Kuldotha Forgemaster	Artifact Creature	R
31764	CHK	175	0	\N	\N	\N	t	\N	\N	Kiki-Jiki, Mirror Breaker	Lgd. Creature	R
31787	MRD	173	0	\N	\N	\N	\N	\N	\N	Galvanic Key	Artifact	C
31789	SOM	171	0	\N	\N	\N	\N	\N	\N	Liquimetal Coating	Artifact	U
31813	RTR	168	0	t	\N	\N	\N	t	\N	Heroes' Reunion	Instant	U
31816	SHM	167	0	\N	t	t	\N	\N	\N	Inkfathom Infiltrator	Creature	U
31817	SOM	173	0	\N	\N	\N	\N	\N	\N	Lux Cannon	Artifact	M
31824	ALA	170	0	t	\N	\N	t	t	\N	Godsire	Creature	M
31864	MID	169	0	\N	\N	\N	\N	t	\N	Bird Admirer // Wing Shredder	Creature	C
31885	MRD	180	0	\N	\N	\N	\N	\N	\N	Gold Myr	Artifact Creature	C
31887	SOM	178	0	\N	\N	\N	\N	\N	\N	Moriok Replica	Artifact Creature	C
31888	LRW	179	0	\N	\N	\N	t	\N	\N	Incendiary Command	Sorcery	R
31889	ROE	177	0	\N	\N	\N	\N	t	\N	Bear Umbra	Enchantment	R
31895	ISD	182	0	\N	\N	\N	\N	t	\N	Gatstaf Shepherd // Gatstaf Howler	Creature	U
31905	GTC	184	0	t	\N	\N	t	\N	\N	Ordruun Veteran	Creature	U
31906	MID	172	0	\N	\N	\N	\N	t	\N	Briarbridge Tracker	Creature	R
31925	RTR	176	0	\N	\N	t	\N	t	\N	Korozda Guildmage	Creature	U
31926	ZEN	168	0	\N	\N	\N	\N	t	\N	Lotus Cobra	Creature	M
31952	RAV	180	0	\N	\N	\N	\N	t	\N	Root-Kin Ally	Creature	U
31953	RTR	178	0	t	\N	\N	\N	t	\N	Loxodon Smiter	Creature	R
31962	MID	176	0	\N	\N	\N	\N	t	\N	Clear Shot	Instant	U
31982	ZEN	172	0	\N	\N	\N	\N	t	\N	Oracle of Mul Daya	Creature	R
31985	SOM	185	0	\N	\N	\N	\N	\N	\N	Necropede	Artifact Creature	U
31988	CHK	191	0	\N	\N	\N	t	\N	\N	Stone Rain	Sorcery	C
31992	ALA	182	0	\N	t	t	t	\N	\N	Prince of Thralls	Creature	M
32009	RTR	182	0	\N	t	\N	t	\N	\N	Nivix Guildmage	Creature	U
32012	SHM	181	0	\N	\N	t	t	\N	\N	Ashenmoor Liege	Creature	R
32013	SOM	187	0	\N	\N	\N	\N	\N	\N	Nihil Spellbomb	Artifact	C
32020	ALA	184	0	t	\N	\N	\N	t	\N	Qasali Ambusher	Creature	U
32033	THS	180	0	\N	\N	\N	\N	t	\N	Sylvan Caryatid	Creature	R
32074	MID	184	0	\N	\N	\N	\N	t	\N	Duel for Dominance	Instant	C
32077	ISD	195	0	\N	\N	\N	\N	t	\N	Moonmist	Instant	C
32087	GTC	197	0	t	\N	\N	t	\N	\N	Skyknight Legionnaire	Creature	C
31931	ROE	180	1	\N	\N	\N	\N	t	\N	Bramblesnap	Creature	U
31706	ROE	164	1	\N	\N	\N	t	\N	\N	Spawning Breath	Instant	C
31788	SHM	165	1	\N	t	t	\N	\N	\N	Gravelgill Duo	Creature	C
32089	THS	184	1	\N	\N	\N	\N	t	\N	Warriors' Lesson	Instant	U
32047	THS	181	3	\N	\N	\N	\N	t	\N	Time to Feed	Sorcery	C
32061	THS	182	1	\N	\N	\N	\N	t	\N	Voyaging Satyr	Creature	C
31886	SHM	172	1	\N	t	t	\N	\N	\N	Oona, Queen of the Fae	Lgd. Creature	R
31977	THS	176	1	\N	\N	\N	\N	t	\N	Savage Surge	Instant	C
31851	THS	167	1	\N	\N	\N	\N	t	\N	Nylea's Disciple	Creature	C
31879	THS	169	1	\N	\N	\N	\N	t	\N	Nylea's Presence	Enchantment	C
31514	THS	144	1	\N	\N	\N	t	\N	\N	Titan of Eternal Fire	Creature	R
31837	THS	166	1	\N	\N	\N	\N	t	\N	Nylea, God of the Hunt	Lgd. Enchantment Creature	M
31370	THS	136	1	\N	\N	\N	t	\N	\N	Purphoros's Emissary	Enchantment Creature	U
31389	THS	137	1	\N	\N	\N	t	\N	\N	Rage of Purphoros	Sorcery	C
31479	THS	142	2	\N	\N	\N	t	\N	\N	Stoneshock Giant	Creature	U
31991	THS	177	2	\N	\N	\N	\N	t	\N	Sedge Scorpion	Creature	C
31686	ZEN	151	1	\N	\N	\N	t	\N	\N	Torch Slinger	Creature	C
31755	ISD	172	4	\N	\N	\N	\N	t	\N	Bramblecrush	Sorcery	U
31572	CHK	162	3	\N	\N	\N	t	\N	\N	Crushing Pain	Instant	C
31932	CHK	187	1	\N	\N	\N	t	\N	\N	Sideswipe	Instant	U
36970	NEO	314	0	t	\N	\N	\N	\N	\N	Sky-Blessed Samurai	Enchantment Creature	U
31353	ISD	147	0	\N	\N	\N	t	\N	\N	Heretic's Punishment	Enchantment	R
31355	RTR	139	0	\N	\N	\N	\N	t	\N	Wild Beastmaster	Creature	R
31464	ISD	153	0	\N	\N	\N	t	\N	\N	Night Revelers	Creature	C
31467	ZEN	137	0	\N	\N	\N	t	\N	\N	Mark of Mutiny	Sorcery	U
31713	ISD	169	1	\N	\N	\N	\N	t	\N	Ambush Viper	Creature	C
31475	SOK	162	0	\N	\N	\N	\N	\N	\N	Mikokoro, Center of the Sea	Lgd. Land	R
31504	MRD	154	0	\N	\N	\N	\N	\N	\N	Clockwork Condor	Artifact Creature	C
31517	ISD	156	0	\N	\N	\N	t	\N	\N	Pitchburn Devils	Creature	C
31526	SOK	165	0	\N	\N	\N	\N	\N	\N	Tomb of Urami	Lgd. Land	R
31529	MID	146	0	\N	\N	\N	t	\N	\N	Light Up the Night	Sorcery	R
31548	ISD	158	0	\N	\N	\N	t	\N	\N	Rakish Heir	Creature	U
31553	SHM	149	0	t	t	\N	\N	\N	\N	Somnomancer	Creature	C
31554	SOM	155	0	\N	\N	\N	\N	\N	\N	Flight Spellbomb	Artifact	C
31597	MRD	160	0	\N	\N	\N	\N	\N	\N	Culling Scales	Artifact	R
31622	ALA	156	0	\N	\N	t	t	\N	\N	Blightning	Sorcery	C
31634	MID	153	0	\N	\N	\N	t	\N	\N	Pack's Betrayal	Sorcery	C
31657	MRD	164	0	\N	\N	\N	\N	\N	\N	Dross Scorpion	Artifact Creature	C
31658	SHM	156	0	t	t	\N	\N	\N	\N	Worldpurge	Sorcery	R
31663	GTC	167	0	\N	\N	\N	t	t	\N	Ghor-Clan Rampager	Creature	U
31681	EVE	178	0	\N	\N	\N	\N	\N	\N	Rugged Prairie	Land	R
31703	SHM	159	0	\N	t	t	\N	\N	\N	Dire Undercurrents	Enchantment	R
31704	SOM	165	0	\N	\N	\N	\N	\N	\N	Horizon Spellbomb	Artifact	C
31722	CHK	172	0	\N	\N	\N	t	\N	\N	Honden of Infinite Rage	Lgd. Enchantment	U
31723	GTC	171	0	t	\N	t	\N	\N	\N	High Priest of Penance	Creature	R
31742	RAV	165	0	\N	\N	\N	\N	t	\N	Gather Courage	Instant	C
31745	MRD	170	0	\N	\N	\N	\N	\N	\N	Farsight Mask	Artifact	U
31749	ROE	167	0	\N	\N	\N	t	\N	\N	Surreal Memoir	Sorcery	U
31841	RTR	170	0	\N	t	\N	t	\N	\N	Hypersonic Dragon	Creature	R
31842	ZEN	162	0	\N	\N	\N	\N	t	\N	Gigantiform	Enchantment	R
31849	GTC	180	0	\N	t	\N	\N	t	\N	Mystic Genesis	Instant	R
31866	ALA	173	0	t	t	\N	\N	\N	\N	Hindering Light	Instant	C
31871	MRD	179	0	\N	\N	\N	\N	\N	\N	Goblin War Wagon	Artifact Creature	C
31872	SHM	171	0	\N	t	t	\N	\N	\N	Merrow Grimeblotter	Creature	U
31877	GTC	182	0	t	\N	t	\N	\N	\N	Obzedat, Ghost Council	Lgd. Creature	M
31880	ALA	174	0	\N	t	\N	\N	t	\N	Jhessian Infiltrator	Creature	U
31890	CHK	184	0	\N	\N	\N	t	\N	\N	Ronin Houndmaster	Creature	C
31892	MID	171	0	\N	\N	\N	\N	t	\N	Bramble Armor	Artifact	C
31912	ZEN	167	0	\N	\N	\N	\N	t	\N	Khalni Heart Expedition	Enchantment	C
31916	LRW	181	0	\N	\N	\N	t	\N	\N	Inner-Flame Acolyte	Creature	C
31921	THS	172	0	\N	\N	\N	\N	t	\N	Polukranos, World Eater	Lgd. Creature	M
31936	ALA	178	0	\N	\N	t	t	t	\N	Kresh the Bloodbraided	Lgd. Creature	M
31948	MID	175	0	\N	\N	\N	\N	t	\N	Candlelit Cavalry	Creature	C
31976	MID	177	0	\N	\N	\N	\N	t	\N	Consuming Blob	Creature	M
31983	MRD	187	0	\N	\N	\N	\N	\N	\N	Iron Myr	Artifact Creature	C
31984	SHM	179	0	\N	t	t	\N	\N	\N	Wasp Lancer	Creature	U
31989	GTC	190	0	t	\N	t	\N	\N	\N	Purge the Profane	Sorcery	C
31994	RAV	183	0	\N	\N	\N	\N	t	\N	Siege Wurm	Creature	C
32002	CHK	192	0	\N	\N	\N	t	\N	\N	Strange Inversion	Instant	U
32022	RAV	185	0	\N	\N	\N	\N	t	\N	Sundering Vitae	Instant	C
32025	MRD	190	0	\N	\N	\N	\N	\N	\N	Krark's Thumb	Lgd. Artifact	R
32028	LRW	189	0	\N	\N	\N	t	\N	\N	Smokebraider	Creature	C
32031	GTC	193	0	\N	t	\N	\N	t	\N	Shambleshark	Creature	C
32049	ISD	193	0	\N	\N	\N	\N	t	\N	Mayor of Avabruck // Howlpack Alpha	Creature	R
32059	GTC	195	0	\N	t	\N	\N	t	\N	Simic Charm	Instant	U
32076	ALA	188	0	t	t	\N	\N	t	\N	Rhox War Monk	Creature	U
32088	MID	185	0	\N	\N	\N	\N	t	\N	Eccentric Farmer	Creature	C
32091	ISD	196	0	\N	\N	\N	\N	t	\N	Mulch	Sorcery	C
32124	SHM	189	0	\N	\N	t	t	\N	\N	Grief Tyrant	Creature	U
32148	RAV	194	0	t	\N	\N	t	\N	\N	Brightflame	Sorcery	R
32149	RTR	192	0	\N	\N	t	t	\N	\N	Rix Maadi Guildmage	Creature	U
32157	GTC	202	0	t	\N	\N	t	\N	\N	Truefire Paladin	Creature	U
32204	RAV	198	0	t	\N	\N	\N	t	\N	Congregation at Dawn	Instant	U
32207	MRD	203	0	\N	\N	\N	\N	\N	\N	Mask of Memory	Artifact	U
32210	LRW	202	0	\N	\N	\N	\N	t	\N	Cloudthresher	Creature	R
32119	ISD	198	1	\N	\N	\N	\N	t	\N	Orchard Spirit	Creature	C
32317	RTR	204	0	\N	\N	t	\N	t	\N	Treasured Find	Sorcery	U
32318	ZEN	196	0	\N	\N	\N	\N	\N	\N	Blade of the Bloodchief	Artifact	R
32325	GTC	214	0	\N	t	\N	\N	t	\N	Bioshift	Instant	C
32341	THS	202	0	t	\N	t	\N	\N	\N	Sentry of the Underworld	Creature	U
32346	ZEN	198	0	\N	\N	\N	\N	\N	\N	Carnage Altar	Artifact	U
32349	SOM	211	0	\N	\N	\N	\N	\N	\N	Throne of Geth	Artifact	U
32352	CHK	217	0	\N	\N	\N	\N	t	\N	Jugan, the Rising Star	Lgd. Creature	R
31363	ROE	143	1	\N	\N	\N	t	\N	\N	Explosive Revelation	Sorcery	U
32125	SOM	195	1	\N	\N	\N	\N	\N	\N	Prototype Portal	Artifact	R
31680	THS	155	2	\N	\N	\N	\N	t	\N	Commune with the Gods	Sorcery	C
31884	ZEN	165	1	\N	\N	\N	\N	t	\N	Harrow	Instant	C
31505	SHM	146	1	t	t	\N	\N	\N	\N	Puresight Merrow	Creature	U
31508	LRW	153	1	\N	\N	\N	t	\N	\N	Blind-Spot Giant	Creature	C
31748	LRW	169	1	\N	\N	\N	t	\N	\N	Giant Harbinger	Creature	U
31963	THS	175	1	\N	\N	\N	\N	t	\N	Satyr Piper	Creature	U
32005	THS	178	1	\N	\N	\N	\N	t	\N	Shredding Winds	Instant	C
31605	THS	150	1	\N	\N	\N	\N	t	\N	Arbor Colossus	Creature	R
32075	THS	183	1	\N	\N	\N	\N	t	\N	Vulpine Goliath	Creature	C
31702	MRD	167	1	\N	\N	\N	\N	\N	\N	Elf Replica	Artifact Creature	C
32103	THS	185	1	t	\N	\N	t	\N	\N	Akroan Hoplite	Creature	U
32355	THS	203	1	\N	t	t	\N	\N	\N	Shipwreck Singer	Creature	U
31893	THS	170	2	\N	\N	\N	\N	t	\N	Ordeal of Nylea	Enchantment	U
31360	SOM	144	4	\N	\N	\N	\N	\N	\N	Contagion Clasp	Artifact	U
32128	CHK	201	1	\N	\N	\N	\N	t	\N	Azusa, Lost but Seeking	Lgd. Creature	R
32100	CHK	199	1	\N	\N	\N	t	\N	\N	Yamabushi's Storm	Sorcery	C
31602	CHK	164	3	\N	\N	\N	t	\N	\N	Devouring Rage	Instant	C
31557	CHK	161	1	\N	\N	\N	t	\N	\N	Brutal Deceiver	Creature	C
31652	ALA	158	1	\N	\N	\N	t	t	\N	Branching Bolt	Instant	C
36971	NEO	315	0	t	\N	\N	\N	\N	\N	Sunblade Samurai	Enchantment Creature	C
31412	RTR	142	0	t	t	\N	\N	\N	\N	Archon of the Triumvirate	Creature	R
31414	MRD	149	0	\N	\N	\N	\N	\N	\N	Cathodion	Artifact Creature	U
31415	SHM	141	0	t	t	\N	\N	\N	\N	Glamer Spinners	Creature	U
31422	CHK	153	0	\N	\N	\N	t	\N	\N	Akki Lavarunner // Tok-Tok, Volcano Born	Creature	R
31423	GTC	152	0	\N	t	t	\N	\N	\N	Consuming Aberration	Creature	R
31448	RTR	144	0	\N	\N	t	t	\N	\N	Auger Spree	Instant	C
31449	ZEN	136	0	\N	\N	\N	t	\N	\N	Magma Rift	Sorcery	C
31457	SOK	161	0	\N	\N	\N	\N	\N	\N	Wine of Blood and Iron	Artifact	R
31486	MRD	153	0	\N	\N	\N	\N	\N	\N	Clockwork Beetle	Artifact Creature	C
31487	SHM	145	0	t	t	\N	\N	\N	\N	Plumeveil	Creature	U
31494	CHK	157	0	\N	\N	\N	t	\N	\N	Ben-Ben, Akki Hermit	Lgd. Creature	R
31497	THS	143	0	\N	\N	\N	t	\N	\N	Stormbreath Dragon	Creature	M
31498	EVE	166	0	\N	\N	\N	\N	\N	\N	Altar Golem	Artifact Creature	R
31519	RTR	148	0	t	\N	\N	\N	t	\N	Centaur Healer	Creature	C
31522	SHM	147	0	t	t	\N	\N	\N	\N	Repel Intruders	Instant	U
31523	SOM	153	0	\N	\N	\N	\N	\N	\N	Echo Circlet	Artifact	C
31532	ALA	150	0	\N	\N	\N	\N	t	\N	Spearbreaker Behemoth	Creature	R
31561	EVE	170	0	\N	\N	\N	\N	\N	\N	Jawbone Skulkin	Artifact Creature	C
31574	MID	149	0	\N	\N	\N	t	\N	\N	Moonveil Regent	Creature	M
31578	ISD	160	0	\N	\N	\N	t	\N	\N	Riot Devils	Creature	C
31579	RAV	154	0	\N	\N	\N	\N	t	\N	Bramble Elemental	Creature	C
31592	ALA	154	0	t	\N	\N	t	\N	\N	Ajani Vengeant	Lgd. Planeswalker	M
31610	RTR	154	0	t	\N	\N	\N	t	\N	Coursers' Accord	Sorcery	C
31614	SOM	159	0	\N	\N	\N	\N	\N	\N	Golem Artisan	Artifact Creature	U
31619	MID	152	0	\N	\N	\N	t	\N	\N	Obsessive Astronomer	Creature	U
31637	ALA	157	0	\N	\N	t	t	\N	\N	Blood Cultist	Creature	U
31649	MID	154	0	\N	\N	\N	t	\N	\N	Play with Fire	Instant	U
31666	EVE	177	0	\N	\N	\N	\N	\N	\N	Flooded Grove	Land	R
31669	RAV	160	0	\N	\N	\N	\N	t	\N	Dryad's Caress	Instant	C
31670	RTR	158	0	\N	\N	t	\N	t	\N	Dreg Mangler	Creature	U
31675	LRW	164	0	\N	\N	\N	t	\N	\N	Fire-Belly Changeling	Creature	C
32105	ISD	197	1	\N	\N	\N	\N	t	\N	Naturalize	Instant	C
31685	RTR	159	0	\N	t	\N	t	\N	\N	Epic Experiment	Sorcery	M
31691	ROE	163	0	\N	\N	\N	t	\N	\N	Soulsurge Elemental	Creature	U
31699	RAV	162	0	\N	\N	\N	\N	t	\N	Elvish Skysweeper	Creature	C
31707	CHK	171	0	\N	\N	\N	t	\N	\N	Hearth Kami	Creature	C
31729	RTR	162	0	\N	t	\N	t	\N	\N	Firemind's Foresight	Instant	R
31733	SOM	167	0	\N	\N	\N	\N	\N	\N	Infiltration Lens	Artifact	U
31738	MID	160	0	\N	\N	\N	t	\N	\N	Spellrune Painter // Spellrune Howler	Creature	U
31759	MRD	171	0	\N	\N	\N	\N	\N	\N	Fireshrieker	Artifact	U
31760	SHM	163	0	\N	t	t	\N	\N	\N	Glen Elendra Liege	Creature	R
31765	GTC	174	0	\N	t	t	\N	\N	\N	Lazav, Dimir Mastermind	Lgd. Creature	M
31786	ZEN	158	0	\N	\N	\N	\N	t	\N	Beast Hunt	Sorcery	C
31790	LRW	172	0	\N	\N	\N	t	\N	\N	Goatnapper	Creature	U
31800	ZEN	159	0	\N	\N	\N	\N	t	\N	Beastmaster Ascension	Enchantment	R
31804	LRW	173	0	\N	\N	\N	t	\N	\N	Hamletback Goliath	Creature	R
31811	ISD	176	0	\N	\N	\N	\N	t	\N	Daybreak Ranger // Nightfall Predator	Creature	R
31820	CHK	179	0	\N	\N	\N	t	\N	\N	Mana Seism	Sorcery	U
31821	GTC	178	0	\N	t	t	\N	\N	\N	Mind Grind	Sorcery	R
31840	RAV	172	0	\N	\N	\N	\N	t	\N	Life from the Loam	Sorcery	R
31843	MRD	177	0	\N	\N	\N	\N	\N	\N	Goblin Dirigible	Artifact Creature	U
31846	LRW	176	0	\N	\N	\N	t	\N	\N	Hostility	Creature	R
31847	ROE	174	0	\N	\N	\N	\N	t	\N	Ancient Stirrings	Sorcery	C
31868	RAV	174	0	\N	\N	\N	\N	t	\N	Nullmage Shepherd	Creature	U
31869	RTR	172	0	\N	t	\N	t	\N	\N	Izzet Charm	Instant	U
31875	ROE	176	0	\N	\N	\N	\N	t	\N	Awakening Zone	Enchantment	R
31897	RTR	174	0	\N	\N	t	\N	t	\N	Jarad, Golgari Lich Lord	Lgd. Creature	M
31903	ROE	178	0	\N	\N	\N	\N	t	\N	Beastbreaker of Bala Ged	Creature	U
31908	ALA	176	0	\N	t	t	t	\N	\N	Kederekt Creeper	Creature	C
31923	ISD	184	0	\N	\N	\N	\N	t	\N	Grave Bramble	Creature	C
31934	MID	174	0	\N	\N	\N	\N	t	\N	Burly Breaker // Dire-Strain Demolisher	Creature	U
31950	ALA	179	0	t	\N	\N	t	t	\N	Mayael the Anima	Lgd. Creature	M
31955	MRD	185	0	\N	\N	\N	\N	\N	\N	Hematite Golem	Artifact Creature	C
31958	LRW	184	0	\N	\N	\N	t	\N	\N	Lowland Oaf	Creature	C
32037	RTR	184	0	\N	\N	t	t	\N	\N	Rakdos Charm	Instant	U
32045	GTC	194	0	\N	\N	\N	t	t	\N	Signal the Clans	Instant	R
32069	SOM	191	0	\N	\N	\N	\N	\N	\N	Panic Spellbomb	Artifact	C
32072	CHK	197	0	\N	\N	\N	t	\N	\N	Unnatural Speed	Instant	C
32079	RTR	187	0	\N	\N	t	t	\N	\N	Rakdos, Lord of Riots	Lgd. Creature	M
32085	ROE	191	0	\N	\N	\N	\N	t	\N	Kazandu Tuskcaller	Creature	R
32093	RTR	188	0	\N	\N	t	t	\N	\N	Rakdos's Return	Sorcery	M
32113	ROE	193	0	\N	\N	\N	\N	t	\N	Kozilek's Predator	Creature	C
32114	CHK	200	0	\N	\N	\N	t	\N	\N	Zo-Zu the Punisher	Lgd. Creature	R
32115	GTC	199	0	t	\N	\N	t	\N	\N	Spark Trooper	Creature	R
32133	ISD	199	0	\N	\N	\N	\N	t	\N	Parallel Lives	Enchantment	R
32138	SHM	190	0	\N	\N	t	t	\N	\N	Kulrath Knight	Creature	U
32139	SOM	196	0	\N	\N	\N	\N	\N	\N	Ratchet Bomb	Artifact	R
32038	ZEN	176	3	\N	\N	\N	\N	t	\N	Primal Bellow	Instant	U
31959	ROE	182	1	\N	\N	\N	\N	t	\N	Daggerback Basilisk	Creature	C
31929	SOM	181	1	\N	\N	\N	\N	\N	\N	Myr Galvanizer	Artifact Creature	U
32097	SOM	193	2	\N	\N	\N	\N	\N	\N	Platinum Emperion	Artifact Creature	M
32096	SHM	187	1	\N	\N	t	t	\N	\N	Fists of the Demigod	Enchantment	C
31732	SHM	161	1	\N	t	t	\N	\N	\N	Fate Transfer	Instant	C
31613	SHM	153	1	t	t	\N	\N	\N	\N	Thistledown Liege	Creature	R
31928	SHM	175	1	\N	t	t	\N	\N	\N	Scarscale Ritual	Sorcery	C
31418	LRW	148	1	\N	\N	\N	t	\N	\N	Adder-Staff Boggart	Creature	C
31874	LRW	178	1	\N	\N	\N	t	\N	\N	Incandescent Soulstoke	Creature	R
31710	THS	157	1	\N	\N	\N	\N	t	\N	Fade into Antiquity	Sorcery	C
31545	THS	146	1	\N	\N	\N	t	\N	\N	Two-Headed Cerberus	Creature	C
32066	ZEN	178	1	\N	\N	\N	\N	t	\N	Rampaging Baloths	Creature	M
32063	ISD	194	1	\N	\N	\N	\N	t	\N	Moldgraf Monstrosity	Creature	R
31481	ALA	147	1	\N	\N	\N	\N	t	\N	Savage Hunger	Enchantment	C
31754	ALA	165	1	t	t	\N	\N	\N	\N	Deft Duelist	Creature	C
36972	NEO	316	0	t	\N	\N	\N	\N	\N	The Wandering Emperor	Lgd. Planeswalker	M
32067	MRD	193	1	\N	\N	\N	\N	\N	\N	Leonin Scimitar	Artifact	C
32034	ALA	185	0	t	t	\N	\N	t	\N	Rafiq of the Many	Lgd. Creature	M
32046	MID	182	0	\N	\N	\N	\N	t	\N	Defend the Celestus	Instant	U
32062	ALA	187	0	t	\N	\N	t	t	\N	Realm Razer	Creature	R
32073	GTC	196	0	\N	\N	\N	t	t	\N	Skarrg Guildmage	Creature	U
32078	RAV	189	0	\N	\N	\N	\N	t	\N	Vinelasher Kudzu	Creature	R
32092	RAV	190	0	t	\N	\N	t	\N	\N	Agrus Kos, Wojek Veteran	Lgd. Creature	R
32099	ROE	192	0	\N	\N	\N	\N	t	\N	Khalni Hydra		M
32101	GTC	198	0	\N	t	t	\N	\N	\N	Soul Ransom	Enchantment	R
32102	MID	186	0	\N	\N	\N	\N	t	\N	Harvesttide Sentry	Creature	C
32120	RAV	192	0	\N	\N	t	\N	t	\N	Bloodbond March	Enchantment	R
32126	LRW	196	0	\N	\N	\N	t	\N	\N	Wild Ricochet	Instant	R
32219	RTR	197	0	\N	\N	t	t	\N	\N	Slaughter Games	Sorcery	R
32227	GTC	207	0	\N	t	t	\N	\N	\N	Whispering Madness	Sorcery	R
32244	ALA	200	0	\N	t	\N	t	\N	\N	Swerve	Instant	U
32249	MRD	206	0	\N	\N	\N	\N	\N	\N	Mindslaver	Lgd. Artifact	R
32263	MRD	207	0	\N	\N	\N	\N	\N	\N	Mindstorm Crown	Artifact	U
32264	SHM	199	0	\N	\N	t	t	\N	\N	Torrent of Souls	Sorcery	U
32265	SOM	205	0	\N	\N	\N	\N	\N	\N	Steel Hellkite	Artifact Creature	R
32277	MRD	208	0	\N	\N	\N	\N	\N	\N	Mirror Golem	Artifact Creature	U
32279	SOM	206	0	\N	\N	\N	\N	\N	\N	Strata Scythe	Artifact	R
32288	RAV	204	0	\N	\N	t	\N	t	\N	Drooling Groodion	Creature	U
32295	ROE	206	0	\N	\N	\N	\N	t	\N	Realms Uncharted	Instant	R
32298	MID	200	0	\N	\N	\N	\N	t	\N	Storm the Festival	Sorcery	R
32314	ALA	205	0	t	t	t	\N	\N	\N	Tower Gargoyle	Artifact Creature	U
32326	MID	202	0	\N	\N	\N	\N	t	\N	Timberland Guide	Creature	C
32330	RAV	207	0	t	\N	\N	\N	t	\N	Glare of Subdual	Enchantment	R
32331	RTR	205	0	\N	\N	t	\N	t	\N	Trestle Troll	Creature	C
32360	ZEN	199	0	\N	\N	\N	\N	\N	\N	Eldrazi Monument	Artifact	M
32364	LRW	213	0	\N	\N	\N	\N	t	\N	Garruk Wildspeaker	Lgd. Planeswalker	R
32373	RTR	208	0	\N	\N	t	\N	t	\N	Vraska the Unseen	Lgd. Planeswalker	M
32375	MRD	215	0	\N	\N	\N	\N	\N	\N	Myr Retriever	Artifact Creature	U
32377	SOM	213	0	\N	\N	\N	\N	\N	\N	Trigon of Corruption	Artifact	U
32384	ALA	210	0	\N	\N	\N	\N	\N	\N	Lich's Mirror	Artifact	M
32411	THS	207	0	\N	\N	t	t	\N	\N	Tymaret, the Murder King	Lgd. Creature	R
32424	MID	209	0	t	\N	\N	t	\N	\N	Angelfire Ignition	Sorcery	R
32427	ISD	220	0	\N	\N	\N	\N	\N	\N	Creepy Doll	Artifact Creature	R
32430	ZEN	204	0	\N	\N	\N	\N	\N	\N	Hedron Scrabbler	Artifact Creature	C
32433	SOM	217	0	\N	\N	\N	\N	\N	\N	Trigon of Thought	Artifact	U
32436	CHK	223	0	\N	\N	\N	\N	t	\N	Kodama of the South Tree	Lgd. Creature	R
32443	RTR	213	0	\N	\N	t	\N	t	\N	Deathrite Shaman	Creature	R
32449	ROE	217	0	\N	\N	\N	\N	\N	\N	Enatu Golem	Artifact Creature	U
32457	RTR	214	0	t	\N	\N	\N	t	\N	Dryad Militant	Creature	U
32463	ROE	218	0	\N	\N	\N	\N	\N	\N	Hedron Matrix	Artifact	R
32468	ALA	216	0	\N	\N	\N	\N	\N	\N	Obelisk of Naya	Artifact	C
32483	ISD	224	0	\N	\N	\N	\N	\N	\N	Ghoulcaller's Bell	Artifact	C
32488	SHM	215	0	\N	\N	\N	t	t	\N	Runes of the Deus	Enchantment	C
32489	SOM	221	0	\N	\N	\N	\N	\N	\N	Vulshok Replica	Artifact Creature	C
32491	ROE	220	0	\N	\N	\N	\N	\N	\N	Ogre's Cleaver	Artifact	U
32492	CHK	227	0	\N	\N	\N	\N	t	\N	Matsu-Tribe Decoy	Creature	C
32512	RAV	220	0	\N	t	t	\N	\N	\N	Psychic Drain	Sorcery	U
32515	MRD	225	0	\N	\N	\N	\N	\N	\N	Pearl Shard	Artifact	U
32518	LRW	224	0	\N	\N	\N	\N	t	\N	Kithkin Mourncaller	Creature	U
32693	ISD	239	0	\N	\N	\N	\N	\N	\N	Gavony Township	Land	R
32597	RTR	224	0	t	t	\N	\N	\N	\N	Vassal Soul	Creature	C
32598	ZEN	216	0	\N	\N	\N	\N	\N	\N	Kabira Crossroads	Land	C
32605	GTC	234	0	\N	\N	\N	\N	\N	\N	Prophetic Prism	Artifact	C
32627	MRD	233	0	\N	\N	\N	\N	\N	\N	Quicksilver Fountain	Artifact	R
32628	SHM	225	0	t	\N	\N	\N	t	\N	Dawnglow Infusion	Sorcery	U
32633	GTC	236	0	\N	\N	\N	\N	\N	\N	Riot Gear	Artifact	C
32639	RTR	227	0	\N	\N	\N	\N	\N	\N	Civic Saber	Artifact	U
32647	GTC	237	0	\N	\N	\N	\N	\N	\N	Simic Keyrune	Artifact	U
32649	THS	224	0	\N	\N	\N	\N	\N	\N	Temple of Abandon	Land	R
32667	RTR	229	0	\N	\N	\N	\N	\N	\N	Golgari Keyrune	Artifact	U
32676	MID	227	0	t	t	\N	\N	\N	\N	Hallowed Respite	Sorcery	R
32698	SHM	230	0	t	\N	\N	\N	t	\N	Medicine Runner	Creature	C
32702	CHK	242	0	\N	\N	\N	\N	t	\N	Shisato, Whispering Hunter	Lgd. Creature	R
32721	ISD	241	0	\N	\N	\N	\N	\N	\N	Hinterland Harbor	Land	R
32727	SOM	238	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32730	CHK	244	0	\N	\N	\N	\N	t	\N	Sosuke, Son of Seshiro	Lgd. Creature	U
32752	ZEN	227	0	\N	\N	\N	\N	\N	\N	Turntimber Grove	Land	C
32756	LRW	241	0	\N	\N	\N	\N	t	\N	Warren-Scourge Elf	Creature	C
32763	ISD	244	0	\N	\N	\N	\N	\N	\N	Moorland Haunt	Land	R
32772	CHK	247	0	\N	\N	\N	\N	t	\N	Time of Need	Sorcery	U
32773	GTC	246	0	\N	\N	\N	\N	\N	\N	Simic Guildgate	Land	C
32791	ISD	246	0	\N	\N	\N	\N	\N	\N	Shimmering Grotto	Land	C
32796	SHM	237	0	t	\N	\N	\N	t	\N	Rhys the Redeemed	Lgd. Creature	R
32127	ROE	194	2	\N	\N	\N	\N	t	\N	Leaf Arrow	Instant	C
32253	ROE	203	5	\N	\N	\N	\N	t	\N	Overgrown Battlement	Creature	C
32337	ROE	209	2	\N	\N	\N	\N	t	\N	Sporecap Spider	Creature	C
32336	LRW	211	2	\N	\N	\N	\N	t	\N	Fertile Ground	Enchantment	C
32724	ZEN	225	1	\N	\N	\N	\N	\N	\N	Soaring Seacliff	Land	C
32673	ROE	233	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32068	SHM	185	1	\N	\N	t	t	\N	\N	Emberstrike Duo	Creature	C
32278	SHM	200	1	\N	\N	t	t	\N	\N	Traitor's Roar	Sorcery	C
32376	SHM	207	2	\N	\N	\N	t	t	\N	Giantbaiting	Sorcery	C
32123	MRD	197	1	\N	\N	\N	\N	\N	\N	Lifespark Spellbomb	Artifact	C
32397	THS	206	1	t	\N	t	\N	\N	\N	Triad of Fates	Lgd. Creature	R
32699	SOM	236	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32220	ZEN	189	2	\N	\N	\N	\N	t	\N	Timbermaw Larva	Creature	C
32252	LRW	205	2	\N	\N	\N	\N	t	\N	Elvish Eulogist	Creature	C
32086	CHK	198	1	\N	\N	\N	t	\N	\N	Yamabushi's Flame	Instant	C
32622	ALA	227	1	\N	\N	\N	\N	\N	\N	Naya Panorama	Land	C
32650	ALA	229	1	\N	\N	\N	\N	\N	\N	Seaside Citadel	Land	U
36973	NEO	317	0	\N	t	\N	\N	\N	\N	Guardians of Oboro	Creature	C
32057	ROE	189	0	\N	\N	\N	\N	t	\N	Jaddi Lifestrider	Creature	U
32121	RTR	190	0	t	\N	\N	\N	t	\N	Risen Sanctuary	Creature	U
32129	GTC	200	0	t	\N	\N	t	\N	\N	Sunhome Guildmage	Creature	U
32150	ZEN	184	0	\N	\N	\N	\N	t	\N	Summoning Trap	Instant	R
32152	SHM	191	0	\N	\N	t	t	\N	\N	Manaforge Cinder	Creature	C
32205	RTR	196	0	t	t	\N	\N	\N	\N	Skymark Roc	Creature	U
32206	ZEN	188	0	\N	\N	\N	\N	t	\N	Territorial Baloth	Creature	C
32213	GTC	206	0	t	\N	t	\N	\N	\N	Vizkopa Guildmage	Creature	U
32231	ISD	206	0	\N	\N	\N	\N	t	\N	Travel Preparations	Sorcery	C
32234	ZEN	190	0	\N	\N	\N	\N	t	\N	Turntimber Basilisk	Creature	U
32237	SOM	203	0	\N	\N	\N	\N	\N	\N	Snapsail Glider	Artifact Creature	C
32240	CHK	209	0	\N	\N	\N	\N	t	\N	Gale Force	Sorcery	U
32257	THS	196	0	t	t	\N	\N	\N	\N	Medomai the Ageless	Lgd. Creature	M
32260	RAV	202	0	\N	t	t	\N	\N	\N	Dimir Doppelganger	Creature	R
32289	RTR	202	0	\N	t	\N	t	\N	\N	Teleportal	Sorcery	U
32292	SHM	201	0	\N	\N	t	t	\N	\N	Tyrannize	Sorcery	R
32293	SOM	207	0	\N	\N	\N	\N	\N	\N	Strider Harness	Artifact	C
32300	ALA	204	0	t	\N	\N	t	t	\N	Titanic Ultimatum	Sorcery	R
32312	MID	201	0	\N	\N	\N	\N	t	\N	Tapping at the Window	Sorcery	C
32328	ALA	206	0	\N	\N	t	t	t	\N	Violent Ultimatum	Sorcery	R
32333	MRD	212	0	\N	\N	\N	\N	\N	\N	Myr Incubator	Artifact	R
32334	SHM	204	0	\N	\N	\N	t	t	\N	Deus of Calamity	Creature	R
32339	GTC	215	0	t	\N	\N	t	\N	\N	Boros Reckoner	Creature	R
32342	ALA	207	0	t	t	\N	\N	t	\N	Waveskimmer Aven	Creature	C
32345	RTR	206	0	t	\N	\N	\N	t	\N	Trostani, Selesnya's Voice	Lgd. Creature	M
32353	GTC	216	0	\N	\N	\N	t	t	\N	Burning-Tree Emissary	Creature	U
32358	RAV	209	0	\N	\N	t	\N	t	\N	Golgari Germination	Enchantment	U
32368	MID	205	0	\N	\N	\N	\N	t	\N	Turn the Earth	Instant	U
32371	ISD	216	0	\N	\N	\N	\N	\N	\N	Blazing Torch	Artifact	C
32380	CHK	219	0	\N	\N	\N	\N	t	\N	Kami of the Hunt	Creature	C
32381	GTC	218	0	\N	t	t	\N	\N	\N	Deathcult Rogue	Creature	C
32400	RAV	212	0	t	\N	\N	\N	t	\N	Guardian of Vitu-Ghazi	Creature	C
32407	ROE	214	0	\N	\N	t	t	\N	\N	Sarkhan the Mad	Lgd. Planeswalker	M
32499	RTR	217	0	t	\N	\N	\N	t	\N	Growing Ranks	Enchantment	R
32832	ISD	249	1	\N	\N	\N	\N	\N	\N	Woodland Cemetery	Land	R
32507	GTC	227	0	\N	\N	\N	\N	\N	\N	Boros Keyrune	Artifact	U
32536	MID	217	0	t	t	\N	\N	\N	\N	Dennick, Pious Apprentice // Dennick, Pious Apparition	Lgd. Creature	R
32540	RAV	222	0	t	\N	\N	t	\N	\N	Rally the Righteous	Instant	C
32541	RTR	220	0	\N	\N	t	t	\N	\N	Rakdos Cackler	Creature	U
32547	ROE	224	0	\N	\N	\N	\N	\N	\N	Runed Servitor	Artifact Creature	U
32555	RTR	221	0	\N	\N	t	t	\N	\N	Rakdos Shred-Freak	Creature	C
32561	ROE	225	0	\N	\N	\N	\N	\N	\N	Sphinx-Bone Wand	Artifact	R
32566	ALA	223	0	\N	\N	\N	\N	\N	\N	Esper Panorama	Land	C
32582	RAV	225	0	\N	\N	t	\N	t	\N	Savra, Queen of the Golgari	Lgd. Creature	R
32585	MRD	230	0	\N	\N	\N	\N	\N	\N	Proteus Staff	Artifact	R
32589	ROE	227	0	\N	\N	\N	\N	\N	\N	Eldrazi Temple	Land	R
32793	RTR	238	0	\N	\N	\N	\N	\N	\N	Blood Crypt	Land	R
32794	ZEN	230	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32801	GTC	248	0	\N	\N	\N	\N	\N	\N	Thespian's Stage	Land	R
32823	MRD	247	0	\N	\N	\N	\N	\N	\N	Spellweaver Helix	Artifact	R
32824	SHM	239	0	t	\N	\N	\N	t	\N	Safehold Elite	Creature	C
32829	MID	238	0	\N	t	\N	\N	t	\N	Rootcoil Creeper	Creature	U
32846	RAV	244	0	t	\N	\N	\N	t	\N	Centaur Safeguard	Creature	C
32854	CHK	253	0	\N	\N	\N	\N	\N	\N	Hankyu	Artifact	U
32855	MID	240	0	t	\N	\N	\N	t	\N	Sigarda, Champion of Light	Lgd. Creature	M
32885	RAV	247	0	\N	\N	t	\N	t	\N	Gleancrawler	Creature	R
32888	MRD	252	0	\N	\N	\N	\N	\N	\N	Synod Sanctum	Artifact	U
32892	MID	243	0	\N	t	\N	t	\N	\N	Storm Skreelix	Creature	U
32896	RAV	248	0	\N	\N	t	\N	t	\N	Golgari Guildmage	Creature	U
32897	RTR	246	0	\N	\N	\N	\N	\N	\N	Selesnya Guildgate	Land	C
32907	RAV	249	0	\N	t	t	\N	\N	\N	Lurking Informant	Creature	C
32929	RAV	251	0	t	\N	\N	\N	t	\N	Privileged Position	Enchantment	R
32943	SHM	249	0	\N	\N	\N	\N	\N	\N	Chainbreaker	Artifact Creature	C
32944	LRW	256	0	\N	\N	\N	\N	\N	\N	Dolmen Gate	Artifact	R
32945	CHK	261	0	\N	\N	\N	\N	\N	\N	Long-Forgotten Gohei	Artifact	R
32959	RAV	254	0	\N	\N	\N	\N	\N	\N	Bloodletter Quill	Artifact	R
32960	RTR	252	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32968	ISD	261	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32971	ZEN	237	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32974	LRW	259	0	\N	\N	\N	\N	\N	\N	Rings of Brighthearth	Artifact	R
32978	RAV	256	0	\N	\N	\N	\N	\N	\N	Bottled Cloister	Artifact	R
32988	RTR	255	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32991	SHM	254	0	\N	\N	\N	\N	\N	\N	Illuminated Folio	Artifact	U
32992	LRW	261	0	\N	\N	\N	\N	\N	\N	Springleaf Drum	Artifact	C
33000	SHM	255	0	\N	\N	\N	\N	\N	\N	Lockjaw Snapper	Artifact Creature	U
32122	ZEN	182	1	\N	\N	\N	\N	t	\N	Scute Mob	Creature	R
32153	SOM	197	1	\N	\N	\N	\N	\N	\N	Razorfield Thresher	Artifact Creature	C
32588	LRW	229	2	\N	\N	\N	\N	t	\N	Lys Alana Huntmaster	Creature	C
32904	THS	243	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32565	THS	218	1	\N	\N	\N	\N	\N	\N	Opaline Unicorn	Artifact Creature	C
32271	THS	197	1	\N	\N	t	\N	t	\N	Pharika's Mender	Creature	U
32818	ALA	241	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32406	LRW	216	1	\N	\N	\N	\N	t	\N	Guardian of Cloverdell	Creature	U
32546	LRW	226	2	\N	\N	\N	\N	t	\N	Lammastide Weave	Instant	U
32917	ISD	256	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32938	ISD	258	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32995	ISD	264	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32147	ISD	200	1	\N	\N	\N	\N	t	\N	Prey Upon	Sorcery	C
36974	NEO	318	0	\N	\N	t	\N	\N	\N	Nezumi Bladeblesser	Creature	C
32268	CHK	211	1	\N	\N	\N	\N	t	\N	Hana Kami	Creature	U
32975	CHK	264	1	\N	\N	\N	\N	\N	\N	No-Dachi	Artifact	U
32366	CHK	218	2	\N	\N	\N	\N	t	\N	Jukai Messenger	Creature	C
32156	CHK	203	3	\N	\N	\N	\N	t	\N	Burr Grafter	Creature	C
32272	ALA	202	1	t	\N	t	\N	\N	\N	Tidehollow Sculler	Artifact Creature	U
32524	ALA	220	2	\N	\N	\N	\N	\N	\N	Arcane Sanctum	Land	U
32106	RAV	191	0	t	\N	\N	\N	t	\N	Autochthon Wurm	Creature	R
32109	MRD	196	0	\N	\N	\N	\N	\N	\N	Liar's Pendulum	Artifact	R
32112	LRW	195	0	\N	\N	\N	t	\N	\N	Thundercloud Shaman	Creature	U
32116	MID	187	0	\N	\N	\N	\N	t	\N	Hound Tamer // Untamed Pup	Creature	U
32132	ALA	192	0	\N	t	t	t	\N	\N	Sedraxis Specter	Creature	R
32144	MID	189	0	\N	\N	\N	\N	t	\N	Might of the Old Ways	Instant	C
32172	MID	191	0	\N	\N	\N	\N	t	\N	Path to the Festival	Sorcery	C
32176	RAV	196	0	\N	t	t	\N	\N	\N	Circu, Dimir Lobotomist	Lgd. Creature	R
32191	RTR	195	0	\N	\N	t	t	\N	\N	Skull Rend	Sorcery	C
32193	MRD	202	0	\N	\N	\N	\N	\N	\N	Malachite Golem	Artifact Creature	C
32195	SOM	200	0	\N	\N	\N	\N	\N	\N	Saberclaw Golem	Artifact Creature	C
32214	MID	194	0	\N	\N	\N	\N	t	\N	Primal Adversary	Creature	M
32235	MRD	205	0	\N	\N	\N	\N	\N	\N	Mind's Eye	Artifact	R
32236	SHM	197	0	\N	\N	t	t	\N	\N	Spiteflame Witch	Creature	U
32241	GTC	208	0	t	\N	\N	t	\N	\N	Wojek Halberdiers	Creature	C
32256	MID	197	0	\N	\N	\N	\N	t	\N	Saryth, the Viper's Fang	Lgd. Creature	R
32261	RTR	200	0	t	t	\N	\N	\N	\N	Sphinx's Revelation	Instant	M
32275	RTR	201	0	t	t	\N	\N	\N	\N	Supreme Verdict	Sorcery	R
32301	ISD	211	0	\N	\N	\N	\N	t	\N	Wreath of Geists	Enchantment	U
32306	SHM	202	0	\N	\N	\N	t	t	\N	Boartusk Liege	Creature	R
32307	SOM	208	0	\N	\N	\N	\N	\N	\N	Sword of Body and Mind	Artifact	M
32401	RTR	210	0	t	t	\N	\N	\N	\N	Azor's Elocutors	Creature	R
32402	ZEN	202	0	\N	\N	\N	\N	\N	\N	Explorer's Scope	Artifact	C
32409	GTC	220	0	t	\N	t	\N	\N	\N	Immortal Servitude	Sorcery	R
32428	RAV	214	0	t	\N	\N	\N	t	\N	Loxodon Hierarch	Creature	R
32429	RTR	212	0	\N	\N	t	t	\N	\N	Cryptborn Horror	Creature	R
32444	ZEN	205	0	\N	\N	\N	\N	\N	\N	Khalni Gem	Artifact	U
32478	CHK	226	0	\N	\N	\N	\N	t	\N	Lure	Enchantment	U
32479	GTC	225	0	t	\N	\N	t	\N	\N	Shattering Blow	Instant	C
32498	RAV	219	0	t	\N	\N	\N	t	\N	Pollenbright Wings	Enchantment	U
32501	MRD	224	0	\N	\N	\N	\N	\N	\N	Ornithopter	Artifact Creature	U
32504	LRW	223	0	\N	\N	\N	\N	t	\N	Kithkin Daggerdare	Creature	C
32175	ISD	202	1	\N	\N	\N	\N	t	\N	Somberwald Spider	Creature	C
32526	RAV	221	0	\N	\N	t	\N	t	\N	Putrefy	Instant	U
32529	MRD	226	0	\N	\N	\N	\N	\N	\N	Pentavus	Artifact Creature	R
32469	ISD	223	1	\N	\N	\N	\N	\N	\N	Geistcatcher's Rig	Artifact Creature	U
32535	GTC	229	0	\N	\N	\N	\N	\N	\N	Glaring Spotlight	Artifact	R
32556	ZEN	213	0	\N	\N	\N	\N	\N	\N	Emeria, the Sky Ruin	Land	R
32570	ZEN	214	0	\N	\N	\N	\N	\N	\N	Graypelt Refuge	Land	U
32579	THS	219	0	\N	\N	\N	\N	\N	\N	Prowler's Helm	Artifact	U
32593	THS	220	0	\N	\N	\N	\N	\N	\N	Pyxis of Pandemonium	Artifact	R
32615	SOM	230	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32655	MRD	235	0	\N	\N	\N	\N	\N	\N	Rustspore Ram	Artifact Creature	U
32657	SOM	233	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32666	RAV	231	0	\N	\N	t	\N	t	\N	Sisters of Stone Death	Lgd. Creature	R
32675	GTC	239	0	\N	\N	\N	\N	\N	\N	Boros Guildgate	Land	C
32694	RAV	233	0	t	\N	\N	t	\N	\N	Sunhome Enforcer	Creature	U
32697	MRD	238	0	\N	\N	\N	\N	\N	\N	Sculpting Steel	Artifact	R
32722	RAV	235	0	t	\N	\N	t	\N	\N	Thundersong Trumpeter	Creature	C
32723	RTR	233	0	\N	\N	\N	\N	\N	\N	Selesnya Keyrune	Artifact	U
32728	LRW	239	0	\N	\N	\N	\N	t	\N	Treefolk Harbinger	Creature	U
32753	MRD	242	0	\N	\N	\N	\N	\N	\N	Skeleton Shard	Artifact	U
32755	SOM	240	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32764	RAV	238	0	\N	\N	t	\N	t	\N	Vulturous Zombie	Creature	R
32771	ROE	240	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32774	MID	234	0	\N	\N	t	\N	t	\N	Old Stickfingers	Lgd. Creature	R
32790	ALA	239	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32802	MID	236	0	t	\N	\N	\N	t	\N	Rite of Harmony	Instant	R
32834	RTR	241	0	\N	\N	\N	\N	\N	\N	Hallowed Fountain	Land	R
32861	ZEN	232	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32862	MRD	250	0	\N	\N	\N	\N	\N	\N	Sunbeam Spellbomb	Artifact	C
32865	LRW	249	0	t	t	t	t	t	\N	Horde of Notions	Lgd. Creature	R
32868	MID	241	0	\N	t	t	\N	\N	\N	Siphon Insight	Instant	R
32884	ISD	253	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32458	ZEN	206	1	\N	\N	\N	\N	\N	\N	Spidersilk Net	Artifact	C
32435	ROE	216	1	\N	\N	\N	\N	\N	\N	Dreamstone Hedron	Artifact	U
32281	ROE	205	1	\N	\N	\N	\N	t	\N	Prey's Vengeance	Instant	U
32108	ZEN	181	1	\N	\N	\N	\N	t	\N	Savage Silhouette	Enchantment	C
32267	ROE	204	1	\N	\N	\N	\N	t	\N	Pelakka Wurm	Creature	U
32840	ROE	245	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32729	ROE	237	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32701	ROE	235	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32656	SHM	227	1	t	\N	\N	\N	t	\N	Fracturing Gust	Instant	R
32310	CHK	214	1	\N	\N	\N	\N	t	\N	Humble Budoka	Creature	C
32700	LRW	237	1	\N	\N	\N	\N	t	\N	Sylvan Echoes	Enchantment	U
32560	LRW	227	2	\N	\N	\N	\N	t	\N	Leaf Gilder	Creature	C
32448	LRW	219	1	\N	\N	\N	\N	t	\N	Immaculate Magistrate	Creature	R
32574	LRW	228	1	\N	\N	\N	\N	t	\N	Lignify	Tribal Enchantment	C
32434	LRW	218	1	\N	\N	\N	\N	t	\N	Hunt Down	Sorcery	C
32817	THS	236	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32843	THS	238	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32607	THS	221	1	\N	\N	\N	\N	\N	\N	Traveler's Amulet	Artifact	C
32159	THS	189	1	t	t	\N	\N	\N	\N	Battlewise Hoplite	Creature	U
32754	SHM	234	1	t	\N	\N	\N	t	\N	Oversoul of Dusk	Creature	R
32614	SHM	224	1	t	\N	\N	\N	t	\N	Barkshell Blessing	Instant	C
32462	LRW	220	3	\N	\N	\N	\N	t	\N	Imperious Perfect	Creature	U
32194	SHM	194	4	\N	\N	t	t	\N	\N	Scar	Instant	C
32674	CHK	240	2	\N	\N	\N	\N	t	\N	Serpent Skin	Enchantment	C
32867	CHK	254	1	\N	\N	\N	\N	\N	\N	Honor-Worn Shaku	Artifact	U
32618	CHK	236	1	\N	\N	\N	\N	t	\N	Orochi Sustainer	Creature	C
32426	ALA	213	1	\N	\N	\N	\N	\N	\N	Obelisk of Esper	Artifact	C
32202	ALA	197	1	\N	\N	t	t	t	\N	Sprouting Thrinax	Creature	U
32090	ALA	189	1	\N	\N	\N	t	t	\N	Rip-Clan Crasher	Creature	C
32230	ALA	199	1	t	t	\N	\N	t	\N	Stoic Angel	Creature	R
36975	NEO	319	0	\N	\N	\N	t	\N	\N	Akki Ronin	Creature	C
32161	ISD	201	0	\N	\N	\N	\N	t	\N	Ranger's Guile	Instant	C
32164	ZEN	185	0	\N	\N	\N	\N	t	\N	Tajuru Archer	Creature	U
32167	SOM	198	0	\N	\N	\N	\N	\N	\N	Rust Tick	Artifact Creature	U
32179	MRD	201	0	\N	\N	\N	\N	\N	\N	Loxodon Warhammer	Artifact	U
32185	GTC	204	0	\N	t	\N	\N	t	\N	Urban Evolution	Sorcery	U
32187	THS	191	0	t	t	\N	\N	\N	\N	Daxos of Meletis	Lgd. Creature	R
32188	ALA	196	0	t	t	t	\N	\N	\N	Sphinx Sovereign	Artifact Creature	M
32203	ISD	204	0	\N	\N	\N	\N	t	\N	Spidery Grasp	Instant	C
32208	SHM	195	0	\N	\N	t	t	\N	\N	Sootstoke Kindler	Creature	C
32209	SOM	201	0	\N	\N	\N	\N	\N	\N	Semblance Anvil	Artifact	R
32212	CHK	207	0	\N	\N	\N	\N	t	\N	Feast of Worms	Sorcery	U
32232	RAV	200	0	\N	\N	t	\N	t	\N	Dark Heart of the Wood	Enchantment	U
32233	RTR	198	0	\N	\N	t	\N	t	\N	Sluiceway Scorpion	Creature	C
32238	LRW	204	0	\N	\N	\N	\N	t	\N	Elvish Branchbender	Creature	C
32239	ROE	202	0	\N	\N	\N	\N	t	\N	Ondu Giant	Creature	C
32270	MID	198	0	\N	\N	\N	\N	t	\N	Shadowbeast Sighting	Sorcery	C
32273	ISD	209	0	\N	\N	\N	\N	t	\N	Villagers of Estwald // Howlpack of Estwald	Creature	C
32283	GTC	211	0	t	\N	\N	t	\N	\N	Arrows of Justice	Instant	U
32284	MID	199	0	\N	\N	\N	\N	t	\N	Snarling Wolf	Creature	C
32303	RTR	203	0	\N	t	\N	t	\N	\N	Thoughtflare	Instant	U
32304	ZEN	195	0	\N	\N	\N	\N	\N	\N	Adventuring Gear	Artifact	C
32311	GTC	213	0	\N	t	\N	\N	t	\N	Biomass Mutation	Instant	R
32329	ISD	213	0	t	t	\N	\N	\N	\N	Geist of Saint Traft	Lgd. Creature	M
32604	CHK	235	2	\N	\N	\N	\N	t	\N	Orochi Ranger	Creature	C
32335	SOM	210	0	\N	\N	\N	\N	\N	\N	Sylvok Replica	Artifact Creature	C
32347	MRD	213	0	\N	\N	\N	\N	\N	\N	Myr Mindservant	Artifact Creature	U
32348	SHM	205	0	\N	\N	\N	t	t	\N	Firespout	Sorcery	U
32359	RTR	207	0	t	\N	\N	\N	t	\N	Vitu-Ghazi Guildmage	Creature	U
32365	ROE	211	0	\N	\N	\N	\N	t	\N	Tajuru Preserver	Creature	R
32372	RAV	210	0	\N	\N	t	\N	t	\N	Golgari Rotwurm	Creature	C
32379	ROE	212	0	\N	\N	\N	\N	t	\N	Vengevine	Creature	M
32382	MID	206	0	\N	\N	\N	\N	t	\N	Unnatural Growth	Enchantment	R
32399	ISD	218	0	\N	\N	\N	\N	\N	\N	Cellar Door	Artifact	U
32404	SHM	209	0	\N	\N	\N	t	t	\N	Impromptu Raid	Enchantment	R
32405	SOM	215	0	\N	\N	\N	\N	\N	\N	Trigon of Mending	Artifact	U
32472	ZEN	207	0	\N	\N	\N	\N	\N	\N	Stonework Puma	Artifact Creature	C
32473	MRD	222	0	\N	\N	\N	\N	\N	\N	Oblivion Stone	Artifact	R
32476	LRW	221	0	\N	\N	\N	\N	t	\N	Incremental Growth	Sorcery	U
32481	THS	212	0	\N	\N	\N	\N	\N	\N	Bronze Sable	Artifact Creature	C
32496	ALA	218	0	\N	\N	\N	\N	\N	\N	Relic of Progenitus	Artifact	C
32508	MID	215	0	\N	t	\N	\N	t	\N	Croaking Counterpart	Sorcery	R
32550	MID	218	0	t	t	\N	\N	\N	\N	Devoted Grafkeeper // Departed Soulkeeper	Creature	U
32553	ISD	229	0	\N	\N	\N	\N	\N	\N	Mask of Avacyn	Artifact	U
32563	GTC	231	0	\N	\N	\N	\N	\N	\N	Illusionist's Bracers	Artifact	R
32568	RAV	224	0	t	\N	\N	t	\N	\N	Razia's Purification	Sorcery	R
32577	GTC	232	0	\N	\N	\N	\N	\N	\N	Millennial Gargoyle	Artifact Creature	C
32595	ISD	232	0	\N	\N	\N	\N	\N	\N	Sharpened Pitchfork	Artifact	U
32600	SHM	223	0	\N	\N	\N	t	t	\N	Wort, the Raidmother	Lgd. Creature	R
32601	SOM	229	0	\N	\N	\N	\N	\N	\N	Seachrome Coast	Land	R
32623	ISD	234	0	\N	\N	\N	\N	\N	\N	Traveler's Amulet	Artifact	C
32629	SOM	231	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32632	CHK	237	0	\N	\N	\N	\N	t	\N	Rootrunner	Creature	U
32640	ZEN	219	0	\N	\N	\N	\N	\N	\N	Marsh Flats	Land	R
32643	SOM	232	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32652	RAV	230	0	\N	\N	t	\N	t	\N	Shambling Shell	Creature	C
32663	THS	225	0	\N	\N	\N	\N	\N	\N	Temple of Deceit	Land	R
32680	RAV	232	0	t	\N	\N	t	\N	\N	Skyknight Legionnaire	Creature	C
32683	MRD	237	0	\N	\N	\N	\N	\N	\N	Scrabbling Claws	Artifact	U
32689	GTC	240	0	\N	\N	\N	\N	\N	\N	Breeding Pool	Land	R
32710	ZEN	224	0	\N	\N	\N	\N	\N	\N	Sejiri Refuge	Land	U
32717	GTC	242	0	\N	\N	\N	\N	\N	\N	Godless Shrine	Land	R
32737	RTR	234	0	\N	\N	\N	\N	\N	\N	Street Sweeper	Artifact Creature	U
32742	LRW	240	0	\N	\N	\N	\N	t	\N	Vigor	Creature	R
32743	ROE	238	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32751	RTR	235	0	\N	\N	\N	\N	\N	\N	Tablet of the Guilds	Artifact	U
32757	ROE	239	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32762	ALA	237	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32777	ISD	245	0	\N	\N	\N	\N	\N	\N	Nephalia Drownyard	Land	R
32782	SHM	236	0	t	\N	\N	\N	t	\N	Reknit	Instant	U
32806	RAV	241	0	\N	\N	t	\N	t	\N	Woodwraith Strangler	Creature	C
32807	RTR	239	0	\N	\N	\N	\N	\N	\N	Golgari Guildgate	Land	C
32848	ZEN	232	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32852	LRW	248	0	t	\N	\N	\N	t	\N	Gaddock Teeg	Lgd. Creature	R
32872	RAV	246	0	\N	\N	t	\N	t	\N	Gaze of the Gorgon	Instant	C
32351	ROE	210	1	\N	\N	\N	\N	t	\N	Stomper Cub	Creature	C
32813	ROE	243	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32626	ZEN	218	1	\N	\N	\N	\N	\N	\N	Magosi, the Waterveil	Land	R
32180	SHM	193	1	\N	\N	t	t	\N	\N	Poison the Well	Sorcery	C
32686	LRW	236	1	\N	\N	\N	\N	t	\N	Spring Cleaning	Instant	C
32350	LRW	212	1	\N	\N	\N	\N	t	\N	Fistful of Force	Instant	C
32523	THS	215	1	\N	\N	\N	\N	\N	\N	Flamecast Wheel	Artifact	U
32812	LRW	245	1	\N	\N	\N	\N	t	\N	Wren's Run Vanquisher	Creature	U
32783	SOM	242	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32707	ISD	240	2	\N	\N	\N	\N	\N	\N	Ghost Quarter	Land	U
32338	CHK	216	1	\N	\N	\N	\N	t	\N	Joyous Respite	Sorcery	C
32142	CHK	202	1	\N	\N	\N	\N	t	\N	Budoka Gardener // Dokai, Weaver of Life	Creature	R
32576	CHK	233	1	\N	\N	\N	\N	t	\N	Orochi Eggwatcher // Shidako, Broodmistress	Creature	U
32170	CHK	204	1	\N	\N	\N	\N	t	\N	Commune with Nature	Sorcery	C
32660	CHK	239	1	\N	\N	\N	\N	t	\N	Sakura-Tribe Elder	Creature	C
32646	CHK	238	1	\N	\N	\N	\N	t	\N	Sachi, Daughter of Seshiro	Lgd. Creature	U
32408	CHK	221	2	\N	\N	\N	\N	t	\N	Kashi-Tribe Warriors	Creature	C
32734	ALA	235	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32857	ALA	244	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32537	THS	216	1	\N	\N	\N	\N	\N	\N	Fleetfeather Sandals	Artifact	C
32155	ROE	196	0	\N	\N	\N	\N	t	\N	Might of the Masses	Instant	C
32218	RAV	199	0	\N	t	t	\N	\N	\N	Consult the Necrosages	Sorcery	C
32221	MRD	204	0	\N	\N	\N	\N	\N	\N	Mesmeric Orb	Artifact	R
32224	LRW	203	0	\N	\N	\N	\N	t	\N	Dauntless Dourbark	Creature	R
32316	RAV	206	0	t	\N	\N	t	\N	\N	Flame-Kin Zealot	Creature	U
32319	MRD	211	0	\N	\N	\N	\N	\N	\N	Myr Enforcer	Artifact Creature	C
32322	LRW	210	0	\N	\N	\N	\N	t	\N	Eyes of the Wisent	Tribal Enchantment	R
32387	RTR	209	0	t	\N	\N	\N	t	\N	Wayfaring Temple	Creature	R
32388	ZEN	201	0	\N	\N	\N	\N	\N	\N	Expedition Map	Artifact	C
32393	ROE	213	0	\N	\N	\N	\N	t	\N	Wildheart Invoker	Creature	C
32394	CHK	220	0	\N	\N	\N	\N	t	\N	Kashi-Tribe Reaver	Creature	U
32414	RAV	213	0	t	\N	\N	t	\N	\N	Lightning Helix	Instant	U
32415	RTR	211	0	\N	t	\N	t	\N	\N	Blistercoil Weird	Creature	U
32421	ROE	215	0	\N	\N	\N	\N	\N	\N	Angelheart Vial	Artifact	R
32445	MRD	220	0	\N	\N	\N	\N	\N	\N	Nim Replica	Artifact Creature	C
32446	SHM	212	0	\N	\N	\N	t	t	\N	Morselhoarder	Creature	C
32471	RTR	215	0	\N	t	\N	t	\N	\N	Frostburn Weird	Creature	C
32474	SHM	214	0	\N	\N	\N	t	t	\N	Rosheen Meanderer	Lgd. Creature	R
32482	ALA	217	0	\N	\N	\N	\N	\N	\N	Quietus Spike	Artifact	R
32522	MID	216	0	t	\N	\N	\N	t	\N	Dawnhart Wardens	Creature	U
32543	MRD	227	0	\N	\N	\N	\N	\N	\N	Pewter Golem	Artifact Creature	C
32544	SHM	219	0	\N	\N	\N	t	t	\N	Tattermunge Maniac	Creature	U
32549	GTC	230	0	\N	\N	\N	\N	\N	\N	Gruul Keyrune	Artifact	U
32554	RAV	223	0	t	\N	\N	t	\N	\N	Razia, Boros Archangel	Lgd. Creature	R
32569	RTR	222	0	\N	\N	t	\N	t	\N	Slitherhead	Creature	U
32578	MID	220	0	\N	\N	t	\N	t	\N	Diregraf Rebirth	Sorcery	U
32594	ALA	225	0	\N	\N	\N	\N	\N	\N	Jund Panorama	Land	C
32606	MID	222	0	t	\N	t	\N	\N	\N	Fleshtaker	Creature	U
32634	MID	224	0	\N	t	\N	t	\N	\N	Galvanic Iteration	Instant	R
32637	ISD	235	0	\N	\N	\N	\N	\N	\N	Trepanation Blade	Artifact	U
32654	ZEN	220	0	\N	\N	\N	\N	\N	\N	Misty Rainforest	Land	R
32658	LRW	234	0	\N	\N	\N	\N	t	\N	Rootgrapple	Tribal Instant	C
32665	ISD	237	0	\N	\N	\N	\N	\N	\N	Wooden Stake	Artifact	C
32669	MRD	236	0	\N	\N	\N	\N	\N	\N	Scale of Chiss-Goria	Artifact	C
32670	SHM	228	0	t	\N	\N	\N	t	\N	Heartmender	Creature	R
32671	SOM	234	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32705	THS	228	0	\N	\N	\N	\N	\N	\N	Temple of Triumph	Land	R
32712	SHM	231	0	t	\N	\N	\N	t	\N	Mercy Killing	Instant	U
32713	SOM	237	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32716	CHK	243	0	\N	\N	\N	\N	t	\N	Soilshaper	Creature	U
32766	ZEN	228	0	\N	\N	\N	\N	\N	\N	Valakut, the Molten Pinnacle	Land	R
32770	LRW	242	0	\N	\N	\N	\N	t	\N	Woodland Changeling	Creature	C
32803	THS	235	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32816	MID	237	0	t	\N	t	\N	\N	\N	Rite of Oblivion	Sorcery	U
32820	RAV	242	0	t	\N	\N	t	\N	\N	Boros Guildmage	Creature	U
32821	RTR	240	0	\N	\N	\N	\N	\N	\N	Grove of the Guardian	Land	R
32826	LRW	246	0	t	\N	\N	t	\N	\N	Brion Stoutarm	Lgd. Creature	R
32827	ROE	244	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32833	RAV	243	0	t	\N	\N	t	\N	\N	Boros Recruit	Creature	C
32841	CHK	252	0	\N	\N	\N	\N	\N	\N	Hair-Strung Koto	Artifact	R
32842	MID	239	0	t	\N	\N	t	\N	\N	Sacred Fire	Instant	U
32921	MRD	255	0	\N	\N	\N	\N	\N	\N	Talisman of Indulgence	Artifact	U
32922	SHM	247	0	\N	\N	\N	\N	\N	\N	Blight Sickle	Artifact	C
32923	LRW	254	0	\N	\N	\N	\N	\N	\N	Colfenor's Urn	Artifact	R
32926	THS	245	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
28250	ROE	23	1	t	\N	\N	\N	\N	\N	Guard Duty	Enchantment	C
29019	MRD	54	0	\N	t	\N	\N	\N	\N	Thoughtcast	Sorcery	C
27613	EVE	12	0	t	\N	\N	\N	\N	\N	Patrol Signaler	Creature	U
32519	ROE	222	1	\N	\N	\N	\N	\N	\N	Prophetic Prism	Artifact	C
32505	ROE	221	1	\N	\N	\N	\N	\N	\N	Pennon Blade	Artifact	U
32575	ROE	226	1	\N	\N	\N	\N	\N	\N	Warmonger's Chariot	Artifact	U
32225	ROE	201	1	\N	\N	\N	\N	t	\N	Nest Invader	Creature	C
32323	ROE	208	1	\N	\N	\N	\N	t	\N	Spider Umbra	Enchantment	C
28768	ROE	41	1	t	\N	\N	\N	\N	\N	Puncturing Light	Instant	C
29080	ROE	53	1	t	\N	\N	\N	\N	\N	Wall of Omens	Creature	U
28456	ROE	29	1	t	\N	\N	\N	\N	\N	Knight of Cliffhaven	Creature	C
28898	ROE	46	1	t	\N	\N	\N	\N	\N	Stalwart Shield-Bearers	Creature	C
28136	ROE	16	1	t	\N	\N	\N	\N	\N	Dawnglare Invoker	Creature	C
30735	MRD	120	1	\N	\N	\N	\N	t	\N	Glissa Sunseeker	Lgd. Creature	R
32678	ALA	231	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32475	SOM	220	1	\N	\N	\N	\N	\N	\N	Venser's Journal	Artifact	R
32538	ALA	221	1	\N	\N	\N	\N	\N	\N	Bant Panorama	Land	C
33398	STX	10	0	t	\N	\N	\N	\N	\N	Clever Lumimancer	Creature	U
32562	CHK	232	1	\N	\N	\N	\N	t	\N	Order of the Sacred Bell	Creature	C
33447	STX	53	0	\N	t	\N	\N	\N	\N	Snow Day	Instant	U
33449	STX	55	0	\N	t	\N	\N	\N	\N	Soothsayer Adept	Creature	C
33450	STX	56	0	\N	t	\N	\N	\N	\N	Symmetry Sage	Creature	U
33451	STX	57	0	\N	t	\N	\N	\N	\N	Teachings of the Archaics	Sorcery	R
33452	STX	58	0	\N	t	\N	\N	\N	\N	Tempted by the Oriq	Sorcery	R
33453	STX	59	0	\N	t	\N	\N	\N	\N	Test of Talents	Instant	U
33454	STX	60	1	\N	t	\N	\N	\N	\N	Vortex Runner	Creature	C
33448	STX	54	1	\N	t	\N	\N	\N	\N	Solve the Equation	Sorcery	U
32154	LRW	198	1	\N	\N	\N	\N	t	\N	Bog-Strider Ash	Creature	C
32420	LRW	217	1	\N	\N	\N	\N	t	\N	Heal the Scars	Instant	C
32775	THS	233	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32789	THS	234	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32691	THS	227	1	\N	\N	\N	\N	\N	\N	Temple of Silence	Land	R
32621	THS	222	1	\N	\N	\N	\N	\N	\N	Witches' Eye	Artifact	U
32495	THS	213	1	\N	\N	\N	\N	\N	\N	Burnished Hart	Artifact Creature	U
32509	THS	214	1	\N	\N	\N	\N	\N	\N	Colossus of Akros	Artifact Creature	R
32447	SOM	218	2	\N	\N	\N	\N	\N	\N	Tumble Magnet	Artifact	C
28924	ROE	47	2	t	\N	\N	\N	\N	\N	Student of Warfare	Creature	R
28269	ROE	22	2	t	\N	\N	\N	\N	\N	Glory Seeker	Creature	C
32636	ALA	228	2	\N	\N	\N	\N	\N	\N	Savage Lands	Land	U
28586	ROE	34	3	t	\N	\N	\N	\N	\N	Lone Missionary	Creature	C
36976	NEO	320	0	\N	\N	\N	t	\N	\N	Goro-Goro, Disciple of Ryusei	Lgd. Creature	R
32183	ROE	198	0	\N	\N	\N	\N	t	\N	Mul Daya Channelers	Creature	R
32190	RAV	197	0	\N	t	t	\N	\N	\N	Clutch of the Undercity	Instant	U
32200	MID	193	0	\N	\N	\N	\N	t	\N	Plummet	Instant	C
32216	ALA	198	0	t	\N	\N	\N	t	\N	Steward of Valeron	Creature	C
32228	MID	195	0	\N	\N	\N	\N	t	\N	Return to Nature	Instant	C
32246	RAV	201	0	\N	t	t	\N	\N	\N	Dimir Cutpurse	Creature	R
32247	RTR	199	0	\N	\N	t	t	\N	\N	Spawn of Rix Maadi	Creature	C
32255	GTC	209	0	\N	t	\N	\N	t	\N	Zameck Guildmage	Creature	U
32296	CHK	213	2	\N	\N	\N	\N	t	\N	Honden of Life's Web	Lgd. Enchantment	U
32297	GTC	212	0	t	\N	t	\N	\N	\N	Beckon Apparition	Instant	C
32315	ISD	212	0	\N	t	t	\N	\N	\N	Evil Twin	Creature	R
32321	SOM	209	0	\N	\N	\N	\N	\N	\N	Sylvok Lifestaff	Artifact	C
32324	CHK	215	0	\N	\N	\N	\N	t	\N	Iname, Life Aspect	Lgd. Creature	R
32361	MRD	214	0	\N	\N	\N	\N	\N	\N	Myr Prototype	Artifact Creature	U
32363	SOM	212	0	\N	\N	\N	\N	\N	\N	Tower of Calamities	Artifact	R
32374	ZEN	200	0	\N	\N	\N	\N	\N	\N	Eternity Vessel	Artifact	M
32383	THS	205	0	\N	t	\N	t	\N	\N	Steam Augury	Instant	R
32398	ALA	211	0	\N	\N	\N	\N	\N	\N	Minion Reflector	Artifact	R
32410	MID	208	0	\N	\N	\N	\N	t	\N	Wrenn and Seven	Lgd. Planeswalker	M
32425	THS	208	0	\N	\N	t	t	\N	\N	Underworld Cerberus	Creature	M
32431	MRD	219	0	\N	\N	\N	\N	\N	\N	Nightmare Lash	Artifact	R
32432	SHM	211	0	\N	\N	\N	t	t	\N	Manamorphose	Instant	C
32437	GTC	222	0	\N	t	t	\N	\N	\N	Nightveil Specter	Creature	R
32442	RAV	215	0	\N	t	t	\N	\N	\N	Mindleech Mass	Creature	R
32453	THS	210	0	\N	\N	\N	\N	\N	\N	Akroan Horse	Artifact Creature	R
32454	ALA	215	0	\N	\N	\N	\N	\N	\N	Obelisk of Jund	Artifact	C
32465	GTC	224	0	\N	\N	\N	t	t	\N	Rubblebelt Raiders	Creature	R
32466	MID	212	0	\N	t	t	\N	\N	\N	Bladestitched Skaab	Creature	U
32485	RTR	216	0	\N	\N	t	\N	t	\N	Golgari Longlegs	Creature	C
32486	ZEN	208	0	\N	\N	\N	\N	\N	\N	Trailblazer's Boots	Artifact	U
32494	MID	214	0	\N	t	t	\N	\N	\N	Corpse Cobble	Instant	U
32510	ALA	219	0	\N	\N	\N	\N	\N	\N	Sigil of Distinction	Artifact	R
32516	SHM	217	0	\N	\N	\N	t	t	\N	Scuzzback Scrapper	Creature	C
32517	SOM	223	0	\N	\N	\N	\N	\N	\N	Wurmcoil Engine	Artifact Creature	M
32520	CHK	229	0	\N	\N	\N	\N	t	\N	Myojin of Life's Web	Lgd. Creature	R
32596	RAV	226	0	t	\N	\N	t	\N	\N	Searing Meditation	Enchantment	R
32599	MRD	231	0	\N	\N	\N	\N	\N	\N	Psychogenic Probe	Artifact	R
32602	LRW	230	0	\N	\N	\N	\N	t	\N	Masked Admirers	Creature	R
32603	ROE	228	0	\N	\N	\N	\N	\N	\N	Evolving Wilds	Land	C
32695	RTR	231	0	\N	\N	\N	\N	\N	\N	Pithing Needle	Artifact	R
32696	ZEN	223	0	\N	\N	\N	\N	\N	\N	Scalding Tarn	Land	R
32703	GTC	241	0	\N	\N	\N	\N	\N	\N	Dimir Guildgate	Land	C
32725	MRD	240	0	\N	\N	\N	\N	\N	\N	Serum Tank	Artifact	U
32731	GTC	243	0	\N	\N	\N	\N	\N	\N	Gruul Guildgate	Land	C
32735	ISD	242	0	\N	\N	\N	\N	\N	\N	Isolated Chapel	Land	R
32736	RAV	236	0	t	\N	\N	\N	t	\N	Tolsimir Wolfblood	Lgd. Creature	R
32746	MID	232	0	t	\N	t	\N	\N	\N	Liesa, Forgotten Archangel	Lgd. Creature	R
32749	ISD	243	0	\N	\N	\N	\N	\N	\N	Kessig Wolf Run	Land	R
32759	GTC	245	0	\N	\N	\N	\N	\N	\N	Sacred Foundry	Land	R
32760	MID	233	0	\N	t	t	\N	\N	\N	Ludevic, Necrogenius // Olag, Ludevic's Hubris	Lgd. Creature	R
32779	RTR	237	0	\N	\N	\N	\N	\N	\N	Azorius Guildgate	Land	C
32780	ZEN	229	0	\N	\N	\N	\N	\N	\N	Verdant Catacombs	Land	R
32787	GTC	247	0	\N	\N	\N	\N	\N	\N	Stomping Ground	Land	R
32805	ISD	247	0	\N	\N	\N	\N	\N	\N	Stensia Bloodhall	Land	R
32808	ZEN	230	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32811	SOM	244	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32836	MRD	248	0	\N	\N	\N	\N	\N	\N	Steel Wall	Artifact Creature	C
32838	SOM	246	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32845	ISD	250	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32859	RAV	245	0	\N	t	t	\N	\N	\N	Dimir Guildmage	Creature	U
32909	ZEN	234	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32913	CHK	258	0	\N	\N	\N	\N	\N	\N	Junkyo Bell	Artifact	R
32914	MID	245	0	t	t	\N	\N	\N	\N	Teferi, Who Slows the Sunset	Lgd. Planeswalker	M
32332	ZEN	197	1	\N	\N	\N	\N	\N	\N	Blazing Torch	Artifact	U
32500	ZEN	209	1	\N	\N	\N	\N	\N	\N	Trusty Machete	Artifact	U
30660	WWK	126	1	\N	\N	\N	\N	\N	\N	Kitesail	Artifact	C
32287	ISD	210	2	\N	\N	\N	\N	t	\N	Woodland Sleuth	Creature	C
32197	ROE	199	1	\N	\N	\N	\N	t	\N	Naturalize	Instant	C
32262	ZEN	192	1	\N	\N	\N	\N	t	\N	Vastwood Gorger	Creature	C
32866	ROE	247	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
28048	ROE	14	1	t	\N	\N	\N	\N	\N	Affa Guard Hound	Creature	U
28012	SOM	13	1	t	\N	\N	\N	\N	\N	Kemba's Skyguard	Creature	C
32450	CHK	224	1	\N	\N	\N	\N	t	\N	Kodama's Might	Instant	C
33399	STX	9	0	t	\N	\N	\N	\N	\N	Beaming Defiance	Instant	C
33456	STX	62	0	\N	t	\N	\N	\N	\N	Wormhole Serpent	Creature	U
33458	STX	64	0	\N	\N	t	\N	\N	\N	Baleful Mastery	Instant	R
33460	STX	66	0	\N	\N	t	\N	\N	\N	Callous Bloodmage	Creature	R
33461	STX	67	0	\N	\N	t	\N	\N	\N	Confront the Past	Sorcery	R
33455	STX	61	1	\N	t	\N	\N	\N	\N	Waterfall Aerialist	Creature	C
32320	SHM	203	1	\N	\N	\N	t	t	\N	Boggart Ram-Gang	Creature	U
32362	SHM	206	1	\N	\N	\N	t	t	\N	Fossil Find	Sorcery	U
32726	SHM	232	1	t	\N	\N	\N	t	\N	Old Ghastbark	Creature	C
32182	LRW	200	1	\N	\N	\N	\N	t	\N	Changeling Titan	Creature	U
32893	THS	242	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32869	THS	240	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32243	THS	195	1	\N	\N	t	t	\N	\N	Kragma Warcaller	Creature	U
33459	STX	65	1	\N	\N	t	\N	\N	\N	Brackish Trudge	Creature	U
32378	LRW	214	2	\N	\N	\N	\N	t	\N	Gilt-Leaf Ambush	Tribal Instant	C
32837	SHM	240	1	t	\N	\N	\N	t	\N	Safewright Quest	Sorcery	C
32280	LRW	207	2	\N	\N	\N	\N	t	\N	Elvish Harbinger	Creature	U
32276	ZEN	193	4	\N	\N	\N	\N	t	\N	Vines of Vastwood	Instant	C
32814	CHK	250	2	\N	\N	\N	\N	t	\N	Wear Away	Instant	C
32720	ALA	234	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32883	ALA	246	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33457	STX	63	1	\N	\N	t	\N	\N	\N	Arrogant Poet	Creature	C
36977	NEO	321	0	\N	\N	\N	t	\N	\N	Heiko Yamazaki, the General	Lgd. Creature	U
32215	THS	193	0	t	\N	\N	\N	t	\N	Fleecemane Lion	Creature	R
32242	MID	196	0	\N	\N	\N	\N	t	\N	Rise of the Ants	Sorcery	U
32248	ZEN	191	0	\N	\N	\N	\N	t	\N	Turntimber Ranger	Creature	R
32250	SHM	198	0	\N	\N	t	t	\N	\N	Spiteful Visions	Enchantment	R
32251	SOM	204	0	\N	\N	\N	\N	\N	\N	Soliton	Artifact Creature	C
32254	CHK	210	0	\N	\N	\N	\N	t	\N	Glimpse of Nature	Sorcery	R
32258	ALA	201	0	\N	t	t	\N	\N	\N	Thoughtcutter Agent	Artifact Creature	U
32259	ISD	208	0	\N	\N	\N	\N	t	\N	Ulvenwald Mystics // Ulvenwald Primordials	Creature	U
32269	GTC	210	0	\N	\N	\N	t	t	\N	Zhur-Taa Swine	Creature	C
32274	RAV	203	0	\N	t	t	\N	\N	\N	Dimir Infiltrator	Creature	C
32302	RAV	205	0	t	\N	\N	t	\N	\N	Firemane Angel	Creature	R
32305	MRD	210	0	\N	\N	\N	\N	\N	\N	Myr Adapter	Artifact Creature	C
32308	LRW	209	0	\N	\N	\N	\N	t	\N	Epic Proportions	Enchantment	R
32309	ROE	207	0	\N	\N	\N	\N	t	\N	Snake Umbra	Enchantment	C
32527	RTR	219	0	\N	t	\N	t	\N	\N	Nivmagus Elemental	Creature	R
32528	ZEN	211	0	\N	\N	\N	\N	\N	\N	Arid Mesa	Land	R
32531	SOM	224	0	\N	\N	\N	\N	\N	\N	Blackcleave Cliffs	Land	R
32534	CHK	230	0	\N	\N	\N	\N	t	\N	Nature's Will	Enchantment	R
32557	MRD	228	0	\N	\N	\N	\N	\N	\N	Platinum Angel	Artifact Creature	R
32558	SHM	220	0	\N	\N	\N	t	t	\N	Tattermunge Witch	Creature	U
32559	SOM	226	0	\N	\N	\N	\N	\N	\N	Darkslick Shores	Land	R
32571	MRD	229	0	\N	\N	\N	\N	\N	\N	Power Conduit	Artifact	U
32572	SHM	221	0	\N	\N	\N	t	t	\N	Valleymaker	Creature	R
32573	SOM	227	0	\N	\N	\N	\N	\N	\N	Glimmerpost	Land	C
32580	ALA	224	0	\N	\N	\N	\N	\N	\N	Grixis Panorama	Land	C
32592	MID	221	0	t	t	\N	\N	\N	\N	Faithful Mending	Instant	U
32608	ALA	226	0	\N	\N	\N	\N	\N	\N	Jungle Shrine	Land	U
32613	MRD	232	0	\N	\N	\N	\N	\N	\N	Pyrite Spellbomb	Artifact	C
32668	ZEN	221	0	\N	\N	\N	\N	\N	\N	Oran-Rief, the Vastwood	Land	R
32672	LRW	235	0	\N	\N	\N	\N	t	\N	Seedguide Ash	Creature	U
32692	ALA	232	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32704	MID	229	0	t	\N	\N	\N	t	\N	Join the Dance	Sorcery	U
32732	MID	231	0	\N	\N	\N	t	t	\N	Kessig Naturalist // Lord of the Ulvenwald	Creature	U
32740	SHM	233	0	t	\N	\N	\N	t	\N	Oracle of Nectars	Creature	R
32745	GTC	244	0	\N	\N	\N	\N	\N	\N	Orzhov Guildgate	Land	C
32750	RAV	237	0	\N	t	t	\N	\N	\N	Twisted Justice	Sorcery	U
32778	RAV	239	0	t	\N	\N	\N	t	\N	Watchwolf	Creature	U
32781	MRD	244	0	\N	\N	\N	\N	\N	\N	Soldier Replica	Artifact Creature	C
32784	LRW	243	0	\N	\N	\N	\N	t	\N	Woodland Guidance	Sorcery	U
32785	ROE	241	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
30608	WWK	124	1	\N	\N	\N	\N	\N	\N	Hammer of Ruin	Artifact	U
30712	WWK	128	1	\N	\N	\N	\N	\N	\N	Pilgrim's Eye	Artifact Creature	C
27693	ROE	5	1	\N	\N	\N	\N	\N	\N	Hand of Emrakul	Creature	C
32617	ROE	229	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
28914	ZEN	35	1	t	\N	\N	\N	\N	\N	Shieldmate's Blessing	Instant	C
27626	WWK	4	1	t	\N	\N	\N	\N	\N	Battle Hurda	Creature	C
28427	SOM	29	1	\N	t	\N	\N	\N	\N	Bonds of Quicksilver	Enchantment	C
33465	STX	71	0	\N	\N	t	\N	\N	\N	Flunk	Instant	U
33466	STX	72	0	\N	\N	t	\N	\N	\N	Go Blank	Sorcery	U
33495	STX	101	1	\N	\N	\N	t	\N	\N	Fervent Mastery	Sorcery	R
33470	STX	76	0	\N	\N	t	\N	\N	\N	Mage Hunter	Creature	U
33471	STX	77	0	\N	\N	t	\N	\N	\N	Mage Hunters' Onslaught	Sorcery	C
33474	STX	80	0	\N	\N	t	\N	\N	\N	Oriq Loremage	Creature	R
33476	STX	82	0	\N	\N	t	\N	\N	\N	Poet's Quill	Artifact	R
33477	STX	83	0	\N	\N	t	\N	\N	\N	Professor Onyx	Lgd. Planeswalker	M
33480	STX	86	0	\N	\N	t	\N	\N	\N	Sedgemoor Witch	Creature	R
33482	STX	88	0	\N	\N	t	\N	\N	\N	Tenured Inkcaster	Creature	U
33486	STX	92	0	\N	\N	\N	t	\N	\N	Ardent Dustspeaker	Creature	U
33487	STX	93	0	\N	\N	\N	t	\N	\N	Blood Age General	Creature	C
33488	STX	94	0	\N	\N	\N	t	\N	\N	Conspiracy Theorist	Creature	R
33489	STX	95	0	\N	\N	\N	t	\N	\N	Crackle with Power	Sorcery	M
33490	STX	96	0	\N	\N	\N	t	\N	\N	Draconic Intervention	Sorcery	R
33491	STX	97	0	\N	\N	\N	t	\N	\N	Dragon's Approach	Sorcery	C
33492	STX	98	0	\N	\N	\N	t	\N	\N	Efreet Flamepainter	Creature	R
33494	STX	100	0	\N	\N	\N	t	\N	\N	Explosive Welcome	Instant	U
33496	STX	102	0	\N	\N	\N	t	\N	\N	First Day of Class	Instant	C
33498	STX	104	0	\N	\N	\N	t	\N	\N	Grinning Ignus	Creature	U
33479	STX	85	1	\N	\N	t	\N	\N	\N	Promising Duskmage	Creature	C
33462	STX	68	1	\N	\N	t	\N	\N	\N	Crushing Disappointment	Instant	C
33493	STX	99	2	\N	\N	\N	t	\N	\N	Enthusiastic Study	Instant	C
33484	STX	90	1	\N	\N	t	\N	\N	\N	Unwilling Ingredient	Creature	C
32761	THS	232	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33481	STX	87	4	\N	\N	t	\N	\N	\N	Specter of the Fens	Creature	C
33475	STX	81	1	\N	\N	t	\N	\N	\N	Plumb the Forbidden	Instant	U
33485	STX	91	2	\N	\N	\N	t	\N	\N	Academic Dispute	Instant	U
33497	STX	103	3	\N	\N	\N	t	\N	\N	Fuming Effigy	Creature	C
33478	STX	84	1	\N	\N	t	\N	\N	\N	Professor's Warning	Instant	C
33483	STX	89	1	\N	\N	t	\N	\N	\N	Umbral Juke	Instant	U
33463	STX	69	2	\N	\N	t	\N	\N	\N	Essence Infusion	Sorcery	C
32285	THS	198	1	\N	\N	\N	t	t	\N	Polis Crusher	Creature	R
32677	THS	226	1	\N	\N	\N	\N	\N	\N	Temple of Mystery	Land	R
32719	THS	229	1	\N	\N	\N	\N	\N	\N	Unknown Shores	Land	C
32229	THS	194	1	\N	t	\N	\N	t	\N	Horizon Chimera	Creature	U
33469	STX	75	1	\N	\N	t	\N	\N	\N	Leech Fanatic	Creature	C
36978	NEO	322	0	\N	\N	\N	t	\N	\N	Peerless Samurai	Creature	C
33472	STX	78	1	\N	\N	t	\N	\N	\N	Necrotic Fumes	Sorcery	U
33464	STX	70	1	\N	\N	t	\N	\N	\N	Eyetwitch	Creature	U
33397	STX	4	1	\N	\N	\N	\N	\N	\N	Introduction to Prophecy	Sorcery	C
33473	STX	79	1	\N	\N	t	\N	\N	\N	Novice Dissector	Creature	C
32245	ISD	207	1	\N	\N	\N	\N	t	\N	Tree of Redemption	Creature	M
32616	LRW	231	2	\N	\N	\N	\N	t	\N	Nath's Elite	Creature	C
32739	MRD	241	1	\N	\N	\N	\N	\N	\N	Silver Myr	Artifact Creature	C
32758	CHK	246	1	\N	\N	\N	\N	t	\N	Thousand-legged Kami	Creature	U
32282	CHK	212	1	\N	\N	\N	\N	t	\N	Heartbeat of Spring	Enchantment	R
33468	STX	74	2	\N	\N	t	\N	\N	\N	Lash of Malice	Instant	C
32386	RAV	211	0	\N	\N	t	\N	t	\N	Grave-Shell Scarab	Creature	R
32389	MRD	216	0	\N	\N	\N	\N	\N	\N	Necrogen Spellbomb	Artifact	C
32395	GTC	219	0	t	\N	t	\N	\N	\N	Gift of Orzhova	Enchantment	U
32416	ZEN	203	0	\N	\N	\N	\N	\N	\N	Grappling Hook	Artifact	R
32419	SOM	216	0	\N	\N	\N	\N	\N	\N	Trigon of Rage	Artifact	U
32422	CHK	222	0	\N	\N	\N	\N	t	\N	Kodama of the North Tree	Lgd. Creature	R
32977	ISD	262	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32452	MID	211	0	\N	\N	\N	t	t	\N	Arlinn, the Pack's Hope // Arlinn, the Moon's Fury	Lgd. Planeswalker	M
32467	THS	211	0	\N	\N	\N	\N	\N	\N	Anvilwrought Raptor	Artifact Creature	U
32484	RAV	218	0	t	\N	\N	\N	t	\N	Phytohydra	Creature	R
32487	MRD	223	0	\N	\N	\N	\N	\N	\N	Omega Myr	Artifact Creature	C
32493	GTC	226	0	\N	\N	\N	\N	\N	\N	Armored Transport	Artifact Creature	C
32511	ISD	226	0	\N	\N	\N	\N	\N	\N	Grimoire of the Dead	Lgd. Artifact	M
32513	RTR	218	0	t	t	\N	\N	\N	\N	Judge's Familiar	Creature	U
32521	GTC	228	0	\N	\N	\N	\N	\N	\N	Dimir Keyrune	Artifact	U
32539	ISD	228	0	\N	\N	\N	\N	\N	\N	Manor Gargoyle	Artifact Creature	R
32542	ZEN	212	0	\N	\N	\N	\N	\N	\N	Crypt of Agadeem	Land	R
32545	SOM	225	0	\N	\N	\N	\N	\N	\N	Copperline Gorge	Land	R
32548	CHK	231	0	\N	\N	\N	\N	t	\N	Orbweaver Kumo	Creature	U
32552	ALA	222	0	\N	\N	\N	\N	\N	\N	Crumbling Necropolis	Land	U
32564	MID	219	0	\N	\N	\N	t	t	\N	Dire-Strain Rampage	Sorcery	R
32567	ISD	230	0	\N	\N	\N	\N	\N	\N	One-Eyed Scarecrow	Artifact Creature	C
32581	ISD	231	0	\N	\N	\N	\N	\N	\N	Runechanter's Pike	Artifact	R
32586	SHM	222	0	\N	\N	\N	t	t	\N	Vexing Shusher	Creature	R
32587	SOM	228	0	\N	\N	\N	\N	\N	\N	Razorverge Thicket	Land	R
32610	RAV	227	0	t	\N	\N	\N	t	\N	Seeds of Strength	Instant	C
32611	RTR	225	0	\N	\N	\N	\N	\N	\N	Azorius Keyrune	Artifact	U
32620	MID	223	0	\N	\N	t	t	\N	\N	Florian, Voldaren Scion	Lgd. Creature	R
32638	RAV	229	0	t	\N	\N	\N	t	\N	Selesnya Sagittars	Creature	U
32648	MID	225	0	\N	\N	t	\N	t	\N	Ghoulcaller's Harvest	Sorcery	R
32651	ISD	236	0	\N	\N	\N	\N	\N	\N	Witchbane Orb	Artifact	R
32661	GTC	238	0	\N	\N	\N	\N	\N	\N	Skyblinder Staff	Artifact	C
32662	MID	226	0	\N	\N	t	\N	t	\N	Grizzly Ghoul	Creature	U
32681	RTR	230	0	\N	\N	\N	\N	\N	\N	Izzet Keyrune	Artifact	U
32455	ISD	222	1	\N	\N	\N	\N	\N	\N	Galvanic Juggernaut	Artifact Creature	U
32688	CHK	241	0	\N	\N	\N	\N	t	\N	Seshiro the Anointed	Lgd. Creature	R
32708	RAV	234	0	\N	t	t	\N	\N	\N	Szadek, Lord of Secrets	Lgd. Creature	R
32709	RTR	232	0	\N	\N	\N	\N	\N	\N	Rakdos Keyrune	Artifact	U
32718	MID	230	0	t	\N	\N	\N	t	\N	Katilda, Dawnhart Prime	Lgd. Creature	R
32738	ZEN	226	0	\N	\N	\N	\N	\N	\N	Teetering Peaks	Land	C
32741	SOM	239	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32765	RTR	236	0	\N	\N	\N	\N	\N	\N	Volatile Rig	Artifact Creature	R
32768	SHM	235	0	t	\N	\N	\N	t	\N	Raven's Run Dragoon	Creature	C
32769	SOM	241	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32788	MID	235	0	t	\N	\N	t	\N	\N	Rem Karolus, Stalwart Slayer	Lgd. Creature	R
32804	ALA	240	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32809	MRD	246	0	\N	\N	\N	\N	\N	\N	Soul Foundry	Artifact	R
32810	SHM	238	0	t	\N	\N	\N	t	\N	Safehold Duo	Creature	C
32815	GTC	249	0	\N	\N	\N	\N	\N	\N	Watery Grave	Land	R
32835	ZEN	231	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32839	LRW	247	0	t	\N	t	\N	t	\N	Doran, the Siege Tower	Lgd. Creature	R
32860	RTR	243	0	\N	\N	\N	\N	\N	\N	Overgrown Tomb	Land	R
32863	SHM	242	0	t	\N	\N	\N	t	\N	Shield of the Oversoul	Enchantment	C
32864	SOM	248	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32899	MRD	253	0	\N	\N	\N	\N	\N	\N	Talisman of Dominance	Artifact	U
32903	MID	244	0	t	\N	\N	t	\N	\N	Sunrise Cavalier	Creature	U
32906	ISD	255	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32918	RAV	250	0	t	\N	\N	t	\N	\N	Master Warcraft	Instant	R
32928	ISD	257	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32939	RAV	252	0	t	\N	\N	\N	t	\N	Selesnya Guildmage	Creature	U
32942	MRD	257	0	\N	\N	\N	\N	\N	\N	Talisman of Unity	Artifact	U
32946	MID	248	0	\N	t	\N	t	\N	\N	Vadrik, Astral Archmage	Lgd. Creature	R
32958	ISD	260	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32961	ZEN	237	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32967	THS	249	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32972	MRD	260	0	\N	\N	\N	\N	\N	\N	Tel-Jilad Stylus	Artifact	U
32973	SHM	252	0	\N	\N	\N	\N	\N	\N	Grim Poppet	Artifact Creature	R
32976	MID	251	0	\N	t	\N	\N	t	\N	Winterthorn Blessing	Sorcery	U
32989	ZEN	238	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32990	MRD	262	0	\N	\N	\N	\N	\N	\N	Timesifter	Artifact	R
32993	CHK	266	0	\N	\N	\N	\N	\N	\N	Orochi Hatchery	Artifact	R
32514	ZEN	210	1	\N	\N	\N	\N	\N	\N	Akoum Refuge	Land	U
32687	ROE	234	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32747	THS	231	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32733	THS	230	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32882	THS	241	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32551	THS	217	1	\N	\N	\N	\N	\N	\N	Guardians of Meletis	Artifact Creature	C
32635	THS	223	1	\N	\N	\N	\N	\N	\N	Nykthos, Shrine to Nyx	Lgd. Land	R
32900	SHM	245	1	t	\N	\N	\N	t	\N	Wilt-Leaf Liege	Creature	R
32894	ALA	247	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32844	ALA	243	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32905	ALA	248	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32392	LRW	215	3	\N	\N	\N	\N	t	\N	Gilt-Leaf Seer	Creature	C
32490	LRW	222	2	\N	\N	\N	\N	t	\N	Jagged-Scar Archers	Creature	U
32413	ISD	219	1	\N	\N	\N	\N	\N	\N	Cobbled Wings	Artifact	C
36979	NEO	323	0	\N	\N	\N	t	\N	\N	Reinforced Ronin	Artifact Creature	U
32748	ALA	236	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32767	MRD	243	2	\N	\N	\N	\N	\N	\N	Slagwurm Armor	Artifact	C
32590	CHK	234	2	\N	\N	\N	\N	t	\N	Orochi Leafcaller	Creature	C
32464	CHK	225	1	\N	\N	\N	\N	t	\N	Kodama's Reach	Sorcery	C
32744	CHK	245	2	\N	\N	\N	\N	t	\N	Strength of Cedars	Instant	U
32870	ALA	245	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32776	ALA	238	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32440	ALA	214	1	\N	\N	\N	\N	\N	\N	Obelisk of Grixis	Artifact	C
32356	ALA	208	2	t	t	t	\N	\N	\N	Windwright Mage	Artifact Creature	C
32460	SHM	213	0	\N	\N	\N	t	t	\N	Mudbrawler Raiders	Creature	C
32461	SOM	219	0	\N	\N	\N	\N	\N	\N	Vector Asp	Artifact Creature	C
32470	RAV	217	0	\N	t	t	\N	\N	\N	Perplex	Instant	C
32477	ROE	219	0	\N	\N	\N	\N	\N	\N	Keening Stone	Artifact	R
32480	MID	213	0	t	\N	t	\N	\N	\N	Can't Stay Away	Sorcery	R
32497	ISD	225	0	\N	\N	\N	\N	\N	\N	Graveyard Shovel	Artifact	U
32502	SHM	216	0	\N	\N	\N	t	t	\N	Scuzzback Marauders	Creature	C
32503	SOM	222	0	\N	\N	\N	\N	\N	\N	Wall of Tanglecord	Artifact Creature	C
32525	ISD	227	0	\N	\N	\N	\N	\N	\N	Inquisitor's Flail	Artifact	U
32986	ISD	263	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32583	RTR	223	0	t	\N	\N	\N	t	\N	Sundering Growth	Instant	C
32584	ZEN	215	0	\N	\N	\N	\N	\N	\N	Jwar Isle Refuge	Land	U
32591	GTC	233	0	\N	\N	\N	\N	\N	\N	Orzhov Keyrune	Artifact	U
32609	ISD	233	0	\N	\N	\N	\N	\N	\N	Silver-Inlaid Dagger	Artifact	U
32612	ZEN	217	0	\N	\N	\N	\N	\N	\N	Kazandu Refuge	Land	U
32619	GTC	235	0	\N	\N	\N	\N	\N	\N	Razortip Whip	Artifact	C
32624	RAV	228	0	t	\N	\N	\N	t	\N	Selesnya Evangel	Creature	C
32625	RTR	226	0	\N	\N	\N	\N	\N	\N	Chromatic Lantern	Artifact	R
32641	MRD	234	0	\N	\N	\N	\N	\N	\N	Rust Elemental	Artifact Creature	U
32644	LRW	233	0	\N	\N	\N	\N	t	\N	Primal Command	Sorcery	R
32653	RTR	228	0	\N	\N	\N	\N	\N	\N	Codex Shredder	Artifact	U
32679	ISD	238	0	\N	\N	\N	\N	\N	\N	Clifftop Retreat	Land	R
32684	SHM	229	0	t	\N	\N	\N	t	\N	Kitchen Finks	Creature	U
32690	MID	228	0	\N	\N	t	t	\N	\N	Hungry for More	Sorcery	U
32711	MRD	239	0	\N	\N	\N	\N	\N	\N	Scythe of the Wretched	Artifact	R
32714	LRW	238	0	\N	\N	\N	\N	t	\N	Timber Protector	Creature	R
32792	RAV	240	0	\N	\N	t	\N	t	\N	Woodwraith Corrupter	Creature	R
32795	MRD	245	0	\N	\N	\N	\N	\N	\N	Solemn Simulacrum	Artifact Creature	R
32799	ROE	242	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32849	MRD	249	0	\N	\N	\N	\N	\N	\N	Sun Droplet	Artifact	U
32850	SHM	241	0	t	\N	\N	\N	t	\N	Seedcradle Witch	Creature	U
32851	SOM	247	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32858	ISD	251	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32871	ISD	252	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32876	SHM	243	0	t	\N	\N	\N	t	\N	Wheel of Sun and Moon	Enchantment	R
32877	SOM	249	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32919	RTR	248	0	\N	\N	\N	\N	\N	\N	Temple Garden	Land	R
32927	ALA	250	0	t	t	\N	\N	t	\N	Rafiq of the Many	Lgd. Creature	M
32940	RTR	250	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32941	ZEN	236	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32947	THS	247	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32953	SHM	250	0	\N	\N	\N	\N	\N	\N	Elsewhere Flask	Artifact	C
32880	CHK	255	1	\N	\N	\N	\N	\N	\N	Imi Statue	Artifact	R
32955	CHK	262	0	\N	\N	\N	\N	\N	\N	Moonring Mirror	Artifact	R
32981	MRD	261	0	\N	\N	\N	\N	\N	\N	Thought Prison	Artifact	U
32982	SHM	253	0	\N	\N	\N	\N	\N	\N	Heap Doll	Artifact Creature	U
32983	LRW	260	0	\N	\N	\N	\N	\N	\N	Runed Stalactite	Artifact	C
32997	RTR	256	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32998	ZEN	239	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33004	RAV	259	0	\N	\N	\N	\N	\N	\N	Cyclopean Snare	Artifact	U
33007	MRD	264	0	\N	\N	\N	\N	\N	\N	Tooth of Chiss-Goria	Artifact	C
33011	MID	255	0	\N	\N	\N	\N	\N	\N	Moonsilver Key	Artifact	U
33020	RAV	261	0	\N	\N	\N	\N	\N	\N	Glass Golem	Artifact Creature	U
33021	RTR	259	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33030	ZEN	241	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33033	LRW	266	0	\N	\N	\N	\N	\N	\N	Ancient Amphitheater	Land	R
33034	CHK	271	0	\N	\N	\N	\N	\N	\N	Tenza, Godo's Maul	Lgd. Artifact	U
33037	RTR	261	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33045	RTR	262	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33053	RTR	263	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33054	ZEN	242	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33060	RAV	266	0	\N	\N	\N	\N	\N	\N	Nullstone Gargoyle	Artifact Creature	R
33063	MRD	271	0	\N	\N	\N	\N	\N	\N	Vorrac Battlehorns	Artifact	C
33067	MID	262	0	\N	\N	\N	\N	\N	\N	Field of Ruin	Land	U
33070	ZEN	243	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33078	ZEN	244	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33081	LRW	272	0	\N	\N	\N	\N	\N	\N	Shelldock Isle	Land	R
33082	CHK	277	0	\N	\N	\N	\N	\N	\N	Hall of the Bandit Lord	Lgd. Land	R
33085	RTR	267	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33094	ZEN	245	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33098	CHK	279	0	\N	\N	\N	\N	\N	\N	Minamo, School at Water's Edge	Lgd. Land	R
33099	MID	266	0	\N	\N	\N	\N	\N	\N	Rockfall Vale	Land	R
33109	RTR	270	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33116	RAV	273	0	\N	\N	\N	\N	\N	\N	Terrarion	Artifact	C
33119	MRD	278	0	\N	\N	\N	\N	\N	\N	Ancient Den	Artifact Land	C
33123	MID	269	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33126	ZEN	247	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33135	MRD	280	0	\N	\N	\N	\N	\N	\N	Cloudpost	Land	C
33136	SHM	272	0	\N	\N	\N	\N	\N	\N	Graven Cairns	Land	R
33139	MID	271	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33140	RAV	276	0	\N	\N	\N	\N	\N	\N	Dimir Aqueduct	Land	C
33150	MRD	282	0	\N	\N	\N	\N	\N	\N	Great Furnace	Artifact Land	C
33151	SHM	274	0	\N	\N	\N	\N	\N	\N	Madblind Mountain	Land	U
33152	LRW	281	0	\N	\N	\N	\N	\N	\N	Windbrisk Heights	Land	R
33110	ZEN	246	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33014	ZEN	240	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32715	ROE	236	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32642	SHM	226	1	t	\N	\N	\N	t	\N	Elvish Hexhunter	Creature	C
32532	LRW	225	1	\N	\N	\N	\N	t	\N	Lace with Moonglove	Instant	C
32798	LRW	244	1	\N	\N	\N	\N	t	\N	Wren's Run Packmaster	Creature	R
32630	LRW	232	1	\N	\N	\N	\N	t	\N	Oakgnarl Warrior	Creature	C
32506	CHK	228	2	\N	\N	\N	\N	t	\N	Moss Kami	Creature	C
32664	ALA	230	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32706	ALA	233	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32631	ROE	230	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32645	ROE	231	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32659	ROE	232	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32685	SOM	235	2	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
36980	NEO	324	0	\N	\N	\N	t	\N	\N	Upriser Renegade	Creature	U
32800	CHK	249	0	\N	\N	\N	\N	t	\N	Vine Kami	Creature	C
32819	ISD	248	0	\N	\N	\N	\N	\N	\N	Sulfur Falls	Land	R
32822	ZEN	231	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32825	SOM	245	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32828	CHK	251	0	\N	\N	\N	\N	\N	\N	General's Kabuto	Artifact	R
32831	ALA	242	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32847	RTR	242	0	\N	\N	\N	\N	\N	\N	Izzet Guildgate	Land	C
33164	MRD	284	1	\N	\N	\N	\N	\N	\N	Stalking Stones	Land	U
32873	RTR	244	0	\N	\N	\N	\N	\N	\N	Rakdos Guildgate	Land	C
32874	ZEN	233	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32881	MID	242	0	\N	t	\N	\N	t	\N	Slogurk, the Overslime	Lgd. Creature	R
32895	ISD	254	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32898	ZEN	234	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32901	LRW	252	0	\N	\N	t	t	\N	\N	Wort, Boggart Auntie	Lgd. Creature	R
32902	CHK	257	0	\N	\N	\N	\N	\N	\N	Journeyer's Kite	Artifact	R
32908	RTR	247	0	\N	\N	\N	\N	\N	\N	Steam Vents	Land	R
32916	ALA	249	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32930	RTR	249	0	\N	\N	\N	\N	\N	\N	Transguild Promenade	Land	C
32932	MRD	256	0	\N	\N	\N	\N	\N	\N	Talisman of Progress	Artifact	U
32933	SHM	248	0	\N	\N	\N	\N	\N	\N	Cauldron of Souls	Artifact	R
32934	LRW	255	0	\N	\N	\N	\N	\N	\N	Deathrender	Artifact	R
32937	THS	246	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32948	ISD	259	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
32950	RTR	251	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32951	ZEN	236	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32957	THS	248	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32962	MRD	259	0	\N	\N	\N	\N	\N	\N	Tangleroot	Artifact	R
32966	MID	250	0	\N	\N	t	t	\N	\N	Wake to Slaughter	Sorcery	R
32980	ZEN	238	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
32984	CHK	265	0	\N	\N	\N	\N	\N	\N	Oathkeeper, Takeno's Daisho	Lgd. Artifact	R
32985	MID	252	0	\N	\N	\N	\N	\N	\N	The Celestus	Lgd. Artifact	R
33047	MRD	269	0	\N	\N	\N	\N	\N	\N	Triskelion	Artifact Creature	R
33048	SHM	261	0	\N	\N	\N	\N	\N	\N	Revelsong Horn	Artifact	U
33049	LRW	268	0	\N	\N	\N	\N	\N	\N	Gilt-Leaf Palace	Land	R
33052	RAV	265	0	\N	\N	\N	\N	\N	\N	Leashling	Artifact Creature	U
33055	MRD	270	0	\N	\N	\N	\N	\N	\N	Viridian Longbow	Artifact	C
33059	MID	261	0	\N	\N	\N	\N	\N	\N	Evolving Wilds	Land	C
33061	RTR	264	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33062	ZEN	243	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33068	RAV	267	0	\N	\N	\N	\N	\N	\N	Pariah's Shield	Artifact	R
33069	RTR	265	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33079	MRD	273	0	\N	\N	\N	\N	\N	\N	Vulshok Gauntlets	Artifact	C
33083	MID	264	0	\N	\N	\N	\N	\N	\N	Hostile Hostel // Creeping Inn	Land // Artifact Creature	M
33084	RAV	269	0	\N	\N	\N	\N	\N	\N	Plague Boiler	Artifact	R
33095	MRD	275	0	\N	\N	\N	\N	\N	\N	Wizard Replica	Artifact Creature	C
33096	SHM	267	0	\N	\N	\N	\N	\N	\N	Umbral Mantle	Artifact	U
33097	LRW	274	0	\N	\N	\N	\N	\N	\N	Spinerock Knoll	Land	R
33100	RAV	271	0	\N	\N	\N	\N	\N	\N	Spectral Searchlight	Artifact	U
33102	ZEN	245	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33103	MRD	276	0	\N	\N	\N	\N	\N	\N	Worldslayer	Artifact	R
33106	CHK	280	0	\N	\N	\N	\N	\N	\N	Okina, Temple to the Grandfathers	Lgd. Land	R
33107	MID	267	0	\N	\N	\N	\N	\N	\N	Shipwreck Marsh	Land	R
33112	SHM	269	0	\N	\N	\N	\N	\N	\N	Wicker Warcrawler	Artifact Creature	U
33113	LRW	276	0	\N	\N	\N	\N	\N	\N	Vivid Creek	Land	U
33114	CHK	281	0	\N	\N	\N	\N	\N	\N	Pinecrest Ridge	Land	U
33120	SHM	270	0	\N	\N	\N	\N	\N	\N	Wingrattle Scarecrow	Artifact Creature	C
33121	LRW	277	0	\N	\N	\N	\N	\N	\N	Vivid Grove	Land	U
33122	CHK	282	0	\N	\N	\N	\N	\N	\N	Shinka, the Bloodsoaked Keep	Lgd. Land	R
33127	MRD	279	0	\N	\N	\N	\N	\N	\N	Blinkmoth Well	Land	U
33131	MID	270	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33134	ZEN	247	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33137	LRW	279	0	\N	\N	\N	\N	\N	\N	Vivid Meadow	Land	U
33141	RTR	274	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33149	ZEN	248	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33153	CHK	286	0	\N	\N	\N	\N	\N	\N	Waterveil Cavern	Land	U
33154	MID	273	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33156	ZEN	249	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33157	MRD	283	0	\N	\N	\N	\N	\N	\N	Seat of the Synod	Artifact Land	C
33161	MID	274	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33168	MID	275	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33171	SHM	277	0	\N	\N	\N	\N	\N	\N	Mystic Gate	Land	R
33211	RAV	287	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33212	MRD	292	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33216	MID	283	0	\N	\N	\N	\N	\N	\N	Overgrown Farmland	Land	R
33221	CHK	297	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33253	RAV	294	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33254	MRD	299	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33258	MID	290	0	\N	\N	t	\N	\N	\N	Graveyard Trespasser // Graveyard Glutton	Creature	R
33261	SHM	292	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33283	SHM	296	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33284	MID	295	0	\N	\N	\N	t	\N	\N	Spellrune Painter // Spellrune Howler	Creature	U
33288	MID	296	0	\N	\N	\N	t	\N	\N	Tavern Ruffian // Tavern Smasher	Creature	C
33292	MID	297	0	\N	\N	\N	t	\N	\N	Village Watch // Village Reavers	Creature	U
33296	RAV	303	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32830	THS	237	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
32856	THS	239	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33219	SHM	285	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33080	SHM	265	1	\N	\N	\N	\N	\N	\N	Thornwatch Scarecrow	Artifact Creature	C
33291	SHM	298	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33220	LRW	292	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33172	LRW	284	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33262	LRW	299	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32797	SOM	243	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33287	SHM	297	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33282	MRD	304	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33173	CHK	289	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33160	CHK	287	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33138	CHK	284	1	\N	\N	\N	\N	\N	\N	Tranquil Garden	Land	U
33263	CHK	304	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32875	MRD	251	0	\N	\N	\N	\N	\N	\N	Sword of Kaldra	Lgd. Artifact	R
32924	CHK	259	0	\N	\N	\N	\N	\N	\N	Konda's Banner	Lgd. Artifact	R
32925	MID	246	0	\N	\N	\N	t	t	\N	Tovolar, Dire Overlord // Tovolar, the Midnight Scourge	Lgd. Creature	R
27645	ROE	2	1	\N	\N	\N	\N	\N	\N	Artisan of Kozilek	Creature	U
32533	ROE	223	2	\N	\N	\N	\N	\N	\N	Reinforced Bulwark	Artifact Creature	C
28065	ROE	13	1	\N	\N	\N	\N	\N	\N	Ulamog's Crusher	Creature	C
32682	ZEN	222	1	\N	\N	\N	\N	\N	\N	Piranha Marsh	Land	C
30174	ROE	95	2	\N	\N	t	\N	\N	\N	Bala Ged Scorpion	Creature	C
32879	ROE	248	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
30356	ROE	102	1	\N	\N	t	\N	\N	\N	Contaminated Ground	Enchantment	C
32920	ZEN	235	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
31417	SOM	147	2	\N	\N	\N	\N	\N	\N	Corpse Cur	Artifact Creature	C
33400	STX	3	0	\N	\N	\N	\N	\N	\N	Introduction to Annihilation	Sorcery	C
33499	STX	105	0	\N	\N	\N	t	\N	\N	Hall Monitor	Creature	U
33500	STX	106	0	\N	\N	\N	t	\N	\N	Heated Debate	Instant	C
33501	STX	107	0	\N	\N	\N	t	\N	\N	Igneous Inspiration	Sorcery	U
33502	STX	108	0	\N	\N	\N	t	\N	\N	Illuminate History	Sorcery	R
33503	STX	109	0	\N	\N	\N	t	\N	\N	Illustrious Historian	Creature	C
33504	STX	110	0	\N	\N	\N	t	\N	\N	Mascot Interception	Sorcery	U
33506	STX	112	0	\N	\N	\N	t	\N	\N	Pillardrop Warden	Creature	C
33507	STX	113	0	\N	\N	\N	t	\N	\N	Retriever Phoenix	Creature	R
33508	STX	114	0	\N	\N	\N	t	\N	\N	Start from Scratch	Sorcery	U
33509	STX	115	0	\N	\N	\N	t	\N	\N	Storm-Kiln Artist	Creature	U
33511	STX	117	0	\N	\N	\N	t	\N	\N	Tome Shredder	Creature	C
33513	STX	119	0	\N	\N	\N	\N	t	\N	Accomplished Alchemist	Creature	R
33514	STX	120	0	\N	\N	\N	\N	t	\N	Basic Conjuration	Sorcery	R
33521	STX	127	0	\N	\N	\N	\N	t	\N	Dragonsguard Elite	Creature	R
33522	STX	128	0	\N	\N	\N	\N	t	\N	Ecological Appreciation	Sorcery	M
33527	STX	133	0	\N	\N	\N	\N	t	\N	Gnarled Professor	Creature	R
33529	STX	135	0	\N	\N	\N	\N	t	\N	Karok Wrangler	Creature	U
33532	STX	138	0	\N	\N	\N	\N	t	\N	Master Symmetrist	Creature	U
33535	STX	141	0	\N	\N	\N	\N	t	\N	Reckless Amplimancer	Creature	C
33537	STX	143	0	\N	\N	\N	\N	t	\N	Spined Karok	Creature	C
33540	STX	146	0	\N	\N	\N	\N	t	\N	Verdant Mastery	Sorcery	R
33541	STX	147	0	\N	t	\N	\N	t	\N	Augmenter Pugilist // Echoing Equation	Creature	R
33542	STX	148	0	\N	\N	t	\N	t	\N	Blex, Vexing Pest // Search for Blex	Lgd. Creature	M
33543	STX	149	0	t	\N	t	t	\N	\N	Extus, Oriq Overlord // Awaken the Blood Avatar	Lgd. Creature	M
33544	STX	150	0	t	\N	\N	t	\N	\N	Flamescroll Celebrant // Revel in Silence	Creature	R
33545	STX	151	0	\N	t	\N	\N	t	\N	Jadzi, Oracle of Arcavios // Journey to the Oracle	Lgd. Creature	M
33546	STX	152	0	\N	t	\N	\N	t	\N	Kianne, Dean of Substance // Imbraham, Dean of Theory	Lgd. Creature	R
33547	STX	153	0	t	\N	\N	t	\N	\N	Mila, Crafty Companion // Lukka, Wayward Bonder	Lgd. Creature	M
33548	STX	154	0	\N	\N	t	\N	t	\N	Pestilent Cauldron // Restorative Burst	Artifact // Sorcery	R
33549	STX	155	0	t	\N	\N	t	\N	\N	Plargg, Dean of Chaos // Augusta, Dean of Order	Lgd. Creature	R
33550	STX	156	0	\N	t	\N	t	\N	\N	Rowan, Scholar of Sparks // Will, Scholar of Frost	Lgd. Planeswalker	M
33551	STX	157	0	t	\N	t	\N	\N	\N	Selfless Glyphweaver // Deadly Vanity	Creature	R
33553	STX	159	0	\N	t	\N	t	\N	\N	Torrent Sculptor // Flamethrower Sonata	Creature	R
33554	STX	160	0	\N	t	\N	t	\N	\N	Uvilda, Dean of Perfection // Nassari, Dean of Expression	Lgd. Creature	R
33555	STX	161	0	\N	\N	t	\N	t	\N	Valentin, Dean of the Vein // Lisette, Dean of the Root	Lgd. Creature	R
33556	STX	162	0	\N	t	\N	\N	t	\N	Aether Helix	Sorcery	U
33557	STX	163	0	\N	\N	t	\N	t	\N	Beledros Witherbloom	Lgd. Creature	M
33558	STX	164	0	\N	t	\N	\N	t	\N	Biomathematician	Creature	C
33559	STX	165	0	t	\N	\N	t	\N	\N	Blade Historian	Creature	R
33562	STX	168	0	\N	t	\N	\N	t	\N	Body of Research	Sorcery	M
33563	STX	169	0	t	\N	t	\N	\N	\N	Closing Statement	Instant	U
33564	STX	170	0	\N	\N	t	\N	t	\N	Cram Session	Sorcery	C
33565	STX	171	0	\N	t	\N	t	\N	\N	Creative Outburst	Instant	U
33566	STX	172	0	\N	\N	t	\N	t	\N	Culling Ritual	Sorcery	R
33568	STX	174	0	\N	\N	t	\N	t	\N	Daemogoth Titan	Creature	R
33512	STX	118	1	\N	\N	\N	t	\N	\N	Twinscroll Shaman	Creature	C
33525	STX	131	1	\N	\N	\N	\N	t	\N	Field Trip	Sorcery	C
31861	ROE	175	3	\N	\N	\N	\N	t	\N	Aura Gnarlid	Creature	C
33523	STX	129	2	\N	\N	\N	\N	t	\N	Emergent Sequence	Sorcery	U
33505	STX	111	1	\N	\N	\N	t	\N	\N	Pigment Storm	Sorcery	C
33515	STX	121	2	\N	\N	\N	\N	t	\N	Bayou Groff	Creature	C
33518	STX	124	1	\N	\N	\N	\N	t	\N	Charge Through	Instant	C
33539	STX	145	3	\N	\N	\N	\N	t	\N	Tangletrap	Instant	C
33520	STX	126	1	\N	\N	\N	\N	t	\N	Devouring Tendrils	Sorcery	U
33517	STX	123	1	\N	\N	\N	\N	t	\N	Bookwurm	Creature	U
33516	STX	122	1	\N	\N	\N	\N	t	\N	Big Play	Instant	C
33536	STX	142	1	\N	\N	\N	\N	t	\N	Scurrid Colony	Creature	C
33510	STX	116	2	\N	\N	\N	t	\N	\N	Sudden Breakthrough	Instant	C
33538	STX	144	2	\N	\N	\N	\N	t	\N	Springmane Cervin	Creature	C
33533	STX	139	1	\N	\N	\N	\N	t	\N	Overgrown Arch	Creature	U
33526	STX	132	1	\N	\N	\N	\N	t	\N	Fortifying Draught	Instant	U
33528	STX	134	2	\N	\N	\N	\N	t	\N	Honor Troll	Creature	U
33531	STX	137	1	\N	\N	\N	\N	t	\N	Mage Duel	Sorcery	C
33534	STX	140	1	\N	\N	\N	\N	t	\N	Professor of Zoomancy	Creature	C
33569	STX	175	1	\N	\N	t	\N	t	\N	Daemogoth Woe-Eater	Creature	U
36981	NEO	325	0	\N	\N	\N	\N	t	\N	Heir of the Ancient Fang	Creature	C
32878	LRW	250	1	\N	\N	t	\N	t	\N	Nath of the Gilt-Leaf	Lgd. Creature	R
33519	STX	125	1	\N	\N	\N	\N	t	\N	Containment Breach	Sorcery	U
33567	STX	173	1	\N	t	\N	t	\N	\N	Culmination of Studies	Sorcery	R
33552	STX	158	1	t	\N	t	\N	\N	\N	Shaile, Dean of Radiance // Embrose, Dean of Shadow	Lgd. Creature	R
33524	STX	130	1	\N	\N	\N	\N	t	\N	Exponential Growth	Sorcery	R
33561	STX	167	1	t	\N	t	\N	\N	\N	Blot Out the Sky	Sorcery	M
33530	STX	136	1	\N	\N	\N	\N	t	\N	Leyline Invocation	Sorcery	C
33560	STX	166	2	\N	\N	t	\N	t	\N	Blood Researcher	Creature	C
36982	NEO	326	0	\N	\N	\N	\N	t	\N	Jukai Trainee	Creature	C
32886	RTR	245	0	\N	\N	\N	\N	\N	\N	Rogue's Passage	Land	U
32887	ZEN	233	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32890	LRW	251	0	t	t	\N	\N	\N	\N	Sygg, River Guide	Lgd. Creature	R
32891	CHK	256	0	\N	\N	\N	\N	\N	\N	Jade Idol	Artifact	U
32910	MRD	254	0	\N	\N	\N	\N	\N	\N	Talisman of Impulse	Artifact	U
32911	SHM	246	0	\N	\N	\N	\N	\N	\N	Blazethorn Scarecrow	Artifact Creature	C
32912	LRW	253	0	\N	t	t	\N	\N	\N	Wydwen, the Biting Gale	Lgd. Creature	R
32935	CHK	260	0	\N	\N	\N	\N	\N	\N	Kusari-Gama	Artifact	R
32936	MID	247	0	\N	\N	\N	t	t	\N	Unnatural Moonrise	Sorcery	U
32949	RAV	253	0	\N	t	t	\N	\N	\N	Shadow of Doubt	Instant	R
32952	MRD	258	0	\N	\N	\N	\N	\N	\N	Tanglebloom	Artifact	C
32956	MID	249	0	\N	\N	t	t	\N	\N	Vampire Socialite	Creature	U
32963	SHM	251	0	\N	\N	\N	\N	\N	\N	Gnarled Effigy	Artifact	U
32964	LRW	258	0	\N	\N	\N	\N	\N	\N	Moonglove Extract	Artifact	C
32965	CHK	263	0	\N	\N	\N	\N	\N	\N	Nine-Ringed Bo	Artifact	U
32969	RAV	255	0	\N	\N	\N	\N	\N	\N	Boros Signet	Artifact	C
32970	RTR	253	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32979	RTR	254	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
32987	RAV	257	0	\N	\N	\N	\N	\N	\N	Cloudstone Curio	Artifact	R
32996	RAV	258	0	\N	\N	\N	\N	\N	\N	Crown of Convergence	Artifact	R
32999	MRD	263	0	\N	\N	\N	\N	\N	\N	Titanium Golem	Artifact Creature	C
33003	MID	254	0	\N	\N	\N	\N	\N	\N	Jack-o'-Lantern	Artifact	C
33009	LRW	263	0	\N	\N	\N	\N	\N	\N	Thousand-Year Elixir	Artifact	R
33010	CHK	268	0	\N	\N	\N	\N	\N	\N	Sensei's Divining Top	Artifact	U
33015	MRD	265	0	\N	\N	\N	\N	\N	\N	Tower of Champions	Artifact	R
33019	MID	256	0	\N	\N	\N	\N	\N	\N	Mystic Skull // Mystic Monstrosity	Artifact // Artifact Creature	U
33026	CHK	270	0	\N	\N	\N	\N	\N	\N	Tatsumasa, the Dragon's Fang	Lgd. Artifact	R
33029	RTR	260	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33038	ZEN	241	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33042	CHK	272	0	\N	\N	\N	\N	\N	\N	Uba Mask	Artifact	R
33043	MID	259	0	\N	\N	\N	\N	\N	\N	Stuffed Bear	Artifact	C
32178	ZEN	186	1	\N	\N	\N	\N	t	\N	Tanglesap	Instant	C
31758	ZEN	156	1	\N	\N	\N	\N	t	\N	Baloth Cage Trap	Instant	U
32141	ROE	195	1	\N	\N	\N	\N	t	\N	Living Destiny	Instant	C
33022	ZEN	240	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
30630	ZEN	101	1	\N	\N	t	\N	\N	\N	Marsh Casualties	Sorcery	U
30344	ZEN	90	1	\N	\N	t	\N	\N	\N	Giant Scorpion	Creature	C
32931	ZEN	235	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
27633	ROE	4	1	\N	\N	\N	\N	\N	\N	Emrakul, the Aeons Torn	Lgd. Creature	M
33401	STX	5	0	\N	\N	\N	\N	\N	\N	Mascot Exhibition	Sorcery	M
33570	STX	176	0	\N	\N	t	\N	t	\N	Deadly Brew	Sorcery	U
33571	STX	177	0	\N	t	\N	\N	t	\N	Decisive Denial	Instant	U
33572	STX	178	0	\N	\N	t	\N	t	\N	Dina, Soul Steeper	Lgd. Creature	U
33573	STX	179	0	\N	t	\N	\N	t	\N	Double Major	Instant	R
33574	STX	180	0	t	\N	t	\N	\N	\N	Dramatic Finale	Enchantment	R
33576	STX	182	0	\N	t	\N	t	\N	\N	Elemental Masterpiece	Sorcery	C
33578	STX	184	0	\N	t	\N	\N	t	\N	Eureka Moment	Instant	C
33580	STX	186	0	\N	t	\N	t	\N	\N	Expressive Iteration	Sorcery	U
33581	STX	187	0	\N	t	\N	\N	t	\N	Fractal Summoning	Sorcery	C
33583	STX	189	0	\N	t	\N	t	\N	\N	Galazeth Prismari	Lgd. Creature	M
33584	STX	190	0	\N	t	\N	\N	t	\N	Golden Ratio	Sorcery	U
33585	STX	191	0	\N	\N	t	\N	t	\N	Harness Infinity	Instant	M
33586	STX	192	0	t	\N	\N	t	\N	\N	Hofri Ghostforge	Lgd. Creature	M
33587	STX	193	0	t	\N	t	\N	\N	\N	Humiliate	Sorcery	U
33589	STX	195	0	t	\N	t	\N	\N	\N	Inkling Summoning	Sorcery	C
33590	STX	196	0	\N	t	\N	\N	t	\N	Kasmina, Enigma Sage	Lgd. Planeswalker	M
33591	STX	197	0	t	\N	t	\N	\N	\N	Killian, Ink Duelist	Lgd. Creature	U
33593	STX	199	0	t	\N	\N	t	\N	\N	Lorehold Command	Instant	R
33594	STX	200	0	t	\N	\N	t	\N	\N	Lorehold Excavation	Enchantment	U
33596	STX	202	0	\N	t	\N	t	\N	\N	Maelstrom Muse	Creature	U
33597	STX	203	0	\N	t	\N	t	\N	\N	Magma Opus	Instant	M
33598	STX	204	0	t	\N	\N	t	\N	\N	Make Your Mark	Instant	C
33599	STX	205	0	\N	t	\N	\N	t	\N	Manifestation Sage	Creature	R
33606	STX	212	0	\N	t	\N	t	\N	\N	Practical Research	Instant	U
33607	STX	213	0	\N	t	\N	t	\N	\N	Prismari Apprentice	Creature	U
33608	STX	214	0	\N	t	\N	t	\N	\N	Prismari Command	Instant	R
33609	STX	215	0	\N	t	\N	t	\N	\N	Prismari Pledgemage	Creature	C
33610	STX	216	0	\N	t	\N	\N	t	\N	Quandrix Apprentice	Creature	U
33611	STX	217	0	\N	t	\N	\N	t	\N	Quandrix Command	Instant	R
33612	STX	218	0	\N	t	\N	\N	t	\N	Quandrix Cultivator	Creature	U
33615	STX	221	0	t	\N	\N	t	\N	\N	Radiant Scrollwielder	Creature	R
33616	STX	222	0	t	\N	\N	t	\N	\N	Reconstruct History	Sorcery	U
33617	STX	223	0	t	\N	\N	t	\N	\N	Relic Sloth	Creature	C
33579	STX	185	1	t	\N	t	\N	\N	\N	Exhilarating Elocution	Sorcery	C
33575	STX	181	1	\N	t	\N	t	\N	\N	Elemental Expressionist	Creature	R
32915	THS	244	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
36983	NEO	327	0	t	\N	\N	t	\N	\N	Asari Captain	Creature	U
33604	STX	210	1	t	\N	t	\N	\N	\N	Owlin Shieldmage	Creature	C
33602	STX	208	1	\N	t	\N	\N	t	\N	Needlethorn Drake	Creature	C
33592	STX	198	1	t	\N	\N	t	\N	\N	Lorehold Apprentice	Creature	U
33577	STX	183	1	\N	t	\N	t	\N	\N	Elemental Summoning	Sorcery	C
33595	STX	201	1	t	\N	\N	t	\N	\N	Lorehold Pledgemage	Creature	C
33613	STX	219	2	\N	t	\N	\N	t	\N	Quandrix Pledgemage	Creature	C
33605	STX	211	2	\N	\N	t	\N	t	\N	Pest Summoning	Sorcery	C
32889	SHM	244	1	t	\N	\N	\N	t	\N	Wilt-Leaf Cavaliers	Creature	U
33600	STX	206	1	\N	\N	t	\N	t	\N	Moldering Karok	Creature	C
33601	STX	207	1	\N	\N	t	\N	t	\N	Mortality Spear	Instant	U
33588	STX	194	1	\N	\N	t	\N	t	\N	Infuse with Vitality	Instant	C
33603	STX	209	2	\N	t	\N	t	\N	\N	Oggyar Battle-Seer	Creature	C
30088	WWK	104	4	\N	\N	\N	\N	t	\N	Groundswell	Instant	C
33008	SHM	256	1	\N	\N	\N	\N	\N	\N	Lurebound Scarecrow	Artifact Creature	U
33025	LRW	265	1	\N	\N	\N	\N	\N	\N	Wanderer's Twig	Artifact	C
33614	STX	220	3	t	\N	\N	t	\N	\N	Quintorius, Field Historian	Lgd. Creature	U
33582	STX	188	3	t	\N	t	\N	\N	\N	Fracture	Instant	U
32994	MID	253	0	\N	\N	\N	\N	\N	\N	Crossroads Candleguide	Artifact Creature	C
33005	RTR	257	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33006	ZEN	239	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33012	RAV	260	0	\N	\N	\N	\N	\N	\N	Dimir Signet	Artifact	C
33013	RTR	258	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33031	MRD	267	0	\N	\N	\N	\N	\N	\N	Tower of Fortunes	Artifact	R
33032	SHM	259	0	\N	\N	\N	\N	\N	\N	Rattleblaze Scarecrow	Artifact Creature	C
33035	MID	258	0	\N	\N	\N	\N	\N	\N	Silver Bolt	Artifact	C
33036	RAV	263	0	\N	\N	\N	\N	\N	\N	Grifter's Blade	Artifact	U
33046	ZEN	242	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33050	CHK	273	0	\N	\N	\N	\N	\N	\N	Boseiju, Who Shelters All	Lgd. Land	R
33051	MID	260	0	\N	\N	\N	\N	\N	\N	Deserted Beach	Land	R
33056	SHM	262	0	\N	\N	\N	\N	\N	\N	Scrapbasket	Artifact Creature	C
33057	LRW	269	0	\N	\N	\N	\N	\N	\N	Howltooth Hollow	Land	R
33058	CHK	274	0	\N	\N	\N	\N	\N	\N	Cloudcrest Lake	Land	U
33065	LRW	270	0	\N	\N	\N	\N	\N	\N	Mosswort Bridge	Land	R
33066	CHK	275	0	\N	\N	\N	\N	\N	\N	Eiganjo Castle	Lgd. Land	R
33071	MRD	272	0	\N	\N	\N	\N	\N	\N	Vulshok Battlegear	Artifact	U
33075	MID	263	0	\N	\N	\N	\N	\N	\N	Haunted Ridge	Land	R
33076	RAV	268	0	\N	\N	\N	\N	\N	\N	Peregrine Mask	Artifact	U
33088	SHM	266	0	\N	\N	\N	\N	\N	\N	Trip Noose	Artifact	U
33091	MID	265	0	\N	\N	\N	\N	\N	\N	Overgrown Farmland	Land	R
33092	RAV	270	0	\N	\N	\N	\N	\N	\N	Selesnya Signet	Artifact	C
33128	SHM	271	0	\N	\N	\N	\N	\N	\N	Fire-Lit Thicket	Land	R
33129	LRW	278	0	\N	\N	\N	\N	\N	\N	Vivid Marsh	Land	U
33130	CHK	283	0	\N	\N	\N	\N	\N	\N	Shizo, Death's Storehouse	Lgd. Land	R
33132	RAV	275	0	\N	\N	\N	\N	\N	\N	Boros Garrison	Land	C
33133	RTR	273	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33142	ZEN	248	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33145	LRW	280	0	\N	\N	\N	\N	\N	\N	Wanderwine Hub	Land	R
33146	CHK	285	0	\N	\N	\N	\N	\N	\N	Untaidake, the Cloud Keeper	Lgd. Land	R
33147	MID	272	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
31968	ZEN	171	1	\N	\N	\N	\N	t	\N	Nissa's Chosen	Creature	C
31144	ROE	133	1	\N	\N	t	\N	\N	\N	Zulaport Enforcer	Creature	C
33402	STX	6	0	\N	\N	\N	\N	\N	\N	Wandering Archaic // Explore the Vastlands	Creature	R
33403	STX	13	0	t	\N	\N	\N	\N	\N	Detention Vortex	Enchantment	U
33405	STX	14	0	t	\N	\N	\N	\N	\N	Devastating Mastery	Sorcery	R
33408	STX	16	0	t	\N	\N	\N	\N	\N	Eager First-Year	Creature	C
33618	STX	224	0	t	\N	\N	t	\N	\N	Returned Pastcaller	Creature	U
33619	STX	225	0	t	\N	\N	t	\N	\N	Rip Apart	Sorcery	U
33620	STX	226	0	t	\N	t	\N	\N	\N	Rise of Extus	Sorcery	C
33621	STX	227	0	\N	t	\N	t	\N	\N	Rootha, Mercurial Artist	Lgd. Creature	U
33622	STX	228	0	\N	\N	t	\N	t	\N	Rushed Rebirth	Instant	R
33624	STX	230	0	t	\N	t	\N	\N	\N	Shadrix Silverquill	Lgd. Creature	M
33626	STX	232	0	t	\N	t	\N	\N	\N	Silverquill Command	Sorcery	R
33627	STX	233	0	t	\N	t	\N	\N	\N	Silverquill Pledgemage	Creature	C
33628	STX	234	0	t	\N	t	\N	\N	\N	Silverquill Silencer	Creature	R
33630	STX	236	0	t	\N	\N	t	\N	\N	Spirit Summoning	Sorcery	C
33631	STX	237	0	t	\N	t	\N	\N	\N	Spiteful Squad	Creature	C
33634	STX	240	0	\N	t	\N	\N	t	\N	Tanazir Quandrix	Lgd. Creature	M
33636	STX	242	0	\N	\N	t	\N	t	\N	Tend the Pests	Instant	U
33638	STX	244	0	t	\N	t	\N	\N	\N	Vanishing Verse	Instant	R
33639	STX	245	0	t	\N	\N	t	\N	\N	Velomachus Lorehold	Lgd. Creature	M
33640	STX	246	0	t	\N	\N	t	\N	\N	Venerable Warsinger	Creature	R
33642	STX	248	0	\N	\N	t	\N	t	\N	Witherbloom Command	Sorcery	R
33087	MRD	274	3	\N	\N	\N	\N	\N	\N	Welding Jar	Artifact	C
33644	STX	250	0	\N	t	\N	\N	t	\N	Zimone, Quandrix Prodigy	Lgd. Creature	U
33646	STX	252	0	\N	\N	\N	\N	\N	\N	Campus Guide	Artifact Creature	C
33647	STX	253	0	\N	\N	\N	\N	\N	\N	Codie, Vociferous Codex	Lgd. Artifact Creature	R
33650	STX	256	0	\N	\N	\N	\N	\N	\N	Letter of Acceptance	Artifact	C
33651	STX	257	0	\N	\N	\N	\N	\N	\N	Reflective Golem	Artifact Creature	U
33653	STX	259	0	\N	\N	\N	\N	\N	\N	Strixhaven Stadium	Artifact	R
33654	STX	260	0	\N	\N	\N	\N	\N	\N	Team Pennant	Artifact	U
33623	STX	229	1	t	\N	t	\N	\N	\N	Shadewing Laureate	Creature	U
33656	STX	262	0	\N	\N	\N	\N	\N	\N	Access Tunnel	Land	U
33657	STX	263	0	\N	\N	\N	\N	\N	\N	Archway Commons	Land	C
33658	STX	264	0	\N	\N	\N	\N	\N	\N	The Biblioplex	Land	R
33659	STX	265	0	\N	\N	\N	\N	\N	\N	Frostboil Snarl	Land	R
33660	STX	266	0	\N	\N	\N	\N	\N	\N	Furycalm Snarl	Land	R
33661	STX	267	0	\N	\N	\N	\N	\N	\N	Hall of Oracles	Land	R
33663	STX	269	0	\N	\N	\N	\N	\N	\N	Necroblossom Snarl	Land	R
33665	STX	271	1	\N	\N	\N	\N	\N	\N	Quandrix Campus	Land	C
33666	STX	272	0	\N	\N	\N	\N	\N	\N	Shineshadow Snarl	Land	R
33667	STX	273	0	\N	\N	\N	\N	\N	\N	Silverquill Campus	Land	C
33668	STX	274	0	\N	\N	\N	\N	\N	\N	Vineglimmer Snarl	Land	R
33670	STX	276	0	\N	\N	t	\N	\N	\N	Professor Onyx	Lgd. Planeswalker	M
33671	STX	277	0	t	\N	\N	t	\N	\N	Mila, Crafty Companion // Lukka, Wayward Bonder	Lgd. Creature	M
33672	STX	278	0	\N	t	\N	t	\N	\N	Rowan, Scholar of Sparks // Will, Scholar of Frost	Lgd. Planeswalker	M
33641	STX	247	1	\N	\N	t	\N	t	\N	Witherbloom Apprentice	Creature	U
33645	STX	251	1	\N	\N	\N	\N	\N	\N	Biblioplex Assistant	Artifact Creature	C
33064	SHM	263	1	\N	\N	\N	\N	\N	\N	Scuttlemutt	Artifact Creature	C
33662	STX	268	1	\N	\N	\N	\N	\N	\N	Lorehold Campus	Land	C
33649	STX	255	1	\N	\N	\N	\N	\N	\N	Excavated Wall	Artifact Creature	C
33648	STX	254	1	\N	\N	\N	\N	\N	\N	Cogwork Archivist	Artifact Creature	C
33669	STX	275	1	\N	\N	\N	\N	\N	\N	Witherbloom Campus	Land	C
36984	NEO	328	0	t	\N	t	t	\N	\N	Isshin, Two Heavens as One	Lgd. Creature	R
33652	STX	258	2	\N	\N	\N	\N	\N	\N	Spell Satchel	Artifact	U
33629	STX	235	1	\N	t	\N	t	\N	\N	Spectacle Mage	Creature	C
33635	STX	241	1	\N	t	\N	t	\N	\N	Teach by Example	Instant	C
33625	STX	231	2	t	\N	t	\N	\N	\N	Silverquill Apprentice	Creature	U
33632	STX	238	1	\N	t	\N	\N	t	\N	Square Up	Instant	C
32010	ZEN	174	2	\N	\N	\N	\N	t	\N	Oran-Rief Survivalist	Creature	C
33633	STX	239	2	t	\N	\N	t	\N	\N	Stonebound Mentor	Creature	C
33637	STX	243	3	t	\N	\N	t	\N	\N	Thrilling Discovery	Sorcery	C
33001	LRW	262	0	\N	\N	\N	\N	\N	\N	Thorn of Amethyst	Artifact	R
33002	CHK	267	0	\N	\N	\N	\N	\N	\N	Reito Lantern	Artifact	U
33016	SHM	257	0	\N	\N	\N	\N	\N	\N	Painter's Servant	Artifact Creature	R
33017	LRW	264	0	\N	\N	\N	\N	\N	\N	Twinning Glass	Artifact	R
33018	CHK	269	0	\N	\N	\N	\N	\N	\N	Shell of the Last Kappa	Lgd. Artifact	R
33023	MRD	266	0	\N	\N	\N	\N	\N	\N	Tower of Eons	Artifact	R
33024	SHM	258	0	\N	\N	\N	\N	\N	\N	Pili-Pala	Artifact Creature	C
33027	MID	257	0	\N	\N	\N	\N	\N	\N	Pithing Needle	Artifact	R
33028	RAV	262	0	\N	\N	\N	\N	\N	\N	Golgari Signet	Artifact	C
33039	MRD	268	0	\N	\N	\N	\N	\N	\N	Tower of Murmurs	Artifact	R
33040	SHM	260	0	t	t	t	t	t	\N	Reaper King	Lgd. Artifact Creature	R
33041	LRW	267	0	\N	\N	\N	\N	\N	\N	Auntie's Hovel	Land	R
33044	RAV	264	0	\N	\N	\N	\N	\N	\N	Junktroller	Artifact Creature	U
33072	SHM	264	0	\N	\N	\N	\N	\N	\N	Tatterkite	Artifact Creature	U
33073	LRW	271	0	\N	\N	\N	\N	\N	\N	Secluded Glen	Land	R
33074	CHK	276	0	\N	\N	\N	\N	\N	\N	Forbidden Orchard	Land	R
33077	RTR	266	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33086	ZEN	244	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33089	LRW	273	0	\N	\N	\N	\N	\N	\N	Shimmering Grotto	Land	C
33090	CHK	278	0	\N	\N	\N	\N	\N	\N	Lantern-Lit Graveyard	Land	U
33093	RTR	268	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33101	RTR	269	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33104	SHM	268	0	\N	\N	\N	\N	\N	\N	Watchwing Scarecrow	Artifact Creature	C
33105	LRW	275	0	\N	\N	\N	\N	\N	\N	Vivid Crag	Land	U
33108	RAV	272	0	\N	\N	\N	\N	\N	\N	Sunforger	Artifact	R
33111	MRD	277	0	\N	\N	\N	\N	\N	\N	Yotian Soldier	Artifact Creature	C
33115	MID	268	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33117	RTR	271	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33286	MRD	305	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33124	RAV	274	0	\N	\N	\N	\N	\N	\N	Voyager Staff	Artifact	U
33125	RTR	272	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33143	MRD	281	0	\N	\N	\N	\N	\N	\N	Glimmervoid	Land	R
33144	SHM	273	0	\N	\N	\N	\N	\N	\N	Leechridden Swamp	Land	U
33148	RAV	277	0	\N	\N	\N	\N	\N	\N	Duskmantle, House of Shadow	Land	U
33175	RAV	281	0	\N	\N	\N	\N	\N	\N	Selesnya Sanctuary	Land	C
33176	MRD	286	0	\N	\N	\N	\N	\N	\N	Vault of Whispers	Artifact Land	C
33180	MID	277	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33181	RAV	282	0	\N	\N	\N	\N	\N	\N	Sunhome, Fortress of the Legion	Land	U
33185	CHK	291	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33188	MRD	288	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33189	SHM	280	0	\N	\N	\N	\N	\N	\N	Sunken Ruins	Land	R
33192	MID	279	0	\N	\N	\N	t	t	\N	Arlinn, the Pack's Hope // Arlinn, the Moon's Fury	Lgd. Planeswalker	M
33193	RAV	284	0	\N	\N	\N	\N	\N	\N	Temple Garden	Land	R
33197	CHK	293	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33198	MID	280	0	t	t	\N	\N	\N	\N	Teferi, Who Slows the Sunset	Lgd. Planeswalker	M
33202	LRW	289	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33205	RAV	286	0	\N	\N	\N	\N	\N	\N	Watery Grave	Land	R
33206	MRD	291	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33210	MID	282	0	\N	\N	\N	\N	\N	\N	Haunted Ridge	Land	R
33215	CHK	296	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33223	RAV	289	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33224	MRD	294	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33228	MID	285	0	\N	\N	\N	\N	\N	\N	Shipwreck Marsh	Land	R
33229	RAV	290	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33236	MRD	296	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33241	RAV	292	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33242	MRD	297	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33246	MID	288	0	\N	t	\N	\N	\N	\N	Suspicious Stowaway // Seafaring Werewolf	Creature	R
33249	SHM	290	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33250	LRW	297	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33259	RAV	295	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33260	MRD	300	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33264	MID	291	0	\N	\N	t	\N	\N	\N	Shady Traveler // Stalking Predator	Creature	C
33267	SHM	293	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33271	RAV	297	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33272	MRD	302	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33273	SHM	294	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33276	MID	293	0	\N	\N	\N	t	\N	\N	Harvesttide Infiltrator // Harvesttide Assailant	Creature	C
33277	RAV	298	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33281	RAV	299	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33285	RAV	300	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33289	RAV	301	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33293	RAV	302	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33295	MID	298	0	\N	\N	\N	\N	t	\N	Bird Admirer // Wing Shredder	Creature	C
33299	RAV	304	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33301	MID	300	0	\N	\N	\N	\N	t	\N	Dawnhart Mentor	Creature	U
33302	RAV	305	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33303	MID	301	0	\N	\N	\N	\N	t	\N	Dawnhart Rejuvenator	Creature	C
33304	RAV	306	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33305	MID	302	0	\N	\N	\N	\N	t	\N	Hound Tamer // Untamed Pup	Creature	U
33213	SHM	284	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33201	SHM	282	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33300	SHM	301	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33294	SHM	299	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33165	SHM	276	1	\N	\N	\N	\N	\N	\N	Moonring Island	Land	U
33214	LRW	291	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33166	LRW	283	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33268	LRW	300	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33184	LRW	286	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33238	LRW	295	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33232	LRW	294	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33225	SHM	286	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33237	SHM	288	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33290	MRD	306	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33251	CHK	302	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33167	CHK	288	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33269	CHK	305	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33233	CHK	299	2	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33155	RAV	278	0	\N	\N	\N	\N	\N	\N	Golgari Rot Farm	Land	C
33158	SHM	275	0	\N	\N	\N	\N	\N	\N	Mistveil Plains	Land	U
33162	RAV	279	0	\N	\N	\N	\N	\N	\N	Overgrown Tomb	Land	R
33163	ZEN	249	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33169	RAV	280	0	\N	\N	\N	\N	\N	\N	Sacred Foundry	Land	R
33170	MRD	285	0	\N	\N	\N	\N	\N	\N	Tree of Tales	Artifact Land	C
33174	MID	276	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33177	SHM	278	0	\N	\N	\N	\N	\N	\N	Reflecting Pool	Land	R
33182	MRD	287	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33186	MID	278	0	\N	\N	\N	\N	t	\N	Wrenn and Seven	Lgd. Planeswalker	M
33187	RAV	283	0	\N	\N	\N	\N	\N	\N	Svogthos, the Restless Tomb	Land	U
33191	CHK	292	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33194	MRD	289	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33195	SHM	281	0	\N	\N	\N	\N	\N	\N	Wooded Bastion	Land	R
33199	RAV	285	0	\N	\N	\N	\N	\N	\N	Vitu-Ghazi, the City-Tree	Land	U
33200	MRD	290	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33203	CHK	294	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33204	MID	281	0	\N	\N	\N	\N	\N	\N	Deserted Beach	Land	R
33209	CHK	295	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33217	RAV	288	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33218	MRD	293	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33222	MID	284	0	\N	\N	\N	\N	\N	\N	Rockfall Vale	Land	R
33227	CHK	298	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33230	MRD	295	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33234	MID	286	0	t	\N	\N	\N	\N	\N	Brutal Cathar // Moonrage Brute	Creature	R
33235	RAV	291	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33240	MID	287	0	t	\N	\N	\N	\N	\N	Candlegrove Witch	Creature	C
33247	RAV	293	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33248	MRD	298	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33252	MID	289	0	\N	\N	t	\N	\N	\N	Baneblade Scoundrel // Baneclaw Marauder	Creature	U
33278	MRD	303	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33265	RAV	296	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33266	MRD	301	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33270	MID	292	0	\N	\N	\N	t	\N	\N	Fangblade Brigand // Fangblade Eviscerator	Creature	U
33279	SHM	295	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33280	MID	294	0	\N	\N	\N	t	\N	\N	Reckless Stormseeker // Storm-Charged Slasher	Creature	R
30036	WWK	102	1	\N	\N	\N	\N	t	\N	Grappler Spider	Creature	C
29906	WWK	97	1	\N	\N	\N	\N	t	\N	Bestial Menace	Sorcery	U
30348	WWK	114	1	\N	\N	\N	\N	t	\N	Summit Apes	Creature	U
30296	WWK	112	1	\N	\N	\N	\N	t	\N	Snapping Creeper	Creature	C
30084	ZEN	80	1	\N	\N	t	\N	\N	\N	Blood Seeker	Creature	C
30901	ROE	123	1	\N	\N	t	\N	\N	\N	Perish the Thought	Sorcery	C
33404	STX	7	0	t	\N	\N	\N	\N	\N	Academic Probation	Sorcery	R
33406	STX	15	0	t	\N	\N	\N	\N	\N	Dueling Coach	Creature	U
33673	STX	279	0	\N	t	\N	\N	t	\N	Kasmina, Enigma Sage	Lgd. Planeswalker	M
33674	STX	280	0	t	\N	t	\N	\N	\N	Shadrix Silverquill	Lgd. Creature	M
33675	STX	281	0	\N	t	\N	t	\N	\N	Galazeth Prismari	Lgd. Creature	M
33676	STX	282	0	\N	\N	t	\N	t	\N	Beledros Witherbloom	Lgd. Creature	M
33677	STX	283	0	t	\N	\N	t	\N	\N	Velomachus Lorehold	Lgd. Creature	M
33678	STX	284	0	\N	t	\N	\N	t	\N	Tanazir Quandrix	Lgd. Creature	M
33679	STX	285	0	\N	\N	\N	\N	\N	\N	Mascot Exhibition	Sorcery	M
33680	STX	286	0	\N	\N	\N	\N	\N	\N	Wandering Archaic // Explore the Vastlands	Creature	R
33681	STX	287	0	t	\N	\N	\N	\N	\N	Academic Probation	Sorcery	R
33682	STX	288	0	t	\N	\N	\N	\N	\N	Devastating Mastery	Sorcery	R
33683	STX	289	0	t	\N	\N	\N	\N	\N	Elite Spellbinder	Creature	R
33684	STX	290	0	t	\N	\N	\N	\N	\N	Leonin Lightscribe	Creature	R
33685	STX	291	0	t	\N	\N	\N	\N	\N	Mavinda, Students' Advocate	Lgd. Creature	M
33686	STX	292	0	t	\N	\N	\N	\N	\N	Semester's End	Instant	R
33687	STX	293	0	t	\N	\N	\N	\N	\N	Sparring Regimen	Enchantment	R
33688	STX	294	0	t	\N	\N	\N	\N	\N	Strict Proctor	Creature	R
33689	STX	295	0	\N	t	\N	\N	\N	\N	Archmage Emeritus	Creature	R
33690	STX	296	0	\N	t	\N	\N	\N	\N	Dream Strix	Creature	R
33691	STX	297	0	\N	t	\N	\N	\N	\N	Ingenious Mastery	Sorcery	R
33692	STX	298	0	\N	t	\N	\N	\N	\N	Multiple Choice	Sorcery	R
33693	STX	299	0	\N	t	\N	\N	\N	\N	Teachings of the Archaics	Sorcery	R
33694	STX	300	0	\N	t	\N	\N	\N	\N	Tempted by the Oriq	Sorcery	R
33695	STX	301	0	\N	\N	t	\N	\N	\N	Baleful Mastery	Instant	R
33696	STX	302	0	\N	\N	t	\N	\N	\N	Callous Bloodmage	Creature	R
33697	STX	303	0	\N	\N	t	\N	\N	\N	Confront the Past	Sorcery	R
33698	STX	304	0	\N	\N	t	\N	\N	\N	Oriq Loremage	Creature	R
33699	STX	305	0	\N	\N	t	\N	\N	\N	Poet's Quill	Artifact	R
33700	STX	306	0	\N	\N	t	\N	\N	\N	Sedgemoor Witch	Creature	R
33701	STX	307	0	\N	\N	\N	t	\N	\N	Conspiracy Theorist	Creature	R
33702	STX	308	0	\N	\N	\N	t	\N	\N	Crackle with Power	Sorcery	M
33703	STX	309	0	\N	\N	\N	t	\N	\N	Draconic Intervention	Sorcery	R
33704	STX	310	0	\N	\N	\N	t	\N	\N	Efreet Flamepainter	Creature	R
33705	STX	311	0	\N	\N	\N	t	\N	\N	Fervent Mastery	Sorcery	R
33706	STX	312	0	\N	\N	\N	t	\N	\N	Illuminate History	Sorcery	R
33707	STX	313	0	\N	\N	\N	t	\N	\N	Retriever Phoenix	Creature	R
33708	STX	314	0	\N	\N	\N	\N	t	\N	Accomplished Alchemist	Creature	R
33207	SHM	283	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33183	SHM	279	1	\N	\N	\N	\N	\N	\N	Sapseep Forest	Land	U
33226	LRW	293	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33208	LRW	290	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33159	LRW	282	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33274	LRW	301	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33178	LRW	285	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33256	LRW	298	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33190	LRW	287	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33196	LRW	288	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33244	LRW	296	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33243	SHM	289	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33231	SHM	287	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33239	CHK	300	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33179	CHK	290	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33275	CHK	306	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33257	CHK	303	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33298	MID	299	0	\N	\N	\N	\N	t	\N	Burly Breaker // Dire-Strain Demolisher	Creature	U
33118	ZEN	246	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
32211	ROE	200	1	\N	\N	\N	\N	t	\N	Nema Siltlurker	Creature	C
32853	ROE	246	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
29444	ROE	67	1	\N	t	\N	\N	\N	\N	Fleeting Distraction	Instant	C
33709	STX	315	0	\N	\N	\N	\N	t	\N	Basic Conjuration	Sorcery	R
33710	STX	316	0	\N	\N	\N	\N	t	\N	Dragonsguard Elite	Creature	R
33711	STX	317	0	\N	\N	\N	\N	t	\N	Ecological Appreciation	Sorcery	M
33712	STX	318	0	\N	\N	\N	\N	t	\N	Exponential Growth	Sorcery	R
33713	STX	319	0	\N	\N	\N	\N	t	\N	Gnarled Professor	Creature	R
33714	STX	320	0	\N	\N	\N	\N	t	\N	Verdant Mastery	Sorcery	R
33715	STX	321	0	\N	t	\N	\N	t	\N	Augmenter Pugilist // Echoing Equation	Creature	R
33716	STX	322	0	\N	\N	t	\N	t	\N	Blex, Vexing Pest // Search for Blex	Lgd. Creature	M
33717	STX	323	0	t	\N	t	t	\N	\N	Extus, Oriq Overlord // Awaken the Blood Avatar	Lgd. Creature	M
33718	STX	324	0	t	\N	\N	t	\N	\N	Flamescroll Celebrant // Revel in Silence	Creature	R
33719	STX	325	0	\N	t	\N	\N	t	\N	Jadzi, Oracle of Arcavios // Journey to the Oracle	Lgd. Creature	M
33720	STX	326	0	\N	t	\N	\N	t	\N	Kianne, Dean of Substance // Imbraham, Dean of Theory	Lgd. Creature	R
33721	STX	327	0	\N	\N	t	\N	t	\N	Pestilent Cauldron // Restorative Burst	Artifact // Sorcery	R
33722	STX	328	0	t	\N	\N	t	\N	\N	Plargg, Dean of Chaos // Augusta, Dean of Order	Lgd. Creature	R
33723	STX	329	0	t	\N	t	\N	\N	\N	Selfless Glyphweaver // Deadly Vanity	Creature	R
33724	STX	330	0	t	\N	t	\N	\N	\N	Shaile, Dean of Radiance // Embrose, Dean of Shadow	Lgd. Creature	R
33725	STX	331	0	\N	t	\N	t	\N	\N	Torrent Sculptor // Flamethrower Sonata	Creature	R
33726	STX	332	0	\N	t	\N	t	\N	\N	Uvilda, Dean of Perfection // Nassari, Dean of Expression	Lgd. Creature	R
33727	STX	333	0	\N	\N	t	\N	t	\N	Valentin, Dean of the Vein // Lisette, Dean of the Root	Lgd. Creature	R
33728	STX	334	0	t	\N	\N	t	\N	\N	Blade Historian	Creature	R
33729	STX	335	0	t	\N	t	\N	\N	\N	Blot Out the Sky	Sorcery	M
33730	STX	336	0	\N	t	\N	\N	t	\N	Body of Research	Sorcery	M
33731	STX	337	0	\N	\N	t	\N	t	\N	Culling Ritual	Sorcery	R
33732	STX	338	0	\N	t	\N	t	\N	\N	Culmination of Studies	Sorcery	R
33733	STX	339	0	\N	\N	t	\N	t	\N	Daemogoth Titan	Creature	R
33734	STX	340	0	\N	t	\N	\N	t	\N	Double Major	Instant	R
33735	STX	341	0	t	\N	t	\N	\N	\N	Dramatic Finale	Enchantment	R
33736	STX	342	0	\N	t	\N	t	\N	\N	Elemental Expressionist	Creature	R
33737	STX	343	0	\N	\N	t	\N	t	\N	Harness Infinity	Instant	M
33738	STX	344	0	t	\N	\N	t	\N	\N	Hofri Ghostforge	Lgd. Creature	M
33739	STX	345	0	t	\N	\N	t	\N	\N	Lorehold Command	Instant	R
33740	STX	346	0	\N	t	\N	t	\N	\N	Magma Opus	Instant	M
33741	STX	347	0	\N	t	\N	\N	t	\N	Manifestation Sage	Creature	R
33742	STX	348	0	\N	t	\N	t	\N	\N	Prismari Command	Instant	R
33743	STX	349	0	\N	t	\N	\N	t	\N	Quandrix Command	Instant	R
33744	STX	350	0	t	\N	\N	t	\N	\N	Radiant Scrollwielder	Creature	R
33745	STX	351	0	\N	\N	t	\N	t	\N	Rushed Rebirth	Instant	R
33746	STX	352	0	t	\N	t	\N	\N	\N	Silverquill Command	Sorcery	R
33747	STX	353	0	t	\N	t	\N	\N	\N	Silverquill Silencer	Creature	R
33748	STX	354	0	t	\N	t	\N	\N	\N	Vanishing Verse	Instant	R
33749	STX	355	0	t	\N	\N	t	\N	\N	Venerable Warsinger	Creature	R
33750	STX	356	0	\N	\N	t	\N	t	\N	Witherbloom Command	Sorcery	R
33751	STX	357	0	\N	\N	\N	\N	\N	\N	Codie, Vociferous Codex	Lgd. Artifact Creature	R
33752	STX	358	0	\N	\N	\N	\N	\N	\N	Strixhaven Stadium	Artifact	R
33753	STX	359	0	\N	\N	\N	\N	\N	\N	The Biblioplex	Land	R
33754	STX	360	0	\N	\N	\N	\N	\N	\N	Frostboil Snarl	Land	R
33755	STX	361	0	\N	\N	\N	\N	\N	\N	Furycalm Snarl	Land	R
33756	STX	362	0	\N	\N	\N	\N	\N	\N	Hall of Oracles	Land	R
33757	STX	363	0	\N	\N	\N	\N	\N	\N	Necroblossom Snarl	Land	R
33758	STX	364	0	\N	\N	\N	\N	\N	\N	Shineshadow Snarl	Land	R
33759	STX	365	0	\N	\N	\N	\N	\N	\N	Vineglimmer Snarl	Land	R
33760	STX	366	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33761	STX	367	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33762	STX	368	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33763	STX	369	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33764	STX	370	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33765	STX	371	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33766	STX	372	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33767	STX	373	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33768	STX	374	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33769	STX	375	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33770	STX	376	0	\N	\N	\N	\N	t	\N	Dragonsguard Elite	Creature	R
33771	STX	377	0	\N	t	\N	\N	\N	\N	Archmage Emeritus	Creature	R
33772	STX	378	0	t	\N	t	\N	\N	\N	Fracture	Instant	U
33773	STX	379	0	\N	t	\N	t	\N	\N	Expressive Iteration	Sorcery	U
33774	STX	380	0	\N	\N	t	\N	t	\N	Mortality Spear	Instant	U
33775	STX	381	0	t	\N	\N	t	\N	\N	Rip Apart	Sorcery	U
33776	STX	382	0	\N	t	\N	\N	t	\N	Decisive Denial	Instant	U
33396	STX	1	1	\N	\N	\N	\N	\N	\N	Environmental Sciences	Sorcery	C
33407	STX	8	1	t	\N	\N	\N	\N	\N	Ageless Guardian	Creature	C
33784	ELD	6	0	t	\N	\N	\N	\N	\N	Bartered Cow	Creature	C
33785	ELD	9	0	t	\N	\N	\N	\N	\N	The Circle of Loyalty	Lgd. Artifact	M
33786	ELD	10	0	t	\N	\N	\N	\N	\N	Deafening Silence	Enchantment	U
33787	ELD	11	0	t	\N	\N	\N	\N	\N	Faerie Guidemother // Gift of the Fae	Creature	C
33788	ELD	12	0	t	\N	\N	\N	\N	\N	Flutterfox	Creature	C
33789	ELD	13	0	t	\N	\N	\N	\N	\N	Fortifying Provisions	Enchantment	C
33790	ELD	14	0	t	\N	\N	\N	\N	\N	Giant Killer // Chop Down	Creature	R
33791	ELD	15	0	t	\N	\N	\N	\N	\N	Glass Casket	Artifact	U
33792	ELD	16	0	t	\N	\N	\N	\N	\N	Happily Ever After	Enchantment	R
33793	ELD	17	0	t	\N	\N	\N	\N	\N	Harmonious Archon	Creature	M
33794	ELD	18	0	t	\N	\N	\N	\N	\N	Hushbringer	Creature	R
33795	ELD	19	0	t	\N	\N	\N	\N	\N	Knight of the Keep	Creature	C
33796	ELD	20	0	t	\N	\N	\N	\N	\N	Linden, the Steadfast Queen	Lgd. Creature	R
33780	ELD	2	1	t	\N	\N	\N	\N	\N	All That Glitters	Enchantment	U
33297	SHM	300	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
36985	NEO	329	0	t	\N	\N	t	\N	\N	Raiyuu, Storm's Edge	Lgd. Creature	R
33306	MID	303	0	\N	\N	\N	\N	t	\N	Outland Liberator // Frenzied Trapbreaker	Creature	U
33307	MID	304	0	\N	\N	\N	\N	t	\N	Saryth, the Viper's Fang	Lgd. Creature	R
33308	MID	305	0	\N	\N	\N	\N	t	\N	Tireless Hauler // Dire-Strain Brawler	Creature	C
33309	MID	306	0	\N	\N	\N	\N	t	\N	Tovolar's Huntmaster // Tovolar's Packleader	Creature	R
33310	MID	307	0	\N	\N	\N	t	t	\N	Arlinn, the Pack's Hope // Arlinn, the Moon's Fury	Lgd. Planeswalker	M
33311	MID	308	0	t	\N	\N	\N	t	\N	Dawnhart Wardens	Creature	U
33312	MID	309	0	t	\N	\N	\N	t	\N	Katilda, Dawnhart Prime	Lgd. Creature	R
33313	MID	310	0	\N	\N	\N	t	t	\N	Kessig Naturalist // Lord of the Ulvenwald	Creature	U
33314	MID	311	0	\N	\N	\N	t	t	\N	Tovolar, Dire Overlord // Tovolar, the Midnight Scourge	Lgd. Creature	R
33315	MID	312	0	t	\N	\N	\N	\N	\N	Adeline, Resplendent Cathar	Lgd. Creature	R
33316	MID	313	0	\N	t	\N	\N	\N	\N	Lier, Disciple of the Drowned	Lgd. Creature	M
33317	MID	314	0	\N	\N	t	\N	\N	\N	Gisa, Glorious Resurrector	Lgd. Creature	R
33318	MID	315	0	\N	\N	t	\N	\N	\N	Jadar, Ghoulcaller of Nephalia	Lgd. Creature	R
33319	MID	316	0	\N	\N	t	\N	\N	\N	Jerren, Corrupted Bishop // Ormendahl, the Corrupter	Lgd. Creature	M
33320	MID	317	0	t	t	\N	\N	\N	\N	Dennick, Pious Apprentice // Dennick, Pious Apparition	Lgd. Creature	R
33321	MID	318	0	\N	\N	t	t	\N	\N	Florian, Voldaren Scion	Lgd. Creature	R
33322	MID	319	0	t	\N	t	\N	\N	\N	Liesa, Forgotten Archangel	Lgd. Creature	R
33323	MID	320	0	\N	t	t	\N	\N	\N	Ludevic, Necrogenius // Olag, Ludevic's Hubris	Lgd. Creature	R
33324	MID	321	0	\N	\N	t	\N	t	\N	Old Stickfingers	Lgd. Creature	R
33325	MID	322	0	t	\N	\N	t	\N	\N	Rem Karolus, Stalwart Slayer	Lgd. Creature	R
33326	MID	323	0	t	\N	\N	\N	t	\N	Sigarda, Champion of Light	Lgd. Creature	M
33327	MID	324	0	\N	t	\N	\N	t	\N	Slogurk, the Overslime	Lgd. Creature	R
33328	MID	325	0	\N	t	\N	t	\N	\N	Vadrik, Astral Archmage	Lgd. Creature	R
33329	MID	326	0	t	\N	\N	\N	\N	\N	Curse of Silence	Enchantment	R
33330	MID	327	0	t	\N	\N	\N	\N	\N	Enduring Angel // Angelic Enforcer	Creature	M
33331	MID	328	0	t	\N	\N	\N	\N	\N	Fateful Absence	Instant	R
33332	MID	329	0	t	\N	\N	\N	\N	\N	Intrepid Adversary	Creature	M
33333	MID	330	0	t	\N	\N	\N	\N	\N	Sigarda's Splendor	Enchantment	R
33334	MID	331	0	t	\N	\N	\N	\N	\N	Sigardian Savior	Creature	M
33335	MID	332	0	t	\N	\N	\N	\N	\N	Sungold Sentinel	Creature	R
33336	MID	333	0	t	\N	\N	\N	\N	\N	Vanquish the Horde	Sorcery	R
33337	MID	334	0	\N	t	\N	\N	\N	\N	Curse of Surveillance	Enchantment	R
33338	MID	335	0	\N	t	\N	\N	\N	\N	Grafted Identity	Enchantment	R
33339	MID	336	0	\N	t	\N	\N	\N	\N	Malevolent Hermit // Benevolent Geist	Creature	R
33340	MID	337	0	\N	t	\N	\N	\N	\N	Memory Deluge	Instant	R
33341	MID	338	0	\N	t	\N	\N	\N	\N	Patrician Geist	Creature	R
33342	MID	339	0	\N	t	\N	\N	\N	\N	Poppet Stitcher // Poppet Factory	Creature	M
33343	MID	340	0	\N	t	\N	\N	\N	\N	Sludge Monster	Creature	R
33344	MID	341	0	\N	t	\N	\N	\N	\N	Spectral Adversary	Creature	M
33345	MID	342	0	\N	t	\N	\N	\N	\N	Triskaidekaphile	Creature	R
33346	MID	343	0	\N	\N	t	\N	\N	\N	Bloodline Culling	Instant	R
33347	MID	344	0	\N	\N	t	\N	\N	\N	Champion of the Perished	Creature	R
33348	MID	345	0	\N	\N	t	\N	\N	\N	Curse of Leeches // Leeching Lurker	Enchantment	R
33349	MID	346	0	\N	\N	t	\N	\N	\N	Lord of the Forsaken	Creature	M
33350	MID	347	0	\N	\N	t	\N	\N	\N	Mask of Griselbrand	Lgd. Artifact	R
33351	MID	348	0	\N	\N	t	\N	\N	\N	The Meathook Massacre	Lgd. Enchantment	M
33352	MID	349	0	\N	\N	t	\N	\N	\N	Slaughter Specialist	Creature	R
33353	MID	350	0	\N	\N	t	\N	\N	\N	Tainted Adversary	Creature	M
33354	MID	351	0	\N	\N	\N	t	\N	\N	Bloodthirsty Adversary	Creature	M
33355	MID	352	0	\N	\N	\N	t	\N	\N	Burn Down the House	Sorcery	R
33356	MID	353	0	\N	\N	\N	t	\N	\N	Curse of Shaken Faith	Enchantment	R
33357	MID	354	0	\N	\N	\N	t	\N	\N	Falkenrath Pit Fighter	Creature	R
33358	MID	355	0	\N	\N	\N	t	\N	\N	Geistflame Reservoir	Artifact	R
33359	MID	356	0	\N	\N	\N	t	\N	\N	Light Up the Night	Sorcery	R
33360	MID	357	0	\N	\N	\N	t	\N	\N	Moonveil Regent	Creature	M
33361	MID	358	0	\N	\N	\N	t	\N	\N	Smoldering Egg // Ashmouth Dragon	Creature	R
33362	MID	359	0	\N	\N	\N	t	\N	\N	Sunstreak Phoenix	Creature	M
33363	MID	360	0	\N	\N	\N	\N	t	\N	Augur of Autumn	Creature	R
33364	MID	361	0	\N	\N	\N	\N	t	\N	Briarbridge Tracker	Creature	R
33365	MID	362	0	\N	\N	\N	\N	t	\N	Consuming Blob	Creature	M
33366	MID	363	0	\N	\N	\N	\N	t	\N	Primal Adversary	Creature	M
33367	MID	364	0	\N	\N	\N	\N	t	\N	Storm the Festival	Sorcery	R
33368	MID	365	0	\N	\N	\N	\N	t	\N	Unnatural Growth	Enchantment	R
33369	MID	366	0	\N	\N	\N	\N	t	\N	Willow Geist	Creature	R
33370	MID	367	0	t	\N	\N	t	\N	\N	Angelfire Ignition	Sorcery	R
33371	MID	368	0	t	\N	t	\N	\N	\N	Can't Stay Away	Sorcery	R
33372	MID	369	0	\N	t	\N	\N	t	\N	Croaking Counterpart	Sorcery	R
33373	MID	370	0	\N	\N	\N	t	t	\N	Dire-Strain Rampage	Sorcery	R
33374	MID	371	0	\N	t	\N	t	\N	\N	Galvanic Iteration	Instant	R
33375	MID	372	0	\N	\N	t	\N	t	\N	Ghoulcaller's Harvest	Sorcery	R
33376	MID	373	0	t	t	\N	\N	\N	\N	Hallowed Respite	Sorcery	R
33377	MID	374	0	t	\N	\N	\N	t	\N	Rite of Harmony	Instant	R
33378	MID	375	0	\N	t	t	\N	\N	\N	Siphon Insight	Instant	R
33379	MID	376	0	\N	\N	t	t	\N	\N	Wake to Slaughter	Sorcery	R
33380	MID	377	0	\N	\N	\N	\N	\N	\N	The Celestus	Lgd. Artifact	R
33381	MID	378	0	\N	\N	\N	\N	\N	\N	Pithing Needle	Artifact	R
33382	MID	379	0	\N	\N	\N	\N	\N	\N	Hostile Hostel // Creeping Inn	Land // Artifact Creature	M
33383	MID	380	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33384	MID	381	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
33385	MID	382	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
33386	MID	383	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
33387	MID	384	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
33388	MID	385	0	\N	\N	t	\N	\N	\N	Champion of the Perished	Creature	R
33389	MID	386	0	\N	t	\N	\N	\N	\N	Triskaidekaphile	Creature	R
33390	MID	387	0	t	\N	\N	\N	\N	\N	Gavony Dawnguard	Creature	U
33391	MID	388	0	\N	t	\N	\N	\N	\N	Consider	Instant	C
33392	MID	389	0	\N	\N	t	\N	\N	\N	Infernal Grasp	Instant	U
33393	MID	390	0	\N	\N	\N	t	\N	\N	Play with Fire	Instant	U
33394	MID	391	0	t	\N	\N	\N	t	\N	Join the Dance	Sorcery	U
31571	ROE	155	1	\N	\N	\N	t	\N	\N	Lavafume Invoker	Creature	C
31236	ROE	137	1	\N	\N	\N	t	\N	\N	Brimstone Mage	Creature	U
29516	WWK	82	1	\N	\N	\N	t	\N	\N	Goblin Roughrider	Creature	C
31062	ZEN	118	1	\N	\N	\N	t	\N	\N	Bladetusk Boar	Creature	C
31676	ROE	162	1	\N	\N	\N	t	\N	\N	Rapacious One	Creature	U
29334	WWK	75	1	\N	\N	\N	t	\N	\N	Claws of Valakut	Enchantment	C
30070	ROE	91	1	\N	t	\N	\N	\N	\N	Training Grounds	Enchantment	R
29512	ZEN	58	1	\N	t	\N	\N	\N	\N	Paralyzing Grasp	Enchantment	C
33409	STX	11	0	t	\N	\N	\N	\N	\N	Combat Professor	Creature	C
33664	STX	270	1	\N	\N	\N	\N	\N	\N	Prismari Campus	Land	C
33446	STX	52	2	\N	t	\N	\N	\N	\N	Serpentine Curve	Sorcery	C
33825	ELD	49	1	\N	t	\N	\N	\N	\N	Hypnotic Sprite // Mesmeric Glare	Creature	U
36986	NEO	330	0	t	\N	\N	t	\N	\N	Risona, Asari Commander	Lgd. Creature	R
33777	ELD	1	0	t	\N	\N	\N	\N	\N	Acclaimed Contender	Creature	R
33781	ELD	3	0	t	\N	\N	\N	\N	\N	Archon of Absolution	Creature	U
33782	ELD	7	0	t	\N	\N	\N	\N	\N	Beloved Princess	Creature	C
33783	ELD	8	0	t	\N	\N	\N	\N	\N	Charming Prince	Creature	R
33797	ELD	21	0	t	\N	\N	\N	\N	\N	Lonesome Unicorn // Rider in Need	Creature	C
33798	ELD	22	0	t	\N	\N	\N	\N	\N	Mysterious Pathlighter	Creature	U
33799	ELD	23	0	t	\N	\N	\N	\N	\N	Outflank	Instant	C
33800	ELD	24	0	t	\N	\N	\N	\N	\N	Prized Griffin	Creature	C
33801	ELD	25	0	t	\N	\N	\N	\N	\N	Rally for the Throne	Instant	U
33802	ELD	26	0	t	\N	\N	\N	\N	\N	Realm-Cloaked Giant // Cast Off	Creature	M
33803	ELD	27	0	t	\N	\N	\N	\N	\N	Righteousness	Instant	U
33804	ELD	28	0	t	\N	\N	\N	\N	\N	Shepherd of the Flock // Usher to Safety	Creature	U
33805	ELD	29	0	t	\N	\N	\N	\N	\N	Shining Armor	Artifact	C
33808	ELD	32	0	t	\N	\N	\N	\N	\N	Syr Alin, the Lion's Claw	Lgd. Creature	U
33809	ELD	33	0	t	\N	\N	\N	\N	\N	Trapped in the Tower	Enchantment	C
33810	ELD	34	0	t	\N	\N	\N	\N	\N	True Love's Kiss	Instant	C
33811	ELD	35	0	t	\N	\N	\N	\N	\N	Venerable Knight	Creature	U
33812	ELD	36	0	t	\N	\N	\N	\N	\N	Worthy Knight	Creature	R
33813	ELD	37	0	t	\N	\N	\N	\N	\N	Youthful Knight	Creature	C
33814	ELD	38	0	\N	t	\N	\N	\N	\N	Animating Faerie // Bring to Life	Creature	U
33815	ELD	39	0	\N	t	\N	\N	\N	\N	Brazen Borrower // Petty Theft	Creature	M
33816	ELD	40	0	\N	t	\N	\N	\N	\N	Charmed Sleep	Enchantment	C
33818	ELD	42	0	\N	t	\N	\N	\N	\N	Didn't Say Please	Instant	C
33819	ELD	43	0	\N	t	\N	\N	\N	\N	Emry, Lurker of the Loch	Lgd. Creature	R
33821	ELD	45	0	\N	t	\N	\N	\N	\N	Faerie Vandal	Creature	U
33822	ELD	46	0	\N	t	\N	\N	\N	\N	Folio of Fancies	Artifact	R
33823	ELD	47	0	\N	t	\N	\N	\N	\N	Frogify	Enchantment	U
33824	ELD	48	0	\N	t	\N	\N	\N	\N	Gadwick, the Wizened	Lgd. Creature	R
33826	ELD	50	0	\N	t	\N	\N	\N	\N	Into the Story	Instant	U
33827	ELD	51	0	\N	t	\N	\N	\N	\N	The Magic Mirror	Lgd. Artifact	M
33829	ELD	53	0	\N	t	\N	\N	\N	\N	Merfolk Secretkeeper // Venture Deeper	Creature	C
33830	ELD	54	0	\N	t	\N	\N	\N	\N	Midnight Clock	Artifact	R
33831	ELD	55	0	\N	t	\N	\N	\N	\N	Mirrormade	Enchantment	R
33832	ELD	56	0	\N	t	\N	\N	\N	\N	Mistford River Turtle	Creature	C
33833	ELD	57	0	\N	t	\N	\N	\N	\N	Moonlit Scavengers	Creature	C
33834	ELD	58	0	\N	t	\N	\N	\N	\N	Mystical Dispute	Instant	U
33835	ELD	59	0	\N	t	\N	\N	\N	\N	Opt	Instant	C
33836	ELD	60	0	\N	t	\N	\N	\N	\N	Overwhelmed Apprentice	Creature	U
33839	ELD	63	0	\N	t	\N	\N	\N	\N	Sage of the Falls	Creature	U
33840	ELD	64	0	\N	t	\N	\N	\N	\N	So Tiny	Enchantment	C
33841	ELD	65	0	\N	t	\N	\N	\N	\N	Steelgaze Griffin	Creature	C
33842	ELD	66	0	\N	t	\N	\N	\N	\N	Stolen by the Fae	Sorcery	R
33843	ELD	67	0	\N	t	\N	\N	\N	\N	Syr Elenora, the Discerning	Lgd. Creature	U
33844	ELD	68	0	\N	t	\N	\N	\N	\N	Tome Raider	Creature	C
33846	ELD	70	0	\N	t	\N	\N	\N	\N	Unexplained Vision	Sorcery	C
33847	ELD	71	0	\N	t	\N	\N	\N	\N	Vantress Gargoyle	Artifact Creature	R
33849	ELD	73	0	\N	t	\N	\N	\N	\N	Wishful Merfolk	Creature	C
33850	ELD	74	0	\N	t	\N	\N	\N	\N	Witching Well	Artifact	C
33851	ELD	75	0	\N	\N	t	\N	\N	\N	Ayara, First of Locthwain	Lgd. Creature	R
33854	ELD	78	0	\N	\N	t	\N	\N	\N	Belle of the Brawl	Creature	U
33858	ELD	82	0	\N	\N	t	\N	\N	\N	The Cauldron of Eternity	Lgd. Artifact	M
33860	ELD	84	0	\N	\N	t	\N	\N	\N	Clackbridge Troll	Creature	R
33861	ELD	85	0	\N	\N	t	\N	\N	\N	Epic Downfall	Sorcery	U
33817	ELD	41	1	\N	t	\N	\N	\N	\N	Corridor Monitor	Artifact Creature	C
33838	ELD	62	1	\N	t	\N	\N	\N	\N	Run Away Together	Instant	C
33837	ELD	61	1	\N	t	\N	\N	\N	\N	Queen of Ice // Rage of Winter	Creature	C
33828	ELD	52	1	\N	t	\N	\N	\N	\N	Mantle of Tides	Artifact	C
33848	ELD	72	1	\N	t	\N	\N	\N	\N	Vantress Paladin	Creature	C
33845	ELD	69	1	\N	t	\N	\N	\N	\N	Turn into a Pumpkin	Instant	U
33806	ELD	30	1	t	\N	\N	\N	\N	\N	Silverflame Ritual	Sorcery	C
33807	ELD	31	1	t	\N	\N	\N	\N	\N	Silverflame Squire // On Alert	Creature	C
33778	ELD	4	1	t	\N	\N	\N	\N	\N	Ardenvale Paladin	Creature	C
33779	ELD	5	0	t	\N	\N	\N	\N	\N	Ardenvale Tactician // Dizzying Swoop	Creature	C
33852	ELD	76	2	\N	\N	t	\N	\N	\N	Bake into a Pie	Instant	C
33863	ELD	87	2	\N	\N	t	\N	\N	\N	Festive Funeral	Instant	C
33862	ELD	86	2	\N	\N	t	\N	\N	\N	Eye Collector	Creature	C
33857	ELD	81	1	\N	\N	t	\N	\N	\N	Cauldron Familiar	Creature	U
33853	ELD	77	1	\N	\N	t	\N	\N	\N	Barrow Witches	Creature	C
33865	ELD	89	2	\N	\N	t	\N	\N	\N	Forever Young	Sorcery	C
33864	ELD	88	1	\N	\N	t	\N	\N	\N	Foreboding Fruit	Sorcery	C
33856	ELD	80	1	\N	\N	t	\N	\N	\N	Bog Naughty	Creature	U
33655	STX	261	2	\N	\N	\N	\N	\N	\N	Zephyr Boots	Artifact	U
33855	ELD	79	1	\N	\N	t	\N	\N	\N	Blacklance Paragon	Creature	R
33820	ELD	44	2	\N	t	\N	\N	\N	\N	Fae of Wishes // Granted	Creature	R
33866	ELD	90	1	\N	\N	t	\N	\N	\N	Foulmire Knight // Profane Insight	Creature	U
33859	ELD	83	1	\N	\N	t	\N	\N	\N	Cauldron's Gift	Sorcery	U
33395	STX	2	4	\N	\N	\N	\N	\N	\N	Expanded Anatomy	Sorcery	C
36987	NEO	331	0	t	\N	\N	\N	\N	\N	Blade-Blizzard Kitsune	Creature	U
33868	ELD	92	0	\N	\N	t	\N	\N	\N	Lash of Thorns	Instant	C
33873	ELD	97	0	\N	\N	t	\N	\N	\N	Murderous Rider // Swift End	Creature	R
33874	ELD	98	0	\N	\N	t	\N	\N	\N	Oathsworn Knight	Creature	R
33877	ELD	101	0	\N	\N	t	\N	\N	\N	Rankle, Master of Pranks	Lgd. Creature	M
33878	ELD	102	0	\N	\N	t	\N	\N	\N	Reaper of Night // Harvest Fear	Creature	C
33880	ELD	104	0	\N	\N	t	\N	\N	\N	Revenge of Ravens	Enchantment	U
33876	ELD	100	2	\N	\N	t	\N	\N	\N	Piper of the Swarm	Creature	R
33886	ELD	110	0	\N	\N	t	\N	\N	\N	Wishclaw Talisman	Artifact	R
33887	ELD	111	0	\N	\N	t	\N	\N	\N	Witch's Vengeance	Sorcery	R
33888	ELD	112	0	\N	\N	\N	t	\N	\N	Barge In	Instant	C
33889	ELD	113	0	\N	\N	\N	t	\N	\N	Bloodhaze Wolverine	Creature	C
33890	ELD	114	0	\N	\N	\N	t	\N	\N	Blow Your House Down	Sorcery	C
33891	ELD	115	0	\N	\N	\N	t	\N	\N	Bonecrusher Giant // Stomp	Creature	R
33892	ELD	116	0	\N	\N	\N	t	\N	\N	Brimstone Trebuchet	Artifact Creature	C
33893	ELD	117	0	\N	\N	\N	t	\N	\N	Burning-Yard Trainer	Creature	U
33894	ELD	118	0	\N	\N	\N	t	\N	\N	Claim the Firstborn	Sorcery	U
33896	ELD	120	0	\N	\N	\N	t	\N	\N	Embercleave	Lgd. Artifact	M
33897	ELD	121	0	\N	\N	\N	t	\N	\N	Embereth Paladin	Creature	C
33898	ELD	122	0	\N	\N	\N	t	\N	\N	Embereth Shieldbreaker // Battle Display	Creature	U
33899	ELD	123	0	\N	\N	\N	t	\N	\N	Ferocity of the Wilds	Enchantment	U
33900	ELD	124	0	\N	\N	\N	t	\N	\N	Fervent Champion	Creature	R
33901	ELD	125	0	\N	\N	\N	t	\N	\N	Fires of Invention	Enchantment	R
33902	ELD	126	0	\N	\N	\N	t	\N	\N	Fling	Instant	C
33903	ELD	127	0	\N	\N	\N	t	\N	\N	Irencrag Feat	Sorcery	R
33904	ELD	128	0	\N	\N	\N	t	\N	\N	Irencrag Pyromancer	Creature	R
33905	ELD	129	0	\N	\N	\N	t	\N	\N	Joust	Sorcery	U
33906	ELD	130	0	\N	\N	\N	t	\N	\N	Mad Ratter	Creature	U
33907	ELD	131	0	\N	\N	\N	t	\N	\N	Merchant of the Vale // Haggle	Creature	C
33908	ELD	132	0	\N	\N	\N	t	\N	\N	Ogre Errant	Creature	C
33909	ELD	133	0	\N	\N	\N	t	\N	\N	Opportunistic Dragon	Creature	R
33910	ELD	134	0	\N	\N	\N	t	\N	\N	Raging Redcap	Creature	C
33911	ELD	135	0	\N	\N	\N	t	\N	\N	Redcap Melee	Instant	U
33913	ELD	137	0	\N	\N	\N	t	\N	\N	Rimrock Knight // Boulder Rush	Creature	C
33914	ELD	138	0	\N	\N	\N	t	\N	\N	Robber of the Rich	Creature	M
33915	ELD	139	0	\N	\N	\N	t	\N	\N	Scorching Dragonfire	Instant	C
33916	ELD	140	0	\N	\N	\N	t	\N	\N	Searing Barrage	Instant	C
33917	ELD	141	0	\N	\N	\N	t	\N	\N	Seven Dwarves	Creature	C
33918	ELD	142	0	\N	\N	\N	t	\N	\N	Skullknocker Ogre	Creature	U
33920	ELD	144	0	\N	\N	\N	t	\N	\N	Sundering Stroke	Sorcery	R
33921	ELD	145	0	\N	\N	\N	t	\N	\N	Syr Carah, the Bold	Lgd. Creature	U
33922	ELD	146	0	\N	\N	\N	t	\N	\N	Thrill of Possibility	Instant	C
33923	ELD	147	0	\N	\N	\N	t	\N	\N	Torbran, Thane of Red Fell	Lgd. Creature	R
33924	ELD	148	0	\N	\N	\N	t	\N	\N	Weaselback Redcap	Creature	C
36988	NEO	332	0	\N	t	\N	\N	\N	\N	Covert Technician	Artifact Creature	U
33926	ELD	150	0	\N	\N	\N	\N	t	\N	Curious Pair // Treats to Share	Creature	C
33927	ELD	151	0	\N	\N	\N	\N	t	\N	Edgewall Innkeeper	Creature	U
33928	ELD	152	0	\N	\N	\N	\N	t	\N	Feasting Troll King	Creature	R
33929	ELD	153	0	\N	\N	\N	\N	t	\N	Fell the Pheasant	Instant	C
33930	ELD	154	0	\N	\N	\N	\N	t	\N	Fierce Witchstalker	Creature	C
33931	ELD	155	0	\N	\N	\N	\N	t	\N	Flaxen Intruder // Welcome Home	Creature	U
33933	ELD	157	0	\N	\N	\N	\N	t	\N	Garenbrig Paladin	Creature	C
33934	ELD	158	0	\N	\N	\N	\N	t	\N	Garenbrig Squire	Creature	C
33935	ELD	159	0	\N	\N	\N	\N	t	\N	Giant Opportunity	Sorcery	U
33936	ELD	160	0	\N	\N	\N	\N	t	\N	Gilded Goose	Creature	R
33937	ELD	161	0	\N	\N	\N	\N	t	\N	The Great Henge	Lgd. Artifact	M
33938	ELD	162	0	\N	\N	\N	\N	t	\N	Insatiable Appetite	Instant	C
33939	ELD	163	0	\N	\N	\N	\N	t	\N	Keeper of Fables	Creature	U
33940	ELD	164	0	\N	\N	\N	\N	t	\N	Kenrith's Transformation	Enchantment	U
33941	ELD	165	0	\N	\N	\N	\N	t	\N	Lovestruck Beast // Heart's Desire	Creature	R
33943	ELD	167	0	\N	\N	\N	\N	t	\N	Oakhame Adversary	Creature	U
33944	ELD	168	0	\N	\N	\N	\N	t	\N	Once and Future	Instant	U
33945	ELD	169	0	\N	\N	\N	\N	t	\N	Once Upon a Time	Instant	R
33946	ELD	170	0	\N	\N	\N	\N	t	\N	Outmuscle	Sorcery	C
33947	ELD	171	0	\N	\N	\N	\N	t	\N	Questing Beast	Lgd. Creature	M
33948	ELD	172	0	\N	\N	\N	\N	t	\N	Return of the Wildspeaker	Instant	R
33949	ELD	173	0	\N	\N	\N	\N	t	\N	Return to Nature	Instant	C
33950	ELD	174	0	\N	\N	\N	\N	t	\N	Rosethorn Acolyte // Seasonal Ritual	Creature	C
33951	ELD	175	0	\N	\N	\N	\N	t	\N	Rosethorn Halberd	Artifact	C
33953	ELD	177	0	\N	\N	\N	\N	t	\N	Syr Faren, the Hengehammer	Lgd. Creature	U
33954	ELD	178	0	\N	\N	\N	\N	t	\N	Tall as a Beanstalk	Enchantment	C
33956	ELD	180	0	\N	\N	\N	\N	t	\N	Tuinvale Treefolk // Oaken Boon	Creature	C
33957	ELD	181	0	\N	\N	\N	\N	t	\N	Wicked Wolf	Creature	R
33958	ELD	182	0	\N	\N	\N	\N	t	\N	Wildborn Preserver	Creature	R
33932	ELD	156	1	\N	\N	\N	\N	t	\N	Garenbrig Carver // Shield's Might	Creature	C
33942	ELD	166	1	\N	\N	\N	\N	t	\N	Maraleaf Rider	Creature	C
33955	ELD	179	1	\N	\N	\N	\N	t	\N	Trail of Crumbs	Enchantment	U
33959	ELD	183	1	\N	\N	\N	\N	t	\N	Wildwood Tracker	Creature	C
33952	ELD	176	1	\N	\N	\N	\N	t	\N	Sporecap Spider	Creature	C
33885	ELD	109	1	\N	\N	t	\N	\N	\N	Wicked Guardian	Creature	C
33879	ELD	103	2	\N	\N	t	\N	\N	\N	Reave Soul	Sorcery	C
33912	ELD	136	1	\N	\N	\N	t	\N	\N	Redcap Raiders	Creature	C
33895	ELD	119	1	\N	\N	\N	t	\N	\N	Crystal Slipper	Artifact	C
33919	ELD	143	1	\N	\N	\N	t	\N	\N	Slaying Fire	Instant	U
33872	ELD	96	1	\N	\N	t	\N	\N	\N	Memory Theft	Sorcery	C
33867	ELD	91	2	\N	\N	t	\N	\N	\N	Giant's Skewer	Artifact	C
33871	ELD	95	2	\N	\N	t	\N	\N	\N	Malevolent Noble	Creature	C
33881	ELD	105	1	\N	\N	t	\N	\N	\N	Smitten Swordmaster // Curry Favor	Creature	C
33875	ELD	99	1	\N	\N	t	\N	\N	\N	Order of Midnight // Alter Fate	Creature	U
33869	ELD	93	1	\N	\N	t	\N	\N	\N	Locthwain Paladin	Creature	C
33882	ELD	106	1	\N	\N	t	\N	\N	\N	Specter's Shriek	Sorcery	U
33870	ELD	94	2	\N	\N	t	\N	\N	\N	Lost Legion	Creature	C
33884	ELD	108	2	\N	\N	t	\N	\N	\N	Tempting Witch	Creature	C
33960	ELD	184	0	\N	\N	\N	\N	t	\N	Wolf's Quarry	Sorcery	C
33961	ELD	185	0	\N	\N	\N	\N	t	\N	Yorvo, Lord of Garenbrig	Lgd. Creature	R
33962	ELD	186	0	t	t	\N	\N	\N	\N	Dance of the Manse	Sorcery	R
33963	ELD	187	0	t	\N	t	\N	\N	\N	Doom Foretold	Enchantment	R
33964	ELD	188	0	\N	t	t	\N	\N	\N	Drown in the Loch	Instant	U
33965	ELD	189	0	\N	\N	\N	t	t	\N	Escape to the Wilds	Sorcery	R
33966	ELD	190	0	t	\N	\N	\N	t	\N	Faeburrow Elder	Creature	R
33967	ELD	191	0	\N	\N	t	\N	t	\N	Garruk, Cursed Huntsman	Lgd. Planeswalker	M
33968	ELD	192	0	\N	\N	\N	t	t	\N	Grumgully, the Generous	Lgd. Creature	U
33969	ELD	193	0	\N	t	\N	t	\N	\N	Improbable Alliance	Enchantment	U
33970	ELD	194	0	t	\N	\N	t	\N	\N	Inspiring Veteran	Creature	U
33971	ELD	195	0	\N	t	t	\N	\N	\N	Lochmere Serpent	Creature	R
33972	ELD	196	0	\N	t	\N	\N	t	\N	Maraleaf Pixie	Creature	U
33973	ELD	197	0	\N	t	\N	\N	t	\N	Oko, Thief of Crowns	Lgd. Planeswalker	M
33974	ELD	198	0	t	\N	\N	t	\N	\N	Outlaws' Merriment	Enchantment	M
33975	ELD	199	0	\N	t	\N	t	\N	\N	The Royal Scions	Lgd. Planeswalker	M
33976	ELD	200	0	\N	\N	t	\N	t	\N	Savvy Hunter	Creature	U
33977	ELD	201	0	t	t	\N	\N	\N	\N	Shinechaser	Creature	U
33978	ELD	202	0	\N	\N	t	t	\N	\N	Steelclaw Lance	Artifact	U
33979	ELD	203	0	\N	\N	t	t	\N	\N	Stormfist Crusader	Creature	R
33981	ELD	205	0	t	\N	t	\N	\N	\N	Wintermoor Commander	Creature	U
33982	ELD	206	0	t	t	\N	\N	\N	\N	Arcanist's Owl	Artifact Creature	U
33983	ELD	207	0	\N	t	t	\N	\N	\N	Covetous Urge	Sorcery	U
33984	ELD	208	0	\N	\N	t	\N	t	\N	Deathless Knight	Creature	U
33985	ELD	209	0	\N	\N	t	t	\N	\N	Elite Headhunter	Creature	U
33986	ELD	210	0	t	\N	\N	t	\N	\N	Fireborn Knight	Creature	U
33987	ELD	211	0	\N	t	\N	t	\N	\N	Loch Dragon	Creature	U
33988	ELD	212	0	t	\N	\N	\N	t	\N	Oakhame Ranger // Bring Back		U
33989	ELD	213	0	\N	\N	\N	t	t	\N	Rampart Smasher	Creature	U
33990	ELD	214	0	t	\N	t	\N	\N	\N	Resolute Rider	Creature	U
33991	ELD	215	0	\N	t	\N	\N	t	\N	Thunderous Snapper	Creature	U
33992	ELD	216	0	\N	\N	\N	\N	\N	\N	Clockwork Servant	Artifact Creature	U
33993	ELD	217	0	\N	\N	\N	\N	\N	\N	Crashing Drawbridge	Artifact Creature	C
33994	ELD	218	0	\N	\N	\N	\N	\N	\N	Enchanted Carriage	Artifact	U
33995	ELD	219	0	\N	\N	\N	\N	\N	\N	Gingerbrute	Artifact Creature	C
33996	ELD	220	0	\N	\N	\N	\N	\N	\N	Golden Egg	Artifact	C
33998	ELD	222	0	\N	\N	\N	\N	\N	\N	Heraldic Banner	Artifact	U
33999	ELD	223	0	\N	\N	\N	\N	\N	\N	Inquisitive Puppet	Artifact Creature	U
34000	ELD	224	0	\N	\N	\N	\N	\N	\N	Jousting Dummy	Artifact Creature	C
34002	ELD	226	0	\N	\N	\N	\N	\N	\N	Lucky Clover	Artifact	U
34006	ELD	230	0	\N	\N	\N	\N	\N	\N	Shambling Suit	Artifact Creature	U
34007	ELD	231	0	\N	\N	\N	\N	\N	\N	Signpost Scarecrow	Artifact Creature	C
34008	ELD	232	0	\N	\N	\N	\N	\N	\N	Sorcerer's Broom	Artifact Creature	U
34009	ELD	233	0	\N	\N	\N	\N	\N	\N	Sorcerous Spyglass	Artifact	R
36989	NEO	333	0	\N	t	\N	\N	\N	\N	Futurist Operative	Creature	U
34011	ELD	235	0	\N	\N	\N	\N	\N	\N	Stonecoil Serpent	Artifact Creature	R
34012	ELD	236	0	\N	\N	\N	\N	\N	\N	Weapon Rack	Artifact	C
34013	ELD	237	0	\N	\N	\N	\N	\N	\N	Witch's Oven	Artifact	U
34014	ELD	238	0	\N	\N	\N	\N	\N	\N	Castle Ardenvale	Land	R
34015	ELD	239	0	\N	\N	\N	\N	\N	\N	Castle Embereth	Land	R
34016	ELD	240	0	\N	\N	\N	\N	\N	\N	Castle Garenbrig	Land	R
34017	ELD	241	0	\N	\N	\N	\N	\N	\N	Castle Locthwain	Land	R
34018	ELD	242	0	\N	\N	\N	\N	\N	\N	Castle Vantress	Land	R
34019	ELD	243	0	\N	\N	\N	\N	\N	\N	Dwarven Mine	Land	C
34020	ELD	244	0	\N	\N	\N	\N	\N	\N	Fabled Passage	Land	R
34021	ELD	245	0	\N	\N	\N	\N	\N	\N	Gingerbread Cabin	Land	C
34022	ELD	246	0	\N	\N	\N	\N	\N	\N	Idyllic Grange	Land	C
34023	ELD	247	0	\N	\N	\N	\N	\N	\N	Mystic Sanctuary	Land	C
34024	ELD	248	0	\N	\N	\N	\N	\N	\N	Tournament Grounds	Land	U
34026	ELD	250	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
34027	ELD	251	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
34029	ELD	253	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
34030	ELD	254	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
34031	ELD	255	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
34032	ELD	256	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
34033	ELD	257	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
34034	ELD	258	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
34035	ELD	259	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
34036	ELD	260	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
34037	ELD	261	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
34038	ELD	262	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
34039	ELD	263	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
34040	ELD	264	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
34041	ELD	265	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
34042	ELD	266	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
34044	ELD	268	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
34045	ELD	269	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
34046	ELD	270	0	\N	\N	t	\N	t	\N	Garruk, Cursed Huntsman	Lgd. Planeswalker	M
34047	ELD	271	0	\N	t	\N	\N	t	\N	Oko, Thief of Crowns	Lgd. Planeswalker	M
34048	ELD	272	0	\N	t	\N	t	\N	\N	The Royal Scions	Lgd. Planeswalker	M
34049	ELD	273	0	t	\N	\N	\N	\N	\N	Ardenvale Tactician // Dizzying Swoop	Creature	C
34050	ELD	274	0	t	\N	\N	\N	\N	\N	Faerie Guidemother // Gift of the Fae	Creature	C
34051	ELD	275	0	t	\N	\N	\N	\N	\N	Giant Killer // Chop Down	Creature	R
34052	ELD	276	0	t	\N	\N	\N	\N	\N	Lonesome Unicorn // Rider in Need	Creature	C
34053	ELD	277	0	t	\N	\N	\N	\N	\N	Realm-Cloaked Giant // Cast Off	Creature	M
34054	ELD	278	0	t	\N	\N	\N	\N	\N	Shepherd of the Flock // Usher to Safety	Creature	U
34055	ELD	279	0	t	\N	\N	\N	\N	\N	Silverflame Squire // On Alert	Creature	C
34005	ELD	229	1	\N	\N	\N	\N	\N	\N	Scalding Cauldron	Artifact	C
34025	ELD	249	1	\N	\N	\N	\N	\N	\N	Witch's Cottage	Land	C
33980	ELD	204	1	t	\N	\N	\N	t	\N	Wandermare	Creature	U
34003	ELD	227	1	\N	\N	\N	\N	\N	\N	Prophet of the Peak	Artifact Creature	C
34028	ELD	252	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
33997	ELD	221	2	\N	\N	\N	\N	\N	\N	Henge Walker	Artifact Creature	C
34004	ELD	228	1	\N	\N	\N	\N	\N	\N	Roving Keep	Artifact Creature	C
34001	ELD	225	1	\N	\N	\N	\N	\N	\N	Locthwain Gargoyle	Artifact Creature	C
34056	ELD	280	0	\N	t	\N	\N	\N	\N	Animating Faerie // Bring to Life	Creature	U
34057	ELD	281	0	\N	t	\N	\N	\N	\N	Brazen Borrower // Petty Theft	Creature	M
34058	ELD	282	0	\N	t	\N	\N	\N	\N	Fae of Wishes // Granted	Creature	R
34059	ELD	283	0	\N	t	\N	\N	\N	\N	Hypnotic Sprite // Mesmeric Glare	Creature	U
34060	ELD	284	0	\N	t	\N	\N	\N	\N	Merfolk Secretkeeper // Venture Deeper	Creature	C
34061	ELD	285	0	\N	t	\N	\N	\N	\N	Queen of Ice // Rage of Winter	Creature	C
34062	ELD	286	0	\N	\N	t	\N	\N	\N	Foulmire Knight // Profane Insight	Creature	U
34063	ELD	287	0	\N	\N	t	\N	\N	\N	Murderous Rider // Swift End	Creature	R
34064	ELD	288	0	\N	\N	t	\N	\N	\N	Order of Midnight // Alter Fate	Creature	U
34065	ELD	289	0	\N	\N	t	\N	\N	\N	Reaper of Night // Harvest Fear	Creature	C
34066	ELD	290	0	\N	\N	t	\N	\N	\N	Smitten Swordmaster // Curry Favor	Creature	C
34067	ELD	291	0	\N	\N	\N	t	\N	\N	Bonecrusher Giant // Stomp	Creature	R
34068	ELD	292	0	\N	\N	\N	t	\N	\N	Embereth Shieldbreaker // Battle Display	Creature	U
34069	ELD	293	0	\N	\N	\N	t	\N	\N	Merchant of the Vale // Haggle	Creature	C
34070	ELD	294	0	\N	\N	\N	t	\N	\N	Rimrock Knight // Boulder Rush	Creature	C
34071	ELD	295	0	\N	\N	\N	\N	t	\N	Beanstalk Giant // Fertile Footsteps	Creature	U
34072	ELD	296	0	\N	\N	\N	\N	t	\N	Curious Pair // Treats to Share	Creature	C
34073	ELD	297	0	\N	\N	\N	\N	t	\N	Flaxen Intruder // Welcome Home	Creature	U
34074	ELD	298	0	\N	\N	\N	\N	t	\N	Garenbrig Carver // Shield's Might	Creature	C
34075	ELD	299	0	\N	\N	\N	\N	t	\N	Lovestruck Beast // Heart's Desire	Creature	R
34076	ELD	300	0	\N	\N	\N	\N	t	\N	Rosethorn Acolyte // Seasonal Ritual	Creature	C
34077	ELD	301	0	\N	\N	\N	\N	t	\N	Tuinvale Treefolk // Oaken Boon	Creature	C
34078	ELD	302	0	t	\N	\N	\N	t	\N	Oakhame Ranger // Bring Back		U
34079	ELD	303	0	t	\N	\N	\N	\N	\N	Kenrith, the Returned King	Lgd. Creature	M
34080	ELD	304	0	\N	\N	\N	t	\N	\N	Rowan, Fearless Sparkmage	Lgd. Planeswalker	M
34081	ELD	305	0	t	\N	\N	\N	\N	\N	Garrison Griffin	Creature	C
34082	ELD	306	0	\N	\N	\N	t	\N	\N	Rowan's Battleguard	Creature	U
34083	ELD	307	0	\N	\N	\N	t	\N	\N	Rowan's Stalwarts	Creature	R
34084	ELD	308	0	\N	\N	\N	\N	\N	\N	Wind-Scarred Crag	Land	C
34085	ELD	309	0	\N	t	\N	\N	t	\N	Oko, the Trickster	Lgd. Planeswalker	M
34086	ELD	310	0	\N	t	\N	\N	\N	\N	Oko's Accomplices	Creature	C
34087	ELD	311	0	\N	\N	\N	\N	t	\N	Bramblefort Fink	Creature	U
34088	ELD	312	0	\N	t	\N	\N	t	\N	Oko's Hospitality	Instant	R
34089	ELD	313	0	\N	\N	\N	\N	\N	\N	Thornwood Falls	Land	C
34090	ELD	314	0	t	\N	\N	\N	\N	\N	Mace of the Valiant	Artifact	R
34091	ELD	315	0	t	\N	\N	\N	\N	\N	Silverwing Squadron	Creature	R
34092	ELD	316	0	\N	t	\N	\N	\N	\N	Faerie Formation	Creature	R
34093	ELD	317	0	\N	t	\N	\N	\N	\N	Shimmer Dragon	Creature	R
34094	ELD	318	0	\N	t	\N	\N	\N	\N	Workshop Elders	Creature	R
34095	ELD	319	0	\N	\N	t	\N	\N	\N	Chittering Witch	Creature	R
34096	ELD	320	0	\N	\N	t	\N	\N	\N	Taste of Death	Sorcery	R
34097	ELD	321	0	\N	\N	\N	t	\N	\N	Embereth Skyblazer	Creature	R
34098	ELD	322	0	\N	\N	\N	\N	t	\N	Steelbane Hydra	Creature	R
34099	ELD	323	0	\N	\N	\N	\N	t	\N	Thorn Mammoth	Creature	R
34100	ELD	324	0	t	t	t	\N	\N	\N	Alela, Artful Provocateur	Lgd. Creature	M
34101	ELD	325	0	t	t	\N	\N	\N	\N	Banish into Fable	Instant	R
34102	ELD	326	0	t	t	\N	\N	t	\N	Chulane, Teller of Tales	Lgd. Creature	M
34103	ELD	327	0	\N	\N	t	\N	t	\N	Gluttonous Troll	Creature	R
34104	ELD	328	0	t	\N	t	\N	\N	\N	Knights' Charge	Enchantment	R
34105	ELD	329	0	\N	\N	t	t	t	\N	Korvold, Fae-Cursed King	Lgd. Creature	M
34106	ELD	330	0	t	\N	t	t	\N	\N	Syr Gwyn, Hero of Ashvale	Lgd. Creature	M
34107	ELD	331	0	\N	\N	\N	\N	\N	\N	Arcane Signet	Artifact	C
34108	ELD	332	0	\N	\N	\N	\N	\N	\N	Tome of Legends	Artifact	R
34109	ELD	333	0	\N	\N	\N	\N	\N	\N	Command Tower	Land	C
34110	ELD	334	0	t	\N	\N	\N	\N	\N	Acclaimed Contender	Creature	R
34111	ELD	335	0	t	\N	\N	\N	\N	\N	Charming Prince	Creature	R
34112	ELD	336	0	t	\N	\N	\N	\N	\N	The Circle of Loyalty	Lgd. Artifact	M
34113	ELD	337	0	t	\N	\N	\N	\N	\N	Happily Ever After	Enchantment	R
34114	ELD	338	0	t	\N	\N	\N	\N	\N	Harmonious Archon	Creature	M
34115	ELD	339	0	t	\N	\N	\N	\N	\N	Hushbringer	Creature	R
34116	ELD	340	0	t	\N	\N	\N	\N	\N	Linden, the Steadfast Queen	Lgd. Creature	R
34117	ELD	341	0	t	\N	\N	\N	\N	\N	Worthy Knight	Creature	R
34118	ELD	342	0	\N	t	\N	\N	\N	\N	Emry, Lurker of the Loch	Lgd. Creature	R
34119	ELD	343	0	\N	t	\N	\N	\N	\N	Folio of Fancies	Artifact	R
34120	ELD	344	0	\N	t	\N	\N	\N	\N	Gadwick, the Wizened	Lgd. Creature	R
34121	ELD	345	0	\N	t	\N	\N	\N	\N	The Magic Mirror	Lgd. Artifact	M
34122	ELD	346	0	\N	t	\N	\N	\N	\N	Midnight Clock	Artifact	R
34123	ELD	347	0	\N	t	\N	\N	\N	\N	Mirrormade	Enchantment	R
34124	ELD	348	0	\N	t	\N	\N	\N	\N	Stolen by the Fae	Sorcery	R
34125	ELD	349	0	\N	t	\N	\N	\N	\N	Vantress Gargoyle	Artifact Creature	R
34126	ELD	350	0	\N	\N	t	\N	\N	\N	Ayara, First of Locthwain	Lgd. Creature	R
34127	ELD	351	0	\N	\N	t	\N	\N	\N	Blacklance Paragon	Creature	R
34128	ELD	352	0	\N	\N	t	\N	\N	\N	The Cauldron of Eternity	Lgd. Artifact	M
34129	ELD	353	0	\N	\N	t	\N	\N	\N	Clackbridge Troll	Creature	R
34130	ELD	354	0	\N	\N	t	\N	\N	\N	Oathsworn Knight	Creature	R
34131	ELD	355	0	\N	\N	t	\N	\N	\N	Piper of the Swarm	Creature	R
34132	ELD	356	0	\N	\N	t	\N	\N	\N	Rankle, Master of Pranks	Lgd. Creature	M
34133	ELD	357	0	\N	\N	t	\N	\N	\N	Wishclaw Talisman	Artifact	R
34134	ELD	358	0	\N	\N	t	\N	\N	\N	Witch's Vengeance	Sorcery	R
34135	ELD	359	0	\N	\N	\N	t	\N	\N	Embercleave	Lgd. Artifact	M
34136	ELD	360	0	\N	\N	\N	t	\N	\N	Fervent Champion	Creature	R
34137	ELD	361	0	\N	\N	\N	t	\N	\N	Fires of Invention	Enchantment	R
34138	ELD	362	0	\N	\N	\N	t	\N	\N	Irencrag Feat	Sorcery	R
34139	ELD	363	0	\N	\N	\N	t	\N	\N	Irencrag Pyromancer	Creature	R
34140	ELD	364	0	\N	\N	\N	t	\N	\N	Opportunistic Dragon	Creature	R
34141	ELD	365	0	\N	\N	\N	t	\N	\N	Robber of the Rich	Creature	M
34142	ELD	366	0	\N	\N	\N	t	\N	\N	Sundering Stroke	Sorcery	R
34143	ELD	367	0	\N	\N	\N	t	\N	\N	Torbran, Thane of Red Fell	Lgd. Creature	R
34144	ELD	368	0	\N	\N	\N	\N	t	\N	Feasting Troll King	Creature	R
34145	ELD	369	0	\N	\N	\N	\N	t	\N	Gilded Goose	Creature	R
34146	ELD	370	0	\N	\N	\N	\N	t	\N	The Great Henge	Lgd. Artifact	M
34147	ELD	371	0	\N	\N	\N	\N	t	\N	Once Upon a Time	Instant	R
34148	ELD	372	0	\N	\N	\N	\N	t	\N	Questing Beast	Lgd. Creature	M
34149	ELD	373	0	\N	\N	\N	\N	t	\N	Return of the Wildspeaker	Instant	R
34150	ELD	374	0	\N	\N	\N	\N	t	\N	Wicked Wolf	Creature	R
34151	ELD	375	0	\N	\N	\N	\N	t	\N	Wildborn Preserver	Creature	R
34152	ELD	376	0	\N	\N	\N	\N	t	\N	Yorvo, Lord of Garenbrig	Lgd. Creature	R
34153	ELD	377	0	t	t	\N	\N	\N	\N	Dance of the Manse	Sorcery	R
34154	ELD	378	0	t	\N	t	\N	\N	\N	Doom Foretold	Enchantment	R
34155	ELD	379	0	\N	\N	\N	t	t	\N	Escape to the Wilds	Sorcery	R
34156	ELD	380	0	t	\N	\N	\N	t	\N	Faeburrow Elder	Creature	R
34157	ELD	381	0	\N	t	t	\N	\N	\N	Lochmere Serpent	Creature	R
34158	ELD	382	0	t	\N	\N	t	\N	\N	Outlaws' Merriment	Enchantment	M
34159	ELD	383	0	\N	\N	t	t	\N	\N	Stormfist Crusader	Creature	R
34160	ELD	384	0	\N	\N	\N	\N	\N	\N	Sorcerous Spyglass	Artifact	R
34161	ELD	385	0	\N	\N	\N	\N	\N	\N	Stonecoil Serpent	Artifact Creature	R
34162	ELD	386	0	\N	\N	\N	\N	\N	\N	Castle Ardenvale	Land	R
34163	ELD	387	0	\N	\N	\N	\N	\N	\N	Castle Embereth	Land	R
34164	ELD	388	0	\N	\N	\N	\N	\N	\N	Castle Garenbrig	Land	R
34165	ELD	389	0	\N	\N	\N	\N	\N	\N	Castle Locthwain	Land	R
34166	ELD	390	0	\N	\N	\N	\N	\N	\N	Castle Vantress	Land	R
34167	ELD	391	0	\N	\N	\N	\N	\N	\N	Fabled Passage	Land	R
34168	ELD	392	0	\N	\N	t	\N	\N	\N	Piper of the Swarm	Creature	R
34169	ELD	393	0	t	\N	\N	\N	\N	\N	Glass Casket	Artifact	U
34170	ELD	394	0	\N	\N	\N	t	\N	\N	Slaying Fire	Instant	U
34171	ELD	395	0	\N	\N	\N	\N	t	\N	Kenrith's Transformation	Enchantment	U
34172	ELD	396	0	\N	t	\N	t	\N	\N	Improbable Alliance	Enchantment	U
34173	ELD	397	0	t	\N	\N	t	\N	\N	Inspiring Veteran	Creature	U
33925	ELD	149	1	\N	\N	\N	\N	t	\N	Beanstalk Giant // Fertile Footsteps	Creature	U
36990	NEO	334	0	\N	t	\N	\N	\N	\N	Moon-Circuit Hacker	Enchantment Creature	C
36991	NEO	335	0	\N	t	\N	\N	\N	\N	Moonsnare Specialist	Creature	C
36992	NEO	336	0	\N	t	\N	\N	\N	\N	Prosperous Thief	Creature	U
36993	NEO	337	0	\N	t	\N	\N	\N	\N	Thousand-Faced Shadow	Creature	R
36994	NEO	338	0	\N	\N	t	\N	\N	\N	Biting-Palm Ninja	Creature	R
36995	NEO	339	0	\N	\N	t	\N	\N	\N	Dokuchi Shadow-Walker	Creature	C
36996	NEO	340	0	\N	\N	t	\N	\N	\N	Dokuchi Silencer	Creature	U
36997	NEO	341	0	\N	\N	t	\N	\N	\N	Inkrise Infiltrator	Creature	C
36998	NEO	342	0	\N	\N	t	\N	\N	\N	Mukotai Ambusher	Artifact Creature	C
36999	NEO	343	0	\N	\N	t	\N	\N	\N	Nashi, Moon Sage's Scion	Lgd. Creature	M
37000	NEO	344	0	\N	\N	t	\N	\N	\N	Nezumi Prowler	Artifact Creature	U
37001	NEO	345	0	\N	\N	t	\N	\N	\N	Tatsunari, Toad Rider	Lgd. Creature	R
37002	NEO	346	0	\N	\N	\N	\N	t	\N	Coiling Stalker	Creature	C
37003	NEO	347	0	\N	\N	\N	\N	t	\N	Fang of Shigeki	Enchantment Creature	C
37004	NEO	348	0	\N	\N	\N	\N	t	\N	Kappa Tech-Wrecker	Creature	U
37005	NEO	349	0	\N	\N	\N	\N	t	\N	Spring-Leaf Avenger	Creature	R
37006	NEO	350	0	\N	t	t	\N	\N	\N	Kaito Shizuki	Lgd. Planeswalker	M
37007	NEO	351	0	\N	t	t	\N	\N	\N	Kotose, the Silent Spider	Lgd. Creature	R
37008	NEO	352	0	\N	t	t	\N	\N	\N	Satoru Umezawa	Lgd. Creature	R
37009	NEO	353	0	\N	t	t	\N	\N	\N	Silver-Fur Master	Creature	U
37010	NEO	354	0	t	\N	\N	\N	\N	\N	The Restoration of Eiganjo // Architect of Restoration	Enchantment	R
37011	NEO	355	0	\N	t	\N	\N	\N	\N	Inventive Iteration // Living Breakthrough	Enchantment	R
37012	NEO	356	0	\N	\N	t	\N	\N	\N	Tribute to Horobi // Echo of Death's Wail	Enchantment	R
37013	NEO	357	0	\N	\N	\N	t	\N	\N	Fable of the Mirror-Breaker // Reflection of Kiki-Jiki	Enchantment	R
37014	NEO	358	0	\N	\N	\N	\N	t	\N	The Dragon-Kami Reborn // Dragon-Kami's Egg	Enchantment	R
37015	NEO	359	0	\N	\N	\N	\N	t	\N	Jugan Defends the Temple // Remnant of the Rising Star	Enchantment	M
37016	NEO	360	0	\N	\N	\N	\N	t	\N	Teachings of the Kirin // Kirin-Touched Orochi	Enchantment	R
37017	NEO	361	0	\N	\N	t	t	\N	\N	Hidetsugu Consumes All // Vessel of the All-Consuming	Enchantment	M
37018	NEO	362	0	t	t	t	t	t	\N	The Kami War // O-Kagachi Made Manifest	Enchantment	M
37019	NEO	363	0	t	\N	\N	\N	\N	\N	Brilliant Restoration	Sorcery	R
37020	NEO	364	0	t	\N	\N	\N	\N	\N	Cloudsteel Kirin	Artifact Creature	R
37021	NEO	365	0	t	\N	\N	\N	\N	\N	Farewell	Sorcery	R
37022	NEO	366	0	t	\N	\N	\N	\N	\N	Invoke Justice	Sorcery	R
37023	NEO	367	0	t	\N	\N	\N	\N	\N	Light-Paws, Emperor's Voice	Lgd. Creature	R
37024	NEO	368	0	t	\N	\N	\N	\N	\N	Lion Sash	Artifact Creature	R
37025	NEO	369	0	t	\N	\N	\N	\N	\N	March of Otherworldly Light	Instant	R
37026	NEO	370	0	\N	t	\N	\N	\N	\N	Invoke the Winds	Sorcery	R
37027	NEO	371	0	\N	t	\N	\N	\N	\N	Jin-Gitaxias, Progress Tyrant	Lgd. Creature	M
37028	NEO	372	0	\N	t	\N	\N	\N	\N	March of Swirling Mist	Instant	R
37029	NEO	373	0	\N	t	\N	\N	\N	\N	Mindlink Mech	Artifact	R
37030	NEO	374	0	\N	t	\N	\N	\N	\N	The Reality Chip	Lgd. Artifact Creature	R
37031	NEO	375	0	\N	t	\N	\N	\N	\N	Tameshi, Reality Architect	Lgd. Creature	R
37032	NEO	376	0	\N	t	\N	\N	\N	\N	Tezzeret, Betrayer of Flesh	Lgd. Planeswalker	M
37033	NEO	377	0	\N	\N	t	\N	\N	\N	Blade of the Oni	Artifact Creature	M
37034	NEO	378	0	\N	\N	t	\N	\N	\N	Hidetsugu, Devouring Chaos	Lgd. Creature	R
37035	NEO	379	0	\N	\N	t	\N	\N	\N	Invoke Despair	Sorcery	R
37036	NEO	380	0	\N	\N	t	\N	\N	\N	March of Wretched Sorrow	Instant	R
37037	NEO	381	0	\N	\N	t	\N	\N	\N	Mukotai Soulripper	Artifact	R
37038	NEO	382	0	\N	\N	t	\N	\N	\N	Soul Transfer	Sorcery	R
37039	NEO	383	0	\N	\N	\N	t	\N	\N	Explosive Singularity	Sorcery	M
37040	NEO	384	0	\N	\N	\N	t	\N	\N	Invoke Calamity	Instant	R
37041	NEO	385	0	\N	\N	\N	t	\N	\N	Lizard Blades	Artifact Creature	R
37042	NEO	386	0	\N	\N	\N	t	\N	\N	March of Reckless Joy	Instant	R
37043	NEO	387	0	\N	\N	\N	t	\N	\N	Ogre-Head Helm	Artifact Creature	R
37044	NEO	388	0	\N	\N	\N	t	\N	\N	Scrap Welder	Creature	R
37045	NEO	389	0	\N	\N	\N	t	\N	\N	Thundering Raiju	Creature	R
37046	NEO	390	0	\N	\N	\N	\N	t	\N	Invoke the Ancients	Sorcery	R
37047	NEO	391	0	\N	\N	\N	\N	t	\N	Kami of Transience	Creature	R
37048	NEO	392	0	\N	\N	\N	\N	t	\N	Kodama of the West Tree	Lgd. Creature	M
37049	NEO	393	0	\N	\N	\N	\N	t	\N	March of Burgeoning Life	Instant	R
37050	NEO	394	0	\N	\N	\N	\N	t	\N	Shigeki, Jukai Visionary	Lgd. Enchantment Creature	R
37051	NEO	395	0	\N	\N	\N	\N	t	\N	Weaver of Harmony	Enchantment Creature	R
37052	NEO	396	0	t	\N	\N	t	\N	\N	Eiganjo Uprising	Sorcery	R
37053	NEO	397	0	t	\N	t	\N	\N	\N	Greasefang, Okiba Boss	Lgd. Creature	R
37054	NEO	398	0	t	t	\N	t	\N	\N	Hinata, Dawn-Crowned	Lgd. Creature	R
37055	NEO	399	0	t	\N	\N	\N	t	\N	Satsuki, the Living Lore	Lgd. Creature	R
37056	NEO	400	0	t	\N	t	\N	\N	\N	Spirit-Sister's Call	Enchantment	M
37057	NEO	401	0	\N	\N	\N	\N	\N	\N	Eater of Virtue	Lgd. Artifact	R
37058	NEO	402	0	\N	\N	\N	\N	\N	\N	Mechtitan Core	Artifact	R
37059	NEO	403	0	\N	\N	\N	\N	\N	\N	Mirror Box	Artifact	R
37060	NEO	404	0	\N	\N	\N	\N	\N	\N	Reckoner Bankbuster	Artifact	R
37061	NEO	405	0	\N	\N	\N	\N	\N	\N	Surgehacker Mech	Artifact	R
37062	NEO	406	0	t	\N	\N	\N	\N	\N	Ao, the Dawn Sky	Lgd. Creature	M
37063	NEO	407	0	t	\N	\N	\N	\N	\N	Kyodai, Soul of Kamigawa	Lgd. Creature	R
37064	NEO	408	0	\N	t	\N	\N	\N	\N	Kairi, the Swirling Sky	Lgd. Creature	M
37065	NEO	409	0	\N	\N	t	\N	\N	\N	Junji, the Midnight Sky	Lgd. Creature	M
37066	NEO	410	0	\N	\N	\N	t	\N	\N	Atsushi, the Blazing Sky	Lgd. Creature	M
37067	NEO	411	0	\N	\N	\N	\N	t	\N	Kura, the Boundless Sky	Lgd. Creature	M
37068	NEO	412	0	\N	\N	\N	\N	\N	\N	Boseiju, Who Endures	Lgd. Land	R
37069	NEO	413	0	\N	\N	\N	\N	\N	\N	Eiganjo, Seat of the Empire	Lgd. Land	R
37070	NEO	414	0	\N	\N	\N	\N	\N	\N	Otawara, Soaring City	Lgd. Land	R
37071	NEO	415	0	\N	\N	\N	\N	\N	\N	Sokenzan, Crucible of Defiance	Lgd. Land	R
37072	NEO	416	0	\N	\N	\N	\N	\N	\N	Takenuma, Abandoned Mire	Lgd. Land	R
37073	NEO	417	0	t	\N	\N	\N	\N	\N	Farewell	Sorcery	R
37074	NEO	418	0	t	\N	\N	\N	\N	\N	The Wandering Emperor	Lgd. Planeswalker	M
37075	NEO	419	0	\N	t	\N	\N	\N	\N	Tezzeret, Betrayer of Flesh	Lgd. Planeswalker	M
37076	NEO	420	0	\N	\N	t	\N	\N	\N	Blade of the Oni	Artifact Creature	M
37077	NEO	421	0	\N	\N	t	\N	\N	\N	Nashi, Moon Sage's Scion	Lgd. Creature	M
37078	NEO	422	0	\N	\N	\N	t	\N	\N	Explosive Singularity	Sorcery	M
37079	NEO	423	0	\N	\N	\N	\N	t	\N	Kodama of the West Tree	Lgd. Creature	M
37080	NEO	424	0	\N	t	t	\N	\N	\N	Kaito Shizuki	Lgd. Planeswalker	M
37081	NEO	425	0	t	\N	\N	t	\N	\N	Risona, Asari Commander	Lgd. Creature	R
37082	NEO	426	0	\N	t	t	\N	\N	\N	Satoru Umezawa	Lgd. Creature	R
37083	NEO	427	0	\N	t	\N	\N	\N	\N	|aEDn,Gyts BytPt,krwFTrh.	|MewkfuDs fyrs,psewtr.	M
37084	NEO	428	0	\N	t	\N	\N	t	\N	|temDwooD pcEnusL,iOlz.	|MewknmQYpmunt temDwooD.	M
37085	NEO	429	0	\N	\N	t	\N	\N	\N	Hidetsugu, Devouring Chaos	Lgd. Creature	R
37086	NEO	430	0	\N	\N	t	\N	\N	\N	Hidetsugu, Devouring Chaos	Lgd. Creature	R
37087	NEO	431	0	\N	\N	t	\N	\N	\N	Hidetsugu, Devouring Chaos	Lgd. Creature	R
37088	NEO	432	0	\N	\N	t	\N	\N	\N	Hidetsugu, Devouring Chaos	Lgd. Creature	R
37089	NEO	433	0	t	\N	\N	\N	\N	\N	Ao, the Dawn Sky	Lgd. Creature	M
37090	NEO	434	0	t	\N	\N	\N	\N	\N	Brilliant Restoration	Sorcery	R
37091	NEO	435	0	t	\N	\N	\N	\N	\N	Cloudsteel Kirin	Artifact Creature	R
37092	NEO	436	0	t	\N	\N	\N	\N	\N	Farewell	Sorcery	R
37093	NEO	437	0	t	\N	\N	\N	\N	\N	Invoke Justice	Sorcery	R
37094	NEO	438	0	t	\N	\N	\N	\N	\N	Kyodai, Soul of Kamigawa	Lgd. Creature	R
37095	NEO	439	0	t	\N	\N	\N	\N	\N	Light-Paws, Emperor's Voice	Lgd. Creature	R
37096	NEO	440	0	t	\N	\N	\N	\N	\N	Lion Sash	Artifact Creature	R
37097	NEO	441	0	t	\N	\N	\N	\N	\N	March of Otherworldly Light	Instant	R
37098	NEO	442	0	t	\N	\N	\N	\N	\N	The Restoration of Eiganjo // Architect of Restoration	Enchantment	R
37099	NEO	443	0	\N	t	\N	\N	\N	\N	Inventive Iteration // Living Breakthrough	Enchantment	R
37100	NEO	444	0	\N	t	\N	\N	\N	\N	Invoke the Winds	Sorcery	R
37101	NEO	445	0	\N	t	\N	\N	\N	\N	Jin-Gitaxias, Progress Tyrant	Lgd. Creature	M
37102	NEO	446	0	\N	t	\N	\N	\N	\N	Kairi, the Swirling Sky	Lgd. Creature	M
37103	NEO	447	0	\N	t	\N	\N	\N	\N	March of Swirling Mist	Instant	R
37104	NEO	448	0	\N	t	\N	\N	\N	\N	Mindlink Mech	Artifact	R
37105	NEO	449	0	\N	t	\N	\N	\N	\N	The Reality Chip	Lgd. Artifact Creature	R
37106	NEO	450	0	\N	t	\N	\N	\N	\N	Tameshi, Reality Architect	Lgd. Creature	R
37107	NEO	451	0	\N	t	\N	\N	\N	\N	Thousand-Faced Shadow	Creature	R
37108	NEO	452	0	\N	\N	t	\N	\N	\N	Biting-Palm Ninja	Creature	R
37109	NEO	453	0	\N	\N	t	\N	\N	\N	Blade of the Oni	Artifact Creature	M
37110	NEO	454	0	\N	\N	t	\N	\N	\N	Hidetsugu, Devouring Chaos	Lgd. Creature	R
37111	NEO	455	0	\N	\N	t	\N	\N	\N	Invoke Despair	Sorcery	R
37112	NEO	456	0	\N	\N	t	\N	\N	\N	Junji, the Midnight Sky	Lgd. Creature	M
37113	NEO	457	0	\N	\N	t	\N	\N	\N	March of Wretched Sorrow	Instant	R
37114	NEO	458	0	\N	\N	t	\N	\N	\N	Mukotai Soulripper	Artifact	R
37115	NEO	459	0	\N	\N	t	\N	\N	\N	Nashi, Moon Sage's Scion	Lgd. Creature	M
37116	NEO	460	0	\N	\N	t	\N	\N	\N	Soul Transfer	Sorcery	R
37117	NEO	461	0	\N	\N	t	\N	\N	\N	Tatsunari, Toad Rider	Lgd. Creature	R
37118	NEO	462	0	\N	\N	t	\N	\N	\N	Tribute to Horobi // Echo of Death's Wail	Enchantment	R
37119	NEO	463	0	\N	\N	\N	t	\N	\N	Atsushi, the Blazing Sky	Lgd. Creature	M
37120	NEO	464	0	\N	\N	\N	t	\N	\N	Explosive Singularity	Sorcery	M
37121	NEO	465	0	\N	\N	\N	t	\N	\N	Fable of the Mirror-Breaker // Reflection of Kiki-Jiki	Enchantment	R
37122	NEO	466	0	\N	\N	\N	t	\N	\N	Goro-Goro, Disciple of Ryusei	Lgd. Creature	R
37123	NEO	467	0	\N	\N	\N	t	\N	\N	Invoke Calamity	Instant	R
37124	NEO	468	0	\N	\N	\N	t	\N	\N	Lizard Blades	Artifact Creature	R
37125	NEO	469	0	\N	\N	\N	t	\N	\N	March of Reckless Joy	Instant	R
37126	NEO	470	0	\N	\N	\N	t	\N	\N	Ogre-Head Helm	Artifact Creature	R
37127	NEO	471	0	\N	\N	\N	t	\N	\N	Scrap Welder	Creature	R
37128	NEO	472	0	\N	\N	\N	t	\N	\N	Thundering Raiju	Creature	R
37129	NEO	473	0	\N	\N	\N	\N	t	\N	The Dragon-Kami Reborn // Dragon-Kami's Egg	Enchantment	R
37130	NEO	474	0	\N	\N	\N	\N	t	\N	Invoke the Ancients	Sorcery	R
37131	NEO	475	0	\N	\N	\N	\N	t	\N	Jugan Defends the Temple // Remnant of the Rising Star	Enchantment	M
37132	NEO	476	0	\N	\N	\N	\N	t	\N	Kami of Transience	Creature	R
37133	NEO	477	0	\N	\N	\N	\N	t	\N	Kodama of the West Tree	Lgd. Creature	M
37134	NEO	478	0	\N	\N	\N	\N	t	\N	Kura, the Boundless Sky	Lgd. Creature	M
37135	NEO	479	0	\N	\N	\N	\N	t	\N	March of Burgeoning Life	Instant	R
37136	NEO	480	0	\N	\N	\N	\N	t	\N	Shigeki, Jukai Visionary	Lgd. Enchantment Creature	R
37137	NEO	481	0	\N	\N	\N	\N	t	\N	Spring-Leaf Avenger	Creature	R
37138	NEO	482	0	\N	\N	\N	\N	t	\N	Teachings of the Kirin // Kirin-Touched Orochi	Enchantment	R
37139	NEO	483	0	\N	\N	\N	\N	t	\N	Weaver of Harmony	Enchantment Creature	R
37140	NEO	484	0	t	\N	\N	t	\N	\N	Eiganjo Uprising	Sorcery	R
37141	NEO	485	0	t	\N	t	\N	\N	\N	Greasefang, Okiba Boss	Lgd. Creature	R
37142	NEO	486	0	\N	\N	t	t	\N	\N	Hidetsugu Consumes All // Vessel of the All-Consuming	Enchantment	M
37143	NEO	487	0	t	t	\N	t	\N	\N	Hinata, Dawn-Crowned	Lgd. Creature	R
37144	NEO	488	0	t	\N	t	t	\N	\N	Isshin, Two Heavens as One	Lgd. Creature	R
37145	NEO	489	0	t	t	t	t	t	\N	The Kami War // O-Kagachi Made Manifest	Enchantment	M
37146	NEO	490	0	\N	t	t	\N	\N	\N	Kotose, the Silent Spider	Lgd. Creature	R
37147	NEO	491	0	t	\N	\N	t	\N	\N	Raiyuu, Storm's Edge	Lgd. Creature	R
37148	NEO	492	0	t	\N	\N	t	\N	\N	Risona, Asari Commander	Lgd. Creature	R
37149	NEO	493	0	\N	t	t	\N	\N	\N	Satoru Umezawa	Lgd. Creature	R
37150	NEO	494	0	t	\N	\N	\N	t	\N	Satsuki, the Living Lore	Lgd. Creature	R
37151	NEO	495	0	t	\N	t	\N	\N	\N	Spirit-Sister's Call	Enchantment	M
37152	NEO	496	0	\N	\N	\N	\N	\N	\N	Eater of Virtue	Lgd. Artifact	R
37153	NEO	497	0	\N	\N	\N	\N	\N	\N	Mechtitan Core	Artifact	R
37154	NEO	498	0	\N	\N	\N	\N	\N	\N	Mirror Box	Artifact	R
37155	NEO	499	0	\N	\N	\N	\N	\N	\N	Reckoner Bankbuster	Artifact	R
37156	NEO	500	0	\N	\N	\N	\N	\N	\N	Surgehacker Mech	Artifact	R
37157	NEO	501	0	\N	\N	\N	\N	\N	\N	Boseiju, Who Endures	Lgd. Land	R
37158	NEO	502	0	\N	\N	\N	\N	\N	\N	Eiganjo, Seat of the Empire	Lgd. Land	R
37159	NEO	503	0	\N	\N	\N	\N	\N	\N	Otawara, Soaring City	Lgd. Land	R
37160	NEO	504	0	\N	\N	\N	\N	\N	\N	Sokenzan, Crucible of Defiance	Lgd. Land	R
37161	NEO	505	0	\N	\N	\N	\N	\N	\N	Takenuma, Abandoned Mire	Lgd. Land	R
37162	NEO	506	0	\N	\N	t	\N	\N	\N	Invoke Despair	Sorcery	R
37163	NEO	507	0	\N	t	t	\N	\N	\N	Satoru Umezawa	Lgd. Creature	R
37164	NEO	508	0	t	\N	\N	\N	\N	\N	Spirited Companion	Enchantment Creature	C
37165	NEO	509	0	\N	t	\N	t	\N	\N	Enthusiastic Mechanaut	Artifact Creature	U
37166	NEO	510	0	t	\N	\N	\N	t	\N	Jukai Naturalist	Enchantment Creature	U
37167	NEO	511	0	\N	t	t	\N	\N	\N	Silver-Fur Master	Creature	U
37168	NEO	512	0	\N	\N	\N	\N	\N	\N	Secluded Courtyard	Land	U
37169	NEO	513	0	\N	t	\N	\N	\N	\N	Jin-Gitaxias, Progress Tyrant	Lgd. Creature	M
37170	NEO	514	0	\N	t	\N	\N	\N	\N	Jin-Gitaxias, Progress Tyrant	Lgd. Creature	M
37634	BRO	28	0	t	\N	\N	\N	\N	\N	Survivor of Korlis	Creature	C
37635	BRO	29	0	t	\N	\N	\N	\N	\N	Thopter Architect	Creature	U
37636	BRO	30	0	t	\N	\N	\N	\N	\N	Tocasia's Welcome	Enchantment	R
37637	BRO	31	0	t	\N	\N	\N	\N	\N	Union of the Third Path	Instant	C
37639	BRO	33	0	t	\N	\N	\N	\N	\N	Yotian Medic	Creature	C
37640	BRO	34	0	\N	\N	\N	\N	\N	\N	Autonomous Assembler	Artifact Creature	R
37641	BRO	35	0	\N	\N	\N	\N	\N	\N	Combat Thresher	Artifact Creature	U
37642	BRO	36	0	\N	\N	\N	\N	\N	\N	Platoon Dispenser	Artifact Creature	M
37643	BRO	37	0	\N	\N	\N	\N	\N	\N	Scrapwork Cohort	Artifact Creature	C
37644	BRO	38	0	\N	\N	\N	\N	\N	\N	Steel Seraph	Artifact Creature	R
37645	BRO	39	0	\N	\N	\N	\N	\N	\N	Tocasia's Onulet	Artifact Creature	C
37646	BRO	40	0	\N	\N	\N	\N	\N	\N	Urza's Sylex	Lgd. Artifact	M
37648	BRO	42	0	\N	\N	\N	\N	\N	\N	Yotian Frontliner	Artifact Creature	U
37649	BRO	43	0	\N	t	\N	\N	\N	\N	Air Marshal	Creature	C
37650	BRO	44	0	\N	t	\N	\N	\N	\N	Curate	Instant	C
37651	BRO	45	0	\N	t	\N	\N	\N	\N	Defabricate	Instant	U
37652	BRO	46	0	\N	t	\N	\N	\N	\N	Desynchronize	Instant	C
37653	BRO	47	0	\N	t	\N	\N	\N	\N	Drafna, Founder of Lat-Nam	Lgd. Creature	R
37654	BRO	48	0	\N	t	\N	\N	\N	\N	Fallaji Archaeologist	Creature	C
37655	BRO	49	0	\N	t	\N	\N	\N	\N	Flow of Knowledge	Instant	U
37656	BRO	50	0	\N	t	\N	\N	\N	\N	Forging the Anchor	Sorcery	U
37657	BRO	51	0	\N	t	\N	\N	\N	\N	Hurkyl, Master Wizard	Lgd. Creature	R
37658	BRO	52	0	\N	t	\N	\N	\N	\N	Hurkyl's Final Meditation	Instant	R
37660	BRO	54	0	\N	t	\N	\N	\N	\N	Keeper of the Cadence	Creature	U
37663	BRO	57	0	\N	t	\N	\N	\N	\N	Machine Over Matter	Instant	C
37665	BRO	59	0	\N	t	\N	\N	\N	\N	One with the Multiverse	Enchantment	M
37666	BRO	60	0	\N	t	\N	\N	\N	\N	Retrieval Agent	Creature	C
37667	BRO	61	0	\N	t	\N	\N	\N	\N	Scatter Ray	Instant	C
37668	BRO	62	0	\N	t	\N	\N	\N	\N	Skystrike Officer	Creature	R
37669	BRO	63	0	\N	t	\N	\N	\N	\N	Splitting the Powerstone	Sorcery	U
37671	BRO	65	0	\N	t	\N	\N	\N	\N	Take Flight	Enchantment	U
37672	BRO	66	0	\N	t	\N	\N	\N	\N	Teferi, Temporal Pilgrim	Lgd. Planeswalker	M
37673	BRO	67	0	\N	t	\N	\N	\N	\N	Third Path Savant	Creature	C
37676	BRO	70	0	\N	t	\N	\N	\N	\N	Urza's Command	Instant	R
37677	BRO	71	0	\N	t	\N	\N	\N	\N	Urza's Rebuff	Instant	C
37679	BRO	73	0	\N	t	\N	\N	\N	\N	Wing Commando	Creature	C
37680	BRO	74	0	\N	t	\N	\N	\N	\N	Zephyr Sentinel	Creature	U
37681	BRO	75	0	\N	\N	\N	\N	\N	\N	Arcane Proxy	Artifact Creature	M
37682	BRO	76	0	\N	\N	\N	\N	\N	\N	Coastal Bulwark	Artifact Creature	C
37684	BRO	78	0	\N	\N	\N	\N	\N	\N	Depth Charge Colossus	Artifact Creature	C
37686	BRO	80	0	\N	\N	\N	\N	\N	\N	Spotter Thopter	Artifact Creature	U
37661	BRO	55	1	\N	t	\N	\N	\N	\N	Koilos Roc	Creature	C
37683	BRO	77	1	\N	\N	\N	\N	\N	\N	Combat Courier	Artifact Creature	C
37678	BRO	72	1	\N	t	\N	\N	\N	\N	Weakstone's Subjugation	Enchantment	C
37675	BRO	69	1	\N	t	\N	\N	\N	\N	Urza, Powerstone Prodigy	Lgd. Creature	U
37674	BRO	68	1	\N	t	\N	\N	\N	\N	Thopter Mechanic	Creature	U
37685	BRO	79	1	\N	\N	\N	\N	\N	\N	Hulking Metamorph	Artifact Creature	U
37670	BRO	64	1	\N	t	\N	\N	\N	\N	Stern Lesson	Instant	C
37664	BRO	58	1	\N	t	\N	\N	\N	\N	Mightstone's Animation	Enchantment	C
37662	BRO	56	1	\N	t	\N	\N	\N	\N	Lat-Nam Adept	Creature	C
37659	BRO	53	1	\N	t	\N	\N	\N	\N	Involuntary Cooldown	Sorcery	U
36738	NEO	82	1	\N	t	\N	\N	\N	\N	Tameshi, Reality Architect	Lgd. Creature	R
36925	NEO	269	1	\N	\N	\N	\N	\N	\N	Jungle Hollow	Land	C
37171	DMU	1	0	\N	\N	\N	\N	\N	\N	Karn, Living Legacy	Lgd. Planeswalker	M
37774	BRO	168	1	\N	\N	\N	\N	t	\N	Argothian Sprite	Creature	C
37687	BRO	81	0	\N	\N	\N	\N	\N	\N	Surge Engine	Artifact Creature	M
37688	BRO	82	0	\N	t	\N	\N	\N	\N	The Temporal Anchor	Lgd. Artifact	R
37689	BRO	83	0	\N	\N	\N	\N	\N	\N	Terisian Mindbreaker	Artifact Creature	R
37690	BRO	84	0	\N	\N	t	\N	\N	\N	Ashnod, Flesh Mechanist	Lgd. Creature	R
37692	BRO	86	0	\N	\N	t	\N	\N	\N	Battlefield Butcher	Creature	U
37693	BRO	87	0	\N	\N	t	\N	\N	\N	Carrion Locust	Creature	C
37694	BRO	88	0	\N	\N	t	\N	\N	\N	Corrupt	Sorcery	U
37695	BRO	89	0	\N	\N	t	\N	\N	\N	Diabolic Intent	Sorcery	R
37696	BRO	90	0	\N	\N	t	\N	\N	\N	Disciples of Gix	Creature	U
37697	BRO	91	0	\N	\N	t	\N	\N	\N	Disfigure	Instant	C
37698	BRO	92	0	\N	\N	t	\N	\N	\N	Dreams of Steel and Oil	Sorcery	U
37699	BRO	93	0	\N	\N	t	\N	\N	\N	Emergency Weld	Sorcery	C
37700	BRO	94	0	\N	\N	t	\N	\N	\N	Fateful Handoff	Sorcery	R
37701	BRO	95	0	\N	\N	t	\N	\N	\N	Gix, Yawgmoth Praetor	Lgd. Creature	M
37702	BRO	96	0	\N	\N	t	\N	\N	\N	Gix's Caress	Sorcery	C
37704	BRO	98	0	\N	\N	t	\N	\N	\N	Gixian Infiltrator	Creature	C
37705	BRO	99	0	\N	\N	t	\N	\N	\N	Gixian Puppeteer	Creature	R
37706	BRO	100	0	\N	\N	t	\N	\N	\N	Gixian Skullflayer	Creature	C
37707	BRO	101	0	\N	\N	t	\N	\N	\N	Gnawing Vermin	Creature	U
37710	BRO	104	0	\N	\N	t	\N	\N	\N	Gurgling Anointer	Creature	U
37711	BRO	105	0	\N	\N	t	\N	\N	\N	Hostile Negotiations	Instant	R
37713	BRO	107	0	\N	\N	t	\N	\N	\N	Misery's Shadow	Creature	R
37714	BRO	108	0	\N	\N	t	\N	\N	\N	Moment of Defiance	Instant	C
37716	BRO	110	0	\N	\N	t	\N	\N	\N	Overwhelming Remorse	Instant	C
37717	BRO	111	0	\N	\N	t	\N	\N	\N	Painful Quandary	Enchantment	R
37718	BRO	112	0	\N	\N	t	\N	\N	\N	Powerstone Fracture	Sorcery	C
37720	BRO	114	0	\N	\N	t	\N	\N	\N	Thran Vigil	Enchantment	U
37722	BRO	116	0	\N	\N	t	\N	\N	\N	Trench Stalker	Creature	C
37725	BRO	119	0	\N	\N	\N	\N	\N	\N	Dredging Claw	Artifact	C
37726	BRO	120	0	\N	\N	\N	\N	\N	\N	Goring Warplow	Artifact Creature	C
37727	BRO	121	0	\N	\N	\N	\N	\N	\N	Phyrexian Fleshgorger	Artifact Creature	M
37728	BRO	122	0	\N	\N	\N	\N	\N	\N	Razorlash Transmogrant	Artifact Creature	R
37730	BRO	124	0	\N	\N	\N	\N	\N	\N	Transmogrant Altar	Artifact	U
37731	BRO	125	0	\N	\N	\N	\N	\N	\N	Transmogrant's Crown	Artifact	R
37732	BRO	126	0	\N	\N	\N	t	\N	\N	Arms Race	Enchantment	U
37733	BRO	127	0	\N	\N	\N	t	\N	\N	Bitter Reunion	Enchantment	C
37734	BRO	128	0	\N	\N	\N	t	\N	\N	Brotherhood's End	Sorcery	R
37735	BRO	129	0	\N	\N	\N	t	\N	\N	Conscripted Infantry	Creature	C
37736	BRO	130	0	\N	\N	\N	t	\N	\N	Draconic Destiny	Enchantment	M
37737	BRO	131	0	\N	\N	\N	t	\N	\N	Dwarven Forge-Chanter	Creature	C
37739	BRO	133	0	\N	\N	\N	t	\N	\N	The Fall of Kroog	Sorcery	U
37740	BRO	134	0	\N	\N	\N	t	\N	\N	Fallaji Chaindancer	Creature	C
37741	BRO	135	0	\N	\N	\N	t	\N	\N	Feldon, Ronom Excavator	Lgd. Creature	R
37742	BRO	136	0	\N	\N	\N	t	\N	\N	Giant Cindermaw	Creature	U
37743	BRO	137	0	\N	\N	\N	t	\N	\N	Goblin Blast-Runner	Creature	C
37745	BRO	139	0	\N	\N	\N	t	\N	\N	Mechanized Warfare	Enchantment	R
37747	BRO	141	0	\N	\N	\N	t	\N	\N	Mishra's Command	Sorcery	R
37748	BRO	142	0	\N	\N	\N	t	\N	\N	Mishra's Domination	Enchantment	C
37750	BRO	144	0	\N	\N	\N	t	\N	\N	Monastery Swiftspear	Creature	U
37751	BRO	145	0	\N	\N	\N	t	\N	\N	Obliterating Bolt	Sorcery	U
37752	BRO	146	0	\N	\N	\N	t	\N	\N	Over the Top	Sorcery	R
37753	BRO	147	0	\N	\N	\N	t	\N	\N	Penregon Strongbull	Creature	C
37754	BRO	148	0	\N	\N	\N	t	\N	\N	Pyrrhic Blast	Instant	U
37755	BRO	149	0	\N	\N	\N	t	\N	\N	Raze to the Ground	Sorcery	C
37756	BRO	150	0	\N	\N	\N	t	\N	\N	Roc Hunter	Creature	C
37757	BRO	151	0	\N	\N	\N	t	\N	\N	Sardian Cliffstomper	Creature	U
37758	BRO	152	0	\N	\N	\N	t	\N	\N	Sibling Rivalry	Sorcery	C
37760	BRO	154	0	\N	\N	\N	t	\N	\N	Tyrant of Kher Ridges	Creature	R
37762	BRO	156	0	\N	\N	\N	t	\N	\N	Visions of Phyrexia	Enchantment	R
37763	BRO	157	0	\N	\N	\N	t	\N	\N	Whirling Strike	Instant	C
37764	BRO	158	0	\N	\N	\N	\N	\N	\N	Blitz Automaton	Artifact Creature	C
37766	BRO	160	0	\N	\N	\N	\N	\N	\N	Heavyweight Demolisher	Artifact Creature	U
37769	BRO	163	0	\N	\N	\N	\N	\N	\N	Phyrexian Dragon Engine	Artifact Creature	R
37772	BRO	166	0	\N	\N	\N	\N	t	\N	Alloy Animist	Creature	U
37773	BRO	167	0	\N	\N	\N	\N	t	\N	Argothian Opportunist	Creature	C
37729	BRO	123	1	\N	\N	\N	\N	\N	\N	Scrapwork Rager	Artifact Creature	C
37703	BRO	97	1	\N	\N	t	\N	\N	\N	Gix's Command	Sorcery	R
37724	BRO	118	1	\N	\N	\N	\N	\N	\N	Clay Revenant	Artifact Creature	C
37715	BRO	109	1	\N	\N	t	\N	\N	\N	No One Left Behind	Sorcery	U
37712	BRO	106	1	\N	\N	t	\N	\N	\N	Kill-Zone Acrobat	Creature	C
37708	BRO	102	1	\N	\N	t	\N	\N	\N	Go for the Throat	Instant	U
37691	BRO	85	1	\N	\N	t	\N	\N	\N	Ashnod's Intervention	Instant	C
37723	BRO	117	1	\N	\N	\N	\N	\N	\N	Ashnod's Harvester	Artifact Creature	U
37721	BRO	115	1	\N	\N	t	\N	\N	\N	Thraxodemon	Creature	C
37719	BRO	113	1	\N	\N	t	\N	\N	\N	Ravenous Gigamole	Creature	C
37709	BRO	103	1	\N	\N	t	\N	\N	\N	Gruesome Realization	Sorcery	U
37771	BRO	165	1	\N	\N	\N	\N	\N	\N	Skitterbeam Battalion	Artifact Creature	M
37738	BRO	132	1	\N	\N	\N	t	\N	\N	Excavation Explosion	Sorcery	C
37744	BRO	138	1	\N	\N	\N	t	\N	\N	Horned Stoneseeker	Creature	U
37746	BRO	140	1	\N	\N	\N	t	\N	\N	Mishra, Excavation Prodigy	Lgd. Creature	U
37749	BRO	143	1	\N	\N	\N	t	\N	\N	Mishra's Onslaught	Instant	C
37759	BRO	153	1	\N	\N	\N	t	\N	\N	Tomakul Scrapsmith	Creature	C
37761	BRO	155	1	\N	\N	\N	t	\N	\N	Unleash Shell	Instant	C
37765	BRO	159	1	\N	\N	\N	\N	\N	\N	Fallaji Dragon Engine	Artifact Creature	U
37767	BRO	161	1	\N	\N	\N	\N	\N	\N	Mishra's Juggernaut	Artifact Creature	C
37768	BRO	162	1	\N	\N	\N	\N	\N	\N	Mishra's Research Desk	Artifact	U
37172	DMU	5	3	t	\N	\N	\N	\N	\N	Argivian Phalanx	Creature	C
36892	NEO	236	1	\N	t	t	\N	\N	\N	Silver-Fur Master	Creature	U
36813	NEO	157	1	\N	\N	\N	t	\N	\N	Rabbit Battery	Artifact Creature	U
37176	DMU	8	5	t	\N	\N	\N	\N	\N	Benalish Sleeper	Creature	C
37178	DMU	10	2	t	\N	\N	\N	\N	\N	Charismatic Vanguard	Creature	C
37775	BRO	169	0	\N	\N	\N	\N	t	\N	Audacity	Enchantment	U
37776	BRO	170	0	\N	\N	\N	\N	t	\N	Awaken the Woods	Sorcery	M
37777	BRO	171	0	\N	\N	\N	\N	t	\N	Blanchwood Armor	Enchantment	U
37778	BRO	172	0	\N	\N	\N	\N	t	\N	Blanchwood Prowler	Creature	C
37779	BRO	173	0	\N	\N	\N	\N	t	\N	Burrowing Razormaw	Creature	C
37781	BRO	175	0	\N	\N	\N	\N	t	\N	Citanul Stalwart	Creature	C
37783	BRO	177	0	\N	\N	\N	\N	t	\N	Fade from History	Sorcery	R
37784	BRO	178	0	\N	\N	\N	\N	t	\N	Fallaji Excavation	Sorcery	U
37785	BRO	179	0	\N	\N	\N	\N	t	\N	Fauna Shaman	Creature	R
37786	BRO	180	0	\N	\N	\N	\N	t	\N	Fog of War	Instant	C
37787	BRO	181	0	\N	\N	\N	\N	t	\N	Gaea's Courser	Creature	U
37788	BRO	182	0	\N	\N	\N	\N	t	\N	Gaea's Gift	Instant	C
37789	BRO	183	0	\N	\N	\N	\N	t	\N	Giant Growth	Instant	C
37790	BRO	184	0	\N	\N	\N	\N	t	\N	Gnarlroot Pallbearer	Creature	C
37791	BRO	185	0	\N	\N	\N	\N	t	\N	Gwenna, Eyes of Gaea	Lgd. Creature	R
37792	BRO	186	0	\N	\N	\N	\N	t	\N	Hoarding Recluse	Creature	C
37793	BRO	187	0	\N	\N	\N	\N	t	\N	Obstinate Baloth	Creature	U
37798	BRO	192	0	\N	\N	\N	\N	t	\N	Teething Wurmlet	Creature	R
37799	BRO	193	0	\N	\N	\N	\N	t	\N	Titania, Voice of Gaea	Lgd. Creature	M
37800	BRO	194	0	\N	\N	\N	\N	t	\N	Titania's Command	Sorcery	R
37801	BRO	195	0	\N	\N	\N	\N	t	\N	Tomakul Honor Guard	Creature	C
37802	BRO	196	0	\N	\N	\N	\N	t	\N	Wasteful Harvest	Instant	C
37803	BRO	197	0	\N	\N	\N	\N	\N	\N	Boulderbranch Golem	Artifact Creature	C
37805	BRO	199	0	\N	\N	\N	\N	\N	\N	Haywire Mite	Artifact Creature	U
37807	BRO	201	0	\N	\N	\N	\N	\N	\N	Mask of the Jadecrafter	Artifact	U
37809	BRO	203	0	\N	\N	\N	\N	\N	\N	Rootwire Amalgam	Artifact Creature	M
37811	BRO	205	0	\N	\N	\N	\N	\N	\N	Simian Simulacrum	Artifact Creature	R
37812	BRO	206	0	\N	\N	\N	t	t	\N	Arbalest Engineers	Creature	U
37813	BRO	207	0	\N	t	\N	\N	t	\N	Battery Bearer	Creature	U
37814	BRO	208	0	\N	\N	t	\N	t	\N	Deathbloom Ritualist	Creature	R
37815	BRO	209	0	\N	t	t	\N	\N	\N	Evangel of Synthesis	Creature	U
37816	BRO	210	0	t	\N	\N	t	\N	\N	Fallaji Vanguard	Creature	U
37817	BRO	211	0	\N	\N	\N	t	t	\N	Hajar, Loyal Bodyguard	Lgd. Creature	R
37818	BRO	212	0	t	t	\N	\N	\N	\N	Harbin, Vanguard Aviator	Lgd. Creature	R
37819	BRO	213	0	t	\N	t	\N	\N	\N	Hero of the Dunes	Creature	U
37820	BRO	214	0	\N	\N	t	t	\N	\N	Junkyard Genius	Creature	U
37821	BRO	215	0	t	\N	t	\N	\N	\N	Legions to Ashes	Sorcery	R
37822	BRO	216	0	\N	\N	t	t	\N	\N	Mishra, Claimed by Gix	Lgd. Creature	M
37823	BRO	217	0	\N	\N	t	t	\N	\N	Mishra, Tamer of Mak Fawa	Lgd. Creature	R
37824	BRO	218	0	t	\N	\N	t	\N	\N	Queen Kayla bin-Kroog	Lgd. Creature	R
37825	BRO	219	0	\N	t	\N	t	\N	\N	Saheeli, Filigree Master	Lgd. Planeswalker	M
37826	BRO	220	0	\N	\N	\N	t	t	\N	Sarinth Greatwurm	Creature	M
37827	BRO	221	0	\N	\N	t	\N	t	\N	Skyfisher Spider	Creature	U
37828	BRO	222	0	\N	t	\N	\N	t	\N	Tawnos, the Toymaker	Lgd. Creature	R
37829	BRO	223	0	\N	t	\N	t	\N	\N	Third Path Iconoclast	Creature	U
37830	BRO	224	0	t	t	\N	\N	t	\N	Tocasia, Dig Site Mentor	Lgd. Creature	R
37831	BRO	225	0	t	t	\N	\N	\N	\N	Urza, Lord Protector	Lgd. Creature	M
37832	BRO	226	0	t	t	\N	\N	\N	\N	Urza, Prince of Kroog	Lgd. Creature	R
37833	BRO	227	0	t	\N	\N	\N	t	\N	Yotian Dissident	Creature	U
37834	BRO	228	0	t	t	\N	\N	\N	\N	Yotian Tactician	Creature	U
37835	BRO	229	0	\N	\N	\N	\N	\N	\N	Bladecoil Serpent	Artifact Creature	M
37836	BRO	230	0	\N	\N	\N	\N	\N	\N	Clay Champion	Artifact Creature	M
37837	BRO	231	0	\N	\N	\N	\N	\N	\N	Aeronaut's Wings	Artifact	C
37838	BRO	232	0	\N	\N	\N	\N	\N	\N	Argivian Avenger	Artifact Creature	U
37839	BRO	233	0	\N	\N	\N	\N	\N	\N	Cityscape Leveler	Artifact Creature	M
37840	BRO	234	0	\N	\N	\N	\N	\N	\N	Energy Refractor	Artifact	C
37841	BRO	235	0	\N	\N	\N	\N	\N	\N	Goblin Firebomb	Artifact	C
37842	BRO	236	0	\N	\N	\N	\N	\N	\N	Levitating Statue	Artifact	U
37843	BRO	237	0	\N	\N	\N	\N	\N	\N	Liberator, Urza's Battlethopter	Lgd. Artifact Creature	R
37844	BRO	238	0	\N	\N	\N	\N	\N	\N	The Mightstone and Weakstone	Lgd. Artifact	R
37845	BRO	239	0	\N	\N	\N	\N	\N	\N	Mine Worker	Artifact Creature	C
37846	BRO	240	0	\N	\N	\N	\N	\N	\N	Portal to Phyrexia	Artifact	M
37847	BRO	241	0	\N	\N	\N	\N	\N	\N	Power Plant Worker	Artifact Creature	C
37849	BRO	243	0	\N	\N	\N	\N	\N	\N	Slagstone Refinery	Artifact	U
37850	BRO	244	0	\N	\N	\N	\N	\N	\N	Spectrum Sentinel	Artifact Creature	U
37851	BRO	245	0	\N	\N	\N	\N	\N	\N	The Stasis Coffin	Lgd. Artifact	R
37852	BRO	246	0	\N	\N	\N	\N	\N	\N	Steel Exemplar	Artifact Creature	U
37853	BRO	247	0	\N	\N	\N	\N	\N	\N	The Stone Brain	Lgd. Artifact	R
37854	BRO	248	0	\N	\N	\N	\N	\N	\N	Stone Retrieval Unit	Artifact Creature	C
37855	BRO	249	0	\N	\N	\N	\N	\N	\N	Su-Chi Cave Guard	Artifact Creature	U
37856	BRO	250	0	\N	\N	\N	\N	\N	\N	Supply Drop	Artifact	C
37857	BRO	251	0	\N	\N	\N	\N	\N	\N	Swiftgear Drake	Artifact Creature	C
37858	BRO	252	0	\N	\N	\N	\N	\N	\N	Symmetry Matrix	Artifact	U
37173	DMU	2	1	t	\N	\N	\N	\N	\N	Anointed Peacekeeper	Creature	R
37177	DMU	9	4	t	\N	\N	\N	\N	\N	Captain's Call	Sorcery	C
37848	BRO	242	1	\N	\N	\N	\N	\N	\N	Reconstructed Thopter	Artifact Creature	U
37810	BRO	204	1	\N	\N	\N	\N	\N	\N	Rust Goliath	Artifact Creature	C
37808	BRO	202	1	\N	\N	\N	\N	\N	\N	Perennial Behemoth	Artifact Creature	R
37806	BRO	200	1	\N	\N	\N	\N	\N	\N	Iron-Craw Crusher	Artifact Creature	U
37804	BRO	198	1	\N	\N	\N	\N	\N	\N	Cradle Clearcutter	Artifact Creature	U
37797	BRO	191	1	\N	\N	\N	\N	t	\N	Tawnos's Tinkering	Instant	C
37796	BRO	190	1	\N	\N	\N	\N	t	\N	Shoot Down	Sorcery	C
37795	BRO	189	1	\N	\N	\N	\N	t	\N	Sarinth Steelseeker	Creature	U
37794	BRO	188	1	\N	\N	\N	\N	t	\N	Perimeter Patrol	Creature	C
37782	BRO	176	1	\N	\N	\N	\N	t	\N	Epic Confrontation	Sorcery	C
37780	BRO	174	1	\N	\N	\N	\N	t	\N	Bushwhack	Sorcery	U
36931	NEO	275	1	\N	\N	\N	\N	\N	\N	Secluded Courtyard	Land	U
36747	NEO	91	1	\N	\N	t	\N	\N	\N	Clawing Torment	Enchantment	C
36909	NEO	253	1	\N	\N	\N	\N	\N	\N	Papercraft Decoy	Artifact Creature	C
36844	NEO	188	1	\N	\N	\N	\N	t	\N	Grafted Growth	Enchantment	C
36719	NEO	63	1	\N	t	\N	\N	\N	\N	Mirrorshell Crab	Artifact Creature	C
36788	NEO	132	1	\N	\N	\N	t	\N	\N	Akki War Paint	Enchantment	C
36673	NEO	17	1	t	\N	\N	\N	\N	\N	Imperial Oath	Sorcery	C
36768	NEO	112	1	\N	\N	t	\N	\N	\N	Mukotai Ambusher	Artifact Creature	C
36694	NEO	38	2	t	\N	\N	\N	\N	\N	Spirited Companion	Enchantment Creature	C
36828	NEO	172	2	\N	\N	\N	\N	t	\N	Azusa's Many Journeys // Likeness of the Seeker	Enchantment	U
36712	NEO	56	2	\N	t	\N	\N	\N	\N	Guardians of Oboro	Creature	C
37859	BRO	253	0	\N	\N	\N	\N	\N	\N	Thran Power Suit	Artifact	U
37861	BRO	255	0	\N	\N	\N	\N	\N	\N	Tower Worker	Artifact Creature	C
37862	BRO	256	0	\N	\N	\N	\N	\N	\N	Argoth, Sanctum of Nature	Land	R
37863	BRO	257	0	\N	\N	\N	\N	\N	\N	Battlefield Forge	Land	R
37864	BRO	258	0	\N	\N	\N	\N	\N	\N	Blast Zone	Land	R
37865	BRO	259	0	\N	\N	\N	\N	\N	\N	Brushland	Land	R
37866	BRO	260	0	\N	\N	\N	\N	\N	\N	Demolition Field	Land	U
37867	BRO	261	0	\N	\N	\N	\N	\N	\N	Evolving Wilds	Land	C
37868	BRO	262	0	\N	\N	\N	\N	\N	\N	Fortified Beachhead	Land	R
37869	BRO	263	0	\N	\N	\N	\N	\N	\N	Hall of Tagsin	Land	R
37870	BRO	264	0	\N	\N	\N	\N	\N	\N	Llanowar Wastes	Land	R
37871	BRO	265	0	\N	\N	\N	\N	\N	\N	Mishra's Foundry	Land	R
37872	BRO	266	0	\N	\N	\N	\N	\N	\N	Tocasia's Dig Site	Land	C
37873	BRO	267	0	\N	\N	\N	\N	\N	\N	Underground River	Land	R
37884	BRO	278	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
37885	BRO	279	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
37886	BRO	280	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
37887	BRO	281	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
37888	BRO	282	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
37889	BRO	283	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
37890	BRO	284	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
37891	BRO	285	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
37892	BRO	286	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
37893	BRO	287	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
37894	BRO	288	0	t	\N	\N	\N	\N	\N	Rescue Retriever	Creature	R
37895	BRO	289	0	\N	t	\N	\N	\N	\N	Geology Enthusiast	Creature	R
37896	BRO	290	0	\N	\N	\N	\N	\N	\N	Terror Ballista	Artifact Creature	R
37897	BRO	291	0	\N	\N	\N	\N	\N	\N	Artificer's Dragon	Artifact Creature	R
37898	BRO	292	0	\N	\N	\N	\N	\N	\N	Woodcaller Automaton	Artifact Creature	R
37899	BRO	293	0	\N	t	\N	\N	\N	\N	Teferi, Temporal Pilgrim	Lgd. Planeswalker	M
37900	BRO	294	0	\N	t	\N	t	\N	\N	Saheeli, Filigree Master	Lgd. Planeswalker	M
37901	BRO	295	0	\N	\N	t	t	\N	\N	Mishra, Tamer of Mak Fawa	Lgd. Creature	R
37902	BRO	296	0	t	t	\N	\N	\N	\N	Urza, Prince of Kroog	Lgd. Creature	R
37903	BRO	297	0	\N	\N	\N	\N	\N	\N	Battlefield Forge	Land	R
37904	BRO	298	0	\N	\N	\N	\N	\N	\N	Brushland	Land	R
37905	BRO	299	0	\N	\N	\N	\N	\N	\N	Llanowar Wastes	Land	R
37906	BRO	300	0	\N	\N	\N	\N	\N	\N	Underground River	Land	R
37907	BRO	301	0	t	\N	\N	\N	\N	\N	In the Trenches	Enchantment	M
37908	BRO	302	0	t	\N	\N	\N	\N	\N	Kayla's Command	Sorcery	R
37909	BRO	303	0	t	\N	\N	\N	\N	\N	Kayla's Reconstruction	Sorcery	R
37910	BRO	304	0	t	\N	\N	\N	\N	\N	Loran of the Third Path	Lgd. Creature	R
37911	BRO	305	0	t	\N	\N	\N	\N	\N	Myrel, Shield of Argive	Lgd. Creature	M
37912	BRO	306	0	t	\N	\N	\N	\N	\N	Siege Veteran	Creature	R
37913	BRO	307	0	t	\N	\N	\N	\N	\N	Soul Partition	Instant	R
37914	BRO	308	0	t	\N	\N	\N	\N	\N	Tocasia's Welcome	Enchantment	R
37915	BRO	309	0	\N	\N	\N	\N	\N	\N	Autonomous Assembler	Artifact Creature	R
37916	BRO	310	0	\N	\N	\N	\N	\N	\N	Platoon Dispenser	Artifact Creature	M
37917	BRO	311	0	\N	\N	\N	\N	\N	\N	Steel Seraph	Artifact Creature	R
37918	BRO	312	0	\N	\N	\N	\N	\N	\N	Urza's Sylex	Lgd. Artifact	M
37874	BRO	268	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
37875	BRO	269	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
37882	BRO	276	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
37883	BRO	277	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
37879	BRO	273	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
37878	BRO	272	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
37877	BRO	271	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
37876	BRO	270	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
37860	BRO	254	1	\N	\N	\N	\N	\N	\N	Thran Spider	Artifact Creature	R
37881	BRO	275	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
37880	BRO	274	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
37174	DMU	4	2	t	\N	\N	\N	\N	\N	Argivian Cavalier	Creature	C
36942	NEO	286	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
36871	NEO	215	1	t	\N	\N	t	\N	\N	Asari Captain	Creature	U
36731	NEO	75	1	\N	t	\N	\N	\N	\N	Reality Heist	Instant	U
37175	DMU	3	0	t	\N	\N	\N	\N	\N	Archangel of Wrath	Creature	R
37919	BRO	313	0	\N	t	\N	\N	\N	\N	Drafna, Founder of Lat-Nam	Lgd. Creature	R
37920	BRO	314	0	\N	t	\N	\N	\N	\N	Hurkyl, Master Wizard	Lgd. Creature	M
37921	BRO	315	0	\N	t	\N	\N	\N	\N	Hurkyl's Final Meditation	Instant	R
37922	BRO	316	0	\N	t	\N	\N	\N	\N	One with the Multiverse	Enchantment	M
37923	BRO	317	0	\N	t	\N	\N	\N	\N	Skystrike Officer	Creature	R
37924	BRO	318	0	\N	t	\N	\N	\N	\N	Urza's Command	Instant	R
37925	BRO	319	0	\N	\N	\N	\N	\N	\N	Arcane Proxy	Artifact Creature	M
37926	BRO	320	0	\N	\N	\N	\N	\N	\N	Surge Engine	Artifact Creature	M
37927	BRO	321	0	\N	t	\N	\N	\N	\N	The Temporal Anchor	Lgd. Artifact	R
37928	BRO	322	0	\N	\N	\N	\N	\N	\N	Terisian Mindbreaker	Artifact Creature	R
37929	BRO	323	0	\N	\N	t	\N	\N	\N	Ashnod, Flesh Mechanist	Lgd. Creature	R
37930	BRO	324	0	\N	\N	t	\N	\N	\N	Diabolic Intent	Sorcery	R
37931	BRO	325	0	\N	\N	t	\N	\N	\N	Fateful Handoff	Sorcery	R
37932	BRO	326	0	\N	\N	t	\N	\N	\N	Gix, Yawgmoth Praetor	Lgd. Creature	M
37933	BRO	327	0	\N	\N	t	\N	\N	\N	Gix's Command	Sorcery	R
37934	BRO	328	0	\N	\N	t	\N	\N	\N	Gixian Puppeteer	Creature	R
37935	BRO	329	0	\N	\N	t	\N	\N	\N	Hostile Negotiations	Instant	R
37936	BRO	330	0	\N	\N	t	\N	\N	\N	Misery's Shadow	Creature	R
37937	BRO	331	0	\N	\N	t	\N	\N	\N	Painful Quandary	Enchantment	R
37938	BRO	332	0	\N	\N	\N	\N	\N	\N	Phyrexian Fleshgorger	Artifact Creature	M
37939	BRO	333	0	\N	\N	\N	\N	\N	\N	Razorlash Transmogrant	Artifact Creature	R
37940	BRO	334	0	\N	\N	\N	\N	\N	\N	Transmogrant's Crown	Artifact	R
37941	BRO	335	0	\N	\N	\N	t	\N	\N	Brotherhood's End	Sorcery	R
37942	BRO	336	0	\N	\N	\N	t	\N	\N	Draconic Destiny	Enchantment	M
37943	BRO	337	0	\N	\N	\N	t	\N	\N	Feldon, Ronom Excavator	Lgd. Creature	R
37944	BRO	338	0	\N	\N	\N	t	\N	\N	Mechanized Warfare	Enchantment	R
37945	BRO	339	0	\N	\N	\N	t	\N	\N	Mishra's Command	Sorcery	R
37946	BRO	340	0	\N	\N	\N	t	\N	\N	Over the Top	Sorcery	R
37947	BRO	341	0	\N	\N	\N	t	\N	\N	Tyrant of Kher Ridges	Creature	R
37948	BRO	342	0	\N	\N	\N	t	\N	\N	Visions of Phyrexia	Enchantment	R
37949	BRO	343	0	\N	\N	\N	\N	\N	\N	Skitterbeam Battalion	Artifact Creature	M
37950	BRO	344	0	\N	\N	\N	\N	t	\N	Awaken the Woods	Sorcery	M
37951	BRO	345	0	\N	\N	\N	\N	t	\N	Fade from History	Sorcery	R
37952	BRO	346	0	\N	\N	\N	\N	t	\N	Fauna Shaman	Creature	R
37953	BRO	347	0	\N	\N	\N	\N	t	\N	Gwenna, Eyes of Gaea	Lgd. Creature	R
37954	BRO	348	0	\N	\N	\N	\N	t	\N	Teething Wurmlet	Creature	R
37955	BRO	349	0	\N	\N	\N	\N	t	\N	Titania's Command	Sorcery	R
37956	BRO	350	0	\N	\N	\N	\N	\N	\N	Perennial Behemoth	Artifact Creature	R
37957	BRO	351	0	\N	\N	\N	\N	\N	\N	Rootwire Amalgam	Artifact Creature	M
37958	BRO	352	0	\N	\N	\N	\N	\N	\N	Simian Simulacrum	Artifact Creature	R
37959	BRO	353	0	\N	\N	t	\N	t	\N	Deathbloom Ritualist	Creature	R
37960	BRO	354	0	\N	\N	\N	t	t	\N	Hajar, Loyal Bodyguard	Lgd. Creature	R
37961	BRO	355	0	t	t	\N	\N	\N	\N	Harbin, Vanguard Aviator	Lgd. Creature	R
37962	BRO	356	0	t	\N	t	\N	\N	\N	Legions to Ashes	Sorcery	R
37963	BRO	357	0	t	\N	\N	t	\N	\N	Queen Kayla bin-Kroog	Lgd. Creature	R
37964	BRO	358	0	\N	\N	\N	t	t	\N	Sarinth Greatwurm	Creature	M
37965	BRO	359	0	\N	t	\N	\N	t	\N	Tawnos, the Toymaker	Lgd. Creature	R
37966	BRO	360	0	t	t	\N	\N	t	\N	Tocasia, Dig Site Mentor	Lgd. Creature	R
37967	BRO	361	0	\N	\N	\N	\N	\N	\N	Bladecoil Serpent	Artifact Creature	M
37968	BRO	362	0	\N	\N	\N	\N	\N	\N	Clay Champion	Artifact Creature	M
37969	BRO	363	0	\N	\N	\N	\N	\N	\N	Cityscape Leveler	Artifact Creature	M
37970	BRO	364	0	\N	\N	\N	\N	\N	\N	Liberator, Urza's Battlethopter	Lgd. Artifact Creature	R
37971	BRO	365	0	\N	\N	\N	\N	\N	\N	Portal to Phyrexia	Artifact	M
37972	BRO	366	0	\N	\N	\N	\N	\N	\N	The Stasis Coffin	Lgd. Artifact	R
37973	BRO	367	0	\N	\N	\N	\N	\N	\N	The Stone Brain	Lgd. Artifact	R
37974	BRO	368	0	\N	\N	\N	\N	\N	\N	Thran Spider	Artifact Creature	R
37975	BRO	369	0	\N	\N	\N	\N	\N	\N	Blast Zone	Land	R
37976	BRO	370	0	\N	\N	\N	\N	\N	\N	Fortified Beachhead	Land	R
37977	BRO	371	0	\N	\N	\N	\N	\N	\N	Hall of Tagsin	Land	R
37978	BRO	372	0	\N	\N	\N	\N	\N	\N	Mishra's Foundry	Land	R
37979	BRO	373	0	t	\N	\N	\N	\N	\N	Rescue Retriever	Creature	R
37980	BRO	374	0	\N	t	\N	\N	\N	\N	Geology Enthusiast	Creature	R
37981	BRO	375	0	\N	\N	\N	\N	\N	\N	Terror Ballista	Artifact Creature	R
37982	BRO	376	0	\N	\N	\N	\N	\N	\N	Artificer's Dragon	Artifact Creature	R
37983	BRO	377	0	\N	\N	\N	\N	\N	\N	Woodcaller Automaton	Artifact Creature	R
37984	BRO	378	0	\N	\N	\N	\N	\N	\N	Mishra's Foundry	Land	R
37985	BRO	379	0	t	\N	\N	t	\N	\N	Queen Kayla bin-Kroog	Lgd. Creature	R
37986	BRO	380	0	t	\N	\N	\N	\N	\N	Lay Down Arms	Sorcery	U
37987	BRO	381	0	\N	t	\N	\N	\N	\N	Flow of Knowledge	Instant	U
37988	BRO	382	0	\N	\N	t	\N	\N	\N	Corrupt	Sorcery	U
37989	BRO	383	0	\N	\N	\N	t	\N	\N	Sardian Cliffstomper	Creature	U
37990	BRO	384	0	\N	\N	\N	\N	t	\N	Blanchwood Armor	Enchantment	U
36830	NEO	174	1	\N	\N	\N	\N	t	\N	Bearer of Memory	Enchantment Creature	C
37333	DMU	163	1	\N	\N	\N	\N	t	\N	Floriferous Vinewall	Creature	C
37629	BRO	23	1	t	\N	\N	\N	\N	\N	Recruitment Officer	Creature	U
37609	BRO	2	1	t	\N	\N	\N	\N	\N	Airlift Chaplain	Creature	C
37386	DMU	216	2	\N	t	t	\N	\N	\N	Rona, Sheoldred's Faithful	Lgd. Creature	U
37287	DMU	117	1	\N	\N	\N	t	\N	\N	Chaotic Transformation	Sorcery	R
37179	DMU	6	3	t	\N	\N	\N	\N	\N	Artillery Blast	Instant	C
36816	NEO	160	1	\N	\N	\N	t	\N	\N	Scrapyard Steelbreaker	Artifact Creature	C
36689	NEO	33	1	t	\N	\N	\N	\N	\N	Repel the Vile	Instant	C
37182	DMU	12	0	t	\N	\N	\N	\N	\N	Cleaving Skyrider	Creature	U
37185	DMU	15	0	t	\N	\N	\N	\N	\N	Danitha, Benalia's Hope	Lgd. Creature	R
37186	DMU	16	0	t	\N	\N	\N	\N	\N	Defiler of Faith	Creature	R
37189	DMU	19	0	t	\N	\N	\N	\N	\N	Guardian of New Benalia	Creature	R
37194	DMU	24	0	t	\N	\N	\N	\N	\N	Leyline Binding	Enchantment	R
37195	DMU	25	0	t	\N	\N	\N	\N	\N	Love Song of Night and Day	Enchantment	U
37202	DMU	32	0	t	\N	\N	\N	\N	\N	Serra Paragon	Creature	M
37203	DMU	33	0	t	\N	\N	\N	\N	\N	Shalai's Acolyte	Creature	U
37206	DMU	36	0	t	\N	\N	\N	\N	\N	Temporary Lockdown	Enchantment	R
37208	DMU	38	0	t	\N	\N	\N	\N	\N	Valiant Veteran	Creature	R
37210	DMU	40	0	\N	t	\N	\N	\N	\N	Academy Loremaster	Creature	R
37212	DMU	42	0	\N	t	\N	\N	\N	\N	Aether Channeler	Creature	R
37215	DMU	45	0	\N	t	\N	\N	\N	\N	Coral Colony	Creature	U
37217	DMU	47	0	\N	t	\N	\N	\N	\N	Djinn of the Fountain	Creature	U
37222	DMU	52	0	\N	t	\N	\N	\N	\N	Haughty Djinn	Creature	R
37229	DMU	59	0	\N	t	\N	\N	\N	\N	The Phasing of Zhalfir	Enchantment	R
37243	DMU	73	0	\N	t	\N	\N	\N	\N	Vesuvan Duplimancy	Enchantment	M
37245	DMU	75	0	\N	t	\N	\N	\N	\N	Vodalian Hexcatcher	Creature	R
37246	DMU	76	0	\N	t	\N	\N	\N	\N	Vodalian Mindsinger	Creature	R
37254	DMU	84	0	\N	\N	t	\N	\N	\N	Braids, Arisen Nightmare	Lgd. Creature	R
37262	DMU	92	0	\N	\N	t	\N	\N	\N	Eerie Soultender	Creature	C
37263	DMU	93	0	\N	\N	t	\N	\N	\N	Evolved Sleeper	Creature	R
37267	DMU	97	0	\N	\N	t	\N	\N	\N	Liliana of the Veil	Lgd. Planeswalker	M
37188	DMU	18	1	t	\N	\N	\N	\N	\N	Griffin Protector	Creature	C
37187	DMU	17	4	t	\N	\N	\N	\N	\N	Destroy Evil	Instant	C
37259	DMU	89	1	\N	\N	t	\N	\N	\N	Cut Down	Instant	U
37258	DMU	88	1	\N	\N	t	\N	\N	\N	Cult Conscript	Creature	U
37180	DMU	7	4	t	\N	\N	\N	\N	\N	Benalish Faithbonder	Creature	C
37227	DMU	57	1	\N	t	\N	\N	\N	\N	Micromancer	Creature	U
37193	DMU	23	2	t	\N	\N	\N	\N	\N	Knight of Dawn's Light	Creature	U
37266	DMU	96	1	\N	\N	t	\N	\N	\N	Knight of Dusk's Shadow	Creature	U
37221	DMU	51	1	\N	t	\N	\N	\N	\N	Frostfist Strider	Creature	U
37199	DMU	29	1	t	\N	\N	\N	\N	\N	Resolute Reinforcements	Creature	U
37249	DMU	79	1	\N	\N	t	\N	\N	\N	Balduvian Atrocity	Creature	U
37219	DMU	49	1	\N	t	\N	\N	\N	\N	Essence Scatter	Instant	C
37242	DMU	72	1	\N	t	\N	\N	\N	\N	Tolarian Terror	Creature	C
37232	DMU	62	1	\N	t	\N	\N	\N	\N	Protect the Negotiators	Instant	U
37181	DMU	11	3	t	\N	\N	\N	\N	\N	Citizen's Arrest	Enchantment	C
37244	DMU	74	3	\N	t	\N	\N	\N	\N	Voda Sea Scavenger	Creature	C
37196	DMU	26	4	t	\N	\N	\N	\N	\N	Mesa Cavalier	Creature	C
37239	DMU	69	5	\N	t	\N	\N	\N	\N	Tidepool Turtle	Creature	C
37230	DMU	60	2	\N	t	\N	\N	\N	\N	Phyrexian Espionage	Sorcery	C
37268	DMU	98	3	\N	\N	t	\N	\N	\N	Monstrous War-Leech	Creature	U
37228	DMU	58	3	\N	t	\N	\N	\N	\N	Negate	Instant	C
37209	DMU	39	1	t	\N	\N	\N	\N	\N	Wingmantle Chaplain	Creature	U
37190	DMU	20	2	t	\N	\N	\N	\N	\N	Heroic Charge	Instant	C
37211	DMU	41	3	\N	t	\N	\N	\N	\N	Academy Wall	Creature	C
37257	DMU	87	2	\N	\N	t	\N	\N	\N	The Cruelty of Gix	Enchantment	R
37256	DMU	86	1	\N	\N	t	\N	\N	\N	Choking Miasma	Sorcery	U
37225	DMU	55	5	\N	t	\N	\N	\N	\N	Impulse	Instant	C
37200	DMU	30	1	t	\N	\N	\N	\N	\N	Runic Shot	Sorcery	U
37216	DMU	46	1	\N	t	\N	\N	\N	\N	Defiler of Dreams	Creature	R
37198	DMU	28	1	t	\N	\N	\N	\N	\N	Prayer of Binding	Enchantment	U
37197	DMU	27	1	t	\N	\N	\N	\N	\N	Phyrexian Missionary	Creature	U
37236	DMU	66	2	\N	t	\N	\N	\N	\N	Soaring Drake	Creature	C
37218	DMU	48	2	\N	t	\N	\N	\N	\N	Ertai's Scorn	Instant	U
37235	DMU	65	1	\N	t	\N	\N	\N	\N	Silver Scrutiny	Sorcery	R
37250	DMU	80	2	\N	\N	t	\N	\N	\N	Battle-Rage Blessing	Instant	C
37205	DMU	35	3	t	\N	\N	\N	\N	\N	Take Up the Shield	Instant	C
37253	DMU	83	4	\N	\N	t	\N	\N	\N	Bone Splinters	Sorcery	C
37214	DMU	44	2	\N	t	\N	\N	\N	\N	Combat Research	Enchantment	U
37184	DMU	14	2	t	\N	\N	\N	\N	\N	Coalition Skyknight	Creature	U
37201	DMU	31	3	t	\N	\N	\N	\N	\N	Samite Herbalist	Creature	C
37220	DMU	50	1	\N	t	\N	\N	\N	\N	Founding the Third Path	Enchantment	U
37207	DMU	37	1	t	\N	\N	\N	\N	\N	Urza Assembles the Titans	Enchantment	R
37265	DMU	95	4	\N	\N	t	\N	\N	\N	Gibbering Barricade	Creature	C
37192	DMU	22	3	t	\N	\N	\N	\N	\N	Juniper Order Rootweaver	Creature	C
37241	DMU	71	2	\N	t	\N	\N	\N	\N	Tolarian Geyser	Sorcery	C
37261	DMU	91	1	\N	\N	t	\N	\N	\N	Drag to the Bottom	Sorcery	R
37260	DMU	90	1	\N	\N	t	\N	\N	\N	Defiler of Flesh	Creature	R
37269	DMU	99	5	\N	\N	t	\N	\N	\N	Phyrexian Rager	Creature	C
37213	DMU	43	2	\N	t	\N	\N	\N	\N	Battlewing Mystic	Creature	U
37248	DMU	78	4	\N	\N	t	\N	\N	\N	Aggressive Sabotage	Sorcery	C
37240	DMU	70	2	\N	t	\N	\N	\N	\N	Timely Interference	Instant	C
37226	DMU	56	1	\N	t	\N	\N	\N	\N	Joint Exploration	Instant	U
37234	DMU	64	2	\N	t	\N	\N	\N	\N	Shore Up	Instant	C
37191	DMU	21	2	t	\N	\N	\N	\N	\N	Join Forces	Instant	U
37233	DMU	63	1	\N	t	\N	\N	\N	\N	Rona's Vortex	Instant	U
37237	DMU	67	1	\N	t	\N	\N	\N	\N	Sphinx of Clear Skies	Creature	M
37271	DMU	101	3	\N	\N	t	\N	\N	\N	Phyrexian Warhorse	Creature	C
37252	DMU	82	1	\N	\N	t	\N	\N	\N	Blight Pile	Creature	U
37238	DMU	68	4	\N	t	\N	\N	\N	\N	Talas Lookout	Creature	C
37224	DMU	54	3	\N	t	\N	\N	\N	\N	Impede Momentum	Sorcery	C
37231	DMU	61	4	\N	t	\N	\N	\N	\N	Pixie Illusionist	Creature	C
37272	DMU	102	1	\N	\N	t	\N	\N	\N	Pilfer	Sorcery	U
37247	DMU	77	4	\N	t	\N	\N	\N	\N	Volshe Tideturner	Creature	C
37251	DMU	81	2	\N	\N	t	\N	\N	\N	Battlefly Swarm	Creature	C
37223	DMU	53	3	\N	t	\N	\N	\N	\N	Haunting Figment	Creature	C
36802	NEO	146	1	\N	\N	\N	t	\N	\N	Heiko Yamazaki, the General	Lgd. Creature	U
36764	NEO	108	1	\N	\N	t	\N	\N	\N	Life of Toshiro Umezawa // Memory of Toshiro	Enchantment	U
37276	DMU	106	0	\N	\N	t	\N	\N	\N	Shadow-Rite Priest	Creature	R
37277	DMU	107	0	\N	\N	t	\N	\N	\N	Sheoldred, the Apocalypse	Lgd. Creature	M
37280	DMU	110	0	\N	\N	t	\N	\N	\N	Stronghold Arena	Enchantment	R
37303	DMU	133	0	\N	\N	\N	t	\N	\N	Jaya, Fiery Negotiator	Lgd. Planeswalker	M
37313	DMU	143	0	\N	\N	\N	t	\N	\N	Shivan Devastator	Creature	M
37317	DMU	147	0	\N	\N	\N	t	\N	\N	Temporal Firestorm	Sorcery	R
37318	DMU	148	0	\N	\N	\N	t	\N	\N	Thrill of Possibility	Instant	C
37323	DMU	153	0	\N	\N	\N	t	\N	\N	Yotia Declares War	Enchantment	U
37330	DMU	160	0	\N	\N	\N	\N	t	\N	Defiler of Vigor	Creature	R
37336	DMU	166	0	\N	\N	\N	\N	t	\N	Hexbane Tortoise	Creature	C
37337	DMU	167	0	\N	\N	\N	\N	t	\N	Leaf-Crowned Visionary	Creature	R
37338	DMU	168	0	\N	\N	\N	\N	t	\N	Linebreaker Baloth	Creature	U
37345	DMU	175	0	\N	\N	\N	\N	t	\N	Quirion Beastcaller	Creature	R
37347	DMU	177	0	\N	\N	\N	\N	t	\N	Silverback Elder	Creature	M
37352	DMU	182	0	\N	\N	\N	\N	t	\N	Tail Swipe	Instant	U
37355	DMU	185	0	\N	\N	\N	\N	t	\N	Threats Undetected	Sorcery	R
37356	DMU	186	0	\N	\N	\N	\N	t	\N	Urborg Lhurgoyf	Creature	R
37362	DMU	192	0	t	\N	\N	\N	t	\N	Ajani, Sleeper Agent	Lgd. Planeswalker	M
37364	DMU	194	0	t	\N	\N	t	\N	\N	Astor, Bearer of Blades	Lgd. Creature	R
37278	DMU	108	1	\N	\N	t	\N	\N	\N	Sheoldred's Restoration	Sorcery	U
37312	DMU	142	2	\N	\N	\N	t	\N	\N	Rundvelt Hordemaster	Creature	R
37315	DMU	145	1	\N	\N	\N	t	\N	\N	Sprouting Goblin	Creature	U
37343	DMU	173	1	\N	\N	\N	\N	t	\N	Mossbeard Ancient	Creature	U
37329	DMU	159	3	\N	\N	\N	\N	t	\N	Deathbloom Gardener	Creature	C
37283	DMU	113	3	\N	\N	t	\N	\N	\N	Tribute to Urborg	Instant	C
37354	DMU	184	1	\N	\N	\N	\N	t	\N	Territorial Maro	Creature	U
37342	DMU	172	5	\N	\N	\N	\N	t	\N	Magnigoth Sentry	Creature	C
37328	DMU	158	1	\N	\N	\N	\N	t	\N	Colossal Growth	Instant	C
37349	DMU	179	5	\N	\N	\N	\N	t	\N	Snarespinner	Creature	C
37353	DMU	183	2	\N	\N	\N	\N	t	\N	Tear Asunder	Instant	U
37350	DMU	180	1	\N	\N	\N	\N	t	\N	Strength of the Coalition	Instant	U
37359	DMU	189	1	\N	\N	\N	\N	t	\N	The World Spell	Enchantment	M
37316	DMU	146	2	\N	\N	\N	t	\N	\N	Squee, Dubious Monarch	Lgd. Creature	R
37310	DMU	140	2	\N	\N	\N	t	\N	\N	Phoenix Chick	Creature	U
37319	DMU	149	1	\N	\N	\N	t	\N	\N	Twinferno	Instant	U
37314	DMU	144	3	\N	\N	\N	t	\N	\N	Smash to Dust	Sorcery	C
37301	DMU	131	1	\N	\N	\N	t	\N	\N	Hurloon Battle Hymn	Instant	U
37340	DMU	170	1	\N	\N	\N	\N	t	\N	Llanowar Loamspeaker	Creature	R
37291	DMU	121	1	\N	\N	\N	t	\N	\N	The Elder Dragon War	Enchantment	R
37304	DMU	134	1	\N	\N	\N	t	\N	\N	Jaya's Firenado	Sorcery	C
37292	DMU	122	1	\N	\N	\N	t	\N	\N	Electrostatic Infantry	Creature	U
37296	DMU	126	4	\N	\N	\N	t	\N	\N	Furious Bellow	Instant	C
37322	DMU	152	2	\N	\N	\N	t	\N	\N	Yavimaya Steelcrusher	Creature	C
37286	DMU	116	1	\N	\N	\N	t	\N	\N	Balduvian Berserker	Creature	U
37281	DMU	111	2	\N	\N	t	\N	\N	\N	Tattered Apparition	Creature	C
37335	DMU	165	1	\N	\N	\N	\N	t	\N	Herd Migration	Sorcery	R
37308	DMU	138	1	\N	\N	\N	t	\N	\N	Meria's Outrider	Creature	C
37361	DMU	191	3	\N	\N	\N	\N	t	\N	Yavimaya Sojourner	Creature	C
37294	DMU	124	3	\N	\N	\N	t	\N	\N	Flowstone Infusion	Instant	C
37299	DMU	129	4	\N	\N	\N	t	\N	\N	Hammerhand	Enchantment	C
37360	DMU	190	2	\N	\N	\N	\N	t	\N	Yavimaya Iconoclast	Creature	U
37327	DMU	157	2	\N	\N	\N	\N	t	\N	Broken Wings	Instant	C
37325	DMU	155	2	\N	\N	\N	\N	t	\N	Bite Down	Instant	C
37293	DMU	123	2	\N	\N	\N	t	\N	\N	Fires of Victory	Instant	U
37305	DMU	135	2	\N	\N	\N	t	\N	\N	Keldon Flamesage	Creature	R
37289	DMU	119	1	\N	\N	\N	t	\N	\N	Defiler of Instinct	Creature	R
37324	DMU	154	3	\N	\N	\N	\N	t	\N	Barkweave Crusher	Creature	C
37357	DMU	187	3	\N	\N	\N	\N	t	\N	Vineshaper Prodigy	Creature	C
37332	DMU	162	1	\N	\N	\N	\N	t	\N	Elvish Hydromancer	Creature	U
37358	DMU	188	2	\N	\N	\N	\N	t	\N	The Weatherseed Treaty	Enchantment	U
37309	DMU	139	1	\N	\N	\N	t	\N	\N	Molten Monstrosity	Creature	C
37279	DMU	109	1	\N	\N	t	\N	\N	\N	Splatter Goblin	Creature	C
37346	DMU	176	5	\N	\N	\N	\N	t	\N	Scout the Wilderness	Sorcery	C
37274	DMU	104	1	\N	\N	t	\N	\N	\N	Sengir Connoisseur	Creature	U
37344	DMU	174	1	\N	\N	\N	\N	t	\N	Nishoba Brawler	Creature	U
37273	DMU	103	2	\N	\N	t	\N	\N	\N	The Raven Man	Lgd. Creature	R
37302	DMU	132	3	\N	\N	\N	t	\N	\N	In Thrall to the Pit	Sorcery	C
37363	DMU	193	1	t	\N	t	\N	\N	\N	Aron, Benalia's Ruin	Lgd. Creature	U
37351	DMU	181	3	\N	\N	\N	\N	t	\N	Sunbathing Rootwalla	Creature	C
37306	DMU	136	3	\N	\N	\N	t	\N	\N	Keldon Strike Team	Creature	C
37298	DMU	128	5	\N	\N	\N	t	\N	\N	Goblin Picker	Creature	C
37290	DMU	120	1	\N	\N	\N	t	\N	\N	Dragon Whelp	Creature	U
37295	DMU	125	5	\N	\N	\N	t	\N	\N	Flowstone Kavu	Creature	C
37297	DMU	127	4	\N	\N	\N	t	\N	\N	Ghitu Amplifier	Creature	C
37288	DMU	118	3	\N	\N	\N	t	\N	\N	Coalition Warbrute	Creature	C
37321	DMU	151	2	\N	\N	\N	t	\N	\N	Warhost's Frenzy	Instant	U
37284	DMU	114	1	\N	\N	t	\N	\N	\N	Urborg Repossession	Sorcery	C
37339	DMU	169	1	\N	\N	\N	\N	t	\N	Llanowar Greenwidow	Creature	R
37334	DMU	164	3	\N	\N	\N	\N	t	\N	Gaea's Might	Instant	C
37282	DMU	112	2	\N	\N	t	\N	\N	\N	Toxic Abomination	Creature	C
37300	DMU	130	2	\N	\N	\N	t	\N	\N	Hurler Cyclops	Creature	U
37348	DMU	178	2	\N	\N	\N	\N	t	\N	Slimefoot's Survey	Sorcery	U
37307	DMU	137	4	\N	\N	\N	t	\N	\N	Lightning Strike	Instant	C
37275	DMU	105	4	\N	\N	t	\N	\N	\N	Shadow Prophecy	Instant	C
37326	DMU	156	3	\N	\N	\N	\N	t	\N	Bog Badger	Creature	C
37311	DMU	141	1	\N	\N	\N	t	\N	\N	Radha's Firebrand	Creature	R
37331	DMU	161	2	\N	\N	\N	\N	t	\N	Elfhame Wurm	Creature	C
37341	DMU	171	3	\N	\N	\N	\N	t	\N	Llanowar Stalker	Creature	C
36915	NEO	259	1	\N	\N	\N	\N	\N	\N	Shrine Steward	Artifact Creature	C
36829	NEO	173	1	\N	\N	\N	\N	t	\N	Bamboo Grove Archer	Enchantment Creature	C
36675	NEO	19	1	t	\N	\N	\N	\N	\N	Imperial Subduer	Creature	C
36897	NEO	241	2	\N	\N	\N	\N	\N	\N	Brute Suit	Artifact	C
37371	DMU	201	0	\N	t	\N	\N	t	\N	Ivy, Gleeful Spellthief	Lgd. Creature	R
37373	DMU	203	0	t	t	t	t	t	\N	Jodah, the Unifier	Lgd. Creature	M
37376	DMU	206	0	\N	\N	\N	t	t	\N	Meria, Scholar of Antiquity	Lgd. Creature	R
37379	DMU	209	0	\N	\N	t	\N	t	\N	Nemata, Primeval Warden	Lgd. Creature	R
37382	DMU	212	0	t	t	\N	\N	\N	\N	Raff, Weatherlight Stalwart	Lgd. Creature	U
37383	DMU	213	0	t	\N	t	\N	\N	\N	Ratadrabik of Urborg	Lgd. Creature	R
37384	DMU	214	0	t	\N	\N	t	t	\N	Rith, Liberated Primeval	Lgd. Creature	M
37385	DMU	215	0	\N	\N	t	t	\N	\N	Rivaz of the Claw	Lgd. Creature	R
37388	DMU	218	0	t	t	\N	\N	t	\N	Shanna, Purifying Blade	Lgd. Creature	M
37389	DMU	219	0	\N	t	t	t	\N	\N	Sol'Kanar the Tainted	Lgd. Creature	M
37390	DMU	220	0	\N	\N	t	t	t	\N	Soul of Windgrace	Lgd. Creature	M
37394	DMU	224	0	t	t	\N	\N	\N	\N	Tura Kennerüd, Skyknight	Lgd. Creature	U
37397	DMU	227	0	t	\N	\N	\N	t	\N	Zar Ojanen, Scion of Efrava	Lgd. Creature	U
37398	DMU	228	0	t	t	t	\N	\N	\N	Zur, Eternal Schemer	Lgd. Creature	M
37400	DMU	230	0	\N	\N	\N	\N	\N	\N	Golden Argosy	Lgd. Artifact	R
37409	DMU	239	0	\N	\N	\N	\N	\N	\N	Timeless Lotus	Lgd. Artifact	M
37413	DMU	243	0	\N	\N	\N	\N	\N	\N	Adarkar Wastes	Land	R
37414	DMU	244	0	\N	\N	\N	\N	\N	\N	Caves of Koilos	Land	R
37420	DMU	250	0	\N	\N	\N	\N	\N	\N	Karplusan Forest	Land	R
37426	DMU	256	0	\N	\N	\N	\N	\N	\N	Sulfurous Springs	Land	R
37431	DMU	261	0	\N	\N	\N	\N	\N	\N	Yavimaya Coast	Land	R
37437	DMU	267	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
37441	DMU	271	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
37449	DMU	279	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
37452	DMU	282	0	t	\N	\N	\N	\N	\N	Serra Redeemer	Creature	R
37453	DMU	283	0	\N	t	\N	\N	\N	\N	Cosmic Epiphany	Sorcery	R
37434	DMU	264	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
37377	DMU	207	1	\N	t	\N	\N	t	\N	Nael, Avizoa Aeronaut	Lgd. Creature	U
37425	DMU	255	2	\N	\N	\N	\N	\N	\N	Shivan Reef	Land	R
37429	DMU	259	1	\N	\N	\N	\N	\N	\N	Thran Portal	Land	R
37395	DMU	225	2	\N	\N	t	\N	t	\N	Uurg, Spawn of Turg	Lgd. Creature	U
37368	DMU	198	1	t	\N	t	\N	\N	\N	Elas il-Kor, Sadistic Pilgrim	Lgd. Creature	U
37435	DMU	265	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
37440	DMU	270	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
37446	DMU	276	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
37450	DMU	280	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
37369	DMU	199	1	\N	t	t	\N	\N	\N	Ertai Resurrected	Lgd. Creature	R
37375	DMU	205	1	\N	\N	t	t	\N	\N	Lagomos, Hand of Hatred	Lgd. Creature	U
37439	DMU	269	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
37380	DMU	210	1	t	\N	\N	\N	t	\N	Queen Allenal of Ruadach	Lgd. Creature	U
37405	DMU	235	4	\N	\N	\N	\N	\N	\N	Meteorite	Artifact	C
37427	DMU	257	2	\N	\N	\N	\N	\N	\N	Sunlit Marsh	Land	C
37378	DMU	208	2	\N	t	\N	t	\N	\N	Najal, the Storm Runner	Lgd. Creature	U
37417	DMU	247	5	\N	\N	\N	\N	\N	\N	Geothermal Bog	Land	C
37406	DMU	236	2	\N	\N	\N	\N	\N	\N	Relic of Legends	Artifact	U
37451	DMU	281	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
37416	DMU	246	3	\N	\N	\N	\N	\N	\N	Crystal Grotto	Land	C
37393	DMU	223	1	t	\N	\N	t	\N	\N	Tori D'Avenant, Fury Rider	Lgd. Creature	U
37403	DMU	233	1	\N	\N	\N	\N	\N	\N	Jodah's Codex	Artifact	U
37392	DMU	222	1	\N	t	\N	\N	t	\N	Tatyova, Steward of Tides	Lgd. Creature	U
37436	DMU	266	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
37365	DMU	195	2	t	\N	\N	t	\N	\N	Baird, Argivian Recruiter	Lgd. Creature	U
37422	DMU	252	1	\N	\N	\N	\N	\N	\N	Plaza of Heroes	Land	R
37445	DMU	275	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
37370	DMU	200	1	\N	\N	t	t	\N	\N	Garna, Bloodfist of Keld	Lgd. Creature	U
37448	DMU	278	1	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
37443	DMU	273	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
37374	DMU	204	1	t	\N	\N	\N	t	\N	King Darien XLVIII	Lgd. Creature	R
37411	DMU	241	2	\N	\N	\N	\N	\N	\N	Walking Bulwark	Artifact Creature	U
37402	DMU	232	2	\N	\N	\N	\N	\N	\N	Inscribed Tablet	Artifact	U
37381	DMU	211	1	\N	\N	\N	t	t	\N	Radha, Coalition Warlord	Lgd. Creature	U
37447	DMU	277	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
37428	DMU	258	3	\N	\N	\N	\N	\N	\N	Tangled Islet	Land	C
37407	DMU	237	2	\N	\N	\N	\N	\N	\N	Salvaged Manaworker	Artifact Creature	C
37401	DMU	231	1	\N	\N	\N	\N	\N	\N	Hero's Heirloom	Artifact	U
37372	DMU	202	1	\N	t	\N	t	\N	\N	Jhoira, Ageless Innovator	Lgd. Creature	R
37433	DMU	263	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
37419	DMU	249	2	\N	\N	\N	\N	\N	\N	Idyllic Beachfront	Land	C
37438	DMU	268	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
37412	DMU	242	1	\N	\N	\N	\N	\N	\N	Weatherlight Compleated	Lgd. Artifact	M
37430	DMU	260	4	\N	\N	\N	\N	\N	\N	Wooded Ridgeline	Land	C
37432	DMU	262	1	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
37391	DMU	221	1	t	t	\N	\N	\N	\N	Stenn, Paranoid Partisan	Lgd. Creature	R
37442	DMU	272	1	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
37367	DMU	197	2	\N	\N	t	\N	t	\N	Bortuk Bonerattle	Lgd. Creature	U
37444	DMU	274	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
37418	DMU	248	3	\N	\N	\N	\N	\N	\N	Haunted Mire	Land	C
37410	DMU	240	3	\N	\N	\N	\N	\N	\N	Vanquisher's Axe	Artifact	C
37424	DMU	254	2	\N	\N	\N	\N	\N	\N	Sacred Peaks	Land	C
37421	DMU	251	3	\N	\N	\N	\N	\N	\N	Molten Tributary	Land	C
37387	DMU	217	1	\N	\N	\N	t	t	\N	Rulik Mons, Warren Chief	Lgd. Creature	U
37404	DMU	234	1	\N	\N	\N	\N	\N	\N	Karn's Sylex	Lgd. Artifact	M
37423	DMU	253	3	\N	\N	\N	\N	\N	\N	Radiant Grove	Land	C
37399	DMU	229	2	\N	\N	\N	\N	\N	\N	Automatic Librarian	Artifact Creature	C
37366	DMU	196	1	\N	t	\N	t	\N	\N	Balmor, Battlemage Captain	Lgd. Creature	U
37408	DMU	238	3	\N	\N	\N	\N	\N	\N	Shield-Wall Sentinel	Artifact Creature	C
36773	NEO	117	1	\N	\N	t	\N	\N	\N	Okiba Reckoner Raid // Nezumi Road Captain	Enchantment	C
36861	NEO	205	1	\N	\N	\N	\N	t	\N	Season of Renewal	Instant	C
36787	NEO	131	1	\N	\N	\N	t	\N	\N	Akki Ronin	Creature	C
36723	NEO	67	2	\N	t	\N	\N	\N	\N	Moon-Circuit Hacker	Enchantment Creature	C
37454	DMU	284	0	\N	\N	t	\N	\N	\N	Tyrannical Pitlord	Creature	R
37455	DMU	285	0	\N	\N	\N	t	\N	\N	Ragefire Hellkite	Creature	R
37456	DMU	286	0	\N	\N	\N	\N	t	\N	Briar Hydra	Creature	R
37457	DMU	287	0	t	\N	\N	\N	\N	\N	Danitha, Benalia's Hope	Lgd. Creature	R
37458	DMU	288	0	\N	\N	t	\N	\N	\N	Braids, Arisen Nightmare	Lgd. Creature	R
37459	DMU	289	0	\N	\N	t	\N	\N	\N	The Raven Man	Lgd. Creature	R
37460	DMU	290	0	\N	\N	t	\N	\N	\N	Sheoldred, the Apocalypse	Lgd. Creature	M
37461	DMU	291	0	\N	\N	\N	t	\N	\N	Squee, Dubious Monarch	Lgd. Creature	R
37462	DMU	292	0	t	\N	t	\N	\N	\N	Aron, Benalia's Ruin	Lgd. Creature	U
37463	DMU	293	0	t	\N	\N	t	\N	\N	Astor, Bearer of Blades	Lgd. Creature	R
37464	DMU	294	0	t	\N	\N	t	\N	\N	Baird, Argivian Recruiter	Lgd. Creature	U
37465	DMU	295	0	\N	t	\N	t	\N	\N	Balmor, Battlemage Captain	Lgd. Creature	U
37466	DMU	296	0	\N	\N	t	\N	t	\N	Bortuk Bonerattle	Lgd. Creature	U
37467	DMU	297	0	t	\N	t	\N	\N	\N	Elas il-Kor, Sadistic Pilgrim	Lgd. Creature	U
37468	DMU	298	0	\N	t	t	\N	\N	\N	Ertai Resurrected	Lgd. Creature	R
37469	DMU	299	0	\N	\N	t	t	\N	\N	Garna, Bloodfist of Keld	Lgd. Creature	U
37470	DMU	300	0	\N	t	\N	\N	t	\N	Ivy, Gleeful Spellthief	Lgd. Creature	R
37471	DMU	301	0	\N	t	\N	t	\N	\N	Jhoira, Ageless Innovator	Lgd. Creature	R
37472	DMU	302	0	t	t	t	t	t	\N	Jodah, the Unifier	Lgd. Creature	M
37473	DMU	303	0	t	\N	\N	\N	t	\N	King Darien XLVIII	Lgd. Creature	R
37474	DMU	304	0	\N	\N	t	t	\N	\N	Lagomos, Hand of Hatred	Lgd. Creature	U
37475	DMU	305	0	\N	\N	\N	t	t	\N	Meria, Scholar of Antiquity	Lgd. Creature	R
37476	DMU	306	0	\N	t	\N	\N	t	\N	Nael, Avizoa Aeronaut	Lgd. Creature	U
37477	DMU	307	0	\N	t	\N	t	\N	\N	Najal, the Storm Runner	Lgd. Creature	U
37478	DMU	308	0	\N	\N	t	\N	t	\N	Nemata, Primeval Warden	Lgd. Creature	R
37479	DMU	309	0	t	\N	\N	\N	t	\N	Queen Allenal of Ruadach	Lgd. Creature	U
37480	DMU	310	0	\N	\N	\N	t	t	\N	Radha, Coalition Warlord	Lgd. Creature	U
37481	DMU	311	0	t	t	\N	\N	\N	\N	Raff, Weatherlight Stalwart	Lgd. Creature	U
37482	DMU	312	0	t	\N	t	\N	\N	\N	Ratadrabik of Urborg	Lgd. Creature	R
37483	DMU	313	0	t	\N	\N	t	t	\N	Rith, Liberated Primeval	Lgd. Creature	M
37484	DMU	314	0	\N	\N	t	t	\N	\N	Rivaz of the Claw	Lgd. Creature	R
37485	DMU	315	0	\N	t	t	\N	\N	\N	Rona, Sheoldred's Faithful	Lgd. Creature	U
37486	DMU	316	0	\N	\N	\N	t	t	\N	Rulik Mons, Warren Chief	Lgd. Creature	U
37487	DMU	317	0	t	t	\N	\N	t	\N	Shanna, Purifying Blade	Lgd. Creature	M
37488	DMU	318	0	\N	t	t	t	\N	\N	Sol'Kanar the Tainted	Lgd. Creature	M
37489	DMU	319	0	\N	\N	t	t	t	\N	Soul of Windgrace	Lgd. Creature	M
37490	DMU	320	0	t	t	\N	\N	\N	\N	Stenn, Paranoid Partisan	Lgd. Creature	R
37491	DMU	321	0	\N	t	\N	\N	t	\N	Tatyova, Steward of Tides	Lgd. Creature	U
37492	DMU	322	0	t	\N	\N	t	\N	\N	Tori D'Avenant, Fury Rider	Lgd. Creature	U
37493	DMU	323	0	t	t	\N	\N	\N	\N	Tura Kennerüd, Skyknight	Lgd. Creature	U
37494	DMU	324	0	\N	\N	t	\N	t	\N	Uurg, Spawn of Turg	Lgd. Creature	U
37495	DMU	325	0	\N	t	t	\N	\N	\N	Vohar, Vodalian Desecrator	Lgd. Creature	U
37496	DMU	326	0	t	\N	\N	\N	t	\N	Zar Ojanen, Scion of Efrava	Lgd. Creature	U
37497	DMU	327	0	t	t	t	\N	\N	\N	Zur, Eternal Schemer	Lgd. Creature	M
37498	DMU	328	0	t	\N	\N	\N	\N	\N	Danitha, Benalia's Hope	Lgd. Creature	R
37499	DMU	329	0	\N	\N	t	\N	\N	\N	Braids, Arisen Nightmare	Lgd. Creature	R
37500	DMU	330	0	\N	\N	t	\N	\N	\N	The Raven Man	Lgd. Creature	R
37501	DMU	331	0	\N	\N	t	\N	\N	\N	Sheoldred, the Apocalypse	Lgd. Creature	M
37502	DMU	332	0	\N	\N	\N	t	\N	\N	Squee, Dubious Monarch	Lgd. Creature	R
37503	DMU	333	0	t	\N	t	\N	\N	\N	Aron, Benalia's Ruin	Lgd. Creature	U
37504	DMU	334	0	t	\N	\N	t	\N	\N	Astor, Bearer of Blades	Lgd. Creature	R
37505	DMU	335	0	t	\N	\N	t	\N	\N	Baird, Argivian Recruiter	Lgd. Creature	U
37506	DMU	336	0	\N	t	\N	t	\N	\N	Balmor, Battlemage Captain	Lgd. Creature	U
37507	DMU	337	0	\N	\N	t	\N	t	\N	Bortuk Bonerattle	Lgd. Creature	U
37508	DMU	338	0	t	\N	t	\N	\N	\N	Elas il-Kor, Sadistic Pilgrim	Lgd. Creature	U
37509	DMU	339	0	\N	t	t	\N	\N	\N	Ertai Resurrected	Lgd. Creature	R
37510	DMU	340	0	\N	\N	t	t	\N	\N	Garna, Bloodfist of Keld	Lgd. Creature	U
37511	DMU	341	0	\N	t	\N	\N	t	\N	Ivy, Gleeful Spellthief	Lgd. Creature	R
37512	DMU	342	0	\N	t	\N	t	\N	\N	Jhoira, Ageless Innovator	Lgd. Creature	R
37513	DMU	343	0	t	t	t	t	t	\N	Jodah, the Unifier	Lgd. Creature	M
37514	DMU	344	0	t	\N	\N	\N	t	\N	King Darien XLVIII	Lgd. Creature	R
37515	DMU	345	0	\N	\N	t	t	\N	\N	Lagomos, Hand of Hatred	Lgd. Creature	U
37516	DMU	346	0	\N	\N	\N	t	t	\N	Meria, Scholar of Antiquity	Lgd. Creature	R
37517	DMU	347	0	\N	t	\N	\N	t	\N	Nael, Avizoa Aeronaut	Lgd. Creature	U
37518	DMU	348	0	\N	t	\N	t	\N	\N	Najal, the Storm Runner	Lgd. Creature	U
37519	DMU	349	0	\N	\N	t	\N	t	\N	Nemata, Primeval Warden	Lgd. Creature	R
37520	DMU	350	0	t	\N	\N	\N	t	\N	Queen Allenal of Ruadach	Lgd. Creature	U
37521	DMU	351	0	\N	\N	\N	t	t	\N	Radha, Coalition Warlord	Lgd. Creature	U
37522	DMU	352	0	t	t	\N	\N	\N	\N	Raff, Weatherlight Stalwart	Lgd. Creature	U
37523	DMU	353	0	t	\N	t	\N	\N	\N	Ratadrabik of Urborg	Lgd. Creature	R
37524	DMU	354	0	t	\N	\N	t	t	\N	Rith, Liberated Primeval	Lgd. Creature	M
37525	DMU	355	0	\N	\N	t	t	\N	\N	Rivaz of the Claw	Lgd. Creature	R
37526	DMU	356	0	\N	t	t	\N	\N	\N	Rona, Sheoldred's Faithful	Lgd. Creature	U
37527	DMU	357	0	\N	\N	\N	t	t	\N	Rulik Mons, Warren Chief	Lgd. Creature	U
37528	DMU	358	0	t	t	\N	\N	t	\N	Shanna, Purifying Blade	Lgd. Creature	M
37529	DMU	359	0	\N	t	t	t	\N	\N	Sol'Kanar the Tainted	Lgd. Creature	M
37530	DMU	360	0	\N	\N	t	t	t	\N	Soul of Windgrace	Lgd. Creature	M
37531	DMU	361	0	t	t	\N	\N	\N	\N	Stenn, Paranoid Partisan	Lgd. Creature	R
37532	DMU	362	0	\N	t	\N	\N	t	\N	Tatyova, Steward of Tides	Lgd. Creature	U
36702	NEO	46	1	\N	t	\N	\N	\N	\N	Armguard Familiar	Artifact Creature	C
37533	DMU	363	0	t	\N	\N	t	\N	\N	Tori D'Avenant, Fury Rider	Lgd. Creature	U
37534	DMU	364	0	t	t	\N	\N	\N	\N	Tura Kennerüd, Skyknight	Lgd. Creature	U
37535	DMU	365	0	\N	\N	t	\N	t	\N	Uurg, Spawn of Turg	Lgd. Creature	U
37536	DMU	366	0	\N	t	t	\N	\N	\N	Vohar, Vodalian Desecrator	Lgd. Creature	U
37537	DMU	367	0	t	\N	\N	\N	t	\N	Zar Ojanen, Scion of Efrava	Lgd. Creature	U
37538	DMU	368	0	t	t	t	\N	\N	\N	Zur, Eternal Schemer	Lgd. Creature	M
37539	DMU	369	0	\N	\N	t	\N	\N	\N	|gOcdrd,nETemk.	|MewkfuDs fyrs,psewtr.	M
37540	DMU	370	0	t	\N	\N	\N	t	\N	|DFaUnEED lugtkenvr.	|MewknmQYpmunt DFaUnEED.	M
37541	DMU	371	0	t	\N	\N	\N	t	\N	Ajani, Sleeper Agent	Lgd. Planeswalker	M
37542	DMU	372	0	\N	\N	\N	\N	\N	\N	Karn, Living Legacy	Lgd. Planeswalker	M
37543	DMU	373	0	\N	\N	t	\N	\N	\N	Liliana of the Veil	Lgd. Planeswalker	M
37544	DMU	374	0	\N	\N	\N	t	\N	\N	Jaya, Fiery Negotiator	Lgd. Planeswalker	M
37545	DMU	375	0	t	\N	\N	\N	t	\N	Ajani, Sleeper Agent	Lgd. Planeswalker	M
37546	DMU	376	0	t	\N	\N	\N	t	\N	Ajani, Sleeper Agent	Lgd. Planeswalker	M
37547	DMU	377	0	\N	\N	\N	\N	\N	\N	Adarkar Wastes	Land	R
37548	DMU	378	0	\N	\N	\N	\N	\N	\N	Caves of Koilos	Land	R
37549	DMU	379	0	\N	\N	\N	\N	\N	\N	Karplusan Forest	Land	R
37550	DMU	380	0	\N	\N	\N	\N	\N	\N	Shivan Reef	Land	R
37551	DMU	381	0	\N	\N	\N	\N	\N	\N	Sulfurous Springs	Land	R
37552	DMU	382	0	\N	\N	\N	\N	\N	\N	Yavimaya Coast	Land	R
37553	DMU	383	0	t	\N	\N	\N	\N	\N	Anointed Peacekeeper	Creature	R
37554	DMU	384	0	t	\N	\N	\N	\N	\N	Archangel of Wrath	Creature	R
37555	DMU	385	0	t	\N	\N	\N	\N	\N	Defiler of Faith	Creature	R
37556	DMU	386	0	t	\N	\N	\N	\N	\N	Guardian of New Benalia	Creature	R
37557	DMU	387	0	t	\N	\N	\N	\N	\N	Leyline Binding	Enchantment	R
37558	DMU	388	0	t	\N	\N	\N	\N	\N	Serra Paragon	Creature	M
37559	DMU	389	0	t	\N	\N	\N	\N	\N	Temporary Lockdown	Enchantment	R
37560	DMU	390	0	t	\N	\N	\N	\N	\N	Valiant Veteran	Creature	R
37561	DMU	391	0	\N	t	\N	\N	\N	\N	Academy Loremaster	Creature	R
37562	DMU	392	0	\N	t	\N	\N	\N	\N	Aether Channeler	Creature	R
37563	DMU	393	0	\N	t	\N	\N	\N	\N	Defiler of Dreams	Creature	R
37564	DMU	394	0	\N	t	\N	\N	\N	\N	Haughty Djinn	Creature	R
37565	DMU	395	0	\N	t	\N	\N	\N	\N	Silver Scrutiny	Sorcery	R
37566	DMU	396	0	\N	t	\N	\N	\N	\N	Sphinx of Clear Skies	Creature	M
37567	DMU	397	0	\N	t	\N	\N	\N	\N	Vesuvan Duplimancy	Enchantment	M
37568	DMU	398	0	\N	t	\N	\N	\N	\N	Vodalian Hexcatcher	Creature	R
37569	DMU	399	0	\N	t	\N	\N	\N	\N	Vodalian Mindsinger	Creature	R
37570	DMU	400	0	\N	\N	t	\N	\N	\N	Defiler of Flesh	Creature	R
37571	DMU	401	0	\N	\N	t	\N	\N	\N	Drag to the Bottom	Sorcery	R
37572	DMU	402	0	\N	\N	t	\N	\N	\N	Evolved Sleeper	Creature	R
37573	DMU	403	0	\N	\N	t	\N	\N	\N	Shadow-Rite Priest	Creature	R
37574	DMU	404	0	\N	\N	t	\N	\N	\N	Stronghold Arena	Enchantment	R
37575	DMU	405	0	\N	\N	\N	t	\N	\N	Chaotic Transformation	Sorcery	R
37576	DMU	406	0	\N	\N	\N	t	\N	\N	Defiler of Instinct	Creature	R
37577	DMU	407	0	\N	\N	\N	t	\N	\N	Keldon Flamesage	Creature	R
37578	DMU	408	0	\N	\N	\N	t	\N	\N	Radha's Firebrand	Creature	R
37579	DMU	409	0	\N	\N	\N	t	\N	\N	Rundvelt Hordemaster	Creature	R
37580	DMU	410	0	\N	\N	\N	t	\N	\N	Shivan Devastator	Creature	M
37581	DMU	411	0	\N	\N	\N	t	\N	\N	Temporal Firestorm	Sorcery	R
37582	DMU	412	0	\N	\N	\N	\N	t	\N	Defiler of Vigor	Creature	R
37583	DMU	413	0	\N	\N	\N	\N	t	\N	Herd Migration	Sorcery	R
37584	DMU	414	0	\N	\N	\N	\N	t	\N	Leaf-Crowned Visionary	Creature	R
37585	DMU	415	0	\N	\N	\N	\N	t	\N	Llanowar Greenwidow	Creature	R
37586	DMU	416	0	\N	\N	\N	\N	t	\N	Llanowar Loamspeaker	Creature	R
37587	DMU	417	0	\N	\N	\N	\N	t	\N	Quirion Beastcaller	Creature	R
37588	DMU	418	0	\N	\N	\N	\N	t	\N	Silverback Elder	Creature	M
37589	DMU	419	0	\N	\N	\N	\N	t	\N	Threats Undetected	Sorcery	R
37590	DMU	420	0	\N	\N	\N	\N	t	\N	Urborg Lhurgoyf	Creature	R
37591	DMU	421	0	\N	\N	\N	\N	\N	\N	Plaza of Heroes	Land	R
37592	DMU	422	0	\N	\N	\N	\N	\N	\N	Thran Portal	Land	R
37593	DMU	423	0	t	\N	\N	\N	\N	\N	Serra Redeemer	Creature	R
37594	DMU	424	0	\N	t	\N	\N	\N	\N	Cosmic Epiphany	Sorcery	R
37595	DMU	425	0	\N	\N	t	\N	\N	\N	Tyrannical Pitlord	Creature	R
37596	DMU	426	0	\N	\N	\N	t	\N	\N	Ragefire Hellkite	Creature	R
37597	DMU	427	0	\N	\N	\N	\N	t	\N	Briar Hydra	Creature	R
37598	DMU	428	0	\N	\N	\N	\N	t	\N	Llanowar Loamspeaker	Creature	R
37599	DMU	429	0	\N	\N	\N	\N	t	\N	Herd Migration	Sorcery	R
37600	DMU	430	0	t	\N	\N	\N	\N	\N	Resolute Reinforcements	Creature	U
37601	DMU	431	0	\N	t	\N	\N	\N	\N	Micromancer	Creature	U
37602	DMU	432	0	\N	\N	t	\N	\N	\N	Cut Down	Instant	U
37603	DMU	433	0	\N	\N	\N	t	\N	\N	Lightning Strike	Instant	C
37604	DMU	434	0	\N	\N	\N	\N	t	\N	Nishoba Brawler	Creature	U
37605	DMU	435	0	\N	\N	t	\N	\N	\N	Sheoldred, the Apocalypse	Lgd. Creature	M
37606	DMU	436	0	\N	\N	t	\N	\N	\N	Sheoldred, the Apocalypse	Lgd. Creature	M
37396	DMU	226	1	\N	t	t	\N	\N	\N	Vohar, Vodalian Desecrator	Lgd. Creature	U
37647	BRO	41	1	\N	\N	\N	\N	\N	\N	Veteran's Powerblade	Artifact	C
37638	BRO	32	1	t	\N	\N	\N	\N	\N	Warlord's Elite	Creature	C
37625	BRO	19	1	t	\N	\N	\N	\N	\N	Phalanx Vanguard	Creature	C
37255	DMU	85	2	\N	\N	t	\N	\N	\N	Braids's Frightful Return	Enchantment	U
37619	BRO	10	1	t	\N	\N	\N	\N	\N	Kayla's Reconstruction	Sorcery	R
37633	BRO	27	1	t	\N	\N	\N	\N	\N	Static Net	Enchantment	U
37204	DMU	34	3	t	\N	\N	\N	\N	\N	Stall for Time	Instant	C
37415	DMU	245	4	\N	\N	\N	\N	\N	\N	Contaminated Aquifer	Land	C
37183	DMU	13	3	t	\N	\N	\N	\N	\N	Clockwork Drawbridge	Artifact Creature	C
37770	BRO	164	1	\N	\N	\N	\N	\N	\N	Scrapwork Mutt	Artifact Creature	C
37264	DMU	94	5	\N	\N	t	\N	\N	\N	Extinguish the Light	Instant	C
37285	DMU	115	2	\N	\N	t	\N	\N	\N	Writhing Necromass	Creature	C
37320	DMU	150	3	\N	\N	\N	t	\N	\N	Viashino Branchrider	Creature	C
35597	BNG	19	2	t	\N	\N	\N	\N	\N	Loyal Pegasus	Creature	C
35571	BNG	10	2	t	\N	\N	\N	\N	\N	Excoriate	Sorcery	C
35590	BNG	16	2	t	\N	\N	\N	\N	\N	Griffin Dreamfinder	Creature	C
37270	DMU	100	4	\N	\N	t	\N	\N	\N	Phyrexian Vivisector	Creature	C
35549	JOU	4	0	t	\N	\N	\N	\N	\N	Armament of Nyx	Enchantment	C
35550	BNG	6	0	t	\N	\N	\N	\N	\N	Dawn to Dusk	Sorcery	U
35551	BNG	1	0	t	\N	\N	\N	\N	\N	Acolyte's Reward	Instant	U
35552	JOU	1	0	t	\N	\N	\N	\N	\N	Aegis of the Gods	Enchantment Creature	R
35553	JOU	3	0	t	\N	\N	\N	\N	\N	Akroan Mastiff	Creature	C
35558	JOU	5	0	t	\N	\N	\N	\N	\N	Banishing Light	Enchantment	U
35557	BNG	4	0	t	\N	\N	\N	\N	\N	Archetype of Courage	Enchantment Creature	U
35560	THB	2	0	t	\N	\N	\N	\N	\N	Archon of Falling Stars	Creature	U
35559	THB	1	0	t	\N	\N	\N	\N	\N	Alseid of Life's Bounty	Enchantment Creature	U
35561	BNG	7	0	t	\N	\N	\N	\N	\N	Eidolon of Countless Battles	Enchantment Creature	R
35562	JOU	7	0	t	\N	\N	\N	\N	\N	Deicide	Instant	R
35563	JOU	6	0	t	\N	\N	\N	\N	\N	Dawnbringer Charioteers	Creature	R
35564	THB	3	0	t	\N	\N	\N	\N	\N	Archon of Sun's Grace	Creature	R
35566	THB	4	0	t	\N	\N	\N	\N	\N	Banishing Light	Enchantment	U
35569	THB	8	0	t	\N	\N	\N	\N	\N	Dawn Evangel	Enchantment Creature	U
35570	THB	5	0	t	\N	\N	\N	\N	\N	The Birth of Meletis	Enchantment	U
35573	THB	10	0	t	\N	\N	\N	\N	\N	Daybreak Chimera	Creature	C
35574	JOU	9	0	t	\N	\N	\N	\N	\N	Eagle of the Watch	Creature	C
35575	THB	9	0	t	\N	\N	\N	\N	\N	Daxos, Blessed by the Sun	Lgd. Enchantment Creature	U
35577	BNG	11	0	t	\N	\N	\N	\N	\N	Fated Retribution	Instant	R
35578	JOU	11	0	t	\N	\N	\N	\N	\N	Font of Vigor	Enchantment	C
35579	THB	11	0	t	\N	\N	\N	\N	\N	Dreadful Apathy	Enchantment	C
35580	THB	7	0	t	\N	\N	\N	\N	\N	Commanding Presence	Enchantment	U
35582	JOU	12	0	t	\N	\N	\N	\N	\N	Godsend	Lgd. Artifact	M
35583	THB	12	0	t	\N	\N	\N	\N	\N	Eidolon of Obstruction	Enchantment Creature	R
35591	JOU	16	0	t	\N	\N	\N	\N	\N	Leonin Iconoclast	Creature	U
35593	THB	13	0	t	\N	\N	\N	\N	\N	Elspeth Conquers Death	Enchantment	R
35594	BNG	18	0	t	\N	\N	\N	\N	\N	Hold at Bay	Instant	C
35596	THB	14	0	t	\N	\N	\N	\N	\N	Elspeth, Sun's Nemesis	Lgd. Planeswalker	M
35584	BNG	13	1	t	\N	\N	\N	\N	\N	Glimpse the Sun God	Instant	U
35554	BNG	5	1	t	\N	\N	\N	\N	\N	Brimaz, King of Oreskos	Lgd. Creature	M
35588	BNG	15	1	t	\N	\N	\N	\N	\N	Great Hart	Creature	C
35581	BNG	12	1	t	\N	\N	\N	\N	\N	Ghostblade Eidolon	Enchantment Creature	U
35548	BNG	2	1	t	\N	\N	\N	\N	\N	Akroan Phalanx	Creature	U
35565	BNG	8	1	t	\N	\N	\N	\N	\N	Elite Skirmisher	Creature	C
35567	BNG	9	1	t	\N	\N	\N	\N	\N	Ephara's Radiance	Enchantment	C
35555	BNG	3	2	t	\N	\N	\N	\N	\N	Akroan Skyguard	Creature	C
35587	JOU	14	1	t	\N	\N	\N	\N	\N	Lagonna-Band Trailblazer	Creature	C
35556	JOU	2	1	t	\N	\N	\N	\N	\N	Ajani's Presence	Instant	C
35589	JOU	15	1	t	\N	\N	\N	\N	\N	Launch the Fleet	Sorcery	R
35572	JOU	10	1	t	\N	\N	\N	\N	\N	Eidolon of Rhetoric	Enchantment Creature	U
35568	JOU	8	1	t	\N	\N	\N	\N	\N	Dictate of Heliod	Enchantment	R
35585	JOU	13	1	t	\N	\N	\N	\N	\N	Harvestguard Alseids	Enchantment Creature	C
35595	JOU	17	1	t	\N	\N	\N	\N	\N	Mortal Obstinacy	Enchantment	C
35592	BNG	17	1	t	\N	\N	\N	\N	\N	Hero of Iroas	Creature	R
35586	BNG	14	1	t	\N	\N	\N	\N	\N	God-Favored General	Creature	U
35576	THB	6	1	t	\N	\N	\N	\N	\N	Captivating Unicorn	Creature	C
35598	JOU	18	0	t	\N	\N	\N	\N	\N	Nyx-Fleece Ram	Enchantment Creature	U
35599	THB	15	0	t	\N	\N	\N	\N	\N	Favored of Iroas	Creature	U
35604	JOU	20	0	t	\N	\N	\N	\N	\N	Oreskos Swiftclaw	Creature	C
35605	THB	17	0	t	\N	\N	\N	\N	\N	Glory Bearers	Enchantment Creature	C
35607	JOU	21	0	t	\N	\N	\N	\N	\N	Phalanx Formation	Instant	U
35608	THB	18	0	t	\N	\N	\N	\N	\N	Heliod, Sun-Crowned	Lgd. Enchantment Creature	M
35609	BNG	23	0	t	\N	\N	\N	\N	\N	Ornitharch	Creature	U
35614	THB	20	0	t	\N	\N	\N	\N	\N	Heliod's Pilgrim	Creature	C
35616	JOU	24	0	t	\N	\N	\N	\N	\N	Sightless Brawler	Enchantment Creature	U
35617	THB	21	0	t	\N	\N	\N	\N	\N	Heliod's Punishment	Enchantment	U
35618	BNG	26	0	t	\N	\N	\N	\N	\N	Silent Sentinel	Creature	R
35620	THB	22	0	t	\N	\N	\N	\N	\N	Hero of the Pride	Creature	C
35621	BNG	27	0	t	\N	\N	\N	\N	\N	Spirit of the Labyrinth	Enchantment Creature	R
35622	JOU	26	0	t	\N	\N	\N	\N	\N	Skyspear Cavalry	Creature	U
35623	THB	23	0	t	\N	\N	\N	\N	\N	Hero of the Winds	Creature	U
35624	BNG	28	0	t	\N	\N	\N	\N	\N	Sunbond	Enchantment	U
35626	THB	24	0	t	\N	\N	\N	\N	\N	Idyllic Tutor	Sorcery	R
35627	BNG	29	0	t	\N	\N	\N	\N	\N	Vanguard of Brimaz	Creature	U
35632	THB	26	0	t	\N	\N	\N	\N	\N	Karametra's Blessing	Instant	C
35635	THB	27	0	t	\N	\N	\N	\N	\N	Lagonna-Band Storyteller	Creature	U
35636	BNG	32	0	\N	t	\N	\N	\N	\N	Archetype of Imagination	Enchantment Creature	U
35637	JOU	31	0	\N	t	\N	\N	\N	\N	Battlefield Thaumaturge	Creature	R
35638	THB	28	0	t	\N	\N	\N	\N	\N	Leonin of the Lost Pride	Creature	C
35640	JOU	32	0	\N	t	\N	\N	\N	\N	Cloaked Siren	Creature	C
35641	THB	29	0	t	\N	\N	\N	\N	\N	Nyxborn Courser	Enchantment Creature	C
35642	BNG	34	0	\N	t	\N	\N	\N	\N	Crypsis	Instant	C
35646	JOU	34	0	\N	t	\N	\N	\N	\N	Crystalline Nautilus	Enchantment Creature	U
35650	THB	32	0	t	\N	\N	\N	\N	\N	Pious Wayfarer	Creature	C
35652	JOU	36	0	\N	t	\N	\N	\N	\N	Daring Thief	Creature	R
35653	THB	33	0	t	\N	\N	\N	\N	\N	Reverent Hoplite	Creature	U
35655	JOU	37	0	\N	t	\N	\N	\N	\N	Dictate of Kruphix	Enchantment	R
35656	THB	34	0	t	\N	\N	\N	\N	\N	Revoke Existence	Sorcery	C
35657	BNG	39	0	\N	t	\N	\N	\N	\N	Fated Infatuation	Instant	R
35658	JOU	38	0	\N	t	\N	\N	\N	\N	Font of Fortunes	Enchantment	C
35659	THB	35	0	t	\N	\N	\N	\N	\N	Rumbling Sentry	Creature	C
35660	BNG	40	0	\N	t	\N	\N	\N	\N	Flitterstep Eidolon	Enchantment Creature	U
35662	THB	36	0	t	\N	\N	\N	\N	\N	Sentinel's Eyes	Enchantment	C
35664	JOU	40	0	\N	t	\N	\N	\N	\N	Hour of Need	Instant	U
35668	THB	38	0	t	\N	\N	\N	\N	\N	Sunmane Pegasus	Creature	C
35670	JOU	42	0	\N	t	\N	\N	\N	\N	Hypnotic Siren	Enchantment Creature	R
35671	THB	39	0	t	\N	\N	\N	\N	\N	Taranika, Akroan Veteran	Lgd. Creature	R
35672	BNG	44	0	\N	t	\N	\N	\N	\N	Mindreaver	Creature	R
35673	JOU	43	0	\N	t	\N	\N	\N	\N	Interpret the Signs	Sorcery	U
35674	THB	40	0	t	\N	\N	\N	\N	\N	Transcendent Envoy	Enchantment Creature	C
35675	BNG	45	0	\N	t	\N	\N	\N	\N	Nullify	Instant	C
35676	JOU	44	0	\N	t	\N	\N	\N	\N	Kiora's Dismissal	Instant	U
35677	THB	41	0	t	\N	\N	\N	\N	\N	Triumphant Surge	Instant	C
35683	THB	43	0	\N	t	\N	\N	\N	\N	Ashiok's Erasure	Enchantment	R
35685	JOU	47	0	\N	t	\N	\N	\N	\N	Pull from the Deep	Sorcery	U
35701	THB	49	0	\N	t	\N	\N	\N	\N	Elite Instructor	Creature	C
35702	BNG	54	0	\N	t	\N	\N	\N	\N	Thassa's Rebuff	Instant	U
35606	BNG	22	3	t	\N	\N	\N	\N	\N	Oreskos Sun Guide	Creature	C
35707	THB	51	0	\N	t	\N	\N	\N	\N	Ichthyomorphosis	Enchantment	C
35708	BNG	56	0	\N	t	\N	\N	\N	\N	Vortex Elemental	Creature	U
35709	JOU	55	0	\N	t	\N	\N	\N	\N	Triton Cavalry	Creature	U
35710	THB	52	0	\N	t	\N	\N	\N	\N	Kiora Bests the Sea God	Enchantment	M
35711	BNG	57	0	\N	t	\N	\N	\N	\N	Whelming Wave	Sorcery	R
35712	JOU	56	0	\N	t	\N	\N	\N	\N	Triton Shorestalker	Creature	C
35713	THB	53	0	\N	t	\N	\N	\N	\N	Medomai's Prophecy	Enchantment	U
35714	BNG	58	0	\N	\N	t	\N	\N	\N	Archetype of Finality	Enchantment Creature	U
35715	JOU	57	0	\N	t	\N	\N	\N	\N	War-Wing Siren	Creature	C
35716	THB	54	0	\N	t	\N	\N	\N	\N	Memory Drain	Instant	C
35719	THB	55	0	\N	t	\N	\N	\N	\N	Nadir Kraken	Creature	R
35725	THB	57	0	\N	t	\N	\N	\N	\N	Nyxborn Seaguard	Enchantment Creature	C
35726	BNG	62	0	\N	\N	t	\N	\N	\N	Black Oak of Odunos	Creature	U
35743	THB	63	0	\N	t	\N	\N	\N	\N	Sea God's Scorn	Sorcery	U
35603	BNG	21	1	t	\N	\N	\N	\N	\N	Nyxborn Shieldmate	Enchantment Creature	C
35717	BNG	59	1	\N	\N	t	\N	\N	\N	Ashiok's Adept	Creature	U
35602	THB	16	1	t	\N	\N	\N	\N	\N	Flicker of Fate	Instant	C
35654	BNG	38	1	\N	t	\N	\N	\N	\N	Evanescent Intellect	Enchantment	C
35633	BNG	31	1	\N	t	\N	\N	\N	\N	Arbiter of the Ideal	Creature	R
35663	BNG	41	1	\N	t	\N	\N	\N	\N	Floodtide Serpent	Creature	C
35678	BNG	46	2	\N	t	\N	\N	\N	\N	Nyxborn Triton	Enchantment Creature	C
35669	BNG	43	1	\N	t	\N	\N	\N	\N	Meletis Astronomer	Creature	U
35684	BNG	48	1	\N	t	\N	\N	\N	\N	Perplexing Chimera	Enchantment Creature	R
35639	BNG	33	1	\N	t	\N	\N	\N	\N	Chorus of the Tides	Creature	C
35601	JOU	19	1	t	\N	\N	\N	\N	\N	Oppressive Rays	Enchantment	C
35610	JOU	22	1	t	\N	\N	\N	\N	\N	Quarry Colossus	Creature	U
35625	JOU	27	1	t	\N	\N	\N	\N	\N	Stonewise Fortifier	Creature	C
35619	JOU	25	1	t	\N	\N	\N	\N	\N	Skybind	Enchantment	R
35628	JOU	28	2	t	\N	\N	\N	\N	\N	Supply-Line Cranes	Creature	C
35615	BNG	25	1	t	\N	\N	\N	\N	\N	Revoke Existence	Sorcery	C
35643	JOU	33	1	\N	t	\N	\N	\N	\N	Countermand	Instant	C
35718	JOU	58	1	\N	t	\N	\N	\N	\N	Whitewater Naiads	Enchantment Creature	U
35661	JOU	39	1	\N	t	\N	\N	\N	\N	Godhunter Octopus	Creature	C
35651	BNG	37	1	\N	t	\N	\N	\N	\N	Eternity Snare	Enchantment	U
35645	BNG	35	3	\N	t	\N	\N	\N	\N	Deepwater Hypnotist	Creature	C
35634	JOU	30	1	\N	t	\N	\N	\N	\N	Aerial Formation	Instant	C
35727	JOU	61	1	\N	\N	t	\N	\N	\N	Bloodcrazed Hoplite	Creature	C
35720	BNG	60	2	\N	\N	t	\N	\N	\N	Asphyxiate	Sorcery	C
35644	THB	30	1	t	\N	\N	\N	\N	\N	Omen of the Sun	Enchantment	C
35611	THB	19	0	t	\N	\N	\N	\N	\N	Heliod's Intervention	Instant	R
35612	BNG	24	0	t	\N	\N	\N	\N	\N	Plea for Guidance	Sorcery	R
35613	JOU	23	0	t	\N	\N	\N	\N	\N	Reprisal	Instant	U
35629	THB	25	0	t	\N	\N	\N	\N	\N	Indomitable Will	Enchantment	C
35647	THB	31	0	t	\N	\N	\N	\N	\N	Phalanx Tactics	Instant	U
35649	JOU	35	0	\N	t	\N	\N	\N	\N	Dakra Mystic	Creature	U
35665	THB	37	0	t	\N	\N	\N	\N	\N	Shatter the Sky	Sorcery	R
35666	BNG	42	0	\N	t	\N	\N	\N	\N	Kraken of the Straits	Creature	U
35679	JOU	45	0	\N	t	\N	\N	\N	\N	Pin to the Earth	Enchantment	C
35680	THB	42	0	\N	t	\N	\N	\N	\N	Alirios, Enraptured	Lgd. Creature	U
35681	BNG	47	0	\N	t	\N	\N	\N	\N	Oracle's Insight	Enchantment	U
35682	JOU	46	0	\N	t	\N	\N	\N	\N	Polymorphous Rush	Instant	R
35686	THB	44	0	\N	t	\N	\N	\N	\N	Brine Giant	Creature	C
35687	BNG	49	0	\N	t	\N	\N	\N	\N	Retraction Helix	Instant	C
35688	JOU	48	0	\N	t	\N	\N	\N	\N	Riptide Chimera	Enchantment Creature	U
35689	THB	45	0	\N	t	\N	\N	\N	\N	Callaphe, Beloved of the Sea	Lgd. Enchantment Creature	U
35690	BNG	50	0	\N	t	\N	\N	\N	\N	Siren of the Fanged Coast	Creature	U
35691	JOU	49	0	\N	t	\N	\N	\N	\N	Rise of Eagles	Sorcery	C
35694	JOU	50	0	\N	t	\N	\N	\N	\N	Sage of Hours	Creature	M
35695	THB	47	0	\N	t	\N	\N	\N	\N	Deny the Divine	Instant	C
35698	THB	48	0	\N	t	\N	\N	\N	\N	Eidolon of Philosophy	Enchantment Creature	C
35700	JOU	52	0	\N	t	\N	\N	\N	\N	Sigiled Starfish	Creature	C
35704	THB	50	0	\N	t	\N	\N	\N	\N	Glimpse of Freedom	Instant	U
35705	BNG	55	0	\N	t	\N	\N	\N	\N	Tromokratis	Lgd. Creature	R
35706	JOU	54	0	\N	t	\N	\N	\N	\N	Thassa's Ire	Enchantment	U
35721	JOU	59	0	\N	\N	t	\N	\N	\N	Agent of Erebos	Enchantment Creature	U
35722	THB	56	0	\N	t	\N	\N	\N	\N	Naiad of Hidden Coves	Enchantment Creature	C
35728	THB	58	0	\N	t	\N	\N	\N	\N	Omen of the Sea	Enchantment	C
35729	BNG	63	0	\N	\N	t	\N	\N	\N	Champion of Stray Souls	Creature	M
35730	JOU	62	0	\N	\N	t	\N	\N	\N	Brain Maggot	Enchantment Creature	U
35731	THB	59	0	\N	t	\N	\N	\N	\N	One with the Stars	Enchantment	U
35734	THB	60	0	\N	t	\N	\N	\N	\N	Protean Thaumaturge	Creature	R
35735	BNG	65	0	\N	\N	t	\N	\N	\N	Drown in Sorrow	Sorcery	U
35736	JOU	64	0	\N	\N	t	\N	\N	\N	Cruel Feeding	Instant	C
35738	BNG	66	0	\N	\N	t	\N	\N	\N	Eater of Hope	Creature	R
35739	JOU	65	0	\N	\N	t	\N	\N	\N	Dictate of Erebos	Enchantment	R
35740	THB	62	0	\N	t	\N	\N	\N	\N	Sage of Mysteries	Creature	U
35741	BNG	67	0	\N	\N	t	\N	\N	\N	Eye Gouge	Instant	C
35742	JOU	66	0	\N	\N	t	\N	\N	\N	Doomwake Giant	Enchantment Creature	R
35746	THB	64	0	\N	t	\N	\N	\N	\N	Shimmerwing Chimera	Enchantment Creature	U
35747	BNG	69	0	\N	\N	t	\N	\N	\N	Fated Return	Instant	R
35748	JOU	68	0	\N	\N	t	\N	\N	\N	Extinguish All Hope	Sorcery	R
35763	JOU	73	0	\N	\N	t	\N	\N	\N	Grim Guardian	Enchantment Creature	C
35764	THB	70	0	\N	t	\N	\N	\N	\N	Sweet Oblivion	Sorcery	U
35766	JOU	74	0	\N	\N	t	\N	\N	\N	King Macar, the Gold-Cursed	Lgd. Creature	R
35782	THB	76	0	\N	t	\N	\N	\N	\N	Thryx, the Sudden Storm	Lgd. Creature	R
35785	THB	77	0	\N	t	\N	\N	\N	\N	Towering-Wave Mystic	Creature	C
35819	BNG	93	2	\N	\N	\N	t	\N	\N	Fall of the Hammer	Instant	C
35788	THB	78	0	\N	t	\N	\N	\N	\N	Triton Waverider	Creature	C
35789	BNG	83	0	\N	\N	t	\N	\N	\N	Shrike Harpy	Creature	U
35790	JOU	82	0	\N	\N	t	\N	\N	\N	Silence the Believers	Instant	R
35791	THB	79	0	\N	t	\N	\N	\N	\N	Vexing Gull	Creature	C
35792	BNG	84	0	\N	\N	t	\N	\N	\N	Spiteful Returned	Enchantment Creature	U
35793	JOU	83	0	\N	\N	t	\N	\N	\N	Spiteful Blow	Sorcery	U
35794	THB	80	0	\N	t	\N	\N	\N	\N	Wavebreak Hippocamp	Enchantment Creature	R
35801	BNG	87	0	\N	\N	\N	t	\N	\N	Akroan Conscriptor	Creature	U
35802	JOU	86	0	\N	\N	t	\N	\N	\N	Tormented Thoughts	Sorcery	U
35803	THB	83	0	\N	\N	t	\N	\N	\N	Agonizing Remorse	Sorcery	U
35805	JOU	87	0	\N	\N	t	\N	\N	\N	Worst Fears	Sorcery	M
35806	THB	84	0	\N	\N	t	\N	\N	\N	Aphemia, the Cacophony	Lgd. Enchantment Creature	R
35808	JOU	88	0	\N	\N	\N	t	\N	\N	Akroan Line Breaker	Creature	U
35809	THB	85	0	\N	\N	t	\N	\N	\N	Aspect of Lamprey	Enchantment	C
35811	JOU	89	0	\N	\N	\N	t	\N	\N	Bearer of the Heavens	Creature	R
35812	THB	86	0	\N	\N	t	\N	\N	\N	Blight-Breath Catoblepas	Creature	C
35814	JOU	90	0	\N	\N	\N	t	\N	\N	Bladetusk Boar	Creature	C
35820	JOU	92	0	\N	\N	\N	t	\N	\N	Cyclops of Eternal Fury	Enchantment Creature	U
35783	BNG	81	1	\N	\N	t	\N	\N	\N	Sanguimancy	Sorcery	U
35795	BNG	85	1	\N	\N	t	\N	\N	\N	Warchanter of Mogis	Creature	C
35723	BNG	61	1	\N	\N	t	\N	\N	\N	Bile Blight	Instant	U
35696	BNG	52	1	\N	t	\N	\N	\N	\N	Stratus Walk	Enchantment	C
35648	BNG	36	1	\N	t	\N	\N	\N	\N	Divination	Sorcery	C
35787	JOU	81	1	\N	\N	t	\N	\N	\N	Rotted Hulk	Creature	C
35630	BNG	30	1	\N	t	\N	\N	\N	\N	Aerie Worshippers	Creature	U
35699	BNG	53	2	\N	t	\N	\N	\N	\N	Sudden Storm	Instant	C
35813	BNG	91	1	\N	\N	\N	t	\N	\N	Epiphany Storm	Enchantment	C
35807	BNG	89	4	\N	\N	\N	t	\N	\N	Bolt of Keranos	Sorcery	C
35804	BNG	88	1	\N	\N	\N	t	\N	\N	Archetype of Aggression	Enchantment Creature	U
35667	JOU	41	1	\N	t	\N	\N	\N	\N	Hubris	Instant	C
35631	JOU	29	1	t	\N	\N	\N	\N	\N	Tethmos High Priest	Creature	U
35693	BNG	51	2	\N	t	\N	\N	\N	\N	Sphinx's Disciple	Creature	C
35697	JOU	51	0	\N	t	\N	\N	\N	\N	Scourge of Fleets	Creature	R
35796	JOU	84	1	\N	\N	t	\N	\N	\N	Squelching Leeches	Creature	U
35784	JOU	80	1	\N	\N	t	\N	\N	\N	Ritual of the Returned	Instant	U
35733	JOU	63	1	\N	\N	t	\N	\N	\N	Cast into Darkness	Enchantment	C
35732	BNG	64	2	\N	\N	t	\N	\N	\N	Claim of Erebos	Enchantment	C
35765	BNG	75	2	\N	\N	t	\N	\N	\N	Herald of Torment	Enchantment Creature	R
35737	THB	61	1	\N	t	\N	\N	\N	\N	Riptide Turtle	Creature	C
35692	THB	46	1	\N	t	\N	\N	\N	\N	Chain to Memory	Instant	C
35800	THB	82	1	\N	t	\N	\N	\N	\N	Witness of Tomorrows	Enchantment Creature	C
35818	THB	88	1	\N	\N	t	\N	\N	\N	Discordant Piper	Creature	C
35724	JOU	60	3	\N	\N	t	\N	\N	\N	Aspect of Gorgon	Enchantment	C
35744	BNG	68	0	\N	\N	t	\N	\N	\N	Fate Unraveler	Enchantment Creature	R
35749	THB	65	0	\N	t	\N	\N	\N	\N	Shoal Kraken	Creature	U
35751	JOU	69	0	\N	\N	t	\N	\N	\N	Feast of Dreams	Instant	C
35755	THB	67	0	\N	t	\N	\N	\N	\N	Starlit Mantle	Enchantment	C
35758	THB	68	0	\N	t	\N	\N	\N	\N	Stern Dismissal	Instant	C
35759	BNG	73	0	\N	\N	t	\N	\N	\N	Gild	Sorcery	R
35760	JOU	72	0	\N	\N	t	\N	\N	\N	Gnarled Scarhide	Enchantment Creature	U
35761	THB	69	0	\N	t	\N	\N	\N	\N	Stinging Lionfish	Enchantment Creature	U
35767	THB	71	0	\N	t	\N	\N	\N	\N	Thassa, Deep-Dwelling	Lgd. Enchantment Creature	M
35769	JOU	75	0	\N	\N	t	\N	\N	\N	Master of the Feast	Enchantment Creature	R
35770	THB	72	0	\N	t	\N	\N	\N	\N	Thassa's Intervention	Instant	R
35772	JOU	76	0	\N	\N	t	\N	\N	\N	Nightmarish End	Instant	U
35773	THB	73	0	\N	t	\N	\N	\N	\N	Thassa's Oracle	Creature	R
35776	THB	74	0	\N	t	\N	\N	\N	\N	Thirst for Meaning	Instant	C
35777	BNG	79	0	\N	\N	t	\N	\N	\N	Odunos River Trawler	Creature	U
35780	BNG	80	0	\N	\N	t	\N	\N	\N	Pain Seer	Creature	R
35781	JOU	79	0	\N	\N	t	\N	\N	\N	Returned Reveler	Creature	C
35797	THB	81	0	\N	t	\N	\N	\N	\N	Whirlwind Denial	Instant	U
35799	JOU	85	0	\N	\N	t	\N	\N	\N	Thoughtrender Lamia	Enchantment Creature	U
35815	THB	87	0	\N	\N	t	\N	\N	\N	Cling to Dust	Instant	U
35830	THB	92	0	\N	\N	t	\N	\N	\N	Enemy of Enlightenment	Enchantment Creature	U
35831	BNG	97	0	\N	\N	\N	t	\N	\N	Flame-Wreathed Phoenix	Creature	M
35832	JOU	96	0	\N	\N	\N	t	\N	\N	Flurry of Horns	Sorcery	C
35836	THB	94	0	\N	\N	t	\N	\N	\N	Erebos's Intervention	Instant	R
35837	BNG	99	0	\N	\N	\N	t	\N	\N	Impetuous Sunchaser	Creature	C
35839	THB	95	0	\N	\N	t	\N	\N	\N	Final Death	Instant	C
35841	JOU	99	0	\N	\N	\N	t	\N	\N	Gluttonous Cyclops	Creature	C
35842	THB	96	0	\N	\N	t	\N	\N	\N	Fruit of Tizerus	Sorcery	C
35846	BNG	102	0	\N	\N	\N	t	\N	\N	Nyxborn Rollicker	Enchantment Creature	C
35847	JOU	101	0	\N	\N	\N	t	\N	\N	Knowledge and Power	Enchantment	U
35848	THB	98	0	\N	\N	t	\N	\N	\N	Gravebreaker Lamia	Enchantment Creature	R
35849	BNG	103	0	\N	\N	\N	t	\N	\N	Oracle of Bones	Creature	R
35850	JOU	102	0	\N	\N	\N	t	\N	\N	Lightning Diadem	Enchantment	C
35851	THB	99	0	\N	\N	t	\N	\N	\N	Gray Merchant of Asphodel	Creature	U
35857	THB	101	0	\N	\N	t	\N	\N	\N	Hateful Eidolon	Enchantment Creature	U
35860	THB	102	0	\N	\N	t	\N	\N	\N	Inevitable End	Enchantment	U
35861	BNG	107	0	\N	\N	\N	t	\N	\N	Rise to the Challenge	Instant	C
35862	JOU	106	0	\N	\N	\N	t	\N	\N	Prophetic Flamespeaker	Creature	M
35863	THB	103	0	\N	\N	t	\N	\N	\N	Lampad of Death's Vigil	Enchantment Creature	C
35864	BNG	108	0	\N	\N	\N	t	\N	\N	Satyr Firedancer	Enchantment Creature	R
35865	JOU	107	0	\N	\N	\N	t	\N	\N	Riddle of Lightning	Instant	U
35866	THB	104	0	\N	\N	t	\N	\N	\N	Minion's Return	Enchantment	U
35872	THB	106	0	\N	\N	t	\N	\N	\N	Mire's Grasp	Enchantment	C
35875	THB	107	0	\N	\N	t	\N	\N	\N	Mogis's Favor	Enchantment	C
35876	BNG	112	0	\N	\N	\N	t	\N	\N	Stormcaller of Keranos	Creature	U
35878	THB	108	0	\N	\N	t	\N	\N	\N	Nightmare Shepherd	Enchantment Creature	R
35880	JOU	112	0	\N	\N	\N	t	\N	\N	Spawn of Thraxes	Creature	R
35881	THB	109	0	\N	\N	t	\N	\N	\N	Nyxborn Marauder	Enchantment Creature	C
35882	BNG	114	0	\N	\N	\N	t	\N	\N	Thunderous Might	Enchantment	U
35884	THB	110	0	\N	\N	t	\N	\N	\N	Omen of the Dead	Enchantment	C
35885	BNG	115	0	\N	\N	\N	t	\N	\N	Whims of the Fates	Sorcery	R
35768	BNG	76	1	\N	\N	t	\N	\N	\N	Marshmist Titan	Creature	C
35774	BNG	78	1	\N	\N	t	\N	\N	\N	Nyxborn Eidolon	Enchantment Creature	C
35762	BNG	74	1	\N	\N	t	\N	\N	\N	Grisly Transformation	Enchantment	C
35771	BNG	77	1	\N	\N	t	\N	\N	\N	Necrobite	Instant	C
35756	BNG	72	1	\N	\N	t	\N	\N	\N	Forsaken Drifters	Creature	C
35798	BNG	86	1	\N	\N	t	\N	\N	\N	Weight of the Underworld	Enchantment	C
35879	BNG	113	1	\N	\N	\N	t	\N	\N	Thunder Brute	Creature	U
35753	BNG	71	0	\N	\N	t	\N	\N	\N	Forlorn Pseudamma	Creature	U
35816	BNG	92	1	\N	\N	\N	t	\N	\N	Everflame Eidolon	Enchantment Creature	U
35840	BNG	100	2	\N	\N	\N	t	\N	\N	Kragma Butcher	Creature	C
35852	BNG	104	1	\N	\N	\N	t	\N	\N	Pharagax Giant	Creature	C
35867	BNG	109	1	\N	\N	\N	t	\N	\N	Satyr Nyx-Smith	Creature	U
35778	JOU	78	1	\N	\N	t	\N	\N	\N	Pharika's Chosen	Creature	C
35853	JOU	103	1	\N	\N	\N	t	\N	\N	Magma Spray	Instant	C
35859	JOU	105	1	\N	\N	\N	t	\N	\N	Pensive Minotaur	Creature	C
35838	JOU	98	1	\N	\N	\N	t	\N	\N	Forgeborn Oreads	Enchantment Creature	U
35877	JOU	111	1	\N	\N	\N	t	\N	\N	Sigiled Skink	Creature	C
35883	JOU	113	1	\N	\N	\N	t	\N	\N	Spite of Mogis	Sorcery	U
35874	JOU	110	1	\N	\N	\N	t	\N	\N	Satyr Hoplite	Creature	C
35858	BNG	106	3	\N	\N	\N	t	\N	\N	Reckless Reveler	Creature	C
35873	BNG	111	2	\N	\N	\N	t	\N	\N	Searing Blood	Instant	U
35844	JOU	100	1	\N	\N	\N	t	\N	\N	Harness by Force	Sorcery	R
35775	JOU	77	1	\N	\N	t	\N	\N	\N	Nyx Infusion	Enchantment	C
35754	JOU	70	1	\N	\N	t	\N	\N	\N	Felhide Petrifier	Creature	U
35757	JOU	71	2	\N	\N	t	\N	\N	\N	Font of Return	Enchantment	C
35750	BNG	70	1	\N	\N	t	\N	\N	\N	Felhide Brawler	Creature	C
35745	JOU	67	2	\N	\N	t	\N	\N	\N	Dreadbringer Lampads	Enchantment Creature	C
35752	THB	66	1	\N	t	\N	\N	\N	\N	Sleep of the Dead	Sorcery	C
35779	THB	75	1	\N	t	\N	\N	\N	\N	Threnody Singer	Creature	U
35845	THB	97	1	\N	\N	t	\N	\N	\N	Funeral Rites	Sorcery	C
35817	JOU	91	1	\N	\N	\N	t	\N	\N	Blinding Flare	Sorcery	U
35843	BNG	101	2	\N	\N	\N	t	\N	\N	Lightning Volley	Instant	U
37608	BRO	6	0	t	\N	\N	\N	\N	\N	Disenchant	Instant	C
37610	BRO	8	0	t	\N	\N	\N	\N	\N	In the Trenches	Enchantment	M
37607	BRO	1	1	t	\N	\N	\N	\N	\N	Aeronaut Cavalry	Creature	C
35821	THB	89	0	\N	\N	t	\N	\N	\N	Drag to the Underworld	Instant	U
35822	BNG	94	0	\N	\N	\N	t	\N	\N	Fated Conflagration	Instant	R
35823	JOU	93	0	\N	\N	\N	t	\N	\N	Dictate of the Twin Gods	Enchantment	R
35824	THB	90	0	\N	\N	t	\N	\N	\N	Eat to Extinction	Instant	R
35826	JOU	94	0	\N	\N	\N	t	\N	\N	Eidolon of the Great Revel	Enchantment Creature	R
35827	THB	91	0	\N	\N	t	\N	\N	\N	Elspeth's Nightmare	Enchantment	U
35828	BNG	96	0	\N	\N	\N	t	\N	\N	Felhide Spiritbinder	Creature	R
35829	JOU	95	0	\N	\N	\N	t	\N	\N	Flamespeaker's Will	Enchantment	C
35833	THB	93	0	\N	\N	t	\N	\N	\N	Erebos, Bleak-Hearted	Lgd. Enchantment Creature	M
35834	BNG	98	0	\N	\N	\N	t	\N	\N	Forgestoker Dragon	Creature	R
35854	THB	100	0	\N	\N	t	\N	\N	\N	Grim Physician	Creature	C
35855	BNG	105	0	\N	\N	\N	t	\N	\N	Pinnacle of Rage	Sorcery	U
35856	JOU	104	0	\N	\N	\N	t	\N	\N	Mogis's Warhound	Enchantment Creature	U
35868	JOU	108	0	\N	\N	\N	t	\N	\N	Rollick of Abandon	Sorcery	U
35869	THB	105	0	\N	\N	t	\N	\N	\N	Mire Triton	Creature	U
35871	JOU	109	0	\N	\N	\N	t	\N	\N	Rouse the Mob	Instant	C
35886	JOU	114	0	\N	\N	\N	t	\N	\N	Starfall	Instant	C
35890	THB	112	0	\N	\N	t	\N	\N	\N	Pharika's Spawn	Creature	U
35892	JOU	116	0	\N	\N	\N	t	\N	\N	Wildfire Cerberus	Creature	U
35905	THB	117	0	\N	\N	t	\N	\N	\N	Treacherous Blessing	Enchantment	R
35907	JOU	121	0	\N	\N	\N	\N	t	\N	Dictate of Karametra	Enchantment	R
35912	BNG	124	0	\N	\N	\N	\N	t	\N	Hunter's Prowess	Sorcery	R
35917	THB	121	0	\N	\N	t	\N	\N	\N	Underworld Dreams	Enchantment	U
35918	BNG	126	0	\N	\N	\N	\N	t	\N	Mischief and Mayhem	Sorcery	U
35920	THB	122	0	\N	\N	t	\N	\N	\N	Venomous Hierophant	Creature	C
35926	THB	124	0	\N	\N	\N	t	\N	\N	The Akroan War	Enchantment	R
35927	BNG	129	0	\N	\N	\N	\N	t	\N	Nessian Wilds Ravager	Creature	R
35928	JOU	128	0	\N	\N	\N	\N	t	\N	Hydra Broodmaster	Creature	R
35941	THB	129	0	\N	\N	\N	t	\N	\N	Careless Celebrant	Creature	U
35943	JOU	133	0	\N	\N	\N	\N	t	\N	Oakheart Dryads	Enchantment Creature	C
35947	THB	131	0	\N	\N	\N	t	\N	\N	Dreamstalker Manticore	Enchantment Creature	U
35949	JOU	135	0	\N	\N	\N	\N	t	\N	Pheres-Band Warchief	Creature	R
35950	THB	132	0	\N	\N	\N	t	\N	\N	Escape Velocity	Enchantment	U
35951	BNG	137	0	\N	\N	\N	\N	t	\N	Scourge of Skola Vale	Creature	R
35953	THB	133	0	\N	\N	\N	t	\N	\N	Fateful End	Instant	U
35955	JOU	137	0	\N	\N	\N	\N	t	\N	Renowned Weaver	Creature	C
35962	THB	136	0	\N	\N	\N	t	\N	\N	Furious Rise	Enchantment	U
35963	BNG	141	2	\N	\N	\N	\N	t	\N	Snake of the Golden Grove	Creature	C
35979	JOU	145	0	t	\N	\N	\N	t	\N	Ajani, Mentor of Heroes	Lgd. Planeswalker	M
35983	THB	143	0	\N	\N	\N	t	\N	\N	Irreverent Revelers	Creature	C
35984	BNG	148	0	t	\N	\N	\N	t	\N	Karametra, God of Harvests	Lgd. Enchantment Creature	M
35986	THB	144	0	\N	\N	\N	t	\N	\N	Nyxborn Brute	Enchantment Creature	C
35987	BNG	149	0	\N	t	\N	\N	t	\N	Kiora, the Crashing Wave	Lgd. Planeswalker	M
35989	THB	145	0	\N	\N	\N	t	\N	\N	Omen of the Forge	Enchantment	C
35992	THB	146	0	\N	\N	\N	t	\N	\N	Oread of Mountain's Blaze	Enchantment Creature	C
35993	BNG	151	0	\N	\N	t	t	\N	\N	Mogis, God of Slaughter	Lgd. Enchantment Creature	M
35994	JOU	150	0	t	\N	\N	t	\N	\N	Iroas, God of Victory	Lgd. Enchantment Creature	M
35995	THB	147	0	\N	\N	\N	t	\N	\N	Ox of Agonas	Creature	M
35996	BNG	152	0	\N	t	t	\N	\N	\N	Phenax, God of Deception	Lgd. Enchantment Creature	M
35906	BNG	122	3	\N	\N	\N	\N	t	\N	Graverobber Spider	Creature	U
36001	THB	149	0	\N	\N	\N	t	\N	\N	Portent of Betrayal	Sorcery	C
36002	BNG	154	0	t	\N	\N	\N	t	\N	Reap What Is Sown	Instant	U
36003	JOU	153	0	\N	\N	t	\N	t	\N	Nyx Weaver	Enchantment Creature	U
36004	THB	150	0	\N	\N	\N	t	\N	\N	Purphoros, Bronze-Blooded	Lgd. Enchantment Creature	M
36005	BNG	155	0	\N	t	t	\N	\N	\N	Siren of the Silent Song	Creature	U
36006	JOU	154	0	\N	\N	t	\N	t	\N	Pharika, God of Affliction	Lgd. Enchantment Creature	M
36007	THB	151	0	\N	\N	\N	t	\N	\N	Purphoros's Intervention	Sorcery	R
36009	JOU	155	0	\N	\N	\N	t	t	\N	Revel of the Fallen God	Sorcery	R
36010	THB	152	0	\N	\N	\N	t	\N	\N	Satyr's Cunning	Sorcery	C
36011	BNG	157	0	\N	\N	\N	\N	\N	\N	Astral Cornucopia	Artifact	R
35922	JOU	126	1	\N	\N	\N	\N	t	\N	Heroes' Bane	Creature	R
35870	BNG	110	1	\N	\N	\N	t	\N	\N	Scouring Sands	Sorcery	C
35985	JOU	147	1	t	\N	\N	t	\N	\N	Desperate Stand	Sorcery	U
35921	BNG	127	3	\N	\N	\N	\N	t	\N	Mortal's Resolve	Instant	C
35948	BNG	136	5	\N	\N	\N	\N	t	\N	Satyr Wayfinder	Creature	C
35990	BNG	150	1	\N	t	\N	\N	t	\N	Kiora's Follower	Creature	U
35957	BNG	139	1	\N	\N	\N	\N	t	\N	Setessan Starbreaker	Creature	C
35915	BNG	125	1	\N	\N	\N	\N	t	\N	Karametra's Favor	Enchantment	C
35891	BNG	117	1	\N	\N	\N	\N	t	\N	Aspect of Hydra	Instant	C
35954	BNG	138	2	\N	\N	\N	\N	t	\N	Setessan Oathsworn	Creature	C
35964	JOU	140	1	\N	\N	\N	\N	t	\N	Setessan Tactics	Instant	R
35919	JOU	125	1	\N	\N	\N	\N	t	\N	Goldenhide Ox	Enchantment Creature	U
35940	JOU	132	3	\N	\N	\N	\N	t	\N	Nessian Game Warden	Creature	U
35904	JOU	120	1	\N	\N	\N	\N	t	\N	Desecration Plague	Sorcery	C
35976	JOU	144	1	\N	\N	\N	\N	t	\N	Swarmborn Giant	Creature	U
35942	BNG	134	2	\N	\N	\N	\N	t	\N	Pheres-Band Tromper	Creature	C
35835	JOU	97	1	\N	\N	\N	t	\N	\N	Font of Ire	Enchantment	C
35825	BNG	95	2	\N	\N	\N	t	\N	\N	Fearsome Temper	Enchantment	C
35988	JOU	148	1	\N	t	t	\N	\N	\N	Disciple of Deceit	Creature	U
35991	JOU	149	2	\N	t	\N	\N	t	\N	Fleetfeather Cockatrice	Creature	U
36008	BNG	156	1	\N	\N	\N	t	t	\N	Xenagos, God of Revels	Lgd. Enchantment Creature	M
35956	THB	134	1	\N	\N	\N	t	\N	\N	Final Flare	Instant	C
35977	THB	141	1	\N	\N	\N	t	\N	\N	Infuriate	Instant	C
35914	THB	120	1	\N	\N	t	\N	\N	\N	Underworld Charger	Creature	C
35911	THB	119	1	\N	\N	t	\N	\N	\N	Tymaret, Chosen from Death	Lgd. Enchantment Creature	U
35952	JOU	136	2	\N	\N	\N	\N	t	\N	Ravenous Leucrocota	Creature	C
35916	JOU	124	2	\N	\N	\N	\N	t	\N	Golden Hind	Creature	C
35913	JOU	123	3	\N	\N	\N	\N	t	\N	Font of Fertility	Enchantment	C
35887	THB	111	0	\N	\N	t	\N	\N	\N	Pharika's Libation	Instant	C
35888	BNG	116	0	\N	\N	\N	\N	t	\N	Archetype of Endurance	Enchantment Creature	U
35889	JOU	115	0	\N	\N	\N	t	\N	\N	Twinflame	Sorcery	R
35896	THB	114	0	\N	\N	t	\N	\N	\N	Scavenging Harpy	Creature	C
35897	BNG	119	0	\N	\N	\N	\N	t	\N	Courser of Kruphix	Enchantment Creature	R
35898	JOU	118	0	\N	\N	\N	\N	t	\N	Colossal Heroics	Instant	U
35899	THB	115	0	\N	\N	t	\N	\N	\N	Soulreaper of Mogis	Enchantment Creature	C
35901	JOU	119	0	\N	\N	\N	\N	t	\N	Consign to Dust	Instant	U
35902	THB	116	0	\N	\N	t	\N	\N	\N	Temple Thief	Creature	C
35903	BNG	121	0	\N	\N	\N	\N	t	\N	Fated Intervention	Instant	R
35908	THB	118	0	\N	\N	t	\N	\N	\N	Tymaret Calls the Dead	Enchantment	R
35910	JOU	122	0	\N	\N	\N	\N	t	\N	Eidolon of Blossoms	Enchantment Creature	R
35923	THB	123	0	\N	\N	t	\N	\N	\N	Woe Strider	Creature	R
35924	BNG	128	0	\N	\N	\N	\N	t	\N	Nessian Demolok	Creature	U
35925	JOU	127	0	\N	\N	\N	\N	t	\N	Humbler of Mortals	Enchantment Creature	C
35929	THB	125	0	\N	\N	\N	t	\N	\N	Anax, Hardened in the Forge	Lgd. Enchantment Creature	U
35930	BNG	130	0	\N	\N	\N	\N	t	\N	Noble Quarry	Enchantment Creature	U
35932	THB	126	0	\N	\N	\N	t	\N	\N	Arena Trickster	Creature	C
35933	BNG	131	0	\N	\N	\N	\N	t	\N	Nyxborn Wolf	Enchantment Creature	C
35935	THB	127	0	\N	\N	\N	t	\N	\N	Aspect of Manticore	Enchantment	C
35936	BNG	132	0	\N	\N	\N	\N	t	\N	Peregrination	Sorcery	U
35938	THB	128	0	\N	\N	\N	t	\N	\N	Blood Aspirant	Creature	U
35944	THB	130	0	\N	\N	\N	t	\N	\N	Dreamshaper Shaman	Enchantment Creature	U
35946	JOU	134	0	\N	\N	\N	\N	t	\N	Pheres-Band Thunderhoof	Creature	C
35958	JOU	138	0	\N	\N	\N	\N	t	\N	Reviving Melody	Sorcery	U
35960	BNG	140	0	\N	\N	\N	\N	t	\N	Skyreaping	Sorcery	U
35967	JOU	141	0	\N	\N	\N	\N	t	\N	Solidarity of Heroes	Instant	U
35968	THB	138	0	\N	\N	\N	t	\N	\N	Heroes of the Revel	Creature	U
35970	JOU	142	0	\N	\N	\N	\N	t	\N	Spirespine	Enchantment Creature	U
35971	THB	139	0	\N	\N	\N	t	\N	\N	Impending Doom	Enchantment	U
35939	BNG	133	1	\N	\N	\N	\N	t	\N	Pheres-Band Raiders	Creature	U
35973	JOU	143	0	\N	\N	\N	\N	t	\N	Strength from the Fallen	Enchantment	U
35974	THB	140	0	\N	\N	\N	t	\N	\N	Incendiary Oracle	Creature	C
35975	BNG	145	0	t	t	\N	\N	\N	\N	Ephara, God of the Polis	Lgd. Enchantment Creature	M
35980	THB	142	0	\N	\N	\N	t	\N	\N	Iroas's Blessing	Enchantment	C
35982	JOU	146	0	t	\N	t	\N	\N	\N	Athreos, God of Passage	Lgd. Enchantment Creature	M
35998	THB	148	0	\N	\N	\N	t	\N	\N	Phoenix of Ash	Creature	R
35999	BNG	153	0	\N	\N	t	t	\N	\N	Ragemonger	Creature	U
36000	JOU	152	0	\N	t	\N	\N	t	\N	Kruphix, God of Horizons	Lgd. Enchantment Creature	M
36013	THB	153	0	\N	\N	\N	t	\N	\N	Skophos Maze-Warden	Creature	U
36014	BNG	158	0	\N	\N	\N	\N	\N	\N	Gorgon's Head	Artifact	U
36015	JOU	157	0	t	\N	t	\N	\N	\N	Underworld Coinsmith	Enchantment Creature	U
36019	THB	155	0	\N	\N	\N	t	\N	\N	Stampede Rider	Creature	C
36022	THB	156	0	\N	\N	\N	t	\N	\N	Storm Herald	Creature	R
36024	JOU	160	0	\N	\N	\N	\N	\N	\N	Deserter's Quarters	Artifact	U
36025	THB	157	0	\N	\N	\N	t	\N	\N	Storm's Wrath	Sorcery	R
36026	BNG	162	0	\N	\N	\N	\N	\N	\N	Springleaf Drum	Artifact	U
36027	JOU	161	0	\N	\N	\N	\N	\N	\N	Gold-Forged Sentinel	Artifact Creature	U
36028	THB	158	0	\N	\N	\N	t	\N	\N	Tectonic Giant	Creature	R
36029	BNG	163	0	\N	\N	\N	\N	\N	\N	Temple of Enlightenment	Land	R
36030	JOU	162	0	\N	\N	\N	\N	\N	\N	Hall of Triumph	Lgd. Artifact	R
36031	THB	159	0	\N	\N	\N	t	\N	\N	Thrill of Possibility	Instant	C
36032	BNG	164	0	\N	\N	\N	\N	\N	\N	Temple of Malice	Land	R
36033	JOU	163	0	\N	\N	\N	\N	\N	\N	Mana Confluence	Land	R
36037	THB	161	0	\N	\N	\N	t	\N	\N	Underworld Breach	Enchantment	R
36038	JOU	165	0	\N	\N	\N	\N	\N	\N	Temple of Malady	Land	R
36039	THB	162	0	\N	\N	\N	t	\N	\N	Underworld Fires	Sorcery	U
36040	THB	163	0	\N	\N	\N	t	\N	\N	Underworld Rage-Hound	Creature	C
36041	THB	164	0	\N	\N	\N	t	\N	\N	Wrap in Flames	Sorcery	C
36042	THB	165	0	\N	\N	\N	\N	t	\N	Arasta of the Endless Web	Lgd. Enchantment Creature	R
36043	THB	166	0	\N	\N	\N	\N	t	\N	The Binding of the Titans	Enchantment	U
36044	THB	167	0	\N	\N	\N	\N	t	\N	Chainweb Aracnir	Creature	U
36045	THB	168	0	\N	\N	\N	\N	t	\N	Destiny Spinner	Enchantment Creature	U
36046	THB	169	0	\N	\N	\N	\N	t	\N	Dryad of the Ilysian Grove	Enchantment Creature	R
36047	THB	170	0	\N	\N	\N	\N	t	\N	The First Iroan Games	Enchantment	R
36048	THB	171	0	\N	\N	\N	\N	t	\N	Gift of Strength	Instant	C
36049	THB	172	0	\N	\N	\N	\N	t	\N	Hydra's Growth	Enchantment	U
36050	THB	173	0	\N	\N	\N	\N	t	\N	Hyrax Tower Scout	Creature	C
36051	THB	174	0	\N	\N	\N	\N	t	\N	Ilysian Caryatid	Creature	C
36052	THB	175	0	\N	\N	\N	\N	t	\N	Inspire Awe	Instant	C
36053	THB	176	0	\N	\N	\N	\N	t	\N	Klothys's Design	Sorcery	U
36054	THB	177	0	\N	\N	\N	\N	t	\N	Loathsome Chimera	Creature	C
36055	THB	178	0	\N	\N	\N	\N	t	\N	Mantle of the Wolf	Enchantment	R
36020	BNG	160	1	\N	\N	\N	\N	\N	\N	Pillar of War	Artifact Creature	U
35981	BNG	147	1	\N	\N	\N	t	t	\N	Fanatic of Xenagos	Creature	U
36023	BNG	161	1	\N	\N	\N	\N	\N	\N	Siren Song Lyre	Artifact	U
35969	BNG	143	2	\N	\N	\N	\N	t	\N	Unravel the Aether	Instant	U
36021	JOU	159	1	\N	\N	\N	\N	\N	\N	Chariot of Victory	Artifact	U
35909	BNG	123	1	\N	\N	\N	\N	t	\N	Hero of Leina Tower	Creature	R
35931	JOU	129	3	\N	\N	\N	\N	t	\N	Kruphix's Insight	Sorcery	C
35945	BNG	135	2	\N	\N	\N	\N	t	\N	Raised by Wolves	Enchantment	U
35937	JOU	131	1	\N	\N	\N	\N	t	\N	Nature's Panoply	Instant	C
35894	BNG	118	1	\N	\N	\N	\N	t	\N	Charging Badger	Creature	C
35900	BNG	120	2	\N	\N	\N	\N	t	\N	Culling Mark	Sorcery	C
35965	THB	137	1	\N	\N	\N	t	\N	\N	Hero of the Games	Creature	C
35959	THB	135	1	\N	\N	\N	t	\N	\N	Flummoxed Cyclops	Creature	C
35893	THB	113	1	\N	\N	t	\N	\N	\N	Rage-Scarred Berserker	Creature	C
35961	JOU	139	4	\N	\N	\N	\N	t	\N	Satyr Grovedancer	Creature	C
35895	JOU	117	1	\N	\N	\N	\N	t	\N	Bassara Tower Archer	Creature	U
35934	JOU	130	2	\N	\N	\N	\N	t	\N	Market Festival	Enchantment	C
35966	BNG	142	3	\N	\N	\N	\N	t	\N	Swordwise Centaur	Creature	C
36012	JOU	156	0	\N	t	\N	t	\N	\N	Stormchaser Chimera	Creature	U
36017	BNG	159	0	\N	\N	\N	\N	\N	\N	Heroes' Podium	Lgd. Artifact	R
36018	JOU	158	0	\N	\N	\N	\N	\N	\N	Armory of Iroas	Artifact	U
36035	BNG	165	0	\N	\N	\N	\N	\N	\N	Temple of Plenty	Land	R
36036	JOU	164	0	\N	\N	\N	\N	\N	\N	Temple of Epiphany	Land	R
36034	THB	160	1	\N	\N	\N	t	\N	\N	The Triumph of Anax	Enchantment	U
36016	THB	154	1	\N	\N	\N	t	\N	\N	Skophos Warleader	Creature	C
37611	BRO	5	0	t	\N	\N	\N	\N	\N	Deadly Riposte	Instant	C
36056	THB	179	0	\N	\N	\N	\N	t	\N	Moss Viper	Creature	C
36057	THB	180	0	\N	\N	\N	\N	t	\N	Mystic Repeal	Instant	U
36058	THB	181	0	\N	\N	\N	\N	t	\N	Nessian Boar	Creature	R
36059	THB	182	0	\N	\N	\N	\N	t	\N	Nessian Hornbeetle	Creature	U
36060	THB	183	0	\N	\N	\N	\N	t	\N	Nessian Wanderer	Creature	U
36061	THB	184	0	\N	\N	\N	\N	t	\N	Nexus Wardens	Creature	C
36062	THB	185	0	\N	\N	\N	\N	t	\N	Nylea, Keen-Eyed	Lgd. Enchantment Creature	M
36063	THB	186	0	\N	\N	\N	\N	t	\N	Nylea's Forerunner	Enchantment Creature	C
36064	THB	187	0	\N	\N	\N	\N	t	\N	Nylea's Huntmaster	Creature	C
36066	THB	189	0	\N	\N	\N	\N	t	\N	Nyx Herald	Enchantment Creature	U
36067	THB	190	0	\N	\N	\N	\N	t	\N	Nyxbloom Ancient	Enchantment Creature	M
36068	THB	191	0	\N	\N	\N	\N	t	\N	Nyxborn Colossus	Enchantment Creature	C
36069	THB	192	0	\N	\N	\N	\N	t	\N	Omen of the Hunt	Enchantment	C
36071	THB	194	0	\N	\N	\N	\N	t	\N	Plummet	Instant	C
36073	THB	196	0	\N	\N	\N	\N	t	\N	Renata, Called to the Hunt	Lgd. Enchantment Creature	U
36074	THB	197	0	\N	\N	\N	\N	t	\N	Return to Nature	Instant	C
36075	THB	198	0	\N	\N	\N	\N	t	\N	Setessan Champion	Creature	R
36077	THB	200	0	\N	\N	\N	\N	t	\N	Setessan Skirmisher	Creature	C
36078	THB	201	0	\N	\N	\N	\N	t	\N	Setessan Training	Enchantment	C
36079	THB	202	0	\N	\N	\N	\N	t	\N	Skola Grovedancer	Enchantment Creature	C
36080	THB	203	0	\N	\N	\N	\N	t	\N	Voracious Typhon	Creature	C
36082	THB	205	0	\N	\N	\N	\N	t	\N	Wolfwillow Haven	Enchantment	U
36083	THB	206	0	\N	\N	t	\N	t	\N	Acolyte of Affliction	Creature	U
36084	THB	207	0	\N	\N	t	t	\N	\N	Allure of the Unknown	Sorcery	R
36085	THB	208	0	\N	t	t	\N	\N	\N	Ashiok, Nightmare Muse	Lgd. Planeswalker	M
36086	THB	209	0	\N	t	t	\N	\N	\N	Atris, Oracle of Half-Truths	Lgd. Creature	R
36087	THB	210	0	t	\N	\N	\N	t	\N	Bronzehide Lion	Creature	R
37612	BRO	4	0	t	\N	\N	\N	\N	\N	Calamity's Wake	Instant	U
36089	THB	212	0	\N	t	\N	t	\N	\N	Dalakos, Crafter of Wonders	Lgd. Creature	R
36090	THB	213	0	\N	t	t	\N	\N	\N	Devourer of Memory	Creature	U
36091	THB	214	0	t	t	\N	\N	\N	\N	Dream Trawler	Creature	R
36092	THB	215	0	\N	t	\N	\N	t	\N	Enigmatic Incarnation	Enchantment	R
36093	THB	216	0	\N	t	\N	\N	t	\N	Eutropia the Twice-Favored	Lgd. Creature	U
36094	THB	217	0	\N	\N	\N	t	t	\N	Gallia of the Endless Dance	Lgd. Creature	R
36095	THB	218	0	t	\N	\N	t	\N	\N	Haktos the Unscarred	Lgd. Creature	R
36096	THB	219	0	t	\N	\N	t	\N	\N	Hero of the Nyxborn	Enchantment Creature	U
36097	THB	220	0	\N	\N	\N	t	t	\N	Klothys, God of Destiny	Lgd. Enchantment Creature	M
36098	THB	221	0	\N	\N	t	t	\N	\N	Kroxa, Titan of Death's Hunger	Lgd. Creature	M
36099	THB	222	0	t	\N	t	\N	\N	\N	Kunoros, Hound of Athreos	Lgd. Creature	R
36100	THB	223	0	\N	t	\N	t	\N	\N	Mischievous Chimera	Enchantment Creature	U
36101	THB	224	0	\N	\N	t	\N	t	\N	Polukranos, Unchained	Lgd. Creature	M
36102	THB	225	0	t	\N	t	\N	\N	\N	Rise to Glory	Sorcery	U
36103	THB	226	0	t	\N	\N	\N	t	\N	Siona, Captain of the Pyleas	Lgd. Creature	U
36104	THB	227	0	\N	\N	t	t	\N	\N	Slaughter-Priest of Mogis	Creature	U
36105	THB	228	0	t	t	\N	\N	\N	\N	Staggering Insight	Enchantment	U
36106	THB	229	0	\N	t	\N	\N	t	\N	Uro, Titan of Nature's Wrath	Lgd. Creature	M
36107	THB	230	0	\N	\N	\N	t	t	\N	Warden of the Chained	Creature	U
36108	THB	231	0	\N	\N	\N	\N	\N	\N	Altar of the Pantheon	Artifact	C
36109	THB	232	0	\N	\N	\N	\N	\N	\N	Bronze Sword	Artifact	C
36110	THB	233	0	\N	\N	\N	\N	\N	\N	Entrancing Lyre	Artifact	U
36111	THB	234	0	\N	\N	\N	\N	\N	\N	Mirror Shield	Artifact	U
36112	THB	235	0	\N	\N	\N	\N	\N	\N	Nyx Lotus	Lgd. Artifact	R
36113	THB	236	0	\N	\N	\N	\N	\N	\N	Shadowspear	Lgd. Artifact	R
36115	THB	238	0	\N	\N	\N	\N	\N	\N	Thaumaturge's Familiar	Artifact Creature	C
36116	THB	239	0	\N	\N	\N	\N	\N	\N	Thundering Chariot	Artifact	U
36117	THB	240	0	\N	\N	\N	\N	\N	\N	Traveler's Amulet	Artifact	C
36119	THB	242	0	\N	\N	\N	\N	\N	\N	Field of Ruin	Land	U
36120	THB	243	0	\N	\N	\N	\N	\N	\N	Labyrinth of Skophos	Land	R
36121	THB	244	0	\N	\N	\N	\N	\N	\N	Temple of Abandon	Land	R
36122	THB	245	0	\N	\N	\N	\N	\N	\N	Temple of Deceit	Land	R
36123	THB	246	0	\N	\N	\N	\N	\N	\N	Temple of Enlightenment	Land	R
36124	THB	247	0	\N	\N	\N	\N	\N	\N	Temple of Malice	Land	R
36125	THB	248	0	\N	\N	\N	\N	\N	\N	Temple of Plenty	Land	R
36127	THB	250	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
36128	THB	251	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
36129	THB	252	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
36130	THB	253	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
36131	THB	254	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
36132	THB	255	0	t	\N	\N	\N	\N	\N	Elspeth, Sun's Nemesis	Lgd. Planeswalker	M
36133	THB	256	0	\N	t	t	\N	\N	\N	Ashiok, Nightmare Muse	Lgd. Planeswalker	M
36134	THB	257	0	t	\N	\N	\N	t	\N	Calix, Destiny's Hand	Lgd. Planeswalker	M
36135	THB	258	0	t	\N	\N	\N	\N	\N	Daxos, Blessed by the Sun	Lgd. Enchantment Creature	U
36136	THB	259	0	t	\N	\N	\N	\N	\N	Heliod, Sun-Crowned	Lgd. Enchantment Creature	M
36137	THB	260	0	\N	t	\N	\N	\N	\N	Callaphe, Beloved of the Sea	Lgd. Enchantment Creature	U
36138	THB	261	0	\N	t	\N	\N	\N	\N	Thassa, Deep-Dwelling	Lgd. Enchantment Creature	M
36139	THB	262	0	\N	\N	t	\N	\N	\N	Erebos, Bleak-Hearted	Lgd. Enchantment Creature	M
36140	THB	263	0	\N	\N	t	\N	\N	\N	Tymaret, Chosen from Death	Lgd. Enchantment Creature	U
36141	THB	264	0	\N	\N	\N	t	\N	\N	Anax, Hardened in the Forge	Lgd. Enchantment Creature	U
36142	THB	265	0	\N	\N	\N	t	\N	\N	Purphoros, Bronze-Blooded	Lgd. Enchantment Creature	M
36143	THB	266	0	\N	\N	\N	\N	t	\N	Nylea, Keen-Eyed	Lgd. Enchantment Creature	M
36144	THB	267	0	\N	\N	\N	\N	t	\N	Renata, Called to the Hunt	Lgd. Enchantment Creature	U
36065	THB	188	1	\N	\N	\N	\N	t	\N	Nylea's Intervention	Sorcery	R
36118	THB	241	1	\N	\N	\N	\N	\N	\N	Wings of Hubris	Artifact	C
36126	THB	249	1	\N	\N	\N	\N	\N	\N	Unknown Shores	Land	C
36114	THB	237	1	\N	\N	\N	\N	\N	\N	Soul-Guide Lantern	Artifact	U
36072	THB	195	1	\N	\N	\N	\N	t	\N	Relentless Pursuit	Sorcery	C
36081	THB	204	1	\N	\N	\N	\N	t	\N	Warbriar Blessing	Enchantment	C
36076	THB	199	1	\N	\N	\N	\N	t	\N	Setessan Petitioner	Creature	U
36070	THB	193	1	\N	\N	\N	\N	t	\N	Pheres-Band Brawler	Creature	U
36145	THB	268	0	\N	\N	\N	t	t	\N	Klothys, God of Destiny	Lgd. Enchantment Creature	M
36146	THB	269	0	t	\N	t	\N	\N	\N	Athreos, Shroud-Veiled	Lgd. Enchantment Creature	M
36147	THB	270	0	t	\N	\N	\N	\N	\N	Elspeth, Undaunted Hero	Lgd. Planeswalker	M
36148	THB	271	0	t	\N	\N	\N	\N	\N	Eidolon of Inspiration	Enchantment Creature	U
36149	THB	272	0	t	\N	\N	\N	\N	\N	Elspeth's Devotee	Creature	R
36150	THB	273	0	t	\N	\N	\N	\N	\N	Sunlit Hoplite	Creature	C
36151	THB	274	0	\N	t	t	\N	\N	\N	Ashiok, Sculptor of Fears	Lgd. Planeswalker	M
36152	THB	275	0	\N	t	\N	\N	\N	\N	Swimmer in Nightmares	Creature	U
36153	THB	276	0	\N	\N	t	\N	\N	\N	Mindwrack Harpy	Enchantment Creature	C
36154	THB	277	0	\N	t	t	\N	\N	\N	Ashiok's Forerunner	Creature	R
36155	THB	278	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
36156	THB	279	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
36157	THB	280	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
36158	THB	281	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
36159	THB	282	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
36160	THB	283	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
36161	THB	284	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
36162	THB	285	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
36163	THB	286	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
36164	THB	287	0	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
36165	THB	288	0	t	\N	\N	\N	\N	\N	Grasping Giant	Creature	R
36166	THB	289	0	t	\N	\N	\N	\N	\N	Victory's Envoy	Creature	R
36167	THB	290	0	\N	t	\N	\N	\N	\N	Sphinx Mindbreaker	Creature	R
36168	THB	291	0	\N	t	\N	\N	\N	\N	Serpent of Yawning Depths	Enchantment Creature	R
36169	THB	292	0	\N	\N	t	\N	\N	\N	Demon of Loathing	Creature	R
36170	THB	293	0	\N	\N	t	\N	\N	\N	Underworld Sentinel	Creature	R
36171	THB	294	0	\N	\N	\N	t	\N	\N	Deathbellow War Cry	Sorcery	R
36172	THB	295	0	\N	\N	\N	t	\N	\N	Terror of Mount Velus	Creature	R
36173	THB	296	0	\N	\N	\N	\N	t	\N	Ironscale Hydra	Creature	R
36174	THB	297	0	\N	\N	\N	\N	t	\N	Treeshaker Chimera	Creature	R
36175	THB	298	0	t	\N	\N	\N	\N	\N	Archon of Sun's Grace	Creature	R
36176	THB	299	0	t	\N	\N	\N	\N	\N	Eidolon of Obstruction	Enchantment Creature	R
36177	THB	300	0	t	\N	\N	\N	\N	\N	Heliod's Intervention	Instant	R
36178	THB	301	0	t	\N	\N	\N	\N	\N	Idyllic Tutor	Sorcery	R
36179	THB	302	0	t	\N	\N	\N	\N	\N	Shatter the Sky	Sorcery	R
36180	THB	303	0	t	\N	\N	\N	\N	\N	Taranika, Akroan Veteran	Lgd. Creature	R
36181	THB	304	0	\N	t	\N	\N	\N	\N	Ashiok's Erasure	Enchantment	R
36182	THB	305	0	\N	t	\N	\N	\N	\N	Nadir Kraken	Creature	R
36183	THB	306	0	\N	t	\N	\N	\N	\N	Protean Thaumaturge	Creature	R
36184	THB	307	0	\N	t	\N	\N	\N	\N	Thassa's Intervention	Instant	R
36185	THB	308	0	\N	t	\N	\N	\N	\N	Thassa's Oracle	Creature	R
36186	THB	309	0	\N	t	\N	\N	\N	\N	Thryx, the Sudden Storm	Lgd. Creature	R
36187	THB	310	0	\N	t	\N	\N	\N	\N	Wavebreak Hippocamp	Enchantment Creature	R
36188	THB	311	0	\N	\N	t	\N	\N	\N	Aphemia, the Cacophony	Lgd. Enchantment Creature	R
36189	THB	312	0	\N	\N	t	\N	\N	\N	Eat to Extinction	Instant	R
36190	THB	313	0	\N	\N	t	\N	\N	\N	Erebos's Intervention	Instant	R
36191	THB	314	0	\N	\N	t	\N	\N	\N	Gravebreaker Lamia	Enchantment Creature	R
36192	THB	315	0	\N	\N	t	\N	\N	\N	Nightmare Shepherd	Enchantment Creature	R
36193	THB	316	0	\N	\N	t	\N	\N	\N	Treacherous Blessing	Enchantment	R
36194	THB	317	0	\N	\N	t	\N	\N	\N	Woe Strider	Creature	R
36195	THB	318	0	\N	\N	\N	t	\N	\N	Ox of Agonas	Creature	M
36196	THB	319	0	\N	\N	\N	t	\N	\N	Phoenix of Ash	Creature	R
36197	THB	320	0	\N	\N	\N	t	\N	\N	Purphoros's Intervention	Sorcery	R
36198	THB	321	0	\N	\N	\N	t	\N	\N	Storm Herald	Creature	R
36199	THB	322	0	\N	\N	\N	t	\N	\N	Storm's Wrath	Sorcery	R
36200	THB	323	0	\N	\N	\N	t	\N	\N	Tectonic Giant	Creature	R
36201	THB	324	0	\N	\N	\N	t	\N	\N	Underworld Breach	Enchantment	R
36202	THB	325	0	\N	\N	\N	\N	t	\N	Arasta of the Endless Web	Lgd. Enchantment Creature	R
36203	THB	326	0	\N	\N	\N	\N	t	\N	Dryad of the Ilysian Grove	Enchantment Creature	R
36204	THB	327	0	\N	\N	\N	\N	t	\N	Mantle of the Wolf	Enchantment	R
36205	THB	328	0	\N	\N	\N	\N	t	\N	Nessian Boar	Creature	R
36206	THB	329	0	\N	\N	\N	\N	t	\N	Nylea's Intervention	Sorcery	R
36207	THB	330	0	\N	\N	\N	\N	t	\N	Nyxbloom Ancient	Enchantment Creature	M
36208	THB	331	0	\N	\N	\N	\N	t	\N	Setessan Champion	Creature	R
36209	THB	332	0	\N	\N	t	t	\N	\N	Allure of the Unknown	Sorcery	R
36210	THB	333	0	\N	t	t	\N	\N	\N	Atris, Oracle of Half-Truths	Lgd. Creature	R
36211	THB	334	0	t	\N	\N	\N	t	\N	Bronzehide Lion	Creature	R
36212	THB	335	0	\N	t	\N	t	\N	\N	Dalakos, Crafter of Wonders	Lgd. Creature	R
36213	THB	336	0	t	t	\N	\N	\N	\N	Dream Trawler	Creature	R
36214	THB	337	0	\N	t	\N	\N	t	\N	Enigmatic Incarnation	Enchantment	R
36215	THB	338	0	\N	\N	\N	t	t	\N	Gallia of the Endless Dance	Lgd. Creature	R
36216	THB	339	0	t	\N	\N	t	\N	\N	Haktos the Unscarred	Lgd. Creature	R
36217	THB	340	0	\N	\N	t	t	\N	\N	Kroxa, Titan of Death's Hunger	Lgd. Creature	M
36218	THB	341	0	t	\N	t	\N	\N	\N	Kunoros, Hound of Athreos	Lgd. Creature	R
36219	THB	342	0	\N	\N	t	\N	t	\N	Polukranos, Unchained	Lgd. Creature	M
36220	THB	343	0	\N	t	\N	\N	t	\N	Uro, Titan of Nature's Wrath	Lgd. Creature	M
36221	THB	344	0	\N	\N	\N	\N	\N	\N	Nyx Lotus	Lgd. Artifact	R
36222	THB	345	0	\N	\N	\N	\N	\N	\N	Shadowspear	Lgd. Artifact	R
36223	THB	346	0	\N	\N	\N	\N	\N	\N	Labyrinth of Skophos	Land	R
36224	THB	347	0	\N	\N	\N	\N	\N	\N	Temple of Abandon	Land	R
36225	THB	348	0	\N	\N	\N	\N	\N	\N	Temple of Deceit	Land	R
36226	THB	349	0	\N	\N	\N	\N	\N	\N	Temple of Enlightenment	Land	R
36227	THB	350	0	\N	\N	\N	\N	\N	\N	Temple of Malice	Land	R
36228	THB	351	0	\N	\N	\N	\N	\N	\N	Temple of Plenty	Land	R
36229	THB	352	0	\N	\N	\N	\N	t	\N	Arasta of the Endless Web	Lgd. Enchantment Creature	R
36230	THB	353	0	t	\N	\N	\N	\N	\N	Alseid of Life's Bounty	Enchantment Creature	U
36231	THB	354	0	\N	t	\N	\N	\N	\N	Thirst for Meaning	Instant	C
36232	THB	355	0	\N	\N	t	\N	\N	\N	Gray Merchant of Asphodel	Creature	U
36233	THB	356	0	\N	\N	\N	t	\N	\N	Thrill of Possibility	Instant	C
36234	THB	357	0	\N	\N	\N	\N	t	\N	Wolfwillow Haven	Enchantment	U
2034	KLD	372	1	\N	\N	\N	\N	\N	\N	Tyrite Sanctum	Land	R
921	GOR	69	1	\N	\N	\N	\N	\N	\N	Doom Whisperer	Creature	M
32530	SHM	218	1	\N	\N	\N	t	t	\N	Tattermunge Duo	Creature	C
27871	ARB	21	1	\N	t	t	\N	\N	\N	Illusory Demon	Creature	U
35972	BNG	144	1	t	t	t	t	t	\N	Chromanticore	Enchantment Creature	M
35978	BNG	146	1	t	t	\N	\N	\N	\N	Ephara's Enlightenment	Enchantment	U
32019	THS	179	1	\N	\N	\N	\N	t	\N	Staunch-Hearted Warrior	Creature	C
31590	THS	149	2	\N	\N	\N	\N	t	\N	Anthousa, Setessan Hero	Lgd. Creature	R
35810	BNG	90	1	\N	\N	\N	t	\N	\N	Cyclops of One-Eyed Pass	Creature	C
35703	JOU	53	1	\N	t	\N	\N	\N	\N	Thassa's Devourer	Enchantment Creature	C
35997	JOU	151	1	\N	t	\N	t	\N	\N	Keranos, God of Storms	Lgd. Enchantment Creature	M
32439	THS	209	1	\N	\N	\N	t	t	\N	Xenagos, the Reveler	Lgd. Planeswalker	M
36088	THB	211	1	t	\N	\N	\N	t	\N	Calix, Destiny's Hand	Lgd. Planeswalker	M
37613	BRO	3	0	t	\N	\N	\N	\N	\N	Ambush Paratrooper	Creature	C
34043	ELD	267	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
34010	ELD	234	1	\N	\N	\N	\N	\N	\N	Spinning Wheel	Artifact	U
1340	MAO	229	1	\N	\N	\N	\N	\N	\N	Hangarback Walker	Artifact Creature	R
33883	ELD	107	1	\N	\N	t	\N	\N	\N	Syr Konrad, the Grim	Lgd. Creature	U
33467	STX	73	3	\N	\N	t	\N	\N	\N	Hunt for Specimens	Sorcery	C
33643	STX	249	3	\N	\N	t	\N	t	\N	Witherbloom Pledgemage	Creature	C
2366	NPH	144	1	\N	\N	\N	\N	\N	\N	Mindcrank	Artifact	U
2356	NPH	134	1	\N	\N	\N	\N	\N	\N	Darksteel Relic	Artifact	U
36245	ISD	8	1	t	\N	\N	\N	\N	\N	Cloistered Youth // Unholy Fiend	Creature	U
2241	NPH	19	4	\N	\N	\N	\N	\N	\N	Porcelain Legionnaire	Artifact Creature	C
2072	MIB	5	2	t	\N	\N	\N	\N	\N	Divine Offering	Instant	C
2176	MIB	109	2	\N	\N	\N	\N	\N	\N	Hexplate Golem	Artifact Creature	C
33255	SHM	291	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
36269	DKA	19	1	t	\N	\N	\N	\N	\N	Sanctuary Cat	Creature	C
32266	LRW	206	1	\N	\N	\N	\N	t	\N	Elvish Handservant	Creature	C
32954	LRW	257	1	\N	\N	\N	\N	\N	\N	Herbal Poultice	Artifact	C
36235	DKA	1	0	t	\N	\N	\N	\N	\N	Archangel's Light	Sorcery	M
36236	DKA	3	0	t	\N	\N	\N	\N	\N	Break of Day	Instant	C
36237	DKA	7	0	t	\N	\N	\N	\N	\N	Faith's Shield	Instant	U
36239	DKA	2	0	t	\N	\N	\N	\N	\N	Bar the Door	Instant	C
36240	ISD	2	0	t	\N	\N	\N	\N	\N	Angel of Flight Alabaster	Creature	R
36241	ISD	7	0	t	\N	\N	\N	\N	\N	Chapel Geist	Creature	C
36243	ISD	5	0	t	\N	\N	\N	\N	\N	Bonds of Faith	Enchantment	C
36242	DKA	4	0	t	\N	\N	\N	\N	\N	Burden of Guilt	Enchantment	C
36244	DKA	8	0	t	\N	\N	\N	\N	\N	Gather the Townsfolk	Sorcery	C
36246	ISD	6	0	t	\N	\N	\N	\N	\N	Champion of the Parish	Creature	R
36247	DKA	5	0	t	\N	\N	\N	\N	\N	Curse of Exhaustion	Enchantment	U
36248	ISD	3	0	t	\N	\N	\N	\N	\N	Angelic Overseer	Creature	M
36249	DKA	9	0	t	\N	\N	\N	\N	\N	Gavony Ironwright	Creature	U
36252	DKA	11	0	t	\N	\N	\N	\N	\N	Increasing Devotion	Sorcery	R
36253	DKA	10	0	t	\N	\N	\N	\N	\N	Hollowhenge Spirit	Creature	U
36254	DKA	12	0	t	\N	\N	\N	\N	\N	Lingering Souls	Sorcery	U
36251	DKA	6	0	t	\N	\N	\N	\N	\N	Elgaud Inquisitor	Creature	C
36255	ISD	10	0	t	\N	\N	\N	\N	\N	Divine Reckoning	Sorcery	R
36256	DKA	13	0	t	\N	\N	\N	\N	\N	Loyal Cathar // Unhallowed Cathar	Creature	C
36258	DKA	14	0	t	\N	\N	\N	\N	\N	Midnight Guard	Creature	C
36259	ISD	14	0	t	\N	\N	\N	\N	\N	Feeling of Dread	Instant	C
36260	ISD	12	0	t	\N	\N	\N	\N	\N	Elder Cathar	Creature	C
36261	DKA	15	0	t	\N	\N	\N	\N	\N	Niblis of the Mist	Creature	C
36263	ISD	13	0	t	\N	\N	\N	\N	\N	Elite Inquisitor	Creature	R
36264	DKA	16	0	t	\N	\N	\N	\N	\N	Niblis of the Urn	Creature	U
36262	ISD	4	0	t	\N	\N	\N	\N	\N	Avacynian Priest	Creature	C
36265	DKA	17	0	t	\N	\N	\N	\N	\N	Ray of Revelation	Instant	C
36267	DKA	18	0	t	\N	\N	\N	\N	\N	Requiem Angel	Creature	R
36268	ISD	16	0	t	\N	\N	\N	\N	\N	Gallows Warden	Creature	U
36271	DKA	20	0	t	\N	\N	\N	\N	\N	Séance	Enchantment	R
36272	ISD	18	0	t	\N	\N	\N	\N	\N	Ghostly Possession	Enchantment	C
36273	DKA	21	0	t	\N	\N	\N	\N	\N	Silverclaw Griffin	Creature	C
36274	ISD	19	0	t	\N	\N	\N	\N	\N	Intangible Virtue	Enchantment	U
36275	DKA	22	0	t	\N	\N	\N	\N	\N	Skillful Lunge	Instant	C
36276	ISD	20	0	t	\N	\N	\N	\N	\N	Mausoleum Guard	Creature	U
36277	DKA	23	0	t	\N	\N	\N	\N	\N	Sudden Disappearance	Sorcery	R
36278	ISD	21	0	t	\N	\N	\N	\N	\N	Mentor of the Meek	Creature	R
36279	DKA	24	0	t	\N	\N	\N	\N	\N	Thalia, Guardian of Thraben	Lgd. Creature	R
36280	ISD	22	0	t	\N	\N	\N	\N	\N	Midnight Haunting	Instant	U
36281	DKA	25	0	t	\N	\N	\N	\N	\N	Thraben Doomsayer	Creature	R
36282	ISD	23	0	t	\N	\N	\N	\N	\N	Mikaeus, the Lunarch	Lgd. Creature	M
36283	DKA	26	0	t	\N	\N	\N	\N	\N	Thraben Heretic	Creature	U
36284	ISD	24	0	t	\N	\N	\N	\N	\N	Moment of Heroism	Instant	C
36285	DKA	27	0	\N	t	\N	\N	\N	\N	Artful Dodge	Sorcery	C
36286	ISD	25	0	t	\N	\N	\N	\N	\N	Nevermore	Enchantment	R
36287	DKA	28	0	\N	t	\N	\N	\N	\N	Beguiler of Wills	Creature	M
36288	ISD	26	0	t	\N	\N	\N	\N	\N	Paraselene	Sorcery	U
36289	DKA	29	0	\N	t	\N	\N	\N	\N	Bone to Ash	Instant	C
36290	ISD	27	0	t	\N	\N	\N	\N	\N	Purify the Grave	Instant	U
36291	DKA	30	0	\N	t	\N	\N	\N	\N	Call to the Kindred	Enchantment	R
36292	ISD	28	0	t	\N	\N	\N	\N	\N	Rally the Peasants	Instant	U
36293	DKA	31	0	\N	t	\N	\N	\N	\N	Chant of the Skifsang	Enchantment	C
36294	ISD	29	0	t	\N	\N	\N	\N	\N	Rebuke	Instant	C
36266	ISD	15	3	t	\N	\N	\N	\N	\N	Fiend Hunter	Creature	U
36238	ISD	1	1	t	\N	\N	\N	\N	\N	Abbey Griffin	Creature	C
36257	ISD	11	2	t	\N	\N	\N	\N	\N	Doomed Traveler	Creature	C
36270	ISD	17	1	t	\N	\N	\N	\N	\N	Geist-Honored Monk	Creature	R
36250	ISD	9	1	t	\N	\N	\N	\N	\N	Dearly Departed	Creature	R
35600	BNG	20	2	t	\N	\N	\N	\N	\N	Mortal's Ardor	Instant	C
35786	BNG	82	3	\N	\N	t	\N	\N	\N	Servant of Tymaret	Creature	C
37614	BRO	11	1	t	\N	\N	\N	\N	\N	Lay Down Arms	Sorcery	U
36295	DKA	32	0	\N	t	\N	\N	\N	\N	Chill of Foreboding	Sorcery	U
36302	ISD	33	0	t	\N	\N	\N	\N	\N	Smite the Monstrous	Instant	C
36303	DKA	36	0	\N	t	\N	\N	\N	\N	Dungeon Geists	Creature	R
36306	ISD	35	0	t	\N	\N	\N	\N	\N	Spectral Rider	Creature	U
36307	DKA	38	0	\N	t	\N	\N	\N	\N	Griptide	Instant	C
36316	ISD	40	0	t	\N	\N	\N	\N	\N	Urgent Exorcism	Instant	C
36317	DKA	43	0	\N	t	\N	\N	\N	\N	Nephalia Seakite	Creature	C
36320	ISD	42	0	t	\N	\N	\N	\N	\N	Voiceless Spirit	Creature	C
36321	DKA	45	0	\N	t	\N	\N	\N	\N	Relentless Skaabs	Creature	U
36324	ISD	44	0	\N	t	\N	\N	\N	\N	Back from the Brink	Enchantment	R
36325	DKA	47	0	\N	t	\N	\N	\N	\N	Screeching Skaab	Creature	C
36326	ISD	45	0	\N	t	\N	\N	\N	\N	Battleground Geist	Creature	U
36327	DKA	48	0	\N	t	\N	\N	\N	\N	Secrets of the Dead	Enchantment	U
36332	ISD	48	0	\N	t	\N	\N	\N	\N	Claustrophobia	Enchantment	C
36333	DKA	51	0	\N	t	\N	\N	\N	\N	Stormbound Geist	Creature	C
36337	DKA	53	0	\N	t	\N	\N	\N	\N	Tower Geist	Creature	U
36338	ISD	51	0	\N	t	\N	\N	\N	\N	Delver of Secrets // Insectile Aberration	Creature	C
36339	DKA	54	0	\N	\N	t	\N	\N	\N	Black Cat	Creature	C
36340	ISD	52	0	\N	t	\N	\N	\N	\N	Deranged Assistant	Creature	C
36341	DKA	55	0	\N	\N	t	\N	\N	\N	Chosen of Markov // Markov's Servant	Creature	C
36344	ISD	54	0	\N	t	\N	\N	\N	\N	Dream Twist	Instant	C
36345	DKA	57	0	\N	\N	t	\N	\N	\N	Curse of Thirst	Enchantment	U
36348	ISD	56	0	\N	t	\N	\N	\N	\N	Fortress Crab	Creature	C
36349	DKA	59	0	\N	\N	t	\N	\N	\N	Death's Caress	Sorcery	C
36350	ISD	57	0	\N	t	\N	\N	\N	\N	Frightful Delusion	Instant	C
36351	DKA	60	0	\N	\N	t	\N	\N	\N	Falkenrath Torturer	Creature	C
36352	ISD	58	0	\N	t	\N	\N	\N	\N	Grasp of Phantoms	Sorcery	U
36353	DKA	61	0	\N	\N	t	\N	\N	\N	Farbog Boneflinger	Creature	U
36354	ISD	59	0	\N	t	\N	\N	\N	\N	Hysterical Blindness	Instant	C
36355	DKA	62	0	\N	\N	t	\N	\N	\N	Fiend of the Shadows	Creature	R
36358	ISD	61	0	\N	t	\N	\N	\N	\N	Laboratory Maniac	Creature	R
36359	DKA	64	0	\N	\N	t	\N	\N	\N	Gravecrawler	Creature	R
36369	DKA	69	0	\N	\N	t	\N	\N	\N	Increasing Ambition	Sorcery	R
36372	ISD	68	0	\N	t	\N	\N	\N	\N	Mirror-Mad Phantasm	Creature	M
36373	DKA	71	0	\N	\N	t	\N	\N	\N	Ravenous Demon // Archdemon of Greed	Creature	R
36374	ISD	69	0	\N	t	\N	\N	\N	\N	Moon Heron	Creature	C
36375	DKA	72	0	\N	\N	t	\N	\N	\N	Reap the Seagraf	Sorcery	C
36376	ISD	70	0	\N	t	\N	\N	\N	\N	Murder of Crows	Creature	U
36377	DKA	73	0	\N	\N	t	\N	\N	\N	Sightless Ghoul	Creature	C
36380	ISD	72	0	\N	t	\N	\N	\N	\N	Runic Repetition	Sorcery	U
36381	DKA	75	0	\N	\N	t	\N	\N	\N	Spiteful Shadows	Enchantment	C
36390	ISD	77	0	\N	t	\N	\N	\N	\N	Skaab Ruinator	Creature	M
36391	DKA	80	0	\N	\N	t	\N	\N	\N	Zombie Apocalypse	Sorcery	R
36394	ISD	79	0	\N	t	\N	\N	\N	\N	Spectral Flight	Enchantment	C
36395	DKA	82	0	\N	\N	\N	t	\N	\N	Alpha Brawl	Sorcery	R
36404	ISD	84	0	\N	t	\N	\N	\N	\N	Undead Alchemist	Creature	R
36405	DKA	87	0	\N	\N	\N	t	\N	\N	Faithless Looting	Sorcery	C
36408	ISD	86	0	\N	\N	t	\N	\N	\N	Altar's Reap	Instant	C
36409	DKA	89	0	\N	\N	\N	t	\N	\N	Flayer of the Hatebound	Creature	R
36412	ISD	88	0	\N	\N	t	\N	\N	\N	Bitterheart Witch	Creature	U
36413	DKA	91	0	\N	\N	\N	t	\N	\N	Forge Devil	Creature	C
36414	ISD	89	0	\N	\N	t	\N	\N	\N	Bloodgift Demon	Creature	R
36415	DKA	92	0	\N	\N	\N	t	\N	\N	Heckling Fiends	Creature	U
36417	DKA	93	0	\N	\N	\N	t	\N	\N	Hellrider	Creature	R
36420	ISD	92	0	\N	\N	t	\N	\N	\N	Bump in the Night	Sorcery	C
36421	DKA	95	0	\N	\N	\N	t	\N	\N	Increasing Vengeance	Instant	R
36424	ISD	94	0	\N	\N	t	\N	\N	\N	Curse of Death's Hold	Enchantment	R
36425	DKA	97	0	\N	\N	\N	t	\N	\N	Markov Warlord	Creature	U
36429	DKA	99	0	\N	\N	\N	t	\N	\N	Moonveil Dragon	Creature	M
36430	ISD	97	0	\N	\N	t	\N	\N	\N	Diregraf Ghoul	Creature	U
36431	DKA	100	0	\N	\N	\N	t	\N	\N	Nearheath Stalker	Creature	C
36434	ISD	99	0	\N	\N	t	\N	\N	\N	Endless Ranks of the Dead	Enchantment	R
36435	DKA	102	0	\N	\N	\N	t	\N	\N	Russet Wolves	Creature	C
36438	ISD	101	0	\N	\N	t	\N	\N	\N	Ghoulcaller's Chant	Sorcery	C
36439	DKA	104	0	\N	\N	\N	t	\N	\N	Shattered Perception	Sorcery	U
36440	ISD	102	0	\N	\N	t	\N	\N	\N	Ghoulraiser	Creature	C
36441	DKA	105	0	\N	\N	\N	t	\N	\N	Talons of Falkenrath	Enchantment	C
36442	ISD	103	0	\N	\N	t	\N	\N	\N	Gruesome Deformity	Enchantment	C
36443	DKA	106	0	\N	\N	\N	t	\N	\N	Torch Fiend	Creature	C
36444	ISD	104	0	\N	\N	t	\N	\N	\N	Heartless Summoning	Enchantment	R
36445	DKA	107	0	\N	\N	\N	t	\N	\N	Wrack with Madness	Sorcery	C
36448	ISD	106	0	\N	\N	t	\N	\N	\N	Manor Skeleton	Creature	C
36449	DKA	109	0	\N	\N	\N	\N	t	\N	Clinging Mists	Instant	C
36452	ISD	108	0	\N	\N	t	\N	\N	\N	Maw of the Mire	Sorcery	C
36460	ISD	112	0	\N	\N	t	\N	\N	\N	Reaper from the Abyss	Creature	M
36461	DKA	115	0	\N	\N	\N	\N	t	\N	Ghoultree	Creature	R
36464	ISD	114	0	\N	\N	t	\N	\N	\N	Screeching Bat // Stalking Vampire	Creature	U
36465	DKA	117	0	\N	\N	\N	\N	t	\N	Grim Flowering	Sorcery	U
36472	ISD	118	0	\N	\N	t	\N	\N	\N	Stromkirk Patrol	Creature	C
36473	DKA	121	0	\N	\N	\N	\N	t	\N	Kessig Recluse	Creature	C
36476	ISD	120	0	\N	\N	t	\N	\N	\N	Typhoid Rats	Creature	C
36477	DKA	123	0	\N	\N	\N	\N	t	\N	Lost in the Woods	Enchantment	R
36478	ISD	121	0	\N	\N	t	\N	\N	\N	Unbreathing Horde	Creature	R
36479	DKA	124	0	\N	\N	\N	\N	t	\N	Predator Ooze	Creature	R
36482	ISD	123	0	\N	\N	t	\N	\N	\N	Vampire Interloper	Creature	C
36490	ISD	127	0	\N	\N	\N	t	\N	\N	Ancient Grudge	Instant	C
36491	DKA	130	0	\N	\N	\N	\N	t	\N	Village Survivors	Creature	U
36498	ISD	131	0	\N	\N	\N	t	\N	\N	Bloodcrazed Neonate	Creature	C
36368	ISD	66	1	\N	t	\N	\N	\N	\N	Memory's Journey	Instant	U
36453	DKA	111	2	\N	\N	\N	\N	t	\N	Dawntreader Elk	Creature	C
36336	ISD	50	2	\N	t	\N	\N	\N	\N	Curse of the Bloody Tome	Enchantment	C
36428	ISD	96	3	\N	\N	t	\N	\N	\N	Dead Weight	Enchantment	C
36328	ISD	46	1	\N	t	\N	\N	\N	\N	Cackling Counterpart	Instant	R
36416	ISD	90	1	\N	\N	t	\N	\N	\N	Bloodline Keeper // Lord of Lineage	Creature	R
36296	ISD	30	0	t	\N	\N	\N	\N	\N	Selfless Cathar	Creature	C
36297	DKA	33	0	\N	t	\N	\N	\N	\N	Counterlash	Instant	R
36298	ISD	31	0	t	\N	\N	\N	\N	\N	Silverchase Fox	Creature	C
36299	DKA	34	0	\N	t	\N	\N	\N	\N	Curse of Echoes	Enchantment	R
36300	ISD	32	0	t	\N	\N	\N	\N	\N	Slayer of the Wicked	Creature	U
36301	DKA	35	0	\N	t	\N	\N	\N	\N	Divination	Sorcery	C
36304	ISD	34	0	t	\N	\N	\N	\N	\N	Spare from Evil	Instant	C
36305	DKA	37	0	\N	t	\N	\N	\N	\N	Geralf's Mindcrusher	Creature	R
36308	ISD	36	0	t	\N	\N	\N	\N	\N	Stony Silence	Enchantment	R
36309	DKA	39	0	\N	t	\N	\N	\N	\N	Havengul Runebinder	Creature	R
36310	ISD	37	0	t	\N	\N	\N	\N	\N	Thraben Purebloods	Creature	C
36311	DKA	40	0	\N	t	\N	\N	\N	\N	Headless Skaab	Creature	C
36312	ISD	38	0	t	\N	\N	\N	\N	\N	Thraben Sentry // Thraben Militia	Creature	C
36313	DKA	41	0	\N	t	\N	\N	\N	\N	Increasing Confusion	Sorcery	R
36315	DKA	42	0	\N	t	\N	\N	\N	\N	Mystic Retrieval	Sorcery	U
36319	DKA	44	0	\N	t	\N	\N	\N	\N	Niblis of the Breath	Creature	U
36322	ISD	43	0	\N	t	\N	\N	\N	\N	Armored Skaab	Creature	C
36323	DKA	46	0	\N	t	\N	\N	\N	\N	Saving Grasp	Instant	C
36330	ISD	47	0	\N	t	\N	\N	\N	\N	Civilized Scholar // Homicidal Brute	Creature	U
36331	DKA	50	0	\N	t	\N	\N	\N	\N	Soul Seizer // Ghastly Haunting	Creature	U
36334	ISD	49	0	\N	t	\N	\N	\N	\N	Curiosity	Enchantment	U
36335	DKA	52	0	\N	t	\N	\N	\N	\N	Thought Scour	Instant	C
36342	ISD	53	0	\N	t	\N	\N	\N	\N	Dissipate	Instant	U
36343	DKA	56	0	\N	\N	t	\N	\N	\N	Curse of Misfortunes	Enchantment	R
36346	ISD	55	0	\N	t	\N	\N	\N	\N	Forbidden Alchemy	Instant	C
36347	DKA	58	0	\N	\N	t	\N	\N	\N	Deadly Allure	Sorcery	U
36356	ISD	60	0	\N	t	\N	\N	\N	\N	Invisible Stalker	Creature	U
36357	DKA	63	0	\N	\N	t	\N	\N	\N	Geralf's Messenger	Creature	R
36360	ISD	62	0	\N	t	\N	\N	\N	\N	Lantern Spirit	Creature	U
36361	DKA	65	0	\N	\N	t	\N	\N	\N	Gravepurge	Instant	C
36362	ISD	63	0	\N	t	\N	\N	\N	\N	Lost in the Mist	Instant	C
36363	DKA	66	0	\N	\N	t	\N	\N	\N	Gruesome Discovery	Sorcery	C
36365	DKA	67	0	\N	\N	t	\N	\N	\N	Harrowing Journey	Sorcery	U
36366	ISD	65	0	\N	t	\N	\N	\N	\N	Makeshift Mauler	Creature	C
36367	DKA	68	0	\N	\N	t	\N	\N	\N	Highborn Ghoul	Creature	C
36370	ISD	67	0	\N	t	\N	\N	\N	\N	Mindshrieker	Creature	R
36371	DKA	70	0	\N	\N	t	\N	\N	\N	Mikaeus, the Unhallowed	Lgd. Creature	M
36378	ISD	71	0	\N	t	\N	\N	\N	\N	Rooftop Storm	Enchantment	R
36379	DKA	74	0	\N	\N	t	\N	\N	\N	Skirsdag Flayer	Creature	U
36382	ISD	73	0	\N	t	\N	\N	\N	\N	Selhoff Occultist	Creature	C
36384	ISD	74	0	\N	t	\N	\N	\N	\N	Sensory Deprivation	Enchantment	C
36385	DKA	77	0	\N	\N	t	\N	\N	\N	Undying Evil	Instant	C
36386	ISD	75	0	\N	t	\N	\N	\N	\N	Silent Departure	Sorcery	C
36387	DKA	78	0	\N	\N	t	\N	\N	\N	Vengeful Vampire	Creature	U
36388	ISD	76	0	\N	t	\N	\N	\N	\N	Skaab Goliath	Creature	U
36389	DKA	79	0	\N	\N	t	\N	\N	\N	Wakedancer	Creature	U
36392	ISD	78	0	\N	t	\N	\N	\N	\N	Snapcaster Mage	Creature	R
36393	DKA	81	0	\N	\N	\N	t	\N	\N	Afflicted Deserter // Werewolf Ransacker	Creature	U
36396	ISD	80	0	\N	t	\N	\N	\N	\N	Stitched Drake	Creature	C
36397	DKA	83	0	\N	\N	\N	t	\N	\N	Blood Feud	Sorcery	U
36398	ISD	81	0	\N	t	\N	\N	\N	\N	Stitcher's Apprentice	Creature	C
36399	DKA	84	0	\N	\N	\N	t	\N	\N	Burning Oil	Instant	U
36401	DKA	85	0	\N	\N	\N	t	\N	\N	Curse of Bloodletting	Enchantment	R
36410	ISD	87	0	\N	\N	t	\N	\N	\N	Army of the Damned	Sorcery	M
36411	DKA	90	0	\N	\N	\N	t	\N	\N	Fling	Instant	C
36419	DKA	94	0	\N	\N	\N	t	\N	\N	Hinterland Hermit // Hinterland Scourge	Creature	C
36422	ISD	93	0	\N	\N	t	\N	\N	\N	Corpse Lunge	Instant	C
36426	ISD	95	0	\N	\N	t	\N	\N	\N	Curse of Oblivion	Enchantment	C
36427	DKA	98	0	\N	\N	\N	t	\N	\N	Mondronen Shaman // Tovolar's Magehunter	Creature	R
36433	DKA	101	0	\N	\N	\N	t	\N	\N	Pyreheart Wolf	Creature	U
36436	ISD	100	0	\N	\N	t	\N	\N	\N	Falkenrath Noble	Creature	U
36446	ISD	105	0	\N	\N	t	\N	\N	\N	Liliana of the Veil	Lgd. Planeswalker	M
36447	DKA	108	0	\N	\N	\N	\N	t	\N	Briarpack Alpha	Creature	U
36451	DKA	110	0	\N	\N	\N	\N	t	\N	Crushing Vines	Instant	C
36454	ISD	109	0	\N	\N	t	\N	\N	\N	Moan of the Unhallowed	Sorcery	U
36455	DKA	112	0	\N	\N	\N	\N	t	\N	Deranged Outcast	Creature	R
36457	DKA	113	0	\N	\N	\N	\N	t	\N	Favor of the Woods	Enchantment	C
36458	ISD	111	0	\N	\N	t	\N	\N	\N	Night Terrors	Sorcery	C
36459	DKA	114	0	\N	\N	\N	\N	t	\N	Feed the Pack	Enchantment	R
36462	ISD	113	0	\N	\N	t	\N	\N	\N	Rotting Fensnake	Creature	C
36463	DKA	116	0	\N	\N	\N	\N	t	\N	Gravetiller Wurm	Creature	U
36466	ISD	115	0	\N	\N	t	\N	\N	\N	Sever the Bloodline	Sorcery	R
36467	DKA	118	0	\N	\N	\N	\N	t	\N	Hollowhenge Beast	Creature	C
36468	ISD	116	0	\N	\N	t	\N	\N	\N	Skeletal Grimace	Enchantment	C
36469	DKA	119	0	\N	\N	\N	\N	t	\N	Hunger of the Howlpack	Instant	C
36471	DKA	120	0	\N	\N	\N	\N	t	\N	Increasing Savagery	Sorcery	R
36474	ISD	119	0	\N	\N	t	\N	\N	\N	Tribute to Hunger	Instant	U
36475	DKA	122	0	\N	\N	\N	\N	t	\N	Lambholt Elder // Silverpelt Werewolf	Creature	U
36437	DKA	103	1	\N	\N	\N	t	\N	\N	Scorch the Fields	Sorcery	C
36403	DKA	86	1	\N	\N	\N	t	\N	\N	Erdwal Ripper	Creature	C
36400	ISD	82	1	\N	t	\N	\N	\N	\N	Sturmgeist	Creature	R
36383	DKA	76	4	\N	\N	t	\N	\N	\N	Tragic Slip	Instant	C
36402	ISD	83	1	\N	t	\N	\N	\N	\N	Think Twice	Instant	C
36450	ISD	107	1	\N	\N	t	\N	\N	\N	Markov Patrician	Creature	C
36432	ISD	98	1	\N	\N	t	\N	\N	\N	Disciple of Griselbrand	Creature	U
36406	ISD	85	1	\N	\N	t	\N	\N	\N	Abattoir Ghoul	Creature	U
36456	ISD	110	2	\N	\N	t	\N	\N	\N	Morkrut Banshee	Creature	U
36418	ISD	91	1	\N	\N	t	\N	\N	\N	Brain Weevil	Creature	C
36314	ISD	39	1	t	\N	\N	\N	\N	\N	Unruly Mob	Creature	C
36318	ISD	41	1	t	\N	\N	\N	\N	\N	Village Bell-Ringer	Creature	C
36423	DKA	96	1	\N	\N	\N	t	\N	\N	Markov Blademaster	Creature	R
36470	ISD	117	2	\N	\N	t	\N	\N	\N	Skirsdag High Priest	Creature	R
36480	ISD	122	0	\N	\N	t	\N	\N	\N	Unburial Rites	Sorcery	U
36486	ISD	125	0	\N	\N	t	\N	\N	\N	Village Cannibals	Creature	U
36487	DKA	128	0	\N	\N	\N	\N	t	\N	Tracker's Instincts	Sorcery	U
36488	ISD	126	0	\N	\N	t	\N	\N	\N	Walking Corpse	Creature	C
36489	DKA	129	0	\N	\N	\N	\N	t	\N	Ulvenwald Bear	Creature	C
36492	ISD	128	0	\N	\N	\N	t	\N	\N	Ashmouth Hound	Creature	C
36493	DKA	131	0	\N	\N	\N	\N	t	\N	Vorapede	Creature	M
36494	ISD	129	0	\N	\N	\N	t	\N	\N	Balefire Dragon	Creature	M
36495	DKA	132	0	\N	\N	\N	\N	t	\N	Wild Hunger	Instant	C
36496	ISD	130	0	\N	\N	\N	t	\N	\N	Blasphemous Act	Sorcery	R
36497	DKA	133	0	\N	\N	\N	\N	t	\N	Wolfbitten Captive // Krallenhorde Killer	Creature	R
36500	ISD	132	0	\N	\N	\N	t	\N	\N	Brimstone Volley	Instant	C
36501	DKA	135	0	\N	t	t	\N	\N	\N	Diregraf Captain	Creature	U
36504	ISD	134	0	\N	\N	\N	t	\N	\N	Charmbreaker Devils	Creature	R
36505	DKA	137	0	t	t	\N	\N	\N	\N	Drogskol Reaver	Creature	M
36512	ISD	138	0	\N	\N	\N	t	\N	\N	Curse of the Pierced Heart	Enchantment	C
36513	DKA	141	0	\N	\N	\N	t	t	\N	Immerwolf	Creature	U
36516	ISD	140	0	\N	\N	\N	t	\N	\N	Devil's Play	Sorcery	R
36517	DKA	143	0	\N	\N	t	t	\N	\N	Stromkirk Captain	Creature	U
36526	ISD	145	0	\N	\N	\N	t	\N	\N	Hanweir Watchkeep // Bane of Hanweir	Creature	U
36527	DKA	148	0	\N	\N	\N	\N	\N	\N	Executioner's Hood	Artifact	C
36530	ISD	147	0	\N	\N	\N	t	\N	\N	Heretic's Punishment	Enchantment	R
36531	DKA	150	0	\N	\N	\N	\N	\N	\N	Heavy Mattock	Artifact	C
36540	ISD	152	0	\N	\N	\N	t	\N	\N	Kruin Outlaw // Terror of Kruin Pass	Creature	R
36541	DKA	155	0	\N	\N	\N	\N	\N	\N	Evolving Wilds	Land	C
36545	DKA	157	0	\N	\N	\N	\N	\N	\N	Haunted Fengraf	Land	C
36481	DKA	125	3	\N	\N	\N	\N	t	\N	Scorned Villager // Moonscarred Werewolf	Creature	C
36485	DKA	127	4	\N	\N	\N	\N	t	\N	Strangleroot Geist	Creature	U
36544	ISD	154	1	\N	\N	\N	t	\N	\N	Nightbird's Clutches	Sorcery	C
36484	ISD	124	1	\N	\N	t	\N	\N	\N	Victim of Night	Instant	C
37615	BRO	12	0	t	\N	\N	\N	\N	\N	Loran of the Third Path	Lgd. Creature	R
37617	BRO	13	0	t	\N	\N	\N	\N	\N	Loran, Disciple of History	Lgd. Creature	U
36499	DKA	134	0	\N	\N	\N	\N	t	\N	Young Wolf	Creature	C
36502	ISD	133	0	\N	\N	\N	t	\N	\N	Burning Vengeance	Enchantment	U
36503	DKA	136	0	t	t	\N	\N	\N	\N	Drogskol Captain	Creature	U
36506	ISD	135	0	\N	\N	\N	t	\N	\N	Crossway Vampire	Creature	C
36507	DKA	138	0	\N	\N	t	t	\N	\N	Falkenrath Aristocrat	Creature	M
36508	ISD	136	0	\N	\N	\N	t	\N	\N	Curse of Stalked Prey	Enchantment	R
36509	DKA	139	0	\N	t	t	\N	\N	\N	Havengul Lich	Creature	M
36510	ISD	137	0	\N	\N	\N	t	\N	\N	Curse of the Nightly Hunt	Enchantment	U
36511	DKA	140	0	\N	\N	\N	t	t	\N	Huntmaster of the Fells // Ravager of the Fells	Creature	M
36514	ISD	139	0	\N	\N	\N	t	\N	\N	Desperate Ravings	Instant	U
36515	DKA	142	0	t	\N	t	\N	\N	\N	Sorin, Lord of Innistrad	Lgd. Planeswalker	M
36518	ISD	141	0	\N	\N	\N	t	\N	\N	Falkenrath Marauders	Creature	R
36519	DKA	144	0	\N	\N	\N	\N	\N	\N	Altar of the Lost	Artifact	U
36520	ISD	142	0	\N	\N	\N	t	\N	\N	Feral Ridgewolf	Creature	C
36521	DKA	145	0	\N	\N	\N	\N	\N	\N	Avacyn's Collar	Artifact	U
36522	ISD	143	0	\N	\N	\N	t	\N	\N	Furor of the Bitten	Enchantment	C
36523	DKA	146	0	\N	\N	\N	\N	\N	\N	Chalice of Life // Chalice of Death	Artifact // Artifact	U
36524	ISD	144	0	\N	\N	\N	t	\N	\N	Geistflame	Instant	C
36525	DKA	147	0	\N	\N	\N	\N	\N	\N	Elbrus, the Binding Blade // Withengar Unbound	Lgd. Artifact	M
36528	ISD	146	0	\N	\N	\N	t	\N	\N	Harvest Pyre	Instant	C
36529	DKA	149	0	\N	\N	\N	\N	\N	\N	Grafdigger's Cage	Artifact	R
36533	DKA	151	0	\N	\N	\N	\N	\N	\N	Helvault	Lgd. Artifact	M
36534	ISD	149	0	\N	\N	\N	t	\N	\N	Instigator Gang // Wildblood Pack	Creature	R
36535	DKA	152	0	\N	\N	\N	\N	\N	\N	Jar of Eyeballs	Artifact	R
36536	ISD	150	0	\N	\N	\N	t	\N	\N	Into the Maw of Hell	Sorcery	U
36537	DKA	153	0	\N	\N	\N	\N	\N	\N	Warden of the Wall	Artifact	U
36538	ISD	151	0	\N	\N	\N	t	\N	\N	Kessig Wolf	Creature	C
36539	DKA	154	0	\N	\N	\N	\N	\N	\N	Wolfhunter's Quiver	Artifact	U
36542	ISD	153	0	\N	\N	\N	t	\N	\N	Night Revelers	Creature	C
36546	ISD	155	0	\N	\N	\N	t	\N	\N	Past in Flames	Sorcery	M
36547	DKA	158	0	\N	\N	\N	\N	\N	\N	Vault of the Archangel	Land	R
36548	ISD	156	0	\N	\N	\N	t	\N	\N	Pitchburn Devils	Creature	C
36549	ISD	157	0	\N	\N	\N	t	\N	\N	Rage Thrower	Creature	U
36550	ISD	158	0	\N	\N	\N	t	\N	\N	Rakish Heir	Creature	U
36551	ISD	159	0	\N	\N	\N	t	\N	\N	Reckless Waif // Merciless Predator	Creature	U
36552	ISD	160	0	\N	\N	\N	t	\N	\N	Riot Devils	Creature	C
36554	ISD	162	0	\N	\N	\N	t	\N	\N	Scourge of Geier Reach	Creature	U
36556	ISD	164	0	\N	\N	\N	t	\N	\N	Stromkirk Noble	Creature	R
36557	ISD	165	0	\N	\N	\N	t	\N	\N	Tormented Pariah // Rampaging Werewolf	Creature	C
36558	ISD	166	0	\N	\N	\N	t	\N	\N	Traitorous Blood	Sorcery	C
36559	ISD	167	0	\N	\N	\N	t	\N	\N	Vampiric Fury	Instant	C
36560	ISD	168	0	\N	\N	\N	t	\N	\N	Village Ironsmith // Ironfang	Creature	C
36562	ISD	170	0	\N	\N	\N	\N	t	\N	Avacyn's Pilgrim	Creature	C
36563	ISD	171	0	\N	\N	\N	\N	t	\N	Boneyard Wurm	Creature	U
36566	ISD	174	0	\N	\N	\N	\N	t	\N	Creeping Renaissance	Sorcery	R
36567	ISD	175	0	\N	\N	\N	\N	t	\N	Darkthicket Wolf	Creature	C
36568	ISD	176	0	\N	\N	\N	\N	t	\N	Daybreak Ranger // Nightfall Predator	Creature	R
36569	ISD	177	0	\N	\N	\N	\N	t	\N	Elder of Laurels	Creature	R
36570	ISD	178	0	\N	\N	\N	\N	t	\N	Essence of the Wild	Creature	M
36572	ISD	180	0	\N	\N	\N	\N	t	\N	Full Moon's Rise	Enchantment	U
36573	ISD	181	0	\N	\N	\N	\N	t	\N	Garruk Relentless // Garruk, the Veil-Cursed	Lgd. Planeswalker	M
36574	ISD	182	0	\N	\N	\N	\N	t	\N	Gatstaf Shepherd // Gatstaf Howler	Creature	U
36575	ISD	183	0	\N	\N	\N	\N	t	\N	Gnaw to the Bone	Instant	C
36576	ISD	184	0	\N	\N	\N	\N	t	\N	Grave Bramble	Creature	C
36577	ISD	185	0	\N	\N	\N	\N	t	\N	Grizzled Outcasts // Krallenhorde Wantons	Creature	C
36578	ISD	186	0	\N	\N	\N	\N	t	\N	Gutter Grime	Enchantment	R
36579	ISD	187	0	\N	\N	\N	\N	t	\N	Hamlet Captain	Creature	U
36581	ISD	189	0	\N	\N	\N	\N	t	\N	Kessig Cagebreakers	Creature	R
36585	ISD	193	0	\N	\N	\N	\N	t	\N	Mayor of Avabruck // Howlpack Alpha	Creature	R
36587	ISD	195	0	\N	\N	\N	\N	t	\N	Moonmist	Instant	C
36588	ISD	196	0	\N	\N	\N	\N	t	\N	Mulch	Sorcery	C
36591	ISD	199	0	\N	\N	\N	\N	t	\N	Parallel Lives	Enchantment	R
36593	ISD	201	0	\N	\N	\N	\N	t	\N	Ranger's Guile	Instant	C
36595	ISD	203	0	\N	\N	\N	\N	t	\N	Spider Spawning	Sorcery	U
36596	ISD	204	0	\N	\N	\N	\N	t	\N	Spidery Grasp	Instant	C
36598	ISD	206	0	\N	\N	\N	\N	t	\N	Travel Preparations	Sorcery	C
36600	ISD	208	0	\N	\N	\N	\N	t	\N	Ulvenwald Mystics // Ulvenwald Primordials	Creature	U
36601	ISD	209	0	\N	\N	\N	\N	t	\N	Villagers of Estwald // Howlpack of Estwald	Creature	C
36603	ISD	211	0	\N	\N	\N	\N	t	\N	Wreath of Geists	Enchantment	U
36604	ISD	212	0	\N	t	t	\N	\N	\N	Evil Twin	Creature	R
36605	ISD	213	0	t	t	\N	\N	\N	\N	Geist of Saint Traft	Lgd. Creature	M
36606	ISD	214	0	\N	t	t	\N	\N	\N	Grimgrin, Corpse-Born	Lgd. Creature	M
36607	ISD	215	0	\N	\N	t	t	\N	\N	Olivia Voldaren	Lgd. Creature	M
36553	ISD	161	1	\N	\N	\N	t	\N	\N	Rolling Temblor	Sorcery	U
36532	ISD	148	1	\N	\N	\N	t	\N	\N	Infernal Plunge	Sorcery	C
36555	ISD	163	1	\N	\N	\N	t	\N	\N	Skirsdag Cultist	Creature	U
36561	ISD	169	1	\N	\N	\N	\N	t	\N	Ambush Viper	Creature	C
36589	ISD	197	1	\N	\N	\N	\N	t	\N	Naturalize	Instant	C
36584	ISD	192	1	\N	\N	\N	\N	t	\N	Make a Wish	Sorcery	U
36592	ISD	200	1	\N	\N	\N	\N	t	\N	Prey Upon	Sorcery	C
36590	ISD	198	1	\N	\N	\N	\N	t	\N	Orchard Spirit	Creature	C
36586	ISD	194	1	\N	\N	\N	\N	t	\N	Moldgraf Monstrosity	Creature	R
36583	ISD	191	3	\N	\N	\N	\N	t	\N	Lumberknot	Creature	U
36594	ISD	202	1	\N	\N	\N	\N	t	\N	Somberwald Spider	Creature	C
36580	ISD	188	2	\N	\N	\N	\N	t	\N	Hollowhenge Scavenger	Creature	U
36571	ISD	179	2	\N	\N	\N	\N	t	\N	Festerhide Boar	Creature	C
36582	ISD	190	2	\N	\N	\N	\N	t	\N	Kindercatch	Creature	C
36565	ISD	173	2	\N	\N	\N	\N	t	\N	Caravan Vigil	Sorcery	C
36602	ISD	210	2	\N	\N	\N	\N	t	\N	Woodland Sleuth	Creature	C
36597	ISD	205	1	\N	\N	\N	\N	t	\N	Splinterfright	Creature	R
36599	ISD	207	1	\N	\N	\N	\N	t	\N	Tree of Redemption	Creature	M
36608	ISD	216	0	\N	\N	\N	\N	\N	\N	Blazing Torch	Artifact	C
36609	ISD	217	0	\N	\N	\N	\N	\N	\N	Butcher's Cleaver	Artifact	U
36610	ISD	218	0	\N	\N	\N	\N	\N	\N	Cellar Door	Artifact	U
36612	ISD	220	0	\N	\N	\N	\N	\N	\N	Creepy Doll	Artifact Creature	R
36616	ISD	224	0	\N	\N	\N	\N	\N	\N	Ghoulcaller's Bell	Artifact	C
36617	ISD	225	0	\N	\N	\N	\N	\N	\N	Graveyard Shovel	Artifact	U
36618	ISD	226	0	\N	\N	\N	\N	\N	\N	Grimoire of the Dead	Lgd. Artifact	M
36619	ISD	227	0	\N	\N	\N	\N	\N	\N	Inquisitor's Flail	Artifact	U
36620	ISD	228	0	\N	\N	\N	\N	\N	\N	Manor Gargoyle	Artifact Creature	R
36621	ISD	229	0	\N	\N	\N	\N	\N	\N	Mask of Avacyn	Artifact	U
36622	ISD	230	0	\N	\N	\N	\N	\N	\N	One-Eyed Scarecrow	Artifact Creature	C
36623	ISD	231	0	\N	\N	\N	\N	\N	\N	Runechanter's Pike	Artifact	R
36624	ISD	232	0	\N	\N	\N	\N	\N	\N	Sharpened Pitchfork	Artifact	U
36625	ISD	233	0	\N	\N	\N	\N	\N	\N	Silver-Inlaid Dagger	Artifact	U
36626	ISD	234	0	\N	\N	\N	\N	\N	\N	Traveler's Amulet	Artifact	C
36627	ISD	235	0	\N	\N	\N	\N	\N	\N	Trepanation Blade	Artifact	U
36628	ISD	236	0	\N	\N	\N	\N	\N	\N	Witchbane Orb	Artifact	R
36629	ISD	237	0	\N	\N	\N	\N	\N	\N	Wooden Stake	Artifact	C
36630	ISD	238	0	\N	\N	\N	\N	\N	\N	Clifftop Retreat	Land	R
36633	ISD	241	0	\N	\N	\N	\N	\N	\N	Hinterland Harbor	Land	R
36634	ISD	242	0	\N	\N	\N	\N	\N	\N	Isolated Chapel	Land	R
36635	ISD	243	0	\N	\N	\N	\N	\N	\N	Kessig Wolf Run	Land	R
36636	ISD	244	0	\N	\N	\N	\N	\N	\N	Moorland Haunt	Land	R
36637	ISD	245	0	\N	\N	\N	\N	\N	\N	Nephalia Drownyard	Land	R
36638	ISD	246	0	\N	\N	\N	\N	\N	\N	Shimmering Grotto	Land	C
36639	ISD	247	0	\N	\N	\N	\N	\N	\N	Stensia Bloodhall	Land	R
36640	ISD	248	0	\N	\N	\N	\N	\N	\N	Sulfur Falls	Land	R
36642	ISD	250	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
36643	ISD	251	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
36644	ISD	252	0	\N	\N	\N	\N	\N	\N	Plains	Basic Land	C
36645	ISD	253	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
36646	ISD	254	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
36647	ISD	255	0	\N	\N	\N	\N	\N	\N	Island	Basic Land	C
36649	ISD	257	0	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
36651	ISD	259	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
36652	ISD	260	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
36653	ISD	261	0	\N	\N	\N	\N	\N	\N	Mountain	Basic Land	C
36631	ISD	239	0	\N	\N	\N	\N	\N	\N	Gavony Township	Land	R
36632	ISD	240	2	\N	\N	\N	\N	\N	\N	Ghost Quarter	Land	U
36641	ISD	249	1	\N	\N	\N	\N	\N	\N	Woodland Cemetery	Land	R
36648	ISD	256	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
36650	ISD	258	1	\N	\N	\N	\N	\N	\N	Swamp	Basic Land	C
36656	ISD	264	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
36654	ISD	262	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
36613	ISD	221	1	\N	\N	\N	\N	\N	\N	Demonmail Hauberk	Artifact	U
36655	ISD	263	1	\N	\N	\N	\N	\N	\N	Forest	Basic Land	C
36614	ISD	222	1	\N	\N	\N	\N	\N	\N	Galvanic Juggernaut	Artifact Creature	U
36615	ISD	223	1	\N	\N	\N	\N	\N	\N	Geistcatcher's Rig	Artifact Creature	U
36611	ISD	219	1	\N	\N	\N	\N	\N	\N	Cobbled Wings	Artifact	C
37616	BRO	7	0	t	\N	\N	\N	\N	\N	Great Desert Prospector	Creature	U
\.


--
-- Name: card_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.card_id_seq', 37990, true);


--
-- Name: card card_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT card_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

