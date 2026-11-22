--
-- PostgreSQL database dump
--

\restrict zxegz5isNL2vuOh3fxuj8yzl6MauN8UKQRfRnBNT43eVOEJNufaMKc48MT1PDA7

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.4

-- Started on 2026-11-23 02:59:54

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 239 (class 1259 OID 35506)
-- Name: EdinicaIzmerenia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EdinicaIzmerenia" (
    "Id" integer NOT NULL,
    "Name" character varying(50) NOT NULL
);


ALTER TABLE public."EdinicaIzmerenia" OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 35505)
-- Name: EdinicaIzmerenia_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."EdinicaIzmerenia_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."EdinicaIzmerenia_Id_seq" OWNER TO postgres;

--
-- TOC entry 5122 (class 0 OID 0)
-- Dependencies: 238
-- Name: EdinicaIzmerenia_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EdinicaIzmerenia_Id_seq" OWNED BY public."EdinicaIzmerenia"."Id";


--
-- TOC entry 228 (class 1259 OID 35451)
-- Name: OrderSostav; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OrderSostav" (
    "Id" integer NOT NULL,
    "IdOrder" integer NOT NULL,
    "IdTovar" character varying(6) NOT NULL,
    "Quantity" integer
);


ALTER TABLE public."OrderSostav" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 35450)
-- Name: OrderSostav_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OrderSostav_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."OrderSostav_Id_seq" OWNER TO postgres;

--
-- TOC entry 5123 (class 0 OID 0)
-- Dependencies: 227
-- Name: OrderSostav_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OrderSostav_Id_seq" OWNED BY public."OrderSostav"."Id";


--
-- TOC entry 226 (class 1259 OID 35442)
-- Name: OrderStatuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OrderStatuses" (
    "Id" integer NOT NULL,
    "Name" character varying(50) NOT NULL
);


ALTER TABLE public."OrderStatuses" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 35441)
-- Name: OrderStatuses_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OrderStatuses_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."OrderStatuses_Id_seq" OWNER TO postgres;

--
-- TOC entry 5124 (class 0 OID 0)
-- Dependencies: 225
-- Name: OrderStatuses_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OrderStatuses_Id_seq" OWNED BY public."OrderStatuses"."Id";


--
-- TOC entry 224 (class 1259 OID 35431)
-- Name: Orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Orders" (
    "Id" integer NOT NULL,
    "DateOrder" date NOT NULL,
    "DateDostavka" date,
    "IdPunktDostavki" integer,
    "IdClient" integer NOT NULL,
    "KodPoluchenia" integer,
    "IdStatus" integer NOT NULL
);


ALTER TABLE public."Orders" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 35430)
-- Name: Orders_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Orders_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Orders_Id_seq" OWNER TO postgres;

--
-- TOC entry 5125 (class 0 OID 0)
-- Dependencies: 223
-- Name: Orders_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Orders_Id_seq" OWNED BY public."Orders"."Id";


--
-- TOC entry 237 (class 1259 OID 35497)
-- Name: Postavchiki; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Postavchiki" (
    "Id" integer NOT NULL,
    "Name" character varying(50) NOT NULL
);


ALTER TABLE public."Postavchiki" OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 35496)
-- Name: Postavchiki_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Postavchiki_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Postavchiki_Id_seq" OWNER TO postgres;

--
-- TOC entry 5126 (class 0 OID 0)
-- Dependencies: 236
-- Name: Postavchiki_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Postavchiki_Id_seq" OWNED BY public."Postavchiki"."Id";


--
-- TOC entry 235 (class 1259 OID 35488)
-- Name: Proizvoditeli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Proizvoditeli" (
    "Id" integer NOT NULL,
    "Name" character varying(50) NOT NULL
);


ALTER TABLE public."Proizvoditeli" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 35487)
-- Name: Proizvoditeli_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Proizvoditeli_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Proizvoditeli_Id_seq" OWNER TO postgres;

--
-- TOC entry 5127 (class 0 OID 0)
-- Dependencies: 234
-- Name: Proizvoditeli_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Proizvoditeli_Id_seq" OWNED BY public."Proizvoditeli"."Id";


--
-- TOC entry 230 (class 1259 OID 35461)
-- Name: PunktDostavki; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PunktDostavki" (
    "Id" integer NOT NULL,
    "Address" character varying(250) NOT NULL
);


ALTER TABLE public."PunktDostavki" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 35460)
-- Name: PunktDostavki_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."PunktDostavki_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."PunktDostavki_Id_seq" OWNER TO postgres;

--
-- TOC entry 5128 (class 0 OID 0)
-- Dependencies: 229
-- Name: PunktDostavki_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."PunktDostavki_Id_seq" OWNED BY public."PunktDostavki"."Id";


--
-- TOC entry 220 (class 1259 OID 35410)
-- Name: Roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Roles" (
    "Id" integer NOT NULL,
    "Name" character varying(50) NOT NULL
);


ALTER TABLE public."Roles" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 35409)
-- Name: Roles_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Roles_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Roles_Id_seq" OWNER TO postgres;

--
-- TOC entry 5129 (class 0 OID 0)
-- Dependencies: 219
-- Name: Roles_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Roles_Id_seq" OWNED BY public."Roles"."Id";


--
-- TOC entry 233 (class 1259 OID 35479)
-- Name: TovarCategories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TovarCategories" (
    "Id" integer NOT NULL,
    "Name" character varying(50) NOT NULL
);


ALTER TABLE public."TovarCategories" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 35478)
-- Name: TovarCategories_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."TovarCategories_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."TovarCategories_Id_seq" OWNER TO postgres;

--
-- TOC entry 5130 (class 0 OID 0)
-- Dependencies: 232
-- Name: TovarCategories_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."TovarCategories_Id_seq" OWNED BY public."TovarCategories"."Id";


--
-- TOC entry 231 (class 1259 OID 35469)
-- Name: Tovars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tovars" (
    "Id" character varying(6) NOT NULL,
    "Name" character varying(255) NOT NULL,
    "IdEdinicaIzmerenia" integer,
    "Price" numeric(15,2) NOT NULL,
    "IdPostavchika" integer,
    "IdProizvoditela" integer,
    "IdCategory" integer NOT NULL,
    "Skidka" integer,
    "QuantityNaSklade" integer,
    "OpisanieTovar" character varying(1000),
    "Photo" character varying(50)
);


ALTER TABLE public."Tovars" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 35419)
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    "Id" integer NOT NULL,
    "IdRole" integer NOT NULL,
    "Famaly" character varying(50) NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Otchestvo" character varying(50),
    "Login" character varying(50) NOT NULL,
    "Password" character varying(50)
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 35418)
-- Name: Users_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Users_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Users_Id_seq" OWNER TO postgres;

--
-- TOC entry 5131 (class 0 OID 0)
-- Dependencies: 221
-- Name: Users_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Users_Id_seq" OWNED BY public."Users"."Id";


--
-- TOC entry 4914 (class 2604 OID 35509)
-- Name: EdinicaIzmerenia Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EdinicaIzmerenia" ALTER COLUMN "Id" SET DEFAULT nextval('public."EdinicaIzmerenia_Id_seq"'::regclass);


--
-- TOC entry 4909 (class 2604 OID 35454)
-- Name: OrderSostav Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderSostav" ALTER COLUMN "Id" SET DEFAULT nextval('public."OrderSostav_Id_seq"'::regclass);


--
-- TOC entry 4908 (class 2604 OID 35445)
-- Name: OrderStatuses Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderStatuses" ALTER COLUMN "Id" SET DEFAULT nextval('public."OrderStatuses_Id_seq"'::regclass);


--
-- TOC entry 4907 (class 2604 OID 35434)
-- Name: Orders Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders" ALTER COLUMN "Id" SET DEFAULT nextval('public."Orders_Id_seq"'::regclass);


--
-- TOC entry 4913 (class 2604 OID 35500)
-- Name: Postavchiki Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Postavchiki" ALTER COLUMN "Id" SET DEFAULT nextval('public."Postavchiki_Id_seq"'::regclass);


--
-- TOC entry 4912 (class 2604 OID 35491)
-- Name: Proizvoditeli Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Proizvoditeli" ALTER COLUMN "Id" SET DEFAULT nextval('public."Proizvoditeli_Id_seq"'::regclass);


--
-- TOC entry 4910 (class 2604 OID 35464)
-- Name: PunktDostavki Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PunktDostavki" ALTER COLUMN "Id" SET DEFAULT nextval('public."PunktDostavki_Id_seq"'::regclass);


--
-- TOC entry 4905 (class 2604 OID 35413)
-- Name: Roles Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Roles" ALTER COLUMN "Id" SET DEFAULT nextval('public."Roles_Id_seq"'::regclass);


--
-- TOC entry 4911 (class 2604 OID 35482)
-- Name: TovarCategories Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TovarCategories" ALTER COLUMN "Id" SET DEFAULT nextval('public."TovarCategories_Id_seq"'::regclass);


--
-- TOC entry 4906 (class 2604 OID 35422)
-- Name: Users Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN "Id" SET DEFAULT nextval('public."Users_Id_seq"'::regclass);


--
-- TOC entry 5116 (class 0 OID 35506)
-- Dependencies: 239
-- Data for Name: EdinicaIzmerenia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."EdinicaIzmerenia" ("Id", "Name") FROM stdin;
1	шт.
\.


--
-- TOC entry 5105 (class 0 OID 35451)
-- Dependencies: 228
-- Data for Name: OrderSostav; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OrderSostav" ("Id", "IdOrder", "IdTovar", "Quantity") FROM stdin;
1	1	А112Т4	2
2	2	G843H5	1
3	3	D325D4	10
4	4	F325D4	5
5	5	G432G6	20
6	6	А112Т4	2
7	7	C346F5	3
8	8	F325D4	1
9	9	J532V5	5
10	10	F256G6	5
11	1	G843H5	2
12	2	А112Т4	1
13	3	S432T5	10
14	4	D325D4	4
15	5	H542F5	20
16	6	G843H5	2
17	7	F256G6	3
18	8	G432G6	1
19	9	F256G6	1
20	10	J532V5	5
\.


--
-- TOC entry 5103 (class 0 OID 35442)
-- Dependencies: 226
-- Data for Name: OrderStatuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OrderStatuses" ("Id", "Name") FROM stdin;
1	Завершен
2	Новый 
\.


--
-- TOC entry 5101 (class 0 OID 35431)
-- Dependencies: 224
-- Data for Name: Orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Orders" ("Id", "DateOrder", "DateDostavka", "IdPunktDostavki", "IdClient", "KodPoluchenia", "IdStatus") FROM stdin;
1	2024-02-27	2024-04-20	1	10	901	1
2	2023-09-28	2024-04-21	11	7	902	1
3	2024-03-21	2024-04-22	2	8	903	1
4	2024-02-20	2024-04-23	11	9	904	1
5	2024-03-17	2024-04-24	2	10	905	1
6	2024-03-01	2024-04-25	15	7	906	1
7	2024-02-29	2024-04-26	3	8	907	1
8	2024-03-31	2024-04-27	19	9	908	2
9	2024-04-02	2024-04-28	5	10	909	2
10	2024-04-03	2024-04-29	19	10	910	2
\.


--
-- TOC entry 5114 (class 0 OID 35497)
-- Dependencies: 237
-- Data for Name: Postavchiki; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Postavchiki" ("Id", "Name") FROM stdin;
1	Виктор Астафьев
2	Гилберт Кит Честертон
3	Кирилл Каланджи
4	Людмила Улицкая
5	Аркадий Гайдар
6	Юрий Родичев
7	Дэниел Джей Барретт
8	Шон Кэрролл
9	Яков Гордин
10	Иосиф Бродский
11	Янь Чуннянь Янь Чуннянь
12	Дмитрий Мережковский
13	Дмитрий Щербаков
14	Роджер Осборн, Дэн Стерджис
15	Любовь Беликова, Инна Ерофеева, Татьяна Шутова
16	Сергей Моргачев
17	Екатерина Габарта, Ирина Игнатьева
18	Татьяна Лопаткина, Софья Маннапова
\.


--
-- TOC entry 5112 (class 0 OID 35488)
-- Dependencies: 235
-- Data for Name: Proizvoditeli; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Proizvoditeli" ("Id", "Name") FROM stdin;
1	Яуза
2	Т8 Издательские технологии
3	Прогресс книга
4	Время
5	Лениздат
6	Неолит
7	Амрита-Русь
8	Златоуст
9	Аспект Пресс
10	ВКН
\.


--
-- TOC entry 5107 (class 0 OID 35461)
-- Dependencies: 230
-- Data for Name: PunktDostavki; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PunktDostavki" ("Id", "Address") FROM stdin;
1	420151, г. Лесной, ул. Вишневая, 32
2	125061, г. Лесной, ул. Подгорная, 8
3	630370, г. Лесной, ул. Шоссейная, 24
4	400562, г. Лесной, ул. Зеленая, 32
5	614510, г. Лесной, ул. Маяковского, 47
6	410542, г. Лесной, ул. Светлая, 46
7	620839, г. Лесной, ул. Цветочная, 8
8	443890, г. Лесной, ул. Коммунистическая, 1
9	603379, г. Лесной, ул. Спортивная, 46
10	603721, г. Лесной, ул. Гоголя, 41
11	410172, г. Лесной, ул. Северная, 13
12	614611, г. Лесной, ул. Молодежная, 50
13	454311, г.Лесной, ул. Новая, 19
14	660007, г.Лесной, ул. Октябрьская, 19
15	603036, г. Лесной, ул. Садовая, 4
16	394060, г.Лесной, ул. Фрунзе, 43
17	410661, г. Лесной, ул. Школьная, 50
18	625590, г. Лесной, ул. Коммунистическая, 20
19	625683, г. Лесной, ул. 8 Марта
20	450983, г.Лесной, ул. Комсомольская, 26
21	394782, г. Лесной, ул. Чехова, 3
22	603002, г. Лесной, ул. Дзержинского, 28
23	450558, г. Лесной, ул. Набережная, 30
24	344288, г. Лесной, ул. Чехова, 1
25	614164, г.Лесной,  ул. Степная, 30
26	394242, г. Лесной, ул. Коммунистическая, 43
27	660540, г. Лесной, ул. Солнечная, 25
28	125837, г. Лесной, ул. Шоссейная, 40
29	125703, г. Лесной, ул. Партизанская, 49
30	625283, г. Лесной, ул. Победы, 46
31	614753, г. Лесной, ул. Полевая, 35
32	426030, г. Лесной, ул. Маяковского, 44
33	450375, г. Лесной ул. Клубная, 44
34	625560, г. Лесной, ул. Некрасова, 12
35	630201, г. Лесной, ул. Комсомольская, 17
36	190949, г. Лесной, ул. Мичурина, 26
\.


--
-- TOC entry 5097 (class 0 OID 35410)
-- Dependencies: 220
-- Data for Name: Roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Roles" ("Id", "Name") FROM stdin;
1	Администратор
2	Менеджер
3	Авторизированный клиент
\.


--
-- TOC entry 5110 (class 0 OID 35479)
-- Dependencies: 233
-- Data for Name: TovarCategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TovarCategories" ("Id", "Name") FROM stdin;
1	Художественная литература
2	Учебник для вузов
3	Хрестоматия
4	Учебное пособие
\.


--
-- TOC entry 5108 (class 0 OID 35469)
-- Dependencies: 231
-- Data for Name: Tovars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Tovars" ("Id", "Name", "IdEdinicaIzmerenia", "Price", "IdPostavchika", "IdProizvoditela", "IdCategory", "Skidka", "QuantityNaSklade", "OpisanieTovar", "Photo") FROM stdin;
А112Т4	Прокляты и убиты	1	585.00	1	1	1	25	6	Роман-эпопею Прокляты и убиты Виктора Астафьева по праву считают одним из самых сильных и пронзительных произведений отечественной военной прозы.	1.jpg
G843H5	Тайны и загадки отца БраунаТайны и загадки отца Брауна	1	193.00	2	1	1	30	9	Гилберт Кит Честертон — признанный классик английской литературы, один из самых ярких писателей первой половины XX века. Классикой стали его романы и многочисленные эссе, однако любовь массового читателя принесли ему рассказы об отце Брауне, тихом, застенчивом священнике, мастерски раскрывающем наиболее запутанные загадки и преступления. 	2.jpg
D325D4	Девайс	1	1599.00	3	2	1	5	12	Молодой фрилансер Захар Скаро устраивается на очередную подработку. Задача, казалось бы, тривиальная: тестирование нового устройства. Вот только вопрос в том, тестированием какой реальности занимается этот новый Девайс?	3.jpg
S432T5	Необыкновенное обыкновенное чудо. Школьные истории	1	549.00	4	2	1	15	15		4.jpg
F325D4	Чук и Гек	1	209.00	5	2	1	18	3	В книгу вошли повести и рассказы Аркадия Петровича Гайдара: Чук и Гек, Горячий камень и Сказка о военной тайне, о Мальчише-Кибальчише и его твердом слове	5.jpg
G432G6	Информационная безопасность. Национальные стандарты Российской Федерации. 3-е издание. Учебное пособие	1	3899.00	6	3	2	22	3	В учебном пособии рассмотрено более 300 действующих открытых документов национальной системы стандартизации Российской Федерации, включая международные и межгосударственные стандарты в области информационной безопасности по состоянию на начало 2023 года.	6.jpg
H542F5	Linux. Командная строка. Лучшие практики	1	1799.00	7	3	2	4	5	Перейдите на новый уровень работы в Linux! Если вы системный администратор, разработчик программного обеспечения, SRE-инженер или пользователь Linux, книга поможет вам работать быстрее, элегантнее и эффективнее. 	7.jpg
C346F5	Квантовые миры и возникновение пространства-времени	1	1349.00	8	3	2	5	4	Шон Кэрролл — физик-теоретик и один из самых известных в мире популяризаторов науки — заставляет нас по-новому взглянуть на физику. Столкновение с главной загадкой квантовой механики полностью поменяет наши представления о пространстве и времени.	8.jpg
F256G6	Вселенная. Происхождение жизни, смысл нашего существования и огромный космос	1	1799.00	8	3	2	6	2	Знаменитый физик Шон Кэрролл в свойственной ему увлекательной манере объясняет принципы, которые лежат в основах научных революций от Дарвина до Эйнштейна, и показывает как невероятные научные открытия последнего столетия изменили наш мир.	
J532V5	Пушкин. Бродский. Империя и судьба. В 2-х томах (комплект из 2-х книг)	1	529.00	9	4	3	8	6	Первая книга двухтомника «Пушкин. Бродский. Империя и судьба» пронизана пушкинской темой. Пушкин — «певец империи и свободы» — присутствует даже там, где он впрямую не упоминается, ибо его судьба, как и судьба других героев книги, органично связана с трагедией великой империи.	10.jpg
G643F4	Иосиф Бродский. Избранные эссе (комплект из 6-ти книг)	1	4925.00	10	5	3	2	24	Шесть сборников избранных эссе Иосифа Бродского (1940-1996), великого поэта, драматурга, мыслителя, лауреата Нобелевской премии по литературе (1987): «Будущее или далекое прошлое», «Верь своей боли», «Как читать книгу», «О русской литературе», «О тирании», «Путеводитель по переименованному городу». Все тексты представлены на английском языке и в переводе на русский и открывают автора не только как поэта, но как историка, критика, и глубокого и ироничного мыслителя.	11.jpg
J326V5	Тысячелетие императорской керамикиv	1	2599.00	11	5	3	5	4	Фарфор стал величайшим символом китайской культуры. Это одно из выдающихся изобретений, внесших неоценимый вклад в мировую цивилизацию. 	12.jpg
J632F6	Вечные спутники: Портреты из всемирной литературы	1	1599.00	12	5	3	0	6	Книга Вечные спутники - это цикл критических очерков о культуре и великих литераторах, сопровождавших жизнь и творчество русского писателя, поэта, литературного критика и общественного деятеля Дмитрия Мережковского (1865–1941). 	13.jpg
G632H6	Формирование литературной репутации Н.Г.Чернышевского в ХIX-XXI веках	1	1349.00	13	6	3	2	8	Монография Д. А. Щербакова - новаторская. Поэтапно рассмотрены не только многочисленные суждения известных отечественных и зарубежных критиков, литературоведов, философов и политиков, различным образом характеризовавших Н. Г. Чернышевского в связи и вне связи со знаменитым романом Что делать? 	14.jpg
M642E5	Теория искусства. Краткий путеводитель	1	879.00	14	6	3	3	2		15.jpg
G543F5	Религиозные верования с древнейших времен до наших дней	1	879.00	13	7	3	4	6	Настоящее издание представляет собой сборник переводов лекций по истории дохристианских и нехристианских религий, прочитанных в Лондоне в период с 1888 по 1891 гг. авторитетными исследователями данного раздела религиоведения. 	16.jpg
B653G6	Русский язык: Первые шаги. Часть 3. Учебное пособие	1	2699.00	15	8	4	8	9	Пособие является завершающей частью учебного комплекса. Третья часть содержит 10 уроков (21-30, последний-повторительный). Усвоение лексико-грамматического материала рассчитано примерно на 200-240 часов аудиторных занятий. 	17.jpg
J735J7	Синтетический образ индивидуального психического мира	1	1099.00	16	8	3	9	4	Психика подобна определенным объектам, это фиксируют сами люди в языке и искусстве. В данном исследовании рассматриваются в этом плане образы сосуда, воронки, дерева и крепости.	18.jpg
H436H7	Английский язык в спорте: Учебное пособие	1	1999.00	17	9	4	2	0	Учебное пособие подготовлено для слушателей, изу чающих английский язык как язык специальности	19.jpg
H475R5	Лексика и грамматика современного китайского языка (к тому II учебника «Новый практический курс китайского языка» под редакцией Лю Сюня): учебное пособие	1	608.00	18	10	4	25	12	Пособие выступает дополнением ко второму тому учебника «Новый практический курс китайского языка» (под редакцией Лю Сюня). 	20.jpg
\.


--
-- TOC entry 5099 (class 0 OID 35419)
-- Dependencies: 222
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" ("Id", "IdRole", "Famaly", "Name", "Otchestvo", "Login", "Password") FROM stdin;
1	1	Никифорова	Анна	Семеновна	94d5ous@gmail.com	uzWC67
2	1	Стелина	Евгения	Петровна	uth4iz@mail.com	2L6KZG
3	1	Михайлюк	Анна	Вячеславовна	5d4zbu@tutanota.com	rwVDh9
4	2	Ситдикова	Елена	Анатольевна	ptec8ym@yahoo.com	LdNyos
5	2	Ворсин	Петр	Евгеньевич	1qz4kw@mail.com	gynQMT
6	2	Старикова	Елена	Павловна	4np6se@mail.com	AtnDjr
7	3	Никифорова	Весения	Николаевна	yzls62@outlook.com	JlFRCZ
8	3	Сазонов	Руслан	Германович	1diph5e@tutanota.com	8ntwUp
9	3	Одинцов	Серафим	Артёмович	tjde7c@yahoo.com	YOyhfR
10	3	Степанов	Михаил	Артёмович	wpmrc3do@tutanota.com	RSbvHv
\.


--
-- TOC entry 5132 (class 0 OID 0)
-- Dependencies: 238
-- Name: EdinicaIzmerenia_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."EdinicaIzmerenia_Id_seq"', 1, true);


--
-- TOC entry 5133 (class 0 OID 0)
-- Dependencies: 227
-- Name: OrderSostav_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OrderSostav_Id_seq"', 1, false);


--
-- TOC entry 5134 (class 0 OID 0)
-- Dependencies: 225
-- Name: OrderStatuses_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OrderStatuses_Id_seq"', 1, false);


--
-- TOC entry 5135 (class 0 OID 0)
-- Dependencies: 223
-- Name: Orders_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Orders_Id_seq"', 1, false);


--
-- TOC entry 5136 (class 0 OID 0)
-- Dependencies: 236
-- Name: Postavchiki_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Postavchiki_Id_seq"', 1, false);


--
-- TOC entry 5137 (class 0 OID 0)
-- Dependencies: 234
-- Name: Proizvoditeli_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Proizvoditeli_Id_seq"', 1, false);


--
-- TOC entry 5138 (class 0 OID 0)
-- Dependencies: 229
-- Name: PunktDostavki_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."PunktDostavki_Id_seq"', 1, false);


--
-- TOC entry 5139 (class 0 OID 0)
-- Dependencies: 219
-- Name: Roles_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Roles_Id_seq"', 1, false);


--
-- TOC entry 5140 (class 0 OID 0)
-- Dependencies: 232
-- Name: TovarCategories_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."TovarCategories_Id_seq"', 1, false);


--
-- TOC entry 5141 (class 0 OID 0)
-- Dependencies: 221
-- Name: Users_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Users_Id_seq"', 1, false);


--
-- TOC entry 4936 (class 2606 OID 35513)
-- Name: EdinicaIzmerenia EdinicaIzmerenia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EdinicaIzmerenia"
    ADD CONSTRAINT "EdinicaIzmerenia_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4924 (class 2606 OID 35459)
-- Name: OrderSostav OrderSostav_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderSostav"
    ADD CONSTRAINT "OrderSostav_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4922 (class 2606 OID 35449)
-- Name: OrderStatuses OrderStatuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderStatuses"
    ADD CONSTRAINT "OrderStatuses_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4920 (class 2606 OID 35440)
-- Name: Orders Orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4934 (class 2606 OID 35504)
-- Name: Postavchiki Postavchiki_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Postavchiki"
    ADD CONSTRAINT "Postavchiki_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4932 (class 2606 OID 35495)
-- Name: Proizvoditeli Proizvoditeli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Proizvoditeli"
    ADD CONSTRAINT "Proizvoditeli_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4926 (class 2606 OID 35468)
-- Name: PunktDostavki PunktDostavki_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PunktDostavki"
    ADD CONSTRAINT "PunktDostavki_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4916 (class 2606 OID 35417)
-- Name: Roles Roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4930 (class 2606 OID 35486)
-- Name: TovarCategories TovarCategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TovarCategories"
    ADD CONSTRAINT "TovarCategories_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4928 (class 2606 OID 35477)
-- Name: Tovars Tovars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tovars"
    ADD CONSTRAINT "Tovars_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4918 (class 2606 OID 35429)
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 4942 (class 2606 OID 35539)
-- Name: OrderSostav OrderSostav_IdOrder_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderSostav"
    ADD CONSTRAINT "OrderSostav_IdOrder_fkey" FOREIGN KEY ("IdOrder") REFERENCES public."Orders"("Id") NOT VALID;


--
-- TOC entry 4943 (class 2606 OID 35544)
-- Name: OrderSostav OrderSostav_IdTovar_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderSostav"
    ADD CONSTRAINT "OrderSostav_IdTovar_fkey" FOREIGN KEY ("IdTovar") REFERENCES public."Tovars"("Id") NOT VALID;


--
-- TOC entry 4938 (class 2606 OID 35519)
-- Name: Orders Orders_IdClient_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_IdClient_fkey" FOREIGN KEY ("IdClient") REFERENCES public."Users"("Id") NOT VALID;


--
-- TOC entry 4939 (class 2606 OID 35524)
-- Name: Orders Orders_IdClient_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_IdClient_fkey1" FOREIGN KEY ("IdClient") REFERENCES public."Users"("Id") NOT VALID;


--
-- TOC entry 4940 (class 2606 OID 35534)
-- Name: Orders Orders_IdPunktDostavki_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_IdPunktDostavki_fkey" FOREIGN KEY ("IdPunktDostavki") REFERENCES public."PunktDostavki"("Id") NOT VALID;


--
-- TOC entry 4941 (class 2606 OID 35529)
-- Name: Orders Orders_IdStatus_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_IdStatus_fkey" FOREIGN KEY ("IdStatus") REFERENCES public."OrderStatuses"("Id") NOT VALID;


--
-- TOC entry 4944 (class 2606 OID 35549)
-- Name: Tovars Tovars_IdCategory_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tovars"
    ADD CONSTRAINT "Tovars_IdCategory_fkey" FOREIGN KEY ("IdCategory") REFERENCES public."TovarCategories"("Id") NOT VALID;


--
-- TOC entry 4945 (class 2606 OID 35569)
-- Name: Tovars Tovars_IdCategory_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tovars"
    ADD CONSTRAINT "Tovars_IdCategory_fkey1" FOREIGN KEY ("IdCategory") REFERENCES public."TovarCategories"("Id") NOT VALID;


--
-- TOC entry 4946 (class 2606 OID 35554)
-- Name: Tovars Tovars_IdEdinicaIzmerenia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tovars"
    ADD CONSTRAINT "Tovars_IdEdinicaIzmerenia_fkey" FOREIGN KEY ("IdEdinicaIzmerenia") REFERENCES public."EdinicaIzmerenia"("Id") NOT VALID;


--
-- TOC entry 4947 (class 2606 OID 35559)
-- Name: Tovars Tovars_IdPostavchika_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tovars"
    ADD CONSTRAINT "Tovars_IdPostavchika_fkey" FOREIGN KEY ("IdPostavchika") REFERENCES public."Postavchiki"("Id") NOT VALID;


--
-- TOC entry 4948 (class 2606 OID 35564)
-- Name: Tovars Tovars_IdProizvoditela_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tovars"
    ADD CONSTRAINT "Tovars_IdProizvoditela_fkey" FOREIGN KEY ("IdProizvoditela") REFERENCES public."Proizvoditeli"("Id") NOT VALID;


--
-- TOC entry 4937 (class 2606 OID 35514)
-- Name: Users Users_IdRole_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_IdRole_fkey" FOREIGN KEY ("IdRole") REFERENCES public."Roles"("Id") NOT VALID;


-- Completed on 2026-11-23 02:59:54

--
-- PostgreSQL database dump complete
--

\unrestrict zxegz5isNL2vuOh3fxuj8yzl6MauN8UKQRfRnBNT43eVOEJNufaMKc48MT1PDA7

