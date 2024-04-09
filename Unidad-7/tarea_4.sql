/**
TRABAJO CON SAKILA
**/

-- Se pide:
-- 
   -- Realiza cada una de las siguientes consultas:
        -- Actores que tienen de primer nombre Scarlett.
        
        select * from actor where first_name = 'Scarlett';
        /**
        +----------+------------+-----------+---------------------+
        | actor_id | first_name | last_name | last_update         |
        +----------+------------+-----------+---------------------+
        |       81 | SCARLETT   | DAMON     | 2006-02-15 04:34:33 |
        |      124 | SCARLETT   | BENING    | 2006-02-15 04:34:33 |
        +----------+------------+-----------+---------------------+
2 rows in set (0,00 sec)

        **/

        -- Actores que tienen de apellido Johansson.
        select * from actor where last_name_name = 'Johansson';
        /**
        +----------+------------+-----------+---------------------+
        | actor_id | first_name | last_name | last_update         |
        +----------+------------+-----------+---------------------+
        |        8 | MATTHEW    | JOHANSSON | 2006-02-15 04:34:33 |
        |       64 | RAY        | JOHANSSON | 2006-02-15 04:34:33 |
        |      146 | ALBERT     | JOHANSSON | 2006-02-15 04:34:33 |
        +----------+------------+-----------+---------------------+
3 rows in set (0,00 sec)
        **/

        -- Actores que contengan una O en su nombre.
        select * from actor where first_name regexp 'O';
        /**
        +----------+-------------+--------------+---------------------+
        | actor_id | first_name  | last_name    | last_update         |
        +----------+-------------+--------------+---------------------+
        |        1 | PENELOPE    | GUINESS      | 2006-02-15 04:34:33 |
        |        5 | JOHNNY      | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
        |        9 | JOE         | SWANK        | 2006-02-15 04:34:33 |
        |       11 | ZERO        | CAGE         | 2006-02-15 04:34:33 |
        |       19 | BOB         | FAWCETT      | 2006-02-15 04:34:33 |
        |       24 | CAMERON     | STREEP       | 2006-02-15 04:34:33 |
        |       28 | WOODY       | HOFFMAN      | 2006-02-15 04:34:33 |
        |       38 | TOM         | MCKELLEN     | 2006-02-15 04:34:33 |
        |       39 | GOLDIE      | BRODY        | 2006-02-15 04:34:33 |
        |       40 | JOHNNY      | CAGE         | 2006-02-15 04:34:33 |
        |       41 | JODIE       | DEGENERES    | 2006-02-15 04:34:33 |
        |       42 | TOM         | MIRANDA      | 2006-02-15 04:34:33 |
        |       54 | PENELOPE    | PINKETT      | 2006-02-15 04:34:33 |
        |       63 | CAMERON     | WRAY         | 2006-02-15 04:34:33 |
        |       78 | GROUCHO     | SINATRA      | 2006-02-15 04:34:33 |
        |       82 | WOODY       | JOLIE        | 2006-02-15 04:34:33 |
        |       91 | CHRISTOPHER | BERRY        | 2006-02-15 04:34:33 |
        |      104 | PENELOPE    | CRONYN       | 2006-02-15 04:34:33 |
        |      106 | GROUCHO     | DUNST        | 2006-02-15 04:34:33 |
        |      111 | CAMERON     | ZELLWEGER    | 2006-02-15 04:34:33 |
        |      113 | MORGAN      | HOPKINS      | 2006-02-15 04:34:33 |
        |      114 | MORGAN      | MCDORMAND    | 2006-02-15 04:34:33 |
        |      115 | HARRISON    | BALE         | 2006-02-15 04:34:33 |
        |      120 | PENELOPE    | MONROE       | 2006-02-15 04:34:33 |
        |      137 | MORGAN      | WILLIAMS     | 2006-02-15 04:34:33 |
        |      140 | WHOOPI      | HURT         | 2006-02-15 04:34:33 |
        |      151 | GEOFFREY    | HESTON       | 2006-02-15 04:34:33 |
        |      162 | OPRAH       | KILMER       | 2006-02-15 04:34:33 |
        |      163 | CHRISTOPHER | WEST         | 2006-02-15 04:34:33 |
        |      171 | OLYMPIA     | PFEIFFER     | 2006-02-15 04:34:33 |
        |      172 | GROUCHO     | WILLIAMS     | 2006-02-15 04:34:33 |
        |      176 | JON         | CHASE        | 2006-02-15 04:34:33 |
        |      188 | ROCK        | DUKAKIS      | 2006-02-15 04:34:33 |
        |      191 | GREGORY     | GOODING      | 2006-02-15 04:34:33 |
        |      192 | JOHN        | SUVARI       | 2006-02-15 04:34:33 |
        |      200 | THORA       | TEMPLE       | 2006-02-15 04:34:33 |
        +----------+-------------+--------------+---------------------+
        36 rows in set (0,02 sec)

        **/

        -- Actores que contengan una O en su nombre y en una A en su apellido.
        select * from actor where first_name regexp 'O' and last_name regexp 'A';
        /**
        +----------+------------+--------------+---------------------+
        | actor_id | first_name | last_name    | last_update         |
        +----------+------------+--------------+---------------------+
        |        5 | JOHNNY     | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
        |        9 | JOE        | SWANK        | 2006-02-15 04:34:33 |
        |       11 | ZERO       | CAGE         | 2006-02-15 04:34:33 |
        |       19 | BOB        | FAWCETT      | 2006-02-15 04:34:33 |
        |       28 | WOODY      | HOFFMAN      | 2006-02-15 04:34:33 |
        |       40 | JOHNNY     | CAGE         | 2006-02-15 04:34:33 |
        |       42 | TOM        | MIRANDA      | 2006-02-15 04:34:33 |
        |       63 | CAMERON    | WRAY         | 2006-02-15 04:34:33 |
        |       78 | GROUCHO    | SINATRA      | 2006-02-15 04:34:33 |
        |      114 | MORGAN     | MCDORMAND    | 2006-02-15 04:34:33 |
        |      115 | HARRISON   | BALE         | 2006-02-15 04:34:33 |
        |      137 | MORGAN     | WILLIAMS     | 2006-02-15 04:34:33 |
        |      172 | GROUCHO    | WILLIAMS     | 2006-02-15 04:34:33 |
        |      176 | JON        | CHASE        | 2006-02-15 04:34:33 |
        |      188 | ROCK       | DUKAKIS      | 2006-02-15 04:34:33 |
        |      192 | JOHN       | SUVARI       | 2006-02-15 04:34:33 |
        +----------+------------+--------------+---------------------+
        16 rows in set (0,00 sec)

        **/

        -- Actores que contengan dos O en su nombre y en una A en su apellido.
        select * from actor where first_name regexp '.*O.*O.*' and last_name regexp '.*A.*';
        /**
        +----------+------------+-----------+---------------------+
        | actor_id | first_name | last_name | last_update         |
        +----------+------------+-----------+---------------------+
        |       28 | WOODY      | HOFFMAN   | 2006-02-15 04:34:33 |
        |       78 | GROUCHO    | SINATRA   | 2006-02-15 04:34:33 |
        |      172 | GROUCHO    | WILLIAMS  | 2006-02-15 04:34:33 |
        +----------+------------+-----------+---------------------+
        3 rows in set (0,00 sec)
        **/
        
        -- Actores donde su tercera letra sea B.
        select * from actor where first_name regexp '^..b';
        /**
        +----------+------------+-----------+---------------------+
        | actor_id | first_name | last_name | last_update         |
        +----------+------------+-----------+---------------------+
        |       15 | CUBA       | OLIVIER   | 2006-02-15 04:34:33 |
        |       19 | BOB        | FAWCETT   | 2006-02-15 04:34:33 |
        |      118 | CUBA       | ALLEN     | 2006-02-15 04:34:33 |
        |      125 | ALBERT     | NOLTE     | 2006-02-15 04:34:33 |
        |      146 | ALBERT     | JOHANSSON | 2006-02-15 04:34:33 |
        |      182 | DEBBIE     | AKROYD    | 2006-02-15 04:34:33 |
        |      189 | CUBA       | BIRCH     | 2006-02-15 04:34:33 |
        +----------+------------+-----------+---------------------+
        7 rows in set (0,00 sec)
        **/
        
        -- Ciudades que empiezan por a.
        select * from city where city regexp '^[Aa]';
        /**
        +---------+-------------------------+------------+---------------------+
        | city_id | city                    | country_id | last_update         |
        +---------+-------------------------+------------+---------------------+
        |       1 | A Coruña (La Coruña)    |         87 | 2006-02-15 04:45:25 |
        |       2 | Abha                    |         82 | 2006-02-15 04:45:25 |
        |       3 | Abu Dhabi               |        101 | 2006-02-15 04:45:25 |
        |       4 | Acuña                   |         60 | 2006-02-15 04:45:25 |
        |       5 | Adana                   |         97 | 2006-02-15 04:45:25 |
        |       6 | Addis Abeba             |         31 | 2006-02-15 04:45:25 |
        |       7 | Aden                    |        107 | 2006-02-15 04:45:25 |
        |       8 | Adoni                   |         44 | 2006-02-15 04:45:25 |
        |       9 | Ahmadnagar              |         44 | 2006-02-15 04:45:25 |
        |      10 | Akishima                |         50 | 2006-02-15 04:45:25 |
        |      11 | Akron                   |        103 | 2006-02-15 04:45:25 |
        |      12 | al-Ayn                  |        101 | 2006-02-15 04:45:25 |
        |      13 | al-Hawiya               |         82 | 2006-02-15 04:45:25 |
        |      14 | al-Manama               |         11 | 2006-02-15 04:45:25 |
        |      15 | al-Qadarif              |         89 | 2006-02-15 04:45:25 |
        |      16 | al-Qatif                |         82 | 2006-02-15 04:45:25 |
        |      17 | Alessandria             |         49 | 2006-02-15 04:45:25 |
        |      18 | Allappuzha (Alleppey)   |         44 | 2006-02-15 04:45:25 |
        |      19 | Allende                 |         60 | 2006-02-15 04:45:25 |
        |      20 | Almirante Brown         |          6 | 2006-02-15 04:45:25 |
        |      21 | Alvorada                |         15 | 2006-02-15 04:45:25 |
        |      22 | Ambattur                |         44 | 2006-02-15 04:45:25 |
        |      23 | Amersfoort              |         67 | 2006-02-15 04:45:25 |
        |      24 | Amroha                  |         44 | 2006-02-15 04:45:25 |
        |      25 | Angra dos Reis          |         15 | 2006-02-15 04:45:25 |
        |      26 | Anápolis                |         15 | 2006-02-15 04:45:25 |
        |      27 | Antofagasta             |         22 | 2006-02-15 04:45:25 |
        |      28 | Aparecida de Goiânia    |         15 | 2006-02-15 04:45:25 |
        |      29 | Apeldoorn               |         67 | 2006-02-15 04:45:25 |
        |      30 | Araçatuba               |         15 | 2006-02-15 04:45:25 |
        |      31 | Arak                    |         46 | 2006-02-15 04:45:25 |
        |      32 | Arecibo                 |         77 | 2006-02-15 04:45:25 |
        |      33 | Arlington               |        103 | 2006-02-15 04:45:25 |
        |      34 | Ashdod                  |         48 | 2006-02-15 04:45:25 |
        |      35 | Ashgabat                |         98 | 2006-02-15 04:45:25 |
        |      36 | Ashqelon                |         48 | 2006-02-15 04:45:25 |
        |      37 | Asunción                |         73 | 2006-02-15 04:45:25 |
        |      38 | Athenai                 |         39 | 2006-02-15 04:45:25 |
        |      39 | Atšinsk                 |         80 | 2006-02-15 04:45:25 |
        |      40 | Atlixco                 |         60 | 2006-02-15 04:45:25 |
        |      41 | Augusta-Richmond County |        103 | 2006-02-15 04:45:25 |
        |      42 | Aurora                  |        103 | 2006-02-15 04:45:25 |
        |      43 | Avellaneda              |          6 | 2006-02-15 04:45:25 |
        +---------+-------------------------+------------+---------------------+
        43 rows in set (0,01 sec)
        **/
        
        -- Ciudades que acaban por s.
        select * from city where city regexp 's$';
        /**
        +---------+----------------------------+------------+---------------------+
        | city_id | city                       | country_id | last_update         |
        +---------+----------------------------+------------+---------------------+
        |      25 | Angra dos Reis             |         15 | 2006-02-15 04:45:25 |
        |      26 | Anápolis                   |         15 | 2006-02-15 04:45:25 |
        |      79 | Bilbays                    |         29 | 2006-02-15 04:45:25 |
        |     102 | Caracas                    |        104 | 2006-02-15 04:45:25 |
        |     118 | Ciomas                     |         45 | 2006-02-15 04:45:25 |
        |     120 | Citrus Heights             |        103 | 2006-02-15 04:45:25 |
        |     125 | Coatzacoalcos              |         60 | 2006-02-15 04:45:25 |
        |     135 | Dallas                     |        103 | 2006-02-15 04:45:25 |
        |     137 | Daugavpils                 |         54 | 2006-02-15 04:45:25 |
        |     147 | Dos Quebradas              |         24 | 2006-02-15 04:45:25 |
        |     190 | Águas Lindas de Goiás      |         15 | 2006-02-15 04:45:25 |
        |     212 | Huejutla de Reyes          |         60 | 2006-02-15 04:45:25 |
        |     221 | Imus                       |         75 | 2006-02-15 04:45:25 |
        |     238 | Jelets                     |         80 | 2006-02-15 04:45:25 |
        |     266 | Kilis                      |         97 | 2006-02-15 04:45:25 |
        |     297 | Le Mans                    |         34 | 2006-02-15 04:45:25 |
        |     330 | Matamoros                  |         60 | 2006-02-15 04:45:25 |
        |     333 | Memphis                    |        103 | 2006-02-15 04:45:25 |
        |     391 | Ozamis                     |         75 | 2006-02-15 04:45:25 |
        |     401 | Patras                     |         39 | 2006-02-15 04:45:25 |
        |     413 | Poços de Caldas            |         15 | 2006-02-15 04:45:25 |
        |     424 | Quilmes                    |          6 | 2006-02-15 04:45:25 |
        |     441 | Saint Louis                |        103 | 2006-02-15 04:45:25 |
        |     442 | Saint-Denis                |         79 | 2006-02-15 04:45:25 |
        |     446 | Salinas                    |        103 | 2006-02-15 04:45:25 |
        |     460 | Santiago de los Caballeros |         27 | 2006-02-15 04:45:25 |
        |     482 | Sivas                      |         97 | 2006-02-15 04:45:25 |
        |     497 | Springs                    |         85 | 2006-02-15 04:45:25 |
        |     499 | Sterling Heights           |        103 | 2006-02-15 04:45:25 |
        |     529 | Tarsus                     |         97 | 2006-02-15 04:45:25 |
        |     570 | Vilnius                    |         56 | 2006-02-15 04:45:25 |
        +---------+----------------------------+------------+---------------------+
        31 rows in set (0,01 sec)

        **/

        -- Ciudades del country 61.
        select * from city where country_id = 61;
        /**

        **/
        
        -- Ciudades del country Spain.
        select ci.city, co.country from city ci JOIN country co ON ci.country_id = co.country_id WHERE co.country = 'Spain';

        /**
        +-------------------------+---------+
        | city                    | country |
        +-------------------------+---------+
        | A Coruña (La Coruña)    | Spain   |
        | Donostia-San Sebastián  | Spain   |
        | Gijón                   | Spain   |
        | Ourense (Orense)        | Spain   |
        | Santiago de Compostela  | Spain   |
        +-------------------------+---------+
        5 rows in set (0,01 sec)
        **/
        -- Ciudades con nombres compuestos.
        select * from city WHERE city regexp ' .* ';
        /**
        +---------+----------------------------+------------+---------------------+
        | city_id | city                       | country_id | last_update         |
        +---------+----------------------------+------------+---------------------+
        |       1 | A Coruña (La Coruña)       |         87 | 2006-02-15 04:45:25 |
        |      25 | Angra dos Reis             |         15 | 2006-02-15 04:45:25 |
        |      28 | Aparecida de Goiânia       |         15 | 2006-02-15 04:45:25 |
        |      53 | Bandar Seri Begawan        |         16 | 2006-02-15 04:45:25 |
        |     121 | Città del Vaticano         |         41 | 2006-02-15 04:45:25 |
        |     122 | Ciudad del Este            |         73 | 2006-02-15 04:45:25 |
        |     124 | Coacalco de Berriozábal    |         60 | 2006-02-15 04:45:25 |
        |     190 | Águas Lindas de Goiás      |         15 | 2006-02-15 04:45:25 |
        |     212 | Huejutla de Reyes          |         60 | 2006-02-15 04:45:25 |
        |     247 | Juazeiro do Norte          |         15 | 2006-02-15 04:45:25 |
        |     248 | Juiz de Fora               |         15 | 2006-02-15 04:45:25 |
        |     279 | Kowloon and New Kowloon    |         42 | 2006-02-15 04:45:25 |
        |     373 | Ocumare del Tuy            |        104 | 2006-02-15 04:45:25 |
        |     393 | Pachuca de Soto            |         60 | 2006-02-15 04:45:25 |
        |     413 | Poços de Caldas            |         15 | 2006-02-15 04:45:25 |
        |     450 | San Felipe de Puerto Plata |         27 | 2006-02-15 04:45:25 |
        |     451 | San Felipe del Progreso    |         60 | 2006-02-15 04:45:25 |
        |     452 | San Juan Bautista Tuxtepec |         60 | 2006-02-15 04:45:25 |
        |     454 | San Miguel de Tucumán      |          6 | 2006-02-15 04:45:25 |
        |     456 | Santa Bárbara d´Oeste      |         15 | 2006-02-15 04:45:25 |
        |     459 | Santiago de Compostela     |         87 | 2006-02-15 04:45:25 |
        |     460 | Santiago de los Caballeros |         27 | 2006-02-15 04:45:25 |
        |     485 | São Bernardo do Campo      |         15 | 2006-02-15 04:45:25 |
        |     562 | Valle de la Pascua         |        104 | 2006-02-15 04:45:25 |
        |     563 | Valle de Santiago          |         60 | 2006-02-15 04:45:25 |
        |     572 | Vitória de Santo Antão     |         15 | 2006-02-15 04:45:25 |
        +---------+----------------------------+------------+---------------------+
        26 rows in set (0,01 sec)
        **/
        
        -- Películas con una duración entre 80 y 100.
        select film_id, title, length from film WHERE length BETWEEN 80 and 100;
        /**
        +---------+-------------------------+--------+
        | film_id | title                   | length |
        +---------+-------------------------+--------+
        |       1 | ACADEMY DINOSAUR        |     86 |
        |      14 | ALICE FANTASIA          |     94 |
        |      17 | ALONE TRIP              |     82 |
        |      22 | AMISTAD MIDSUMMER       |     85 |
        |      23 | ANACONDA CONFESSIONS    |     92 |
        |      26 | ANNIE IDENTITY          |     86 |
        |      28 | ANTHEM LUKE             |     91 |
        |      30 | ANYTHING SAVANNAH       |     82 |
        |      31 | APACHE DIVINE           |     92 |
        |      39 | ARMAGEDDON LOST         |     99 |
        |      45 | ATTRACTION NEWTON       |     83 |
        |      53 | BANG KWAI               |     87 |
        |      57 | BASIC EASY              |     90 |
        |      60 | BEAST HUNCHBACK         |     89 |
        |      65 | BEHAVIOR RUNAWAY        |    100 |
        |      69 | BEVERLY OUTLAW          |     85 |
        |      71 | BILKO ANONYMOUS         |    100 |
        |      72 | BILL OTHERS             |     93 |
        |      78 | BLACKOUT PRIVATE        |     85 |
        |      91 | BOUND CHEAPER           |     98 |
        |     109 | BUTTERFLY CHOCOLAT      |     89 |
        |     118 | CANYON STOCK            |     85 |
        |     120 | CARIBBEAN LIBERTY       |     92 |
        |     123 | CASABLANCA SUPER        |     85 |
        |     140 | CHEAPER CLYDE           |     87 |
        |     152 | CIRCUS YOUTH            |     90 |
        |     154 | CLASH FREDDY            |     81 |
        |     162 | CLUELESS BUCKET         |     95 |
        |     176 | CONGENIALITY QUEST      |     87 |
        |     184 | CORE SUIT               |     92 |
        |     203 | DAISY MENAGERIE         |     84 |
        |     208 | DARES PLUTO             |     89 |
        |     209 | DARKNESS WAR            |     99 |
        |     221 | DELIVERANCE MULHOLLAND  |    100 |
        |     224 | DESPERATE TRAINSPOTTING |     81 |
        |     227 | DETAILS PACKER          |     88 |
        |     229 | DEVIL DESIRE            |     87 |
        |     234 | DISTURBING SCARFACE     |     94 |
        |     236 | DIVINE RESURRECTION     |    100 |
        |     258 | DRUMS DYNAMITE          |     96 |
        |     268 | EARLY HOME              |     96 |
        |     269 | EARRING INSTINCT        |     98 |
        |     270 | EARTH VISION            |     85 |
        |     275 | EGYPT TENENBAUMS        |     85 |
        |     282 | ENCOUNTERS CURTAIN      |     92 |
        |     283 | ENDING CROWDS           |     85 |
        |     295 | EXPENDABLE STALLION     |     97 |
        |     305 | FATAL HAUNTED           |     91 |
        |     309 | FEUD FROGMEN            |     98 |
        |     314 | FIGHT JAWBREAKER        |     91 |
        |     320 | FLAMINGOS CONNECTICUT   |     80 |
        |     322 | FLATLINERS KILLER       |    100 |
        |     331 | FORWARD TEMPLE          |     90 |
        |     336 | FRENCH HOLIDAY          |     99 |
        |     341 | FROST HEAD              |     82 |
        |     342 | FUGITIVE MAGUIRE        |     83 |
        |     343 | FULL FLATLINERS         |     94 |
        |     348 | GANDHI KWAI             |     86 |
        |     350 | GARDEN ISLAND           |     80 |
        |     354 | GHOST GROUNDHOG         |     85 |
        |     361 | GLEAMING JAWBREAKER     |     89 |
        |     366 | GOLDFINGER SENSIBILITY  |     93 |
        |     368 | GONE TROUBLE            |     84 |
        |     375 | GRAIL FRANKENSTEIN      |     85 |
        |     378 | GREATEST NORTH          |     93 |
        |     387 | GUN BONNIE              |    100 |
        |     390 | GUYS FALCON             |     84 |
        |     399 | HAPPINESS UNITED        |    100 |
        |     415 | HIGH ENCINO             |     84 |
        |     417 | HILLS NEIGHBORS         |     93 |
        |     425 | HOLY TADPOLE            |     88 |
        |     429 | HONEY TIES              |     84 |
        |     433 | HORN WORKING            |     95 |
        |     444 | HUSTLER PARTY           |     83 |
        |     445 | HYDE DOCTOR             |    100 |
        |     450 | IDOLS SNATCHERS         |     84 |
        |     468 | INVASION CYCLONE        |     97 |
        |     471 | ISLAND EXORCIST         |     84 |
        |     480 | JEEPERS WEDDING         |     84 |
        |     493 | KANE EXORCIST           |     92 |
        |     520 | LICENSE WEEKEND         |     91 |
        |     527 | LOLA AGENT              |     85 |
        |     532 | LOSER HUSTLER           |     80 |
        |     533 | LOST BIRD               |     98 |
        |     540 | LUCKY FLYING            |     97 |
        |     546 | MADRE GABLES            |     98 |
        |     567 | MEET CHOCOLATE          |     80 |
        |     574 | MIDNIGHT WESTWARD       |     86 |
        |     595 | MOON BUNCH              |     83 |
        |     613 | MYSTIC TRUMAN           |     92 |
        |     616 | NATIONAL STORY          |     92 |
        |     625 | NONE SPIKING            |     83 |
        |     639 | OPPOSITE NECKLACE       |     92 |
        |     649 | OZ LIAISONS             |     85 |
        |     651 | PACKER MADIGAN          |     84 |
        |     654 | PANKY SUBMARINE         |     93 |
        |     663 | PATIENT SISTER          |     99 |
        |     668 | PEAK FOREVER            |     80 |
        |     671 | PERDITION FARGO         |     99 |
        |     672 | PERFECT GROOVE          |     82 |
        |     674 | PET HAUNTING            |     99 |
        |     681 | PIRATES ROXANNE         |    100 |
        |     686 | PLUTO OLEANDER          |     84 |
        |     694 | PREJUDICE OLEANDER      |     98 |
        |     702 | PULP BEVERLY            |     89 |
        |     703 | PUNK DIVORCE            |    100 |
        |     705 | PURPLE MOVIE            |     88 |
        |     712 | RAIDERS ANTITRUST       |     82 |
        |     717 | REAR TRADING            |     97 |
        |     723 | REIGN GENTLEMEN         |     82 |
        |     741 | ROMAN PUNK              |     81 |
        |     744 | ROOTS REMEMBER          |     89 |
        |     755 | SABRINA MIDNIGHT        |     99 |
        |     756 | SADDLE ANTITRUST        |     80 |
        |     766 | SAVANNAH TOWN           |     84 |
        |     772 | SEA VIRGIN              |     80 |
        |     776 | SECRET GROUNDHOG        |     90 |
        |     780 | SENSIBILITY REAR        |     98 |
        |     783 | SHANE DARKNESS          |     93 |
        |     785 | SHAWSHANK BUBBLE        |     80 |
        |     807 | SLEUTH ORIENT           |     87 |
        |     808 | SLING LUKE              |     84 |
        |     837 | STAGE WORLD             |     85 |
        |     846 | STING PERSONAL          |     93 |
        |     848 | STONE FIRE              |     94 |
        |     860 | SUICIDES SILENCE        |     93 |
        |     864 | SUNDANCE INVASION       |     92 |
        |     876 | TARZAN VIDEOTAPE        |     91 |
        |     882 | TENENBAUMS COMMAND      |     99 |
        |     884 | TERMINATOR CLUB         |     88 |
        |     893 | TITANS JERK             |     91 |
        |     910 | TREATMENT JEKYLL        |     87 |
        |     915 | TRUMAN CRAZY            |     92 |
        |     916 | TURN STAR               |     80 |
        |     919 | TYCOON GATHERING        |     82 |
        |     928 | UPTOWN YOUNG            |     84 |
        |     937 | VARSITY TRIP            |     85 |
        |     939 | VERTIGO NORTHWEST       |     90 |
        |     957 | WAR NOTTING             |     80 |
        |     959 | WARLOCK WEREWOLF        |     83 |
        |     962 | WASTELAND DIVINE        |     85 |
        |     977 | WINDOW SIDE             |     85 |
        |     978 | WISDOM WORKER           |     98 |
        |     979 | WITCHES PANIC           |    100 |
        |     986 | WONKA SEA               |     85 |
        |     994 | WYOMING STORM           |    100 |
        |     995 | YENTL IDAHO             |     86 |
        +---------+-------------------------+--------+
        147 rows in set (0,00 sec)
        **/

        -- Peliculas con un rental_rate entre 1 y 3.
        select film_id, title, rental_rate from film WHERE rental_rate BETWEEN 1 and 3;
        /**
        +---------+-----------------------------+-------------+
        | film_id | title                       | rental_rate |
        +---------+-----------------------------+-------------+
        |       3 | ADAPTATION HOLES            |        2.99 |
        |       4 | AFFAIR PREJUDICE            |        2.99 |
        |       5 | AFRICAN EGG                 |        2.99 |
        |       6 | AGENT TRUMAN                |        2.99 |
        |       9 | ALABAMA DEVIL               |        2.99 |
        |      15 | ALIEN CENTER                |        2.99 |
        |      16 | ALLEY EVOLUTION             |        2.99 |
        |      22 | AMISTAD MIDSUMMER           |        2.99 |
        |      24 | ANALYZE HOOSIERS            |        2.99 |
        |      25 | ANGELS LIFE                 |        2.99 |
        |      29 | ANTITRUST TOMATOES          |        2.99 |
        |      30 | ANYTHING SAVANNAH           |        2.99 |
        |      33 | APOLLO TEEN                 |        2.99 |
        |      35 | ARACHNOPHOBIA ROLLERCOASTER |        2.99 |
        |      37 | ARIZONA BANG                |        2.99 |
        |      42 | ARTIST COLDBLOODED          |        2.99 |
        |      43 | ATLANTIS CAUSE              |        2.99 |
        |      49 | BADMAN DAWN                 |        2.99 |
        |      50 | BAKED CLEOPATRA             |        2.99 |
        |      51 | BALLOON HOMEWARD            |        2.99 |
        |      53 | BANG KWAI                   |        2.99 |
        |      55 | BARBARELLA STREETCAR        |        2.99 |
        |      56 | BAREFOOT MANCHURIAN         |        2.99 |
        |      57 | BASIC EASY                  |        2.99 |
        |      58 | BEACH HEARTBREAKERS         |        2.99 |
        |      59 | BEAR GRACELAND              |        2.99 |
        |      62 | BED HIGHBALL                |        2.99 |
        |      67 | BERETS AGENT                |        2.99 |
        |      69 | BEVERLY OUTLAW              |        2.99 |
        |      72 | BILL OTHERS                 |        2.99 |
        |      73 | BINGO TALENTED              |        2.99 |
        |      78 | BLACKOUT PRIVATE            |        2.99 |
        |      80 | BLANKET BEVERLY             |        2.99 |
        |      83 | BLUES INSTINCT              |        2.99 |
        |      94 | BRAVEHEART HUMAN            |        2.99 |
        |      96 | BREAKING HOME               |        2.99 |
        |      99 | BRINGING HYSTERICAL         |        2.99 |
        |     104 | BUGSY SONG                  |        2.99 |
        |     106 | BULWORTH COMMANDMENTS       |        2.99 |
        |     107 | BUNCH MINDS                 |        2.99 |
        |     115 | CAMPUS REMEMBER             |        2.99 |
        |     116 | CANDIDATE PERDITION         |        2.99 |
        |     121 | CAROL TEXAS                 |        2.99 |
        |     125 | CASSIDY WYOMING             |        2.99 |
        |     129 | CAUSE DATE                  |        2.99 |
        |     135 | CHANCE RESURRECTION         |        2.99 |
        |     136 | CHAPLIN LICENSE             |        2.99 |
        |     137 | CHARADE DUFFEL              |        2.99 |
        |     138 | CHARIOTS CONSPIRACY         |        2.99 |
        |     146 | CHITTY LOCK                 |        2.99 |
        |     148 | CHOCOLATE DUCK              |        2.99 |
        |     150 | CIDER DESIRE                |        2.99 |
        |     152 | CIRCUS YOUTH                |        2.99 |
        |     154 | CLASH FREDDY                |        2.99 |
        |     158 | CLONES PINOCCHIO            |        2.99 |
        |     162 | CLUELESS BUCKET             |        2.99 |
        |     166 | COLOR PHILADELPHIA          |        2.99 |
        |     169 | COMFORTS RUSH               |        2.99 |
        |     175 | CONFUSED CANDLES            |        2.99 |
        |     180 | CONSPIRACY SPIRIT           |        2.99 |
        |     181 | CONTACT ANONYMOUS           |        2.99 |
        |     184 | CORE SUIT                   |        2.99 |
        |     185 | COWBOY DOOM                 |        2.99 |
        |     187 | CRANES RESERVOIR            |        2.99 |
        |     188 | CRAZY HOME                  |        2.99 |
        |     193 | CROSSROADS CASUALTIES       |        2.99 |
        |     197 | CRUSADE HONEY               |        2.99 |
        |     198 | CRYSTAL BREAKING            |        2.99 |
        |     199 | CUPBOARD SINNERS            |        2.99 |
        |     201 | CYCLONE FAMILY              |        2.99 |
        |     208 | DARES PLUTO                 |        2.99 |
        |     209 | DARKNESS WAR                |        2.99 |
        |     220 | DEER VIRGINIAN              |        2.99 |
        |     223 | DESIRE ALIEN                |        2.99 |
        |     230 | DIARY PANIC                 |        2.99 |
        |     231 | DINOSAUR SECRETARY          |        2.99 |
        |     232 | DIRTY ACE                   |        2.99 |
        |     234 | DISTURBING SCARFACE         |        2.99 |
        |     235 | DIVIDE MONSTER              |        2.99 |
        |     236 | DIVINE RESURRECTION         |        2.99 |
        |     237 | DIVORCE SHINING             |        2.99 |
        |     238 | DOCTOR GRAIL                |        2.99 |
        |     240 | DOLLS RAGE                  |        2.99 |
        |     252 | DREAM PICKUP                |        2.99 |
        |     254 | DRIVER ANNIE                |        2.99 |
        |     259 | DUCK RACER                  |        2.99 |
        |     264 | DWARFS ALTER                |        2.99 |
        |     274 | EGG IGBY                    |        2.99 |
        |     286 | ENOUGH RAGING               |        2.99 |
        |     288 | ESCAPE METROPOLIS           |        2.99 |
        |     293 | EXORCIST STING              |        2.99 |
        |     296 | EXPRESS LONELY              |        2.99 |
        |     297 | EXTRAORDINARY CONQUERER     |        2.99 |
        |     298 | EYES DRIVING                |        2.99 |
        |     302 | FANTASIA PARK               |        2.99 |
        |     304 | FARGO GANDHI                |        2.99 |
        |     305 | FATAL HAUNTED               |        2.99 |
        |     308 | FERRIS MOTHER               |        2.99 |
        |     319 | FISH OPUS                   |        2.99 |
        |     322 | FLATLINERS KILLER           |        2.99 |
        |     325 | FLOATS GARDEN               |        2.99 |
        |     326 | FLYING HOOK                 |        2.99 |
        |     328 | FOREVER CANDIDATE           |        2.99 |
        |     329 | FORREST SONS                |        2.99 |
        |     331 | FORWARD TEMPLE              |        2.99 |
        |     333 | FREAKY POCUS                |        2.99 |
        |     337 | FRIDA SLIPPER               |        2.99 |
        |     343 | FULL FLATLINERS             |        2.99 |
        |     349 | GANGS PRIDE                 |        2.99 |
        |     351 | GASLIGHT CRUSADE            |        2.99 |
        |     353 | GENTLEMEN STAGE             |        2.99 |
        |     356 | GIANT TROOPERS              |        2.99 |
        |     361 | GLEAMING JAWBREAKER         |        2.99 |
        |     362 | GLORY TRACY                 |        2.99 |
        |     364 | GODFATHER DIARY             |        2.99 |
        |     368 | GONE TROUBLE                |        2.99 |
        |     370 | GORGEOUS BINGO              |        2.99 |
        |     373 | GRADUATE LORD               |        2.99 |
        |     375 | GRAIL FRANKENSTEIN          |        2.99 |
        |     378 | GREATEST NORTH              |        2.99 |
        |     380 | GREEK EVERYONE              |        2.99 |
        |     389 | GUNFIGHTER MUSSOLINI        |        2.99 |
        |     391 | HALF OUTFIELD               |        2.99 |
        |     393 | HALLOWEEN NUTS              |        2.99 |
        |     394 | HAMLET WISDOM               |        2.99 |
        |     397 | HANKY OCTOBER               |        2.99 |
        |     399 | HAPPINESS UNITED            |        2.99 |
        |     400 | HARDLY ROBBERS              |        2.99 |
        |     410 | HEAVEN FREEDOM              |        2.99 |
        |     413 | HEDWIG ALTER                |        2.99 |
        |     414 | HELLFIGHTERS SIERRA         |        2.99 |
        |     415 | HIGH ENCINO                 |        2.99 |
        |     419 | HOCUS FRIDA                 |        2.99 |
        |     428 | HOMICIDE PEACH              |        2.99 |
        |     431 | HOOSIERS BIRDCAGE           |        2.99 |
        |     432 | HOPE TOOTSIE                |        2.99 |
        |     433 | HORN WORKING                |        2.99 |
        |     437 | HOUSE DYNAMITE              |        2.99 |
        |     438 | HUMAN GRAFFITI              |        2.99 |
        |     441 | HUNTER ALTER                |        2.99 |
        |     442 | HUNTING MUSKETEERS          |        2.99 |
        |     443 | HURRICANE AFFAIR            |        2.99 |
        |     445 | HYDE DOCTOR                 |        2.99 |
        |     447 | ICE CROSSING                |        2.99 |
        |     448 | IDAHO LOVE                  |        2.99 |
        |     449 | IDENTITY LOVER              |        2.99 |
        |     450 | IDOLS SNATCHERS             |        2.99 |
        |     453 | IMAGE PRINCESS              |        2.99 |
        |     462 | INSIDER ARIZONA             |        2.99 |
        |     463 | INSTINCT AIRPORT            |        2.99 |
        |     464 | INTENTIONS EMPIRE           |        2.99 |
        |     468 | INVASION CYCLONE            |        2.99 |
        |     471 | ISLAND EXORCIST             |        2.99 |
        |     473 | JACKET FRISCO               |        2.99 |
        |     474 | JADE BUNCH                  |        2.99 |
        |     476 | JASON TRAP                  |        2.99 |
        |     478 | JAWS HARRY                  |        2.99 |
        |     480 | JEEPERS WEDDING             |        2.99 |
        |     481 | JEKYLL FROGMEN              |        2.99 |
        |     483 | JERICHO MULAN               |        2.99 |
        |     484 | JERK PAYCHECK               |        2.99 |
        |     490 | JUMANJI BLADE               |        2.99 |
        |     495 | KENTUCKIAN GIANT            |        2.99 |
        |     498 | KILLER INNOCENT             |        2.99 |
        |     502 | KNOCK WARLOCK               |        2.99 |
        |     503 | KRAMER CHOCOLATE            |        2.99 |
        |     505 | LABYRINTH LEAGUE            |        2.99 |
        |     513 | LEATHERNECKS DWARFS         |        2.99 |
        |     514 | LEBOWSKI SOLDIERS           |        2.99 |
        |     519 | LIBERTY MAGNIFICENT         |        2.99 |
        |     520 | LICENSE WEEKEND             |        2.99 |
        |     522 | LIFE TWISTED                |        2.99 |
        |     526 | LOCK REAR                   |        2.99 |
        |     528 | LOLITA WORLD                |        2.99 |
        |     529 | LONELY ELEPHANT             |        2.99 |
        |     530 | LORD ARIZONA                |        2.99 |
        |     533 | LOST BIRD                   |        2.99 |
        |     536 | LOVELY JINGLE               |        2.99 |
        |     537 | LOVER TRUMAN                |        2.99 |
        |     539 | LUCK OPUS                   |        2.99 |
        |     540 | LUCKY FLYING                |        2.99 |
        |     541 | LUKE MUMMY                  |        2.99 |
        |     542 | LUST LOCK                   |        2.99 |
        |     544 | MADISON TRAP                |        2.99 |
        |     546 | MADRE GABLES                |        2.99 |
        |     548 | MAGNIFICENT CHITTY          |        2.99 |
        |     550 | MAGUIRE APACHE              |        2.99 |
        |     554 | MALKOVICH PET               |        2.99 |
        |     557 | MANCHURIAN CURTAIN          |        2.99 |
        |     558 | MANNEQUIN WORST             |        2.99 |
        |     559 | MARRIED GO                  |        2.99 |
        |     561 | MASK PEACH                  |        2.99 |
        |     564 | MASSAGE IMAGE               |        2.99 |
        |     567 | MEET CHOCOLATE              |        2.99 |
        |     569 | MENAGERIE RUSHMORE          |        2.99 |
        |     571 | METAL ARMAGEDDON            |        2.99 |
        |     572 | METROPOLIS COMA             |        2.99 |
        |     573 | MICROCOSMOS PARADISE        |        2.99 |
        |     576 | MIGHTY LUCK                 |        2.99 |
        |     582 | MIRACLE VIRTUAL             |        2.99 |
        |     584 | MIXED DOORS                 |        2.99 |
        |     590 | MONEY HAROLD                |        2.99 |
        |     592 | MONSTER SPARTACUS           |        2.99 |
        |     605 | MULHOLLAND BEAST            |        2.99 |
        |     608 | MURDER ANTITRUST            |        2.99 |
        |     609 | MUSCLE BRIGHT               |        2.99 |
        |     612 | MUSSOLINI SPOILERS          |        2.99 |
        |     615 | NASH CHOCOLAT               |        2.99 |
        |     616 | NATIONAL STORY              |        2.99 |
        |     620 | NEMO CAMPUS                 |        2.99 |
        |     621 | NETWORK PEAK                |        2.99 |
        |     626 | NOON PAPI                   |        2.99 |
        |     628 | NORTHWEST POLISH            |        2.99 |
        |     638 | OPERATION OPERATION         |        2.99 |
        |     642 | ORDER BETRAYED              |        2.99 |
        |     643 | ORIENT CLOSER               |        2.99 |
        |     644 | OSCAR GOLD                  |        2.99 |
        |     645 | OTHERS SOUP                 |        2.99 |
        |     649 | OZ LIAISONS                 |        2.99 |
        |     657 | PARADISE SABRINA            |        2.99 |
        |     658 | PARIS WEEKEND               |        2.99 |
        |     660 | PARTY KNOCK                 |        2.99 |
        |     664 | PATRIOT ROMAN               |        2.99 |
        |     665 | PATTON INTERVIEW            |        2.99 |
        |     667 | PEACH INNOCENT              |        2.99 |
        |     669 | PEARL DESTINY               |        2.99 |
        |     672 | PERFECT GROOVE              |        2.99 |
        |     675 | PHANTOM GLORY               |        2.99 |
        |     678 | PICKUP DRIVING              |        2.99 |
        |     679 | PILOT HOOSIERS              |        2.99 |
        |     684 | PIZZA JUMANJI               |        2.99 |
        |     689 | POLLOCK DELIVERANCE         |        2.99 |
        |     690 | POND SEATTLE                |        2.99 |
        |     692 | POTLUCK MIXED               |        2.99 |
        |     693 | POTTER CONNECTICUT          |        2.99 |
        |     698 | PRINCESS GIANT              |        2.99 |
        |     700 | PRIX UNDEFEATED             |        2.99 |
        |     701 | PSYCHO SHRUNK               |        2.99 |
        |     702 | PULP BEVERLY                |        2.99 |
        |     704 | PURE RUNNER                 |        2.99 |
        |     705 | PURPLE MOVIE                |        2.99 |
        |     707 | QUEST MUSSOLINI             |        2.99 |
        |     709 | RACER EGG                   |        2.99 |
        |     714 | RANDOM GO                   |        2.99 |
        |     716 | REAP UNFAITHFUL             |        2.99 |
        |     720 | REDEMPTION COMFORTS         |        2.99 |
        |     723 | REIGN GENTLEMEN             |        2.99 |
        |     724 | REMEMBER DIARY              |        2.99 |
        |     726 | RESERVOIR ADAPTATION        |        2.99 |
        |     729 | RIDER CADDYSHACK            |        2.99 |
        |     735 | ROBBERS JOON                |        2.99 |
        |     740 | ROLLERCOASTER BRINGING      |        2.99 |
        |     754 | RUSHMORE MERMAID            |        2.99 |
        |     756 | SADDLE ANTITRUST            |        2.99 |
        |     757 | SAGEBRUSH CLUELESS          |        2.99 |
        |     758 | SAINTS BRIDE                |        2.99 |
        |     759 | SALUTE APOLLO               |        2.99 |
        |     760 | SAMURAI LION                |        2.99 |
        |     761 | SANTA PARIS                 |        2.99 |
        |     770 | SCISSORHANDS SLUMS          |        2.99 |
        |     772 | SEA VIRGIN                  |        2.99 |
        |     773 | SEABISCUIT PUNK             |        2.99 |
        |     774 | SEARCHERS WAIT              |        2.99 |
        |     782 | SHAKESPEARE SADDLE          |        2.99 |
        |     783 | SHANE DARKNESS              |        2.99 |
        |     784 | SHANGHAI TYCOON             |        2.99 |
        |     788 | SHIP WONDERLAND             |        2.99 |
        |     789 | SHOCK CABIN                 |        2.99 |
        |     792 | SHREK LICENSE               |        2.99 |
        |     793 | SHRUNK DIVINE               |        2.99 |
        |     800 | SINNERS ATLANTIS            |        2.99 |
        |     802 | SKY MIRACLE                 |        2.99 |
        |     806 | SLEEPY JAPANESE             |        2.99 |
        |     811 | SMILE EARRING               |        2.99 |
        |     815 | SNATCHERS MONTEZUMA         |        2.99 |
        |     820 | SONS INTERVIEW              |        2.99 |
        |     823 | SOUTH WAIT                  |        2.99 |
        |     825 | SPEAKEASY DATE              |        2.99 |
        |     828 | SPIKING ELEMENT             |        2.99 |
        |     829 | SPINAL ROCKY                |        2.99 |
        |     835 | SPY MILE                    |        2.99 |
        |     836 | SQUAD FISH                  |        2.99 |
        |     837 | STAGE WORLD                 |        2.99 |
        |     841 | STAR OPERATION              |        2.99 |
        |     842 | STATE WASTELAND             |        2.99 |
        |     847 | STOCK GLASS                 |        2.99 |
        |     857 | STRICTLY SCARFACE           |        2.99 |
        |     869 | SUSPECTS QUILLS             |        2.99 |
        |     872 | SWEET BROTHERHOOD           |        2.99 |
        |     874 | TADPOLE PARK                |        2.99 |
        |     876 | TARZAN VIDEOTAPE            |        2.99 |
        |     880 | TELEMARK HEARTBREAKERS      |        2.99 |
        |     895 | TOMORROW HUSTLER            |        2.99 |
        |     900 | TOWN ARK                    |        2.99 |
        |     912 | TROJAN TOMORROW             |        2.99 |
        |     914 | TROUBLE DATE                |        2.99 |
        |     916 | TURN STAR                   |        2.99 |
        |     917 | TUXEDO MILE                 |        2.99 |
        |     921 | UNCUT SUICIDES              |        2.99 |
        |     923 | UNFAITHFUL KILL             |        2.99 |
        |     926 | UNTOUCHABLES SUNRISE        |        2.99 |
        |     927 | UPRISING UPTOWN             |        2.99 |
        |     928 | UPTOWN YOUNG                |        2.99 |
        |     930 | VACATION BOONDOCK           |        2.99 |
        |     936 | VANISHING ROCKY             |        2.99 |
        |     937 | VARSITY TRIP                |        2.99 |
        |     939 | VERTIGO NORTHWEST           |        2.99 |
        |     952 | WAGON JAWS                  |        2.99 |
        |     958 | WARDROBE PHANTOM            |        2.99 |
        |     959 | WARLOCK WEREWOLF            |        2.99 |
        |     960 | WARS PLUTO                  |        2.99 |
        |     962 | WASTELAND DIVINE            |        2.99 |
        |     967 | WEEKEND PERSONAL            |        2.99 |
        |     975 | WILLOW TRACY                |        2.99 |
        |     977 | WINDOW SIDE                 |        2.99 |
        |     983 | WON DARES                   |        2.99 |
        |     984 | WONDERFUL DROP              |        2.99 |
        |     986 | WONKA SEA                   |        2.99 |
        |     987 | WORDS HUNTER                |        2.99 |
        |     988 | WORKER TARZAN               |        2.99 |
        |     991 | WORST BANGER                |        2.99 |
        |     993 | WRONG BEHAVIOR              |        2.99 |
        |     999 | ZOOLANDER FICTION           |        2.99 |
        +---------+-----------------------------+-------------+
        323 rows in set (0,00 sec)
        **/
        
        -- Películas con un titulo de más de 12 letras.
        select film_id, title from film WHERE title regexp '.{13,}';
        /**
        +---------+-----------------------------+
        | film_id | title                       |
        +---------+-----------------------------+
        |       1 | ACADEMY DINOSAUR            |
        |       2 | ACE GOLDFINGER              |
        |       3 | ADAPTATION HOLES            |
        |       4 | AFFAIR PREJUDICE            |
        |       7 | AIRPLANE SIERRA             |
        |       8 | AIRPORT POLLOCK             |
        |       9 | ALABAMA DEVIL               |
        |      10 | ALADDIN CALENDAR            |
        |      11 | ALAMO VIDEOTAPE             |
        |      12 | ALASKA PHANTOM              |
        |      14 | ALICE FANTASIA              |
        |      16 | ALLEY EVOLUTION             |
        |      18 | ALTER VICTORY               |
        |      20 | AMELIE HELLFIGHTERS         |
        |      21 | AMERICAN CIRCUS             |
        |      22 | AMISTAD MIDSUMMER           |
        |      23 | ANACONDA CONFESSIONS        |
        |      24 | ANALYZE HOOSIERS            |
        |      26 | ANNIE IDENTITY              |
        |      27 | ANONYMOUS HUMAN             |
        |      29 | ANTITRUST TOMATOES          |
        |      30 | ANYTHING SAVANNAH           |
        |      31 | APACHE DIVINE               |
        |      32 | APOCALYPSE FLAMINGOS        |
        |      35 | ARACHNOPHOBIA ROLLERCOASTER |
        |      36 | ARGONAUTS TOWN              |
        |      38 | ARK RIDGEMONT               |
        |      39 | ARMAGEDDON LOST             |
        |      40 | ARMY FLINTSTONES            |
        |      41 | ARSENIC INDEPENDENCE        |
        |      42 | ARTIST COLDBLOODED          |
        |      43 | ATLANTIS CAUSE              |
        |      45 | ATTRACTION NEWTON           |
        |      48 | BACKLASH UNDEFEATED         |
        |      50 | BAKED CLEOPATRA             |
        |      51 | BALLOON HOMEWARD            |
        |      52 | BALLROOM MOCKINGBIRD        |
        |      54 | BANGER PINOCCHIO            |
        |      55 | BARBARELLA STREETCAR        |
        |      56 | BAREFOOT MANCHURIAN         |
        |      58 | BEACH HEARTBREAKERS         |
        |      59 | BEAR GRACELAND              |
        |      60 | BEAST HUNCHBACK             |
        |      61 | BEAUTY GREASE               |
        |      63 | BEDAZZLED MARRIED           |
        |      64 | BEETHOVEN EXORCIST          |
        |      65 | BEHAVIOR RUNAWAY            |
        |      68 | BETRAYED REAR               |
        |      69 | BEVERLY OUTLAW              |
        |      70 | BIKINI BORROWERS            |
        |      71 | BILKO ANONYMOUS             |
        |      73 | BINGO TALENTED              |
        |      74 | BIRCH ANTITRUST             |
        |      75 | BIRD INDEPENDENCE           |
        |      76 | BIRDCAGE CASPER             |
        |      77 | BIRDS PERDITION             |
        |      78 | BLACKOUT PRIVATE            |
        |      80 | BLANKET BEVERLY             |
        |      81 | BLINDNESS GUN               |
        |      82 | BLOOD ARGONAUTS             |
        |      83 | BLUES INSTINCT              |
        |      85 | BONNIE HOLOCAUST            |
        |      86 | BOOGIE AMELIE               |
        |      87 | BOONDOCK BALLROOM           |
        |      89 | BORROWERS BEDAZZLED         |
        |      90 | BOULEVARD MOB               |
        |      91 | BOUND CHEAPER               |
        |      92 | BOWFINGER GABLES            |
        |      93 | BRANNIGAN SUNRISE           |
        |      94 | BRAVEHEART HUMAN            |
        |      95 | BREAKFAST GOLDFINGER        |
        |      96 | BREAKING HOME               |
        |      97 | BRIDE INTRIGUE              |
        |      98 | BRIGHT ENCOUNTERS           |
        |      99 | BRINGING HYSTERICAL         |
        |     100 | BROOKLYN DESERT             |
        |     101 | BROTHERHOOD BLANKET         |
        |     102 | BUBBLE GROSSE               |
        |     103 | BUCKET BROTHERHOOD          |
        |     105 | BULL SHAWSHANK              |
        |     106 | BULWORTH COMMANDMENTS       |
        |     108 | BUTCH PANTHER               |
        |     109 | BUTTERFLY CHOCOLAT          |
        |     111 | CADDYSHACK JEDI             |
        |     112 | CALENDAR GUNFIGHT           |
        |     113 | CALIFORNIA BIRDS            |
        |     114 | CAMELOT VACATION            |
        |     115 | CAMPUS REMEMBER             |
        |     116 | CANDIDATE PERDITION         |
        |     117 | CANDLES GRAPES              |
        |     119 | CAPER MOTIONS               |
        |     120 | CARIBBEAN LIBERTY           |
        |     123 | CASABLANCA SUPER            |
        |     124 | CASPER DRAGONFLY            |
        |     125 | CASSIDY WYOMING             |
        |     126 | CASUALTIES ENCINO           |
        |     127 | CAT CONEHEADS               |
        |     128 | CATCH AMISTAD               |
        |     130 | CELEBRITY HORN              |
        |     131 | CENTER DINOSAUR             |
        |     132 | CHAINSAW UPTOWN             |
        |     133 | CHAMBER ITALIAN             |
        |     134 | CHAMPION FLATLINERS         |
        |     135 | CHANCE RESURRECTION         |
        |     136 | CHAPLIN LICENSE             |
        |     137 | CHARADE DUFFEL              |
        |     138 | CHARIOTS CONSPIRACY         |
        |     139 | CHASING FIGHT               |
        |     140 | CHEAPER CLYDE               |
        |     141 | CHICAGO NORTH               |
        |     142 | CHICKEN HELLFIGHTERS        |
        |     144 | CHINATOWN GLADIATOR         |
        |     145 | CHISUM BEHAVIOR             |
        |     147 | CHOCOLAT HARRY              |
        |     148 | CHOCOLATE DUCK              |
        |     149 | CHRISTMAS MOONSHINE         |
        |     151 | CINCINATTI WHISPERER        |
        |     153 | CITIZEN SHREK               |
        |     155 | CLEOPATRA DEVIL             |
        |     156 | CLERKS ANGELS               |
        |     157 | CLOCKWORK PARADISE          |
        |     158 | CLONES PINOCCHIO            |
        |     160 | CLUB GRAFFITI               |
        |     162 | CLUELESS BUCKET             |
        |     164 | COAST RAINBOW               |
        |     165 | COLDBLOODED DARLING         |
        |     166 | COLOR PHILADELPHIA          |
        |     168 | COMANCHEROS ENEMY           |
        |     169 | COMFORTS RUSH               |
        |     170 | COMMAND DARLING             |
        |     171 | COMMANDMENTS EXPRESS        |
        |     172 | CONEHEADS SMOOCHY           |
        |     173 | CONFESSIONS MAGUIRE         |
        |     174 | CONFIDENTIAL INTERVIEW      |
        |     175 | CONFUSED CANDLES            |
        |     176 | CONGENIALITY QUEST          |
        |     177 | CONNECTICUT TRAMP           |
        |     178 | CONNECTION MICROCOSMOS      |
        |     179 | CONQUERER NUTS              |
        |     180 | CONSPIRACY SPIRIT           |
        |     181 | CONTACT ANONYMOUS           |
        |     182 | CONTROL ANTHEM              |
        |     183 | CONVERSATION DOWNHILL       |
        |     186 | CRAFT OUTFIELD              |
        |     187 | CRANES RESERVOIR            |
        |     189 | CREATURES SHAKESPEARE       |
        |     190 | CREEPERS KANE               |
        |     191 | CROOKED FROGMEN             |
        |     192 | CROSSING DIVORCE            |
        |     193 | CROSSROADS CASUALTIES       |
        |     195 | CROWDS TELEMARK             |
        |     196 | CRUELTY UNFORGIVEN          |
        |     197 | CRUSADE HONEY               |
        |     198 | CRYSTAL BREAKING            |
        |     199 | CUPBOARD SINNERS            |
        |     200 | CURTAIN VIDEOTAPE           |
        |     201 | CYCLONE FAMILY              |
        |     202 | DADDY PITTSBURGH            |
        |     203 | DAISY MENAGERIE             |
        |     204 | DALMATIONS SWEDEN           |
        |     206 | DANCING FEVER               |
        |     207 | DANGEROUS UPTOWN            |
        |     211 | DARLING BREAKING            |
        |     212 | DARN FORRESTER              |
        |     214 | DAUGHTER MADIGAN            |
        |     216 | DAY UNFAITHFUL              |
        |     218 | DECEIVER BETRAYED           |
        |     220 | DEER VIRGINIAN              |
        |     221 | DELIVERANCE MULHOLLAND      |
        |     222 | DESERT POSEIDON             |
        |     224 | DESPERATE TRAINSPOTTING     |
        |     225 | DESTINATION JERK            |
        |     226 | DESTINY SATURDAY            |
        |     227 | DETAILS PACKER              |
        |     228 | DETECTIVE VISION            |
        |     231 | DINOSAUR SECRETARY          |
        |     233 | DISCIPLE MOTHER             |
        |     234 | DISTURBING SCARFACE         |
        |     235 | DIVIDE MONSTER              |
        |     236 | DIVINE RESURRECTION         |
        |     237 | DIVORCE SHINING             |
        |     243 | DOORS PRESIDENT             |
        |     244 | DORADO NOTTING              |
        |     246 | DOUBTFIRE LABYRINTH         |
        |     247 | DOWNHILL ENOUGH             |
        |     249 | DRACULA CRYSTAL             |
        |     251 | DRAGONFLY STRANGERS         |
        |     253 | DRIFTER COMMANDMENTS        |
        |     255 | DRIVING POLISH              |
        |     256 | DROP WATERFRONT             |
        |     257 | DRUMLINE CYCLONE            |
        |     258 | DRUMS DYNAMITE              |
        |     260 | DUDE BLINDNESS              |
        |     261 | DUFFEL APOCALYPSE           |
        |     266 | DYNAMITE TARZAN             |
        |     269 | EARRING INSTINCT            |
        |     271 | EASY GLADIATOR              |
        |     273 | EFFECT GLADIATOR            |
        |     275 | EGYPT TENENBAUMS            |
        |     276 | ELEMENT FREDDY              |
        |     277 | ELEPHANT TROJAN             |
        |     279 | ELIZABETH SHANE             |
        |     280 | EMPIRE MALKOVICH            |
        |     282 | ENCOUNTERS CURTAIN          |
        |     283 | ENDING CROWDS               |
        |     285 | ENGLISH BULWORTH            |
        |     286 | ENOUGH RAGING               |
        |     287 | ENTRAPMENT SATISFACTION     |
        |     288 | ESCAPE METROPOLIS           |
        |     289 | EVE RESURRECTION            |
        |     290 | EVERYONE CRAFT              |
        |     291 | EVOLUTION ALTER             |
        |     292 | EXCITEMENT EVE              |
        |     293 | EXORCIST STING              |
        |     294 | EXPECATIONS NATURAL         |
        |     295 | EXPENDABLE STALLION         |
        |     296 | EXPRESS LONELY              |
        |     297 | EXTRAORDINARY CONQUERER     |
        |     299 | FACTORY DRAGON              |
        |     300 | FALCON VOLUME               |
        |     302 | FANTASIA PARK               |
        |     303 | FANTASY TROOPERS            |
        |     305 | FATAL HAUNTED               |
        |     306 | FEATHERS METAL              |
        |     307 | FELLOWSHIP AUTUMN           |
        |     308 | FERRIS MOTHER               |
        |     311 | FICTION CHRISTMAS           |
        |     313 | FIDELITY DEVIL              |
        |     314 | FIGHT JAWBREAKER            |
        |     315 | FINDING ANACONDA            |
        |     317 | FIREBALL PHILADELPHIA       |
        |     318 | FIREHOUSE VIETNAM           |
        |     320 | FLAMINGOS CONNECTICUT       |
        |     322 | FLATLINERS KILLER           |
        |     324 | FLINTSTONES HAPPINESS       |
        |     325 | FLOATS GARDEN               |
        |     327 | FOOL MOCKINGBIRD            |
        |     328 | FOREVER CANDIDATE           |
        |     330 | FORRESTER COMANCHEROS       |
        |     331 | FORWARD TEMPLE              |
        |     332 | FRANKENSTEIN STRANGER       |
        |     335 | FREEDOM CLEOPATRA           |
        |     336 | FRENCH HOLIDAY              |
        |     337 | FRIDA SLIPPER               |
        |     338 | FRISCO FORREST              |
        |     339 | FROGMEN BREAKING            |
        |     340 | FRONTIER CABIN              |
        |     342 | FUGITIVE MAGUIRE            |
        |     343 | FULL FLATLINERS             |
        |     345 | GABLES METROPOLIS           |
        |     346 | GALAXY SWEETHEARTS          |
        |     347 | GAMES BOWFINGER             |
        |     350 | GARDEN ISLAND               |
        |     351 | GASLIGHT CRUSADE            |
        |     352 | GATHERING CALENDAR          |
        |     353 | GENTLEMEN STAGE             |
        |     354 | GHOST GROUNDHOG             |
        |     355 | GHOSTBUSTERS ELF            |
        |     356 | GIANT TROOPERS              |
        |     357 | GILBERT PELICAN             |
        |     358 | GILMORE BOILED              |
        |     359 | GLADIATOR WESTWARD          |
        |     361 | GLEAMING JAWBREAKER         |
        |     364 | GODFATHER DIARY             |
        |     366 | GOLDFINGER SENSIBILITY      |
        |     367 | GOLDMINE TYCOON             |
        |     369 | GOODFELLAS SALUTE           |
        |     370 | GORGEOUS BINGO              |
        |     371 | GOSFORD DONNIE              |
        |     372 | GRACELAND DYNAMITE          |
        |     373 | GRADUATE LORD               |
        |     374 | GRAFFITI LOVE               |
        |     375 | GRAIL FRANKENSTEIN          |
        |     378 | GREATEST NORTH              |
        |     380 | GREEK EVERYONE              |
        |     381 | GRINCH MASSAGE              |
        |     382 | GRIT CLOCKWORK              |
        |     383 | GROOVE FICTION              |
        |     384 | GROSSE WONDERFUL            |
        |     385 | GROUNDHOG UNCUT             |
        |     388 | GUNFIGHT MOON               |
        |     389 | GUNFIGHTER MUSSOLINI        |
        |     391 | HALF OUTFIELD               |
        |     393 | HALLOWEEN NUTS              |
        |     394 | HAMLET WISDOM               |
        |     395 | HANDICAP BOONDOCK           |
        |     397 | HANKY OCTOBER               |
        |     398 | HANOVER GALAXY              |
        |     399 | HAPPINESS UNITED            |
        |     400 | HARDLY ROBBERS              |
        |     401 | HAROLD FRENCH               |
        |     404 | HATE HANDICAP               |
        |     405 | HAUNTED ANTITRUST           |
        |     406 | HAUNTING PIANIST            |
        |     408 | HEAD STRANGER               |
        |     409 | HEARTBREAKERS BRIGHT        |
        |     410 | HEAVEN FREEDOM              |
        |     412 | HEAVYWEIGHTS BEAST          |
        |     414 | HELLFIGHTERS SIERRA         |
        |     416 | HIGHBALL POTTER             |
        |     417 | HILLS NEIGHBORS             |
        |     420 | HOLES BRANNIGAN             |
        |     421 | HOLIDAY GAMES               |
        |     422 | HOLLOW JEOPARDY             |
        |     423 | HOLLYWOOD ANONYMOUS         |
        |     424 | HOLOCAUST HIGHBALL          |
        |     427 | HOMEWARD CIDER              |
        |     428 | HOMICIDE PEACH              |
        |     430 | HOOK CHARIOTS               |
        |     431 | HOOSIERS BIRDCAGE           |
        |     435 | HOTEL HAPPINESS             |
        |     437 | HOUSE DYNAMITE              |
        |     438 | HUMAN GRAFFITI              |
        |     439 | HUNCHBACK IMPOSSIBLE        |
        |     442 | HUNTING MUSKETEERS          |
        |     443 | HURRICANE AFFAIR            |
        |     444 | HUSTLER PARTY               |
        |     446 | HYSTERICAL GRAIL            |
        |     449 | IDENTITY LOVER              |
        |     450 | IDOLS SNATCHERS             |
        |     452 | ILLUSION AMELIE             |
        |     453 | IMAGE PRINCESS              |
        |     454 | IMPACT ALADDIN              |
        |     455 | IMPOSSIBLE PREJUDICE        |
        |     457 | INDEPENDENCE HOTEL          |
        |     459 | INFORMER DOUBLE             |
        |     460 | INNOCENT USUAL              |
        |     461 | INSECTS STONE               |
        |     462 | INSIDER ARIZONA             |
        |     463 | INSTINCT AIRPORT            |
        |     464 | INTENTIONS EMPIRE           |
        |     465 | INTERVIEW LIAISONS          |
        |     466 | INTOLERABLE INTENTIONS      |
        |     467 | INTRIGUE WORST              |
        |     468 | INVASION CYCLONE            |
        |     470 | ISHTAR ROCKETEER            |
        |     471 | ISLAND EXORCIST             |
        |     472 | ITALIAN AFRICAN             |
        |     473 | JACKET FRISCO               |
        |     477 | JAWBREAKER BROOKLYN         |
        |     480 | JEEPERS WEDDING             |
        |     481 | JEKYLL FROGMEN              |
        |     482 | JEOPARDY ENCINO             |
        |     483 | JERICHO MULAN               |
        |     484 | JERK PAYCHECK               |
        |     486 | JET NEIGHBORS               |
        |     487 | JINGLE SAGEBRUSH            |
        |     488 | JOON NORTHWEST              |
        |     489 | JUGGLER HARDLY              |
        |     490 | JUMANJI BLADE               |
        |     491 | JUMPING WRATH               |
        |     492 | JUNGLE CLOSER               |
        |     493 | KANE EXORCIST               |
        |     495 | KENTUCKIAN GIANT            |
        |     496 | KICK SAVANNAH               |
        |     497 | KILL BROTHERHOOD            |
        |     498 | KILLER INNOCENT             |
        |     499 | KING EVOLUTION              |
        |     501 | KISSING DOLLS               |
        |     502 | KNOCK WARLOCK               |
        |     503 | KRAMER CHOCOLATE            |
        |     504 | KWAI HOMEWARD               |
        |     505 | LABYRINTH LEAGUE            |
        |     507 | LADYBUGS ARMAGEDDON         |
        |     508 | LAMBS CINCINATTI            |
        |     509 | LANGUAGE COWBOY             |
        |     510 | LAWLESS VISION              |
        |     511 | LAWRENCE LOVE               |
        |     512 | LEAGUE HELLFIGHTERS         |
        |     513 | LEATHERNECKS DWARFS         |
        |     514 | LEBOWSKI SOLDIERS           |
        |     515 | LEGALLY SECRETARY           |
        |     517 | LESSON CLEOPATRA            |
        |     518 | LIAISONS SWEET              |
        |     519 | LIBERTY MAGNIFICENT         |
        |     520 | LICENSE WEEKEND             |
        |     521 | LIES TREATMENT              |
        |     525 | LOATHING LEGALLY            |
        |     529 | LONELY ELEPHANT             |
        |     532 | LOSER HUSTLER               |
        |     534 | LOUISIANA HARRY             |
        |     535 | LOVE SUICIDES               |
        |     536 | LOVELY JINGLE               |
        |     538 | LOVERBOY ATTACKS            |
        |     543 | MADIGAN DORADO              |
        |     545 | MADNESS ATTACKS             |
        |     547 | MAGIC MALLRATS              |
        |     548 | MAGNIFICENT CHITTY          |
        |     549 | MAGNOLIA FORRESTER          |
        |     550 | MAGUIRE APACHE              |
        |     552 | MAJESTIC FLOATS             |
        |     554 | MALKOVICH PET               |
        |     555 | MALLRATS UNITED             |
        |     557 | MANCHURIAN CURTAIN          |
        |     558 | MANNEQUIN WORST             |
        |     562 | MASKED BUBBLE               |
        |     563 | MASSACRE USUAL              |
        |     564 | MASSAGE IMAGE               |
        |     565 | MATRIX SNOWMAN              |
        |     567 | MEET CHOCOLATE              |
        |     568 | MEMENTO ZOOLANDER           |
        |     569 | MENAGERIE RUSHMORE          |
        |     570 | MERMAID INSECTS             |
        |     571 | METAL ARMAGEDDON            |
        |     572 | METROPOLIS COMA             |
        |     573 | MICROCOSMOS PARADISE        |
        |     574 | MIDNIGHT WESTWARD           |
        |     575 | MIDSUMMER GROUNDHOG         |
        |     581 | MINORITY KISS               |
        |     582 | MIRACLE VIRTUAL             |
        |     583 | MISSION ZOOLANDER           |
        |     586 | MOCKINGBIRD HOLLYWOOD       |
        |     587 | MOD SECRETARY               |
        |     589 | MODERN DORADO               |
        |     591 | MONSOON CAUSE               |
        |     592 | MONSTER SPARTACUS           |
        |     593 | MONTEREY LABYRINTH          |
        |     594 | MONTEZUMA COMMAND           |
        |     596 | MOONSHINE CABIN             |
        |     597 | MOONWALKER FOOL             |
        |     598 | MOSQUITO ARMAGEDDON         |
        |     599 | MOTHER OLEANDER             |
        |     600 | MOTIONS DETAILS             |
        |     602 | MOURNING PURPLE             |
        |     603 | MOVIE SHAKESPEARE           |
        |     605 | MULHOLLAND BEAST            |
        |     606 | MUMMY CREATURES             |
        |     608 | MURDER ANTITRUST            |
        |     609 | MUSCLE BRIGHT               |
        |     610 | MUSIC BOONDOCK              |
        |     611 | MUSKETEERS WAIT             |
        |     612 | MUSSOLINI SPOILERS          |
        |     613 | MYSTIC TRUMAN               |
        |     614 | NAME DETECTIVE              |
        |     615 | NASH CHOCOLAT               |
        |     616 | NATIONAL STORY              |
        |     617 | NATURAL STOCK               |
        |     618 | NECKLACE OUTBREAK           |
        |     619 | NEIGHBORS CHARADE           |
        |     622 | NEWSIES STORY               |
        |     623 | NEWTON LABYRINTH            |
        |     624 | NIGHTMARE CHILL             |
        |     627 | NORTH TEQUILA               |
        |     628 | NORTHWEST POLISH            |
        |     629 | NOTORIOUS REUNION           |
        |     630 | NOTTING SPEAKEASY           |
        |     631 | NOVOCAINE FLIGHT            |
        |     633 | OCTOBER SUBMARINE           |
        |     635 | OKLAHOMA JUMANJI            |
        |     636 | OLEANDER CLUE               |
        |     638 | OPERATION OPERATION         |
        |     639 | OPPOSITE NECKLACE           |
        |     641 | ORANGE GRAPES               |
        |     642 | ORDER BETRAYED              |
        |     643 | ORIENT CLOSER               |
        |     646 | OUTBREAK DIVINE             |
        |     647 | OUTFIELD MASSACRE           |
        |     650 | PACIFIC AMISTAD             |
        |     651 | PACKER MADIGAN              |
        |     652 | PAJAMA JAWBREAKER           |
        |     654 | PANKY SUBMARINE             |
        |     656 | PAPI NECKLACE               |
        |     657 | PARADISE SABRINA            |
        |     658 | PARIS WEEKEND               |
        |     661 | PAST SUICIDES               |
        |     662 | PATHS CONTROL               |
        |     663 | PATIENT SISTER              |
        |     664 | PATRIOT ROMAN               |
        |     665 | PATTON INTERVIEW            |
        |     666 | PAYCHECK WAIT               |
        |     667 | PEACH INNOCENT              |
        |     669 | PEARL DESTINY               |
        |     670 | PELICAN COMFORTS            |
        |     671 | PERDITION FARGO             |
        |     672 | PERFECT GROOVE              |
        |     673 | PERSONAL LADYBUGS           |
        |     675 | PHANTOM GLORY               |
        |     676 | PHILADELPHIA WIFE           |
        |     677 | PIANIST OUTFIELD            |
        |     678 | PICKUP DRIVING              |
        |     679 | PILOT HOOSIERS              |
        |     680 | PINOCCHIO SIMON             |
        |     681 | PIRATES ROXANNE             |
        |     682 | PITTSBURGH HUNCHBACK        |
        |     684 | PIZZA JUMANJI               |
        |     685 | PLATOON INSTINCT            |
        |     686 | PLUTO OLEANDER              |
        |     688 | POLISH BROOKLYN             |
        |     689 | POLLOCK DELIVERANCE         |
        |     691 | POSEIDON FOREVER            |
        |     692 | POTLUCK MIXED               |
        |     693 | POTTER CONNECTICUT          |
        |     694 | PREJUDICE OLEANDER          |
        |     695 | PRESIDENT BANG              |
        |     697 | PRIMARY GLASS               |
        |     698 | PRINCESS GIANT              |
        |     700 | PRIX UNDEFEATED             |
        |     701 | PSYCHO SHRUNK               |
        |     707 | QUEST MUSSOLINI             |
        |     711 | RAGING AIRPLANE             |
        |     712 | RAIDERS ANTITRUST           |
        |     713 | RAINBOW SHOCK               |
        |     715 | RANGE MOONWALKER            |
        |     716 | REAP UNFAITHFUL             |
        |     718 | REBEL AIRPORT               |
        |     719 | RECORDS ZORRO               |
        |     720 | REDEMPTION COMFORTS         |
        |     723 | REIGN GENTLEMEN             |
        |     724 | REMEMBER DIARY              |
        |     725 | REQUIEM TYCOON              |
        |     726 | RESERVOIR ADAPTATION        |
        |     727 | RESURRECTION SILVERADO      |
        |     728 | REUNION WITCHES             |
        |     729 | RIDER CADDYSHACK            |
        |     730 | RIDGEMONT SUBMARINE         |
        |     732 | RINGS HEARTBREAKERS         |
        |     736 | ROBBERY BRIGHT              |
        |     737 | ROCK INSTINCT               |
        |     738 | ROCKETEER MOTHER            |
        |     740 | ROLLERCOASTER BRINGING      |
        |     742 | ROOF CHAMPION               |
        |     744 | ROOTS REMEMBER              |
        |     745 | ROSES TREASURE              |
        |     747 | ROXANNE REBEL               |
        |     748 | RUGRATS SHAKESPEARE         |
        |     751 | RUNAWAY TENENBAUMS          |
        |     752 | RUNNER MADIGAN              |
        |     753 | RUSH GOODFELLAS             |
        |     754 | RUSHMORE MERMAID            |
        |     755 | SABRINA MIDNIGHT            |
        |     756 | SADDLE ANTITRUST            |
        |     757 | SAGEBRUSH CLUELESS          |
        |     759 | SALUTE APOLLO               |
        |     763 | SATISFACTION CONFIDENTIAL   |
        |     764 | SATURDAY LAMBS              |
        |     766 | SAVANNAH TOWN               |
        |     767 | SCALAWAG DUCK               |
        |     768 | SCARFACE BANG               |
        |     769 | SCHOOL JACKET               |
        |     770 | SCISSORHANDS SLUMS          |
        |     771 | SCORPION APOLLO             |
        |     773 | SEABISCUIT PUNK             |
        |     774 | SEARCHERS WAIT              |
        |     775 | SEATTLE EXPECATIONS         |
        |     776 | SECRET GROUNDHOG            |
        |     777 | SECRETARY ROUGE             |
        |     778 | SECRETS PARADISE            |
        |     780 | SENSIBILITY REAR            |
        |     782 | SHAKESPEARE SADDLE          |
        |     783 | SHANE DARKNESS              |
        |     784 | SHANGHAI TYCOON             |
        |     785 | SHAWSHANK BUBBLE            |
        |     786 | SHEPHERD MIDSUMMER          |
        |     787 | SHINING ROSES               |
        |     788 | SHIP WONDERLAND             |
        |     790 | SHOOTIST SUPERFLY           |
        |     792 | SHREK LICENSE               |
        |     793 | SHRUNK DIVINE               |
        |     796 | SIERRA DIVIDE               |
        |     798 | SILVERADO GOLDFINGER        |
        |     800 | SINNERS ATLANTIS            |
        |     801 | SISTER FREDDY               |
        |     803 | SLACKER LIAISONS            |
        |     804 | SLEEPING SUSPECTS           |
        |     805 | SLEEPLESS MONSOON           |
        |     806 | SLEEPY JAPANESE             |
        |     807 | SLEUTH ORIENT               |
        |     809 | SLIPPER FIDELITY            |
        |     811 | SMILE EARRING               |
        |     812 | SMOKING BARBARELLA          |
        |     813 | SMOOCHY CONTROL             |
        |     814 | SNATCH SLIPPER              |
        |     815 | SNATCHERS MONTEZUMA         |
        |     816 | SNOWMAN ROLLERCOASTER       |
        |     817 | SOLDIERS EVOLUTION          |
        |     818 | SOMETHING DUCK              |
        |     820 | SONS INTERVIEW              |
        |     821 | SORORITY QUEEN              |
        |     824 | SPARTACUS CHEAPER           |
        |     825 | SPEAKEASY DATE              |
        |     827 | SPICE SORORITY              |
        |     828 | SPIKING ELEMENT             |
        |     830 | SPIRIT FLINTSTONES          |
        |     831 | SPIRITED CASUALTIES         |
        |     833 | SPLENDOR PATTON             |
        |     834 | SPOILERS HELLFIGHTERS       |
        |     838 | STAGECOACH ARMAGEDDON       |
        |     839 | STALLION SUNDANCE           |
        |     840 | STAMPEDE DISTURBING         |
        |     841 | STAR OPERATION              |
        |     842 | STATE WASTELAND             |
        |     844 | STEERS ARMAGEDDON           |
        |     845 | STEPMOM DREAM               |
        |     846 | STING PERSONAL              |
        |     849 | STORM HAPPINESS             |
        |     851 | STRAIGHT HOURS              |
        |     852 | STRANGELOVE DESIRE          |
        |     853 | STRANGER STRANGERS          |
        |     854 | STRANGERS GRAFFITI          |
        |     855 | STREAK RIDGEMONT            |
        |     856 | STREETCAR INTENTIONS        |
        |     857 | STRICTLY SCARFACE           |
        |     858 | SUBMARINE BED               |
        |     860 | SUICIDES SILENCE            |
        |     862 | SUMMER SCARFACE             |
        |     863 | SUN CONFESSIONS             |
        |     864 | SUNDANCE INVASION           |
        |     865 | SUNRISE LEAGUE              |
        |     867 | SUPER WYOMING               |
        |     868 | SUPERFLY TRIP               |
        |     869 | SUSPECTS QUILLS             |
        |     871 | SWEDEN SHINING              |
        |     872 | SWEET BROTHERHOOD           |
        |     873 | SWEETHEARTS SUSPECTS        |
        |     875 | TALENTED HOMICIDE           |
        |     876 | TARZAN VIDEOTAPE            |
        |     879 | TELEGRAPH VOYAGE            |
        |     880 | TELEMARK HEARTBREAKERS      |
        |     881 | TEMPLE ATTRACTION           |
        |     882 | TENENBAUMS COMMAND          |
        |     884 | TERMINATOR CLUB             |
        |     886 | THEORY MERMAID              |
        |     887 | THIEF PELICAN               |
        |     888 | THIN SAGEBRUSH              |
        |     891 | TIMBERLAND SKY              |
        |     892 | TITANIC BOONDOCK            |
        |     894 | TOMATOES HELLFIGHTERS       |
        |     895 | TOMORROW HUSTLER            |
        |     896 | TOOTSIE PILOT               |
        |     898 | TOURIST PELICAN             |
        |     899 | TOWERS HURRICANE            |
        |     902 | TRADING PINOCCHIO           |
        |     903 | TRAFFIC HOBBIT              |
        |     905 | TRAINSPOTTING STRANGERS     |
        |     907 | TRANSLATION SUMMER          |
        |     909 | TREASURE COMMAND            |
        |     910 | TREATMENT JEKYLL            |
        |     912 | TROJAN TOMORROW             |
        |     913 | TROOPERS METAL              |
        |     918 | TWISTED PIRATES             |
        |     919 | TYCOON GATHERING            |
        |     920 | UNBREAKABLE KARATE          |
        |     921 | UNCUT SUICIDES              |
        |     922 | UNDEFEATED DALMATIONS       |
        |     923 | UNFAITHFUL KILL             |
        |     924 | UNFORGIVEN ZOOLANDER        |
        |     926 | UNTOUCHABLES SUNRISE        |
        |     927 | UPRISING UPTOWN             |
        |     929 | USUAL UNTOUCHABLES          |
        |     930 | VACATION BOONDOCK           |
        |     931 | VALENTINE VANISHING         |
        |     932 | VALLEY PACKER               |
        |     933 | VAMPIRE WHALE               |
        |     935 | VANISHED GARDEN             |
        |     936 | VANISHING ROCKY             |
        |     938 | VELVET TERMINATOR           |
        |     939 | VERTIGO NORTHWEST           |
        |     940 | VICTORY ACADEMY             |
        |     941 | VIDEOTAPE ARSENIC           |
        |     942 | VIETNAM SMOOCHY             |
        |     943 | VILLAIN DESPERATE           |
        |     945 | VIRGINIAN PLUTO             |
        |     946 | VIRTUAL SPOILERS            |
        |     947 | VISION TORQUE               |
        |     949 | VOLCANO TEXAS               |
        |     951 | VOYAGE LEGALLY              |
        |     956 | WANDA CHAMBER               |
        |     958 | WARDROBE PHANTOM            |
        |     959 | WARLOCK WEREWOLF            |
        |     961 | WASH HEAVENLY               |
        |     962 | WASTELAND DIVINE            |
        |     964 | WATERFRONT DELIVERANCE      |
        |     965 | WATERSHIP FRONTIER          |
        |     966 | WEDDING APOLLO              |
        |     967 | WEEKEND PERSONAL            |
        |     968 | WEREWOLF LOLA               |
        |     970 | WESTWARD SEABISCUIT         |
        |     972 | WHISPERER GIANT             |
        |     978 | WISDOM WORKER               |
        |     979 | WITCHES PANIC               |
        |     980 | WIZARD COLDBLOODED          |
        |     981 | WOLVES DESIRE               |
        |     984 | WONDERFUL DROP              |
        |     985 | WONDERLAND CHRISTMAS        |
        |     988 | WORKER TARZAN               |
        |     989 | WORKING MICROCOSMOS         |
        |     990 | WORLD LEATHERNECKS          |
        |     993 | WRONG BEHAVIOR              |
        |     994 | WYOMING STORM               |
        |     996 | YOUNG LANGUAGE              |
        |     999 | ZOOLANDER FICTION           |
        +---------+-----------------------------+
        691 rows in set (0,00 sec)

        **/
        -- Peliculas con un rating de PG o G.
        select film_id, title, rating from film WHERE rating = 'PG' or rating = 'G';
        /**
        +---------+---------------------------+--------+
        | film_id | title                     | rating |
        +---------+---------------------------+--------+
        |       1 | ACADEMY DINOSAUR          | PG     |
        |       2 | ACE GOLDFINGER            | G      |
        |       4 | AFFAIR PREJUDICE          | G      |
        |       5 | AFRICAN EGG               | G      |
        |       6 | AGENT TRUMAN              | PG     |
        |      11 | ALAMO VIDEOTAPE           | G      |
        |      12 | ALASKA PHANTOM            | PG     |
        |      13 | ALI FOREVER               | PG     |
        |      19 | AMADEUS HOLY              | PG     |
        |      22 | AMISTAD MIDSUMMER         | G      |
        |      25 | ANGELS LIFE               | G      |
        |      26 | ANNIE IDENTITY            | G      |
        |      37 | ARIZONA BANG              | PG     |
        |      39 | ARMAGEDDON LOST           | G      |
        |      41 | ARSENIC INDEPENDENCE      | PG     |
        |      43 | ATLANTIS CAUSE            | G      |
        |      46 | AUTUMN CROW               | G      |
        |      50 | BAKED CLEOPATRA           | G      |
        |      52 | BALLROOM MOCKINGBIRD      | G      |
        |      55 | BARBARELLA STREETCAR      | G      |
        |      56 | BAREFOOT MANCHURIAN       | G      |
        |      58 | BEACH HEARTBREAKERS       | G      |
        |      61 | BEAUTY GREASE             | G      |
        |      63 | BEDAZZLED MARRIED         | PG     |
        |      65 | BEHAVIOR RUNAWAY          | PG     |
        |      72 | BILL OTHERS               | PG     |
        |      74 | BIRCH ANTITRUST           | PG     |
        |      75 | BIRD INDEPENDENCE         | G      |
        |      77 | BIRDS PERDITION           | G      |
        |      78 | BLACKOUT PRIVATE          | PG     |
        |      80 | BLANKET BEVERLY           | G      |
        |      82 | BLOOD ARGONAUTS           | G      |
        |      83 | BLUES INSTINCT            | G      |
        |      84 | BOILED DARES              | PG     |
        |      85 | BONNIE HOLOCAUST          | G      |
        |      88 | BORN SPINAL               | PG     |
        |      89 | BORROWERS BEDAZZLED       | G      |
        |      91 | BOUND CHEAPER             | PG     |
        |      93 | BRANNIGAN SUNRISE         | PG     |
        |      95 | BREAKFAST GOLDFINGER      | G      |
        |      97 | BRIDE INTRIGUE            | G      |
        |      99 | BRINGING HYSTERICAL       | PG     |
        |     103 | BUCKET BROTHERHOOD        | PG     |
        |     104 | BUGSY SONG                | G      |
        |     106 | BULWORTH COMMANDMENTS     | G      |
        |     107 | BUNCH MINDS               | G      |
        |     109 | BUTTERFLY CHOCOLAT        | G      |
        |     119 | CAPER MOTIONS             | G      |
        |     121 | CAROL TEXAS               | PG     |
        |     122 | CARRIE BUNCH              | PG     |
        |     123 | CASABLANCA SUPER          | G      |
        |     126 | CASUALTIES ENCINO         | G      |
        |     127 | CAT CONEHEADS             | G      |
        |     128 | CATCH AMISTAD             | G      |
        |     131 | CENTER DINOSAUR           | PG     |
        |     132 | CHAINSAW UPTOWN           | PG     |
        |     134 | CHAMPION FLATLINERS       | PG     |
        |     137 | CHARADE DUFFEL            | PG     |
        |     139 | CHASING FIGHT             | PG     |
        |     140 | CHEAPER CLYDE             | G      |
        |     142 | CHICKEN HELLFIGHTERS      | PG     |
        |     143 | CHILL LUCK                | PG     |
        |     144 | CHINATOWN GLADIATOR       | PG     |
        |     145 | CHISUM BEHAVIOR           | G      |
        |     146 | CHITTY LOCK               | G      |
        |     150 | CIDER DESIRE              | PG     |
        |     153 | CITIZEN SHREK             | G      |
        |     154 | CLASH FREDDY              | G      |
        |     156 | CLERKS ANGELS             | G      |
        |     164 | COAST RAINBOW             | PG     |
        |     165 | COLDBLOODED DARLING       | G      |
        |     166 | COLOR PHILADELPHIA        | G      |
        |     178 | CONNECTION MICROCOSMOS    | G      |
        |     179 | CONQUERER NUTS            | G      |
        |     182 | CONTROL ANTHEM            | G      |
        |     185 | COWBOY DOOM               | PG     |
        |     188 | CRAZY HOME                | PG     |
        |     193 | CROSSROADS CASUALTIES     | G      |
        |     194 | CROW GREASE               | PG     |
        |     196 | CRUELTY UNFORGIVEN        | G      |
        |     201 | CYCLONE FAMILY            | PG     |
        |     202 | DADDY PITTSBURGH          | G      |
        |     203 | DAISY MENAGERIE           | G      |
        |     204 | DALMATIONS SWEDEN         | PG     |
        |     206 | DANCING FEVER             | G      |
        |     207 | DANGEROUS UPTOWN          | PG     |
        |     212 | DARN FORRESTER            | G      |
        |     215 | DAWN POND                 | PG     |
        |     216 | DAY UNFAITHFUL            | G      |
        |     217 | DAZED PUNK                | G      |
        |     224 | DESPERATE TRAINSPOTTING   | G      |
        |     226 | DESTINY SATURDAY          | G      |
        |     230 | DIARY PANIC               | G      |
        |     233 | DISCIPLE MOTHER           | PG     |
        |     237 | DIVORCE SHINING           | G      |
        |     238 | DOCTOR GRAIL              | G      |
        |     239 | DOGMA FAMILY              | G      |
        |     247 | DOWNHILL ENOUGH           | G      |
        |     249 | DRACULA CRYSTAL           | G      |
        |     252 | DREAM PICKUP              | PG     |
        |     257 | DRUMLINE CYCLONE          | G      |
        |     258 | DRUMS DYNAMITE            | PG     |
        |     260 | DUDE BLINDNESS            | G      |
        |     261 | DUFFEL APOCALYPSE         | G      |
        |     264 | DWARFS ALTER              | G      |
        |     265 | DYING MAKER               | PG     |
        |     271 | EASY GLADIATOR            | G      |
        |     273 | EFFECT GLADIATOR          | PG     |
        |     274 | EGG IGBY                  | PG     |
        |     275 | EGYPT TENENBAUMS          | PG     |
        |     280 | EMPIRE MALKOVICH          | G      |
        |     281 | ENCINO ELF                | G      |
        |     289 | EVE RESURRECTION          | G      |
        |     290 | EVERYONE CRAFT            | PG     |
        |     292 | EXCITEMENT EVE            | G      |
        |     293 | EXORCIST STING            | G      |
        |     295 | EXPENDABLE STALLION       | PG     |
        |     297 | EXTRAORDINARY CONQUERER   | G      |
        |     302 | FANTASIA PARK             | G      |
        |     304 | FARGO GANDHI              | G      |
        |     305 | FATAL HAUNTED             | PG     |
        |     308 | FERRIS MOTHER             | PG     |
        |     311 | FICTION CHRISTMAS         | PG     |
        |     313 | FIDELITY DEVIL            | G      |
        |     317 | FIREBALL PHILADELPHIA     | PG     |
        |     318 | FIREHOUSE VIETNAM         | G      |
        |     322 | FLATLINERS KILLER         | G      |
        |     327 | FOOL MOCKINGBIRD          | PG     |
        |     336 | FRENCH HOLIDAY            | PG     |
        |     338 | FRISCO FORREST            | PG     |
        |     341 | FROST HEAD                | PG     |
        |     343 | FULL FLATLINERS           | PG     |
        |     345 | GABLES METROPOLIS         | PG     |
        |     350 | GARDEN ISLAND             | G      |
        |     351 | GASLIGHT CRUSADE          | PG     |
        |     354 | GHOST GROUNDHOG           | G      |
        |     357 | GILBERT PELICAN           | G      |
        |     359 | GLADIATOR WESTWARD        | PG     |
        |     360 | GLASS DYING               | G      |
        |     366 | GOLDFINGER SENSIBILITY    | G      |
        |     369 | GOODFELLAS SALUTE         | PG     |
        |     371 | GOSFORD DONNIE            | G      |
        |     373 | GRADUATE LORD             | G      |
        |     374 | GRAFFITI LOVE             | PG     |
        |     376 | GRAPES FURY               | G      |
        |     377 | GREASE YOUTH              | G      |
        |     380 | GREEK EVERYONE            | PG     |
        |     382 | GRIT CLOCKWORK            | PG     |
        |     387 | GUN BONNIE                | G      |
        |     396 | HANGING DEEP              | G      |
        |     399 | HAPPINESS UNITED          | G      |
        |     402 | HARPER DYING              | G      |
        |     404 | HATE HANDICAP             | PG     |
        |     409 | HEARTBREAKERS BRIGHT      | G      |
        |     410 | HEAVEN FREEDOM            | PG     |
        |     412 | HEAVYWEIGHTS BEAST        | G      |
        |     414 | HELLFIGHTERS SIERRA       | PG     |
        |     417 | HILLS NEIGHBORS           | G      |
        |     419 | HOCUS FRIDA               | G      |
        |     420 | HOLES BRANNIGAN           | PG     |
        |     423 | HOLLYWOOD ANONYMOUS       | PG     |
        |     430 | HOOK CHARIOTS             | G      |
        |     431 | HOOSIERS BIRDCAGE         | G      |
        |     433 | HORN WORKING              | PG     |
        |     440 | HUNGER ROOF               | G      |
        |     443 | HURRICANE AFFAIR          | PG     |
        |     445 | HYDE DOCTOR               | G      |
        |     446 | HYSTERICAL GRAIL          | PG     |
        |     463 | INSTINCT AIRPORT          | PG     |
        |     467 | INTRIGUE WORST            | G      |
        |     468 | INVASION CYCLONE          | PG     |
        |     469 | IRON MOON                 | PG     |
        |     472 | ITALIAN AFRICAN           | G      |
        |     475 | JAPANESE RUN              | G      |
        |     477 | JAWBREAKER BROOKLYN       | PG     |
        |     478 | JAWS HARRY                | G      |
        |     479 | JEDI BENEATH              | PG     |
        |     481 | JEKYLL FROGMEN            | PG     |
        |     485 | JERSEY SASSY              | PG     |
        |     490 | JUMANJI BLADE             | G      |
        |     495 | KENTUCKIAN GIANT          | PG     |
        |     497 | KILL BROTHERHOOD          | G      |
        |     506 | LADY STAGE                | PG     |
        |     510 | LAWLESS VISION            | G      |
        |     515 | LEGALLY SECRETARY         | PG     |
        |     516 | LEGEND JEDI               | PG     |
        |     518 | LIAISONS SWEET            | PG     |
        |     519 | LIBERTY MAGNIFICENT       | G      |
        |     524 | LION UNCUT                | PG     |
        |     527 | LOLA AGENT                | PG     |
        |     529 | LONELY ELEPHANT           | G      |
        |     532 | LOSER HUSTLER             | PG     |
        |     536 | LOVELY JINGLE             | PG     |
        |     537 | LOVER TRUMAN              | G      |
        |     542 | LUST LOCK                 | G      |
        |     547 | MAGIC MALLRATS            | PG     |
        |     551 | MAIDEN HOME               | PG     |
        |     552 | MAJESTIC FLOATS           | PG     |
        |     554 | MALKOVICH PET             | G      |
        |     555 | MALLRATS UNITED           | PG     |
        |     557 | MANCHURIAN CURTAIN        | PG     |
        |     559 | MARRIED GO                | G      |
        |     564 | MASSAGE IMAGE             | PG     |
        |     567 | MEET CHOCOLATE            | G      |
        |     569 | MENAGERIE RUSHMORE        | G      |
        |     574 | MIDNIGHT WESTWARD         | G      |
        |     575 | MIDSUMMER GROUNDHOG       | G      |
        |     576 | MIGHTY LUCK               | PG     |
        |     577 | MILE MULAN                | PG     |
        |     581 | MINORITY KISS             | G      |
        |     585 | MOB DUFFEL                | G      |
        |     586 | MOCKINGBIRD HOLLYWOOD     | PG     |
        |     589 | MODERN DORADO             | PG     |
        |     590 | MONEY HAROLD              | PG     |
        |     591 | MONSOON CAUSE             | PG     |
        |     592 | MONSTER SPARTACUS         | PG     |
        |     593 | MONTEREY LABYRINTH        | G      |
        |     595 | MOON BUNCH                | PG     |
        |     597 | MOONWALKER FOOL           | G      |
        |     598 | MOSQUITO ARMAGEDDON       | G      |
        |     600 | MOTIONS DETAILS           | PG     |
        |     602 | MOURNING PURPLE           | PG     |
        |     603 | MOVIE SHAKESPEARE         | PG     |
        |     604 | MULAN MOON                | G      |
        |     605 | MULHOLLAND BEAST          | PG     |
        |     607 | MUPPET MILE               | PG     |
        |     608 | MURDER ANTITRUST          | PG     |
        |     609 | MUSCLE BRIGHT             | G      |
        |     611 | MUSKETEERS WAIT           | PG     |
        |     612 | MUSSOLINI SPOILERS        | G      |
        |     618 | NECKLACE OUTBREAK         | PG     |
        |     622 | NEWSIES STORY             | G      |
        |     623 | NEWTON LABYRINTH          | PG     |
        |     624 | NIGHTMARE CHILL           | PG     |
        |     626 | NOON PAPI                 | G      |
        |     628 | NORTHWEST POLISH          | PG     |
        |     631 | NOVOCAINE FLIGHT          | G      |
        |     635 | OKLAHOMA JUMANJI          | PG     |
        |     636 | OLEANDER CLUE             | PG     |
        |     637 | OPEN AFRICAN              | PG     |
        |     638 | OPERATION OPERATION       | G      |
        |     639 | OPPOSITE NECKLACE         | PG     |
        |     644 | OSCAR GOLD                | PG     |
        |     645 | OTHERS SOUP               | PG     |
        |     650 | PACIFIC AMISTAD           | G      |
        |     653 | PANIC CLUB                | G      |
        |     654 | PANKY SUBMARINE           | G      |
        |     656 | PAPI NECKLACE             | PG     |
        |     660 | PARTY KNOCK               | PG     |
        |     662 | PATHS CONTROL             | PG     |
        |     664 | PATRIOT ROMAN             | PG     |
        |     665 | PATTON INTERVIEW          | PG     |
        |     668 | PEAK FOREVER              | PG     |
        |     670 | PELICAN COMFORTS          | PG     |
        |     674 | PET HAUNTING              | PG     |
        |     678 | PICKUP DRIVING            | G      |
        |     679 | PILOT HOOSIERS            | PG     |
        |     680 | PINOCCHIO SIMON           | PG     |
        |     681 | PIRATES ROXANNE           | PG     |
        |     688 | POLISH BROOKLYN           | PG     |
        |     689 | POLLOCK DELIVERANCE       | PG     |
        |     692 | POTLUCK MIXED             | G      |
        |     693 | POTTER CONNECTICUT        | PG     |
        |     695 | PRESIDENT BANG            | PG     |
        |     697 | PRIMARY GLASS             | G      |
        |     699 | PRIVATE DROP              | PG     |
        |     702 | PULP BEVERLY              | G      |
        |     703 | PUNK DIVORCE              | PG     |
        |     706 | QUEEN LUKE                | PG     |
        |     713 | RAINBOW SHOCK             | PG     |
        |     715 | RANGE MOONWALKER          | PG     |
        |     718 | REBEL AIRPORT             | G      |
        |     719 | RECORDS ZORRO             | PG     |
        |     727 | RESURRECTION SILVERADO    | PG     |
        |     729 | RIDER CADDYSHACK          | PG     |
        |     732 | RINGS HEARTBREAKERS       | G      |
        |     737 | ROCK INSTINCT             | G      |
        |     743 | ROOM ROMAN                | PG     |
        |     753 | RUSH GOODFELLAS           | PG     |
        |     755 | SABRINA MIDNIGHT          | PG     |
        |     757 | SAGEBRUSH CLUELESS        | G      |
        |     758 | SAINTS BRIDE              | G      |
        |     760 | SAMURAI LION              | G      |
        |     761 | SANTA PARIS               | PG     |
        |     762 | SASSY PACKER              | G      |
        |     763 | SATISFACTION CONFIDENTIAL | G      |
        |     764 | SATURDAY LAMBS            | G      |
        |     770 | SCISSORHANDS SLUMS        | G      |
        |     772 | SEA VIRGIN                | PG     |
        |     776 | SECRET GROUNDHOG          | PG     |
        |     777 | SECRETARY ROUGE           | PG     |
        |     778 | SECRETS PARADISE          | G      |
        |     780 | SENSIBILITY REAR          | PG     |
        |     783 | SHANE DARKNESS            | PG     |
        |     784 | SHANGHAI TYCOON           | PG     |
        |     785 | SHAWSHANK BUBBLE          | PG     |
        |     787 | SHINING ROSES             | G      |
        |     794 | SIDE ARK                  | G      |
        |     798 | SILVERADO GOLDFINGER      | PG     |
        |     802 | SKY MIRACLE               | PG     |
        |     805 | SLEEPLESS MONSOON         | G      |
        |     806 | SLEEPY JAPANESE           | PG     |
        |     810 | SLUMS DUCK                | PG     |
        |     811 | SMILE EARRING             | G      |
        |     814 | SNATCH SLIPPER            | PG     |
        |     816 | SNOWMAN ROLLERCOASTER     | G      |
        |     828 | SPIKING ELEMENT           | G      |
        |     832 | SPLASH GUMP               | PG     |
        |     834 | SPOILERS HELLFIGHTERS     | G      |
        |     836 | SQUAD FISH                | PG     |
        |     837 | STAGE WORLD               | PG     |
        |     841 | STAR OPERATION            | PG     |
        |     844 | STEERS ARMAGEDDON         | PG     |
        |     847 | STOCK GLASS               | PG     |
        |     848 | STONE FIRE                | G      |
        |     853 | STRANGER STRANGERS        | G      |
        |     859 | SUGAR WONKA               | PG     |
        |     860 | SUICIDES SILENCE          | G      |
        |     862 | SUMMER SCARFACE           | G      |
        |     867 | SUPER WYOMING             | PG     |
        |     868 | SUPERFLY TRIP             | PG     |
        |     869 | SUSPECTS QUILLS           | PG     |
        |     871 | SWEDEN SHINING            | PG     |
        |     873 | SWEETHEARTS SUSPECTS      | G      |
        |     874 | TADPOLE PARK              | PG     |
        |     875 | TALENTED HOMICIDE         | PG     |
        |     878 | TEEN APOLLO               | G      |
        |     879 | TELEGRAPH VOYAGE          | PG     |
        |     881 | TEMPLE ATTRACTION         | PG     |
        |     883 | TEQUILA PAST              | PG     |
        |     891 | TIMBERLAND SKY            | G      |
        |     893 | TITANS JERK               | PG     |
        |     894 | TOMATOES HELLFIGHTERS     | PG     |
        |     896 | TOOTSIE PILOT             | PG     |
        |     897 | TORQUE BOUND              | G      |
        |     901 | TRACY CIDER               | G      |
        |     902 | TRADING PINOCCHIO         | PG     |
        |     903 | TRAFFIC HOBBIT            | G      |
        |     906 | TRAMP OTHERS              | PG     |
        |     908 | TRAP GUYS                 | G      |
        |     910 | TREATMENT JEKYLL          | PG     |
        |     912 | TROJAN TOMORROW           | PG     |
        |     914 | TROUBLE DATE              | PG     |
        |     915 | TRUMAN CRAZY              | G      |
        |     916 | TURN STAR                 | G      |
        |     918 | TWISTED PIRATES           | PG     |
        |     919 | TYCOON GATHERING          | G      |
        |     920 | UNBREAKABLE KARATE        | G      |
        |     924 | UNFORGIVEN ZOOLANDER      | PG     |
        |     928 | UPTOWN YOUNG              | PG     |
        |     932 | VALLEY PACKER             | G      |
        |     950 | VOLUME HOUSE              | PG     |
        |     952 | WAGON JAWS                | PG     |
        |     954 | WAKE JAWS                 | G      |
        |     955 | WALLS ARTIST              | PG     |
        |     957 | WAR NOTTING               | G      |
        |     958 | WARDROBE PHANTOM          | G      |
        |     959 | WARLOCK WEREWOLF          | G      |
        |     960 | WARS PLUTO                | G      |
        |     962 | WASTELAND DIVINE          | PG     |
        |     963 | WATCH TRACY               | PG     |
        |     964 | WATERFRONT DELIVERANCE    | G      |
        |     965 | WATERSHIP FRONTIER        | G      |
        |     966 | WEDDING APOLLO            | PG     |
        |     968 | WEREWOLF LOLA             | G      |
        |     969 | WEST LION                 | G      |
        |     980 | WIZARD COLDBLOODED        | PG     |
        |     983 | WON DARES                 | PG     |
        |     985 | WONDERLAND CHRISTMAS      | PG     |
        |     987 | WORDS HUNTER              | PG     |
        |     991 | WORST BANGER              | PG     |
        |     996 | YOUNG LANGUAGE            | G      |
        +---------+---------------------------+--------+
        372 rows in set (0,00 sec)
        **/

        -- Peliculas que no tengan un rating de NC-17.
        select film_id, title, rating from film WHERE rating NOT IN(select rating from film WHERE rating = 'NC-17');
        /**
        +---------+-----------------------------+--------+
        | film_id | title                       | rating |
        +---------+-----------------------------+--------+
        |       1 | ACADEMY DINOSAUR            | PG     |
        |       2 | ACE GOLDFINGER              | G      |
        |       4 | AFFAIR PREJUDICE            | G      |
        |       5 | AFRICAN EGG                 | G      |
        |       6 | AGENT TRUMAN                | PG     |
        |       7 | AIRPLANE SIERRA             | PG-13  |
        |       8 | AIRPORT POLLOCK             | R      |
        |       9 | ALABAMA DEVIL               | PG-13  |
        |      11 | ALAMO VIDEOTAPE             | G      |
        |      12 | ALASKA PHANTOM              | PG     |
        |      13 | ALI FOREVER                 | PG     |
        |      17 | ALONE TRIP                  | R      |
        |      18 | ALTER VICTORY               | PG-13  |
        |      19 | AMADEUS HOLY                | PG     |
        |      20 | AMELIE HELLFIGHTERS         | R      |
        |      21 | AMERICAN CIRCUS             | R      |
        |      22 | AMISTAD MIDSUMMER           | G      |
        |      23 | ANACONDA CONFESSIONS        | R      |
        |      24 | ANALYZE HOOSIERS            | R      |
        |      25 | ANGELS LIFE                 | G      |
        |      26 | ANNIE IDENTITY              | G      |
        |      28 | ANTHEM LUKE                 | PG-13  |
        |      30 | ANYTHING SAVANNAH           | R      |
        |      32 | APOCALYPSE FLAMINGOS        | R      |
        |      33 | APOLLO TEEN                 | PG-13  |
        |      35 | ARACHNOPHOBIA ROLLERCOASTER | PG-13  |
        |      36 | ARGONAUTS TOWN              | PG-13  |
        |      37 | ARIZONA BANG                | PG     |
        |      39 | ARMAGEDDON LOST             | G      |
        |      40 | ARMY FLINTSTONES            | R      |
        |      41 | ARSENIC INDEPENDENCE        | PG     |
        |      43 | ATLANTIS CAUSE              | G      |
        |      44 | ATTACKS HATE                | PG-13  |
        |      45 | ATTRACTION NEWTON           | PG-13  |
        |      46 | AUTUMN CROW                 | G      |
        |      48 | BACKLASH UNDEFEATED         | PG-13  |
        |      49 | BADMAN DAWN                 | R      |
        |      50 | BAKED CLEOPATRA             | G      |
        |      52 | BALLROOM MOCKINGBIRD        | G      |
        |      54 | BANGER PINOCCHIO            | R      |
        |      55 | BARBARELLA STREETCAR        | G      |
        |      56 | BAREFOOT MANCHURIAN         | G      |
        |      57 | BASIC EASY                  | PG-13  |
        |      58 | BEACH HEARTBREAKERS         | G      |
        |      59 | BEAR GRACELAND              | R      |
        |      60 | BEAST HUNCHBACK             | R      |
        |      61 | BEAUTY GREASE               | G      |
        |      63 | BEDAZZLED MARRIED           | PG     |
        |      64 | BEETHOVEN EXORCIST          | PG-13  |
        |      65 | BEHAVIOR RUNAWAY            | PG     |
        |      67 | BERETS AGENT                | PG-13  |
        |      69 | BEVERLY OUTLAW              | R      |
        |      71 | BILKO ANONYMOUS             | PG-13  |
        |      72 | BILL OTHERS                 | PG     |
        |      73 | BINGO TALENTED              | PG-13  |
        |      74 | BIRCH ANTITRUST             | PG     |
        |      75 | BIRD INDEPENDENCE           | G      |
        |      77 | BIRDS PERDITION             | G      |
        |      78 | BLACKOUT PRIVATE            | PG     |
        |      79 | BLADE POLISH                | PG-13  |
        |      80 | BLANKET BEVERLY             | G      |
        |      81 | BLINDNESS GUN               | PG-13  |
        |      82 | BLOOD ARGONAUTS             | G      |
        |      83 | BLUES INSTINCT              | G      |
        |      84 | BOILED DARES                | PG     |
        |      85 | BONNIE HOLOCAUST            | G      |
        |      86 | BOOGIE AMELIE               | R      |
        |      88 | BORN SPINAL                 | PG     |
        |      89 | BORROWERS BEDAZZLED         | G      |
        |      90 | BOULEVARD MOB               | R      |
        |      91 | BOUND CHEAPER               | PG     |
        |      93 | BRANNIGAN SUNRISE           | PG     |
        |      94 | BRAVEHEART HUMAN            | PG-13  |
        |      95 | BREAKFAST GOLDFINGER        | G      |
        |      96 | BREAKING HOME               | PG-13  |
        |      97 | BRIDE INTRIGUE              | G      |
        |      98 | BRIGHT ENCOUNTERS           | PG-13  |
        |      99 | BRINGING HYSTERICAL         | PG     |
        |     100 | BROOKLYN DESERT             | R      |
        |     101 | BROTHERHOOD BLANKET         | R      |
        |     102 | BUBBLE GROSSE               | R      |
        |     103 | BUCKET BROTHERHOOD          | PG     |
        |     104 | BUGSY SONG                  | G      |
        |     106 | BULWORTH COMMANDMENTS       | G      |
        |     107 | BUNCH MINDS                 | G      |
        |     108 | BUTCH PANTHER               | PG-13  |
        |     109 | BUTTERFLY CHOCOLAT          | G      |
        |     115 | CAMPUS REMEMBER             | R      |
        |     116 | CANDIDATE PERDITION         | R      |
        |     118 | CANYON STOCK                | R      |
        |     119 | CAPER MOTIONS               | G      |
        |     121 | CAROL TEXAS                 | PG     |
        |     122 | CARRIE BUNCH                | PG     |
        |     123 | CASABLANCA SUPER            | G      |
        |     124 | CASPER DRAGONFLY            | PG-13  |
        |     126 | CASUALTIES ENCINO           | G      |
        |     127 | CAT CONEHEADS               | G      |
        |     128 | CATCH AMISTAD               | G      |
        |     129 | CAUSE DATE                  | R      |
        |     130 | CELEBRITY HORN              | PG-13  |
        |     131 | CENTER DINOSAUR             | PG     |
        |     132 | CHAINSAW UPTOWN             | PG     |
        |     134 | CHAMPION FLATLINERS         | PG     |
        |     135 | CHANCE RESURRECTION         | R      |
        |     137 | CHARADE DUFFEL              | PG     |
        |     138 | CHARIOTS CONSPIRACY         | R      |
        |     139 | CHASING FIGHT               | PG     |
        |     140 | CHEAPER CLYDE               | G      |
        |     141 | CHICAGO NORTH               | PG-13  |
        |     142 | CHICKEN HELLFIGHTERS        | PG     |
        |     143 | CHILL LUCK                  | PG     |
        |     144 | CHINATOWN GLADIATOR         | PG     |
        |     145 | CHISUM BEHAVIOR             | G      |
        |     146 | CHITTY LOCK                 | G      |
        |     148 | CHOCOLATE DUCK              | R      |
        |     150 | CIDER DESIRE                | PG     |
        |     152 | CIRCUS YOUTH                | PG-13  |
        |     153 | CITIZEN SHREK               | G      |
        |     154 | CLASH FREDDY                | G      |
        |     155 | CLEOPATRA DEVIL             | PG-13  |
        |     156 | CLERKS ANGELS               | G      |
        |     157 | CLOCKWORK PARADISE          | PG-13  |
        |     158 | CLONES PINOCCHIO            | R      |
        |     159 | CLOSER BANG                 | R      |
        |     160 | CLUB GRAFFITI               | PG-13  |
        |     162 | CLUELESS BUCKET             | R      |
        |     163 | CLYDE THEORY                | PG-13  |
        |     164 | COAST RAINBOW               | PG     |
        |     165 | COLDBLOODED DARLING         | G      |
        |     166 | COLOR PHILADELPHIA          | G      |
        |     168 | COMANCHEROS ENEMY           | R      |
        |     170 | COMMAND DARLING             | PG-13  |
        |     171 | COMMANDMENTS EXPRESS        | R      |
        |     173 | CONFESSIONS MAGUIRE         | PG-13  |
        |     175 | CONFUSED CANDLES            | PG-13  |
        |     176 | CONGENIALITY QUEST          | PG-13  |
        |     177 | CONNECTICUT TRAMP           | R      |
        |     178 | CONNECTION MICROCOSMOS      | G      |
        |     179 | CONQUERER NUTS              | G      |
        |     180 | CONSPIRACY SPIRIT           | PG-13  |
        |     181 | CONTACT ANONYMOUS           | PG-13  |
        |     182 | CONTROL ANTHEM              | G      |
        |     183 | CONVERSATION DOWNHILL       | R      |
        |     184 | CORE SUIT                   | PG-13  |
        |     185 | COWBOY DOOM                 | PG     |
        |     188 | CRAZY HOME                  | PG     |
        |     191 | CROOKED FROGMEN             | PG-13  |
        |     192 | CROSSING DIVORCE            | R      |
        |     193 | CROSSROADS CASUALTIES       | G      |
        |     194 | CROW GREASE                 | PG     |
        |     195 | CROWDS TELEMARK             | R      |
        |     196 | CRUELTY UNFORGIVEN          | G      |
        |     197 | CRUSADE HONEY               | R      |
        |     199 | CUPBOARD SINNERS            | R      |
        |     200 | CURTAIN VIDEOTAPE           | PG-13  |
        |     201 | CYCLONE FAMILY              | PG     |
        |     202 | DADDY PITTSBURGH            | G      |
        |     203 | DAISY MENAGERIE             | G      |
        |     204 | DALMATIONS SWEDEN           | PG     |
        |     206 | DANCING FEVER               | G      |
        |     207 | DANGEROUS UPTOWN            | PG     |
        |     208 | DARES PLUTO                 | PG-13  |
        |     211 | DARLING BREAKING            | PG-13  |
        |     212 | DARN FORRESTER              | G      |
        |     213 | DATE SPEED                  | R      |
        |     214 | DAUGHTER MADIGAN            | PG-13  |
        |     215 | DAWN POND                   | PG     |
        |     216 | DAY UNFAITHFUL              | G      |
        |     217 | DAZED PUNK                  | G      |
        |     219 | DEEP CRUSADE                | PG-13  |
        |     221 | DELIVERANCE MULHOLLAND      | R      |
        |     222 | DESERT POSEIDON             | R      |
        |     224 | DESPERATE TRAINSPOTTING     | G      |
        |     225 | DESTINATION JERK            | PG-13  |
        |     226 | DESTINY SATURDAY            | G      |
        |     227 | DETAILS PACKER              | R      |
        |     228 | DETECTIVE VISION            | PG-13  |
        |     229 | DEVIL DESIRE                | R      |
        |     230 | DIARY PANIC                 | G      |
        |     231 | DINOSAUR SECRETARY          | R      |
        |     233 | DISCIPLE MOTHER             | PG     |
        |     234 | DISTURBING SCARFACE         | R      |
        |     235 | DIVIDE MONSTER              | PG-13  |
        |     236 | DIVINE RESURRECTION         | R      |
        |     237 | DIVORCE SHINING             | G      |
        |     238 | DOCTOR GRAIL                | G      |
        |     239 | DOGMA FAMILY                | G      |
        |     240 | DOLLS RAGE                  | PG-13  |
        |     242 | DOOM DANCING                | R      |
        |     245 | DOUBLE WRATH                | R      |
        |     246 | DOUBTFIRE LABYRINTH         | R      |
        |     247 | DOWNHILL ENOUGH             | G      |
        |     249 | DRACULA CRYSTAL             | G      |
        |     252 | DREAM PICKUP                | PG     |
        |     253 | DRIFTER COMMANDMENTS        | PG-13  |
        |     254 | DRIVER ANNIE                | PG-13  |
        |     256 | DROP WATERFRONT             | R      |
        |     257 | DRUMLINE CYCLONE            | G      |
        |     258 | DRUMS DYNAMITE              | PG     |
        |     260 | DUDE BLINDNESS              | G      |
        |     261 | DUFFEL APOCALYPSE           | G      |
        |     263 | DURHAM PANKY                | R      |
        |     264 | DWARFS ALTER                | G      |
        |     265 | DYING MAKER                 | PG     |
        |     266 | DYNAMITE TARZAN             | PG-13  |
        |     269 | EARRING INSTINCT            | R      |
        |     271 | EASY GLADIATOR              | G      |
        |     273 | EFFECT GLADIATOR            | PG     |
        |     274 | EGG IGBY                    | PG     |
        |     275 | EGYPT TENENBAUMS            | PG     |
        |     277 | ELEPHANT TROJAN             | PG-13  |
        |     280 | EMPIRE MALKOVICH            | G      |
        |     281 | ENCINO ELF                  | G      |
        |     285 | ENGLISH BULWORTH            | PG-13  |
        |     287 | ENTRAPMENT SATISFACTION     | R      |
        |     288 | ESCAPE METROPOLIS           | R      |
        |     289 | EVE RESURRECTION            | G      |
        |     290 | EVERYONE CRAFT              | PG     |
        |     291 | EVOLUTION ALTER             | PG-13  |
        |     292 | EXCITEMENT EVE              | G      |
        |     293 | EXORCIST STING              | G      |
        |     294 | EXPECATIONS NATURAL         | PG-13  |
        |     295 | EXPENDABLE STALLION         | PG     |
        |     296 | EXPRESS LONELY              | R      |
        |     297 | EXTRAORDINARY CONQUERER     | G      |
        |     298 | EYES DRIVING                | PG-13  |
        |     299 | FACTORY DRAGON              | PG-13  |
        |     300 | FALCON VOLUME               | PG-13  |
        |     301 | FAMILY SWEET                | R      |
        |     302 | FANTASIA PARK               | G      |
        |     303 | FANTASY TROOPERS            | PG-13  |
        |     304 | FARGO GANDHI                | G      |
        |     305 | FATAL HAUNTED               | PG     |
        |     306 | FEATHERS METAL              | PG-13  |
        |     308 | FERRIS MOTHER               | PG     |
        |     309 | FEUD FROGMEN                | R      |
        |     310 | FEVER EMPIRE                | R      |
        |     311 | FICTION CHRISTMAS           | PG     |
        |     312 | FIDDLER LOST                | R      |
        |     313 | FIDELITY DEVIL              | G      |
        |     314 | FIGHT JAWBREAKER            | R      |
        |     315 | FINDING ANACONDA            | R      |
        |     316 | FIRE WOLVES                 | R      |
        |     317 | FIREBALL PHILADELPHIA       | PG     |
        |     318 | FIREHOUSE VIETNAM           | G      |
        |     319 | FISH OPUS                   | R      |
        |     320 | FLAMINGOS CONNECTICUT       | PG-13  |
        |     322 | FLATLINERS KILLER           | G      |
        |     323 | FLIGHT LIES                 | R      |
        |     324 | FLINTSTONES HAPPINESS       | PG-13  |
        |     325 | FLOATS GARDEN               | PG-13  |
        |     327 | FOOL MOCKINGBIRD            | PG     |
        |     329 | FORREST SONS                | R      |
        |     333 | FREAKY POCUS                | R      |
        |     335 | FREEDOM CLEOPATRA           | PG-13  |
        |     336 | FRENCH HOLIDAY              | PG     |
        |     337 | FRIDA SLIPPER               | R      |
        |     338 | FRISCO FORREST              | PG     |
        |     339 | FROGMEN BREAKING            | R      |
        |     340 | FRONTIER CABIN              | PG-13  |
        |     341 | FROST HEAD                  | PG     |
        |     342 | FUGITIVE MAGUIRE            | R      |
        |     343 | FULL FLATLINERS             | PG     |
        |     344 | FURY MURDER                 | PG-13  |
        |     345 | GABLES METROPOLIS           | PG     |
        |     346 | GALAXY SWEETHEARTS          | R      |
        |     347 | GAMES BOWFINGER             | PG-13  |
        |     348 | GANDHI KWAI                 | PG-13  |
        |     349 | GANGS PRIDE                 | PG-13  |
        |     350 | GARDEN ISLAND               | G      |
        |     351 | GASLIGHT CRUSADE            | PG     |
        |     352 | GATHERING CALENDAR          | PG-13  |
        |     354 | GHOST GROUNDHOG             | G      |
        |     355 | GHOSTBUSTERS ELF            | R      |
        |     356 | GIANT TROOPERS              | R      |
        |     357 | GILBERT PELICAN             | G      |
        |     358 | GILMORE BOILED              | R      |
        |     359 | GLADIATOR WESTWARD          | PG     |
        |     360 | GLASS DYING                 | G      |
        |     362 | GLORY TRACY                 | PG-13  |
        |     363 | GO PURPLE                   | R      |
        |     365 | GOLD RIVER                  | R      |
        |     366 | GOLDFINGER SENSIBILITY      | G      |
        |     367 | GOLDMINE TYCOON             | R      |
        |     368 | GONE TROUBLE                | R      |
        |     369 | GOODFELLAS SALUTE           | PG     |
        |     370 | GORGEOUS BINGO              | R      |
        |     371 | GOSFORD DONNIE              | G      |
        |     372 | GRACELAND DYNAMITE          | R      |
        |     373 | GRADUATE LORD               | G      |
        |     374 | GRAFFITI LOVE               | PG     |
        |     376 | GRAPES FURY                 | G      |
        |     377 | GREASE YOUTH                | G      |
        |     379 | GREEDY ROOTS                | R      |
        |     380 | GREEK EVERYONE              | PG     |
        |     381 | GRINCH MASSAGE              | R      |
        |     382 | GRIT CLOCKWORK              | PG     |
        |     384 | GROSSE WONDERFUL            | R      |
        |     385 | GROUNDHOG UNCUT             | PG-13  |
        |     387 | GUN BONNIE                  | G      |
        |     389 | GUNFIGHTER MUSSOLINI        | PG-13  |
        |     390 | GUYS FALCON                 | R      |
        |     391 | HALF OUTFIELD               | PG-13  |
        |     393 | HALLOWEEN NUTS              | PG-13  |
        |     394 | HAMLET WISDOM               | R      |
        |     395 | HANDICAP BOONDOCK           | R      |
        |     396 | HANGING DEEP                | G      |
        |     399 | HAPPINESS UNITED            | G      |
        |     400 | HARDLY ROBBERS              | R      |
        |     402 | HARPER DYING                | G      |
        |     403 | HARRY IDAHO                 | PG-13  |
        |     404 | HATE HANDICAP               | PG     |
        |     406 | HAUNTING PIANIST            | R      |
        |     407 | HAWK CHILL                  | PG-13  |
        |     408 | HEAD STRANGER               | R      |
        |     409 | HEARTBREAKERS BRIGHT        | G      |
        |     410 | HEAVEN FREEDOM              | PG     |
        |     412 | HEAVYWEIGHTS BEAST          | G      |
        |     414 | HELLFIGHTERS SIERRA         | PG     |
        |     415 | HIGH ENCINO                 | R      |
        |     416 | HIGHBALL POTTER             | R      |
        |     417 | HILLS NEIGHBORS             | G      |
        |     418 | HOBBIT ALIEN                | PG-13  |
        |     419 | HOCUS FRIDA                 | G      |
        |     420 | HOLES BRANNIGAN             | PG     |
        |     421 | HOLIDAY GAMES               | PG-13  |
        |     423 | HOLLYWOOD ANONYMOUS         | PG     |
        |     424 | HOLOCAUST HIGHBALL          | R      |
        |     425 | HOLY TADPOLE                | R      |
        |     426 | HOME PITY                   | R      |
        |     427 | HOMEWARD CIDER              | R      |
        |     428 | HOMICIDE PEACH              | PG-13  |
        |     429 | HONEY TIES                  | R      |
        |     430 | HOOK CHARIOTS               | G      |
        |     431 | HOOSIERS BIRDCAGE           | G      |
        |     433 | HORN WORKING                | PG     |
        |     434 | HORROR REIGN                | R      |
        |     435 | HOTEL HAPPINESS             | PG-13  |
        |     437 | HOUSE DYNAMITE              | R      |
        |     439 | HUNCHBACK IMPOSSIBLE        | PG-13  |
        |     440 | HUNGER ROOF                 | G      |
        |     441 | HUNTER ALTER                | PG-13  |
        |     443 | HURRICANE AFFAIR            | PG     |
        |     445 | HYDE DOCTOR                 | G      |
        |     446 | HYSTERICAL GRAIL            | PG     |
        |     447 | ICE CROSSING                | R      |
        |     448 | IDAHO LOVE                  | PG-13  |
        |     449 | IDENTITY LOVER              | PG-13  |
        |     452 | ILLUSION AMELIE             | R      |
        |     453 | IMAGE PRINCESS              | PG-13  |
        |     454 | IMPACT ALADDIN              | PG-13  |
        |     460 | INNOCENT USUAL              | PG-13  |
        |     463 | INSTINCT AIRPORT            | PG     |
        |     464 | INTENTIONS EMPIRE           | PG-13  |
        |     465 | INTERVIEW LIAISONS          | R      |
        |     466 | INTOLERABLE INTENTIONS      | PG-13  |
        |     467 | INTRIGUE WORST              | G      |
        |     468 | INVASION CYCLONE            | PG     |
        |     469 | IRON MOON                   | PG     |
        |     470 | ISHTAR ROCKETEER            | R      |
        |     472 | ITALIAN AFRICAN             | G      |
        |     473 | JACKET FRISCO               | PG-13  |
        |     475 | JAPANESE RUN                | G      |
        |     477 | JAWBREAKER BROOKLYN         | PG     |
        |     478 | JAWS HARRY                  | G      |
        |     479 | JEDI BENEATH                | PG     |
        |     480 | JEEPERS WEDDING             | R      |
        |     481 | JEKYLL FROGMEN              | PG     |
        |     482 | JEOPARDY ENCINO             | R      |
        |     485 | JERSEY SASSY                | PG     |
        |     486 | JET NEIGHBORS               | R      |
        |     487 | JINGLE SAGEBRUSH            | PG-13  |
        |     489 | JUGGLER HARDLY              | PG-13  |
        |     490 | JUMANJI BLADE               | G      |
        |     493 | KANE EXORCIST               | R      |
        |     494 | KARATE MOON                 | PG-13  |
        |     495 | KENTUCKIAN GIANT            | PG     |
        |     496 | KICK SAVANNAH               | PG-13  |
        |     497 | KILL BROTHERHOOD            | G      |
        |     498 | KILLER INNOCENT             | R      |
        |     500 | KISS GLORY                  | PG-13  |
        |     501 | KISSING DOLLS               | R      |
        |     502 | KNOCK WARLOCK               | PG-13  |
        |     503 | KRAMER CHOCOLATE            | R      |
        |     504 | KWAI HOMEWARD               | PG-13  |
        |     505 | LABYRINTH LEAGUE            | PG-13  |
        |     506 | LADY STAGE                  | PG     |
        |     508 | LAMBS CINCINATTI            | PG-13  |
        |     510 | LAWLESS VISION              | G      |
        |     512 | LEAGUE HELLFIGHTERS         | PG-13  |
        |     513 | LEATHERNECKS DWARFS         | PG-13  |
        |     514 | LEBOWSKI SOLDIERS           | PG-13  |
        |     515 | LEGALLY SECRETARY           | PG     |
        |     516 | LEGEND JEDI                 | PG     |
        |     518 | LIAISONS SWEET              | PG     |
        |     519 | LIBERTY MAGNIFICENT         | G      |
        |     523 | LIGHTS DEER                 | R      |
        |     524 | LION UNCUT                  | PG     |
        |     525 | LOATHING LEGALLY            | R      |
        |     526 | LOCK REAR                   | R      |
        |     527 | LOLA AGENT                  | PG     |
        |     529 | LONELY ELEPHANT             | G      |
        |     530 | LORD ARIZONA                | PG-13  |
        |     531 | LOSE INCH                   | R      |
        |     532 | LOSER HUSTLER               | PG     |
        |     533 | LOST BIRD                   | PG-13  |
        |     534 | LOUISIANA HARRY             | PG-13  |
        |     535 | LOVE SUICIDES               | R      |
        |     536 | LOVELY JINGLE               | PG     |
        |     537 | LOVER TRUMAN                | G      |
        |     538 | LOVERBOY ATTACKS            | PG-13  |
        |     540 | LUCKY FLYING                | PG-13  |
        |     542 | LUST LOCK                   | G      |
        |     543 | MADIGAN DORADO              | R      |
        |     544 | MADISON TRAP                | R      |
        |     545 | MADNESS ATTACKS             | PG-13  |
        |     546 | MADRE GABLES                | PG-13  |
        |     547 | MAGIC MALLRATS              | PG     |
        |     548 | MAGNIFICENT CHITTY          | R      |
        |     549 | MAGNOLIA FORRESTER          | PG-13  |
        |     551 | MAIDEN HOME                 | PG     |
        |     552 | MAJESTIC FLOATS             | PG     |
        |     553 | MAKER GABLES                | PG-13  |
        |     554 | MALKOVICH PET               | G      |
        |     555 | MALLRATS UNITED             | PG     |
        |     556 | MALTESE HOPE                | PG-13  |
        |     557 | MANCHURIAN CURTAIN          | PG     |
        |     558 | MANNEQUIN WORST             | PG-13  |
        |     559 | MARRIED GO                  | G      |
        |     562 | MASKED BUBBLE               | PG-13  |
        |     563 | MASSACRE USUAL              | R      |
        |     564 | MASSAGE IMAGE               | PG     |
        |     565 | MATRIX SNOWMAN              | PG-13  |
        |     566 | MAUDE MOD                   | R      |
        |     567 | MEET CHOCOLATE              | G      |
        |     569 | MENAGERIE RUSHMORE          | G      |
        |     571 | METAL ARMAGEDDON            | PG-13  |
        |     572 | METROPOLIS COMA             | PG-13  |
        |     573 | MICROCOSMOS PARADISE        | PG-13  |
        |     574 | MIDNIGHT WESTWARD           | G      |
        |     575 | MIDSUMMER GROUNDHOG         | G      |
        |     576 | MIGHTY LUCK                 | PG     |
        |     577 | MILE MULAN                  | PG     |
        |     578 | MILLION ACE                 | PG-13  |
        |     579 | MINDS TRUMAN                | PG-13  |
        |     580 | MINE TITANS                 | PG-13  |
        |     581 | MINORITY KISS               | G      |
        |     582 | MIRACLE VIRTUAL             | PG-13  |
        |     583 | MISSION ZOOLANDER           | PG-13  |
        |     584 | MIXED DOORS                 | PG-13  |
        |     585 | MOB DUFFEL                  | G      |
        |     586 | MOCKINGBIRD HOLLYWOOD       | PG     |
        |     589 | MODERN DORADO               | PG     |
        |     590 | MONEY HAROLD                | PG     |
        |     591 | MONSOON CAUSE               | PG     |
        |     592 | MONSTER SPARTACUS           | PG     |
        |     593 | MONTEREY LABYRINTH          | G      |
        |     595 | MOON BUNCH                  | PG     |
        |     596 | MOONSHINE CABIN             | PG-13  |
        |     597 | MOONWALKER FOOL             | G      |
        |     598 | MOSQUITO ARMAGEDDON         | G      |
        |     599 | MOTHER OLEANDER             | R      |
        |     600 | MOTIONS DETAILS             | PG     |
        |     601 | MOULIN WAKE                 | PG-13  |
        |     602 | MOURNING PURPLE             | PG     |
        |     603 | MOVIE SHAKESPEARE           | PG     |
        |     604 | MULAN MOON                  | G      |
        |     605 | MULHOLLAND BEAST            | PG     |
        |     607 | MUPPET MILE                 | PG     |
        |     608 | MURDER ANTITRUST            | PG     |
        |     609 | MUSCLE BRIGHT               | G      |
        |     610 | MUSIC BOONDOCK              | R      |
        |     611 | MUSKETEERS WAIT             | PG     |
        |     612 | MUSSOLINI SPOILERS          | G      |
        |     614 | NAME DETECTIVE              | PG-13  |
        |     615 | NASH CHOCOLAT               | PG-13  |
        |     617 | NATURAL STOCK               | PG-13  |
        |     618 | NECKLACE OUTBREAK           | PG     |
        |     619 | NEIGHBORS CHARADE           | R      |
        |     621 | NETWORK PEAK                | PG-13  |
        |     622 | NEWSIES STORY               | G      |
        |     623 | NEWTON LABYRINTH            | PG     |
        |     624 | NIGHTMARE CHILL             | PG     |
        |     626 | NOON PAPI                   | G      |
        |     628 | NORTHWEST POLISH            | PG     |
        |     630 | NOTTING SPEAKEASY           | PG-13  |
        |     631 | NOVOCAINE FLIGHT            | G      |
        |     633 | OCTOBER SUBMARINE           | PG-13  |
        |     635 | OKLAHOMA JUMANJI            | PG     |
        |     636 | OLEANDER CLUE               | PG     |
        |     637 | OPEN AFRICAN                | PG     |
        |     638 | OPERATION OPERATION         | G      |
        |     639 | OPPOSITE NECKLACE           | PG     |
        |     640 | OPUS ICE                    | R      |
        |     641 | ORANGE GRAPES               | PG-13  |
        |     642 | ORDER BETRAYED              | PG-13  |
        |     643 | ORIENT CLOSER               | R      |
        |     644 | OSCAR GOLD                  | PG     |
        |     645 | OTHERS SOUP                 | PG     |
        |     648 | OUTLAW HANKY                | PG-13  |
        |     649 | OZ LIAISONS                 | R      |
        |     650 | PACIFIC AMISTAD             | G      |
        |     651 | PACKER MADIGAN              | PG-13  |
        |     652 | PAJAMA JAWBREAKER           | R      |
        |     653 | PANIC CLUB                  | G      |
        |     654 | PANKY SUBMARINE             | G      |
        |     656 | PAPI NECKLACE               | PG     |
        |     657 | PARADISE SABRINA            | PG-13  |
        |     658 | PARIS WEEKEND               | PG-13  |
        |     659 | PARK CITIZEN                | PG-13  |
        |     660 | PARTY KNOCK                 | PG     |
        |     661 | PAST SUICIDES               | PG-13  |
        |     662 | PATHS CONTROL               | PG     |
        |     664 | PATRIOT ROMAN               | PG     |
        |     665 | PATTON INTERVIEW            | PG     |
        |     666 | PAYCHECK WAIT               | PG-13  |
        |     667 | PEACH INNOCENT              | PG-13  |
        |     668 | PEAK FOREVER                | PG     |
        |     670 | PELICAN COMFORTS            | PG     |
        |     672 | PERFECT GROOVE              | PG-13  |
        |     673 | PERSONAL LADYBUGS           | PG-13  |
        |     674 | PET HAUNTING                | PG     |
        |     676 | PHILADELPHIA WIFE           | PG-13  |
        |     678 | PICKUP DRIVING              | G      |
        |     679 | PILOT HOOSIERS              | PG     |
        |     680 | PINOCCHIO SIMON             | PG     |
        |     681 | PIRATES ROXANNE             | PG     |
        |     682 | PITTSBURGH HUNCHBACK        | PG-13  |
        |     685 | PLATOON INSTINCT            | PG-13  |
        |     686 | PLUTO OLEANDER              | R      |
        |     688 | POLISH BROOKLYN             | PG     |
        |     689 | POLLOCK DELIVERANCE         | PG     |
        |     690 | POND SEATTLE                | PG-13  |
        |     691 | POSEIDON FOREVER            | PG-13  |
        |     692 | POTLUCK MIXED               | G      |
        |     693 | POTTER CONNECTICUT          | PG     |
        |     694 | PREJUDICE OLEANDER          | PG-13  |
        |     695 | PRESIDENT BANG              | PG     |
        |     697 | PRIMARY GLASS               | G      |
        |     699 | PRIVATE DROP                | PG     |
        |     700 | PRIX UNDEFEATED             | R      |
        |     701 | PSYCHO SHRUNK               | PG-13  |
        |     702 | PULP BEVERLY                | G      |
        |     703 | PUNK DIVORCE                | PG     |
        |     705 | PURPLE MOVIE                | R      |
        |     706 | QUEEN LUKE                  | PG     |
        |     707 | QUEST MUSSOLINI             | R      |
        |     708 | QUILLS BULL                 | R      |
        |     710 | RAGE GAMES                  | R      |
        |     711 | RAGING AIRPLANE             | R      |
        |     712 | RAIDERS ANTITRUST           | PG-13  |
        |     713 | RAINBOW SHOCK               | PG     |
        |     715 | RANGE MOONWALKER            | PG     |
        |     716 | REAP UNFAITHFUL             | PG-13  |
        |     718 | REBEL AIRPORT               | G      |
        |     719 | RECORDS ZORRO               | PG     |
        |     721 | REDS POCUS                  | PG-13  |
        |     723 | REIGN GENTLEMEN             | PG-13  |
        |     724 | REMEMBER DIARY              | R      |
        |     725 | REQUIEM TYCOON              | R      |
        |     726 | RESERVOIR ADAPTATION        | PG-13  |
        |     727 | RESURRECTION SILVERADO      | PG     |
        |     728 | REUNION WITCHES             | R      |
        |     729 | RIDER CADDYSHACK            | PG     |
        |     730 | RIDGEMONT SUBMARINE         | PG-13  |
        |     731 | RIGHT CRANES                | PG-13  |
        |     732 | RINGS HEARTBREAKERS         | G      |
        |     733 | RIVER OUTLAW                | PG-13  |
        |     734 | ROAD ROXANNE                | R      |
        |     735 | ROBBERS JOON                | PG-13  |
        |     736 | ROBBERY BRIGHT              | R      |
        |     737 | ROCK INSTINCT               | G      |
        |     738 | ROCKETEER MOTHER            | PG-13  |
        |     739 | ROCKY WAR                   | PG-13  |
        |     740 | ROLLERCOASTER BRINGING      | PG-13  |
        |     742 | ROOF CHAMPION               | R      |
        |     743 | ROOM ROMAN                  | PG     |
        |     744 | ROOTS REMEMBER              | PG-13  |
        |     745 | ROSES TREASURE              | PG-13  |
        |     747 | ROXANNE REBEL               | R      |
        |     748 | RUGRATS SHAKESPEARE         | PG-13  |
        |     749 | RULES HUMAN                 | R      |
        |     750 | RUN PACIFIC                 | R      |
        |     753 | RUSH GOODFELLAS             | PG     |
        |     754 | RUSHMORE MERMAID            | PG-13  |
        |     755 | SABRINA MIDNIGHT            | PG     |
        |     756 | SADDLE ANTITRUST            | PG-13  |
        |     757 | SAGEBRUSH CLUELESS          | G      |
        |     758 | SAINTS BRIDE                | G      |
        |     759 | SALUTE APOLLO               | R      |
        |     760 | SAMURAI LION                | G      |
        |     761 | SANTA PARIS                 | PG     |
        |     762 | SASSY PACKER                | G      |
        |     763 | SATISFACTION CONFIDENTIAL   | G      |
        |     764 | SATURDAY LAMBS              | G      |
        |     765 | SATURN NAME                 | R      |
        |     766 | SAVANNAH TOWN               | PG-13  |
        |     768 | SCARFACE BANG               | PG-13  |
        |     769 | SCHOOL JACKET               | PG-13  |
        |     770 | SCISSORHANDS SLUMS          | G      |
        |     772 | SEA VIRGIN                  | PG     |
        |     775 | SEATTLE EXPECATIONS         | PG-13  |
        |     776 | SECRET GROUNDHOG            | PG     |
        |     777 | SECRETARY ROUGE             | PG     |
        |     778 | SECRETS PARADISE            | G      |
        |     779 | SENSE GREEK                 | R      |
        |     780 | SENSIBILITY REAR            | PG     |
        |     781 | SEVEN SWARM                 | R      |
        |     782 | SHAKESPEARE SADDLE          | PG-13  |
        |     783 | SHANE DARKNESS              | PG     |
        |     784 | SHANGHAI TYCOON             | PG     |
        |     785 | SHAWSHANK BUBBLE            | PG     |
        |     786 | SHEPHERD MIDSUMMER          | R      |
        |     787 | SHINING ROSES               | G      |
        |     788 | SHIP WONDERLAND             | R      |
        |     789 | SHOCK CABIN                 | PG-13  |
        |     790 | SHOOTIST SUPERFLY           | PG-13  |
        |     791 | SHOW LORD                   | PG-13  |
        |     792 | SHREK LICENSE               | PG-13  |
        |     793 | SHRUNK DIVINE               | R      |
        |     794 | SIDE ARK                    | G      |
        |     795 | SIEGE MADRE                 | R      |
        |     797 | SILENCE KANE                | R      |
        |     798 | SILVERADO GOLDFINGER        | PG     |
        |     800 | SINNERS ATLANTIS            | PG-13  |
        |     801 | SISTER FREDDY               | PG-13  |
        |     802 | SKY MIRACLE                 | PG     |
        |     803 | SLACKER LIAISONS            | R      |
        |     804 | SLEEPING SUSPECTS           | PG-13  |
        |     805 | SLEEPLESS MONSOON           | G      |
        |     806 | SLEEPY JAPANESE             | PG     |
        |     808 | SLING LUKE                  | R      |
        |     809 | SLIPPER FIDELITY            | PG-13  |
        |     810 | SLUMS DUCK                  | PG     |
        |     811 | SMILE EARRING               | G      |
        |     812 | SMOKING BARBARELLA          | PG-13  |
        |     813 | SMOOCHY CONTROL             | R      |
        |     814 | SNATCH SLIPPER              | PG     |
        |     815 | SNATCHERS MONTEZUMA         | PG-13  |
        |     816 | SNOWMAN ROLLERCOASTER       | G      |
        |     817 | SOLDIERS EVOLUTION          | R      |
        |     819 | SONG HEDWIG                 | PG-13  |
        |     822 | SOUP WISDOM                 | R      |
        |     823 | SOUTH WAIT                  | R      |
        |     825 | SPEAKEASY DATE              | PG-13  |
        |     826 | SPEED SUIT                  | PG-13  |
        |     828 | SPIKING ELEMENT             | G      |
        |     829 | SPINAL ROCKY                | PG-13  |
        |     830 | SPIRIT FLINTSTONES          | R      |
        |     831 | SPIRITED CASUALTIES         | PG-13  |
        |     832 | SPLASH GUMP                 | PG     |
        |     833 | SPLENDOR PATTON             | R      |
        |     834 | SPOILERS HELLFIGHTERS       | G      |
        |     835 | SPY MILE                    | PG-13  |
        |     836 | SQUAD FISH                  | PG     |
        |     837 | STAGE WORLD                 | PG     |
        |     838 | STAGECOACH ARMAGEDDON       | R      |
        |     839 | STALLION SUNDANCE           | PG-13  |
        |     840 | STAMPEDE DISTURBING         | R      |
        |     841 | STAR OPERATION              | PG     |
        |     844 | STEERS ARMAGEDDON           | PG     |
        |     847 | STOCK GLASS                 | PG     |
        |     848 | STONE FIRE                  | G      |
        |     850 | STORY SIDE                  | R      |
        |     851 | STRAIGHT HOURS              | R      |
        |     853 | STRANGER STRANGERS          | G      |
        |     854 | STRANGERS GRAFFITI          | R      |
        |     855 | STREAK RIDGEMONT            | PG-13  |
        |     856 | STREETCAR INTENTIONS        | R      |
        |     857 | STRICTLY SCARFACE           | PG-13  |
        |     858 | SUBMARINE BED               | R      |
        |     859 | SUGAR WONKA                 | PG     |
        |     860 | SUICIDES SILENCE            | G      |
        |     861 | SUIT WALLS                  | R      |
        |     862 | SUMMER SCARFACE             | G      |
        |     863 | SUN CONFESSIONS             | R      |
        |     865 | SUNRISE LEAGUE              | PG-13  |
        |     867 | SUPER WYOMING               | PG     |
        |     868 | SUPERFLY TRIP               | PG     |
        |     869 | SUSPECTS QUILLS             | PG     |
        |     870 | SWARM GOLD                  | PG-13  |
        |     871 | SWEDEN SHINING              | PG     |
        |     872 | SWEET BROTHERHOOD           | R      |
        |     873 | SWEETHEARTS SUSPECTS        | G      |
        |     874 | TADPOLE PARK                | PG     |
        |     875 | TALENTED HOMICIDE           | PG     |
        |     876 | TARZAN VIDEOTAPE            | PG-13  |
        |     877 | TAXI KICK                   | PG-13  |
        |     878 | TEEN APOLLO                 | G      |
        |     879 | TELEGRAPH VOYAGE            | PG     |
        |     880 | TELEMARK HEARTBREAKERS      | PG-13  |
        |     881 | TEMPLE ATTRACTION           | PG     |
        |     882 | TENENBAUMS COMMAND          | PG-13  |
        |     883 | TEQUILA PAST                | PG     |
        |     884 | TERMINATOR CLUB             | R      |
        |     886 | THEORY MERMAID              | PG-13  |
        |     887 | THIEF PELICAN               | PG-13  |
        |     888 | THIN SAGEBRUSH              | PG-13  |
        |     889 | TIES HUNGER                 | R      |
        |     890 | TIGHTS DAWN                 | R      |
        |     891 | TIMBERLAND SKY              | G      |
        |     892 | TITANIC BOONDOCK            | R      |
        |     893 | TITANS JERK                 | PG     |
        |     894 | TOMATOES HELLFIGHTERS       | PG     |
        |     895 | TOMORROW HUSTLER            | R      |
        |     896 | TOOTSIE PILOT               | PG     |
        |     897 | TORQUE BOUND                | G      |
        |     898 | TOURIST PELICAN             | PG-13  |
        |     900 | TOWN ARK                    | R      |
        |     901 | TRACY CIDER                 | G      |
        |     902 | TRADING PINOCCHIO           | PG     |
        |     903 | TRAFFIC HOBBIT              | G      |
        |     904 | TRAIN BUNCH                 | R      |
        |     905 | TRAINSPOTTING STRANGERS     | PG-13  |
        |     906 | TRAMP OTHERS                | PG     |
        |     907 | TRANSLATION SUMMER          | PG-13  |
        |     908 | TRAP GUYS                   | G      |
        |     909 | TREASURE COMMAND            | PG-13  |
        |     910 | TREATMENT JEKYLL            | PG     |
        |     911 | TRIP NEWTON                 | PG-13  |
        |     912 | TROJAN TOMORROW             | PG     |
        |     913 | TROOPERS METAL              | R      |
        |     914 | TROUBLE DATE                | PG     |
        |     915 | TRUMAN CRAZY                | G      |
        |     916 | TURN STAR                   | G      |
        |     917 | TUXEDO MILE                 | R      |
        |     918 | TWISTED PIRATES             | PG     |
        |     919 | TYCOON GATHERING            | G      |
        |     920 | UNBREAKABLE KARATE          | G      |
        |     921 | UNCUT SUICIDES              | PG-13  |
        |     922 | UNDEFEATED DALMATIONS       | PG-13  |
        |     923 | UNFAITHFUL KILL             | R      |
        |     924 | UNFORGIVEN ZOOLANDER        | PG     |
        |     925 | UNITED PILOT                | R      |
        |     928 | UPTOWN YOUNG                | PG     |
        |     929 | USUAL UNTOUCHABLES          | PG-13  |
        |     930 | VACATION BOONDOCK           | R      |
        |     931 | VALENTINE VANISHING         | PG-13  |
        |     932 | VALLEY PACKER               | G      |
        |     935 | VANISHED GARDEN             | R      |
        |     938 | VELVET TERMINATOR           | R      |
        |     939 | VERTIGO NORTHWEST           | R      |
        |     940 | VICTORY ACADEMY             | PG-13  |
        |     942 | VIETNAM SMOOCHY             | PG-13  |
        |     943 | VILLAIN DESPERATE           | PG-13  |
        |     944 | VIRGIN DAISY                | PG-13  |
        |     945 | VIRGINIAN PLUTO             | R      |
        |     947 | VISION TORQUE               | PG-13  |
        |     948 | VOICE PEACH                 | PG-13  |
        |     950 | VOLUME HOUSE                | PG     |
        |     951 | VOYAGE LEGALLY              | PG-13  |
        |     952 | WAGON JAWS                  | PG     |
        |     953 | WAIT CIDER                  | PG-13  |
        |     954 | WAKE JAWS                   | G      |
        |     955 | WALLS ARTIST                | PG     |
        |     956 | WANDA CHAMBER               | PG-13  |
        |     957 | WAR NOTTING                 | G      |
        |     958 | WARDROBE PHANTOM            | G      |
        |     959 | WARLOCK WEREWOLF            | G      |
        |     960 | WARS PLUTO                  | G      |
        |     961 | WASH HEAVENLY               | R      |
        |     962 | WASTELAND DIVINE            | PG     |
        |     963 | WATCH TRACY                 | PG     |
        |     964 | WATERFRONT DELIVERANCE      | G      |
        |     965 | WATERSHIP FRONTIER          | G      |
        |     966 | WEDDING APOLLO              | PG     |
        |     967 | WEEKEND PERSONAL            | R      |
        |     968 | WEREWOLF LOLA               | G      |
        |     969 | WEST LION                   | G      |
        |     971 | WHALE BIKINI                | PG-13  |
        |     972 | WHISPERER GIANT             | PG-13  |
        |     974 | WILD APOLLO                 | R      |
        |     975 | WILLOW TRACY                | R      |
        |     976 | WIND PHANTOM                | R      |
        |     977 | WINDOW SIDE                 | R      |
        |     978 | WISDOM WORKER               | R      |
        |     980 | WIZARD COLDBLOODED          | PG     |
        |     982 | WOMEN DORADO                | R      |
        |     983 | WON DARES                   | PG     |
        |     985 | WONDERLAND CHRISTMAS        | PG     |
        |     987 | WORDS HUNTER                | PG     |
        |     988 | WORKER TARZAN               | R      |
        |     989 | WORKING MICROCOSMOS         | R      |
        |     990 | WORLD LEATHERNECKS          | PG-13  |
        |     991 | WORST BANGER                | PG     |
        |     993 | WRONG BEHAVIOR              | PG-13  |
        |     994 | WYOMING STORM               | PG-13  |
        |     995 | YENTL IDAHO                 | R      |
        |     996 | YOUNG LANGUAGE              | G      |
        |     999 | ZOOLANDER FICTION           | R      |
        +---------+-----------------------------+--------+
        790 rows in set (0,01 sec)
        **/
      
        -- Peliculas con un rating PG y duracion de más de 120.
        select film_id, title, rating, length from film WHERE rating = 'PG' and length > 120;
        /**
        +---------+-----------------------+--------+--------+
        | film_id | title                 | rating | length |
        +---------+-----------------------+--------+--------+
        |       6 | AGENT TRUMAN          | PG     |    169 |
        |      12 | ALASKA PHANTOM        | PG     |    136 |
        |      13 | ALI FOREVER           | PG     |    150 |
        |      37 | ARIZONA BANG          | PG     |    121 |
        |      41 | ARSENIC INDEPENDENCE  | PG     |    137 |
        |      74 | BIRCH ANTITRUST       | PG     |    162 |
        |      88 | BORN SPINAL           | PG     |    179 |
        |      93 | BRANNIGAN SUNRISE     | PG     |    121 |
        |      99 | BRINGING HYSTERICAL   | PG     |    136 |
        |     103 | BUCKET BROTHERHOOD    | PG     |    133 |
        |     121 | CAROL TEXAS           | PG     |    151 |
        |     131 | CENTER DINOSAUR       | PG     |    152 |
        |     142 | CHICKEN HELLFIGHTERS  | PG     |    122 |
        |     143 | CHILL LUCK            | PG     |    142 |
        |     185 | COWBOY DOOM           | PG     |    146 |
        |     188 | CRAZY HOME            | PG     |    136 |
        |     201 | CYCLONE FAMILY        | PG     |    176 |
        |     207 | DANGEROUS UPTOWN      | PG     |    121 |
        |     233 | DISCIPLE MOTHER       | PG     |    141 |
        |     252 | DREAM PICKUP          | PG     |    135 |
        |     265 | DYING MAKER           | PG     |    168 |
        |     290 | EVERYONE CRAFT        | PG     |    163 |
        |     308 | FERRIS MOTHER         | PG     |    142 |
        |     317 | FIREBALL PHILADELPHIA | PG     |    148 |
        |     327 | FOOL MOCKINGBIRD      | PG     |    158 |
        |     345 | GABLES METROPOLIS     | PG     |    161 |
        |     359 | GLADIATOR WESTWARD    | PG     |    173 |
        |     380 | GREEK EVERYONE        | PG     |    176 |
        |     382 | GRIT CLOCKWORK        | PG     |    137 |
        |     420 | HOLES BRANNIGAN       | PG     |    128 |
        |     446 | HYSTERICAL GRAIL      | PG     |    150 |
        |     479 | JEDI BENEATH          | PG     |    128 |
        |     495 | KENTUCKIAN GIANT      | PG     |    169 |
        |     518 | LIAISONS SWEET        | PG     |    140 |
        |     551 | MAIDEN HOME           | PG     |    138 |
        |     552 | MAJESTIC FLOATS       | PG     |    130 |
        |     555 | MALLRATS UNITED       | PG     |    133 |
        |     557 | MANCHURIAN CURTAIN    | PG     |    177 |
        |     564 | MASSAGE IMAGE         | PG     |    161 |
        |     576 | MIGHTY LUCK           | PG     |    122 |
        |     590 | MONEY HAROLD          | PG     |    135 |
        |     591 | MONSOON CAUSE         | PG     |    182 |
        |     600 | MOTIONS DETAILS       | PG     |    166 |
        |     602 | MOURNING PURPLE       | PG     |    146 |
        |     605 | MULHOLLAND BEAST      | PG     |    157 |
        |     608 | MURDER ANTITRUST      | PG     |    166 |
        |     618 | NECKLACE OUTBREAK     | PG     |    132 |
        |     624 | NIGHTMARE CHILL       | PG     |    149 |
        |     628 | NORTHWEST POLISH      | PG     |    172 |
        |     636 | OLEANDER CLUE         | PG     |    161 |
        |     637 | OPEN AFRICAN          | PG     |    131 |
        |     656 | PAPI NECKLACE         | PG     |    128 |
        |     665 | PATTON INTERVIEW      | PG     |    175 |
        |     689 | POLLOCK DELIVERANCE   | PG     |    137 |
        |     695 | PRESIDENT BANG        | PG     |    144 |
        |     706 | QUEEN LUKE            | PG     |    163 |
        |     715 | RANGE MOONWALKER      | PG     |    147 |
        |     719 | RECORDS ZORRO         | PG     |    182 |
        |     729 | RIDER CADDYSHACK      | PG     |    177 |
        |     761 | SANTA PARIS           | PG     |    154 |
        |     777 | SECRETARY ROUGE       | PG     |    158 |
        |     802 | SKY MIRACLE           | PG     |    132 |
        |     806 | SLEEPY JAPANESE       | PG     |    137 |
        |     810 | SLUMS DUCK            | PG     |    147 |
        |     832 | SPLASH GUMP           | PG     |    175 |
        |     836 | SQUAD FISH            | PG     |    136 |
        |     841 | STAR OPERATION        | PG     |    181 |
        |     844 | STEERS ARMAGEDDON     | PG     |    140 |
        |     847 | STOCK GLASS           | PG     |    160 |
        |     871 | SWEDEN SHINING        | PG     |    176 |
        |     874 | TADPOLE PARK          | PG     |    155 |
        |     875 | TALENTED HOMICIDE     | PG     |    173 |
        |     879 | TELEGRAPH VOYAGE      | PG     |    148 |
        |     896 | TOOTSIE PILOT         | PG     |    157 |
        |     902 | TRADING PINOCCHIO     | PG     |    170 |
        |     906 | TRAMP OTHERS          | PG     |    171 |
        |     918 | TWISTED PIRATES       | PG     |    152 |
        |     924 | UNFORGIVEN ZOOLANDER  | PG     |    129 |
        |     950 | VOLUME HOUSE          | PG     |    132 |
        |     952 | WAGON JAWS            | PG     |    152 |
        |     955 | WALLS ARTIST          | PG     |    135 |
        |     991 | WORST BANGER          | PG     |    185 |
        +---------+-----------------------+--------+--------+
        82 rows in set (0,00 sec)
        **/

        -- ¿Cuantos actores hay?
        select COUNT(actor_id) AS number_actors from actor;
        /**
        +---------------+
        | number_actors |
        +---------------+
        |           200 |
        +---------------+
        1 row in set (0,01 sec)
        **/
      
        -- ¿Cuántas ciudades tiene el country Spain?
        select COUNT(ci.city_id) AS Spain_city_number from city ci JOIN country co ON ci.country_id = co.country_id WHERE co.country = 'Spain';
        /**
        +-------------------+
        | Spain_city_number |
        +-------------------+
        |                 5 |
        +-------------------+
        1 row in set (0,00 sec)

        **/
        -- ¿Cuántos countries hay que empiezan por a?
        select COUNT(country_id) AS country_a from country WHERE country regexp '^a';
        /**
        +-----------+
        | country_a |
        +-----------+
        |        10 |
        +-----------+
        1 row in set (0,00 sec)
        **/

        -- Media de duración de peliculas con PG.
        select AVG(length, 2) AS avg_length_film from film WHERE rating = 'PG';
        /**
        +-----------------+
        | avg_length_film |
        +-----------------+
        |        112.0052 |
        +-----------------+
        1 row in set (0,00 sec)
        **/

        -- Suma de rental_rate de todas las peliculas.
        select SUM(rental_rate) AS total_Rental_rate from film;
        /**
        +-------------------+
        | total_Rental_rate |
        +-------------------+
        |           2980.00 |
        +-------------------+
        1 row in set (0,00 sec)
        
        **/
        -- Pelicula con mayor duración.
        select film_id, title, length AS Mayor_Duracion from film WHERE length = (select MAX(length) from film) GROUP BY film_id LIMIT 1;
        /**
        +---------+---------------+----------------+
        | film_id | title         | Mayor_Duracion |
        +---------+---------------+----------------+
        |     141 | CHICAGO NORTH |            185 |
        +---------+---------------+----------------+
        1 row in set (0,00 sec)
        **/

        -- Película con menor duración.
        select film_id, title, length AS Menor_Duracion from film WHERE length = (select MIN(length) from film) GROUP BY film_id LIMIT 1;
        /**
        +---------+--------------+----------------+
        | film_id | title        | Menor_Duracion |
        +---------+--------------+----------------+
        |      15 | ALIEN CENTER |             46 |
        +---------+--------------+----------------+
        1 row in set (0,00 sec)
        **/

        -- Mostrar las ciudades del country Spain (multitabla).
        select ci.city, co.country from city ci JOIN country co ON ci.country_id = co.country_id WHERE co.country = 'Spain';
        /**
        +-------------------------+---------+
        | city                    | country |
        +-------------------------+---------+
        | A Coruña (La Coruña)    | Spain   |
        | Donostia-San Sebastián  | Spain   |
        | Gijón                   | Spain   |
        | Ourense (Orense)        | Spain   |
        | Santiago de Compostela  | Spain   |
        +-------------------------+---------+
        5 rows in set (0,00 sec)
        **/

        -- Mostrar el nombre de la película y el nombre de los actores.
        select f.title, a.first_name from film f JOIN film_actor fa ON f.film_id = fa.film_id JOIN actor a ON a.actor_id = fa.actor_id;
        /**
        +-----------------------------+-------------+--------------+
        | title                       | first_name  | last_name    |
        +-----------------------------+-------------+--------------+
        | ACADEMY DINOSAUR            | PENELOPE    | GUINESS      |
        | ANACONDA CONFESSIONS        | PENELOPE    | GUINESS      |
        | ANGELS LIFE                 | PENELOPE    | GUINESS      |
        | BULWORTH COMMANDMENTS       | PENELOPE    | GUINESS      |
        | CHEAPER CLYDE               | PENELOPE    | GUINESS      |
        | COLOR PHILADELPHIA          | PENELOPE    | GUINESS      |
        | ELEPHANT TROJAN             | PENELOPE    | GUINESS      |
        | GLEAMING JAWBREAKER         | PENELOPE    | GUINESS      |
        | HUMAN GRAFFITI              | PENELOPE    | GUINESS      |
        | KING EVOLUTION              | PENELOPE    | GUINESS      |
        | LADY STAGE                  | PENELOPE    | GUINESS      |
        | LANGUAGE COWBOY             | PENELOPE    | GUINESS      |
        | MULHOLLAND BEAST            | PENELOPE    | GUINESS      |
        | OKLAHOMA JUMANJI            | PENELOPE    | GUINESS      |
        | RULES HUMAN                 | PENELOPE    | GUINESS      |
        | SPLASH GUMP                 | PENELOPE    | GUINESS      |
        | VERTIGO NORTHWEST           | PENELOPE    | GUINESS      |
        | WESTWARD SEABISCUIT         | PENELOPE    | GUINESS      |
        | WIZARD COLDBLOODED          | PENELOPE    | GUINESS      |
        | ADAPTATION HOLES            | NICK        | WAHLBERG     |
        | APACHE DIVINE               | NICK        | WAHLBERG     |
        | BABY HALL                   | NICK        | WAHLBERG     |
        | BULL SHAWSHANK              | NICK        | WAHLBERG     |
        | CHAINSAW UPTOWN             | NICK        | WAHLBERG     |
        | CHISUM BEHAVIOR             | NICK        | WAHLBERG     |
        | DESTINY SATURDAY            | NICK        | WAHLBERG     |
        | DRACULA CRYSTAL             | NICK        | WAHLBERG     |
        | FIGHT JAWBREAKER            | NICK        | WAHLBERG     |
        | FLASH WARS                  | NICK        | WAHLBERG     |
        | GILBERT PELICAN             | NICK        | WAHLBERG     |
        | GOODFELLAS SALUTE           | NICK        | WAHLBERG     |
        | HAPPINESS UNITED            | NICK        | WAHLBERG     |
        | INDIAN LOVE                 | NICK        | WAHLBERG     |
        | JEKYLL FROGMEN              | NICK        | WAHLBERG     |
        | JERSEY SASSY                | NICK        | WAHLBERG     |
        | LIAISONS SWEET              | NICK        | WAHLBERG     |
        | LUCKY FLYING                | NICK        | WAHLBERG     |
        | MAGUIRE APACHE              | NICK        | WAHLBERG     |
        | MALLRATS UNITED             | NICK        | WAHLBERG     |
        | MASK PEACH                  | NICK        | WAHLBERG     |
        | ROOF CHAMPION               | NICK        | WAHLBERG     |
        | RUSHMORE MERMAID            | NICK        | WAHLBERG     |
        | SMILE EARRING               | NICK        | WAHLBERG     |
        | WARDROBE PHANTOM            | NICK        | WAHLBERG     |
        | ALONE TRIP                  | ED          | CHASE        |
        | ARMY FLINTSTONES            | ED          | CHASE        |
        | ARTIST COLDBLOODED          | ED          | CHASE        |
        | BOONDOCK BALLROOM           | ED          | CHASE        |
        | CADDYSHACK JEDI             | ED          | CHASE        |
        | COWBOY DOOM                 | ED          | CHASE        |
        | EVE RESURRECTION            | ED          | CHASE        |
        | FORREST SONS                | ED          | CHASE        |
        | FRENCH HOLIDAY              | ED          | CHASE        |
        | FROST HEAD                  | ED          | CHASE        |
        | HALLOWEEN NUTS              | ED          | CHASE        |
        | HUNTER ALTER                | ED          | CHASE        |
        | IMAGE PRINCESS              | ED          | CHASE        |
        | JEEPERS WEDDING             | ED          | CHASE        |
        | LUCK OPUS                   | ED          | CHASE        |
        | NECKLACE OUTBREAK           | ED          | CHASE        |
        | PLATOON INSTINCT            | ED          | CHASE        |
        | SPICE SORORITY              | ED          | CHASE        |
        | WEDDING APOLLO              | ED          | CHASE        |
        | WEEKEND PERSONAL            | ED          | CHASE        |
        | WHALE BIKINI                | ED          | CHASE        |
        | YOUNG LANGUAGE              | ED          | CHASE        |
        | ANACONDA CONFESSIONS        | JENNIFER    | DAVIS        |
        | ANGELS LIFE                 | JENNIFER    | DAVIS        |
        | BAREFOOT MANCHURIAN         | JENNIFER    | DAVIS        |
        | BED HIGHBALL                | JENNIFER    | DAVIS        |
        | BLADE POLISH                | JENNIFER    | DAVIS        |
        | BOONDOCK BALLROOM           | JENNIFER    | DAVIS        |
        | GHOSTBUSTERS ELF            | JENNIFER    | DAVIS        |
        | GREEDY ROOTS                | JENNIFER    | DAVIS        |
        | HANOVER GALAXY              | JENNIFER    | DAVIS        |
        | INSTINCT AIRPORT            | JENNIFER    | DAVIS        |
        | JUMANJI BLADE               | JENNIFER    | DAVIS        |
        | NATIONAL STORY              | JENNIFER    | DAVIS        |
        | OKLAHOMA JUMANJI            | JENNIFER    | DAVIS        |
        | POSEIDON FOREVER            | JENNIFER    | DAVIS        |
        | RAIDERS ANTITRUST           | JENNIFER    | DAVIS        |
        | RANDOM GO                   | JENNIFER    | DAVIS        |
        | REDS POCUS                  | JENNIFER    | DAVIS        |
        | SILVERADO GOLDFINGER        | JENNIFER    | DAVIS        |
        | SPLASH GUMP                 | JENNIFER    | DAVIS        |
        | SUBMARINE BED               | JENNIFER    | DAVIS        |
        | TREASURE COMMAND            | JENNIFER    | DAVIS        |
        | UNFORGIVEN ZOOLANDER        | JENNIFER    | DAVIS        |
        | AMADEUS HOLY                | JOHNNY      | LOLLOBRIGIDA |
        | BANGER PINOCCHIO            | JOHNNY      | LOLLOBRIGIDA |
        | BONNIE HOLOCAUST            | JOHNNY      | LOLLOBRIGIDA |
        | CHITTY LOCK                 | JOHNNY      | LOLLOBRIGIDA |
        | COMMANDMENTS EXPRESS        | JOHNNY      | LOLLOBRIGIDA |
        | CONEHEADS SMOOCHY           | JOHNNY      | LOLLOBRIGIDA |
        | DADDY PITTSBURGH            | JOHNNY      | LOLLOBRIGIDA |
        | DAISY MENAGERIE             | JOHNNY      | LOLLOBRIGIDA |
        | ENOUGH RAGING               | JOHNNY      | LOLLOBRIGIDA |
        | ESCAPE METROPOLIS           | JOHNNY      | LOLLOBRIGIDA |
        | FIRE WOLVES                 | JOHNNY      | LOLLOBRIGIDA |
        | FRONTIER CABIN              | JOHNNY      | LOLLOBRIGIDA |
        | GOODFELLAS SALUTE           | JOHNNY      | LOLLOBRIGIDA |
        | GRAIL FRANKENSTEIN          | JOHNNY      | LOLLOBRIGIDA |
        | GROOVE FICTION              | JOHNNY      | LOLLOBRIGIDA |
        | HALL CASSIDY                | JOHNNY      | LOLLOBRIGIDA |
        | HEAVENLY GUN                | JOHNNY      | LOLLOBRIGIDA |
        | KRAMER CHOCOLATE            | JOHNNY      | LOLLOBRIGIDA |
        | LOVE SUICIDES               | JOHNNY      | LOLLOBRIGIDA |
        | METAL ARMAGEDDON            | JOHNNY      | LOLLOBRIGIDA |
        | PACIFIC AMISTAD             | JOHNNY      | LOLLOBRIGIDA |
        | PATTON INTERVIEW            | JOHNNY      | LOLLOBRIGIDA |
        | POCUS PULP                  | JOHNNY      | LOLLOBRIGIDA |
        | RIDGEMONT SUBMARINE         | JOHNNY      | LOLLOBRIGIDA |
        | RINGS HEARTBREAKERS         | JOHNNY      | LOLLOBRIGIDA |
        | SMILE EARRING               | JOHNNY      | LOLLOBRIGIDA |
        | SOLDIERS EVOLUTION          | JOHNNY      | LOLLOBRIGIDA |
        | STAR OPERATION              | JOHNNY      | LOLLOBRIGIDA |
        | SUNRISE LEAGUE              | JOHNNY      | LOLLOBRIGIDA |
        | ANTITRUST TOMATOES          | BETTE       | NICHOLSON    |
        | BANG KWAI                   | BETTE       | NICHOLSON    |
        | BEAST HUNCHBACK             | BETTE       | NICHOLSON    |
        | BIKINI BORROWERS            | BETTE       | NICHOLSON    |
        | CALENDAR GUNFIGHT           | BETTE       | NICHOLSON    |
        | COAST RAINBOW               | BETTE       | NICHOLSON    |
        | COLDBLOODED DARLING         | BETTE       | NICHOLSON    |
        | CROSSROADS CASUALTIES       | BETTE       | NICHOLSON    |
        | DROP WATERFRONT             | BETTE       | NICHOLSON    |
        | IGBY MAKER                  | BETTE       | NICHOLSON    |
        | KRAMER CHOCOLATE            | BETTE       | NICHOLSON    |
        | LANGUAGE COWBOY             | BETTE       | NICHOLSON    |
        | LESSON CLEOPATRA            | BETTE       | NICHOLSON    |
        | LIBERTY MAGNIFICENT         | BETTE       | NICHOLSON    |
        | MULHOLLAND BEAST            | BETTE       | NICHOLSON    |
        | POTLUCK MIXED               | BETTE       | NICHOLSON    |
        | SPEED SUIT                  | BETTE       | NICHOLSON    |
        | TITANIC BOONDOCK            | BETTE       | NICHOLSON    |
        | TRADING PINOCCHIO           | BETTE       | NICHOLSON    |
        | WYOMING STORM               | BETTE       | NICHOLSON    |
        | ANGELS LIFE                 | GRACE       | MOSTEL       |
        | ANONYMOUS HUMAN             | GRACE       | MOSTEL       |
        | ARACHNOPHOBIA ROLLERCOASTER | GRACE       | MOSTEL       |
        | BERETS AGENT                | GRACE       | MOSTEL       |
        | BREAKING HOME               | GRACE       | MOSTEL       |
        | COMMAND DARLING             | GRACE       | MOSTEL       |
        | CONFESSIONS MAGUIRE         | GRACE       | MOSTEL       |
        | DAZED PUNK                  | GRACE       | MOSTEL       |
        | DECEIVER BETRAYED           | GRACE       | MOSTEL       |
        | DESTINATION JERK            | GRACE       | MOSTEL       |
        | EXCITEMENT EVE              | GRACE       | MOSTEL       |
        | GASLIGHT CRUSADE            | GRACE       | MOSTEL       |
        | HELLFIGHTERS SIERRA         | GRACE       | MOSTEL       |
        | INSTINCT AIRPORT            | GRACE       | MOSTEL       |
        | MALKOVICH PET               | GRACE       | MOSTEL       |
        | NECKLACE OUTBREAK           | GRACE       | MOSTEL       |
        | OCTOBER SUBMARINE           | GRACE       | MOSTEL       |
        | OPEN AFRICAN                | GRACE       | MOSTEL       |
        | POSEIDON FOREVER            | GRACE       | MOSTEL       |
        | SAINTS BRIDE                | GRACE       | MOSTEL       |
        | SAVANNAH TOWN               | GRACE       | MOSTEL       |
        | SCISSORHANDS SLUMS          | GRACE       | MOSTEL       |
        | SLEEPLESS MONSOON           | GRACE       | MOSTEL       |
        | SLEEPY JAPANESE             | GRACE       | MOSTEL       |
        | STING PERSONAL              | GRACE       | MOSTEL       |
        | TOWN ARK                    | GRACE       | MOSTEL       |
        | TRACY CIDER                 | GRACE       | MOSTEL       |
        | TREATMENT JEKYLL            | GRACE       | MOSTEL       |
        | WAR NOTTING                 | GRACE       | MOSTEL       |
        | WARLOCK WEREWOLF            | GRACE       | MOSTEL       |
        | BABY HALL                   | MATTHEW     | JOHANSSON    |
        | CAMPUS REMEMBER             | MATTHEW     | JOHANSSON    |
        | CLONES PINOCCHIO            | MATTHEW     | JOHANSSON    |
        | CONQUERER NUTS              | MATTHEW     | JOHANSSON    |
        | CROWDS TELEMARK             | MATTHEW     | JOHANSSON    |
        | DANCES NONE                 | MATTHEW     | JOHANSSON    |
        | DRIVING POLISH              | MATTHEW     | JOHANSSON    |
        | DURHAM PANKY                | MATTHEW     | JOHANSSON    |
        | FLASH WARS                  | MATTHEW     | JOHANSSON    |
        | HANGING DEEP                | MATTHEW     | JOHANSSON    |
        | INDIAN LOVE                 | MATTHEW     | JOHANSSON    |
        | LIGHTS DEER                 | MATTHEW     | JOHANSSON    |
        | LOSER HUSTLER               | MATTHEW     | JOHANSSON    |
        | MALKOVICH PET               | MATTHEW     | JOHANSSON    |
        | RUNNER MADIGAN              | MATTHEW     | JOHANSSON    |
        | SCHOOL JACKET               | MATTHEW     | JOHANSSON    |
        | SCORPION APOLLO             | MATTHEW     | JOHANSSON    |
        | SUGAR WONKA                 | MATTHEW     | JOHANSSON    |
        | TOMORROW HUSTLER            | MATTHEW     | JOHANSSON    |
        | VANISHING ROCKY             | MATTHEW     | JOHANSSON    |
        | ANYTHING SAVANNAH           | JOE         | SWANK        |
        | BIRCH ANTITRUST             | JOE         | SWANK        |
        | CHOCOLAT HARRY              | JOE         | SWANK        |
        | CHOCOLATE DUCK              | JOE         | SWANK        |
        | CROOKED FROGMEN             | JOE         | SWANK        |
        | CURTAIN VIDEOTAPE           | JOE         | SWANK        |
        | DALMATIONS SWEDEN           | JOE         | SWANK        |
        | HORROR REIGN                | JOE         | SWANK        |
        | LAWLESS VISION              | JOE         | SWANK        |
        | LEBOWSKI SOLDIERS           | JOE         | SWANK        |
        | MAJESTIC FLOATS             | JOE         | SWANK        |
        | PACIFIC AMISTAD             | JOE         | SWANK        |
        | PERDITION FARGO             | JOE         | SWANK        |
        | PRIMARY GLASS               | JOE         | SWANK        |
        | REEF SALUTE                 | JOE         | SWANK        |
        | RUNNER MADIGAN              | JOE         | SWANK        |
        | SMILE EARRING               | JOE         | SWANK        |
        | SNATCHERS MONTEZUMA         | JOE         | SWANK        |
        | SUNRISE LEAGUE              | JOE         | SWANK        |
        | SWEETHEARTS SUSPECTS        | JOE         | SWANK        |
        | TIES HUNGER                 | JOE         | SWANK        |
        | TRAFFIC HOBBIT              | JOE         | SWANK        |
        | UNTOUCHABLES SUNRISE        | JOE         | SWANK        |
        | WATERFRONT DELIVERANCE      | JOE         | SWANK        |
        | WILD APOLLO                 | JOE         | SWANK        |
        | ACADEMY DINOSAUR            | CHRISTIAN   | GABLE        |
        | ALABAMA DEVIL               | CHRISTIAN   | GABLE        |
        | CROOKED FROGMEN             | CHRISTIAN   | GABLE        |
        | DIVINE RESURRECTION         | CHRISTIAN   | GABLE        |
        | DRAGONFLY STRANGERS         | CHRISTIAN   | GABLE        |
        | GOLDFINGER SENSIBILITY      | CHRISTIAN   | GABLE        |
        | JAWBREAKER BROOKLYN         | CHRISTIAN   | GABLE        |
        | JEEPERS WEDDING             | CHRISTIAN   | GABLE        |
        | LIFE TWISTED                | CHRISTIAN   | GABLE        |
        | LORD ARIZONA                | CHRISTIAN   | GABLE        |
        | MOD SECRETARY               | CHRISTIAN   | GABLE        |
        | PREJUDICE OLEANDER          | CHRISTIAN   | GABLE        |
        | PUNK DIVORCE                | CHRISTIAN   | GABLE        |
        | REAP UNFAITHFUL             | CHRISTIAN   | GABLE        |
        | SHAKESPEARE SADDLE          | CHRISTIAN   | GABLE        |
        | TROUBLE DATE                | CHRISTIAN   | GABLE        |
        | USUAL UNTOUCHABLES          | CHRISTIAN   | GABLE        |
        | VACATION BOONDOCK           | CHRISTIAN   | GABLE        |
        | WATERFRONT DELIVERANCE      | CHRISTIAN   | GABLE        |
        | WEDDING APOLLO              | CHRISTIAN   | GABLE        |
        | WIZARD COLDBLOODED          | CHRISTIAN   | GABLE        |
        | WON DARES                   | CHRISTIAN   | GABLE        |
        | CANYON STOCK                | ZERO        | CAGE         |
        | DANCES NONE                 | ZERO        | CAGE         |
        | ENCINO ELF                  | ZERO        | CAGE         |
        | ENDING CROWDS               | ZERO        | CAGE         |
        | GANDHI KWAI                 | ZERO        | CAGE         |
        | GODFATHER DIARY             | ZERO        | CAGE         |
        | HANDICAP BOONDOCK           | ZERO        | CAGE         |
        | HONEY TIES                  | ZERO        | CAGE         |
        | HORN WORKING                | ZERO        | CAGE         |
        | IMAGE PRINCESS              | ZERO        | CAGE         |
        | JERSEY SASSY                | ZERO        | CAGE         |
        | LOSER HUSTLER               | ZERO        | CAGE         |
        | MEET CHOCOLATE              | ZERO        | CAGE         |
        | MOD SECRETARY               | ZERO        | CAGE         |
        | MOONWALKER FOOL             | ZERO        | CAGE         |
        | OLEANDER CLUE               | ZERO        | CAGE         |
        | RACER EGG                   | ZERO        | CAGE         |
        | STORY SIDE                  | ZERO        | CAGE         |
        | STRANGERS GRAFFITI          | ZERO        | CAGE         |
        | THIN SAGEBRUSH              | ZERO        | CAGE         |
        | TOOTSIE PILOT               | ZERO        | CAGE         |
        | UPTOWN YOUNG                | ZERO        | CAGE         |
        | VELVET TERMINATOR           | ZERO        | CAGE         |
        | WEST LION                   | ZERO        | CAGE         |
        | WORKER TARZAN               | ZERO        | CAGE         |
        | ALLEY EVOLUTION             | KARL        | BERRY        |
        | ALONE TRIP                  | KARL        | BERRY        |
        | ARABIA DOGMA                | KARL        | BERRY        |
        | ARIZONA BANG                | KARL        | BERRY        |
        | BOUND CHEAPER               | KARL        | BERRY        |
        | BOWFINGER GABLES            | KARL        | BERRY        |
        | BUNCH MINDS                 | KARL        | BERRY        |
        | CLEOPATRA DEVIL             | KARL        | BERRY        |
        | CONNECTICUT TRAMP           | KARL        | BERRY        |
        | DARES PLUTO                 | KARL        | BERRY        |
        | DATE SPEED                  | KARL        | BERRY        |
        | DAY UNFAITHFUL              | KARL        | BERRY        |
        | DOORS PRESIDENT             | KARL        | BERRY        |
        | FURY MURDER                 | KARL        | BERRY        |
        | HARDLY ROBBERS              | KARL        | BERRY        |
        | HIGHBALL POTTER             | KARL        | BERRY        |
        | HOLES BRANNIGAN             | KARL        | BERRY        |
        | INDEPENDENCE HOTEL          | KARL        | BERRY        |
        | LEATHERNECKS DWARFS         | KARL        | BERRY        |
        | LUCKY FLYING                | KARL        | BERRY        |
        | MONTEREY LABYRINTH          | KARL        | BERRY        |
        | NOVOCAINE FLIGHT            | KARL        | BERRY        |
        | OKLAHOMA JUMANJI            | KARL        | BERRY        |
        | PERFECT GROOVE              | KARL        | BERRY        |
        | REAP UNFAITHFUL             | KARL        | BERRY        |
        | REUNION WITCHES             | KARL        | BERRY        |
        | SMOKING BARBARELLA          | KARL        | BERRY        |
        | STAGECOACH ARMAGEDDON       | KARL        | BERRY        |
        | SWEDEN SHINING              | KARL        | BERRY        |
        | TELEMARK HEARTBREAKERS      | KARL        | BERRY        |
        | VIRGINIAN PLUTO             | KARL        | BERRY        |
        | ALONE TRIP                  | UMA         | WOOD         |
        | ANTITRUST TOMATOES          | UMA         | WOOD         |
        | ATTRACTION NEWTON           | UMA         | WOOD         |
        | BOONDOCK BALLROOM           | UMA         | WOOD         |
        | CABIN FLASH                 | UMA         | WOOD         |
        | CHINATOWN GLADIATOR         | UMA         | WOOD         |
        | CLASH FREDDY                | UMA         | WOOD         |
        | CLUELESS BUCKET             | UMA         | WOOD         |
        | DAISY MENAGERIE             | UMA         | WOOD         |
        | DRIVER ANNIE                | UMA         | WOOD         |
        | FRIDA SLIPPER               | UMA         | WOOD         |
        | GALAXY SWEETHEARTS          | UMA         | WOOD         |
        | GRINCH MASSAGE              | UMA         | WOOD         |
        | GROUNDHOG UNCUT             | UMA         | WOOD         |
        | HOMEWARD CIDER              | UMA         | WOOD         |
        | INCH JET                    | UMA         | WOOD         |
        | LEATHERNECKS DWARFS         | UMA         | WOOD         |
        | LEGALLY SECRETARY           | UMA         | WOOD         |
        | LIFE TWISTED                | UMA         | WOOD         |
        | LION UNCUT                  | UMA         | WOOD         |
        | LOLITA WORLD                | UMA         | WOOD         |
        | METAL ARMAGEDDON            | UMA         | WOOD         |
        | MODEL FISH                  | UMA         | WOOD         |
        | MOONWALKER FOOL             | UMA         | WOOD         |
        | MOTIONS DETAILS             | UMA         | WOOD         |
        | REBEL AIRPORT               | UMA         | WOOD         |
        | RIDER CADDYSHACK            | UMA         | WOOD         |
        | SNOWMAN ROLLERCOASTER       | UMA         | WOOD         |
        | SOLDIERS EVOLUTION          | UMA         | WOOD         |
        | SPLASH GUMP                 | UMA         | WOOD         |
        | SPLENDOR PATTON             | UMA         | WOOD         |
        | STEEL SANTA                 | UMA         | WOOD         |
        | TORQUE BOUND                | UMA         | WOOD         |
        | WEDDING APOLLO              | UMA         | WOOD         |
        | ZHIVAGO CORE                | UMA         | WOOD         |
        | CLASH FREDDY                | VIVIEN      | BERGEN       |
        | CRANES RESERVOIR            | VIVIEN      | BERGEN       |
        | DIRTY ACE                   | VIVIEN      | BERGEN       |
        | DONNIE ALLEY                | VIVIEN      | BERGEN       |
        | DRIFTER COMMANDMENTS        | VIVIEN      | BERGEN       |
        | DRIVING POLISH              | VIVIEN      | BERGEN       |
        | DRUMS DYNAMITE              | VIVIEN      | BERGEN       |
        | ENEMY ODDS                  | VIVIEN      | BERGEN       |
        | EXCITEMENT EVE              | VIVIEN      | BERGEN       |
        | GORGEOUS BINGO              | VIVIEN      | BERGEN       |
        | HIGH ENCINO                 | VIVIEN      | BERGEN       |
        | HILLS NEIGHBORS             | VIVIEN      | BERGEN       |
        | HOBBIT ALIEN                | VIVIEN      | BERGEN       |
        | IMPACT ALADDIN              | VIVIEN      | BERGEN       |
        | ITALIAN AFRICAN             | VIVIEN      | BERGEN       |
        | JAPANESE RUN                | VIVIEN      | BERGEN       |
        | KENTUCKIAN GIANT            | VIVIEN      | BERGEN       |
        | LOVELY JINGLE               | VIVIEN      | BERGEN       |
        | LOVER TRUMAN                | VIVIEN      | BERGEN       |
        | MUSSOLINI SPOILERS          | VIVIEN      | BERGEN       |
        | POLISH BROOKLYN             | VIVIEN      | BERGEN       |
        | SALUTE APOLLO               | VIVIEN      | BERGEN       |
        | SATURDAY LAMBS              | VIVIEN      | BERGEN       |
        | STOCK GLASS                 | VIVIEN      | BERGEN       |
        | STREETCAR INTENTIONS        | VIVIEN      | BERGEN       |
        | TIGHTS DAWN                 | VIVIEN      | BERGEN       |
        | TRAP GUYS                   | VIVIEN      | BERGEN       |
        | TYCOON GATHERING            | VIVIEN      | BERGEN       |
        | VOICE PEACH                 | VIVIEN      | BERGEN       |
        | WESTWARD SEABISCUIT         | VIVIEN      | BERGEN       |
        | APACHE DIVINE               | CUBA        | OLIVIER      |
        | BORROWERS BEDAZZLED         | CUBA        | OLIVIER      |
        | BOUND CHEAPER               | CUBA        | OLIVIER      |
        | BUTCH PANTHER               | CUBA        | OLIVIER      |
        | CASSIDY WYOMING             | CUBA        | OLIVIER      |
        | DIVINE RESURRECTION         | CUBA        | OLIVIER      |
        | EGYPT TENENBAUMS            | CUBA        | OLIVIER      |
        | EMPIRE MALKOVICH            | CUBA        | OLIVIER      |
        | FLYING HOOK                 | CUBA        | OLIVIER      |
        | FUGITIVE MAGUIRE            | CUBA        | OLIVIER      |
        | HELLFIGHTERS SIERRA         | CUBA        | OLIVIER      |
        | HYDE DOCTOR                 | CUBA        | OLIVIER      |
        | KISS GLORY                  | CUBA        | OLIVIER      |
        | KNOCK WARLOCK               | CUBA        | OLIVIER      |
        | LUKE MUMMY                  | CUBA        | OLIVIER      |
        | MAKER GABLES                | CUBA        | OLIVIER      |
        | MONTEZUMA COMMAND           | CUBA        | OLIVIER      |
        | NOON PAPI                   | CUBA        | OLIVIER      |
        | OKLAHOMA JUMANJI            | CUBA        | OLIVIER      |
        | ROSES TREASURE              | CUBA        | OLIVIER      |
        | SHANE DARKNESS              | CUBA        | OLIVIER      |
        | SIEGE MADRE                 | CUBA        | OLIVIER      |
        | SOLDIERS EVOLUTION          | CUBA        | OLIVIER      |
        | THEORY MERMAID              | CUBA        | OLIVIER      |
        | UNFORGIVEN ZOOLANDER        | CUBA        | OLIVIER      |
        | VOLCANO TEXAS               | CUBA        | OLIVIER      |
        | WEREWOLF LOLA               | CUBA        | OLIVIER      |
        | WONDERLAND CHRISTMAS        | CUBA        | OLIVIER      |
        | BLANKET BEVERLY             | FRED        | COSTNER      |
        | BOONDOCK BALLROOM           | FRED        | COSTNER      |
        | BROTHERHOOD BLANKET         | FRED        | COSTNER      |
        | CAROL TEXAS                 | FRED        | COSTNER      |
        | CLEOPATRA DEVIL             | FRED        | COSTNER      |
        | CONNECTICUT TRAMP           | FRED        | COSTNER      |
        | DECEIVER BETRAYED           | FRED        | COSTNER      |
        | DELIVERANCE MULHOLLAND      | FRED        | COSTNER      |
        | EAGLES PANKY                | FRED        | COSTNER      |
        | EARRING INSTINCT            | FRED        | COSTNER      |
        | EASY GLADIATOR              | FRED        | COSTNER      |
        | EMPIRE MALKOVICH            | FRED        | COSTNER      |
        | ENTRAPMENT SATISFACTION     | FRED        | COSTNER      |
        | GABLES METROPOLIS           | FRED        | COSTNER      |
        | HUMAN GRAFFITI              | FRED        | COSTNER      |
        | IMAGE PRINCESS              | FRED        | COSTNER      |
        | IMPOSSIBLE PREJUDICE        | FRED        | COSTNER      |
        | INCH JET                    | FRED        | COSTNER      |
        | KRAMER CHOCOLATE            | FRED        | COSTNER      |
        | MAGNIFICENT CHITTY          | FRED        | COSTNER      |
        | MIRACLE VIRTUAL             | FRED        | COSTNER      |
        | MISSION ZOOLANDER           | FRED        | COSTNER      |
        | REAR TRADING                | FRED        | COSTNER      |
        | SAINTS BRIDE                | FRED        | COSTNER      |
        | SENSE GREEK                 | FRED        | COSTNER      |
        | THEORY MERMAID              | FRED        | COSTNER      |
        | WEEKEND PERSONAL            | FRED        | COSTNER      |
        | BREAKING HOME               | HELEN       | VOIGHT       |
        | CAPER MOTIONS               | HELEN       | VOIGHT       |
        | CASPER DRAGONFLY            | HELEN       | VOIGHT       |
        | CAT CONEHEADS               | HELEN       | VOIGHT       |
        | CLASH FREDDY                | HELEN       | VOIGHT       |
        | CUPBOARD SINNERS            | HELEN       | VOIGHT       |
        | CYCLONE FAMILY              | HELEN       | VOIGHT       |
        | DIVINE RESURRECTION         | HELEN       | VOIGHT       |
        | EMPIRE MALKOVICH            | HELEN       | VOIGHT       |
        | FEVER EMPIRE                | HELEN       | VOIGHT       |
        | FIDELITY DEVIL              | HELEN       | VOIGHT       |
        | GREATEST NORTH              | HELEN       | VOIGHT       |
        | INDEPENDENCE HOTEL          | HELEN       | VOIGHT       |
        | IRON MOON                   | HELEN       | VOIGHT       |
        | JAWS HARRY                  | HELEN       | VOIGHT       |
        | KISS GLORY                  | HELEN       | VOIGHT       |
        | LEGALLY SECRETARY           | HELEN       | VOIGHT       |
        | LIES TREATMENT              | HELEN       | VOIGHT       |
        | MICROCOSMOS PARADISE        | HELEN       | VOIGHT       |
        | MOVIE SHAKESPEARE           | HELEN       | VOIGHT       |
        | MUMMY CREATURES             | HELEN       | VOIGHT       |
        | ROAD ROXANNE                | HELEN       | VOIGHT       |
        | SCISSORHANDS SLUMS          | HELEN       | VOIGHT       |
        | SIDE ARK                    | HELEN       | VOIGHT       |
        | SINNERS ATLANTIS            | HELEN       | VOIGHT       |
        | STRANGER STRANGERS          | HELEN       | VOIGHT       |
        | SWEETHEARTS SUSPECTS        | HELEN       | VOIGHT       |
        | TADPOLE PARK                | HELEN       | VOIGHT       |
        | TELEMARK HEARTBREAKERS      | HELEN       | VOIGHT       |
        | VOICE PEACH                 | HELEN       | VOIGHT       |
        | WAR NOTTING                 | HELEN       | VOIGHT       |
        | WARLOCK WEREWOLF            | HELEN       | VOIGHT       |
        | ATTACKS HATE                | DAN         | TORN         |
        | BOILED DARES                | DAN         | TORN         |
        | CHINATOWN GLADIATOR         | DAN         | TORN         |
        | CONEHEADS SMOOCHY           | DAN         | TORN         |
        | EARLY HOME                  | DAN         | TORN         |
        | ELIZABETH SHANE             | DAN         | TORN         |
        | EMPIRE MALKOVICH            | DAN         | TORN         |
        | FLASH WARS                  | DAN         | TORN         |
        | GUMP DATE                   | DAN         | TORN         |
        | INNOCENT USUAL              | DAN         | TORN         |
        | INSIDER ARIZONA             | DAN         | TORN         |
        | JERK PAYCHECK               | DAN         | TORN         |
        | LOVELY JINGLE               | DAN         | TORN         |
        | MASK PEACH                  | DAN         | TORN         |
        | MUSSOLINI SPOILERS          | DAN         | TORN         |
        | REAR TRADING                | DAN         | TORN         |
        | SLING LUKE                  | DAN         | TORN         |
        | STATE WASTELAND             | DAN         | TORN         |
        | SUN CONFESSIONS             | DAN         | TORN         |
        | TEQUILA PAST                | DAN         | TORN         |
        | TUXEDO MILE                 | DAN         | TORN         |
        | VIRGIN DAISY                | DAN         | TORN         |
        | ACE GOLDFINGER              | BOB         | FAWCETT      |
        | ADAPTATION HOLES            | BOB         | FAWCETT      |
        | CHINATOWN GLADIATOR         | BOB         | FAWCETT      |
        | CIRCUS YOUTH                | BOB         | FAWCETT      |
        | CONTROL ANTHEM              | BOB         | FAWCETT      |
        | DARES PLUTO                 | BOB         | FAWCETT      |
        | DARN FORRESTER              | BOB         | FAWCETT      |
        | DAZED PUNK                  | BOB         | FAWCETT      |
        | DYNAMITE TARZAN             | BOB         | FAWCETT      |
        | HATE HANDICAP               | BOB         | FAWCETT      |
        | HOMICIDE PEACH              | BOB         | FAWCETT      |
        | JACKET FRISCO               | BOB         | FAWCETT      |
        | JUMANJI BLADE               | BOB         | FAWCETT      |
        | LAWLESS VISION              | BOB         | FAWCETT      |
        | LEATHERNECKS DWARFS         | BOB         | FAWCETT      |
        | OSCAR GOLD                  | BOB         | FAWCETT      |
        | PELICAN COMFORTS            | BOB         | FAWCETT      |
        | PERSONAL LADYBUGS           | BOB         | FAWCETT      |
        | RAGING AIRPLANE             | BOB         | FAWCETT      |
        | RUN PACIFIC                 | BOB         | FAWCETT      |
        | RUNNER MADIGAN              | BOB         | FAWCETT      |
        | SADDLE ANTITRUST            | BOB         | FAWCETT      |
        | SCORPION APOLLO             | BOB         | FAWCETT      |
        | SHAWSHANK BUBBLE            | BOB         | FAWCETT      |
        | TAXI KICK                   | BOB         | FAWCETT      |
        | ACADEMY DINOSAUR            | LUCILLE     | TRACY        |
        | BANGER PINOCCHIO            | LUCILLE     | TRACY        |
        | BEDAZZLED MARRIED           | LUCILLE     | TRACY        |
        | CHEAPER CLYDE               | LUCILLE     | TRACY        |
        | CHITTY LOCK                 | LUCILLE     | TRACY        |
        | COLDBLOODED DARLING         | LUCILLE     | TRACY        |
        | DINOSAUR SECRETARY          | LUCILLE     | TRACY        |
        | DOORS PRESIDENT             | LUCILLE     | TRACY        |
        | EARRING INSTINCT            | LUCILLE     | TRACY        |
        | EGG IGBY                    | LUCILLE     | TRACY        |
        | GANDHI KWAI                 | LUCILLE     | TRACY        |
        | GOLDFINGER SENSIBILITY      | LUCILLE     | TRACY        |
        | HYDE DOCTOR                 | LUCILLE     | TRACY        |
        | JAWS HARRY                  | LUCILLE     | TRACY        |
        | JUNGLE CLOSER               | LUCILLE     | TRACY        |
        | KING EVOLUTION              | LUCILLE     | TRACY        |
        | LOLA AGENT                  | LUCILLE     | TRACY        |
        | LOSE INCH                   | LUCILLE     | TRACY        |
        | LOVERBOY ATTACKS            | LUCILLE     | TRACY        |
        | MODERN DORADO               | LUCILLE     | TRACY        |
        | ORIENT CLOSER               | LUCILLE     | TRACY        |
        | PAJAMA JAWBREAKER           | LUCILLE     | TRACY        |
        | PATIENT SISTER              | LUCILLE     | TRACY        |
        | RANDOM GO                   | LUCILLE     | TRACY        |
        | REAR TRADING                | LUCILLE     | TRACY        |
        | SAGEBRUSH CLUELESS          | LUCILLE     | TRACY        |
        | SHANGHAI TYCOON             | LUCILLE     | TRACY        |
        | SUN CONFESSIONS             | LUCILLE     | TRACY        |
        | WASTELAND DIVINE            | LUCILLE     | TRACY        |
        | WINDOW SIDE                 | LUCILLE     | TRACY        |
        | AGENT TRUMAN                | KIRSTEN     | PALTROW      |
        | BOONDOCK BALLROOM           | KIRSTEN     | PALTROW      |
        | BORN SPINAL                 | KIRSTEN     | PALTROW      |
        | CHICKEN HELLFIGHTERS        | KIRSTEN     | PALTROW      |
        | CLOSER BANG                 | KIRSTEN     | PALTROW      |
        | CONQUERER NUTS              | KIRSTEN     | PALTROW      |
        | DRIFTER COMMANDMENTS        | KIRSTEN     | PALTROW      |
        | ENCINO ELF                  | KIRSTEN     | PALTROW      |
        | FLASH WARS                  | KIRSTEN     | PALTROW      |
        | HANOVER GALAXY              | KIRSTEN     | PALTROW      |
        | HOME PITY                   | KIRSTEN     | PALTROW      |
        | HONEY TIES                  | KIRSTEN     | PALTROW      |
        | KILL BROTHERHOOD            | KIRSTEN     | PALTROW      |
        | LADYBUGS ARMAGEDDON         | KIRSTEN     | PALTROW      |
        | LORD ARIZONA                | KIRSTEN     | PALTROW      |
        | PINOCCHIO SIMON             | KIRSTEN     | PALTROW      |
        | PLUTO OLEANDER              | KIRSTEN     | PALTROW      |
        | PRIX UNDEFEATED             | KIRSTEN     | PALTROW      |
        | PULP BEVERLY                | KIRSTEN     | PALTROW      |
        | RIVER OUTLAW                | KIRSTEN     | PALTROW      |
        | ROAD ROXANNE                | KIRSTEN     | PALTROW      |
        | SILVERADO GOLDFINGER        | KIRSTEN     | PALTROW      |
        | SLEEPING SUSPECTS           | KIRSTEN     | PALTROW      |
        | THIEF PELICAN               | KIRSTEN     | PALTROW      |
        | TITANS JERK                 | KIRSTEN     | PALTROW      |
        | UNBREAKABLE KARATE          | KIRSTEN     | PALTROW      |
        | WON DARES                   | KIRSTEN     | PALTROW      |
        | ALABAMA DEVIL               | ELVIS       | MARX         |
        | ANACONDA CONFESSIONS        | ELVIS       | MARX         |
        | BAREFOOT MANCHURIAN         | ELVIS       | MARX         |
        | BORROWERS BEDAZZLED         | ELVIS       | MARX         |
        | CADDYSHACK JEDI             | ELVIS       | MARX         |
        | CHITTY LOCK                 | ELVIS       | MARX         |
        | EVOLUTION ALTER             | ELVIS       | MARX         |
        | EXPECATIONS NATURAL         | ELVIS       | MARX         |
        | GANGS PRIDE                 | ELVIS       | MARX         |
        | GOODFELLAS SALUTE           | ELVIS       | MARX         |
        | HOBBIT ALIEN                | ELVIS       | MARX         |
        | HOOK CHARIOTS               | ELVIS       | MARX         |
        | JERICHO MULAN               | ELVIS       | MARX         |
        | JUMPING WRATH               | ELVIS       | MARX         |
        | KENTUCKIAN GIANT            | ELVIS       | MARX         |
        | LOVELY JINGLE               | ELVIS       | MARX         |
        | MOTIONS DETAILS             | ELVIS       | MARX         |
        | ODDS BOOGIE                 | ELVIS       | MARX         |
        | OUTLAW HANKY                | ELVIS       | MARX         |
        | POLISH BROOKLYN             | ELVIS       | MARX         |
        | RIGHT CRANES                | ELVIS       | MARX         |
        | ROOF CHAMPION               | ELVIS       | MARX         |
        | SEATTLE EXPECATIONS         | ELVIS       | MARX         |
        | SKY MIRACLE                 | ELVIS       | MARX         |
        | TROJAN TOMORROW             | ELVIS       | MARX         |
        | WATERFRONT DELIVERANCE      | ELVIS       | MARX         |
        | AGENT TRUMAN                | SANDRA      | KILMER       |
        | ARTIST COLDBLOODED          | SANDRA      | KILMER       |
        | BLACKOUT PRIVATE            | SANDRA      | KILMER       |
        | BULL SHAWSHANK              | SANDRA      | KILMER       |
        | CANDIDATE PERDITION         | SANDRA      | KILMER       |
        | CANDLES GRAPES              | SANDRA      | KILMER       |
        | CASSIDY WYOMING             | SANDRA      | KILMER       |
        | DARN FORRESTER              | SANDRA      | KILMER       |
        | DESTINY SATURDAY            | SANDRA      | KILMER       |
        | DIVIDE MONSTER              | SANDRA      | KILMER       |
        | DRIVER ANNIE                | SANDRA      | KILMER       |
        | GOLDMINE TYCOON             | SANDRA      | KILMER       |
        | GORGEOUS BINGO              | SANDRA      | KILMER       |
        | HELLFIGHTERS SIERRA         | SANDRA      | KILMER       |
        | HOCUS FRIDA                 | SANDRA      | KILMER       |
        | HOTEL HAPPINESS             | SANDRA      | KILMER       |
        | IDENTITY LOVER              | SANDRA      | KILMER       |
        | JUMPING WRATH               | SANDRA      | KILMER       |
        | LOVELY JINGLE               | SANDRA      | KILMER       |
        | MAGNOLIA FORRESTER          | SANDRA      | KILMER       |
        | OLEANDER CLUE               | SANDRA      | KILMER       |
        | OZ LIAISONS                 | SANDRA      | KILMER       |
        | PERSONAL LADYBUGS           | SANDRA      | KILMER       |
        | POSEIDON FOREVER            | SANDRA      | KILMER       |
        | SAVANNAH TOWN               | SANDRA      | KILMER       |
        | SHAKESPEARE SADDLE          | SANDRA      | KILMER       |
        | SLEEPING SUSPECTS           | SANDRA      | KILMER       |
        | SONS INTERVIEW              | SANDRA      | KILMER       |
        | SPEED SUIT                  | SANDRA      | KILMER       |
        | SPLENDOR PATTON             | SANDRA      | KILMER       |
        | STATE WASTELAND             | SANDRA      | KILMER       |
        | STRANGER STRANGERS          | SANDRA      | KILMER       |
        | STREAK RIDGEMONT            | SANDRA      | KILMER       |
        | STREETCAR INTENTIONS        | SANDRA      | KILMER       |
        | VANISHED GARDEN             | SANDRA      | KILMER       |
        | WOLVES DESIRE               | SANDRA      | KILMER       |
        | YOUTH KICK                  | SANDRA      | KILMER       |
        | ADAPTATION HOLES            | CAMERON     | STREEP       |
        | BLUES INSTINCT              | CAMERON     | STREEP       |
        | CALENDAR GUNFIGHT           | CAMERON     | STREEP       |
        | CASUALTIES ENCINO           | CAMERON     | STREEP       |
        | CHOCOLATE DUCK              | CAMERON     | STREEP       |
        | COAST RAINBOW               | CAMERON     | STREEP       |
        | CONNECTION MICROCOSMOS      | CAMERON     | STREEP       |
        | CROW GREASE                 | CAMERON     | STREEP       |
        | CUPBOARD SINNERS            | CAMERON     | STREEP       |
        | DOOM DANCING                | CAMERON     | STREEP       |
        | DROP WATERFRONT             | CAMERON     | STREEP       |
        | ELEPHANT TROJAN             | CAMERON     | STREEP       |
        | FREEDOM CLEOPATRA           | CAMERON     | STREEP       |
        | HAUNTED ANTITRUST           | CAMERON     | STREEP       |
        | INSTINCT AIRPORT            | CAMERON     | STREEP       |
        | LEGALLY SECRETARY           | CAMERON     | STREEP       |
        | MOB DUFFEL                  | CAMERON     | STREEP       |
        | MOVIE SHAKESPEARE           | CAMERON     | STREEP       |
        | PANIC CLUB                  | CAMERON     | STREEP       |
        | PURE RUNNER                 | CAMERON     | STREEP       |
        | SEVEN SWARM                 | CAMERON     | STREEP       |
        | SPINAL ROCKY                | CAMERON     | STREEP       |
        | SPLASH GUMP                 | CAMERON     | STREEP       |
        | WEST LION                   | CAMERON     | STREEP       |
        | AMERICAN CIRCUS             | KEVIN       | BLOOM        |
        | BOOGIE AMELIE               | KEVIN       | BLOOM        |
        | CITIZEN SHREK               | KEVIN       | BLOOM        |
        | CONQUERER NUTS              | KEVIN       | BLOOM        |
        | DALMATIONS SWEDEN           | KEVIN       | BLOOM        |
        | DATE SPEED                  | KEVIN       | BLOOM        |
        | DESTINY SATURDAY            | KEVIN       | BLOOM        |
        | DOUBLE WRATH                | KEVIN       | BLOOM        |
        | FICTION CHRISTMAS           | KEVIN       | BLOOM        |
        | HATE HANDICAP               | KEVIN       | BLOOM        |
        | HEAVENLY GUN                | KEVIN       | BLOOM        |
        | HOLES BRANNIGAN             | KEVIN       | BLOOM        |
        | LOVERBOY ATTACKS            | KEVIN       | BLOOM        |
        | MASSAGE IMAGE               | KEVIN       | BLOOM        |
        | MISSION ZOOLANDER           | KEVIN       | BLOOM        |
        | MUMMY CREATURES             | KEVIN       | BLOOM        |
        | POLISH BROOKLYN             | KEVIN       | BLOOM        |
        | PRIMARY GLASS               | KEVIN       | BLOOM        |
        | SABRINA MIDNIGHT            | KEVIN       | BLOOM        |
        | SWEDEN SHINING              | KEVIN       | BLOOM        |
        | TROUBLE DATE                | KEVIN       | BLOOM        |
        | ALABAMA DEVIL               | RIP         | CRAWFORD     |
        | AMERICAN CIRCUS             | RIP         | CRAWFORD     |
        | ARABIA DOGMA                | RIP         | CRAWFORD     |
        | BOULEVARD MOB               | RIP         | CRAWFORD     |
        | BRANNIGAN SUNRISE           | RIP         | CRAWFORD     |
        | BUCKET BROTHERHOOD          | RIP         | CRAWFORD     |
        | CHOCOLAT HARRY              | RIP         | CRAWFORD     |
        | CRAFT OUTFIELD              | RIP         | CRAWFORD     |
        | CYCLONE FAMILY              | RIP         | CRAWFORD     |
        | DESTINATION JERK            | RIP         | CRAWFORD     |
        | DONNIE ALLEY                | RIP         | CRAWFORD     |
        | FOOL MOCKINGBIRD            | RIP         | CRAWFORD     |
        | FORREST SONS                | RIP         | CRAWFORD     |
        | FRONTIER CABIN              | RIP         | CRAWFORD     |
        | GABLES METROPOLIS           | RIP         | CRAWFORD     |
        | GUYS FALCON                 | RIP         | CRAWFORD     |
        | HALL CASSIDY                | RIP         | CRAWFORD     |
        | LONELY ELEPHANT             | RIP         | CRAWFORD     |
        | MADISON TRAP                | RIP         | CRAWFORD     |
        | MASSAGE IMAGE               | RIP         | CRAWFORD     |
        | OKLAHOMA JUMANJI            | RIP         | CRAWFORD     |
        | OSCAR GOLD                  | RIP         | CRAWFORD     |
        | PITTSBURGH HUNCHBACK        | RIP         | CRAWFORD     |
        | POLISH BROOKLYN             | RIP         | CRAWFORD     |
        | RANGE MOONWALKER            | RIP         | CRAWFORD     |
        | RINGS HEARTBREAKERS         | RIP         | CRAWFORD     |
        | SAINTS BRIDE                | RIP         | CRAWFORD     |
        | SATURDAY LAMBS              | RIP         | CRAWFORD     |
        | SIEGE MADRE                 | RIP         | CRAWFORD     |
        | SORORITY QUEEN              | RIP         | CRAWFORD     |
        | TEXAS WATCH                 | RIP         | CRAWFORD     |
        | TRAIN BUNCH                 | RIP         | CRAWFORD     |
        | TRAMP OTHERS                | RIP         | CRAWFORD     |
        | AMADEUS HOLY                | JULIA       | MCQUEEN      |
        | ARABIA DOGMA                | JULIA       | MCQUEEN      |
        | BONNIE HOLOCAUST            | JULIA       | MCQUEEN      |
        | CIDER DESIRE                | JULIA       | MCQUEEN      |
        | CONEHEADS SMOOCHY           | JULIA       | MCQUEEN      |
        | EFFECT GLADIATOR            | JULIA       | MCQUEEN      |
        | FREDDY STORM                | JULIA       | MCQUEEN      |
        | GAMES BOWFINGER             | JULIA       | MCQUEEN      |
        | GLADIATOR WESTWARD          | JULIA       | MCQUEEN      |
        | HANOVER GALAXY              | JULIA       | MCQUEEN      |
        | HIGH ENCINO                 | JULIA       | MCQUEEN      |
        | INSIDER ARIZONA             | JULIA       | MCQUEEN      |
        | JAWBREAKER BROOKLYN         | JULIA       | MCQUEEN      |
        | KISS GLORY                  | JULIA       | MCQUEEN      |
        | KRAMER CHOCOLATE            | JULIA       | MCQUEEN      |
        | LUCKY FLYING                | JULIA       | MCQUEEN      |
        | MOCKINGBIRD HOLLYWOOD       | JULIA       | MCQUEEN      |
        | MONTEREY LABYRINTH          | JULIA       | MCQUEEN      |
        | OPEN AFRICAN                | JULIA       | MCQUEEN      |
        | PILOT HOOSIERS              | JULIA       | MCQUEEN      |
        | PITTSBURGH HUNCHBACK        | JULIA       | MCQUEEN      |
        | PRESIDENT BANG              | JULIA       | MCQUEEN      |
        | SCORPION APOLLO             | JULIA       | MCQUEEN      |
        | SLEEPLESS MONSOON           | JULIA       | MCQUEEN      |
        | SPIRIT FLINTSTONES          | JULIA       | MCQUEEN      |
        | STRANGERS GRAFFITI          | JULIA       | MCQUEEN      |
        | SWEETHEARTS SUSPECTS        | JULIA       | MCQUEEN      |
        | TELEMARK HEARTBREAKERS      | JULIA       | MCQUEEN      |
        | TIES HUNGER                 | JULIA       | MCQUEEN      |
        | TRAIN BUNCH                 | JULIA       | MCQUEEN      |
        | WEEKEND PERSONAL            | JULIA       | MCQUEEN      |
        | WONKA SEA                   | JULIA       | MCQUEEN      |
        | YOUNG LANGUAGE              | JULIA       | MCQUEEN      |
        | ALICE FANTASIA              | WOODY       | HOFFMAN      |
        | ATLANTIS CAUSE              | WOODY       | HOFFMAN      |
        | BEACH HEARTBREAKERS         | WOODY       | HOFFMAN      |
        | BIRCH ANTITRUST             | WOODY       | HOFFMAN      |
        | BREAKING HOME               | WOODY       | HOFFMAN      |
        | BUNCH MINDS                 | WOODY       | HOFFMAN      |
        | DUCK RACER                  | WOODY       | HOFFMAN      |
        | DURHAM PANKY                | WOODY       | HOFFMAN      |
        | ENTRAPMENT SATISFACTION     | WOODY       | HOFFMAN      |
        | GILMORE BOILED              | WOODY       | HOFFMAN      |
        | KNOCK WARLOCK               | WOODY       | HOFFMAN      |
        | LAMBS CINCINATTI            | WOODY       | HOFFMAN      |
        | LOSER HUSTLER               | WOODY       | HOFFMAN      |
        | MAIDEN HOME                 | WOODY       | HOFFMAN      |
        | MIDNIGHT WESTWARD           | WOODY       | HOFFMAN      |
        | MOONWALKER FOOL             | WOODY       | HOFFMAN      |
        | NEIGHBORS CHARADE           | WOODY       | HOFFMAN      |
        | NONE SPIKING                | WOODY       | HOFFMAN      |
        | PAJAMA JAWBREAKER           | WOODY       | HOFFMAN      |
        | PILOT HOOSIERS              | WOODY       | HOFFMAN      |
        | ROOM ROMAN                  | WOODY       | HOFFMAN      |
        | SHOOTIST SUPERFLY           | WOODY       | HOFFMAN      |
        | SHRUNK DIVINE               | WOODY       | HOFFMAN      |
        | SNOWMAN ROLLERCOASTER       | WOODY       | HOFFMAN      |
        | SPICE SORORITY              | WOODY       | HOFFMAN      |
        | SPY MILE                    | WOODY       | HOFFMAN      |
        | TELEGRAPH VOYAGE            | WOODY       | HOFFMAN      |
        | TRAP GUYS                   | WOODY       | HOFFMAN      |
        | WAIT CIDER                  | WOODY       | HOFFMAN      |
        | WIFE TURN                   | WOODY       | HOFFMAN      |
        | WYOMING STORM               | WOODY       | HOFFMAN      |
        | ALADDIN CALENDAR            | ALEC        | WAYNE        |
        | BLADE POLISH                | ALEC        | WAYNE        |
        | BULL SHAWSHANK              | ALEC        | WAYNE        |
        | CABIN FLASH                 | ALEC        | WAYNE        |
        | CENTER DINOSAUR             | ALEC        | WAYNE        |
        | CHAMBER ITALIAN             | ALEC        | WAYNE        |
        | CONEHEADS SMOOCHY           | ALEC        | WAYNE        |
        | DESTINY SATURDAY            | ALEC        | WAYNE        |
        | EFFECT GLADIATOR            | ALEC        | WAYNE        |
        | ENCOUNTERS CURTAIN          | ALEC        | WAYNE        |
        | EXPRESS LONELY              | ALEC        | WAYNE        |
        | FICTION CHRISTMAS           | ALEC        | WAYNE        |
        | FREEDOM CLEOPATRA           | ALEC        | WAYNE        |
        | FUGITIVE MAGUIRE            | ALEC        | WAYNE        |
        | HOURS RAGE                  | ALEC        | WAYNE        |
        | HUSTLER PARTY               | ALEC        | WAYNE        |
        | IDENTITY LOVER              | ALEC        | WAYNE        |
        | INSIDER ARIZONA             | ALEC        | WAYNE        |
        | JEOPARDY ENCINO             | ALEC        | WAYNE        |
        | JOON NORTHWEST              | ALEC        | WAYNE        |
        | LIBERTY MAGNIFICENT         | ALEC        | WAYNE        |
        | MAGIC MALLRATS              | ALEC        | WAYNE        |
        | MONEY HAROLD                | ALEC        | WAYNE        |
        | OUTBREAK DIVINE             | ALEC        | WAYNE        |
        | REIGN GENTLEMEN             | ALEC        | WAYNE        |
        | SMOKING BARBARELLA          | ALEC        | WAYNE        |
        | SUMMER SCARFACE             | ALEC        | WAYNE        |
        | UPTOWN YOUNG                | ALEC        | WAYNE        |
        | VIRGIN DAISY                | ALEC        | WAYNE        |
        | ACADEMY DINOSAUR            | SANDRA      | PECK         |
        | BANG KWAI                   | SANDRA      | PECK         |
        | BEETHOVEN EXORCIST          | SANDRA      | PECK         |
        | BEVERLY OUTLAW              | SANDRA      | PECK         |
        | BIRDS PERDITION             | SANDRA      | PECK         |
        | BOONDOCK BALLROOM           | SANDRA      | PECK         |
        | DUDE BLINDNESS              | SANDRA      | PECK         |
        | DUMBO LUST                  | SANDRA      | PECK         |
        | ENOUGH RAGING               | SANDRA      | PECK         |
        | EXCITEMENT EVE              | SANDRA      | PECK         |
        | FAMILY SWEET                | SANDRA      | PECK         |
        | FIREHOUSE VIETNAM           | SANDRA      | PECK         |
        | FLASH WARS                  | SANDRA      | PECK         |
        | GILBERT PELICAN             | SANDRA      | PECK         |
        | MATRIX SNOWMAN              | SANDRA      | PECK         |
        | RINGS HEARTBREAKERS         | SANDRA      | PECK         |
        | SILENCE KANE                | SANDRA      | PECK         |
        | STAGECOACH ARMAGEDDON       | SANDRA      | PECK         |
        | VIRGINIAN PLUTO             | SANDRA      | PECK         |
        | BORN SPINAL                 | SISSY       | SOBIESKI     |
        | CHITTY LOCK                 | SISSY       | SOBIESKI     |
        | CLYDE THEORY                | SISSY       | SOBIESKI     |
        | COAST RAINBOW               | SISSY       | SOBIESKI     |
        | CRAZY HOME                  | SISSY       | SOBIESKI     |
        | FACTORY DRAGON              | SISSY       | SOBIESKI     |
        | FERRIS MOTHER               | SISSY       | SOBIESKI     |
        | GONE TROUBLE                | SISSY       | SOBIESKI     |
        | GREEK EVERYONE              | SISSY       | SOBIESKI     |
        | HOOSIERS BIRDCAGE           | SISSY       | SOBIESKI     |
        | MOB DUFFEL                  | SISSY       | SOBIESKI     |
        | OPEN AFRICAN                | SISSY       | SOBIESKI     |
        | PRIX UNDEFEATED             | SISSY       | SOBIESKI     |
        | ROCKY WAR                   | SISSY       | SOBIESKI     |
        | SHRUNK DIVINE               | SISSY       | SOBIESKI     |
        | SKY MIRACLE                 | SISSY       | SOBIESKI     |
        | TELEMARK HEARTBREAKERS      | SISSY       | SOBIESKI     |
        | WISDOM WORKER               | SISSY       | SOBIESKI     |
        | BEHAVIOR RUNAWAY            | TIM         | HACKMAN      |
        | BOILED DARES                | TIM         | HACKMAN      |
        | BUCKET BROTHERHOOD          | TIM         | HACKMAN      |
        | CALENDAR GUNFIGHT           | TIM         | HACKMAN      |
        | CHAPLIN LICENSE             | TIM         | HACKMAN      |
        | CRUSADE HONEY               | TIM         | HACKMAN      |
        | CUPBOARD SINNERS            | TIM         | HACKMAN      |
        | DEEP CRUSADE                | TIM         | HACKMAN      |
        | FEUD FROGMEN                | TIM         | HACKMAN      |
        | FIDDLER LOST                | TIM         | HACKMAN      |
        | HAROLD FRENCH               | TIM         | HACKMAN      |
        | HOMEWARD CIDER              | TIM         | HACKMAN      |
        | HOOSIERS BIRDCAGE           | TIM         | HACKMAN      |
        | LIGHTS DEER                 | TIM         | HACKMAN      |
        | MEET CHOCOLATE              | TIM         | HACKMAN      |
        | MOB DUFFEL                  | TIM         | HACKMAN      |
        | MUMMY CREATURES             | TIM         | HACKMAN      |
        | PACKER MADIGAN              | TIM         | HACKMAN      |
        | PEACH INNOCENT              | TIM         | HACKMAN      |
        | PEARL DESTINY               | TIM         | HACKMAN      |
        | SNATCHERS MONTEZUMA         | TIM         | HACKMAN      |
        | UPTOWN YOUNG                | TIM         | HACKMAN      |
        | WIZARD COLDBLOODED          | TIM         | HACKMAN      |
        | BAREFOOT MANCHURIAN         | MILLA       | PECK         |
        | CALENDAR GUNFIGHT           | MILLA       | PECK         |
        | CHANCE RESURRECTION         | MILLA       | PECK         |
        | CLASH FREDDY                | MILLA       | PECK         |
        | DAUGHTER MADIGAN            | MILLA       | PECK         |
        | DREAM PICKUP                | MILLA       | PECK         |
        | FATAL HAUNTED               | MILLA       | PECK         |
        | FEATHERS METAL              | MILLA       | PECK         |
        | JACKET FRISCO               | MILLA       | PECK         |
        | JUGGLER HARDLY              | MILLA       | PECK         |
        | MIDNIGHT WESTWARD           | MILLA       | PECK         |
        | NECKLACE OUTBREAK           | MILLA       | PECK         |
        | PEACH INNOCENT              | MILLA       | PECK         |
        | PREJUDICE OLEANDER          | MILLA       | PECK         |
        | RAIDERS ANTITRUST           | MILLA       | PECK         |
        | ROBBERS JOON                | MILLA       | PECK         |
        | ROCK INSTINCT               | MILLA       | PECK         |
        | RUSHMORE MERMAID            | MILLA       | PECK         |
        | SEATTLE EXPECATIONS         | MILLA       | PECK         |
        | TEEN APOLLO                 | MILLA       | PECK         |
        | TEMPLE ATTRACTION           | MILLA       | PECK         |
        | WATERSHIP FRONTIER          | MILLA       | PECK         |
        | WHISPERER GIANT             | MILLA       | PECK         |
        | WRONG BEHAVIOR              | MILLA       | PECK         |
        | ATLANTIS CAUSE              | AUDREY      | OLIVIER      |
        | BOULEVARD MOB               | AUDREY      | OLIVIER      |
        | CAPER MOTIONS               | AUDREY      | OLIVIER      |
        | CASSIDY WYOMING             | AUDREY      | OLIVIER      |
        | CONEHEADS SMOOCHY           | AUDREY      | OLIVIER      |
        | CONTROL ANTHEM              | AUDREY      | OLIVIER      |
        | DORADO NOTTING              | AUDREY      | OLIVIER      |
        | FRENCH HOLIDAY              | AUDREY      | OLIVIER      |
        | GUNFIGHTER MUSSOLINI        | AUDREY      | OLIVIER      |
        | HALLOWEEN NUTS              | AUDREY      | OLIVIER      |
        | HUMAN GRAFFITI              | AUDREY      | OLIVIER      |
        | KANE EXORCIST               | AUDREY      | OLIVIER      |
        | KNOCK WARLOCK               | AUDREY      | OLIVIER      |
        | LOATHING LEGALLY            | AUDREY      | OLIVIER      |
        | PEAK FOREVER                | AUDREY      | OLIVIER      |
        | REDEMPTION COMFORTS         | AUDREY      | OLIVIER      |
        | SENSE GREEK                 | AUDREY      | OLIVIER      |
        | SHIP WONDERLAND             | AUDREY      | OLIVIER      |
        | SIDE ARK                    | AUDREY      | OLIVIER      |
        | SQUAD FISH                  | AUDREY      | OLIVIER      |
        | STING PERSONAL              | AUDREY      | OLIVIER      |
        | STRANGER STRANGERS          | AUDREY      | OLIVIER      |
        | USUAL UNTOUCHABLES          | AUDREY      | OLIVIER      |
        | VOLUME HOUSE                | AUDREY      | OLIVIER      |
        | WHALE BIKINI                | AUDREY      | OLIVIER      |
        | ALADDIN CALENDAR            | JUDY        | DEAN         |
        | ARACHNOPHOBIA ROLLERCOASTER | JUDY        | DEAN         |
        | BALLROOM MOCKINGBIRD        | JUDY        | DEAN         |
        | CYCLONE FAMILY              | JUDY        | DEAN         |
        | DROP WATERFRONT             | JUDY        | DEAN         |
        | GUNFIGHTER MUSSOLINI        | JUDY        | DEAN         |
        | MODERN DORADO               | JUDY        | DEAN         |
        | MUSSOLINI SPOILERS          | JUDY        | DEAN         |
        | NASH CHOCOLAT               | JUDY        | DEAN         |
        | QUEST MUSSOLINI             | JUDY        | DEAN         |
        | RINGS HEARTBREAKERS         | JUDY        | DEAN         |
        | ROCKETEER MOTHER            | JUDY        | DEAN         |
        | RUGRATS SHAKESPEARE         | JUDY        | DEAN         |
        | SOLDIERS EVOLUTION          | JUDY        | DEAN         |
        | TROUBLE DATE                | JUDY        | DEAN         |
        | ALIEN CENTER                | BURT        | DUKAKIS      |
        | BLINDNESS GUN               | BURT        | DUKAKIS      |
        | COMMANDMENTS EXPRESS        | BURT        | DUKAKIS      |
        | DINOSAUR SECRETARY          | BURT        | DUKAKIS      |
        | DOUBLE WRATH                | BURT        | DUKAKIS      |
        | ENDING CROWDS               | BURT        | DUKAKIS      |
        | GREEK EVERYONE              | BURT        | DUKAKIS      |
        | GRINCH MASSAGE              | BURT        | DUKAKIS      |
        | GUN BONNIE                  | BURT        | DUKAKIS      |
        | GUYS FALCON                 | BURT        | DUKAKIS      |
        | HEAVEN FREEDOM              | BURT        | DUKAKIS      |
        | HOME PITY                   | BURT        | DUKAKIS      |
        | HOMEWARD CIDER              | BURT        | DUKAKIS      |
        | IMAGE PRINCESS              | BURT        | DUKAKIS      |
        | INTOLERABLE INTENTIONS      | BURT        | DUKAKIS      |
        | JERK PAYCHECK               | BURT        | DUKAKIS      |
        | KANE EXORCIST               | BURT        | DUKAKIS      |
        | KING EVOLUTION              | BURT        | DUKAKIS      |
        | MENAGERIE RUSHMORE          | BURT        | DUKAKIS      |
        | MONEY HAROLD                | BURT        | DUKAKIS      |
        | MOTIONS DETAILS             | BURT        | DUKAKIS      |
        | RANDOM GO                   | BURT        | DUKAKIS      |
        | RANGE MOONWALKER            | BURT        | DUKAKIS      |
        | REAP UNFAITHFUL             | BURT        | DUKAKIS      |
        | RIGHT CRANES                | BURT        | DUKAKIS      |
        | TALENTED HOMICIDE           | BURT        | DUKAKIS      |
        | TRUMAN CRAZY                | BURT        | DUKAKIS      |
        | VALENTINE VANISHING         | BURT        | DUKAKIS      |
        | WANDA CHAMBER               | BURT        | DUKAKIS      |
        | ALADDIN CALENDAR            | VAL         | BOLGER       |
        | ALASKA PHANTOM              | VAL         | BOLGER       |
        | AMADEUS HOLY                | VAL         | BOLGER       |
        | CANYON STOCK                | VAL         | BOLGER       |
        | CAPER MOTIONS               | VAL         | BOLGER       |
        | CARRIE BUNCH                | VAL         | BOLGER       |
        | CHITTY LOCK                 | VAL         | BOLGER       |
        | DALMATIONS SWEDEN           | VAL         | BOLGER       |
        | DRIFTER COMMANDMENTS        | VAL         | BOLGER       |
        | DUDE BLINDNESS              | VAL         | BOLGER       |
        | ELEPHANT TROJAN             | VAL         | BOLGER       |
        | FIREBALL PHILADELPHIA       | VAL         | BOLGER       |
        | INTRIGUE WORST              | VAL         | BOLGER       |
        | JAWBREAKER BROOKLYN         | VAL         | BOLGER       |
        | JERSEY SASSY                | VAL         | BOLGER       |
        | LAMBS CINCINATTI            | VAL         | BOLGER       |
        | LONELY ELEPHANT             | VAL         | BOLGER       |
        | MAKER GABLES                | VAL         | BOLGER       |
        | MALLRATS UNITED             | VAL         | BOLGER       |
        | METROPOLIS COMA             | VAL         | BOLGER       |
        | MODEL FISH                  | VAL         | BOLGER       |
        | PATHS CONTROL               | VAL         | BOLGER       |
        | PATIENT SISTER              | VAL         | BOLGER       |
        | PREJUDICE OLEANDER          | VAL         | BOLGER       |
        | PRIMARY GLASS               | VAL         | BOLGER       |
        | SHAWSHANK BUBBLE            | VAL         | BOLGER       |
        | STALLION SUNDANCE           | VAL         | BOLGER       |
        | STAMPEDE DISTURBING         | VAL         | BOLGER       |
        | STRANGER STRANGERS          | VAL         | BOLGER       |
        | TOWN ARK                    | VAL         | BOLGER       |
        | UNITED PILOT                | VAL         | BOLGER       |
        | WATCH TRACY                 | VAL         | BOLGER       |
        | WEDDING APOLLO              | VAL         | BOLGER       |
        | WORKING MICROCOSMOS         | VAL         | BOLGER       |
        | YOUTH KICK                  | VAL         | BOLGER       |
        | ANALYZE HOOSIERS            | TOM         | MCKELLEN     |
        | CADDYSHACK JEDI             | TOM         | MCKELLEN     |
        | CLUB GRAFFITI               | TOM         | MCKELLEN     |
        | CONGENIALITY QUEST          | TOM         | MCKELLEN     |
        | DESIRE ALIEN                | TOM         | MCKELLEN     |
        | DONNIE ALLEY                | TOM         | MCKELLEN     |
        | EGG IGBY                    | TOM         | MCKELLEN     |
        | FREEDOM CLEOPATRA           | TOM         | MCKELLEN     |
        | FRISCO FORREST              | TOM         | MCKELLEN     |
        | GENTLEMEN STAGE             | TOM         | MCKELLEN     |
        | IDAHO LOVE                  | TOM         | MCKELLEN     |
        | IDOLS SNATCHERS             | TOM         | MCKELLEN     |
        | INDIAN LOVE                 | TOM         | MCKELLEN     |
        | KISSING DOLLS               | TOM         | MCKELLEN     |
        | LEGEND JEDI                 | TOM         | MCKELLEN     |
        | MAGIC MALLRATS              | TOM         | MCKELLEN     |
        | MISSION ZOOLANDER           | TOM         | MCKELLEN     |
        | NECKLACE OUTBREAK           | TOM         | MCKELLEN     |
        | NEIGHBORS CHARADE           | TOM         | MCKELLEN     |
        | PURPLE MOVIE                | TOM         | MCKELLEN     |
        | SHRUNK DIVINE               | TOM         | MCKELLEN     |
        | SPICE SORORITY              | TOM         | MCKELLEN     |
        | STALLION SUNDANCE           | TOM         | MCKELLEN     |
        | STRANGER STRANGERS          | TOM         | MCKELLEN     |
        | TARZAN VIDEOTAPE            | TOM         | MCKELLEN     |
        | BILKO ANONYMOUS             | GOLDIE      | BRODY        |
        | BINGO TALENTED              | GOLDIE      | BRODY        |
        | COMANCHEROS ENEMY           | GOLDIE      | BRODY        |
        | DAISY MENAGERIE             | GOLDIE      | BRODY        |
        | DESERT POSEIDON             | GOLDIE      | BRODY        |
        | EVERYONE CRAFT              | GOLDIE      | BRODY        |
        | EXORCIST STING              | GOLDIE      | BRODY        |
        | FLAMINGOS CONNECTICUT       | GOLDIE      | BRODY        |
        | HIGH ENCINO                 | GOLDIE      | BRODY        |
        | HOLY TADPOLE                | GOLDIE      | BRODY        |
        | HOOSIERS BIRDCAGE           | GOLDIE      | BRODY        |
        | INCH JET                    | GOLDIE      | BRODY        |
        | JASON TRAP                  | GOLDIE      | BRODY        |
        | MARRIED GO                  | GOLDIE      | BRODY        |
        | MOD SECRETARY               | GOLDIE      | BRODY        |
        | MOSQUITO ARMAGEDDON         | GOLDIE      | BRODY        |
        | MUMMY CREATURES             | GOLDIE      | BRODY        |
        | OUTLAW HANKY                | GOLDIE      | BRODY        |
        | PITY BOUND                  | GOLDIE      | BRODY        |
        | POLLOCK DELIVERANCE         | GOLDIE      | BRODY        |
        | PRIDE ALAMO                 | GOLDIE      | BRODY        |
        | PRIX UNDEFEATED             | GOLDIE      | BRODY        |
        | PUNK DIVORCE                | GOLDIE      | BRODY        |
        | ROBBERY BRIGHT              | GOLDIE      | BRODY        |
        | SEA VIRGIN                  | GOLDIE      | BRODY        |
        | SNATCHERS MONTEZUMA         | GOLDIE      | BRODY        |
        | SPIRITED CASUALTIES         | GOLDIE      | BRODY        |
        | UNBREAKABLE KARATE          | GOLDIE      | BRODY        |
        | ACADEMY DINOSAUR            | JOHNNY      | CAGE         |
        | ALAMO VIDEOTAPE             | JOHNNY      | CAGE         |
        | ARABIA DOGMA                | JOHNNY      | CAGE         |
        | BUNCH MINDS                 | JOHNNY      | CAGE         |
        | CATCH AMISTAD               | JOHNNY      | CAGE         |
        | CLYDE THEORY                | JOHNNY      | CAGE         |
        | CONNECTICUT TRAMP           | JOHNNY      | CAGE         |
        | DESIRE ALIEN                | JOHNNY      | CAGE         |
        | DISCIPLE MOTHER             | JOHNNY      | CAGE         |
        | FLYING HOOK                 | JOHNNY      | CAGE         |
        | GRAFFITI LOVE               | JOHNNY      | CAGE         |
        | HAMLET WISDOM               | JOHNNY      | CAGE         |
        | HANGING DEEP                | JOHNNY      | CAGE         |
        | INSTINCT AIRPORT            | JOHNNY      | CAGE         |
        | INTOLERABLE INTENTIONS      | JOHNNY      | CAGE         |
        | KARATE MOON                 | JOHNNY      | CAGE         |
        | LIES TREATMENT              | JOHNNY      | CAGE         |
        | REIGN GENTLEMEN             | JOHNNY      | CAGE         |
        | ROCK INSTINCT               | JOHNNY      | CAGE         |
        | ROOTS REMEMBER              | JOHNNY      | CAGE         |
        | ROXANNE REBEL               | JOHNNY      | CAGE         |
        | RUSHMORE MERMAID            | JOHNNY      | CAGE         |
        | SIMON NORTH                 | JOHNNY      | CAGE         |
        | SPY MILE                    | JOHNNY      | CAGE         |
        | SUPERFLY TRIP               | JOHNNY      | CAGE         |
        | SUSPECTS QUILLS             | JOHNNY      | CAGE         |
        | THIEF PELICAN               | JOHNNY      | CAGE         |
        | VAMPIRE WHALE               | JOHNNY      | CAGE         |
        | VELVET TERMINATOR           | JOHNNY      | CAGE         |
        | AFFAIR PREJUDICE            | JODIE       | DEGENERES    |
        | BEAST HUNCHBACK             | JODIE       | DEGENERES    |
        | BEVERLY OUTLAW              | JODIE       | DEGENERES    |
        | BOOGIE AMELIE               | JODIE       | DEGENERES    |
        | BROOKLYN DESERT             | JODIE       | DEGENERES    |
        | CIDER DESIRE                | JODIE       | DEGENERES    |
        | CLOSER BANG                 | JODIE       | DEGENERES    |
        | CROW GREASE                 | JODIE       | DEGENERES    |
        | DAISY MENAGERIE             | JODIE       | DEGENERES    |
        | DARN FORRESTER              | JODIE       | DEGENERES    |
        | DIARY PANIC                 | JODIE       | DEGENERES    |
        | DRACULA CRYSTAL             | JODIE       | DEGENERES    |
        | DREAM PICKUP                | JODIE       | DEGENERES    |
        | FATAL HAUNTED               | JODIE       | DEGENERES    |
        | FRENCH HOLIDAY              | JODIE       | DEGENERES    |
        | GROOVE FICTION              | JODIE       | DEGENERES    |
        | MADISON TRAP                | JODIE       | DEGENERES    |
        | MOONSHINE CABIN             | JODIE       | DEGENERES    |
        | PARADISE SABRINA            | JODIE       | DEGENERES    |
        | PET HAUNTING                | JODIE       | DEGENERES    |
        | PICKUP DRIVING              | JODIE       | DEGENERES    |
        | REDS POCUS                  | JODIE       | DEGENERES    |
        | REMEMBER DIARY              | JODIE       | DEGENERES    |
        | SENSE GREEK                 | JODIE       | DEGENERES    |
        | SHANGHAI TYCOON             | JODIE       | DEGENERES    |
        | SIMON NORTH                 | JODIE       | DEGENERES    |
        | TOMATOES HELLFIGHTERS       | JODIE       | DEGENERES    |
        | TROJAN TOMORROW             | JODIE       | DEGENERES    |
        | VIETNAM SMOOCHY             | JODIE       | DEGENERES    |
        | ANALYZE HOOSIERS            | TOM         | MIRANDA      |
        | CHASING FIGHT               | TOM         | MIRANDA      |
        | FEUD FROGMEN                | TOM         | MIRANDA      |
        | FLAMINGOS CONNECTICUT       | TOM         | MIRANDA      |
        | FREAKY POCUS                | TOM         | MIRANDA      |
        | KISS GLORY                  | TOM         | MIRANDA      |
        | KNOCK WARLOCK               | TOM         | MIRANDA      |
        | LABYRINTH LEAGUE            | TOM         | MIRANDA      |
        | LOLA AGENT                  | TOM         | MIRANDA      |
        | LOVE SUICIDES               | TOM         | MIRANDA      |
        | MADRE GABLES                | TOM         | MIRANDA      |
        | MEMENTO ZOOLANDER           | TOM         | MIRANDA      |
        | OUTLAW HANKY                | TOM         | MIRANDA      |
        | PATTON INTERVIEW            | TOM         | MIRANDA      |
        | PERSONAL LADYBUGS           | TOM         | MIRANDA      |
        | POCUS PULP                  | TOM         | MIRANDA      |
        | RAINBOW SHOCK               | TOM         | MIRANDA      |
        | ROCKETEER MOTHER            | TOM         | MIRANDA      |
        | SILVERADO GOLDFINGER        | TOM         | MIRANDA      |
        | SUIT WALLS                  | TOM         | MIRANDA      |
        | SUNRISE LEAGUE              | TOM         | MIRANDA      |
        | SUPER WYOMING               | TOM         | MIRANDA      |
        | TARZAN VIDEOTAPE            | TOM         | MIRANDA      |
        | TIGHTS DAWN                 | TOM         | MIRANDA      |
        | TRANSLATION SUMMER          | TOM         | MIRANDA      |
        | UNDEFEATED DALMATIONS       | TOM         | MIRANDA      |
        | VALLEY PACKER               | TOM         | MIRANDA      |
        | AMADEUS HOLY                | KIRK        | JOVOVICH     |
        | ARTIST COLDBLOODED          | KIRK        | JOVOVICH     |
        | BAREFOOT MANCHURIAN         | KIRK        | JOVOVICH     |
        | BORROWERS BEDAZZLED         | KIRK        | JOVOVICH     |
        | BULL SHAWSHANK              | KIRK        | JOVOVICH     |
        | CHOCOLAT HARRY              | KIRK        | JOVOVICH     |
        | CLUE GRAIL                  | KIRK        | JOVOVICH     |
        | CONSPIRACY SPIRIT           | KIRK        | JOVOVICH     |
        | DOGMA FAMILY                | KIRK        | JOVOVICH     |
        | ELEMENT FREDDY              | KIRK        | JOVOVICH     |
        | FORRESTER COMANCHEROS       | KIRK        | JOVOVICH     |
        | FURY MURDER                 | KIRK        | JOVOVICH     |
        | GLADIATOR WESTWARD          | KIRK        | JOVOVICH     |
        | GREASE YOUTH                | KIRK        | JOVOVICH     |
        | HEAVEN FREEDOM              | KIRK        | JOVOVICH     |
        | INSIDER ARIZONA             | KIRK        | JOVOVICH     |
        | LOST BIRD                   | KIRK        | JOVOVICH     |
        | MOSQUITO ARMAGEDDON         | KIRK        | JOVOVICH     |
        | MULHOLLAND BEAST            | KIRK        | JOVOVICH     |
        | MURDER ANTITRUST            | KIRK        | JOVOVICH     |
        | NETWORK PEAK                | KIRK        | JOVOVICH     |
        | RUSH GOODFELLAS             | KIRK        | JOVOVICH     |
        | SPICE SORORITY              | KIRK        | JOVOVICH     |
        | SPLENDOR PATTON             | KIRK        | JOVOVICH     |
        | TUXEDO MILE                 | KIRK        | JOVOVICH     |
        | WARDROBE PHANTOM            | KIRK        | JOVOVICH     |
        | BEACH HEARTBREAKERS         | NICK        | STALLONE     |
        | BOILED DARES                | NICK        | STALLONE     |
        | BORN SPINAL                 | NICK        | STALLONE     |
        | BRAVEHEART HUMAN            | NICK        | STALLONE     |
        | BUTTERFLY CHOCOLAT          | NICK        | STALLONE     |
        | CONGENIALITY QUEST          | NICK        | STALLONE     |
        | DOOM DANCING                | NICK        | STALLONE     |
        | EFFECT GLADIATOR            | NICK        | STALLONE     |
        | FLATLINERS KILLER           | NICK        | STALLONE     |
        | HOLES BRANNIGAN             | NICK        | STALLONE     |
        | HORROR REIGN                | NICK        | STALLONE     |
        | JUMANJI BLADE               | NICK        | STALLONE     |
        | MONSOON CAUSE               | NICK        | STALLONE     |
        | MOSQUITO ARMAGEDDON         | NICK        | STALLONE     |
        | MULAN MOON                  | NICK        | STALLONE     |
        | PRIVATE DROP                | NICK        | STALLONE     |
        | RUNAWAY TENENBAUMS          | NICK        | STALLONE     |
        | SHANGHAI TYCOON             | NICK        | STALLONE     |
        | SPEAKEASY DATE              | NICK        | STALLONE     |
        | STRANGERS GRAFFITI          | NICK        | STALLONE     |
        | TALENTED HOMICIDE           | NICK        | STALLONE     |
        | TEEN APOLLO                 | NICK        | STALLONE     |
        | TEQUILA PAST                | NICK        | STALLONE     |
        | TOOTSIE PILOT               | NICK        | STALLONE     |
        | TRADING PINOCCHIO           | NICK        | STALLONE     |
        | VARSITY TRIP                | NICK        | STALLONE     |
        | VIRGIN DAISY                | NICK        | STALLONE     |
        | WAGON JAWS                  | NICK        | STALLONE     |
        | WOMEN DORADO                | NICK        | STALLONE     |
        | ZHIVAGO CORE                | NICK        | STALLONE     |
        | ALTER VICTORY               | REESE       | KILMER       |
        | BEHAVIOR RUNAWAY            | REESE       | KILMER       |
        | BENEATH RUSH                | REESE       | KILMER       |
        | CAMPUS REMEMBER             | REESE       | KILMER       |
        | CANDLES GRAPES              | REESE       | KILMER       |
        | COAST RAINBOW               | REESE       | KILMER       |
        | CRANES RESERVOIR            | REESE       | KILMER       |
        | CRYSTAL BREAKING            | REESE       | KILMER       |
        | DEEP CRUSADE                | REESE       | KILMER       |
        | FORRESTER COMANCHEROS       | REESE       | KILMER       |
        | HAWK CHILL                  | REESE       | KILMER       |
        | HIGHBALL POTTER             | REESE       | KILMER       |
        | INSTINCT AIRPORT            | REESE       | KILMER       |
        | INTRIGUE WORST              | REESE       | KILMER       |
        | JERK PAYCHECK               | REESE       | KILMER       |
        | KNOCK WARLOCK               | REESE       | KILMER       |
        | KRAMER CHOCOLATE            | REESE       | KILMER       |
        | LAMBS CINCINATTI            | REESE       | KILMER       |
        | LOVER TRUMAN                | REESE       | KILMER       |
        | PINOCCHIO SIMON             | REESE       | KILMER       |
        | RANDOM GO                   | REESE       | KILMER       |
        | SCALAWAG DUCK               | REESE       | KILMER       |
        | SECRETS PARADISE            | REESE       | KILMER       |
        | SILENCE KANE                | REESE       | KILMER       |
        | SLUMS DUCK                  | REESE       | KILMER       |
        | TOMORROW HUSTLER            | REESE       | KILMER       |
        | TOWN ARK                    | REESE       | KILMER       |
        | TRACY CIDER                 | REESE       | KILMER       |
        | UNBREAKABLE KARATE          | REESE       | KILMER       |
        | UNITED PILOT                | REESE       | KILMER       |
        | WILLOW TRACY                | REESE       | KILMER       |
        | WISDOM WORKER               | REESE       | KILMER       |
        | ARK RIDGEMONT               | PARKER      | GOLDBERG     |
        | BALLOON HOMEWARD            | PARKER      | GOLDBERG     |
        | CONFIDENTIAL INTERVIEW      | PARKER      | GOLDBERG     |
        | DRIVER ANNIE                | PARKER      | GOLDBERG     |
        | EXPRESS LONELY              | PARKER      | GOLDBERG     |
        | FISH OPUS                   | PARKER      | GOLDBERG     |
        | HAWK CHILL                  | PARKER      | GOLDBERG     |
        | IDAHO LOVE                  | PARKER      | GOLDBERG     |
        | INCH JET                    | PARKER      | GOLDBERG     |
        | INSTINCT AIRPORT            | PARKER      | GOLDBERG     |
        | JAWS HARRY                  | PARKER      | GOLDBERG     |
        | LOVERBOY ATTACKS            | PARKER      | GOLDBERG     |
        | LUCKY FLYING                | PARKER      | GOLDBERG     |
        | MEET CHOCOLATE              | PARKER      | GOLDBERG     |
        | RIGHT CRANES                | PARKER      | GOLDBERG     |
        | SAVANNAH TOWN               | PARKER      | GOLDBERG     |
        | SCARFACE BANG               | PARKER      | GOLDBERG     |
        | SONS INTERVIEW              | PARKER      | GOLDBERG     |
        | SPINAL ROCKY                | PARKER      | GOLDBERG     |
        | SPIRIT FLINTSTONES          | PARKER      | GOLDBERG     |
        | SQUAD FISH                  | PARKER      | GOLDBERG     |
        | TIES HUNGER                 | PARKER      | GOLDBERG     |
        | WIZARD COLDBLOODED          | PARKER      | GOLDBERG     |
        | WORST BANGER                | PARKER      | GOLDBERG     |
        | ANGELS LIFE                 | JULIA       | BARRYMORE    |
        | ARGONAUTS TOWN              | JULIA       | BARRYMORE    |
        | BANG KWAI                   | JULIA       | BARRYMORE    |
        | BERETS AGENT                | JULIA       | BARRYMORE    |
        | CONEHEADS SMOOCHY           | JULIA       | BARRYMORE    |
        | DISCIPLE MOTHER             | JULIA       | BARRYMORE    |
        | EFFECT GLADIATOR            | JULIA       | BARRYMORE    |
        | GASLIGHT CRUSADE            | JULIA       | BARRYMORE    |
        | GROUNDHOG UNCUT             | JULIA       | BARRYMORE    |
        | JERK PAYCHECK               | JULIA       | BARRYMORE    |
        | LAMBS CINCINATTI            | JULIA       | BARRYMORE    |
        | MIGHTY LUCK                 | JULIA       | BARRYMORE    |
        | PELICAN COMFORTS            | JULIA       | BARRYMORE    |
        | ROAD ROXANNE                | JULIA       | BARRYMORE    |
        | ROCK INSTINCT               | JULIA       | BARRYMORE    |
        | SCISSORHANDS SLUMS          | JULIA       | BARRYMORE    |
        | SECRETARY ROUGE             | JULIA       | BARRYMORE    |
        | SHINING ROSES               | JULIA       | BARRYMORE    |
        | SHOOTIST SUPERFLY           | JULIA       | BARRYMORE    |
        | TROOPERS METAL              | JULIA       | BARRYMORE    |
        | UNFAITHFUL KILL             | JULIA       | BARRYMORE    |
        | UNFORGIVEN ZOOLANDER        | JULIA       | BARRYMORE    |
        | VIRGIN DAISY                | JULIA       | BARRYMORE    |
        | WIFE TURN                   | JULIA       | BARRYMORE    |
        | BRINGING HYSTERICAL         | FRANCES     | DAY-LEWIS    |
        | BROTHERHOOD BLANKET         | FRANCES     | DAY-LEWIS    |
        | CHAMPION FLATLINERS         | FRANCES     | DAY-LEWIS    |
        | CIDER DESIRE                | FRANCES     | DAY-LEWIS    |
        | COAST RAINBOW               | FRANCES     | DAY-LEWIS    |
        | DARLING BREAKING            | FRANCES     | DAY-LEWIS    |
        | DOUBLE WRATH                | FRANCES     | DAY-LEWIS    |
        | EAGLES PANKY                | FRANCES     | DAY-LEWIS    |
        | ENTRAPMENT SATISFACTION     | FRANCES     | DAY-LEWIS    |
        | EXPENDABLE STALLION         | FRANCES     | DAY-LEWIS    |
        | FIDDLER LOST                | FRANCES     | DAY-LEWIS    |
        | FINDING ANACONDA            | FRANCES     | DAY-LEWIS    |
        | GABLES METROPOLIS           | FRANCES     | DAY-LEWIS    |
        | GANGS PRIDE                 | FRANCES     | DAY-LEWIS    |
        | HOMICIDE PEACH              | FRANCES     | DAY-LEWIS    |
        | LADY STAGE                  | FRANCES     | DAY-LEWIS    |
        | MADNESS ATTACKS             | FRANCES     | DAY-LEWIS    |
        | MARRIED GO                  | FRANCES     | DAY-LEWIS    |
        | MERMAID INSECTS             | FRANCES     | DAY-LEWIS    |
        | MOTHER OLEANDER             | FRANCES     | DAY-LEWIS    |
        | OTHERS SOUP                 | FRANCES     | DAY-LEWIS    |
        | PURPLE MOVIE                | FRANCES     | DAY-LEWIS    |
        | SAGEBRUSH CLUELESS          | FRANCES     | DAY-LEWIS    |
        | SHREK LICENSE               | FRANCES     | DAY-LEWIS    |
        | UNDEFEATED DALMATIONS       | FRANCES     | DAY-LEWIS    |
        | UNTOUCHABLES SUNRISE        | FRANCES     | DAY-LEWIS    |
        | APACHE DIVINE               | ANNE        | CRONYN       |
        | CINCINATTI WHISPERER        | ANNE        | CRONYN       |
        | CROWDS TELEMARK             | ANNE        | CRONYN       |
        | DANGEROUS UPTOWN            | ANNE        | CRONYN       |
        | DRAGON SQUAD                | ANNE        | CRONYN       |
        | ENCOUNTERS CURTAIN          | ANNE        | CRONYN       |
        | GANDHI KWAI                 | ANNE        | CRONYN       |
        | HALF OUTFIELD               | ANNE        | CRONYN       |
        | HARDLY ROBBERS              | ANNE        | CRONYN       |
        | HAWK CHILL                  | ANNE        | CRONYN       |
        | HOLLYWOOD ANONYMOUS         | ANNE        | CRONYN       |
        | HORN WORKING                | ANNE        | CRONYN       |
        | IRON MOON                   | ANNE        | CRONYN       |
        | LADY STAGE                  | ANNE        | CRONYN       |
        | LUST LOCK                   | ANNE        | CRONYN       |
        | MANNEQUIN WORST             | ANNE        | CRONYN       |
        | MINDS TRUMAN                | ANNE        | CRONYN       |
        | MOON BUNCH                  | ANNE        | CRONYN       |
        | PATHS CONTROL               | ANNE        | CRONYN       |
        | RACER EGG                   | ANNE        | CRONYN       |
        | REAP UNFAITHFUL             | ANNE        | CRONYN       |
        | REQUIEM TYCOON              | ANNE        | CRONYN       |
        | RIDER CADDYSHACK            | ANNE        | CRONYN       |
        | SMILE EARRING               | ANNE        | CRONYN       |
        | UPRISING UPTOWN             | ANNE        | CRONYN       |
        | WINDOW SIDE                 | ANNE        | CRONYN       |
        | WIZARD COLDBLOODED          | ANNE        | CRONYN       |
        | CADDYSHACK JEDI             | NATALIE     | HOPKINS      |
        | CONNECTION MICROCOSMOS      | NATALIE     | HOPKINS      |
        | DOORS PRESIDENT             | NATALIE     | HOPKINS      |
        | DOZEN LION                  | NATALIE     | HOPKINS      |
        | EGG IGBY                    | NATALIE     | HOPKINS      |
        | ESCAPE METROPOLIS           | NATALIE     | HOPKINS      |
        | FANTASY TROOPERS            | NATALIE     | HOPKINS      |
        | FEATHERS METAL              | NATALIE     | HOPKINS      |
        | FOOL MOCKINGBIRD            | NATALIE     | HOPKINS      |
        | GRACELAND DYNAMITE          | NATALIE     | HOPKINS      |
        | HAROLD FRENCH               | NATALIE     | HOPKINS      |
        | HILLS NEIGHBORS             | NATALIE     | HOPKINS      |
        | HOLES BRANNIGAN             | NATALIE     | HOPKINS      |
        | HOUSE DYNAMITE              | NATALIE     | HOPKINS      |
        | JASON TRAP                  | NATALIE     | HOPKINS      |
        | KWAI HOMEWARD               | NATALIE     | HOPKINS      |
        | LICENSE WEEKEND             | NATALIE     | HOPKINS      |
        | MAJESTIC FLOATS             | NATALIE     | HOPKINS      |
        | MONSOON CAUSE               | NATALIE     | HOPKINS      |
        | NETWORK PEAK                | NATALIE     | HOPKINS      |
        | NUTS TIES                   | NATALIE     | HOPKINS      |
        | OTHERS SOUP                 | NATALIE     | HOPKINS      |
        | PERFECT GROOVE              | NATALIE     | HOPKINS      |
        | REAR TRADING                | NATALIE     | HOPKINS      |
        | RINGS HEARTBREAKERS         | NATALIE     | HOPKINS      |
        | SIEGE MADRE                 | NATALIE     | HOPKINS      |
        | SPINAL ROCKY                | NATALIE     | HOPKINS      |
        | STAMPEDE DISTURBING         | NATALIE     | HOPKINS      |
        | TORQUE BOUND                | NATALIE     | HOPKINS      |
        | TWISTED PIRATES             | NATALIE     | HOPKINS      |
        | UNFORGIVEN ZOOLANDER        | NATALIE     | HOPKINS      |
        | WAR NOTTING                 | NATALIE     | HOPKINS      |
        | AFRICAN EGG                 | GARY        | PHOENIX      |
        | BEDAZZLED MARRIED           | GARY        | PHOENIX      |
        | BUCKET BROTHERHOOD          | GARY        | PHOENIX      |
        | CALENDAR GUNFIGHT           | GARY        | PHOENIX      |
        | CAROL TEXAS                 | GARY        | PHOENIX      |
        | CITIZEN SHREK               | GARY        | PHOENIX      |
        | HANDICAP BOONDOCK           | GARY        | PHOENIX      |
        | HEAD STRANGER               | GARY        | PHOENIX      |
        | HOLES BRANNIGAN             | GARY        | PHOENIX      |
        | INSECTS STONE               | GARY        | PHOENIX      |
        | JUMANJI BLADE               | GARY        | PHOENIX      |
        | LOATHING LEGALLY            | GARY        | PHOENIX      |
        | NORTH TEQUILA               | GARY        | PHOENIX      |
        | PICKUP DRIVING              | GARY        | PHOENIX      |
        | RIVER OUTLAW                | GARY        | PHOENIX      |
        | ROAD ROXANNE                | GARY        | PHOENIX      |
        | ROCK INSTINCT               | GARY        | PHOENIX      |
        | RUN PACIFIC                 | GARY        | PHOENIX      |
        | STOCK GLASS                 | GARY        | PHOENIX      |
        | TIMBERLAND SKY              | GARY        | PHOENIX      |
        | TOMORROW HUSTLER            | GARY        | PHOENIX      |
        | VICTORY ACADEMY             | GARY        | PHOENIX      |
        | WILD APOLLO                 | GARY        | PHOENIX      |
        | WORLD LEATHERNECKS          | GARY        | PHOENIX      |
        | WRONG BEHAVIOR              | GARY        | PHOENIX      |
        | AMELIE HELLFIGHTERS         | CARMEN      | HUNT         |
        | BOWFINGER GABLES            | CARMEN      | HUNT         |
        | BREAKING HOME               | CARMEN      | HUNT         |
        | BUTCH PANTHER               | CARMEN      | HUNT         |
        | DAISY MENAGERIE             | CARMEN      | HUNT         |
        | DRACULA CRYSTAL             | CARMEN      | HUNT         |
        | FROST HEAD                  | CARMEN      | HUNT         |
        | GRAPES FURY                 | CARMEN      | HUNT         |
        | GUNFIGHT MOON               | CARMEN      | HUNT         |
        | HAWK CHILL                  | CARMEN      | HUNT         |
        | HOLOCAUST HIGHBALL          | CARMEN      | HUNT         |
        | JADE BUNCH                  | CARMEN      | HUNT         |
        | LEGALLY SECRETARY           | CARMEN      | HUNT         |
        | LESSON CLEOPATRA            | CARMEN      | HUNT         |
        | MIXED DOORS                 | CARMEN      | HUNT         |
        | MOONSHINE CABIN             | CARMEN      | HUNT         |
        | PATRIOT ROMAN               | CARMEN      | HUNT         |
        | PHANTOM GLORY               | CARMEN      | HUNT         |
        | POLLOCK DELIVERANCE         | CARMEN      | HUNT         |
        | RANDOM GO                   | CARMEN      | HUNT         |
        | SMOKING BARBARELLA          | CARMEN      | HUNT         |
        | TEEN APOLLO                 | CARMEN      | HUNT         |
        | TELEGRAPH VOYAGE            | CARMEN      | HUNT         |
        | TRUMAN CRAZY                | CARMEN      | HUNT         |
        | VOYAGE LEGALLY              | CARMEN      | HUNT         |
        | ZOOLANDER FICTION           | CARMEN      | HUNT         |
        | ACADEMY DINOSAUR            | MENA        | TEMPLE       |
        | ALABAMA DEVIL               | MENA        | TEMPLE       |
        | BALLOON HOMEWARD            | MENA        | TEMPLE       |
        | BEACH HEARTBREAKERS         | MENA        | TEMPLE       |
        | BUTTERFLY CHOCOLAT          | MENA        | TEMPLE       |
        | CARRIE BUNCH                | MENA        | TEMPLE       |
        | CASUALTIES ENCINO           | MENA        | TEMPLE       |
        | CONTACT ANONYMOUS           | MENA        | TEMPLE       |
        | DROP WATERFRONT             | MENA        | TEMPLE       |
        | EARLY HOME                  | MENA        | TEMPLE       |
        | ENGLISH BULWORTH            | MENA        | TEMPLE       |
        | FELLOWSHIP AUTUMN           | MENA        | TEMPLE       |
        | GILMORE BOILED              | MENA        | TEMPLE       |
        | GUMP DATE                   | MENA        | TEMPLE       |
        | ICE CROSSING                | MENA        | TEMPLE       |
        | INTERVIEW LIAISONS          | MENA        | TEMPLE       |
        | JUMANJI BLADE               | MENA        | TEMPLE       |
        | JUNGLE CLOSER               | MENA        | TEMPLE       |
        | LAMBS CINCINATTI            | MENA        | TEMPLE       |
        | LIAISONS SWEET              | MENA        | TEMPLE       |
        | MICROCOSMOS PARADISE        | MENA        | TEMPLE       |
        | MIGHTY LUCK                 | MENA        | TEMPLE       |
        | MILE MULAN                  | MENA        | TEMPLE       |
        | PRIMARY GLASS               | MENA        | TEMPLE       |
        | REQUIEM TYCOON              | MENA        | TEMPLE       |
        | RESURRECTION SILVERADO      | MENA        | TEMPLE       |
        | VARSITY TRIP                | MENA        | TEMPLE       |
        | VISION TORQUE               | MENA        | TEMPLE       |
        | WASH HEAVENLY               | MENA        | TEMPLE       |
        | WIZARD COLDBLOODED          | MENA        | TEMPLE       |
        | BOILED DARES                | PENELOPE    | PINKETT      |
        | CAUSE DATE                  | PENELOPE    | PINKETT      |
        | CIDER DESIRE                | PENELOPE    | PINKETT      |
        | CORE SUIT                   | PENELOPE    | PINKETT      |
        | ENGLISH BULWORTH            | PENELOPE    | PINKETT      |
        | EXCITEMENT EVE              | PENELOPE    | PINKETT      |
        | FAMILY SWEET                | PENELOPE    | PINKETT      |
        | GANDHI KWAI                 | PENELOPE    | PINKETT      |
        | JUGGLER HARDLY              | PENELOPE    | PINKETT      |
        | LAWLESS VISION              | PENELOPE    | PINKETT      |
        | LION UNCUT                  | PENELOPE    | PINKETT      |
        | MADRE GABLES                | PENELOPE    | PINKETT      |
        | MOTIONS DETAILS             | PENELOPE    | PINKETT      |
        | OLEANDER CLUE               | PENELOPE    | PINKETT      |
        | OZ LIAISONS                 | PENELOPE    | PINKETT      |
        | PARIS WEEKEND               | PENELOPE    | PINKETT      |
        | RUSHMORE MERMAID            | PENELOPE    | PINKETT      |
        | SATURDAY LAMBS              | PENELOPE    | PINKETT      |
        | STATE WASTELAND             | PENELOPE    | PINKETT      |
        | SUBMARINE BED               | PENELOPE    | PINKETT      |
        | SUIT WALLS                  | PENELOPE    | PINKETT      |
        | TROOPERS METAL              | PENELOPE    | PINKETT      |
        | WESTWARD SEABISCUIT         | PENELOPE    | PINKETT      |
        | WORKER TARZAN               | PENELOPE    | PINKETT      |
        | WORLD LEATHERNECKS          | PENELOPE    | PINKETT      |
        | AIRPORT POLLOCK             | FAY         | KILMER       |
        | ANONYMOUS HUMAN             | FAY         | KILMER       |
        | BIRD INDEPENDENCE           | FAY         | KILMER       |
        | CRUSADE HONEY               | FAY         | KILMER       |
        | FELLOWSHIP AUTUMN           | FAY         | KILMER       |
        | FLAMINGOS CONNECTICUT       | FAY         | KILMER       |
        | FRONTIER CABIN              | FAY         | KILMER       |
        | HARRY IDAHO                 | FAY         | KILMER       |
        | JERSEY SASSY                | FAY         | KILMER       |
        | JET NEIGHBORS               | FAY         | KILMER       |
        | MOVIE SHAKESPEARE           | FAY         | KILMER       |
        | MUSSOLINI SPOILERS          | FAY         | KILMER       |
        | NEMO CAMPUS                 | FAY         | KILMER       |
        | RACER EGG                   | FAY         | KILMER       |
        | SECRET GROUNDHOG            | FAY         | KILMER       |
        | SHOOTIST SUPERFLY           | FAY         | KILMER       |
        | SNATCHERS MONTEZUMA         | FAY         | KILMER       |
        | SPICE SORORITY              | FAY         | KILMER       |
        | VACATION BOONDOCK           | FAY         | KILMER       |
        | WATCH TRACY                 | FAY         | KILMER       |
        | BEDAZZLED MARRIED           | DAN         | HARRIS       |
        | BOONDOCK BALLROOM           | DAN         | HARRIS       |
        | DESTINY SATURDAY            | DAN         | HARRIS       |
        | DIVINE RESURRECTION         | DAN         | HARRIS       |
        | EYES DRIVING                | DAN         | HARRIS       |
        | FELLOWSHIP AUTUMN           | DAN         | HARRIS       |
        | GHOST GROUNDHOG             | DAN         | HARRIS       |
        | GROOVE FICTION              | DAN         | HARRIS       |
        | HILLS NEIGHBORS             | DAN         | HARRIS       |
        | HOLIDAY GAMES               | DAN         | HARRIS       |
        | INDEPENDENCE HOTEL          | DAN         | HARRIS       |
        | INSIDER ARIZONA             | DAN         | HARRIS       |
        | JADE BUNCH                  | DAN         | HARRIS       |
        | LIES TREATMENT              | DAN         | HARRIS       |
        | MONTEREY LABYRINTH          | DAN         | HARRIS       |
        | REUNION WITCHES             | DAN         | HARRIS       |
        | RUN PACIFIC                 | DAN         | HARRIS       |
        | SCHOOL JACKET               | DAN         | HARRIS       |
        | SEVEN SWARM                 | DAN         | HARRIS       |
        | SIEGE MADRE                 | DAN         | HARRIS       |
        | STEERS ARMAGEDDON           | DAN         | HARRIS       |
        | STRAIGHT HOURS              | DAN         | HARRIS       |
        | SUMMER SCARFACE             | DAN         | HARRIS       |
        | SUPERFLY TRIP               | DAN         | HARRIS       |
        | TITANIC BOONDOCK            | DAN         | HARRIS       |
        | TITANS JERK                 | DAN         | HARRIS       |
        | VANISHING ROCKY             | DAN         | HARRIS       |
        | WATERSHIP FRONTIER          | DAN         | HARRIS       |
        | ALLEY EVOLUTION             | JUDE        | CRUISE       |
        | ARABIA DOGMA                | JUDE        | CRUISE       |
        | BROTHERHOOD BLANKET         | JUDE        | CRUISE       |
        | CAMELOT VACATION            | JUDE        | CRUISE       |
        | CARRIE BUNCH                | JUDE        | CRUISE       |
        | CHAMPION FLATLINERS         | JUDE        | CRUISE       |
        | CHINATOWN GLADIATOR         | JUDE        | CRUISE       |
        | CITIZEN SHREK               | JUDE        | CRUISE       |
        | CROSSING DIVORCE            | JUDE        | CRUISE       |
        | DATE SPEED                  | JUDE        | CRUISE       |
        | DRUMS DYNAMITE              | JUDE        | CRUISE       |
        | EAGLES PANKY                | JUDE        | CRUISE       |
        | FIREBALL PHILADELPHIA       | JUDE        | CRUISE       |
        | FRONTIER CABIN              | JUDE        | CRUISE       |
        | HALLOWEEN NUTS              | JUDE        | CRUISE       |
        | HOUSE DYNAMITE              | JUDE        | CRUISE       |
        | ICE CROSSING                | JUDE        | CRUISE       |
        | KNOCK WARLOCK               | JUDE        | CRUISE       |
        | MONSTER SPARTACUS           | JUDE        | CRUISE       |
        | MULHOLLAND BEAST            | JUDE        | CRUISE       |
        | OPEN AFRICAN                | JUDE        | CRUISE       |
        | PLATOON INSTINCT            | JUDE        | CRUISE       |
        | QUEST MUSSOLINI             | JUDE        | CRUISE       |
        | RANDOM GO                   | JUDE        | CRUISE       |
        | REAR TRADING                | JUDE        | CRUISE       |
        | ROCK INSTINCT               | JUDE        | CRUISE       |
        | SCALAWAG DUCK               | JUDE        | CRUISE       |
        | STRANGELOVE DESIRE          | JUDE        | CRUISE       |
        | TIMBERLAND SKY              | JUDE        | CRUISE       |
        | TWISTED PIRATES             | JUDE        | CRUISE       |
        | BACKLASH UNDEFEATED         | CHRISTIAN   | AKROYD       |
        | BETRAYED REAR               | CHRISTIAN   | AKROYD       |
        | CAPER MOTIONS               | CHRISTIAN   | AKROYD       |
        | CATCH AMISTAD               | CHRISTIAN   | AKROYD       |
        | CHANCE RESURRECTION         | CHRISTIAN   | AKROYD       |
        | CONFUSED CANDLES            | CHRISTIAN   | AKROYD       |
        | CUPBOARD SINNERS            | CHRISTIAN   | AKROYD       |
        | DIVIDE MONSTER              | CHRISTIAN   | AKROYD       |
        | DOOM DANCING                | CHRISTIAN   | AKROYD       |
        | DOORS PRESIDENT             | CHRISTIAN   | AKROYD       |
        | DRIVER ANNIE                | CHRISTIAN   | AKROYD       |
        | FEATHERS METAL              | CHRISTIAN   | AKROYD       |
        | FIRE WOLVES                 | CHRISTIAN   | AKROYD       |
        | HILLS NEIGHBORS             | CHRISTIAN   | AKROYD       |
        | HOME PITY                   | CHRISTIAN   | AKROYD       |
        | INNOCENT USUAL              | CHRISTIAN   | AKROYD       |
        | JAWBREAKER BROOKLYN         | CHRISTIAN   | AKROYD       |
        | LUKE MUMMY                  | CHRISTIAN   | AKROYD       |
        | MAGNOLIA FORRESTER          | CHRISTIAN   | AKROYD       |
        | MAIDEN HOME                 | CHRISTIAN   | AKROYD       |
        | MAKER GABLES                | CHRISTIAN   | AKROYD       |
        | MILLION ACE                 | CHRISTIAN   | AKROYD       |
        | MOURNING PURPLE             | CHRISTIAN   | AKROYD       |
        | NUTS TIES                   | CHRISTIAN   | AKROYD       |
        | OKLAHOMA JUMANJI            | CHRISTIAN   | AKROYD       |
        | OPERATION OPERATION         | CHRISTIAN   | AKROYD       |
        | PRINCESS GIANT              | CHRISTIAN   | AKROYD       |
        | RESERVOIR ADAPTATION        | CHRISTIAN   | AKROYD       |
        | SABRINA MIDNIGHT            | CHRISTIAN   | AKROYD       |
        | SINNERS ATLANTIS            | CHRISTIAN   | AKROYD       |
        | STREETCAR INTENTIONS        | CHRISTIAN   | AKROYD       |
        | SUBMARINE BED               | CHRISTIAN   | AKROYD       |
        | AFRICAN EGG                 | DUSTIN      | TAUTOU       |
        | AUTUMN CROW                 | DUSTIN      | TAUTOU       |
        | BANGER PINOCCHIO            | DUSTIN      | TAUTOU       |
        | BILL OTHERS                 | DUSTIN      | TAUTOU       |
        | BORN SPINAL                 | DUSTIN      | TAUTOU       |
        | CAROL TEXAS                 | DUSTIN      | TAUTOU       |
        | CAUSE DATE                  | DUSTIN      | TAUTOU       |
        | CELEBRITY HORN              | DUSTIN      | TAUTOU       |
        | CONVERSATION DOWNHILL       | DUSTIN      | TAUTOU       |
        | DARKO DORADO                | DUSTIN      | TAUTOU       |
        | DONNIE ALLEY                | DUSTIN      | TAUTOU       |
        | EXPENDABLE STALLION         | DUSTIN      | TAUTOU       |
        | HOBBIT ALIEN                | DUSTIN      | TAUTOU       |
        | METROPOLIS COMA             | DUSTIN      | TAUTOU       |
        | OSCAR GOLD                  | DUSTIN      | TAUTOU       |
        | PACIFIC AMISTAD             | DUSTIN      | TAUTOU       |
        | POLLOCK DELIVERANCE         | DUSTIN      | TAUTOU       |
        | PREJUDICE OLEANDER          | DUSTIN      | TAUTOU       |
        | PULP BEVERLY                | DUSTIN      | TAUTOU       |
        | RAINBOW SHOCK               | DUSTIN      | TAUTOU       |
        | RULES HUMAN                 | DUSTIN      | TAUTOU       |
        | SEA VIRGIN                  | DUSTIN      | TAUTOU       |
        | STRANGER STRANGERS          | DUSTIN      | TAUTOU       |
        | SUMMER SCARFACE             | DUSTIN      | TAUTOU       |
        | VILLAIN DESPERATE           | DUSTIN      | TAUTOU       |
        | VIRTUAL SPOILERS            | DUSTIN      | TAUTOU       |
        | WONDERFUL DROP              | DUSTIN      | TAUTOU       |
        | APACHE DIVINE               | HENRY       | BERRY        |
        | BONNIE HOLOCAUST            | HENRY       | BERRY        |
        | CHAMBER ITALIAN             | HENRY       | BERRY        |
        | CHICKEN HELLFIGHTERS        | HENRY       | BERRY        |
        | CONNECTICUT TRAMP           | HENRY       | BERRY        |
        | CONQUERER NUTS              | HENRY       | BERRY        |
        | CRAFT OUTFIELD              | HENRY       | BERRY        |
        | DESERT POSEIDON             | HENRY       | BERRY        |
        | DIVIDE MONSTER              | HENRY       | BERRY        |
        | DOGMA FAMILY                | HENRY       | BERRY        |
        | DRIFTER COMMANDMENTS        | HENRY       | BERRY        |
        | DUMBO LUST                  | HENRY       | BERRY        |
        | EXTRAORDINARY CONQUERER     | HENRY       | BERRY        |
        | FACTORY DRAGON              | HENRY       | BERRY        |
        | FREDDY STORM                | HENRY       | BERRY        |
        | GRAPES FURY                 | HENRY       | BERRY        |
        | HOLLYWOOD ANONYMOUS         | HENRY       | BERRY        |
        | HOURS RAGE                  | HENRY       | BERRY        |
        | KANE EXORCIST               | HENRY       | BERRY        |
        | LOUISIANA HARRY             | HENRY       | BERRY        |
        | MAIDEN HOME                 | HENRY       | BERRY        |
        | PARIS WEEKEND               | HENRY       | BERRY        |
        | PATTON INTERVIEW            | HENRY       | BERRY        |
        | PILOT HOOSIERS              | HENRY       | BERRY        |
        | RUSHMORE MERMAID            | HENRY       | BERRY        |
        | SCORPION APOLLO             | HENRY       | BERRY        |
        | SHANE DARKNESS              | HENRY       | BERRY        |
        | SHANGHAI TYCOON             | HENRY       | BERRY        |
        | SLEEPLESS MONSOON           | HENRY       | BERRY        |
        | SPIRIT FLINTSTONES          | HENRY       | BERRY        |
        | SPY MILE                    | HENRY       | BERRY        |
        | UPTOWN YOUNG                | HENRY       | BERRY        |
        | WAGON JAWS                  | HENRY       | BERRY        |
        | WHALE BIKINI                | HENRY       | BERRY        |
        | WONKA SEA                   | HENRY       | BERRY        |
        | DIVIDE MONSTER              | CHRISTIAN   | NEESON       |
        | DIVORCE SHINING             | CHRISTIAN   | NEESON       |
        | FELLOWSHIP AUTUMN           | CHRISTIAN   | NEESON       |
        | GLORY TRACY                 | CHRISTIAN   | NEESON       |
        | GRACELAND DYNAMITE          | CHRISTIAN   | NEESON       |
        | GRAFFITI LOVE               | CHRISTIAN   | NEESON       |
        | HOLLYWOOD ANONYMOUS         | CHRISTIAN   | NEESON       |
        | HORN WORKING                | CHRISTIAN   | NEESON       |
        | LAMBS CINCINATTI            | CHRISTIAN   | NEESON       |
        | LIAISONS SWEET              | CHRISTIAN   | NEESON       |
        | LIBERTY MAGNIFICENT         | CHRISTIAN   | NEESON       |
        | LOVE SUICIDES               | CHRISTIAN   | NEESON       |
        | LOVER TRUMAN                | CHRISTIAN   | NEESON       |
        | MOB DUFFEL                  | CHRISTIAN   | NEESON       |
        | OPPOSITE NECKLACE           | CHRISTIAN   | NEESON       |
        | OUTLAW HANKY                | CHRISTIAN   | NEESON       |
        | OZ LIAISONS                 | CHRISTIAN   | NEESON       |
        | PUNK DIVORCE                | CHRISTIAN   | NEESON       |
        | RUNNER MADIGAN              | CHRISTIAN   | NEESON       |
        | SAVANNAH TOWN               | CHRISTIAN   | NEESON       |
        | SCALAWAG DUCK               | CHRISTIAN   | NEESON       |
        | SENSIBILITY REAR            | CHRISTIAN   | NEESON       |
        | SPIRITED CASUALTIES         | CHRISTIAN   | NEESON       |
        | SPLASH GUMP                 | CHRISTIAN   | NEESON       |
        | WORLD LEATHERNECKS          | CHRISTIAN   | NEESON       |
        | AGENT TRUMAN                | JAYNE       | NEESON       |
        | ARTIST COLDBLOODED          | JAYNE       | NEESON       |
        | BANGER PINOCCHIO            | JAYNE       | NEESON       |
        | BROOKLYN DESERT             | JAYNE       | NEESON       |
        | BROTHERHOOD BLANKET         | JAYNE       | NEESON       |
        | CAUSE DATE                  | JAYNE       | NEESON       |
        | CRYSTAL BREAKING            | JAYNE       | NEESON       |
        | DARLING BREAKING            | JAYNE       | NEESON       |
        | DINOSAUR SECRETARY          | JAYNE       | NEESON       |
        | EDGE KISSING                | JAYNE       | NEESON       |
        | EXPENDABLE STALLION         | JAYNE       | NEESON       |
        | FRIDA SLIPPER               | JAYNE       | NEESON       |
        | GRAIL FRANKENSTEIN          | JAYNE       | NEESON       |
        | GROUNDHOG UNCUT             | JAYNE       | NEESON       |
        | HALLOWEEN NUTS              | JAYNE       | NEESON       |
        | HANOVER GALAXY              | JAYNE       | NEESON       |
        | HAUNTING PIANIST            | JAYNE       | NEESON       |
        | HEDWIG ALTER                | JAYNE       | NEESON       |
        | HOMICIDE PEACH              | JAYNE       | NEESON       |
        | HYDE DOCTOR                 | JAYNE       | NEESON       |
        | INDEPENDENCE HOTEL          | JAYNE       | NEESON       |
        | INTERVIEW LIAISONS          | JAYNE       | NEESON       |
        | POLISH BROOKLYN             | JAYNE       | NEESON       |
        | QUEST MUSSOLINI             | JAYNE       | NEESON       |
        | RECORDS ZORRO               | JAYNE       | NEESON       |
        | VOYAGE LEGALLY              | JAYNE       | NEESON       |
        | WOLVES DESIRE               | JAYNE       | NEESON       |
        | WORKER TARZAN               | JAYNE       | NEESON       |
        | WORLD LEATHERNECKS          | JAYNE       | NEESON       |
        | BINGO TALENTED              | CAMERON     | WRAY         |
        | CHAMPION FLATLINERS         | CAMERON     | WRAY         |
        | COMA HEAD                   | CAMERON     | WRAY         |
        | DARES PLUTO                 | CAMERON     | WRAY         |
        | DESTINATION JERK            | CAMERON     | WRAY         |
        | DOZEN LION                  | CAMERON     | WRAY         |
        | DRACULA CRYSTAL             | CAMERON     | WRAY         |
        | ELF MURDER                  | CAMERON     | WRAY         |
        | HALL CASSIDY                | CAMERON     | WRAY         |
        | LESSON CLEOPATRA            | CAMERON     | WRAY         |
        | OCTOBER SUBMARINE           | CAMERON     | WRAY         |
        | SATISFACTION CONFIDENTIAL   | CAMERON     | WRAY         |
        | SEVEN SWARM                 | CAMERON     | WRAY         |
        | SLIPPER FIDELITY            | CAMERON     | WRAY         |
        | TITANS JERK                 | CAMERON     | WRAY         |
        | VALLEY PACKER               | CAMERON     | WRAY         |
        | VIRGIN DAISY                | CAMERON     | WRAY         |
        | VIRGINIAN PLUTO             | CAMERON     | WRAY         |
        | WOLVES DESIRE               | CAMERON     | WRAY         |
        | ADAPTATION HOLES            | RAY         | JOHANSSON    |
        | ALADDIN CALENDAR            | RAY         | JOHANSSON    |
        | ARIZONA BANG                | RAY         | JOHANSSON    |
        | BOONDOCK BALLROOM           | RAY         | JOHANSSON    |
        | BORN SPINAL                 | RAY         | JOHANSSON    |
        | CASPER DRAGONFLY            | RAY         | JOHANSSON    |
        | CRUSADE HONEY               | RAY         | JOHANSSON    |
        | EMPIRE MALKOVICH            | RAY         | JOHANSSON    |
        | EVOLUTION ALTER             | RAY         | JOHANSSON    |
        | FELLOWSHIP AUTUMN           | RAY         | JOHANSSON    |
        | FREEDOM CLEOPATRA           | RAY         | JOHANSSON    |
        | GABLES METROPOLIS           | RAY         | JOHANSSON    |
        | IDAHO LOVE                  | RAY         | JOHANSSON    |
        | IRON MOON                   | RAY         | JOHANSSON    |
        | ISLAND EXORCIST             | RAY         | JOHANSSON    |
        | LADY STAGE                  | RAY         | JOHANSSON    |
        | MADIGAN DORADO              | RAY         | JOHANSSON    |
        | MANCHURIAN CURTAIN          | RAY         | JOHANSSON    |
        | MENAGERIE RUSHMORE          | RAY         | JOHANSSON    |
        | METROPOLIS COMA             | RAY         | JOHANSSON    |
        | MOONWALKER FOOL             | RAY         | JOHANSSON    |
        | NATIONAL STORY              | RAY         | JOHANSSON    |
        | OUTBREAK DIVINE             | RAY         | JOHANSSON    |
        | PREJUDICE OLEANDER          | RAY         | JOHANSSON    |
        | SPLASH GUMP                 | RAY         | JOHANSSON    |
        | STRANGELOVE DESIRE          | RAY         | JOHANSSON    |
        | SUICIDES SILENCE            | RAY         | JOHANSSON    |
        | UNCUT SUICIDES              | RAY         | JOHANSSON    |
        | UNITED PILOT                | RAY         | JOHANSSON    |
        | WIZARD COLDBLOODED          | RAY         | JOHANSSON    |
        | ARMAGEDDON LOST             | ANGELA      | HUDSON       |
        | AUTUMN CROW                 | ANGELA      | HUDSON       |
        | BRIDE INTRIGUE              | ANGELA      | HUDSON       |
        | BULWORTH COMMANDMENTS       | ANGELA      | HUDSON       |
        | CANDLES GRAPES              | ANGELA      | HUDSON       |
        | CASSIDY WYOMING             | ANGELA      | HUDSON       |
        | CLONES PINOCCHIO            | ANGELA      | HUDSON       |
        | ELEMENT FREDDY              | ANGELA      | HUDSON       |
        | FATAL HAUNTED               | ANGELA      | HUDSON       |
        | FRISCO FORREST              | ANGELA      | HUDSON       |
        | GAMES BOWFINGER             | ANGELA      | HUDSON       |
        | GOSFORD DONNIE              | ANGELA      | HUDSON       |
        | HANOVER GALAXY              | ANGELA      | HUDSON       |
        | ISLAND EXORCIST             | ANGELA      | HUDSON       |
        | JAPANESE RUN                | ANGELA      | HUDSON       |
        | JASON TRAP                  | ANGELA      | HUDSON       |
        | JUMPING WRATH               | ANGELA      | HUDSON       |
        | KICK SAVANNAH               | ANGELA      | HUDSON       |
        | LEGEND JEDI                 | ANGELA      | HUDSON       |
        | LESSON CLEOPATRA            | ANGELA      | HUDSON       |
        | LUKE MUMMY                  | ANGELA      | HUDSON       |
        | MALTESE HOPE                | ANGELA      | HUDSON       |
        | METAL ARMAGEDDON            | ANGELA      | HUDSON       |
        | MILE MULAN                  | ANGELA      | HUDSON       |
        | NASH CHOCOLAT               | ANGELA      | HUDSON       |
        | PARIS WEEKEND               | ANGELA      | HUDSON       |
        | PITY BOUND                  | ANGELA      | HUDSON       |
        | PREJUDICE OLEANDER          | ANGELA      | HUDSON       |
        | RANDOM GO                   | ANGELA      | HUDSON       |
        | ROBBERS JOON                | ANGELA      | HUDSON       |
        | STRANGELOVE DESIRE          | ANGELA      | HUDSON       |
        | VELVET TERMINATOR           | ANGELA      | HUDSON       |
        | VOYAGE LEGALLY              | ANGELA      | HUDSON       |
        | WATERSHIP FRONTIER          | ANGELA      | HUDSON       |
        | BARBARELLA STREETCAR        | MARY        | TANDY        |
        | CHILL LUCK                  | MARY        | TANDY        |
        | DANGEROUS UPTOWN            | MARY        | TANDY        |
        | DESTINY SATURDAY            | MARY        | TANDY        |
        | DEVIL DESIRE                | MARY        | TANDY        |
        | DIARY PANIC                 | MARY        | TANDY        |
        | ENDING CROWDS               | MARY        | TANDY        |
        | FALCON VOLUME               | MARY        | TANDY        |
        | FUGITIVE MAGUIRE            | MARY        | TANDY        |
        | GARDEN ISLAND               | MARY        | TANDY        |
        | GLEAMING JAWBREAKER         | MARY        | TANDY        |
        | GRAPES FURY                 | MARY        | TANDY        |
        | HOLOCAUST HIGHBALL          | MARY        | TANDY        |
        | HORROR REIGN                | MARY        | TANDY        |
        | MAKER GABLES                | MARY        | TANDY        |
        | MURDER ANTITRUST            | MARY        | TANDY        |
        | PHILADELPHIA WIFE           | MARY        | TANDY        |
        | PRIMARY GLASS               | MARY        | TANDY        |
        | QUEEN LUKE                  | MARY        | TANDY        |
        | REQUIEM TYCOON              | MARY        | TANDY        |
        | SCHOOL JACKET               | MARY        | TANDY        |
        | SHRUNK DIVINE               | MARY        | TANDY        |
        | SPINAL ROCKY                | MARY        | TANDY        |
        | SWEDEN SHINING              | MARY        | TANDY        |
        | TREASURE COMMAND            | MARY        | TANDY        |
        | TRUMAN CRAZY                | MARY        | TANDY        |
        | UPTOWN YOUNG                | MARY        | TANDY        |
        | VOYAGE LEGALLY              | MARY        | TANDY        |
        | WAR NOTTING                 | MARY        | TANDY        |
        | WARS PLUTO                  | MARY        | TANDY        |
        | ZOOLANDER FICTION           | MARY        | TANDY        |
        | ANALYZE HOOSIERS            | JESSICA     | BAILEY       |
        | BASIC EASY                  | JESSICA     | BAILEY       |
        | BERETS AGENT                | JESSICA     | BAILEY       |
        | CHINATOWN GLADIATOR         | JESSICA     | BAILEY       |
        | DOOM DANCING                | JESSICA     | BAILEY       |
        | DORADO NOTTING              | JESSICA     | BAILEY       |
        | DROP WATERFRONT             | JESSICA     | BAILEY       |
        | HEAD STRANGER               | JESSICA     | BAILEY       |
        | JAWBREAKER BROOKLYN         | JESSICA     | BAILEY       |
        | KICK SAVANNAH               | JESSICA     | BAILEY       |
        | LEAGUE HELLFIGHTERS         | JESSICA     | BAILEY       |
        | MIGHTY LUCK                 | JESSICA     | BAILEY       |
        | MOULIN WAKE                 | JESSICA     | BAILEY       |
        | REQUIEM TYCOON              | JESSICA     | BAILEY       |
        | RESERVOIR ADAPTATION        | JESSICA     | BAILEY       |
        | RIGHT CRANES                | JESSICA     | BAILEY       |
        | SAVANNAH TOWN               | JESSICA     | BAILEY       |
        | SUIT WALLS                  | JESSICA     | BAILEY       |
        | SWARM GOLD                  | JESSICA     | BAILEY       |
        | TRUMAN CRAZY                | JESSICA     | BAILEY       |
        | VIRGINIAN PLUTO             | JESSICA     | BAILEY       |
        | WHISPERER GIANT             | JESSICA     | BAILEY       |
        | WOLVES DESIRE               | JESSICA     | BAILEY       |
        | ALABAMA DEVIL               | RIP         | WINSLET      |
        | ATTRACTION NEWTON           | RIP         | WINSLET      |
        | CHAMBER ITALIAN             | RIP         | WINSLET      |
        | CLUE GRAIL                  | RIP         | WINSLET      |
        | DANCES NONE                 | RIP         | WINSLET      |
        | DATE SPEED                  | RIP         | WINSLET      |
        | DAWN POND                   | RIP         | WINSLET      |
        | DRIVING POLISH              | RIP         | WINSLET      |
        | EXPRESS LONELY              | RIP         | WINSLET      |
        | FINDING ANACONDA            | RIP         | WINSLET      |
        | FLOATS GARDEN               | RIP         | WINSLET      |
        | FORWARD TEMPLE              | RIP         | WINSLET      |
        | GAMES BOWFINGER             | RIP         | WINSLET      |
        | GILBERT PELICAN             | RIP         | WINSLET      |
        | GREATEST NORTH              | RIP         | WINSLET      |
        | GREEK EVERYONE              | RIP         | WINSLET      |
        | GUMP DATE                   | RIP         | WINSLET      |
        | HANGING DEEP                | RIP         | WINSLET      |
        | HOTEL HAPPINESS             | RIP         | WINSLET      |
        | KILL BROTHERHOOD            | RIP         | WINSLET      |
        | MUPPET MILE                 | RIP         | WINSLET      |
        | PANKY SUBMARINE             | RIP         | WINSLET      |
        | PATTON INTERVIEW            | RIP         | WINSLET      |
        | PERDITION FARGO             | RIP         | WINSLET      |
        | QUEEN LUKE                  | RIP         | WINSLET      |
        | ROXANNE REBEL               | RIP         | WINSLET      |
        | SPOILERS HELLFIGHTERS       | RIP         | WINSLET      |
        | STALLION SUNDANCE           | RIP         | WINSLET      |
        | STAMPEDE DISTURBING         | RIP         | WINSLET      |
        | WHALE BIKINI                | RIP         | WINSLET      |
        | ALIEN CENTER                | KENNETH     | PALTROW      |
        | BORN SPINAL                 | KENNETH     | PALTROW      |
        | CADDYSHACK JEDI             | KENNETH     | PALTROW      |
        | DADDY PITTSBURGH            | KENNETH     | PALTROW      |
        | DIVINE RESURRECTION         | KENNETH     | PALTROW      |
        | EXCITEMENT EVE              | KENNETH     | PALTROW      |
        | FALCON VOLUME               | KENNETH     | PALTROW      |
        | FEATHERS METAL              | KENNETH     | PALTROW      |
        | GRAFFITI LOVE               | KENNETH     | PALTROW      |
        | HANGING DEEP                | KENNETH     | PALTROW      |
        | ILLUSION AMELIE             | KENNETH     | PALTROW      |
        | INTOLERABLE INTENTIONS      | KENNETH     | PALTROW      |
        | LONELY ELEPHANT             | KENNETH     | PALTROW      |
        | MUSSOLINI SPOILERS          | KENNETH     | PALTROW      |
        | REDEMPTION COMFORTS         | KENNETH     | PALTROW      |
        | REEF SALUTE                 | KENNETH     | PALTROW      |
        | SANTA PARIS                 | KENNETH     | PALTROW      |
        | SHOW LORD                   | KENNETH     | PALTROW      |
        | SUNDANCE INVASION           | KENNETH     | PALTROW      |
        | TAXI KICK                   | KENNETH     | PALTROW      |
        | TROUBLE DATE                | KENNETH     | PALTROW      |
        | BAKED CLEOPATRA             | MICHELLE    | MCCONAUGHEY  |
        | BANG KWAI                   | MICHELLE    | MCCONAUGHEY  |
        | BOWFINGER GABLES            | MICHELLE    | MCCONAUGHEY  |
        | DADDY PITTSBURGH            | MICHELLE    | MCCONAUGHEY  |
        | DETAILS PACKER              | MICHELLE    | MCCONAUGHEY  |
        | DRACULA CRYSTAL             | MICHELLE    | MCCONAUGHEY  |
        | EVERYONE CRAFT              | MICHELLE    | MCCONAUGHEY  |
        | FARGO GANDHI                | MICHELLE    | MCCONAUGHEY  |
        | FULL FLATLINERS             | MICHELLE    | MCCONAUGHEY  |
        | HELLFIGHTERS SIERRA         | MICHELLE    | MCCONAUGHEY  |
        | IMAGE PRINCESS              | MICHELLE    | MCCONAUGHEY  |
        | INTOLERABLE INTENTIONS      | MICHELLE    | MCCONAUGHEY  |
        | KWAI HOMEWARD               | MICHELLE    | MCCONAUGHEY  |
        | MIXED DOORS                 | MICHELLE    | MCCONAUGHEY  |
        | NORTHWEST POLISH            | MICHELLE    | MCCONAUGHEY  |
        | PANKY SUBMARINE             | MICHELLE    | MCCONAUGHEY  |
        | REQUIEM TYCOON              | MICHELLE    | MCCONAUGHEY  |
        | SOUTH WAIT                  | MICHELLE    | MCCONAUGHEY  |
        | SPOILERS HELLFIGHTERS       | MICHELLE    | MCCONAUGHEY  |
        | STREETCAR INTENTIONS        | MICHELLE    | MCCONAUGHEY  |
        | SUSPECTS QUILLS             | MICHELLE    | MCCONAUGHEY  |
        | WAIT CIDER                  | MICHELLE    | MCCONAUGHEY  |
        | WATERFRONT DELIVERANCE      | MICHELLE    | MCCONAUGHEY  |
        | ANNIE IDENTITY              | ADAM        | GRANT        |
        | BALLROOM MOCKINGBIRD        | ADAM        | GRANT        |
        | DISCIPLE MOTHER             | ADAM        | GRANT        |
        | FIREBALL PHILADELPHIA       | ADAM        | GRANT        |
        | GLADIATOR WESTWARD          | ADAM        | GRANT        |
        | GLORY TRACY                 | ADAM        | GRANT        |
        | GROUNDHOG UNCUT             | ADAM        | GRANT        |
        | HAPPINESS UNITED            | ADAM        | GRANT        |
        | IDOLS SNATCHERS             | ADAM        | GRANT        |
        | LOSER HUSTLER               | ADAM        | GRANT        |
        | MARS ROMAN                  | ADAM        | GRANT        |
        | MIDNIGHT WESTWARD           | ADAM        | GRANT        |
        | OPERATION OPERATION         | ADAM        | GRANT        |
        | SEABISCUIT PUNK             | ADAM        | GRANT        |
        | SPLENDOR PATTON             | ADAM        | GRANT        |
        | TADPOLE PARK                | ADAM        | GRANT        |
        | TWISTED PIRATES             | ADAM        | GRANT        |
        | WANDA CHAMBER               | ADAM        | GRANT        |
        | ARABIA DOGMA                | SEAN        | WILLIAMS     |
        | CHINATOWN GLADIATOR         | SEAN        | WILLIAMS     |
        | DIVORCE SHINING             | SEAN        | WILLIAMS     |
        | DRACULA CRYSTAL             | SEAN        | WILLIAMS     |
        | ENOUGH RAGING               | SEAN        | WILLIAMS     |
        | EXPRESS LONELY              | SEAN        | WILLIAMS     |
        | FLOATS GARDEN               | SEAN        | WILLIAMS     |
        | FORWARD TEMPLE              | SEAN        | WILLIAMS     |
        | HAUNTED ANTITRUST           | SEAN        | WILLIAMS     |
        | IDOLS SNATCHERS             | SEAN        | WILLIAMS     |
        | MAGUIRE APACHE              | SEAN        | WILLIAMS     |
        | MUSCLE BRIGHT               | SEAN        | WILLIAMS     |
        | NEWTON LABYRINTH            | SEAN        | WILLIAMS     |
        | OLEANDER CLUE               | SEAN        | WILLIAMS     |
        | OPUS ICE                    | SEAN        | WILLIAMS     |
        | PATTON INTERVIEW            | SEAN        | WILLIAMS     |
        | REBEL AIRPORT               | SEAN        | WILLIAMS     |
        | ROOM ROMAN                  | SEAN        | WILLIAMS     |
        | SAGEBRUSH CLUELESS          | SEAN        | WILLIAMS     |
        | SEABISCUIT PUNK             | SEAN        | WILLIAMS     |
        | STRANGERS GRAFFITI          | SEAN        | WILLIAMS     |
        | SUNRISE LEAGUE              | SEAN        | WILLIAMS     |
        | VELVET TERMINATOR           | SEAN        | WILLIAMS     |
        | WANDA CHAMBER               | SEAN        | WILLIAMS     |
        | WATERFRONT DELIVERANCE      | SEAN        | WILLIAMS     |
        | WEST LION                   | SEAN        | WILLIAMS     |
        | ARGONAUTS TOWN              | GARY        | PENN         |
        | ATTRACTION NEWTON           | GARY        | PENN         |
        | BALLOON HOMEWARD            | GARY        | PENN         |
        | BIRDS PERDITION             | GARY        | PENN         |
        | CHOCOLATE DUCK              | GARY        | PENN         |
        | DOUBLE WRATH                | GARY        | PENN         |
        | EGYPT TENENBAUMS            | GARY        | PENN         |
        | FLATLINERS KILLER           | GARY        | PENN         |
        | GRAFFITI LOVE               | GARY        | PENN         |
        | GREEDY ROOTS                | GARY        | PENN         |
        | INTRIGUE WORST              | GARY        | PENN         |
        | MAGNIFICENT CHITTY          | GARY        | PENN         |
        | MASK PEACH                  | GARY        | PENN         |
        | MASKED BUBBLE               | GARY        | PENN         |
        | MATRIX SNOWMAN              | GARY        | PENN         |
        | NORTH TEQUILA               | GARY        | PENN         |
        | PAYCHECK WAIT               | GARY        | PENN         |
        | PEACH INNOCENT              | GARY        | PENN         |
        | QUEST MUSSOLINI             | GARY        | PENN         |
        | RUGRATS SHAKESPEARE         | GARY        | PENN         |
        | SEA VIRGIN                  | GARY        | PENN         |
        | SOUTH WAIT                  | GARY        | PENN         |
        | VANISHING ROCKY             | GARY        | PENN         |
        | VIRTUAL SPOILERS            | GARY        | PENN         |
        | VOLUME HOUSE                | GARY        | PENN         |
        | ZHIVAGO CORE                | GARY        | PENN         |
        | ANTHEM LUKE                 | MILLA       | KEITEL       |
        | ATTACKS HATE                | MILLA       | KEITEL       |
        | CANDLES GRAPES              | MILLA       | KEITEL       |
        | COWBOY DOOM                 | MILLA       | KEITEL       |
        | CROSSING DIVORCE            | MILLA       | KEITEL       |
        | DAISY MENAGERIE             | MILLA       | KEITEL       |
        | DURHAM PANKY                | MILLA       | KEITEL       |
        | FLASH WARS                  | MILLA       | KEITEL       |
        | HIGH ENCINO                 | MILLA       | KEITEL       |
        | JERK PAYCHECK               | MILLA       | KEITEL       |
        | KRAMER CHOCOLATE            | MILLA       | KEITEL       |
        | LOVER TRUMAN                | MILLA       | KEITEL       |
        | MADIGAN DORADO              | MILLA       | KEITEL       |
        | NATURAL STOCK               | MILLA       | KEITEL       |
        | NOON PAPI                   | MILLA       | KEITEL       |
        | OPEN AFRICAN                | MILLA       | KEITEL       |
        | PATIENT SISTER              | MILLA       | KEITEL       |
        | PURE RUNNER                 | MILLA       | KEITEL       |
        | REDEMPTION COMFORTS         | MILLA       | KEITEL       |
        | ROXANNE REBEL               | MILLA       | KEITEL       |
        | SENSIBILITY REAR            | MILLA       | KEITEL       |
        | SLEEPING SUSPECTS           | MILLA       | KEITEL       |
        | SPOILERS HELLFIGHTERS       | MILLA       | KEITEL       |
        | SQUAD FISH                  | MILLA       | KEITEL       |
        | STONE FIRE                  | MILLA       | KEITEL       |
        | SWEET BROTHERHOOD           | MILLA       | KEITEL       |
        | TRADING PINOCCHIO           | MILLA       | KEITEL       |
        | WANDA CHAMBER               | MILLA       | KEITEL       |
        | ALASKA PHANTOM              | BURT        | POSEY        |
        | ARABIA DOGMA                | BURT        | POSEY        |
        | CHILL LUCK                  | BURT        | POSEY        |
        | COMMAND DARLING             | BURT        | POSEY        |
        | DESERT POSEIDON             | BURT        | POSEY        |
        | FAMILY SWEET                | BURT        | POSEY        |
        | GAMES BOWFINGER             | BURT        | POSEY        |
        | GRACELAND DYNAMITE          | BURT        | POSEY        |
        | HOURS RAGE                  | BURT        | POSEY        |
        | HYDE DOCTOR                 | BURT        | POSEY        |
        | HYSTERICAL GRAIL            | BURT        | POSEY        |
        | JUNGLE CLOSER               | BURT        | POSEY        |
        | KILLER INNOCENT             | BURT        | POSEY        |
        | LAMBS CINCINATTI            | BURT        | POSEY        |
        | LUKE MUMMY                  | BURT        | POSEY        |
        | MAGIC MALLRATS              | BURT        | POSEY        |
        | MINDS TRUMAN                | BURT        | POSEY        |
        | OTHERS SOUP                 | BURT        | POSEY        |
        | PEACH INNOCENT              | BURT        | POSEY        |
        | ROOTS REMEMBER              | BURT        | POSEY        |
        | SATURDAY LAMBS              | BURT        | POSEY        |
        | SENSIBILITY REAR            | BURT        | POSEY        |
        | SWARM GOLD                  | BURT        | POSEY        |
        | UNBREAKABLE KARATE          | BURT        | POSEY        |
        | BEAST HUNCHBACK             | ANGELINA    | ASTAIRE      |
        | BENEATH RUSH                | ANGELINA    | ASTAIRE      |
        | BETRAYED REAR               | ANGELINA    | ASTAIRE      |
        | BREAKFAST GOLDFINGER        | ANGELINA    | ASTAIRE      |
        | CARRIE BUNCH                | ANGELINA    | ASTAIRE      |
        | CRANES RESERVOIR            | ANGELINA    | ASTAIRE      |
        | DESIRE ALIEN                | ANGELINA    | ASTAIRE      |
        | DISTURBING SCARFACE         | ANGELINA    | ASTAIRE      |
        | DRAGONFLY STRANGERS         | ANGELINA    | ASTAIRE      |
        | GANDHI KWAI                 | ANGELINA    | ASTAIRE      |
        | HUSTLER PARTY               | ANGELINA    | ASTAIRE      |
        | INTENTIONS EMPIRE           | ANGELINA    | ASTAIRE      |
        | JADE BUNCH                  | ANGELINA    | ASTAIRE      |
        | KILLER INNOCENT             | ANGELINA    | ASTAIRE      |
        | MEMENTO ZOOLANDER           | ANGELINA    | ASTAIRE      |
        | MULAN MOON                  | ANGELINA    | ASTAIRE      |
        | MUMMY CREATURES             | ANGELINA    | ASTAIRE      |
        | ORDER BETRAYED              | ANGELINA    | ASTAIRE      |
        | OUTLAW HANKY                | ANGELINA    | ASTAIRE      |
        | PACIFIC AMISTAD             | ANGELINA    | ASTAIRE      |
        | RACER EGG                   | ANGELINA    | ASTAIRE      |
        | SAMURAI LION                | ANGELINA    | ASTAIRE      |
        | SATURN NAME                 | ANGELINA    | ASTAIRE      |
        | SEVEN SWARM                 | ANGELINA    | ASTAIRE      |
        | STORY SIDE                  | ANGELINA    | ASTAIRE      |
        | SUMMER SCARFACE             | ANGELINA    | ASTAIRE      |
        | SUNSET RACER                | ANGELINA    | ASTAIRE      |
        | SWARM GOLD                  | ANGELINA    | ASTAIRE      |
        | TROJAN TOMORROW             | ANGELINA    | ASTAIRE      |
        | VANISHED GARDEN             | ANGELINA    | ASTAIRE      |
        | WARDROBE PHANTOM            | ANGELINA    | ASTAIRE      |
        | ALI FOREVER                 | CARY        | MCCONAUGHEY  |
        | AMISTAD MIDSUMMER           | CARY        | MCCONAUGHEY  |
        | ARMY FLINTSTONES            | CARY        | MCCONAUGHEY  |
        | BINGO TALENTED              | CARY        | MCCONAUGHEY  |
        | BLACKOUT PRIVATE            | CARY        | MCCONAUGHEY  |
        | CITIZEN SHREK               | CARY        | MCCONAUGHEY  |
        | DESPERATE TRAINSPOTTING     | CARY        | MCCONAUGHEY  |
        | DOLLS RAGE                  | CARY        | MCCONAUGHEY  |
        | DOUBLE WRATH                | CARY        | MCCONAUGHEY  |
        | DUFFEL APOCALYPSE           | CARY        | MCCONAUGHEY  |
        | FULL FLATLINERS             | CARY        | MCCONAUGHEY  |
        | HUNTING MUSKETEERS          | CARY        | MCCONAUGHEY  |
        | INDIAN LOVE                 | CARY        | MCCONAUGHEY  |
        | LOVERBOY ATTACKS            | CARY        | MCCONAUGHEY  |
        | MAUDE MOD                   | CARY        | MCCONAUGHEY  |
        | MUSSOLINI SPOILERS          | CARY        | MCCONAUGHEY  |
        | OKLAHOMA JUMANJI            | CARY        | MCCONAUGHEY  |
        | PREJUDICE OLEANDER          | CARY        | MCCONAUGHEY  |
        | RULES HUMAN                 | CARY        | MCCONAUGHEY  |
        | VELVET TERMINATOR           | CARY        | MCCONAUGHEY  |
        | VILLAIN DESPERATE           | CARY        | MCCONAUGHEY  |
        | WATCH TRACY                 | CARY        | MCCONAUGHEY  |
        | WEST LION                   | CARY        | MCCONAUGHEY  |
        | WRONG BEHAVIOR              | CARY        | MCCONAUGHEY  |
        | BOOGIE AMELIE               | GROUCHO     | SINATRA      |
        | DOGMA FAMILY                | GROUCHO     | SINATRA      |
        | DUDE BLINDNESS              | GROUCHO     | SINATRA      |
        | DUFFEL APOCALYPSE           | GROUCHO     | SINATRA      |
        | DYING MAKER                 | GROUCHO     | SINATRA      |
        | FAMILY SWEET                | GROUCHO     | SINATRA      |
        | GUN BONNIE                  | GROUCHO     | SINATRA      |
        | HALLOWEEN NUTS              | GROUCHO     | SINATRA      |
        | HOMICIDE PEACH              | GROUCHO     | SINATRA      |
        | INDEPENDENCE HOTEL          | GROUCHO     | SINATRA      |
        | LABYRINTH LEAGUE            | GROUCHO     | SINATRA      |
        | LICENSE WEEKEND             | GROUCHO     | SINATRA      |
        | LORD ARIZONA                | GROUCHO     | SINATRA      |
        | MAGNOLIA FORRESTER          | GROUCHO     | SINATRA      |
        | MAJESTIC FLOATS             | GROUCHO     | SINATRA      |
        | MOTHER OLEANDER             | GROUCHO     | SINATRA      |
        | PELICAN COMFORTS            | GROUCHO     | SINATRA      |
        | PET HAUNTING                | GROUCHO     | SINATRA      |
        | POLLOCK DELIVERANCE         | GROUCHO     | SINATRA      |
        | SASSY PACKER                | GROUCHO     | SINATRA      |
        | SCALAWAG DUCK               | GROUCHO     | SINATRA      |
        | SMILE EARRING               | GROUCHO     | SINATRA      |
        | STRANGELOVE DESIRE          | GROUCHO     | SINATRA      |
        | TELEMARK HEARTBREAKERS      | GROUCHO     | SINATRA      |
        | WATCH TRACY                 | GROUCHO     | SINATRA      |
        | WEREWOLF LOLA               | GROUCHO     | SINATRA      |
        | APOCALYPSE FLAMINGOS        | MAE         | HOFFMAN      |
        | APOLLO TEEN                 | MAE         | HOFFMAN      |
        | ARMY FLINTSTONES            | MAE         | HOFFMAN      |
        | CHICAGO NORTH               | MAE         | HOFFMAN      |
        | DANCES NONE                 | MAE         | HOFFMAN      |
        | DIARY PANIC                 | MAE         | HOFFMAN      |
        | DOOM DANCING                | MAE         | HOFFMAN      |
        | DUMBO LUST                  | MAE         | HOFFMAN      |
        | EAGLES PANKY                | MAE         | HOFFMAN      |
        | EARRING INSTINCT            | MAE         | HOFFMAN      |
        | FACTORY DRAGON              | MAE         | HOFFMAN      |
        | GOLDMINE TYCOON             | MAE         | HOFFMAN      |
        | HOMICIDE PEACH              | MAE         | HOFFMAN      |
        | HOOK CHARIOTS               | MAE         | HOFFMAN      |
        | JACKET FRISCO               | MAE         | HOFFMAN      |
        | MUPPET MILE                 | MAE         | HOFFMAN      |
        | NORTHWEST POLISH            | MAE         | HOFFMAN      |
        | ODDS BOOGIE                 | MAE         | HOFFMAN      |
        | OUTBREAK DIVINE             | MAE         | HOFFMAN      |
        | RESURRECTION SILVERADO      | MAE         | HOFFMAN      |
        | RUN PACIFIC                 | MAE         | HOFFMAN      |
        | RUSH GOODFELLAS             | MAE         | HOFFMAN      |
        | SCHOOL JACKET               | MAE         | HOFFMAN      |
        | SECRET GROUNDHOG            | MAE         | HOFFMAN      |
        | SHIP WONDERLAND             | MAE         | HOFFMAN      |
        | STAMPEDE DISTURBING         | MAE         | HOFFMAN      |
        | STRANGER STRANGERS          | MAE         | HOFFMAN      |
        | TURN STAR                   | MAE         | HOFFMAN      |
        | BEVERLY OUTLAW              | RALPH       | CRUZ         |
        | CANYON STOCK                | RALPH       | CRUZ         |
        | CASPER DRAGONFLY            | RALPH       | CRUZ         |
        | CONFUSED CANDLES            | RALPH       | CRUZ         |
        | DANGEROUS UPTOWN            | RALPH       | CRUZ         |
        | DARN FORRESTER              | RALPH       | CRUZ         |
        | DUDE BLINDNESS              | RALPH       | CRUZ         |
        | DUMBO LUST                  | RALPH       | CRUZ         |
        | EMPIRE MALKOVICH            | RALPH       | CRUZ         |
        | FROST HEAD                  | RALPH       | CRUZ         |
        | FUGITIVE MAGUIRE            | RALPH       | CRUZ         |
        | FULL FLATLINERS             | RALPH       | CRUZ         |
        | GLORY TRACY                 | RALPH       | CRUZ         |
        | HOURS RAGE                  | RALPH       | CRUZ         |
        | JAPANESE RUN                | RALPH       | CRUZ         |
        | MAKER GABLES                | RALPH       | CRUZ         |
        | NEIGHBORS CHARADE           | RALPH       | CRUZ         |
        | NEWSIES STORY               | RALPH       | CRUZ         |
        | PINOCCHIO SIMON             | RALPH       | CRUZ         |
        | POCUS PULP                  | RALPH       | CRUZ         |
        | POLISH BROOKLYN             | RALPH       | CRUZ         |
        | RACER EGG                   | RALPH       | CRUZ         |
        | SHIP WONDERLAND             | RALPH       | CRUZ         |
        | SLEUTH ORIENT               | RALPH       | CRUZ         |
        | SUBMARINE BED               | RALPH       | CRUZ         |
        | THIN SAGEBRUSH              | RALPH       | CRUZ         |
        | VIDEOTAPE ARSENIC           | RALPH       | CRUZ         |
        | WITCHES PANIC               | RALPH       | CRUZ         |
        | AFFAIR PREJUDICE            | SCARLETT    | DAMON        |
        | ALAMO VIDEOTAPE             | SCARLETT    | DAMON        |
        | BEAR GRACELAND              | SCARLETT    | DAMON        |
        | BORROWERS BEDAZZLED         | SCARLETT    | DAMON        |
        | CONNECTION MICROCOSMOS      | SCARLETT    | DAMON        |
        | CRAFT OUTFIELD              | SCARLETT    | DAMON        |
        | CROW GREASE                 | SCARLETT    | DAMON        |
        | DAWN POND                   | SCARLETT    | DAMON        |
        | DEEP CRUSADE                | SCARLETT    | DAMON        |
        | DIRTY ACE                   | SCARLETT    | DAMON        |
        | DUDE BLINDNESS              | SCARLETT    | DAMON        |
        | EAGLES PANKY                | SCARLETT    | DAMON        |
        | EARLY HOME                  | SCARLETT    | DAMON        |
        | FARGO GANDHI                | SCARLETT    | DAMON        |
        | FRANKENSTEIN STRANGER       | SCARLETT    | DAMON        |
        | GUNFIGHTER MUSSOLINI        | SCARLETT    | DAMON        |
        | HANOVER GALAXY              | SCARLETT    | DAMON        |
        | IMAGE PRINCESS              | SCARLETT    | DAMON        |
        | INDIAN LOVE                 | SCARLETT    | DAMON        |
        | INTERVIEW LIAISONS          | SCARLETT    | DAMON        |
        | LABYRINTH LEAGUE            | SCARLETT    | DAMON        |
        | LAMBS CINCINATTI            | SCARLETT    | DAMON        |
        | LOLA AGENT                  | SCARLETT    | DAMON        |
        | MADNESS ATTACKS             | SCARLETT    | DAMON        |
        | MASSAGE IMAGE               | SCARLETT    | DAMON        |
        | MILLION ACE                 | SCARLETT    | DAMON        |
        | MINDS TRUMAN                | SCARLETT    | DAMON        |
        | MYSTIC TRUMAN               | SCARLETT    | DAMON        |
        | NEIGHBORS CHARADE           | SCARLETT    | DAMON        |
        | ORIENT CLOSER               | SCARLETT    | DAMON        |
        | POTLUCK MIXED               | SCARLETT    | DAMON        |
        | RAGE GAMES                  | SCARLETT    | DAMON        |
        | RIDER CADDYSHACK            | SCARLETT    | DAMON        |
        | SANTA PARIS                 | SCARLETT    | DAMON        |
        | SPICE SORORITY              | SCARLETT    | DAMON        |
        | TREATMENT JEKYLL            | SCARLETT    | DAMON        |
        | ALONE TRIP                  | WOODY       | JOLIE        |
        | APOLLO TEEN                 | WOODY       | JOLIE        |
        | BUGSY SONG                  | WOODY       | JOLIE        |
        | CHILL LUCK                  | WOODY       | JOLIE        |
        | CRAZY HOME                  | WOODY       | JOLIE        |
        | DOOM DANCING                | WOODY       | JOLIE        |
        | DOWNHILL ENOUGH             | WOODY       | JOLIE        |
        | EVERYONE CRAFT              | WOODY       | JOLIE        |
        | FEATHERS METAL              | WOODY       | JOLIE        |
        | FIRE WOLVES                 | WOODY       | JOLIE        |
        | FURY MURDER                 | WOODY       | JOLIE        |
        | IMAGE PRINCESS              | WOODY       | JOLIE        |
        | INVASION CYCLONE            | WOODY       | JOLIE        |
        | JEEPERS WEDDING             | WOODY       | JOLIE        |
        | KILL BROTHERHOOD            | WOODY       | JOLIE        |
        | KRAMER CHOCOLATE            | WOODY       | JOLIE        |
        | LOLA AGENT                  | WOODY       | JOLIE        |
        | MAIDEN HOME                 | WOODY       | JOLIE        |
        | MASK PEACH                  | WOODY       | JOLIE        |
        | RUN PACIFIC                 | WOODY       | JOLIE        |
        | SHINING ROSES               | WOODY       | JOLIE        |
        | SKY MIRACLE                 | WOODY       | JOLIE        |
        | STAGECOACH ARMAGEDDON       | WOODY       | JOLIE        |
        | STALLION SUNDANCE           | WOODY       | JOLIE        |
        | SWARM GOLD                  | WOODY       | JOLIE        |
        | TAXI KICK                   | WOODY       | JOLIE        |
        | TITANS JERK                 | WOODY       | JOLIE        |
        | TRIP NEWTON                 | WOODY       | JOLIE        |
        | WAKE JAWS                   | WOODY       | JOLIE        |
        | WISDOM WORKER               | WOODY       | JOLIE        |
        | WONDERLAND CHRISTMAS        | WOODY       | JOLIE        |
        | BADMAN DAWN                 | BEN         | WILLIS       |
        | BALLROOM MOCKINGBIRD        | BEN         | WILLIS       |
        | BEACH HEARTBREAKERS         | BEN         | WILLIS       |
        | CABIN FLASH                 | BEN         | WILLIS       |
        | CARIBBEAN LIBERTY           | BEN         | WILLIS       |
        | CAROL TEXAS                 | BEN         | WILLIS       |
        | CHANCE RESURRECTION         | BEN         | WILLIS       |
        | COLDBLOODED DARLING         | BEN         | WILLIS       |
        | DAZED PUNK                  | BEN         | WILLIS       |
        | DOWNHILL ENOUGH             | BEN         | WILLIS       |
        | DRACULA CRYSTAL             | BEN         | WILLIS       |
        | DURHAM PANKY                | BEN         | WILLIS       |
        | EARLY HOME                  | BEN         | WILLIS       |
        | ELIZABETH SHANE             | BEN         | WILLIS       |
        | ENCINO ELF                  | BEN         | WILLIS       |
        | FROGMEN BREAKING            | BEN         | WILLIS       |
        | FRONTIER CABIN              | BEN         | WILLIS       |
        | GOODFELLAS SALUTE           | BEN         | WILLIS       |
        | HEAVYWEIGHTS BEAST          | BEN         | WILLIS       |
        | LIBERTY MAGNIFICENT         | BEN         | WILLIS       |
        | LONELY ELEPHANT             | BEN         | WILLIS       |
        | NASH CHOCOLAT               | BEN         | WILLIS       |
        | NOVOCAINE FLIGHT            | BEN         | WILLIS       |
        | PANTHER REDS                | BEN         | WILLIS       |
        | PERFECT GROOVE              | BEN         | WILLIS       |
        | PLUTO OLEANDER              | BEN         | WILLIS       |
        | RECORDS ZORRO               | BEN         | WILLIS       |
        | SATURDAY LAMBS              | BEN         | WILLIS       |
        | SECRETARY ROUGE             | BEN         | WILLIS       |
        | SHANGHAI TYCOON             | BEN         | WILLIS       |
        | SPLENDOR PATTON             | BEN         | WILLIS       |
        | SWEETHEARTS SUSPECTS        | BEN         | WILLIS       |
        | VALLEY PACKER               | BEN         | WILLIS       |
        | AMADEUS HOLY                | JAMES       | PITT         |
        | ARMAGEDDON LOST             | JAMES       | PITT         |
        | AUTUMN CROW                 | JAMES       | PITT         |
        | CONFUSED CANDLES            | JAMES       | PITT         |
        | DOCTOR GRAIL                | JAMES       | PITT         |
        | ENCINO ELF                  | JAMES       | PITT         |
        | EVERYONE CRAFT              | JAMES       | PITT         |
        | FIDDLER LOST                | JAMES       | PITT         |
        | FIREBALL PHILADELPHIA       | JAMES       | PITT         |
        | HEDWIG ALTER                | JAMES       | PITT         |
        | HELLFIGHTERS SIERRA         | JAMES       | PITT         |
        | INNOCENT USUAL              | JAMES       | PITT         |
        | JEDI BENEATH                | JAMES       | PITT         |
        | JUMPING WRATH               | JAMES       | PITT         |
        | LONELY ELEPHANT             | JAMES       | PITT         |
        | LUCKY FLYING                | JAMES       | PITT         |
        | MAUDE MOD                   | JAMES       | PITT         |
        | MIDNIGHT WESTWARD           | JAMES       | PITT         |
        | MODERN DORADO               | JAMES       | PITT         |
        | NATIONAL STORY              | JAMES       | PITT         |
        | OUTBREAK DIVINE             | JAMES       | PITT         |
        | PUNK DIVORCE                | JAMES       | PITT         |
        | RIDER CADDYSHACK            | JAMES       | PITT         |
        | SATURDAY LAMBS              | JAMES       | PITT         |
        | SHAKESPEARE SADDLE          | JAMES       | PITT         |
        | SLIPPER FIDELITY            | JAMES       | PITT         |
        | SPIRIT FLINTSTONES          | JAMES       | PITT         |
        | STEEL SANTA                 | JAMES       | PITT         |
        | THIEF PELICAN               | JAMES       | PITT         |
        | WILLOW TRACY                | JAMES       | PITT         |
        | YOUNG LANGUAGE              | JAMES       | PITT         |
        | ACE GOLDFINGER              | MINNIE      | ZELLWEGER    |
        | ALICE FANTASIA              | MINNIE      | ZELLWEGER    |
        | BILL OTHERS                 | MINNIE      | ZELLWEGER    |
        | BONNIE HOLOCAUST            | MINNIE      | ZELLWEGER    |
        | BOWFINGER GABLES            | MINNIE      | ZELLWEGER    |
        | CHOCOLATE DUCK              | MINNIE      | ZELLWEGER    |
        | DAY UNFAITHFUL              | MINNIE      | ZELLWEGER    |
        | EVERYONE CRAFT              | MINNIE      | ZELLWEGER    |
        | EXPRESS LONELY              | MINNIE      | ZELLWEGER    |
        | EXTRAORDINARY CONQUERER     | MINNIE      | ZELLWEGER    |
        | FRIDA SLIPPER               | MINNIE      | ZELLWEGER    |
        | GROOVE FICTION              | MINNIE      | ZELLWEGER    |
        | HOLIDAY GAMES               | MINNIE      | ZELLWEGER    |
        | HYSTERICAL GRAIL            | MINNIE      | ZELLWEGER    |
        | INSECTS STONE               | MINNIE      | ZELLWEGER    |
        | JAPANESE RUN                | MINNIE      | ZELLWEGER    |
        | JAWS HARRY                  | MINNIE      | ZELLWEGER    |
        | LIFE TWISTED                | MINNIE      | ZELLWEGER    |
        | MADIGAN DORADO              | MINNIE      | ZELLWEGER    |
        | MANNEQUIN WORST             | MINNIE      | ZELLWEGER    |
        | MONSOON CAUSE               | MINNIE      | ZELLWEGER    |
        | NOTTING SPEAKEASY           | MINNIE      | ZELLWEGER    |
        | PICKUP DRIVING              | MINNIE      | ZELLWEGER    |
        | RAGING AIRPLANE             | MINNIE      | ZELLWEGER    |
        | SANTA PARIS                 | MINNIE      | ZELLWEGER    |
        | SMOKING BARBARELLA          | MINNIE      | ZELLWEGER    |
        | SUSPECTS QUILLS             | MINNIE      | ZELLWEGER    |
        | TALENTED HOMICIDE           | MINNIE      | ZELLWEGER    |
        | TOMORROW HUSTLER            | MINNIE      | ZELLWEGER    |
        | WAR NOTTING                 | MINNIE      | ZELLWEGER    |
        | WARS PLUTO                  | MINNIE      | ZELLWEGER    |
        | CHARADE DUFFEL              | GREG        | CHAPLIN      |
        | CLYDE THEORY                | GREG        | CHAPLIN      |
        | CRUELTY UNFORGIVEN          | GREG        | CHAPLIN      |
        | DAY UNFAITHFUL              | GREG        | CHAPLIN      |
        | DRACULA CRYSTAL             | GREG        | CHAPLIN      |
        | FANTASY TROOPERS            | GREG        | CHAPLIN      |
        | FORWARD TEMPLE              | GREG        | CHAPLIN      |
        | GODFATHER DIARY             | GREG        | CHAPLIN      |
        | HALF OUTFIELD               | GREG        | CHAPLIN      |
        | HOPE TOOTSIE                | GREG        | CHAPLIN      |
        | JEOPARDY ENCINO             | GREG        | CHAPLIN      |
        | JET NEIGHBORS               | GREG        | CHAPLIN      |
        | LIBERTY MAGNIFICENT         | GREG        | CHAPLIN      |
        | LICENSE WEEKEND             | GREG        | CHAPLIN      |
        | MAGNIFICENT CHITTY          | GREG        | CHAPLIN      |
        | NEWTON LABYRINTH            | GREG        | CHAPLIN      |
        | NOVOCAINE FLIGHT            | GREG        | CHAPLIN      |
        | OLEANDER CLUE               | GREG        | CHAPLIN      |
        | RUNNER MADIGAN              | GREG        | CHAPLIN      |
        | SAMURAI LION                | GREG        | CHAPLIN      |
        | SLING LUKE                  | GREG        | CHAPLIN      |
        | STRICTLY SCARFACE           | GREG        | CHAPLIN      |
        | TEEN APOLLO                 | GREG        | CHAPLIN      |
        | TITANS JERK                 | GREG        | CHAPLIN      |
        | TRAINSPOTTING STRANGERS     | GREG        | CHAPLIN      |
        | UNFAITHFUL KILL             | GREG        | CHAPLIN      |
        | USUAL UNTOUCHABLES          | GREG        | CHAPLIN      |
        | BACKLASH UNDEFEATED         | SPENCER     | PECK         |
        | CLOCKWORK PARADISE          | SPENCER     | PECK         |
        | CLUE GRAIL                  | SPENCER     | PECK         |
        | CUPBOARD SINNERS            | SPENCER     | PECK         |
        | DANGEROUS UPTOWN            | SPENCER     | PECK         |
        | DRAGON SQUAD                | SPENCER     | PECK         |
        | DRIFTER COMMANDMENTS        | SPENCER     | PECK         |
        | FIDDLER LOST                | SPENCER     | PECK         |
        | HOLIDAY GAMES               | SPENCER     | PECK         |
        | MERMAID INSECTS             | SPENCER     | PECK         |
        | MOTHER OLEANDER             | SPENCER     | PECK         |
        | MUMMY CREATURES             | SPENCER     | PECK         |
        | PANKY SUBMARINE             | SPENCER     | PECK         |
        | PILOT HOOSIERS              | SPENCER     | PECK         |
        | QUEEN LUKE                  | SPENCER     | PECK         |
        | REBEL AIRPORT               | SPENCER     | PECK         |
        | REDS POCUS                  | SPENCER     | PECK         |
        | SPIRIT FLINTSTONES          | SPENCER     | PECK         |
        | SWARM GOLD                  | SPENCER     | PECK         |
        | WAGON JAWS                  | SPENCER     | PECK         |
        | WASH HEAVENLY               | SPENCER     | PECK         |
        | AFFAIR PREJUDICE            | KENNETH     | PESCI        |
        | BIRDCAGE CASPER             | KENNETH     | PESCI        |
        | BOONDOCK BALLROOM           | KENNETH     | PESCI        |
        | CATCH AMISTAD               | KENNETH     | PESCI        |
        | COMMAND DARLING             | KENNETH     | PESCI        |
        | CROSSROADS CASUALTIES       | KENNETH     | PESCI        |
        | DISTURBING SCARFACE         | KENNETH     | PESCI        |
        | FARGO GANDHI                | KENNETH     | PESCI        |
        | MOURNING PURPLE             | KENNETH     | PESCI        |
        | NEMO CAMPUS                 | KENNETH     | PESCI        |
        | PEAK FOREVER                | KENNETH     | PESCI        |
        | REAR TRADING                | KENNETH     | PESCI        |
        | SHAWSHANK BUBBLE            | KENNETH     | PESCI        |
        | SONG HEDWIG                 | KENNETH     | PESCI        |
        | STALLION SUNDANCE           | KENNETH     | PESCI        |
        | TEMPLE ATTRACTION           | KENNETH     | PESCI        |
        | TRAP GUYS                   | KENNETH     | PESCI        |
        | USUAL UNTOUCHABLES          | KENNETH     | PESCI        |
        | VICTORY ACADEMY             | KENNETH     | PESCI        |
        | WEREWOLF LOLA               | KENNETH     | PESCI        |
        | BABY HALL                   | CHARLIZE    | DENCH        |
        | BUCKET BROTHERHOOD          | CHARLIZE    | DENCH        |
        | CANDLES GRAPES              | CHARLIZE    | DENCH        |
        | CLUELESS BUCKET             | CHARLIZE    | DENCH        |
        | CONTROL ANTHEM              | CHARLIZE    | DENCH        |
        | CRANES RESERVOIR            | CHARLIZE    | DENCH        |
        | DARN FORRESTER              | CHARLIZE    | DENCH        |
        | DRIVER ANNIE                | CHARLIZE    | DENCH        |
        | DYNAMITE TARZAN             | CHARLIZE    | DENCH        |
        | FEATHERS METAL              | CHARLIZE    | DENCH        |
        | FUGITIVE MAGUIRE            | CHARLIZE    | DENCH        |
        | HAUNTING PIANIST            | CHARLIZE    | DENCH        |
        | HEAVEN FREEDOM              | CHARLIZE    | DENCH        |
        | HYSTERICAL GRAIL            | CHARLIZE    | DENCH        |
        | JACKET FRISCO               | CHARLIZE    | DENCH        |
        | JOON NORTHWEST              | CHARLIZE    | DENCH        |
        | LONELY ELEPHANT             | CHARLIZE    | DENCH        |
        | LUST LOCK                   | CHARLIZE    | DENCH        |
        | MASSAGE IMAGE               | CHARLIZE    | DENCH        |
        | PRIMARY GLASS               | CHARLIZE    | DENCH        |
        | SPLENDOR PATTON             | CHARLIZE    | DENCH        |
        | SUNDANCE INVASION           | CHARLIZE    | DENCH        |
        | WESTWARD SEABISCUIT         | CHARLIZE    | DENCH        |
        | WIND PHANTOM                | CHARLIZE    | DENCH        |
        | ACE GOLDFINGER              | SEAN        | GUINESS      |
        | ALAMO VIDEOTAPE             | SEAN        | GUINESS      |
        | BROOKLYN DESERT             | SEAN        | GUINESS      |
        | CRUSADE HONEY               | SEAN        | GUINESS      |
        | DARN FORRESTER              | SEAN        | GUINESS      |
        | DUMBO LUST                  | SEAN        | GUINESS      |
        | FANTASY TROOPERS            | SEAN        | GUINESS      |
        | FORRESTER COMANCHEROS       | SEAN        | GUINESS      |
        | GO PURPLE                   | SEAN        | GUINESS      |
        | GRAFFITI LOVE               | SEAN        | GUINESS      |
        | GROSSE WONDERFUL            | SEAN        | GUINESS      |
        | GROUNDHOG UNCUT             | SEAN        | GUINESS      |
        | HALF OUTFIELD               | SEAN        | GUINESS      |
        | HAUNTING PIANIST            | SEAN        | GUINESS      |
        | HORN WORKING                | SEAN        | GUINESS      |
        | HUNTING MUSKETEERS          | SEAN        | GUINESS      |
        | IGBY MAKER                  | SEAN        | GUINESS      |
        | LICENSE WEEKEND             | SEAN        | GUINESS      |
        | LONELY ELEPHANT             | SEAN        | GUINESS      |
        | LUST LOCK                   | SEAN        | GUINESS      |
        | MOCKINGBIRD HOLLYWOOD       | SEAN        | GUINESS      |
        | OCTOBER SUBMARINE           | SEAN        | GUINESS      |
        | PATIENT SISTER              | SEAN        | GUINESS      |
        | PHILADELPHIA WIFE           | SEAN        | GUINESS      |
        | SCORPION APOLLO             | SEAN        | GUINESS      |
        | SOLDIERS EVOLUTION          | SEAN        | GUINESS      |
        | STAGECOACH ARMAGEDDON       | SEAN        | GUINESS      |
        | STREAK RIDGEMONT            | SEAN        | GUINESS      |
        | SUBMARINE BED               | SEAN        | GUINESS      |
        | SUPERFLY TRIP               | SEAN        | GUINESS      |
        | TELEMARK HEARTBREAKERS      | SEAN        | GUINESS      |
        | TRACY CIDER                 | SEAN        | GUINESS      |
        | UNITED PILOT                | SEAN        | GUINESS      |
        | ALI FOREVER                 | CHRISTOPHER | BERRY        |
        | ANGELS LIFE                 | CHRISTOPHER | BERRY        |
        | BACKLASH UNDEFEATED         | CHRISTOPHER | BERRY        |
        | CONGENIALITY QUEST          | CHRISTOPHER | BERRY        |
        | CONTACT ANONYMOUS           | CHRISTOPHER | BERRY        |
        | CREEPERS KANE               | CHRISTOPHER | BERRY        |
        | FREEDOM CLEOPATRA           | CHRISTOPHER | BERRY        |
        | HIGHBALL POTTER             | CHRISTOPHER | BERRY        |
        | ICE CROSSING                | CHRISTOPHER | BERRY        |
        | JEEPERS WEDDING             | CHRISTOPHER | BERRY        |
        | KANE EXORCIST               | CHRISTOPHER | BERRY        |
        | LANGUAGE COWBOY             | CHRISTOPHER | BERRY        |
        | LAWRENCE LOVE               | CHRISTOPHER | BERRY        |
        | MURDER ANTITRUST            | CHRISTOPHER | BERRY        |
        | SLEUTH ORIENT               | CHRISTOPHER | BERRY        |
        | SPINAL ROCKY                | CHRISTOPHER | BERRY        |
        | STORM HAPPINESS             | CHRISTOPHER | BERRY        |
        | SUGAR WONKA                 | CHRISTOPHER | BERRY        |
        | VIDEOTAPE ARSENIC           | CHRISTOPHER | BERRY        |
        | WOMEN DORADO                | CHRISTOPHER | BERRY        |
        | BOULEVARD MOB               | KIRSTEN     | AKROYD       |
        | BRAVEHEART HUMAN            | KIRSTEN     | AKROYD       |
        | BUCKET BROTHERHOOD          | KIRSTEN     | AKROYD       |
        | BUGSY SONG                  | KIRSTEN     | AKROYD       |
        | CASABLANCA SUPER            | KIRSTEN     | AKROYD       |
        | CHARADE DUFFEL              | KIRSTEN     | AKROYD       |
        | DANGEROUS UPTOWN            | KIRSTEN     | AKROYD       |
        | DEVIL DESIRE                | KIRSTEN     | AKROYD       |
        | FRISCO FORREST              | KIRSTEN     | AKROYD       |
        | GRINCH MASSAGE              | KIRSTEN     | AKROYD       |
        | HOURS RAGE                  | KIRSTEN     | AKROYD       |
        | HURRICANE AFFAIR            | KIRSTEN     | AKROYD       |
        | IMAGE PRINCESS              | KIRSTEN     | AKROYD       |
        | ISHTAR ROCKETEER            | KIRSTEN     | AKROYD       |
        | LABYRINTH LEAGUE            | KIRSTEN     | AKROYD       |
        | LEAGUE HELLFIGHTERS         | KIRSTEN     | AKROYD       |
        | MADIGAN DORADO              | KIRSTEN     | AKROYD       |
        | MADNESS ATTACKS             | KIRSTEN     | AKROYD       |
        | MAGIC MALLRATS              | KIRSTEN     | AKROYD       |
        | MAKER GABLES                | KIRSTEN     | AKROYD       |
        | MASSAGE IMAGE               | KIRSTEN     | AKROYD       |
        | MEMENTO ZOOLANDER           | KIRSTEN     | AKROYD       |
        | NECKLACE OUTBREAK           | KIRSTEN     | AKROYD       |
        | PATHS CONTROL               | KIRSTEN     | AKROYD       |
        | PLUTO OLEANDER              | KIRSTEN     | AKROYD       |
        | PRIVATE DROP                | KIRSTEN     | AKROYD       |
        | RAIDERS ANTITRUST           | KIRSTEN     | AKROYD       |
        | REUNION WITCHES             | KIRSTEN     | AKROYD       |
        | SKY MIRACLE                 | KIRSTEN     | AKROYD       |
        | SPEAKEASY DATE              | KIRSTEN     | AKROYD       |
        | STAGECOACH ARMAGEDDON       | KIRSTEN     | AKROYD       |
        | TIES HUNGER                 | KIRSTEN     | AKROYD       |
        | USUAL UNTOUCHABLES          | KIRSTEN     | AKROYD       |
        | WORST BANGER                | KIRSTEN     | AKROYD       |
        | BILKO ANONYMOUS             | ELLEN       | PRESLEY      |
        | CARIBBEAN LIBERTY           | ELLEN       | PRESLEY      |
        | CASPER DRAGONFLY            | ELLEN       | PRESLEY      |
        | EMPIRE MALKOVICH            | ELLEN       | PRESLEY      |
        | FLOATS GARDEN               | ELLEN       | PRESLEY      |
        | FROGMEN BREAKING            | ELLEN       | PRESLEY      |
        | HOMEWARD CIDER              | ELLEN       | PRESLEY      |
        | HYDE DOCTOR                 | ELLEN       | PRESLEY      |
        | IMAGE PRINCESS              | ELLEN       | PRESLEY      |
        | JACKET FRISCO               | ELLEN       | PRESLEY      |
        | MICROCOSMOS PARADISE        | ELLEN       | PRESLEY      |
        | NETWORK PEAK                | ELLEN       | PRESLEY      |
        | OSCAR GOLD                  | ELLEN       | PRESLEY      |
        | PICKUP DRIVING              | ELLEN       | PRESLEY      |
        | PINOCCHIO SIMON             | ELLEN       | PRESLEY      |
        | PRIVATE DROP                | ELLEN       | PRESLEY      |
        | ROOTS REMEMBER              | ELLEN       | PRESLEY      |
        | SCARFACE BANG               | ELLEN       | PRESLEY      |
        | SECRETARY ROUGE             | ELLEN       | PRESLEY      |
        | SPY MILE                    | ELLEN       | PRESLEY      |
        | STREETCAR INTENTIONS        | ELLEN       | PRESLEY      |
        | TADPOLE PARK                | ELLEN       | PRESLEY      |
        | TREASURE COMMAND            | ELLEN       | PRESLEY      |
        | TURN STAR                   | ELLEN       | PRESLEY      |
        | WOMEN DORADO                | ELLEN       | PRESLEY      |
        | ALI FOREVER                 | KENNETH     | TORN         |
        | BEAST HUNCHBACK             | KENNETH     | TORN         |
        | BIRDCAGE CASPER             | KENNETH     | TORN         |
        | CARRIE BUNCH                | KENNETH     | TORN         |
        | CITIZEN SHREK               | KENNETH     | TORN         |
        | CROSSROADS CASUALTIES       | KENNETH     | TORN         |
        | DANCING FEVER               | KENNETH     | TORN         |
        | DETECTIVE VISION            | KENNETH     | TORN         |
        | EARTH VISION                | KENNETH     | TORN         |
        | EGYPT TENENBAUMS            | KENNETH     | TORN         |
        | FLAMINGOS CONNECTICUT       | KENNETH     | TORN         |
        | FLATLINERS KILLER           | KENNETH     | TORN         |
        | FRIDA SLIPPER               | KENNETH     | TORN         |
        | GHOST GROUNDHOG             | KENNETH     | TORN         |
        | HARPER DYING                | KENNETH     | TORN         |
        | HOMICIDE PEACH              | KENNETH     | TORN         |
        | INDEPENDENCE HOTEL          | KENNETH     | TORN         |
        | JACKET FRISCO               | KENNETH     | TORN         |
        | JAPANESE RUN                | KENNETH     | TORN         |
        | LEAGUE HELLFIGHTERS         | KENNETH     | TORN         |
        | LESSON CLEOPATRA            | KENNETH     | TORN         |
        | LIES TREATMENT              | KENNETH     | TORN         |
        | LOST BIRD                   | KENNETH     | TORN         |
        | LUCKY FLYING                | KENNETH     | TORN         |
        | MAGNIFICENT CHITTY          | KENNETH     | TORN         |
        | MAIDEN HOME                 | KENNETH     | TORN         |
        | RAIDERS ANTITRUST           | KENNETH     | TORN         |
        | RAINBOW SHOCK               | KENNETH     | TORN         |
        | REMEMBER DIARY              | KENNETH     | TORN         |
        | SEATTLE EXPECATIONS         | KENNETH     | TORN         |
        | SHIP WONDERLAND             | KENNETH     | TORN         |
        | VOLUME HOUSE                | KENNETH     | TORN         |
        | WORKING MICROCOSMOS         | KENNETH     | TORN         |
        | AMISTAD MIDSUMMER           | DARYL       | WAHLBERG     |
        | ARACHNOPHOBIA ROLLERCOASTER | DARYL       | WAHLBERG     |
        | BABY HALL                   | DARYL       | WAHLBERG     |
        | BALLROOM MOCKINGBIRD        | DARYL       | WAHLBERG     |
        | BEHAVIOR RUNAWAY            | DARYL       | WAHLBERG     |
        | BIRCH ANTITRUST             | DARYL       | WAHLBERG     |
        | CASUALTIES ENCINO           | DARYL       | WAHLBERG     |
        | DANGEROUS UPTOWN            | DARYL       | WAHLBERG     |
        | DOUBLE WRATH                | DARYL       | WAHLBERG     |
        | EXPECATIONS NATURAL         | DARYL       | WAHLBERG     |
        | FAMILY SWEET                | DARYL       | WAHLBERG     |
        | FIDDLER LOST                | DARYL       | WAHLBERG     |
        | FORREST SONS                | DARYL       | WAHLBERG     |
        | GENTLEMEN STAGE             | DARYL       | WAHLBERG     |
        | GRAIL FRANKENSTEIN          | DARYL       | WAHLBERG     |
        | HOLES BRANNIGAN             | DARYL       | WAHLBERG     |
        | HOLOCAUST HIGHBALL          | DARYL       | WAHLBERG     |
        | HOOSIERS BIRDCAGE           | DARYL       | WAHLBERG     |
        | KILLER INNOCENT             | DARYL       | WAHLBERG     |
        | LIFE TWISTED                | DARYL       | WAHLBERG     |
        | MADRE GABLES                | DARYL       | WAHLBERG     |
        | MAIDEN HOME                 | DARYL       | WAHLBERG     |
        | NEIGHBORS CHARADE           | DARYL       | WAHLBERG     |
        | NORTH TEQUILA               | DARYL       | WAHLBERG     |
        | POND SEATTLE                | DARYL       | WAHLBERG     |
        | RUGRATS SHAKESPEARE         | DARYL       | WAHLBERG     |
        | SMOOCHY CONTROL             | DARYL       | WAHLBERG     |
        | SPIKING ELEMENT             | DARYL       | WAHLBERG     |
        | STREAK RIDGEMONT            | DARYL       | WAHLBERG     |
        | TRAFFIC HOBBIT              | DARYL       | WAHLBERG     |
        | UNFAITHFUL KILL             | DARYL       | WAHLBERG     |
        | AIRPORT POLLOCK             | GENE        | WILLIS       |
        | ARGONAUTS TOWN              | GENE        | WILLIS       |
        | ARMY FLINTSTONES            | GENE        | WILLIS       |
        | BANGER PINOCCHIO            | GENE        | WILLIS       |
        | BEACH HEARTBREAKERS         | GENE        | WILLIS       |
        | BENEATH RUSH                | GENE        | WILLIS       |
        | CHAMPION FLATLINERS         | GENE        | WILLIS       |
        | DARKNESS WAR                | GENE        | WILLIS       |
        | DORADO NOTTING              | GENE        | WILLIS       |
        | FLAMINGOS CONNECTICUT       | GENE        | WILLIS       |
        | HOOK CHARIOTS               | GENE        | WILLIS       |
        | ILLUSION AMELIE             | GENE        | WILLIS       |
        | JET NEIGHBORS               | GENE        | WILLIS       |
        | METROPOLIS COMA             | GENE        | WILLIS       |
        | MONEY HAROLD                | GENE        | WILLIS       |
        | PAST SUICIDES               | GENE        | WILLIS       |
        | SECRETS PARADISE            | GENE        | WILLIS       |
        | SPLASH GUMP                 | GENE        | WILLIS       |
        | STING PERSONAL              | GENE        | WILLIS       |
        | TADPOLE PARK                | GENE        | WILLIS       |
        | VIRGINIAN PLUTO             | GENE        | WILLIS       |
        | WEREWOLF LOLA               | GENE        | WILLIS       |
        | WORDS HUNTER                | GENE        | WILLIS       |
        | CHILL LUCK                  | MEG         | HAWKE        |
        | CONNECTICUT TRAMP           | MEG         | HAWKE        |
        | CRAZY HOME                  | MEG         | HAWKE        |
        | CRUSADE HONEY               | MEG         | HAWKE        |
        | DROP WATERFRONT             | MEG         | HAWKE        |
        | FIDDLER LOST                | MEG         | HAWKE        |
        | FUGITIVE MAGUIRE            | MEG         | HAWKE        |
        | GANDHI KWAI                 | MEG         | HAWKE        |
        | GILMORE BOILED              | MEG         | HAWKE        |
        | GORGEOUS BINGO              | MEG         | HAWKE        |
        | HOUSE DYNAMITE              | MEG         | HAWKE        |
        | HYSTERICAL GRAIL            | MEG         | HAWKE        |
        | INTOLERABLE INTENTIONS      | MEG         | HAWKE        |
        | LIAISONS SWEET              | MEG         | HAWKE        |
        | MAKER GABLES                | MEG         | HAWKE        |
        | MASK PEACH                  | MEG         | HAWKE        |
        | ORANGE GRAPES               | MEG         | HAWKE        |
        | PAPI NECKLACE               | MEG         | HAWKE        |
        | REUNION WITCHES             | MEG         | HAWKE        |
        | SABRINA MIDNIGHT            | MEG         | HAWKE        |
        | SAGEBRUSH CLUELESS          | MEG         | HAWKE        |
        | SPEED SUIT                  | MEG         | HAWKE        |
        | SUMMER SCARFACE             | MEG         | HAWKE        |
        | VACATION BOONDOCK           | MEG         | HAWKE        |
        | VAMPIRE WHALE               | MEG         | HAWKE        |
        | VISION TORQUE               | MEG         | HAWKE        |
        | VOYAGE LEGALLY              | MEG         | HAWKE        |
        | BENEATH RUSH                | CHRIS       | BRIDGES      |
        | BILL OTHERS                 | CHRIS       | BRIDGES      |
        | BLINDNESS GUN               | CHRIS       | BRIDGES      |
        | BOONDOCK BALLROOM           | CHRIS       | BRIDGES      |
        | BUNCH MINDS                 | CHRIS       | BRIDGES      |
        | CARIBBEAN LIBERTY           | CHRIS       | BRIDGES      |
        | CONVERSATION DOWNHILL       | CHRIS       | BRIDGES      |
        | CROW GREASE                 | CHRIS       | BRIDGES      |
        | DARN FORRESTER              | CHRIS       | BRIDGES      |
        | EXTRAORDINARY CONQUERER     | CHRIS       | BRIDGES      |
        | MUPPET MILE                 | CHRIS       | BRIDGES      |
        | ODDS BOOGIE                 | CHRIS       | BRIDGES      |
        | PLUTO OLEANDER              | CHRIS       | BRIDGES      |
        | PURPLE MOVIE                | CHRIS       | BRIDGES      |
        | RAGE GAMES                  | CHRIS       | BRIDGES      |
        | REDS POCUS                  | CHRIS       | BRIDGES      |
        | REQUIEM TYCOON              | CHRIS       | BRIDGES      |
        | ROAD ROXANNE                | CHRIS       | BRIDGES      |
        | ROCKETEER MOTHER            | CHRIS       | BRIDGES      |
        | SATURN NAME                 | CHRIS       | BRIDGES      |
        | SHAKESPEARE SADDLE          | CHRIS       | BRIDGES      |
        | SPARTACUS CHEAPER           | CHRIS       | BRIDGES      |
        | SPINAL ROCKY                | CHRIS       | BRIDGES      |
        | TROJAN TOMORROW             | CHRIS       | BRIDGES      |
        | WALLS ARTIST                | CHRIS       | BRIDGES      |
        | WONDERLAND CHRISTMAS        | CHRIS       | BRIDGES      |
        | WORLD LEATHERNECKS          | CHRIS       | BRIDGES      |
        | AIRPLANE SIERRA             | JIM         | MOSTEL       |
        | ANONYMOUS HUMAN             | JIM         | MOSTEL       |
        | BOILED DARES                | JIM         | MOSTEL       |
        | DRAGON SQUAD                | JIM         | MOSTEL       |
        | FLATLINERS KILLER           | JIM         | MOSTEL       |
        | FLOATS GARDEN               | JIM         | MOSTEL       |
        | GRINCH MASSAGE              | JIM         | MOSTEL       |
        | HELLFIGHTERS SIERRA         | JIM         | MOSTEL       |
        | JAPANESE RUN                | JIM         | MOSTEL       |
        | JUMANJI BLADE               | JIM         | MOSTEL       |
        | LEAGUE HELLFIGHTERS         | JIM         | MOSTEL       |
        | LUCKY FLYING                | JIM         | MOSTEL       |
        | METROPOLIS COMA             | JIM         | MOSTEL       |
        | MOTIONS DETAILS             | JIM         | MOSTEL       |
        | NECKLACE OUTBREAK           | JIM         | MOSTEL       |
        | NEMO CAMPUS                 | JIM         | MOSTEL       |
        | NEWSIES STORY               | JIM         | MOSTEL       |
        | OLEANDER CLUE               | JIM         | MOSTEL       |
        | PERFECT GROOVE              | JIM         | MOSTEL       |
        | RESERVOIR ADAPTATION        | JIM         | MOSTEL       |
        | ROMAN PUNK                  | JIM         | MOSTEL       |
        | SIERRA DIVIDE               | JIM         | MOSTEL       |
        | SPY MILE                    | JIM         | MOSTEL       |
        | WEEKEND PERSONAL            | JIM         | MOSTEL       |
        | WISDOM WORKER               | JIM         | MOSTEL       |
        | WOMEN DORADO                | JIM         | MOSTEL       |
        | ALONE TRIP                  | SPENCER     | DEPP         |
        | CANYON STOCK                | SPENCER     | DEPP         |
        | DRAGON SQUAD                | SPENCER     | DEPP         |
        | HEAVENLY GUN                | SPENCER     | DEPP         |
        | HELLFIGHTERS SIERRA         | SPENCER     | DEPP         |
        | LEATHERNECKS DWARFS         | SPENCER     | DEPP         |
        | MASSACRE USUAL              | SPENCER     | DEPP         |
        | ORDER BETRAYED              | SPENCER     | DEPP         |
        | RANDOM GO                   | SPENCER     | DEPP         |
        | REBEL AIRPORT               | SPENCER     | DEPP         |
        | SALUTE APOLLO               | SPENCER     | DEPP         |
        | SENSE GREEK                 | SPENCER     | DEPP         |
        | SNATCHERS MONTEZUMA         | SPENCER     | DEPP         |
        | STING PERSONAL              | SPENCER     | DEPP         |
        | STORY SIDE                  | SPENCER     | DEPP         |
        | SWEET BROTHERHOOD           | SPENCER     | DEPP         |
        | TAXI KICK                   | SPENCER     | DEPP         |
        | TREASURE COMMAND            | SPENCER     | DEPP         |
        | TYCOON GATHERING            | SPENCER     | DEPP         |
        | VIRGIN DAISY                | SPENCER     | DEPP         |
        | WEEKEND PERSONAL            | SPENCER     | DEPP         |
        | WITCHES PANIC               | SPENCER     | DEPP         |
        | WORST BANGER                | SPENCER     | DEPP         |
        | WRATH MILE                  | SPENCER     | DEPP         |
        | BEAST HUNCHBACK             | SUSAN       | DAVIS        |
        | BENEATH RUSH                | SUSAN       | DAVIS        |
        | BONNIE HOLOCAUST            | SUSAN       | DAVIS        |
        | CHITTY LOCK                 | SUSAN       | DAVIS        |
        | CREATURES SHAKESPEARE       | SUSAN       | DAVIS        |
        | DRAGON SQUAD                | SUSAN       | DAVIS        |
        | DRIVING POLISH              | SUSAN       | DAVIS        |
        | DURHAM PANKY                | SUSAN       | DAVIS        |
        | EGYPT TENENBAUMS            | SUSAN       | DAVIS        |
        | EVE RESURRECTION            | SUSAN       | DAVIS        |
        | JUMPING WRATH               | SUSAN       | DAVIS        |
        | KARATE MOON                 | SUSAN       | DAVIS        |
        | LAWRENCE LOVE               | SUSAN       | DAVIS        |
        | MEMENTO ZOOLANDER           | SUSAN       | DAVIS        |
        | MURDER ANTITRUST            | SUSAN       | DAVIS        |
        | NATURAL STOCK               | SUSAN       | DAVIS        |
        | PANTHER REDS                | SUSAN       | DAVIS        |
        | PATHS CONTROL               | SUSAN       | DAVIS        |
        | PRIX UNDEFEATED             | SUSAN       | DAVIS        |
        | PULP BEVERLY                | SUSAN       | DAVIS        |
        | SAINTS BRIDE                | SUSAN       | DAVIS        |
        | SEARCHERS WAIT              | SUSAN       | DAVIS        |
        | SHINING ROSES               | SUSAN       | DAVIS        |
        | SPIKING ELEMENT             | SUSAN       | DAVIS        |
        | STAR OPERATION              | SUSAN       | DAVIS        |
        | UPTOWN YOUNG                | SUSAN       | DAVIS        |
        | VALLEY PACKER               | SUSAN       | DAVIS        |
        | VANISHING ROCKY             | SUSAN       | DAVIS        |
        | VIDEOTAPE ARSENIC           | SUSAN       | DAVIS        |
        | WISDOM WORKER               | SUSAN       | DAVIS        |
        | WIZARD COLDBLOODED          | SUSAN       | DAVIS        |
        | WONDERFUL DROP              | SUSAN       | DAVIS        |
        | WORKER TARZAN               | SUSAN       | DAVIS        |
        | AMELIE HELLFIGHTERS         | WALTER      | TORN         |
        | ARABIA DOGMA                | WALTER      | TORN         |
        | BANG KWAI                   | WALTER      | TORN         |
        | CASABLANCA SUPER            | WALTER      | TORN         |
        | CASPER DRAGONFLY            | WALTER      | TORN         |
        | CROW GREASE                 | WALTER      | TORN         |
        | CURTAIN VIDEOTAPE           | WALTER      | TORN         |
        | DANCES NONE                 | WALTER      | TORN         |
        | EARLY HOME                  | WALTER      | TORN         |
        | FLYING HOOK                 | WALTER      | TORN         |
        | FORREST SONS                | WALTER      | TORN         |
        | FREDDY STORM                | WALTER      | TORN         |
        | GASLIGHT CRUSADE            | WALTER      | TORN         |
        | HOBBIT ALIEN                | WALTER      | TORN         |
        | HOOSIERS BIRDCAGE           | WALTER      | TORN         |
        | HYSTERICAL GRAIL            | WALTER      | TORN         |
        | JERSEY SASSY                | WALTER      | TORN         |
        | LAMBS CINCINATTI            | WALTER      | TORN         |
        | LESSON CLEOPATRA            | WALTER      | TORN         |
        | LIES TREATMENT              | WALTER      | TORN         |
        | LOCK REAR                   | WALTER      | TORN         |
        | LONELY ELEPHANT             | WALTER      | TORN         |
        | MADISON TRAP                | WALTER      | TORN         |
        | MOTIONS DETAILS             | WALTER      | TORN         |
        | MULHOLLAND BEAST            | WALTER      | TORN         |
        | MUMMY CREATURES             | WALTER      | TORN         |
        | NIGHTMARE CHILL             | WALTER      | TORN         |
        | NOVOCAINE FLIGHT            | WALTER      | TORN         |
        | RAIDERS ANTITRUST           | WALTER      | TORN         |
        | REUNION WITCHES             | WALTER      | TORN         |
        | ROOTS REMEMBER              | WALTER      | TORN         |
        | SIERRA DIVIDE               | WALTER      | TORN         |
        | SKY MIRACLE                 | WALTER      | TORN         |
        | SLUMS DUCK                  | WALTER      | TORN         |
        | SPIKING ELEMENT             | WALTER      | TORN         |
        | STAGE WORLD                 | WALTER      | TORN         |
        | STEPMOM DREAM               | WALTER      | TORN         |
        | STRANGELOVE DESIRE          | WALTER      | TORN         |
        | WARDROBE PHANTOM            | WALTER      | TORN         |
        | WITCHES PANIC               | WALTER      | TORN         |
        | WIZARD COLDBLOODED          | WALTER      | TORN         |
        | AFRICAN EGG                 | MATTHEW     | LEIGH        |
        | CANYON STOCK                | MATTHEW     | LEIGH        |
        | CELEBRITY HORN              | MATTHEW     | LEIGH        |
        | CRUSADE HONEY               | MATTHEW     | LEIGH        |
        | CUPBOARD SINNERS            | MATTHEW     | LEIGH        |
        | DANCING FEVER               | MATTHEW     | LEIGH        |
        | DAWN POND                   | MATTHEW     | LEIGH        |
        | DELIVERANCE MULHOLLAND      | MATTHEW     | LEIGH        |
        | EASY GLADIATOR              | MATTHEW     | LEIGH        |
        | ENGLISH BULWORTH            | MATTHEW     | LEIGH        |
        | FINDING ANACONDA            | MATTHEW     | LEIGH        |
        | FIREHOUSE VIETNAM           | MATTHEW     | LEIGH        |
        | FREAKY POCUS                | MATTHEW     | LEIGH        |
        | GAMES BOWFINGER             | MATTHEW     | LEIGH        |
        | GIANT TROOPERS              | MATTHEW     | LEIGH        |
        | GLASS DYING                 | MATTHEW     | LEIGH        |
        | GREATEST NORTH              | MATTHEW     | LEIGH        |
        | HOUSE DYNAMITE              | MATTHEW     | LEIGH        |
        | MOB DUFFEL                  | MATTHEW     | LEIGH        |
        | MUSCLE BRIGHT               | MATTHEW     | LEIGH        |
        | OPPOSITE NECKLACE           | MATTHEW     | LEIGH        |
        | ORIENT CLOSER               | MATTHEW     | LEIGH        |
        | POTLUCK MIXED               | MATTHEW     | LEIGH        |
        | ROBBERS JOON                | MATTHEW     | LEIGH        |
        | SOUP WISDOM                 | MATTHEW     | LEIGH        |
        | TOMORROW HUSTLER            | MATTHEW     | LEIGH        |
        | TRAFFIC HOBBIT              | MATTHEW     | LEIGH        |
        | TROJAN TOMORROW             | MATTHEW     | LEIGH        |
        | VIETNAM SMOOCHY             | MATTHEW     | LEIGH        |
        | WANDA CHAMBER               | MATTHEW     | LEIGH        |
        | AMADEUS HOLY                | PENELOPE    | CRONYN       |
        | ARMAGEDDON LOST             | PENELOPE    | CRONYN       |
        | ARMY FLINTSTONES            | PENELOPE    | CRONYN       |
        | BEAR GRACELAND              | PENELOPE    | CRONYN       |
        | BIKINI BORROWERS            | PENELOPE    | CRONYN       |
        | CHAPLIN LICENSE             | PENELOPE    | CRONYN       |
        | CLERKS ANGELS               | PENELOPE    | CRONYN       |
        | CORE SUIT                   | PENELOPE    | CRONYN       |
        | CRYSTAL BREAKING            | PENELOPE    | CRONYN       |
        | DISCIPLE MOTHER             | PENELOPE    | CRONYN       |
        | DUCK RACER                  | PENELOPE    | CRONYN       |
        | ENTRAPMENT SATISFACTION     | PENELOPE    | CRONYN       |
        | FEUD FROGMEN                | PENELOPE    | CRONYN       |
        | FIDELITY DEVIL              | PENELOPE    | CRONYN       |
        | HAMLET WISDOM               | PENELOPE    | CRONYN       |
        | HAROLD FRENCH               | PENELOPE    | CRONYN       |
        | INSTINCT AIRPORT            | PENELOPE    | CRONYN       |
        | LADY STAGE                  | PENELOPE    | CRONYN       |
        | LEGEND JEDI                 | PENELOPE    | CRONYN       |
        | MISSION ZOOLANDER           | PENELOPE    | CRONYN       |
        | MOTIONS DETAILS             | PENELOPE    | CRONYN       |
        | MUPPET MILE                 | PENELOPE    | CRONYN       |
        | PARADISE SABRINA            | PENELOPE    | CRONYN       |
        | PIANIST OUTFIELD            | PENELOPE    | CRONYN       |
        | ROCKY WAR                   | PENELOPE    | CRONYN       |
        | TITANIC BOONDOCK            | PENELOPE    | CRONYN       |
        | TRAIN BUNCH                 | PENELOPE    | CRONYN       |
        | UNTOUCHABLES SUNRISE        | PENELOPE    | CRONYN       |
        | VIRGINIAN PLUTO             | PENELOPE    | CRONYN       |
        | WONDERFUL DROP              | PENELOPE    | CRONYN       |
        | ZOOLANDER FICTION           | PENELOPE    | CRONYN       |
        | ALASKA PHANTOM              | SIDNEY      | CROWE        |
        | ALIEN CENTER                | SIDNEY      | CROWE        |
        | AMERICAN CIRCUS             | SIDNEY      | CROWE        |
        | ANTITRUST TOMATOES          | SIDNEY      | CROWE        |
        | ARTIST COLDBLOODED          | SIDNEY      | CROWE        |
        | CANDIDATE PERDITION         | SIDNEY      | CROWE        |
        | CLONES PINOCCHIO            | SIDNEY      | CROWE        |
        | DOGMA FAMILY                | SIDNEY      | CROWE        |
        | EMPIRE MALKOVICH            | SIDNEY      | CROWE        |
        | ENDING CROWDS               | SIDNEY      | CROWE        |
        | FINDING ANACONDA            | SIDNEY      | CROWE        |
        | FREAKY POCUS                | SIDNEY      | CROWE        |
        | GRACELAND DYNAMITE          | SIDNEY      | CROWE        |
        | GREASE YOUTH                | SIDNEY      | CROWE        |
        | LORD ARIZONA                | SIDNEY      | CROWE        |
        | MANNEQUIN WORST             | SIDNEY      | CROWE        |
        | MASK PEACH                  | SIDNEY      | CROWE        |
        | MUMMY CREATURES             | SIDNEY      | CROWE        |
        | OZ LIAISONS                 | SIDNEY      | CROWE        |
        | PLUTO OLEANDER              | SIDNEY      | CROWE        |
        | RUN PACIFIC                 | SIDNEY      | CROWE        |
        | SIEGE MADRE                 | SIDNEY      | CROWE        |
        | SPIRITED CASUALTIES         | SIDNEY      | CROWE        |
        | SPY MILE                    | SIDNEY      | CROWE        |
        | SUBMARINE BED               | SIDNEY      | CROWE        |
        | SUNDANCE INVASION           | SIDNEY      | CROWE        |
        | TITANS JERK                 | SIDNEY      | CROWE        |
        | TRAMP OTHERS                | SIDNEY      | CROWE        |
        | TREATMENT JEKYLL            | SIDNEY      | CROWE        |
        | TRUMAN CRAZY                | SIDNEY      | CROWE        |
        | WAKE JAWS                   | SIDNEY      | CROWE        |
        | WORLD LEATHERNECKS          | SIDNEY      | CROWE        |
        | WRONG BEHAVIOR              | SIDNEY      | CROWE        |
        | WYOMING STORM               | SIDNEY      | CROWE        |
        | ATTACKS HATE                | GROUCHO     | DUNST        |
        | BLUES INSTINCT              | GROUCHO     | DUNST        |
        | BUTCH PANTHER               | GROUCHO     | DUNST        |
        | CASUALTIES ENCINO           | GROUCHO     | DUNST        |
        | CHAPLIN LICENSE             | GROUCHO     | DUNST        |
        | COLOR PHILADELPHIA          | GROUCHO     | DUNST        |
        | CREATURES SHAKESPEARE       | GROUCHO     | DUNST        |
        | CROW GREASE                 | GROUCHO     | DUNST        |
        | DALMATIONS SWEDEN           | GROUCHO     | DUNST        |
        | DEVIL DESIRE                | GROUCHO     | DUNST        |
        | DONNIE ALLEY                | GROUCHO     | DUNST        |
        | GABLES METROPOLIS           | GROUCHO     | DUNST        |
        | GOLD RIVER                  | GROUCHO     | DUNST        |
        | HAPPINESS UNITED            | GROUCHO     | DUNST        |
        | HUNCHBACK IMPOSSIBLE        | GROUCHO     | DUNST        |
        | INDEPENDENCE HOTEL          | GROUCHO     | DUNST        |
        | IRON MOON                   | GROUCHO     | DUNST        |
        | KISS GLORY                  | GROUCHO     | DUNST        |
        | LABYRINTH LEAGUE            | GROUCHO     | DUNST        |
        | MARRIED GO                  | GROUCHO     | DUNST        |
        | MAUDE MOD                   | GROUCHO     | DUNST        |
        | MOB DUFFEL                  | GROUCHO     | DUNST        |
        | OPPOSITE NECKLACE           | GROUCHO     | DUNST        |
        | PANKY SUBMARINE             | GROUCHO     | DUNST        |
        | PARK CITIZEN                | GROUCHO     | DUNST        |
        | PHANTOM GLORY               | GROUCHO     | DUNST        |
        | POCUS PULP                  | GROUCHO     | DUNST        |
        | RUNNER MADIGAN              | GROUCHO     | DUNST        |
        | SATISFACTION CONFIDENTIAL   | GROUCHO     | DUNST        |
        | SENSIBILITY REAR            | GROUCHO     | DUNST        |
        | SUBMARINE BED               | GROUCHO     | DUNST        |
        | SUNSET RACER                | GROUCHO     | DUNST        |
        | TEMPLE ATTRACTION           | GROUCHO     | DUNST        |
        | TOMATOES HELLFIGHTERS       | GROUCHO     | DUNST        |
        | VANILLA DAY                 | GROUCHO     | DUNST        |
        | BED HIGHBALL                | GINA        | DEGENERES    |
        | CALENDAR GUNFIGHT           | GINA        | DEGENERES    |
        | CHAMBER ITALIAN             | GINA        | DEGENERES    |
        | CHAPLIN LICENSE             | GINA        | DEGENERES    |
        | CHARIOTS CONSPIRACY         | GINA        | DEGENERES    |
        | CLUELESS BUCKET             | GINA        | DEGENERES    |
        | COLDBLOODED DARLING         | GINA        | DEGENERES    |
        | CONEHEADS SMOOCHY           | GINA        | DEGENERES    |
        | DARKNESS WAR                | GINA        | DEGENERES    |
        | DEER VIRGINIAN              | GINA        | DEGENERES    |
        | DOGMA FAMILY                | GINA        | DEGENERES    |
        | ELEPHANT TROJAN             | GINA        | DEGENERES    |
        | EXCITEMENT EVE              | GINA        | DEGENERES    |
        | FRISCO FORREST              | GINA        | DEGENERES    |
        | GANDHI KWAI                 | GINA        | DEGENERES    |
        | GOODFELLAS SALUTE           | GINA        | DEGENERES    |
        | GUNFIGHT MOON               | GINA        | DEGENERES    |
        | HALL CASSIDY                | GINA        | DEGENERES    |
        | HEARTBREAKERS BRIGHT        | GINA        | DEGENERES    |
        | HOOK CHARIOTS               | GINA        | DEGENERES    |
        | HYDE DOCTOR                 | GINA        | DEGENERES    |
        | IMPACT ALADDIN              | GINA        | DEGENERES    |
        | INDIAN LOVE                 | GINA        | DEGENERES    |
        | INTRIGUE WORST              | GINA        | DEGENERES    |
        | LICENSE WEEKEND             | GINA        | DEGENERES    |
        | LOUISIANA HARRY             | GINA        | DEGENERES    |
        | MAGNIFICENT CHITTY          | GINA        | DEGENERES    |
        | METAL ARMAGEDDON            | GINA        | DEGENERES    |
        | MIDNIGHT WESTWARD           | GINA        | DEGENERES    |
        | MOVIE SHAKESPEARE           | GINA        | DEGENERES    |
        | MUMMY CREATURES             | GINA        | DEGENERES    |
        | OPEN AFRICAN                | GINA        | DEGENERES    |
        | SEARCHERS WAIT              | GINA        | DEGENERES    |
        | SEVEN SWARM                 | GINA        | DEGENERES    |
        | SIERRA DIVIDE               | GINA        | DEGENERES    |
        | SPIRITED CASUALTIES         | GINA        | DEGENERES    |
        | STORM HAPPINESS             | GINA        | DEGENERES    |
        | SUGAR WONKA                 | GINA        | DEGENERES    |
        | TELEGRAPH VOYAGE            | GINA        | DEGENERES    |
        | TRAINSPOTTING STRANGERS     | GINA        | DEGENERES    |
        | WIFE TURN                   | GINA        | DEGENERES    |
        | WINDOW SIDE                 | GINA        | DEGENERES    |
        | ACADEMY DINOSAUR            | WARREN      | NOLTE        |
        | AGENT TRUMAN                | WARREN      | NOLTE        |
        | ALABAMA DEVIL               | WARREN      | NOLTE        |
        | CHARADE DUFFEL              | WARREN      | NOLTE        |
        | DARES PLUTO                 | WARREN      | NOLTE        |
        | DEEP CRUSADE                | WARREN      | NOLTE        |
        | DOOM DANCING                | WARREN      | NOLTE        |
        | ELF MURDER                  | WARREN      | NOLTE        |
        | FANTASIA PARK               | WARREN      | NOLTE        |
        | GARDEN ISLAND               | WARREN      | NOLTE        |
        | GREATEST NORTH              | WARREN      | NOLTE        |
        | GREEDY ROOTS                | WARREN      | NOLTE        |
        | KENTUCKIAN GIANT            | WARREN      | NOLTE        |
        | LADYBUGS ARMAGEDDON         | WARREN      | NOLTE        |
        | LESSON CLEOPATRA            | WARREN      | NOLTE        |
        | MASK PEACH                  | WARREN      | NOLTE        |
        | MEET CHOCOLATE              | WARREN      | NOLTE        |
        | OUTLAW HANKY                | WARREN      | NOLTE        |
        | PAJAMA JAWBREAKER           | WARREN      | NOLTE        |
        | PANTHER REDS                | WARREN      | NOLTE        |
        | PERSONAL LADYBUGS           | WARREN      | NOLTE        |
        | POTTER CONNECTICUT          | WARREN      | NOLTE        |
        | PRIDE ALAMO                 | WARREN      | NOLTE        |
        | PULP BEVERLY                | WARREN      | NOLTE        |
        | REDS POCUS                  | WARREN      | NOLTE        |
        | RIVER OUTLAW                | WARREN      | NOLTE        |
        | ROMAN PUNK                  | WARREN      | NOLTE        |
        | ROOTS REMEMBER              | WARREN      | NOLTE        |
        | THIEF PELICAN               | WARREN      | NOLTE        |
        | TITANIC BOONDOCK            | WARREN      | NOLTE        |
        | TOMATOES HELLFIGHTERS       | WARREN      | NOLTE        |
        | UNBREAKABLE KARATE          | WARREN      | NOLTE        |
        | WARDROBE PHANTOM            | WARREN      | NOLTE        |
        | WEDDING APOLLO              | WARREN      | NOLTE        |
        | ALASKA PHANTOM              | SYLVESTER   | DERN         |
        | BACKLASH UNDEFEATED         | SYLVESTER   | DERN         |
        | BIRDS PERDITION             | SYLVESTER   | DERN         |
        | CLOCKWORK PARADISE          | SYLVESTER   | DERN         |
        | CONFIDENTIAL INTERVIEW      | SYLVESTER   | DERN         |
        | CREEPERS KANE               | SYLVESTER   | DERN         |
        | DOORS PRESIDENT             | SYLVESTER   | DERN         |
        | ENCINO ELF                  | SYLVESTER   | DERN         |
        | HALLOWEEN NUTS              | SYLVESTER   | DERN         |
        | INSTINCT AIRPORT            | SYLVESTER   | DERN         |
        | NEWSIES STORY               | SYLVESTER   | DERN         |
        | PARADISE SABRINA            | SYLVESTER   | DERN         |
        | PREJUDICE OLEANDER          | SYLVESTER   | DERN         |
        | PRIX UNDEFEATED             | SYLVESTER   | DERN         |
        | RINGS HEARTBREAKERS         | SYLVESTER   | DERN         |
        | RUSH GOODFELLAS             | SYLVESTER   | DERN         |
        | SHAWSHANK BUBBLE            | SYLVESTER   | DERN         |
        | SHEPHERD MIDSUMMER          | SYLVESTER   | DERN         |
        | SUN CONFESSIONS             | SYLVESTER   | DERN         |
        | TEXAS WATCH                 | SYLVESTER   | DERN         |
        | WALLS ARTIST                | SYLVESTER   | DERN         |
        | WEEKEND PERSONAL            | SYLVESTER   | DERN         |
        | AIRPORT POLLOCK             | SUSAN       | DAVIS        |
        | ANONYMOUS HUMAN             | SUSAN       | DAVIS        |
        | BED HIGHBALL                | SUSAN       | DAVIS        |
        | CARIBBEAN LIBERTY           | SUSAN       | DAVIS        |
        | CASUALTIES ENCINO           | SUSAN       | DAVIS        |
        | CLERKS ANGELS               | SUSAN       | DAVIS        |
        | EXCITEMENT EVE              | SUSAN       | DAVIS        |
        | FULL FLATLINERS             | SUSAN       | DAVIS        |
        | GLASS DYING                 | SUSAN       | DAVIS        |
        | GOODFELLAS SALUTE           | SUSAN       | DAVIS        |
        | HOTEL HAPPINESS             | SUSAN       | DAVIS        |
        | LEATHERNECKS DWARFS         | SUSAN       | DAVIS        |
        | LOATHING LEGALLY            | SUSAN       | DAVIS        |
        | LUCK OPUS                   | SUSAN       | DAVIS        |
        | MADNESS ATTACKS             | SUSAN       | DAVIS        |
        | NONE SPIKING                | SUSAN       | DAVIS        |
        | PACIFIC AMISTAD             | SUSAN       | DAVIS        |
        | SISTER FREDDY               | SUSAN       | DAVIS        |
        | TROJAN TOMORROW             | SUSAN       | DAVIS        |
        | WASH HEAVENLY               | SUSAN       | DAVIS        |
        | WORDS HUNTER                | SUSAN       | DAVIS        |
        | BEAUTY GREASE               | CAMERON     | ZELLWEGER    |
        | BLACKOUT PRIVATE            | CAMERON     | ZELLWEGER    |
        | BRIGHT ENCOUNTERS           | CAMERON     | ZELLWEGER    |
        | CLUELESS BUCKET             | CAMERON     | ZELLWEGER    |
        | CONQUERER NUTS              | CAMERON     | ZELLWEGER    |
        | CROW GREASE                 | CAMERON     | ZELLWEGER    |
        | FLOATS GARDEN               | CAMERON     | ZELLWEGER    |
        | GLADIATOR WESTWARD          | CAMERON     | ZELLWEGER    |
        | GRIT CLOCKWORK              | CAMERON     | ZELLWEGER    |
        | HARRY IDAHO                 | CAMERON     | ZELLWEGER    |
        | HAWK CHILL                  | CAMERON     | ZELLWEGER    |
        | HELLFIGHTERS SIERRA         | CAMERON     | ZELLWEGER    |
        | JADE BUNCH                  | CAMERON     | ZELLWEGER    |
        | JUGGLER HARDLY              | CAMERON     | ZELLWEGER    |
        | LAMBS CINCINATTI            | CAMERON     | ZELLWEGER    |
        | MALLRATS UNITED             | CAMERON     | ZELLWEGER    |
        | MOVIE SHAKESPEARE           | CAMERON     | ZELLWEGER    |
        | MURDER ANTITRUST            | CAMERON     | ZELLWEGER    |
        | ORIENT CLOSER               | CAMERON     | ZELLWEGER    |
        | PEARL DESTINY               | CAMERON     | ZELLWEGER    |
        | PILOT HOOSIERS              | CAMERON     | ZELLWEGER    |
        | PINOCCHIO SIMON             | CAMERON     | ZELLWEGER    |
        | PRIVATE DROP                | CAMERON     | ZELLWEGER    |
        | RIGHT CRANES                | CAMERON     | ZELLWEGER    |
        | RINGS HEARTBREAKERS         | CAMERON     | ZELLWEGER    |
        | ROCK INSTINCT               | CAMERON     | ZELLWEGER    |
        | ROOTS REMEMBER              | CAMERON     | ZELLWEGER    |
        | SECRETARY ROUGE             | CAMERON     | ZELLWEGER    |
        | STOCK GLASS                 | CAMERON     | ZELLWEGER    |
        | TOMATOES HELLFIGHTERS       | CAMERON     | ZELLWEGER    |
        | TYCOON GATHERING            | CAMERON     | ZELLWEGER    |
        | WASTELAND DIVINE            | CAMERON     | ZELLWEGER    |
        | WIFE TURN                   | CAMERON     | ZELLWEGER    |
        | ARABIA DOGMA                | RUSSELL     | BACALL       |
        | ARIZONA BANG                | RUSSELL     | BACALL       |
        | CINCINATTI WHISPERER        | RUSSELL     | BACALL       |
        | CONFESSIONS MAGUIRE         | RUSSELL     | BACALL       |
        | CRAZY HOME                  | RUSSELL     | BACALL       |
        | DINOSAUR SECRETARY          | RUSSELL     | BACALL       |
        | FIDDLER LOST                | RUSSELL     | BACALL       |
        | FLATLINERS KILLER           | RUSSELL     | BACALL       |
        | HURRICANE AFFAIR            | RUSSELL     | BACALL       |
        | IDOLS SNATCHERS             | RUSSELL     | BACALL       |
        | MATRIX SNOWMAN              | RUSSELL     | BACALL       |
        | MOVIE SHAKESPEARE           | RUSSELL     | BACALL       |
        | MUMMY CREATURES             | RUSSELL     | BACALL       |
        | PANKY SUBMARINE             | RUSSELL     | BACALL       |
        | PAYCHECK WAIT               | RUSSELL     | BACALL       |
        | PRIX UNDEFEATED             | RUSSELL     | BACALL       |
        | REUNION WITCHES             | RUSSELL     | BACALL       |
        | SEA VIRGIN                  | RUSSELL     | BACALL       |
        | SIERRA DIVIDE               | RUSSELL     | BACALL       |
        | SOLDIERS EVOLUTION          | RUSSELL     | BACALL       |
        | SPINAL ROCKY                | RUSSELL     | BACALL       |
        | STREETCAR INTENTIONS        | RUSSELL     | BACALL       |
        | SUNRISE LEAGUE              | RUSSELL     | BACALL       |
        | SUSPECTS QUILLS             | RUSSELL     | BACALL       |
        | WORKER TARZAN               | RUSSELL     | BACALL       |
        | ARACHNOPHOBIA ROLLERCOASTER | MORGAN      | HOPKINS      |
        | BOILED DARES                | MORGAN      | HOPKINS      |
        | CANDIDATE PERDITION         | MORGAN      | HOPKINS      |
        | CONTACT ANONYMOUS           | MORGAN      | HOPKINS      |
        | DECEIVER BETRAYED           | MORGAN      | HOPKINS      |
        | DRACULA CRYSTAL             | MORGAN      | HOPKINS      |
        | DRUMS DYNAMITE              | MORGAN      | HOPKINS      |
        | EXCITEMENT EVE              | MORGAN      | HOPKINS      |
        | FLATLINERS KILLER           | MORGAN      | HOPKINS      |
        | GENTLEMEN STAGE             | MORGAN      | HOPKINS      |
        | HARRY IDAHO                 | MORGAN      | HOPKINS      |
        | LOATHING LEGALLY            | MORGAN      | HOPKINS      |
        | ORDER BETRAYED              | MORGAN      | HOPKINS      |
        | PAPI NECKLACE               | MORGAN      | HOPKINS      |
        | PET HAUNTING                | MORGAN      | HOPKINS      |
        | PINOCCHIO SIMON             | MORGAN      | HOPKINS      |
        | PRIX UNDEFEATED             | MORGAN      | HOPKINS      |
        | RECORDS ZORRO               | MORGAN      | HOPKINS      |
        | REIGN GENTLEMEN             | MORGAN      | HOPKINS      |
        | RESERVOIR ADAPTATION        | MORGAN      | HOPKINS      |
        | RINGS HEARTBREAKERS         | MORGAN      | HOPKINS      |
        | RUGRATS SHAKESPEARE         | MORGAN      | HOPKINS      |
        | STAGECOACH ARMAGEDDON       | MORGAN      | HOPKINS      |
        | TIGHTS DAWN                 | MORGAN      | HOPKINS      |
        | UNCUT SUICIDES              | MORGAN      | HOPKINS      |
        | WEST LION                   | MORGAN      | HOPKINS      |
        | WOLVES DESIRE               | MORGAN      | HOPKINS      |
        | ALI FOREVER                 | MORGAN      | MCDORMAND    |
        | BETRAYED REAR               | MORGAN      | MCDORMAND    |
        | BOULEVARD MOB               | MORGAN      | MCDORMAND    |
        | CLUELESS BUCKET             | MORGAN      | MCDORMAND    |
        | CRAZY HOME                  | MORGAN      | MCDORMAND    |
        | CROW GREASE                 | MORGAN      | MCDORMAND    |
        | DARKO DORADO                | MORGAN      | MCDORMAND    |
        | DIVORCE SHINING             | MORGAN      | MCDORMAND    |
        | DRIVER ANNIE                | MORGAN      | MCDORMAND    |
        | FATAL HAUNTED               | MORGAN      | MCDORMAND    |
        | FROGMEN BREAKING            | MORGAN      | MCDORMAND    |
        | HOLES BRANNIGAN             | MORGAN      | MCDORMAND    |
        | HOLY TADPOLE                | MORGAN      | MCDORMAND    |
        | ILLUSION AMELIE             | MORGAN      | MCDORMAND    |
        | LOVERBOY ATTACKS            | MORGAN      | MCDORMAND    |
        | NEIGHBORS CHARADE           | MORGAN      | MCDORMAND    |
        | SAGEBRUSH CLUELESS          | MORGAN      | MCDORMAND    |
        | SLEUTH ORIENT               | MORGAN      | MCDORMAND    |
        | SPICE SORORITY              | MORGAN      | MCDORMAND    |
        | STAR OPERATION              | MORGAN      | MCDORMAND    |
        | SUIT WALLS                  | MORGAN      | MCDORMAND    |
        | SUNSET RACER                | MORGAN      | MCDORMAND    |
        | TROOPERS METAL              | MORGAN      | MCDORMAND    |
        | WASH HEAVENLY               | MORGAN      | MCDORMAND    |
        | WRONG BEHAVIOR              | MORGAN      | MCDORMAND    |
        | BADMAN DAWN                 | HARRISON    | BALE         |
        | BALLROOM MOCKINGBIRD        | HARRISON    | BALE         |
        | DOUBLE WRATH                | HARRISON    | BALE         |
        | DOUBTFIRE LABYRINTH         | HARRISON    | BALE         |
        | ELEPHANT TROJAN             | HARRISON    | BALE         |
        | FANTASIA PARK               | HARRISON    | BALE         |
        | GREEDY ROOTS                | HARRISON    | BALE         |
        | GROOVE FICTION              | HARRISON    | BALE         |
        | HALF OUTFIELD               | HARRISON    | BALE         |
        | HOMICIDE PEACH              | HARRISON    | BALE         |
        | LADY STAGE                  | HARRISON    | BALE         |
        | LOSE INCH                   | HARRISON    | BALE         |
        | MUPPET MILE                 | HARRISON    | BALE         |
        | NASH CHOCOLAT               | HARRISON    | BALE         |
        | PAST SUICIDES               | HARRISON    | BALE         |
        | PERDITION FARGO             | HARRISON    | BALE         |
        | PLUTO OLEANDER              | HARRISON    | BALE         |
        | PUNK DIVORCE                | HARRISON    | BALE         |
        | RANDOM GO                   | HARRISON    | BALE         |
        | ROLLERCOASTER BRINGING      | HARRISON    | BALE         |
        | RUSHMORE MERMAID            | HARRISON    | BALE         |
        | STING PERSONAL              | HARRISON    | BALE         |
        | THIEF PELICAN               | HARRISON    | BALE         |
        | WAGON JAWS                  | HARRISON    | BALE         |
        | WALLS ARTIST                | HARRISON    | BALE         |
        | WEDDING APOLLO              | HARRISON    | BALE         |
        | WONDERLAND CHRISTMAS        | HARRISON    | BALE         |
        | WYOMING STORM               | HARRISON    | BALE         |
        | ARGONAUTS TOWN              | DAN         | STREEP       |
        | BACKLASH UNDEFEATED         | DAN         | STREEP       |
        | BORN SPINAL                 | DAN         | STREEP       |
        | BOULEVARD MOB               | DAN         | STREEP       |
        | BULL SHAWSHANK              | DAN         | STREEP       |
        | CATCH AMISTAD               | DAN         | STREEP       |
        | FRENCH HOLIDAY              | DAN         | STREEP       |
        | FRISCO FORREST              | DAN         | STREEP       |
        | GROSSE WONDERFUL            | DAN         | STREEP       |
        | HEAVYWEIGHTS BEAST          | DAN         | STREEP       |
        | HOLES BRANNIGAN             | DAN         | STREEP       |
        | IGBY MAKER                  | DAN         | STREEP       |
        | JEKYLL FROGMEN              | DAN         | STREEP       |
        | JUNGLE CLOSER               | DAN         | STREEP       |
        | MIXED DOORS                 | DAN         | STREEP       |
        | MUMMY CREATURES             | DAN         | STREEP       |
        | NEWSIES STORY               | DAN         | STREEP       |
        | OUTFIELD MASSACRE           | DAN         | STREEP       |
        | PANIC CLUB                  | DAN         | STREEP       |
        | ROOF CHAMPION               | DAN         | STREEP       |
        | SHANGHAI TYCOON             | DAN         | STREEP       |
        | STEERS ARMAGEDDON           | DAN         | STREEP       |
        | VERTIGO NORTHWEST           | DAN         | STREEP       |
        | WANDA CHAMBER               | DAN         | STREEP       |
        | ALADDIN CALENDAR            | RENEE       | TRACY        |
        | ALIEN CENTER                | RENEE       | TRACY        |
        | ARTIST COLDBLOODED          | RENEE       | TRACY        |
        | COMA HEAD                   | RENEE       | TRACY        |
        | CONNECTION MICROCOSMOS      | RENEE       | TRACY        |
        | CREEPERS KANE               | RENEE       | TRACY        |
        | CRUSADE HONEY               | RENEE       | TRACY        |
        | DESPERATE TRAINSPOTTING     | RENEE       | TRACY        |
        | DOUBTFIRE LABYRINTH         | RENEE       | TRACY        |
        | EFFECT GLADIATOR            | RENEE       | TRACY        |
        | EYES DRIVING                | RENEE       | TRACY        |
        | FIRE WOLVES                 | RENEE       | TRACY        |
        | FRIDA SLIPPER               | RENEE       | TRACY        |
        | HANDICAP BOONDOCK           | RENEE       | TRACY        |
        | HOLLYWOOD ANONYMOUS         | RENEE       | TRACY        |
        | HOPE TOOTSIE                | RENEE       | TRACY        |
        | INFORMER DOUBLE             | RENEE       | TRACY        |
        | INVASION CYCLONE            | RENEE       | TRACY        |
        | MAGUIRE APACHE              | RENEE       | TRACY        |
        | MILLION ACE                 | RENEE       | TRACY        |
        | QUEST MUSSOLINI             | RENEE       | TRACY        |
        | RAGE GAMES                  | RENEE       | TRACY        |
        | ROCKETEER MOTHER            | RENEE       | TRACY        |
        | ROCKY WAR                   | RENEE       | TRACY        |
        | SECRETS PARADISE            | RENEE       | TRACY        |
        | SHANE DARKNESS              | RENEE       | TRACY        |
        | SHAWSHANK BUBBLE            | RENEE       | TRACY        |
        | SILENCE KANE                | RENEE       | TRACY        |
        | SMOKING BARBARELLA          | RENEE       | TRACY        |
        | SPIRITED CASUALTIES         | RENEE       | TRACY        |
        | SUNDANCE INVASION           | RENEE       | TRACY        |
        | THIEF PELICAN               | RENEE       | TRACY        |
        | UNTOUCHABLES SUNRISE        | RENEE       | TRACY        |
        | ARACHNOPHOBIA ROLLERCOASTER | CUBA        | ALLEN        |
        | ARMAGEDDON LOST             | CUBA        | ALLEN        |
        | ARSENIC INDEPENDENCE        | CUBA        | ALLEN        |
        | BADMAN DAWN                 | CUBA        | ALLEN        |
        | BARBARELLA STREETCAR        | CUBA        | ALLEN        |
        | CHAPLIN LICENSE             | CUBA        | ALLEN        |
        | CHICAGO NORTH               | CUBA        | ALLEN        |
        | CINCINATTI WHISPERER        | CUBA        | ALLEN        |
        | FICTION CHRISTMAS           | CUBA        | ALLEN        |
        | GROSSE WONDERFUL            | CUBA        | ALLEN        |
        | HAPPINESS UNITED            | CUBA        | ALLEN        |
        | KING EVOLUTION              | CUBA        | ALLEN        |
        | LESSON CLEOPATRA            | CUBA        | ALLEN        |
        | MAKER GABLES                | CUBA        | ALLEN        |
        | MANNEQUIN WORST             | CUBA        | ALLEN        |
        | METROPOLIS COMA             | CUBA        | ALLEN        |
        | ORANGE GRAPES               | CUBA        | ALLEN        |
        | PAPI NECKLACE               | CUBA        | ALLEN        |
        | PRESIDENT BANG              | CUBA        | ALLEN        |
        | ROBBERS JOON                | CUBA        | ALLEN        |
        | SHIP WONDERLAND             | CUBA        | ALLEN        |
        | STRANGELOVE DESIRE          | CUBA        | ALLEN        |
        | VELVET TERMINATOR           | CUBA        | ALLEN        |
        | WAR NOTTING                 | CUBA        | ALLEN        |
        | WEST LION                   | CUBA        | ALLEN        |
        | AMERICAN CIRCUS             | WARREN      | JACKMAN      |
        | BADMAN DAWN                 | WARREN      | JACKMAN      |
        | BEETHOVEN EXORCIST          | WARREN      | JACKMAN      |
        | BOONDOCK BALLROOM           | WARREN      | JACKMAN      |
        | CHILL LUCK                  | WARREN      | JACKMAN      |
        | COMMANDMENTS EXPRESS        | WARREN      | JACKMAN      |
        | CONEHEADS SMOOCHY           | WARREN      | JACKMAN      |
        | CONFESSIONS MAGUIRE         | WARREN      | JACKMAN      |
        | GRINCH MASSAGE              | WARREN      | JACKMAN      |
        | HAMLET WISDOM               | WARREN      | JACKMAN      |
        | HEAVYWEIGHTS BEAST          | WARREN      | JACKMAN      |
        | HOBBIT ALIEN                | WARREN      | JACKMAN      |
        | IMPACT ALADDIN              | WARREN      | JACKMAN      |
        | LANGUAGE COWBOY             | WARREN      | JACKMAN      |
        | LIES TREATMENT              | WARREN      | JACKMAN      |
        | MEET CHOCOLATE              | WARREN      | JACKMAN      |
        | MERMAID INSECTS             | WARREN      | JACKMAN      |
        | MONSTER SPARTACUS           | WARREN      | JACKMAN      |
        | NAME DETECTIVE              | WARREN      | JACKMAN      |
        | OLEANDER CLUE               | WARREN      | JACKMAN      |
        | OZ LIAISONS                 | WARREN      | JACKMAN      |
        | POTTER CONNECTICUT          | WARREN      | JACKMAN      |
        | ROCKETEER MOTHER            | WARREN      | JACKMAN      |
        | RUNAWAY TENENBAUMS          | WARREN      | JACKMAN      |
        | SHAKESPEARE SADDLE          | WARREN      | JACKMAN      |
        | SHEPHERD MIDSUMMER          | WARREN      | JACKMAN      |
        | SHIP WONDERLAND             | WARREN      | JACKMAN      |
        | SKY MIRACLE                 | WARREN      | JACKMAN      |
        | SUBMARINE BED               | WARREN      | JACKMAN      |
        | SUPERFLY TRIP               | WARREN      | JACKMAN      |
        | TOWN ARK                    | WARREN      | JACKMAN      |
        | VERTIGO NORTHWEST           | WARREN      | JACKMAN      |
        | BASIC EASY                  | PENELOPE    | MONROE       |
        | BEDAZZLED MARRIED           | PENELOPE    | MONROE       |
        | CHINATOWN GLADIATOR         | PENELOPE    | MONROE       |
        | CHRISTMAS MOONSHINE         | PENELOPE    | MONROE       |
        | DARES PLUTO                 | PENELOPE    | MONROE       |
        | DINOSAUR SECRETARY          | PENELOPE    | MONROE       |
        | DOCTOR GRAIL                | PENELOPE    | MONROE       |
        | DRIVING POLISH              | PENELOPE    | MONROE       |
        | HELLFIGHTERS SIERRA         | PENELOPE    | MONROE       |
        | HOLOCAUST HIGHBALL          | PENELOPE    | MONROE       |
        | JUGGLER HARDLY              | PENELOPE    | MONROE       |
        | LEATHERNECKS DWARFS         | PENELOPE    | MONROE       |
        | MONEY HAROLD                | PENELOPE    | MONROE       |
        | ORANGE GRAPES               | PENELOPE    | MONROE       |
        | ORDER BETRAYED              | PENELOPE    | MONROE       |
        | PARK CITIZEN                | PENELOPE    | MONROE       |
        | PITTSBURGH HUNCHBACK        | PENELOPE    | MONROE       |
        | POSEIDON FOREVER            | PENELOPE    | MONROE       |
        | RANGE MOONWALKER            | PENELOPE    | MONROE       |
        | REAR TRADING                | PENELOPE    | MONROE       |
        | REEF SALUTE                 | PENELOPE    | MONROE       |
        | ROUGE SQUAD                 | PENELOPE    | MONROE       |
        | SPIRIT FLINTSTONES          | PENELOPE    | MONROE       |
        | TOMATOES HELLFIGHTERS       | PENELOPE    | MONROE       |
        | TOURIST PELICAN             | PENELOPE    | MONROE       |
        | TRIP NEWTON                 | PENELOPE    | MONROE       |
        | WYOMING STORM               | PENELOPE    | MONROE       |
        | CHICAGO NORTH               | LIZA        | BERGMAN      |
        | CLASH FREDDY                | LIZA        | BERGMAN      |
        | CLUE GRAIL                  | LIZA        | BERGMAN      |
        | COMMAND DARLING             | LIZA        | BERGMAN      |
        | CRAFT OUTFIELD              | LIZA        | BERGMAN      |
        | CRYSTAL BREAKING            | LIZA        | BERGMAN      |
        | DEER VIRGINIAN              | LIZA        | BERGMAN      |
        | DESERT POSEIDON             | LIZA        | BERGMAN      |
        | ENEMY ODDS                  | LIZA        | BERGMAN      |
        | EXTRAORDINARY CONQUERER     | LIZA        | BERGMAN      |
        | FRISCO FORREST              | LIZA        | BERGMAN      |
        | GENTLEMEN STAGE             | LIZA        | BERGMAN      |
        | IDENTITY LOVER              | LIZA        | BERGMAN      |
        | JEDI BENEATH                | LIZA        | BERGMAN      |
        | LESSON CLEOPATRA            | LIZA        | BERGMAN      |
        | OCTOBER SUBMARINE           | LIZA        | BERGMAN      |
        | PANKY SUBMARINE             | LIZA        | BERGMAN      |
        | PARIS WEEKEND               | LIZA        | BERGMAN      |
        | PAYCHECK WAIT               | LIZA        | BERGMAN      |
        | SCORPION APOLLO             | LIZA        | BERGMAN      |
        | SENSIBILITY REAR            | LIZA        | BERGMAN      |
        | STOCK GLASS                 | LIZA        | BERGMAN      |
        | TERMINATOR CLUB             | LIZA        | BERGMAN      |
        | TEXAS WATCH                 | LIZA        | BERGMAN      |
        | WEDDING APOLLO              | LIZA        | BERGMAN      |
        | AMISTAD MIDSUMMER           | SALMA       | NOLTE        |
        | ANTITRUST TOMATOES          | SALMA       | NOLTE        |
        | BIRDCAGE CASPER             | SALMA       | NOLTE        |
        | BLUES INSTINCT              | SALMA       | NOLTE        |
        | CLOCKWORK PARADISE          | SALMA       | NOLTE        |
        | CLONES PINOCCHIO            | SALMA       | NOLTE        |
        | COLOR PHILADELPHIA          | SALMA       | NOLTE        |
        | DETAILS PACKER              | SALMA       | NOLTE        |
        | DOCTOR GRAIL                | SALMA       | NOLTE        |
        | FALCON VOLUME               | SALMA       | NOLTE        |
        | FELLOWSHIP AUTUMN           | SALMA       | NOLTE        |
        | GO PURPLE                   | SALMA       | NOLTE        |
        | ISHTAR ROCKETEER            | SALMA       | NOLTE        |
        | JUGGLER HARDLY              | SALMA       | NOLTE        |
        | JUMPING WRATH               | SALMA       | NOLTE        |
        | LUST LOCK                   | SALMA       | NOLTE        |
        | NEMO CAMPUS                 | SALMA       | NOLTE        |
        | OZ LIAISONS                 | SALMA       | NOLTE        |
        | PANKY SUBMARINE             | SALMA       | NOLTE        |
        | PERSONAL LADYBUGS           | SALMA       | NOLTE        |
        | REBEL AIRPORT               | SALMA       | NOLTE        |
        | SIEGE MADRE                 | SALMA       | NOLTE        |
        | WAR NOTTING                 | SALMA       | NOLTE        |
        | WASH HEAVENLY               | SALMA       | NOLTE        |
        | ZHIVAGO CORE                | SALMA       | NOLTE        |
        | ADAPTATION HOLES            | JULIANNE    | DENCH        |
        | ATLANTIS CAUSE              | JULIANNE    | DENCH        |
        | BERETS AGENT                | JULIANNE    | DENCH        |
        | BULL SHAWSHANK              | JULIANNE    | DENCH        |
        | CHOCOLATE DUCK              | JULIANNE    | DENCH        |
        | CINCINATTI WHISPERER        | JULIANNE    | DENCH        |
        | COWBOY DOOM                 | JULIANNE    | DENCH        |
        | DESIRE ALIEN                | JULIANNE    | DENCH        |
        | DISTURBING SCARFACE         | JULIANNE    | DENCH        |
        | DOUBLE WRATH                | JULIANNE    | DENCH        |
        | DOUBTFIRE LABYRINTH         | JULIANNE    | DENCH        |
        | DYNAMITE TARZAN             | JULIANNE    | DENCH        |
        | ENOUGH RAGING               | JULIANNE    | DENCH        |
        | HONEY TIES                  | JULIANNE    | DENCH        |
        | HUNTING MUSKETEERS          | JULIANNE    | DENCH        |
        | HYSTERICAL GRAIL            | JULIANNE    | DENCH        |
        | JEDI BENEATH                | JULIANNE    | DENCH        |
        | JEEPERS WEDDING             | JULIANNE    | DENCH        |
        | KARATE MOON                 | JULIANNE    | DENCH        |
        | KRAMER CHOCOLATE            | JULIANNE    | DENCH        |
        | LORD ARIZONA                | JULIANNE    | DENCH        |
        | MIGHTY LUCK                 | JULIANNE    | DENCH        |
        | MILE MULAN                  | JULIANNE    | DENCH        |
        | MODERN DORADO               | JULIANNE    | DENCH        |
        | MONTEREY LABYRINTH          | JULIANNE    | DENCH        |
        | REQUIEM TYCOON              | JULIANNE    | DENCH        |
        | RIDGEMONT SUBMARINE         | JULIANNE    | DENCH        |
        | SHEPHERD MIDSUMMER          | JULIANNE    | DENCH        |
        | SUICIDES SILENCE            | JULIANNE    | DENCH        |
        | TITANIC BOONDOCK            | JULIANNE    | DENCH        |
        | UNTOUCHABLES SUNRISE        | JULIANNE    | DENCH        |
        | WORKER TARZAN               | JULIANNE    | DENCH        |
        | AMISTAD MIDSUMMER           | SCARLETT    | BENING       |
        | BEETHOVEN EXORCIST          | SCARLETT    | BENING       |
        | BULWORTH COMMANDMENTS       | SCARLETT    | BENING       |
        | CALIFORNIA BIRDS            | SCARLETT    | BENING       |
        | CREEPERS KANE               | SCARLETT    | BENING       |
        | DOUBTFIRE LABYRINTH         | SCARLETT    | BENING       |
        | DUDE BLINDNESS              | SCARLETT    | BENING       |
        | DURHAM PANKY                | SCARLETT    | BENING       |
        | EVE RESURRECTION            | SCARLETT    | BENING       |
        | FEATHERS METAL              | SCARLETT    | BENING       |
        | FIDDLER LOST                | SCARLETT    | BENING       |
        | FLATLINERS KILLER           | SCARLETT    | BENING       |
        | FULL FLATLINERS             | SCARLETT    | BENING       |
        | IDENTITY LOVER              | SCARLETT    | BENING       |
        | INVASION CYCLONE            | SCARLETT    | BENING       |
        | LUCK OPUS                   | SCARLETT    | BENING       |
        | MOULIN WAKE                 | SCARLETT    | BENING       |
        | RESERVOIR ADAPTATION        | SCARLETT    | BENING       |
        | ROOF CHAMPION               | SCARLETT    | BENING       |
        | SEATTLE EXPECATIONS         | SCARLETT    | BENING       |
        | SHAWSHANK BUBBLE            | SCARLETT    | BENING       |
        | SNATCH SLIPPER              | SCARLETT    | BENING       |
        | SUBMARINE BED               | SCARLETT    | BENING       |
        | TENENBAUMS COMMAND          | SCARLETT    | BENING       |
        | WORDS HUNTER                | SCARLETT    | BENING       |
        | YOUTH KICK                  | SCARLETT    | BENING       |
        | BED HIGHBALL                | ALBERT      | NOLTE        |
        | BRIGHT ENCOUNTERS           | ALBERT      | NOLTE        |
        | BROOKLYN DESERT             | ALBERT      | NOLTE        |
        | CAMELOT VACATION            | ALBERT      | NOLTE        |
        | CONFUSED CANDLES            | ALBERT      | NOLTE        |
        | CRAZY HOME                  | ALBERT      | NOLTE        |
        | DALMATIONS SWEDEN           | ALBERT      | NOLTE        |
        | DOCTOR GRAIL                | ALBERT      | NOLTE        |
        | DRAGON SQUAD                | ALBERT      | NOLTE        |
        | FLINTSTONES HAPPINESS       | ALBERT      | NOLTE        |
        | FRISCO FORREST              | ALBERT      | NOLTE        |
        | GLEAMING JAWBREAKER         | ALBERT      | NOLTE        |
        | GOLDMINE TYCOON             | ALBERT      | NOLTE        |
        | HANDICAP BOONDOCK           | ALBERT      | NOLTE        |
        | HELLFIGHTERS SIERRA         | ALBERT      | NOLTE        |
        | HOMICIDE PEACH              | ALBERT      | NOLTE        |
        | HONEY TIES                  | ALBERT      | NOLTE        |
        | IDOLS SNATCHERS             | ALBERT      | NOLTE        |
        | KILL BROTHERHOOD            | ALBERT      | NOLTE        |
        | MANCHURIAN CURTAIN          | ALBERT      | NOLTE        |
        | MEMENTO ZOOLANDER           | ALBERT      | NOLTE        |
        | MIXED DOORS                 | ALBERT      | NOLTE        |
        | MOURNING PURPLE             | ALBERT      | NOLTE        |
        | NEWTON LABYRINTH            | ALBERT      | NOLTE        |
        | PATRIOT ROMAN               | ALBERT      | NOLTE        |
        | PITY BOUND                  | ALBERT      | NOLTE        |
        | RAGE GAMES                  | ALBERT      | NOLTE        |
        | TAXI KICK                   | ALBERT      | NOLTE        |
        | TRAP GUYS                   | ALBERT      | NOLTE        |
        | VOLCANO TEXAS               | ALBERT      | NOLTE        |
        | WATERSHIP FRONTIER          | ALBERT      | NOLTE        |
        | AMERICAN CIRCUS             | FRANCES     | TOMEI        |
        | ARABIA DOGMA                | FRANCES     | TOMEI        |
        | ATLANTIS CAUSE              | FRANCES     | TOMEI        |
        | BEACH HEARTBREAKERS         | FRANCES     | TOMEI        |
        | BONNIE HOLOCAUST            | FRANCES     | TOMEI        |
        | BREAKING HOME               | FRANCES     | TOMEI        |
        | CROSSROADS CASUALTIES       | FRANCES     | TOMEI        |
        | CROW GREASE                 | FRANCES     | TOMEI        |
        | CUPBOARD SINNERS            | FRANCES     | TOMEI        |
        | DROP WATERFRONT             | FRANCES     | TOMEI        |
        | DURHAM PANKY                | FRANCES     | TOMEI        |
        | ESCAPE METROPOLIS           | FRANCES     | TOMEI        |
        | FIREBALL PHILADELPHIA       | FRANCES     | TOMEI        |
        | GAMES BOWFINGER             | FRANCES     | TOMEI        |
        | GOODFELLAS SALUTE           | FRANCES     | TOMEI        |
        | GORGEOUS BINGO              | FRANCES     | TOMEI        |
        | HOCUS FRIDA                 | FRANCES     | TOMEI        |
        | INVASION CYCLONE            | FRANCES     | TOMEI        |
        | IRON MOON                   | FRANCES     | TOMEI        |
        | MADNESS ATTACKS             | FRANCES     | TOMEI        |
        | PLATOON INSTINCT            | FRANCES     | TOMEI        |
        | SQUAD FISH                  | FRANCES     | TOMEI        |
        | SUICIDES SILENCE            | FRANCES     | TOMEI        |
        | ARGONAUTS TOWN              | KEVIN       | GARLAND      |
        | BABY HALL                   | KEVIN       | GARLAND      |
        | BACKLASH UNDEFEATED         | KEVIN       | GARLAND      |
        | BLADE POLISH                | KEVIN       | GARLAND      |
        | CAPER MOTIONS               | KEVIN       | GARLAND      |
        | CHICAGO NORTH               | KEVIN       | GARLAND      |
        | CLOCKWORK PARADISE          | KEVIN       | GARLAND      |
        | DADDY PITTSBURGH            | KEVIN       | GARLAND      |
        | ENOUGH RAGING               | KEVIN       | GARLAND      |
        | FREAKY POCUS                | KEVIN       | GARLAND      |
        | GHOST GROUNDHOG             | KEVIN       | GARLAND      |
        | GOLDFINGER SENSIBILITY      | KEVIN       | GARLAND      |
        | GRIT CLOCKWORK              | KEVIN       | GARLAND      |
        | GUNFIGHT MOON               | KEVIN       | GARLAND      |
        | HEAVENLY GUN                | KEVIN       | GARLAND      |
        | INFORMER DOUBLE             | KEVIN       | GARLAND      |
        | MAKER GABLES                | KEVIN       | GARLAND      |
        | MICROCOSMOS PARADISE        | KEVIN       | GARLAND      |
        | MYSTIC TRUMAN               | KEVIN       | GARLAND      |
        | NATURAL STOCK               | KEVIN       | GARLAND      |
        | ORANGE GRAPES               | KEVIN       | GARLAND      |
        | RAGE GAMES                  | KEVIN       | GARLAND      |
        | RESURRECTION SILVERADO      | KEVIN       | GARLAND      |
        | RULES HUMAN                 | KEVIN       | GARLAND      |
        | SATISFACTION CONFIDENTIAL   | KEVIN       | GARLAND      |
        | SCORPION APOLLO             | KEVIN       | GARLAND      |
        | SHOW LORD                   | KEVIN       | GARLAND      |
        | SONG HEDWIG                 | KEVIN       | GARLAND      |
        | STALLION SUNDANCE           | KEVIN       | GARLAND      |
        | STING PERSONAL              | KEVIN       | GARLAND      |
        | TRIP NEWTON                 | KEVIN       | GARLAND      |
        | WAIT CIDER                  | KEVIN       | GARLAND      |
        | WESTWARD SEABISCUIT         | KEVIN       | GARLAND      |
        | ANNIE IDENTITY              | CATE        | MCQUEEN      |
        | BLOOD ARGONAUTS             | CATE        | MCQUEEN      |
        | CAPER MOTIONS               | CATE        | MCQUEEN      |
        | COMANCHEROS ENEMY           | CATE        | MCQUEEN      |
        | DARN FORRESTER              | CATE        | MCQUEEN      |
        | DOCTOR GRAIL                | CATE        | MCQUEEN      |
        | FACTORY DRAGON              | CATE        | MCQUEEN      |
        | FIDDLER LOST                | CATE        | MCQUEEN      |
        | FLYING HOOK                 | CATE        | MCQUEEN      |
        | FRENCH HOLIDAY              | CATE        | MCQUEEN      |
        | GABLES METROPOLIS           | CATE        | MCQUEEN      |
        | HAWK CHILL                  | CATE        | MCQUEEN      |
        | INSIDER ARIZONA             | CATE        | MCQUEEN      |
        | JERSEY SASSY                | CATE        | MCQUEEN      |
        | LEGEND JEDI                 | CATE        | MCQUEEN      |
        | MASSAGE IMAGE               | CATE        | MCQUEEN      |
        | NAME DETECTIVE              | CATE        | MCQUEEN      |
        | PACIFIC AMISTAD             | CATE        | MCQUEEN      |
        | PATTON INTERVIEW            | CATE        | MCQUEEN      |
        | PERDITION FARGO             | CATE        | MCQUEEN      |
        | POTTER CONNECTICUT          | CATE        | MCQUEEN      |
        | PRIDE ALAMO                 | CATE        | MCQUEEN      |
        | SALUTE APOLLO               | CATE        | MCQUEEN      |
        | SEARCHERS WAIT              | CATE        | MCQUEEN      |
        | SNATCH SLIPPER              | CATE        | MCQUEEN      |
        | TOWERS HURRICANE            | CATE        | MCQUEEN      |
        | TROJAN TOMORROW             | CATE        | MCQUEEN      |
        | VIRGIN DAISY                | CATE        | MCQUEEN      |
        | VOLCANO TEXAS               | CATE        | MCQUEEN      |
        | WATERSHIP FRONTIER          | CATE        | MCQUEEN      |
        | BAREFOOT MANCHURIAN         | DARYL       | CRAWFORD     |
        | BORROWERS BEDAZZLED         | DARYL       | CRAWFORD     |
        | BROTHERHOOD BLANKET         | DARYL       | CRAWFORD     |
        | COLOR PHILADELPHIA          | DARYL       | CRAWFORD     |
        | DADDY PITTSBURGH            | DARYL       | CRAWFORD     |
        | DIARY PANIC                 | DARYL       | CRAWFORD     |
        | DOWNHILL ENOUGH             | DARYL       | CRAWFORD     |
        | DRACULA CRYSTAL             | DARYL       | CRAWFORD     |
        | GANDHI KWAI                 | DARYL       | CRAWFORD     |
        | GOLDMINE TYCOON             | DARYL       | CRAWFORD     |
        | HALF OUTFIELD               | DARYL       | CRAWFORD     |
        | HOBBIT ALIEN                | DARYL       | CRAWFORD     |
        | HOOSIERS BIRDCAGE           | DARYL       | CRAWFORD     |
        | ILLUSION AMELIE             | DARYL       | CRAWFORD     |
        | ISLAND EXORCIST             | DARYL       | CRAWFORD     |
        | LICENSE WEEKEND             | DARYL       | CRAWFORD     |
        | MOONWALKER FOOL             | DARYL       | CRAWFORD     |
        | MOURNING PURPLE             | DARYL       | CRAWFORD     |
        | OPUS ICE                    | DARYL       | CRAWFORD     |
        | PEARL DESTINY               | DARYL       | CRAWFORD     |
        | PIZZA JUMANJI               | DARYL       | CRAWFORD     |
        | PURPLE MOVIE                | DARYL       | CRAWFORD     |
        | SLEEPLESS MONSOON           | DARYL       | CRAWFORD     |
        | SPEED SUIT                  | DARYL       | CRAWFORD     |
        | SPOILERS HELLFIGHTERS       | DARYL       | CRAWFORD     |
        | STRICTLY SCARFACE           | DARYL       | CRAWFORD     |
        | TREATMENT JEKYLL            | DARYL       | CRAWFORD     |
        | UNBREAKABLE KARATE          | DARYL       | CRAWFORD     |
        | VELVET TERMINATOR           | DARYL       | CRAWFORD     |
        | WASTELAND DIVINE            | DARYL       | CRAWFORD     |
        | ALABAMA DEVIL               | GRETA       | KEITEL       |
        | ANNIE IDENTITY              | GRETA       | KEITEL       |
        | ARIZONA BANG                | GRETA       | KEITEL       |
        | ATLANTIS CAUSE              | GRETA       | KEITEL       |
        | BADMAN DAWN                 | GRETA       | KEITEL       |
        | BASIC EASY                  | GRETA       | KEITEL       |
        | BUNCH MINDS                 | GRETA       | KEITEL       |
        | CALENDAR GUNFIGHT           | GRETA       | KEITEL       |
        | DARES PLUTO                 | GRETA       | KEITEL       |
        | FLYING HOOK                 | GRETA       | KEITEL       |
        | GRAIL FRANKENSTEIN          | GRETA       | KEITEL       |
        | HIGHBALL POTTER             | GRETA       | KEITEL       |
        | HOOSIERS BIRDCAGE           | GRETA       | KEITEL       |
        | ILLUSION AMELIE             | GRETA       | KEITEL       |
        | IMAGE PRINCESS              | GRETA       | KEITEL       |
        | JAWS HARRY                  | GRETA       | KEITEL       |
        | LADYBUGS ARMAGEDDON         | GRETA       | KEITEL       |
        | LOATHING LEGALLY            | GRETA       | KEITEL       |
        | MAGNOLIA FORRESTER          | GRETA       | KEITEL       |
        | MONSTER SPARTACUS           | GRETA       | KEITEL       |
        | PULP BEVERLY                | GRETA       | KEITEL       |
        | REQUIEM TYCOON              | GRETA       | KEITEL       |
        | SATURDAY LAMBS              | GRETA       | KEITEL       |
        | SLIPPER FIDELITY            | GRETA       | KEITEL       |
        | SUSPECTS QUILLS             | GRETA       | KEITEL       |
        | VACATION BOONDOCK           | GRETA       | KEITEL       |
        | WOLVES DESIRE               | GRETA       | KEITEL       |
        | BACKLASH UNDEFEATED         | JANE        | JACKMAN      |
        | BENEATH RUSH                | JANE        | JACKMAN      |
        | BRAVEHEART HUMAN            | JANE        | JACKMAN      |
        | CARIBBEAN LIBERTY           | JANE        | JACKMAN      |
        | CHOCOLAT HARRY              | JANE        | JACKMAN      |
        | DANCING FEVER               | JANE        | JACKMAN      |
        | FLAMINGOS CONNECTICUT       | JANE        | JACKMAN      |
        | GROOVE FICTION              | JANE        | JACKMAN      |
        | HOPE TOOTSIE                | JANE        | JACKMAN      |
        | HOURS RAGE                  | JANE        | JACKMAN      |
        | IDOLS SNATCHERS             | JANE        | JACKMAN      |
        | JEDI BENEATH                | JANE        | JACKMAN      |
        | KARATE MOON                 | JANE        | JACKMAN      |
        | LEGALLY SECRETARY           | JANE        | JACKMAN      |
        | LUCK OPUS                   | JANE        | JACKMAN      |
        | MONEY HAROLD                | JANE        | JACKMAN      |
        | OUTFIELD MASSACRE           | JANE        | JACKMAN      |
        | POTTER CONNECTICUT          | JANE        | JACKMAN      |
        | RAINBOW SHOCK               | JANE        | JACKMAN      |
        | SCISSORHANDS SLUMS          | JANE        | JACKMAN      |
        | SILVERADO GOLDFINGER        | JANE        | JACKMAN      |
        | SLIPPER FIDELITY            | JANE        | JACKMAN      |
        | TALENTED HOMICIDE           | JANE        | JACKMAN      |
        | TEMPLE ATTRACTION           | JANE        | JACKMAN      |
        | UNCUT SUICIDES              | JANE        | JACKMAN      |
        | BLINDNESS GUN               | ADAM        | HOPPER       |
        | BLOOD ARGONAUTS             | ADAM        | HOPPER       |
        | CHAMBER ITALIAN             | ADAM        | HOPPER       |
        | CLERKS ANGELS               | ADAM        | HOPPER       |
        | CLUELESS BUCKET             | ADAM        | HOPPER       |
        | FICTION CHRISTMAS           | ADAM        | HOPPER       |
        | GABLES METROPOLIS           | ADAM        | HOPPER       |
        | GREASE YOUTH                | ADAM        | HOPPER       |
        | HEAVEN FREEDOM              | ADAM        | HOPPER       |
        | LOVERBOY ATTACKS            | ADAM        | HOPPER       |
        | MASKED BUBBLE               | ADAM        | HOPPER       |
        | MOCKINGBIRD HOLLYWOOD       | ADAM        | HOPPER       |
        | NOON PAPI                   | ADAM        | HOPPER       |
        | OPEN AFRICAN                | ADAM        | HOPPER       |
        | PRINCESS GIANT              | ADAM        | HOPPER       |
        | SADDLE ANTITRUST            | ADAM        | HOPPER       |
        | SLEEPY JAPANESE             | ADAM        | HOPPER       |
        | TORQUE BOUND                | ADAM        | HOPPER       |
        | TOWERS HURRICANE            | ADAM        | HOPPER       |
        | TRAIN BUNCH                 | ADAM        | HOPPER       |
        | VACATION BOONDOCK           | ADAM        | HOPPER       |
        | WORDS HUNTER                | ADAM        | HOPPER       |
        | AIRPLANE SIERRA             | RICHARD     | PENN         |
        | BALLOON HOMEWARD            | RICHARD     | PENN         |
        | CHAMBER ITALIAN             | RICHARD     | PENN         |
        | CONEHEADS SMOOCHY           | RICHARD     | PENN         |
        | DARKO DORADO                | RICHARD     | PENN         |
        | EARTH VISION                | RICHARD     | PENN         |
        | EMPIRE MALKOVICH            | RICHARD     | PENN         |
        | ENOUGH RAGING               | RICHARD     | PENN         |
        | FRISCO FORREST              | RICHARD     | PENN         |
        | FUGITIVE MAGUIRE            | RICHARD     | PENN         |
        | GASLIGHT CRUSADE            | RICHARD     | PENN         |
        | GONE TROUBLE                | RICHARD     | PENN         |
        | GROUNDHOG UNCUT             | RICHARD     | PENN         |
        | GUYS FALCON                 | RICHARD     | PENN         |
        | HANKY OCTOBER               | RICHARD     | PENN         |
        | HEAVEN FREEDOM              | RICHARD     | PENN         |
        | ILLUSION AMELIE             | RICHARD     | PENN         |
        | INSTINCT AIRPORT            | RICHARD     | PENN         |
        | LEBOWSKI SOLDIERS           | RICHARD     | PENN         |
        | MODEL FISH                  | RICHARD     | PENN         |
        | MONTEZUMA COMMAND           | RICHARD     | PENN         |
        | OKLAHOMA JUMANJI            | RICHARD     | PENN         |
        | PAJAMA JAWBREAKER           | RICHARD     | PENN         |
        | RESURRECTION SILVERADO      | RICHARD     | PENN         |
        | SLEEPY JAPANESE             | RICHARD     | PENN         |
        | SUPERFLY TRIP               | RICHARD     | PENN         |
        | TENENBAUMS COMMAND          | RICHARD     | PENN         |
        | TOMATOES HELLFIGHTERS       | RICHARD     | PENN         |
        | VAMPIRE WHALE               | RICHARD     | PENN         |
        | WAGON JAWS                  | RICHARD     | PENN         |
        | CHAINSAW UPTOWN             | GENE        | HOPKINS      |
        | CHISUM BEHAVIOR             | GENE        | HOPKINS      |
        | CLUE GRAIL                  | GENE        | HOPKINS      |
        | DEEP CRUSADE                | GENE        | HOPKINS      |
        | DOORS PRESIDENT             | GENE        | HOPKINS      |
        | DRAGON SQUAD                | GENE        | HOPKINS      |
        | ELF MURDER                  | GENE        | HOPKINS      |
        | FROST HEAD                  | GENE        | HOPKINS      |
        | GUMP DATE                   | GENE        | HOPKINS      |
        | HEDWIG ALTER                | GENE        | HOPKINS      |
        | MANNEQUIN WORST             | GENE        | HOPKINS      |
        | MODEL FISH                  | GENE        | HOPKINS      |
        | NIGHTMARE CHILL             | GENE        | HOPKINS      |
        | PANTHER REDS                | GENE        | HOPKINS      |
        | PITY BOUND                  | GENE        | HOPKINS      |
        | POND SEATTLE                | GENE        | HOPKINS      |
        | SUIT WALLS                  | GENE        | HOPKINS      |
        | TOOTSIE PILOT               | GENE        | HOPKINS      |
        | TORQUE BOUND                | GENE        | HOPKINS      |
        | TRUMAN CRAZY                | GENE        | HOPKINS      |
        | UPRISING UPTOWN             | GENE        | HOPKINS      |
        | VANISHING ROCKY             | GENE        | HOPKINS      |
        | ARACHNOPHOBIA ROLLERCOASTER | RITA        | REYNOLDS     |
        | ARSENIC INDEPENDENCE        | RITA        | REYNOLDS     |
        | BEHAVIOR RUNAWAY            | RITA        | REYNOLDS     |
        | BORN SPINAL                 | RITA        | REYNOLDS     |
        | COMMAND DARLING             | RITA        | REYNOLDS     |
        | EARRING INSTINCT            | RITA        | REYNOLDS     |
        | FLAMINGOS CONNECTICUT       | RITA        | REYNOLDS     |
        | GENTLEMEN STAGE             | RITA        | REYNOLDS     |
        | GILBERT PELICAN             | RITA        | REYNOLDS     |
        | GODFATHER DIARY             | RITA        | REYNOLDS     |
        | IMPOSSIBLE PREJUDICE        | RITA        | REYNOLDS     |
        | INDIAN LOVE                 | RITA        | REYNOLDS     |
        | JERK PAYCHECK               | RITA        | REYNOLDS     |
        | LUKE MUMMY                  | RITA        | REYNOLDS     |
        | MAKER GABLES                | RITA        | REYNOLDS     |
        | NATIONAL STORY              | RITA        | REYNOLDS     |
        | NORTHWEST POLISH            | RITA        | REYNOLDS     |
        | RECORDS ZORRO               | RITA        | REYNOLDS     |
        | SNATCH SLIPPER              | RITA        | REYNOLDS     |
        | TRAINSPOTTING STRANGERS     | RITA        | REYNOLDS     |
        | AMELIE HELLFIGHTERS         | ED          | MANSFIELD    |
        | ANGELS LIFE                 | ED          | MANSFIELD    |
        | APOLLO TEEN                 | ED          | MANSFIELD    |
        | BAREFOOT MANCHURIAN         | ED          | MANSFIELD    |
        | BEAUTY GREASE               | ED          | MANSFIELD    |
        | CROSSROADS CASUALTIES       | ED          | MANSFIELD    |
        | DAUGHTER MADIGAN            | ED          | MANSFIELD    |
        | DEVIL DESIRE                | ED          | MANSFIELD    |
        | DOORS PRESIDENT             | ED          | MANSFIELD    |
        | DROP WATERFRONT             | ED          | MANSFIELD    |
        | DUMBO LUST                  | ED          | MANSFIELD    |
        | EASY GLADIATOR              | ED          | MANSFIELD    |
        | ESCAPE METROPOLIS           | ED          | MANSFIELD    |
        | FALCON VOLUME               | ED          | MANSFIELD    |
        | GODFATHER DIARY             | ED          | MANSFIELD    |
        | HAROLD FRENCH               | ED          | MANSFIELD    |
        | HELLFIGHTERS SIERRA         | ED          | MANSFIELD    |
        | HOLES BRANNIGAN             | ED          | MANSFIELD    |
        | JADE BUNCH                  | ED          | MANSFIELD    |
        | JERSEY SASSY                | ED          | MANSFIELD    |
        | LUST LOCK                   | ED          | MANSFIELD    |
        | MAJESTIC FLOATS             | ED          | MANSFIELD    |
        | NEMO CAMPUS                 | ED          | MANSFIELD    |
        | OZ LIAISONS                 | ED          | MANSFIELD    |
        | PLUTO OLEANDER              | ED          | MANSFIELD    |
        | SEVEN SWARM                 | ED          | MANSFIELD    |
        | SLEEPY JAPANESE             | ED          | MANSFIELD    |
        | SLING LUKE                  | ED          | MANSFIELD    |
        | SOMETHING DUCK              | ED          | MANSFIELD    |
        | STATE WASTELAND             | ED          | MANSFIELD    |
        | VAMPIRE WHALE               | ED          | MANSFIELD    |
        | WRONG BEHAVIOR              | ED          | MANSFIELD    |
        | AGENT TRUMAN                | MORGAN      | WILLIAMS     |
        | ALICE FANTASIA              | MORGAN      | WILLIAMS     |
        | BAREFOOT MANCHURIAN         | MORGAN      | WILLIAMS     |
        | BREAKING HOME               | MORGAN      | WILLIAMS     |
        | CLUB GRAFFITI               | MORGAN      | WILLIAMS     |
        | DESPERATE TRAINSPOTTING     | MORGAN      | WILLIAMS     |
        | DRACULA CRYSTAL             | MORGAN      | WILLIAMS     |
        | DRIVER ANNIE                | MORGAN      | WILLIAMS     |
        | DURHAM PANKY                | MORGAN      | WILLIAMS     |
        | EARLY HOME                  | MORGAN      | WILLIAMS     |
        | FARGO GANDHI                | MORGAN      | WILLIAMS     |
        | GUYS FALCON                 | MORGAN      | WILLIAMS     |
        | HEAVEN FREEDOM              | MORGAN      | WILLIAMS     |
        | HORN WORKING                | MORGAN      | WILLIAMS     |
        | HYSTERICAL GRAIL            | MORGAN      | WILLIAMS     |
        | JUGGLER HARDLY              | MORGAN      | WILLIAMS     |
        | LORD ARIZONA                | MORGAN      | WILLIAMS     |
        | MASSAGE IMAGE               | MORGAN      | WILLIAMS     |
        | MOVIE SHAKESPEARE           | MORGAN      | WILLIAMS     |
        | MUSIC BOONDOCK              | MORGAN      | WILLIAMS     |
        | POLISH BROOKLYN             | MORGAN      | WILLIAMS     |
        | PUNK DIVORCE                | MORGAN      | WILLIAMS     |
        | ROSES TREASURE              | MORGAN      | WILLIAMS     |
        | SAINTS BRIDE                | MORGAN      | WILLIAMS     |
        | SPLASH GUMP                 | MORGAN      | WILLIAMS     |
        | STAR OPERATION              | MORGAN      | WILLIAMS     |
        | TUXEDO MILE                 | MORGAN      | WILLIAMS     |
        | AIRPORT POLLOCK             | LUCILLE     | DEE          |
        | BALLROOM MOCKINGBIRD        | LUCILLE     | DEE          |
        | BEAUTY GREASE               | LUCILLE     | DEE          |
        | CASSIDY WYOMING             | LUCILLE     | DEE          |
        | CLOCKWORK PARADISE          | LUCILLE     | DEE          |
        | DAUGHTER MADIGAN            | LUCILLE     | DEE          |
        | DRUMS DYNAMITE              | LUCILLE     | DEE          |
        | GRAPES FURY                 | LUCILLE     | DEE          |
        | HARRY IDAHO                 | LUCILLE     | DEE          |
        | HYSTERICAL GRAIL            | LUCILLE     | DEE          |
        | IMAGE PRINCESS              | LUCILLE     | DEE          |
        | LAMBS CINCINATTI            | LUCILLE     | DEE          |
        | MAKER GABLES                | LUCILLE     | DEE          |
        | MASK PEACH                  | LUCILLE     | DEE          |
        | MISSION ZOOLANDER           | LUCILLE     | DEE          |
        | NORTH TEQUILA               | LUCILLE     | DEE          |
        | OPPOSITE NECKLACE           | LUCILLE     | DEE          |
        | PRESIDENT BANG              | LUCILLE     | DEE          |
        | ROXANNE REBEL               | LUCILLE     | DEE          |
        | TELEGRAPH VOYAGE            | LUCILLE     | DEE          |
        | TEXAS WATCH                 | LUCILLE     | DEE          |
        | UNFAITHFUL KILL             | LUCILLE     | DEE          |
        | WESTWARD SEABISCUIT         | LUCILLE     | DEE          |
        | WORKING MICROCOSMOS         | LUCILLE     | DEE          |
        | AMELIE HELLFIGHTERS         | EWAN        | GOODING      |
        | ARACHNOPHOBIA ROLLERCOASTER | EWAN        | GOODING      |
        | BASIC EASY                  | EWAN        | GOODING      |
        | BIRCH ANTITRUST             | EWAN        | GOODING      |
        | BOULEVARD MOB               | EWAN        | GOODING      |
        | BUNCH MINDS                 | EWAN        | GOODING      |
        | CLEOPATRA DEVIL             | EWAN        | GOODING      |
        | COMMAND DARLING             | EWAN        | GOODING      |
        | CONTACT ANONYMOUS           | EWAN        | GOODING      |
        | CURTAIN VIDEOTAPE           | EWAN        | GOODING      |
        | DEVIL DESIRE                | EWAN        | GOODING      |
        | DISCIPLE MOTHER             | EWAN        | GOODING      |
        | DUFFEL APOCALYPSE           | EWAN        | GOODING      |
        | DUMBO LUST                  | EWAN        | GOODING      |
        | DYNAMITE TARZAN             | EWAN        | GOODING      |
        | ENCOUNTERS CURTAIN          | EWAN        | GOODING      |
        | ENEMY ODDS                  | EWAN        | GOODING      |
        | GRADUATE LORD               | EWAN        | GOODING      |
        | ICE CROSSING                | EWAN        | GOODING      |
        | JUGGLER HARDLY              | EWAN        | GOODING      |
        | LONELY ELEPHANT             | EWAN        | GOODING      |
        | LUCKY FLYING                | EWAN        | GOODING      |
        | MERMAID INSECTS             | EWAN        | GOODING      |
        | MOURNING PURPLE             | EWAN        | GOODING      |
        | MULHOLLAND BEAST            | EWAN        | GOODING      |
        | OLEANDER CLUE               | EWAN        | GOODING      |
        | POSEIDON FOREVER            | EWAN        | GOODING      |
        | QUEEN LUKE                  | EWAN        | GOODING      |
        | RECORDS ZORRO               | EWAN        | GOODING      |
        | ROOTS REMEMBER              | EWAN        | GOODING      |
        | ROUGE SQUAD                 | EWAN        | GOODING      |
        | SUMMER SCARFACE             | EWAN        | GOODING      |
        | TITANIC BOONDOCK            | EWAN        | GOODING      |
        | ANONYMOUS HUMAN             | WHOOPI      | HURT         |
        | BIRDS PERDITION             | WHOOPI      | HURT         |
        | CALENDAR GUNFIGHT           | WHOOPI      | HURT         |
        | CHANCE RESURRECTION         | WHOOPI      | HURT         |
        | COWBOY DOOM                 | WHOOPI      | HURT         |
        | DRUMS DYNAMITE              | WHOOPI      | HURT         |
        | GORGEOUS BINGO              | WHOOPI      | HURT         |
        | GRADUATE LORD               | WHOOPI      | HURT         |
        | KILLER INNOCENT             | WHOOPI      | HURT         |
        | LANGUAGE COWBOY             | WHOOPI      | HURT         |
        | MIGHTY LUCK                 | WHOOPI      | HURT         |
        | MOD SECRETARY               | WHOOPI      | HURT         |
        | MOTHER OLEANDER             | WHOOPI      | HURT         |
        | MURDER ANTITRUST            | WHOOPI      | HURT         |
        | OUTFIELD MASSACRE           | WHOOPI      | HURT         |
        | PATTON INTERVIEW            | WHOOPI      | HURT         |
        | PELICAN COMFORTS            | WHOOPI      | HURT         |
        | POTTER CONNECTICUT          | WHOOPI      | HURT         |
        | PULP BEVERLY                | WHOOPI      | HURT         |
        | RIDER CADDYSHACK            | WHOOPI      | HURT         |
        | RIDGEMONT SUBMARINE         | WHOOPI      | HURT         |
        | RIGHT CRANES                | WHOOPI      | HURT         |
        | ROBBERY BRIGHT              | WHOOPI      | HURT         |
        | ROOF CHAMPION               | WHOOPI      | HURT         |
        | SECRETS PARADISE            | WHOOPI      | HURT         |
        | SONS INTERVIEW              | WHOOPI      | HURT         |
        | SPIRIT FLINTSTONES          | WHOOPI      | HURT         |
        | SPY MILE                    | WHOOPI      | HURT         |
        | STRICTLY SCARFACE           | WHOOPI      | HURT         |
        | UNFAITHFUL KILL             | WHOOPI      | HURT         |
        | VANILLA DAY                 | WHOOPI      | HURT         |
        | ZOOLANDER FICTION           | WHOOPI      | HURT         |
        | ATLANTIS CAUSE              | CATE        | HARRIS       |
        | BERETS AGENT                | CATE        | HARRIS       |
        | CRAZY HOME                  | CATE        | HARRIS       |
        | CROOKED FROGMEN             | CATE        | HARRIS       |
        | DANGEROUS UPTOWN            | CATE        | HARRIS       |
        | DESIRE ALIEN                | CATE        | HARRIS       |
        | FROST HEAD                  | CATE        | HARRIS       |
        | GILMORE BOILED              | CATE        | HARRIS       |
        | GREEK EVERYONE              | CATE        | HARRIS       |
        | HANDICAP BOONDOCK           | CATE        | HARRIS       |
        | INTRIGUE WORST              | CATE        | HARRIS       |
        | JUMPING WRATH               | CATE        | HARRIS       |
        | MODERN DORADO               | CATE        | HARRIS       |
        | MUPPET MILE                 | CATE        | HARRIS       |
        | PERSONAL LADYBUGS           | CATE        | HARRIS       |
        | ROLLERCOASTER BRINGING      | CATE        | HARRIS       |
        | RUNNER MADIGAN              | CATE        | HARRIS       |
        | SCARFACE BANG               | CATE        | HARRIS       |
        | SEA VIRGIN                  | CATE        | HARRIS       |
        | SHINING ROSES               | CATE        | HARRIS       |
        | SORORITY QUEEN              | CATE        | HARRIS       |
        | SPINAL ROCKY                | CATE        | HARRIS       |
        | STAMPEDE DISTURBING         | CATE        | HARRIS       |
        | STORM HAPPINESS             | CATE        | HARRIS       |
        | SUMMER SCARFACE             | CATE        | HARRIS       |
        | SUN CONFESSIONS             | CATE        | HARRIS       |
        | TREASURE COMMAND            | CATE        | HARRIS       |
        | WRATH MILE                  | CATE        | HARRIS       |
        | ALADDIN CALENDAR            | JADA        | RYDER        |
        | ALTER VICTORY               | JADA        | RYDER        |
        | BUNCH MINDS                 | JADA        | RYDER        |
        | CHASING FIGHT               | JADA        | RYDER        |
        | CRAFT OUTFIELD              | JADA        | RYDER        |
        | CUPBOARD SINNERS            | JADA        | RYDER        |
        | DOZEN LION                  | JADA        | RYDER        |
        | FOREVER CANDIDATE           | JADA        | RYDER        |
        | GARDEN ISLAND               | JADA        | RYDER        |
        | GOSFORD DONNIE              | JADA        | RYDER        |
        | ISHTAR ROCKETEER            | JADA        | RYDER        |
        | JEKYLL FROGMEN              | JADA        | RYDER        |
        | KARATE MOON                 | JADA        | RYDER        |
        | KISSING DOLLS               | JADA        | RYDER        |
        | KWAI HOMEWARD               | JADA        | RYDER        |
        | LUCKY FLYING                | JADA        | RYDER        |
        | MALKOVICH PET               | JADA        | RYDER        |
        | MIDSUMMER GROUNDHOG         | JADA        | RYDER        |
        | MURDER ANTITRUST            | JADA        | RYDER        |
        | RAGE GAMES                  | JADA        | RYDER        |
        | RAIDERS ANTITRUST           | JADA        | RYDER        |
        | ROBBERS JOON                | JADA        | RYDER        |
        | SALUTE APOLLO               | JADA        | RYDER        |
        | SIDE ARK                    | JADA        | RYDER        |
        | STATE WASTELAND             | JADA        | RYDER        |
        | SUGAR WONKA                 | JADA        | RYDER        |
        | SUN CONFESSIONS             | JADA        | RYDER        |
        | TALENTED HOMICIDE           | JADA        | RYDER        |
        | TRAMP OTHERS                | JADA        | RYDER        |
        | TROUBLE DATE                | JADA        | RYDER        |
        | ZOOLANDER FICTION           | JADA        | RYDER        |
        | BABY HALL                   | RIVER       | DEAN         |
        | BLADE POLISH                | RIVER       | DEAN         |
        | CHICAGO NORTH               | RIVER       | DEAN         |
        | CONFUSED CANDLES            | RIVER       | DEAN         |
        | DIRTY ACE                   | RIVER       | DEAN         |
        | DOGMA FAMILY                | RIVER       | DEAN         |
        | FIRE WOLVES                 | RIVER       | DEAN         |
        | FROGMEN BREAKING            | RIVER       | DEAN         |
        | GLEAMING JAWBREAKER         | RIVER       | DEAN         |
        | GUMP DATE                   | RIVER       | DEAN         |
        | HATE HANDICAP               | RIVER       | DEAN         |
        | INDEPENDENCE HOTEL          | RIVER       | DEAN         |
        | JERSEY SASSY                | RIVER       | DEAN         |
        | KILL BROTHERHOOD            | RIVER       | DEAN         |
        | MARS ROMAN                  | RIVER       | DEAN         |
        | MIGHTY LUCK                 | RIVER       | DEAN         |
        | MOVIE SHAKESPEARE           | RIVER       | DEAN         |
        | MYSTIC TRUMAN               | RIVER       | DEAN         |
        | PARK CITIZEN                | RIVER       | DEAN         |
        | PARTY KNOCK                 | RIVER       | DEAN         |
        | PINOCCHIO SIMON             | RIVER       | DEAN         |
        | POCUS PULP                  | RIVER       | DEAN         |
        | POND SEATTLE                | RIVER       | DEAN         |
        | QUEEN LUKE                  | RIVER       | DEAN         |
        | SHREK LICENSE               | RIVER       | DEAN         |
        | SORORITY QUEEN              | RIVER       | DEAN         |
        | SPIRIT FLINTSTONES          | RIVER       | DEAN         |
        | SWEET BROTHERHOOD           | RIVER       | DEAN         |
        | TEEN APOLLO                 | RIVER       | DEAN         |
        | TRAMP OTHERS                | RIVER       | DEAN         |
        | WARDROBE PHANTOM            | RIVER       | DEAN         |
        | ALTER VICTORY               | ANGELA      | WITHERSPOON  |
        | BERETS AGENT                | ANGELA      | WITHERSPOON  |
        | BLADE POLISH                | ANGELA      | WITHERSPOON  |
        | BOULEVARD MOB               | ANGELA      | WITHERSPOON  |
        | BRINGING HYSTERICAL         | ANGELA      | WITHERSPOON  |
        | BULL SHAWSHANK              | ANGELA      | WITHERSPOON  |
        | CASABLANCA SUPER            | ANGELA      | WITHERSPOON  |
        | CASSIDY WYOMING             | ANGELA      | WITHERSPOON  |
        | CAT CONEHEADS               | ANGELA      | WITHERSPOON  |
        | CELEBRITY HORN              | ANGELA      | WITHERSPOON  |
        | CHANCE RESURRECTION         | ANGELA      | WITHERSPOON  |
        | COAST RAINBOW               | ANGELA      | WITHERSPOON  |
        | CORE SUIT                   | ANGELA      | WITHERSPOON  |
        | DAY UNFAITHFUL              | ANGELA      | WITHERSPOON  |
        | DETECTIVE VISION            | ANGELA      | WITHERSPOON  |
        | DUDE BLINDNESS              | ANGELA      | WITHERSPOON  |
        | EDGE KISSING                | ANGELA      | WITHERSPOON  |
        | EVOLUTION ALTER             | ANGELA      | WITHERSPOON  |
        | EXORCIST STING              | ANGELA      | WITHERSPOON  |
        | FIDDLER LOST                | ANGELA      | WITHERSPOON  |
        | HALLOWEEN NUTS              | ANGELA      | WITHERSPOON  |
        | HANGING DEEP                | ANGELA      | WITHERSPOON  |
        | JACKET FRISCO               | ANGELA      | WITHERSPOON  |
        | KWAI HOMEWARD               | ANGELA      | WITHERSPOON  |
        | LUCKY FLYING                | ANGELA      | WITHERSPOON  |
        | MOTHER OLEANDER             | ANGELA      | WITHERSPOON  |
        | PEAK FOREVER                | ANGELA      | WITHERSPOON  |
        | PULP BEVERLY                | ANGELA      | WITHERSPOON  |
        | RUSH GOODFELLAS             | ANGELA      | WITHERSPOON  |
        | SASSY PACKER                | ANGELA      | WITHERSPOON  |
        | SECRET GROUNDHOG            | ANGELA      | WITHERSPOON  |
        | SHAWSHANK BUBBLE            | ANGELA      | WITHERSPOON  |
        | STEPMOM DREAM               | ANGELA      | WITHERSPOON  |
        | TOMATOES HELLFIGHTERS       | ANGELA      | WITHERSPOON  |
        | WAIT CIDER                  | ANGELA      | WITHERSPOON  |
        | ARMAGEDDON LOST             | KIM         | ALLEN        |
        | BUTTERFLY CHOCOLAT          | KIM         | ALLEN        |
        | CARIBBEAN LIBERTY           | KIM         | ALLEN        |
        | CLASH FREDDY                | KIM         | ALLEN        |
        | CLEOPATRA DEVIL             | KIM         | ALLEN        |
        | DOORS PRESIDENT             | KIM         | ALLEN        |
        | EXORCIST STING              | KIM         | ALLEN        |
        | HARPER DYING                | KIM         | ALLEN        |
        | HEARTBREAKERS BRIGHT        | KIM         | ALLEN        |
        | INDEPENDENCE HOTEL          | KIM         | ALLEN        |
        | JAPANESE RUN                | KIM         | ALLEN        |
        | JINGLE SAGEBRUSH            | KIM         | ALLEN        |
        | KARATE MOON                 | KIM         | ALLEN        |
        | LOLA AGENT                  | KIM         | ALLEN        |
        | MONSTER SPARTACUS           | KIM         | ALLEN        |
        | NONE SPIKING                | KIM         | ALLEN        |
        | NOTORIOUS REUNION           | KIM         | ALLEN        |
        | ORANGE GRAPES               | KIM         | ALLEN        |
        | PAST SUICIDES               | KIM         | ALLEN        |
        | PATRIOT ROMAN               | KIM         | ALLEN        |
        | POTLUCK MIXED               | KIM         | ALLEN        |
        | RAINBOW SHOCK               | KIM         | ALLEN        |
        | RESERVOIR ADAPTATION        | KIM         | ALLEN        |
        | RUGRATS SHAKESPEARE         | KIM         | ALLEN        |
        | SOUP WISDOM                 | KIM         | ALLEN        |
        | TITANS JERK                 | KIM         | ALLEN        |
        | UNFAITHFUL KILL             | KIM         | ALLEN        |
        | WAIT CIDER                  | KIM         | ALLEN        |
        | ALASKA PHANTOM              | ALBERT      | JOHANSSON    |
        | ALLEY EVOLUTION             | ALBERT      | JOHANSSON    |
        | APOLLO TEEN                 | ALBERT      | JOHANSSON    |
        | CANDLES GRAPES              | ALBERT      | JOHANSSON    |
        | CONNECTICUT TRAMP           | ALBERT      | JOHANSSON    |
        | CROOKED FROGMEN             | ALBERT      | JOHANSSON    |
        | CRUSADE HONEY               | ALBERT      | JOHANSSON    |
        | DANGEROUS UPTOWN            | ALBERT      | JOHANSSON    |
        | DECEIVER BETRAYED           | ALBERT      | JOHANSSON    |
        | ELF MURDER                  | ALBERT      | JOHANSSON    |
        | EXPRESS LONELY              | ALBERT      | JOHANSSON    |
        | FIGHT JAWBREAKER            | ALBERT      | JOHANSSON    |
        | FLAMINGOS CONNECTICUT       | ALBERT      | JOHANSSON    |
        | GRACELAND DYNAMITE          | ALBERT      | JOHANSSON    |
        | GROSSE WONDERFUL            | ALBERT      | JOHANSSON    |
        | HARPER DYING                | ALBERT      | JOHANSSON    |
        | HEAVEN FREEDOM              | ALBERT      | JOHANSSON    |
        | HOMEWARD CIDER              | ALBERT      | JOHANSSON    |
        | HONEY TIES                  | ALBERT      | JOHANSSON    |
        | LEAGUE HELLFIGHTERS         | ALBERT      | JOHANSSON    |
        | LEBOWSKI SOLDIERS           | ALBERT      | JOHANSSON    |
        | METAL ARMAGEDDON            | ALBERT      | JOHANSSON    |
        | MONSOON CAUSE               | ALBERT      | JOHANSSON    |
        | REDEMPTION COMFORTS         | ALBERT      | JOHANSSON    |
        | RIGHT CRANES                | ALBERT      | JOHANSSON    |
        | ROAD ROXANNE                | ALBERT      | JOHANSSON    |
        | SWEDEN SHINING              | ALBERT      | JOHANSSON    |
        | TREASURE COMMAND            | ALBERT      | JOHANSSON    |
        | UNDEFEATED DALMATIONS       | ALBERT      | JOHANSSON    |
        | VIRGINIAN PLUTO             | ALBERT      | JOHANSSON    |
        | WALLS ARTIST                | ALBERT      | JOHANSSON    |
        | WEDDING APOLLO              | ALBERT      | JOHANSSON    |
        | WEST LION                   | ALBERT      | JOHANSSON    |
        | AFFAIR PREJUDICE            | FAY         | WINSLET      |
        | BONNIE HOLOCAUST            | FAY         | WINSLET      |
        | CENTER DINOSAUR             | FAY         | WINSLET      |
        | CHASING FIGHT               | FAY         | WINSLET      |
        | CHISUM BEHAVIOR             | FAY         | WINSLET      |
        | CONNECTION MICROCOSMOS      | FAY         | WINSLET      |
        | DRAGONFLY STRANGERS         | FAY         | WINSLET      |
        | DRIVER ANNIE                | FAY         | WINSLET      |
        | EXPENDABLE STALLION         | FAY         | WINSLET      |
        | EYES DRIVING                | FAY         | WINSLET      |
        | FATAL HAUNTED               | FAY         | WINSLET      |
        | FEVER EMPIRE                | FAY         | WINSLET      |
        | FIREHOUSE VIETNAM           | FAY         | WINSLET      |
        | FREAKY POCUS                | FAY         | WINSLET      |
        | FROST HEAD                  | FAY         | WINSLET      |
        | GASLIGHT CRUSADE            | FAY         | WINSLET      |
        | HAMLET WISDOM               | FAY         | WINSLET      |
        | HARPER DYING                | FAY         | WINSLET      |
        | HAUNTED ANTITRUST           | FAY         | WINSLET      |
        | HEAVEN FREEDOM              | FAY         | WINSLET      |
        | HOOSIERS BIRDCAGE           | FAY         | WINSLET      |
        | HURRICANE AFFAIR            | FAY         | WINSLET      |
        | LAMBS CINCINATTI            | FAY         | WINSLET      |
        | MALKOVICH PET               | FAY         | WINSLET      |
        | MASSACRE USUAL              | FAY         | WINSLET      |
        | OZ LIAISONS                 | FAY         | WINSLET      |
        | POLISH BROOKLYN             | FAY         | WINSLET      |
        | QUILLS BULL                 | FAY         | WINSLET      |
        | SUNDANCE INVASION           | FAY         | WINSLET      |
        | WAR NOTTING                 | FAY         | WINSLET      |
        | WORDS HUNTER                | FAY         | WINSLET      |
        | ANONYMOUS HUMAN             | EMILY       | DEE          |
        | BASIC EASY                  | EMILY       | DEE          |
        | CHAMBER ITALIAN             | EMILY       | DEE          |
        | CHRISTMAS MOONSHINE         | EMILY       | DEE          |
        | DESTINY SATURDAY            | EMILY       | DEE          |
        | FUGITIVE MAGUIRE            | EMILY       | DEE          |
        | GONE TROUBLE                | EMILY       | DEE          |
        | HOLLOW JEOPARDY             | EMILY       | DEE          |
        | INVASION CYCLONE            | EMILY       | DEE          |
        | OCTOBER SUBMARINE           | EMILY       | DEE          |
        | REBEL AIRPORT               | EMILY       | DEE          |
        | SCARFACE BANG               | EMILY       | DEE          |
        | SEA VIRGIN                  | EMILY       | DEE          |
        | SHREK LICENSE               | EMILY       | DEE          |
        | BANG KWAI                   | RUSSELL     | TEMPLE       |
        | BILL OTHERS                 | RUSSELL     | TEMPLE       |
        | BREAKFAST GOLDFINGER        | RUSSELL     | TEMPLE       |
        | CANYON STOCK                | RUSSELL     | TEMPLE       |
        | CHASING FIGHT               | RUSSELL     | TEMPLE       |
        | CHITTY LOCK                 | RUSSELL     | TEMPLE       |
        | CITIZEN SHREK               | RUSSELL     | TEMPLE       |
        | CLOSER BANG                 | RUSSELL     | TEMPLE       |
        | COMFORTS RUSH               | RUSSELL     | TEMPLE       |
        | CONNECTION MICROCOSMOS      | RUSSELL     | TEMPLE       |
        | CRAZY HOME                  | RUSSELL     | TEMPLE       |
        | CROSSROADS CASUALTIES       | RUSSELL     | TEMPLE       |
        | FROGMEN BREAKING            | RUSSELL     | TEMPLE       |
        | GHOST GROUNDHOG             | RUSSELL     | TEMPLE       |
        | GLORY TRACY                 | RUSSELL     | TEMPLE       |
        | GOLD RIVER                  | RUSSELL     | TEMPLE       |
        | INDIAN LOVE                 | RUSSELL     | TEMPLE       |
        | NOVOCAINE FLIGHT            | RUSSELL     | TEMPLE       |
        | PELICAN COMFORTS            | RUSSELL     | TEMPLE       |
        | PLATOON INSTINCT            | RUSSELL     | TEMPLE       |
        | SANTA PARIS                 | RUSSELL     | TEMPLE       |
        | SHAKESPEARE SADDLE          | RUSSELL     | TEMPLE       |
        | SLUMS DUCK                  | RUSSELL     | TEMPLE       |
        | SMILE EARRING               | RUSSELL     | TEMPLE       |
        | TOWERS HURRICANE            | RUSSELL     | TEMPLE       |
        | TRAINSPOTTING STRANGERS     | RUSSELL     | TEMPLE       |
        | TROOPERS METAL              | RUSSELL     | TEMPLE       |
        | UNCUT SUICIDES              | RUSSELL     | TEMPLE       |
        | VISION TORQUE               | RUSSELL     | TEMPLE       |
        | VOLCANO TEXAS               | RUSSELL     | TEMPLE       |
        | WRATH MILE                  | RUSSELL     | TEMPLE       |
        | ANACONDA CONFESSIONS        | JAYNE       | NOLTE        |
        | BEDAZZLED MARRIED           | JAYNE       | NOLTE        |
        | BIRD INDEPENDENCE           | JAYNE       | NOLTE        |
        | BRAVEHEART HUMAN            | JAYNE       | NOLTE        |
        | BULL SHAWSHANK              | JAYNE       | NOLTE        |
        | COMANCHEROS ENEMY           | JAYNE       | NOLTE        |
        | CREEPERS KANE               | JAYNE       | NOLTE        |
        | DANCING FEVER               | JAYNE       | NOLTE        |
        | DISCIPLE MOTHER             | JAYNE       | NOLTE        |
        | EARTH VISION                | JAYNE       | NOLTE        |
        | ENGLISH BULWORTH            | JAYNE       | NOLTE        |
        | FEATHERS METAL              | JAYNE       | NOLTE        |
        | GUMP DATE                   | JAYNE       | NOLTE        |
        | HORN WORKING                | JAYNE       | NOLTE        |
        | HYSTERICAL GRAIL            | JAYNE       | NOLTE        |
        | ICE CROSSING                | JAYNE       | NOLTE        |
        | INVASION CYCLONE            | JAYNE       | NOLTE        |
        | LAMBS CINCINATTI            | JAYNE       | NOLTE        |
        | LUST LOCK                   | JAYNE       | NOLTE        |
        | MAIDEN HOME                 | JAYNE       | NOLTE        |
        | NOTORIOUS REUNION           | JAYNE       | NOLTE        |
        | OUTFIELD MASSACRE           | JAYNE       | NOLTE        |
        | PERFECT GROOVE              | JAYNE       | NOLTE        |
        | PRIMARY GLASS               | JAYNE       | NOLTE        |
        | REUNION WITCHES             | JAYNE       | NOLTE        |
        | SECRETARY ROUGE             | JAYNE       | NOLTE        |
        | STRANGERS GRAFFITI          | JAYNE       | NOLTE        |
        | SWEETHEARTS SUSPECTS        | JAYNE       | NOLTE        |
        | TELEMARK HEARTBREAKERS      | JAYNE       | NOLTE        |
        | THIEF PELICAN               | JAYNE       | NOLTE        |
        | TIES HUNGER                 | JAYNE       | NOLTE        |
        | TITANIC BOONDOCK            | JAYNE       | NOLTE        |
        | WAIT CIDER                  | JAYNE       | NOLTE        |
        | WASTELAND DIVINE            | JAYNE       | NOLTE        |
        | CENTER DINOSAUR             | GEOFFREY    | HESTON       |
        | CHINATOWN GLADIATOR         | GEOFFREY    | HESTON       |
        | COMA HEAD                   | GEOFFREY    | HESTON       |
        | COMMAND DARLING             | GEOFFREY    | HESTON       |
        | DAZED PUNK                  | GEOFFREY    | HESTON       |
        | DIRTY ACE                   | GEOFFREY    | HESTON       |
        | FUGITIVE MAGUIRE            | GEOFFREY    | HESTON       |
        | GOLDMINE TYCOON             | GEOFFREY    | HESTON       |
        | GORGEOUS BINGO              | GEOFFREY    | HESTON       |
        | GRIT CLOCKWORK              | GEOFFREY    | HESTON       |
        | IGBY MAKER                  | GEOFFREY    | HESTON       |
        | INSTINCT AIRPORT            | GEOFFREY    | HESTON       |
        | JEOPARDY ENCINO             | GEOFFREY    | HESTON       |
        | KISSING DOLLS               | GEOFFREY    | HESTON       |
        | LOLA AGENT                  | GEOFFREY    | HESTON       |
        | LUCK OPUS                   | GEOFFREY    | HESTON       |
        | MERMAID INSECTS             | GEOFFREY    | HESTON       |
        | MIDNIGHT WESTWARD           | GEOFFREY    | HESTON       |
        | ODDS BOOGIE                 | GEOFFREY    | HESTON       |
        | PARIS WEEKEND               | GEOFFREY    | HESTON       |
        | PATTON INTERVIEW            | GEOFFREY    | HESTON       |
        | PUNK DIVORCE                | GEOFFREY    | HESTON       |
        | TELEMARK HEARTBREAKERS      | GEOFFREY    | HESTON       |
        | TITANIC BOONDOCK            | GEOFFREY    | HESTON       |
        | TOMORROW HUSTLER            | GEOFFREY    | HESTON       |
        | WORKING MICROCOSMOS         | GEOFFREY    | HESTON       |
        | BEAR GRACELAND              | BEN         | HARRIS       |
        | CITIZEN SHREK               | BEN         | HARRIS       |
        | DAZED PUNK                  | BEN         | HARRIS       |
        | DOZEN LION                  | BEN         | HARRIS       |
        | FIREHOUSE VIETNAM           | BEN         | HARRIS       |
        | FRANKENSTEIN STRANGER       | BEN         | HARRIS       |
        | JAPANESE RUN                | BEN         | HARRIS       |
        | JASON TRAP                  | BEN         | HARRIS       |
        | MILLION ACE                 | BEN         | HARRIS       |
        | MUPPET MILE                 | BEN         | HARRIS       |
        | MUSKETEERS WAIT             | BEN         | HARRIS       |
        | NASH CHOCOLAT               | BEN         | HARRIS       |
        | PET HAUNTING                | BEN         | HARRIS       |
        | PINOCCHIO SIMON             | BEN         | HARRIS       |
        | RIDER CADDYSHACK            | BEN         | HARRIS       |
        | SCARFACE BANG               | BEN         | HARRIS       |
        | SORORITY QUEEN              | BEN         | HARRIS       |
        | STING PERSONAL              | BEN         | HARRIS       |
        | TIMBERLAND SKY              | BEN         | HARRIS       |
        | TOURIST PELICAN             | BEN         | HARRIS       |
        | UPRISING UPTOWN             | BEN         | HARRIS       |
        | WATERFRONT DELIVERANCE      | BEN         | HARRIS       |
        | WEREWOLF LOLA               | BEN         | HARRIS       |
        | BABY HALL                   | MINNIE      | KILMER       |
        | BEETHOVEN EXORCIST          | MINNIE      | KILMER       |
        | CHAPLIN LICENSE             | MINNIE      | KILMER       |
        | CONSPIRACY SPIRIT           | MINNIE      | KILMER       |
        | DAISY MENAGERIE             | MINNIE      | KILMER       |
        | DINOSAUR SECRETARY          | MINNIE      | KILMER       |
        | HUSTLER PARTY               | MINNIE      | KILMER       |
        | JASON TRAP                  | MINNIE      | KILMER       |
        | JEEPERS WEDDING             | MINNIE      | KILMER       |
        | JET NEIGHBORS               | MINNIE      | KILMER       |
        | LOVELY JINGLE               | MINNIE      | KILMER       |
        | NORTH TEQUILA               | MINNIE      | KILMER       |
        | RINGS HEARTBREAKERS         | MINNIE      | KILMER       |
        | SADDLE ANTITRUST            | MINNIE      | KILMER       |
        | SAVANNAH TOWN               | MINNIE      | KILMER       |
        | SOLDIERS EVOLUTION          | MINNIE      | KILMER       |
        | STOCK GLASS                 | MINNIE      | KILMER       |
        | TYCOON GATHERING            | MINNIE      | KILMER       |
        | VELVET TERMINATOR           | MINNIE      | KILMER       |
        | WORKER TARZAN               | MINNIE      | KILMER       |
        | ANONYMOUS HUMAN             | MERYL       | GIBSON       |
        | CADDYSHACK JEDI             | MERYL       | GIBSON       |
        | CHICAGO NORTH               | MERYL       | GIBSON       |
        | CLONES PINOCCHIO            | MERYL       | GIBSON       |
        | COMFORTS RUSH               | MERYL       | GIBSON       |
        | COMMAND DARLING             | MERYL       | GIBSON       |
        | CROSSROADS CASUALTIES       | MERYL       | GIBSON       |
        | DARES PLUTO                 | MERYL       | GIBSON       |
        | EGG IGBY                    | MERYL       | GIBSON       |
        | ELEMENT FREDDY              | MERYL       | GIBSON       |
        | ENCOUNTERS CURTAIN          | MERYL       | GIBSON       |
        | FACTORY DRAGON              | MERYL       | GIBSON       |
        | FIGHT JAWBREAKER            | MERYL       | GIBSON       |
        | HANGING DEEP                | MERYL       | GIBSON       |
        | HAPPINESS UNITED            | MERYL       | GIBSON       |
        | HOLIDAY GAMES               | MERYL       | GIBSON       |
        | HUNGER ROOF                 | MERYL       | GIBSON       |
        | INTRIGUE WORST              | MERYL       | GIBSON       |
        | JADE BUNCH                  | MERYL       | GIBSON       |
        | JUGGLER HARDLY              | MERYL       | GIBSON       |
        | MODEL FISH                  | MERYL       | GIBSON       |
        | MOURNING PURPLE             | MERYL       | GIBSON       |
        | PINOCCHIO SIMON             | MERYL       | GIBSON       |
        | PRINCESS GIANT              | MERYL       | GIBSON       |
        | SKY MIRACLE                 | MERYL       | GIBSON       |
        | STATE WASTELAND             | MERYL       | GIBSON       |
        | WAKE JAWS                   | MERYL       | GIBSON       |
        | WORKER TARZAN               | MERYL       | GIBSON       |
        | AMELIE HELLFIGHTERS         | IAN         | TANDY        |
        | BERETS AGENT                | IAN         | TANDY        |
        | CATCH AMISTAD               | IAN         | TANDY        |
        | CITIZEN SHREK               | IAN         | TANDY        |
        | DEER VIRGINIAN              | IAN         | TANDY        |
        | DRACULA CRYSTAL             | IAN         | TANDY        |
        | FANTASY TROOPERS            | IAN         | TANDY        |
        | FIDDLER LOST                | IAN         | TANDY        |
        | GLADIATOR WESTWARD          | IAN         | TANDY        |
        | GLEAMING JAWBREAKER         | IAN         | TANDY        |
        | GROOVE FICTION              | IAN         | TANDY        |
        | GUN BONNIE                  | IAN         | TANDY        |
        | HAWK CHILL                  | IAN         | TANDY        |
        | HOMEWARD CIDER              | IAN         | TANDY        |
        | INFORMER DOUBLE             | IAN         | TANDY        |
        | LEATHERNECKS DWARFS         | IAN         | TANDY        |
        | MIXED DOORS                 | IAN         | TANDY        |
        | MONEY HAROLD                | IAN         | TANDY        |
        | NOTTING SPEAKEASY           | IAN         | TANDY        |
        | POLISH BROOKLYN             | IAN         | TANDY        |
        | SAGEBRUSH CLUELESS          | IAN         | TANDY        |
        | SCARFACE BANG               | IAN         | TANDY        |
        | SHAWSHANK BUBBLE            | IAN         | TANDY        |
        | STORM HAPPINESS             | IAN         | TANDY        |
        | TEXAS WATCH                 | IAN         | TANDY        |
        | TIGHTS DAWN                 | IAN         | TANDY        |
        | VIDEOTAPE ARSENIC           | IAN         | TANDY        |
        | WEDDING APOLLO              | IAN         | TANDY        |
        | WORDS HUNTER                | IAN         | TANDY        |
        | YOUTH KICK                  | IAN         | TANDY        |
        | ZORRO ARK                   | IAN         | TANDY        |
        | BANG KWAI                   | FAY         | WOOD         |
        | CLEOPATRA DEVIL             | FAY         | WOOD         |
        | CRYSTAL BREAKING            | FAY         | WOOD         |
        | DORADO NOTTING              | FAY         | WOOD         |
        | DUMBO LUST                  | FAY         | WOOD         |
        | DURHAM PANKY                | FAY         | WOOD         |
        | ENGLISH BULWORTH            | FAY         | WOOD         |
        | EXTRAORDINARY CONQUERER     | FAY         | WOOD         |
        | FAMILY SWEET                | FAY         | WOOD         |
        | GANGS PRIDE                 | FAY         | WOOD         |
        | GREEDY ROOTS                | FAY         | WOOD         |
        | IDAHO LOVE                  | FAY         | WOOD         |
        | INSIDER ARIZONA             | FAY         | WOOD         |
        | INTRIGUE WORST              | FAY         | WOOD         |
        | KWAI HOMEWARD               | FAY         | WOOD         |
        | LIAISONS SWEET              | FAY         | WOOD         |
        | MONTEREY LABYRINTH          | FAY         | WOOD         |
        | OUTBREAK DIVINE             | FAY         | WOOD         |
        | PURPLE MOVIE                | FAY         | WOOD         |
        | RUSHMORE MERMAID            | FAY         | WOOD         |
        | SEATTLE EXPECATIONS         | FAY         | WOOD         |
        | STEERS ARMAGEDDON           | FAY         | WOOD         |
        | ALADDIN CALENDAR            | GRETA       | MALDEN       |
        | ANALYZE HOOSIERS            | GRETA       | MALDEN       |
        | ARABIA DOGMA                | GRETA       | MALDEN       |
        | CARRIE BUNCH                | GRETA       | MALDEN       |
        | CLOSER BANG                 | GRETA       | MALDEN       |
        | CONVERSATION DOWNHILL       | GRETA       | MALDEN       |
        | DARKO DORADO                | GRETA       | MALDEN       |
        | DAZED PUNK                  | GRETA       | MALDEN       |
        | EVOLUTION ALTER             | GRETA       | MALDEN       |
        | FANTASY TROOPERS            | GRETA       | MALDEN       |
        | FLASH WARS                  | GRETA       | MALDEN       |
        | FLYING HOOK                 | GRETA       | MALDEN       |
        | GENTLEMEN STAGE             | GRETA       | MALDEN       |
        | HARDLY ROBBERS              | GRETA       | MALDEN       |
        | HAUNTING PIANIST            | GRETA       | MALDEN       |
        | HOOSIERS BIRDCAGE           | GRETA       | MALDEN       |
        | KICK SAVANNAH               | GRETA       | MALDEN       |
        | LOVE SUICIDES               | GRETA       | MALDEN       |
        | MICROCOSMOS PARADISE        | GRETA       | MALDEN       |
        | MIDNIGHT WESTWARD           | GRETA       | MALDEN       |
        | MULAN MOON                  | GRETA       | MALDEN       |
        | NATIONAL STORY              | GRETA       | MALDEN       |
        | ORDER BETRAYED              | GRETA       | MALDEN       |
        | PAST SUICIDES               | GRETA       | MALDEN       |
        | PRIDE ALAMO                 | GRETA       | MALDEN       |
        | RAINBOW SHOCK               | GRETA       | MALDEN       |
        | SKY MIRACLE                 | GRETA       | MALDEN       |
        | SPY MILE                    | GRETA       | MALDEN       |
        | TADPOLE PARK                | GRETA       | MALDEN       |
        | TROOPERS METAL              | GRETA       | MALDEN       |
        | WEEKEND PERSONAL            | GRETA       | MALDEN       |
        | WIFE TURN                   | GRETA       | MALDEN       |
        | APOCALYPSE FLAMINGOS        | VIVIEN      | BASINGER     |
        | BABY HALL                   | VIVIEN      | BASINGER     |
        | BEETHOVEN EXORCIST          | VIVIEN      | BASINGER     |
        | BENEATH RUSH                | VIVIEN      | BASINGER     |
        | BUBBLE GROSSE               | VIVIEN      | BASINGER     |
        | CAROL TEXAS                 | VIVIEN      | BASINGER     |
        | CONNECTICUT TRAMP           | VIVIEN      | BASINGER     |
        | CONNECTION MICROCOSMOS      | VIVIEN      | BASINGER     |
        | CRAZY HOME                  | VIVIEN      | BASINGER     |
        | DAWN POND                   | VIVIEN      | BASINGER     |
        | DONNIE ALLEY                | VIVIEN      | BASINGER     |
        | EXORCIST STING              | VIVIEN      | BASINGER     |
        | HOUSE DYNAMITE              | VIVIEN      | BASINGER     |
        | JACKET FRISCO               | VIVIEN      | BASINGER     |
        | JERICHO MULAN               | VIVIEN      | BASINGER     |
        | LOSER HUSTLER               | VIVIEN      | BASINGER     |
        | MALLRATS UNITED             | VIVIEN      | BASINGER     |
        | MINORITY KISS               | VIVIEN      | BASINGER     |
        | MOULIN WAKE                 | VIVIEN      | BASINGER     |
        | NATIONAL STORY              | VIVIEN      | BASINGER     |
        | NOON PAPI                   | VIVIEN      | BASINGER     |
        | OPEN AFRICAN                | VIVIEN      | BASINGER     |
        | SIMON NORTH                 | VIVIEN      | BASINGER     |
        | SMOKING BARBARELLA          | VIVIEN      | BASINGER     |
        | SPARTACUS CHEAPER           | VIVIEN      | BASINGER     |
        | SPIRIT FLINTSTONES          | VIVIEN      | BASINGER     |
        | STAMPEDE DISTURBING         | VIVIEN      | BASINGER     |
        | SUSPECTS QUILLS             | VIVIEN      | BASINGER     |
        | TELEGRAPH VOYAGE            | VIVIEN      | BASINGER     |
        | TELEMARK HEARTBREAKERS      | VIVIEN      | BASINGER     |
        | TOMATOES HELLFIGHTERS       | VIVIEN      | BASINGER     |
        | TOOTSIE PILOT               | VIVIEN      | BASINGER     |
        | WEEKEND PERSONAL            | VIVIEN      | BASINGER     |
        | WEREWOLF LOLA               | VIVIEN      | BASINGER     |
        | WORLD LEATHERNECKS          | VIVIEN      | BASINGER     |
        | AMELIE HELLFIGHTERS         | LAURA       | BRODY        |
        | BLOOD ARGONAUTS             | LAURA       | BRODY        |
        | CAT CONEHEADS               | LAURA       | BRODY        |
        | CRANES RESERVOIR            | LAURA       | BRODY        |
        | DANCING FEVER               | LAURA       | BRODY        |
        | DARES PLUTO                 | LAURA       | BRODY        |
        | DESIRE ALIEN                | LAURA       | BRODY        |
        | DOZEN LION                  | LAURA       | BRODY        |
        | FUGITIVE MAGUIRE            | LAURA       | BRODY        |
        | FULL FLATLINERS             | LAURA       | BRODY        |
        | FURY MURDER                 | LAURA       | BRODY        |
        | GODFATHER DIARY             | LAURA       | BRODY        |
        | HOBBIT ALIEN                | LAURA       | BRODY        |
        | MAGNOLIA FORRESTER          | LAURA       | BRODY        |
        | MASK PEACH                  | LAURA       | BRODY        |
        | MOTIONS DETAILS             | LAURA       | BRODY        |
        | PET HAUNTING                | LAURA       | BRODY        |
        | PINOCCHIO SIMON             | LAURA       | BRODY        |
        | SHANGHAI TYCOON             | LAURA       | BRODY        |
        | SHOCK CABIN                 | LAURA       | BRODY        |
        | SINNERS ATLANTIS            | LAURA       | BRODY        |
        | SKY MIRACLE                 | LAURA       | BRODY        |
        | SOMETHING DUCK              | LAURA       | BRODY        |
        | TARZAN VIDEOTAPE            | LAURA       | BRODY        |
        | TRANSLATION SUMMER          | LAURA       | BRODY        |
        | WISDOM WORKER               | LAURA       | BRODY        |
        | ACE GOLDFINGER              | CHRIS       | DEPP         |
        | ALONE TRIP                  | CHRIS       | DEPP         |
        | ATLANTIS CAUSE              | CHRIS       | DEPP         |
        | DOOM DANCING                | CHRIS       | DEPP         |
        | EAGLES PANKY                | CHRIS       | DEPP         |
        | EGYPT TENENBAUMS            | CHRIS       | DEPP         |
        | GONE TROUBLE                | CHRIS       | DEPP         |
        | IMPOSSIBLE PREJUDICE        | CHRIS       | DEPP         |
        | IRON MOON                   | CHRIS       | DEPP         |
        | JERK PAYCHECK               | CHRIS       | DEPP         |
        | MINDS TRUMAN                | CHRIS       | DEPP         |
        | PARTY KNOCK                 | CHRIS       | DEPP         |
        | SABRINA MIDNIGHT            | CHRIS       | DEPP         |
        | SCALAWAG DUCK               | CHRIS       | DEPP         |
        | SCHOOL JACKET               | CHRIS       | DEPP         |
        | SIDE ARK                    | CHRIS       | DEPP         |
        | SPEED SUIT                  | CHRIS       | DEPP         |
        | TEQUILA PAST                | CHRIS       | DEPP         |
        | VOLUME HOUSE                | CHRIS       | DEPP         |
        | WAKE JAWS                   | CHRIS       | DEPP         |
        | ATLANTIS CAUSE              | HARVEY      | HOPE         |
        | BEACH HEARTBREAKERS         | HARVEY      | HOPE         |
        | BORROWERS BEDAZZLED         | HARVEY      | HOPE         |
        | BOULEVARD MOB               | HARVEY      | HOPE         |
        | CARIBBEAN LIBERTY           | HARVEY      | HOPE         |
        | CRAZY HOME                  | HARVEY      | HOPE         |
        | DOWNHILL ENOUGH             | HARVEY      | HOPE         |
        | EARRING INSTINCT            | HARVEY      | HOPE         |
        | ENCINO ELF                  | HARVEY      | HOPE         |
        | FRONTIER CABIN              | HARVEY      | HOPE         |
        | GENTLEMEN STAGE             | HARVEY      | HOPE         |
        | HAROLD FRENCH               | HARVEY      | HOPE         |
        | HELLFIGHTERS SIERRA         | HARVEY      | HOPE         |
        | HOLY TADPOLE                | HARVEY      | HOPE         |
        | IRON MOON                   | HARVEY      | HOPE         |
        | LOCK REAR                   | HARVEY      | HOPE         |
        | MODEL FISH                  | HARVEY      | HOPE         |
        | OSCAR GOLD                  | HARVEY      | HOPE         |
        | PANIC CLUB                  | HARVEY      | HOPE         |
        | PANTHER REDS                | HARVEY      | HOPE         |
        | PEARL DESTINY               | HARVEY      | HOPE         |
        | PIZZA JUMANJI               | HARVEY      | HOPE         |
        | RANDOM GO                   | HARVEY      | HOPE         |
        | RULES HUMAN                 | HARVEY      | HOPE         |
        | SLEUTH ORIENT               | HARVEY      | HOPE         |
        | SPEAKEASY DATE              | HARVEY      | HOPE         |
        | STORY SIDE                  | HARVEY      | HOPE         |
        | TELEMARK HEARTBREAKERS      | HARVEY      | HOPE         |
        | UNBREAKABLE KARATE          | HARVEY      | HOPE         |
        | UNCUT SUICIDES              | HARVEY      | HOPE         |
        | UNFORGIVEN ZOOLANDER        | HARVEY      | HOPE         |
        | UPRISING UPTOWN             | HARVEY      | HOPE         |
        | ACADEMY DINOSAUR            | OPRAH       | KILMER       |
        | AFFAIR PREJUDICE            | OPRAH       | KILMER       |
        | AIRPLANE SIERRA             | OPRAH       | KILMER       |
        | ALTER VICTORY               | OPRAH       | KILMER       |
        | ANTHEM LUKE                 | OPRAH       | KILMER       |
        | APOCALYPSE FLAMINGOS        | OPRAH       | KILMER       |
        | APOLLO TEEN                 | OPRAH       | KILMER       |
        | ARSENIC INDEPENDENCE        | OPRAH       | KILMER       |
        | BONNIE HOLOCAUST            | OPRAH       | KILMER       |
        | CAROL TEXAS                 | OPRAH       | KILMER       |
        | COAST RAINBOW               | OPRAH       | KILMER       |
        | EGG IGBY                    | OPRAH       | KILMER       |
        | ELIZABETH SHANE             | OPRAH       | KILMER       |
        | HEARTBREAKERS BRIGHT        | OPRAH       | KILMER       |
        | HEAVEN FREEDOM              | OPRAH       | KILMER       |
        | HIGH ENCINO                 | OPRAH       | KILMER       |
        | KISS GLORY                  | OPRAH       | KILMER       |
        | MIDNIGHT WESTWARD           | OPRAH       | KILMER       |
        | MUSSOLINI SPOILERS          | OPRAH       | KILMER       |
        | OLEANDER CLUE               | OPRAH       | KILMER       |
        | PARK CITIZEN                | OPRAH       | KILMER       |
        | SHEPHERD MIDSUMMER          | OPRAH       | KILMER       |
        | STEERS ARMAGEDDON           | OPRAH       | KILMER       |
        | TREASURE COMMAND            | OPRAH       | KILMER       |
        | WEREWOLF LOLA               | OPRAH       | KILMER       |
        | ANYTHING SAVANNAH           | CHRISTOPHER | WEST         |
        | ATTRACTION NEWTON           | CHRISTOPHER | WEST         |
        | COLOR PHILADELPHIA          | CHRISTOPHER | WEST         |
        | CONSPIRACY SPIRIT           | CHRISTOPHER | WEST         |
        | DOGMA FAMILY                | CHRISTOPHER | WEST         |
        | ENDING CROWDS               | CHRISTOPHER | WEST         |
        | FANTASY TROOPERS            | CHRISTOPHER | WEST         |
        | FARGO GANDHI                | CHRISTOPHER | WEST         |
        | FELLOWSHIP AUTUMN           | CHRISTOPHER | WEST         |
        | HAMLET WISDOM               | CHRISTOPHER | WEST         |
        | HEARTBREAKERS BRIGHT        | CHRISTOPHER | WEST         |
        | HORROR REIGN                | CHRISTOPHER | WEST         |
        | HUSTLER PARTY               | CHRISTOPHER | WEST         |
        | LIFE TWISTED                | CHRISTOPHER | WEST         |
        | RECORDS ZORRO               | CHRISTOPHER | WEST         |
        | SHAWSHANK BUBBLE            | CHRISTOPHER | WEST         |
        | SPLENDOR PATTON             | CHRISTOPHER | WEST         |
        | TEMPLE ATTRACTION           | CHRISTOPHER | WEST         |
        | TIMBERLAND SKY              | CHRISTOPHER | WEST         |
        | VISION TORQUE               | CHRISTOPHER | WEST         |
        | YOUNG LANGUAGE              | CHRISTOPHER | WEST         |
        | ALIEN CENTER                | HUMPHREY    | WILLIS       |
        | ANACONDA CONFESSIONS        | HUMPHREY    | WILLIS       |
        | CHOCOLATE DUCK              | HUMPHREY    | WILLIS       |
        | COMFORTS RUSH               | HUMPHREY    | WILLIS       |
        | DREAM PICKUP                | HUMPHREY    | WILLIS       |
        | FLINTSTONES HAPPINESS       | HUMPHREY    | WILLIS       |
        | GAMES BOWFINGER             | HUMPHREY    | WILLIS       |
        | GOLDMINE TYCOON             | HUMPHREY    | WILLIS       |
        | HOOSIERS BIRDCAGE           | HUMPHREY    | WILLIS       |
        | IDAHO LOVE                  | HUMPHREY    | WILLIS       |
        | IRON MOON                   | HUMPHREY    | WILLIS       |
        | MADNESS ATTACKS             | HUMPHREY    | WILLIS       |
        | MUSIC BOONDOCK              | HUMPHREY    | WILLIS       |
        | MYSTIC TRUMAN               | HUMPHREY    | WILLIS       |
        | PERSONAL LADYBUGS           | HUMPHREY    | WILLIS       |
        | PIRATES ROXANNE             | HUMPHREY    | WILLIS       |
        | PRINCESS GIANT              | HUMPHREY    | WILLIS       |
        | SISTER FREDDY               | HUMPHREY    | WILLIS       |
        | SONS INTERVIEW              | HUMPHREY    | WILLIS       |
        | SPLASH GUMP                 | HUMPHREY    | WILLIS       |
        | SPOILERS HELLFIGHTERS       | HUMPHREY    | WILLIS       |
        | STRAIGHT HOURS              | HUMPHREY    | WILLIS       |
        | TERMINATOR CLUB             | HUMPHREY    | WILLIS       |
        | TRAP GUYS                   | HUMPHREY    | WILLIS       |
        | WAR NOTTING                 | HUMPHREY    | WILLIS       |
        | WONDERFUL DROP              | HUMPHREY    | WILLIS       |
        | BILL OTHERS                 | AL          | GARLAND      |
        | BREAKFAST GOLDFINGER        | AL          | GARLAND      |
        | CHITTY LOCK                 | AL          | GARLAND      |
        | DALMATIONS SWEDEN           | AL          | GARLAND      |
        | DRIFTER COMMANDMENTS        | AL          | GARLAND      |
        | ENOUGH RAGING               | AL          | GARLAND      |
        | GLASS DYING                 | AL          | GARLAND      |
        | GRAIL FRANKENSTEIN          | AL          | GARLAND      |
        | HANDICAP BOONDOCK           | AL          | GARLAND      |
        | HOLIDAY GAMES               | AL          | GARLAND      |
        | HOUSE DYNAMITE              | AL          | GARLAND      |
        | JACKET FRISCO               | AL          | GARLAND      |
        | MUPPET MILE                 | AL          | GARLAND      |
        | OSCAR GOLD                  | AL          | GARLAND      |
        | PARK CITIZEN                | AL          | GARLAND      |
        | POTTER CONNECTICUT          | AL          | GARLAND      |
        | ROCK INSTINCT               | AL          | GARLAND      |
        | SENSE GREEK                 | AL          | GARLAND      |
        | SILVERADO GOLDFINGER        | AL          | GARLAND      |
        | SLEUTH ORIENT               | AL          | GARLAND      |
        | SLIPPER FIDELITY            | AL          | GARLAND      |
        | SPLASH GUMP                 | AL          | GARLAND      |
        | SPLENDOR PATTON             | AL          | GARLAND      |
        | VISION TORQUE               | AL          | GARLAND      |
        | VOICE PEACH                 | AL          | GARLAND      |
        | WASTELAND DIVINE            | AL          | GARLAND      |
        | ANGELS LIFE                 | NICK        | DEGENERES    |
        | ARK RIDGEMONT               | NICK        | DEGENERES    |
        | BARBARELLA STREETCAR        | NICK        | DEGENERES    |
        | BEAUTY GREASE               | NICK        | DEGENERES    |
        | BETRAYED REAR               | NICK        | DEGENERES    |
        | BOOGIE AMELIE               | NICK        | DEGENERES    |
        | CHITTY LOCK                 | NICK        | DEGENERES    |
        | DRIVING POLISH              | NICK        | DEGENERES    |
        | EXTRAORDINARY CONQUERER     | NICK        | DEGENERES    |
        | FEATHERS METAL              | NICK        | DEGENERES    |
        | FLYING HOOK                 | NICK        | DEGENERES    |
        | GLEAMING JAWBREAKER         | NICK        | DEGENERES    |
        | GOLDFINGER SENSIBILITY      | NICK        | DEGENERES    |
        | HOME PITY                   | NICK        | DEGENERES    |
        | MINE TITANS                 | NICK        | DEGENERES    |
        | NEWSIES STORY               | NICK        | DEGENERES    |
        | PET HAUNTING                | NICK        | DEGENERES    |
        | RANDOM GO                   | NICK        | DEGENERES    |
        | SHIP WONDERLAND             | NICK        | DEGENERES    |
        | SUPER WYOMING               | NICK        | DEGENERES    |
        | VIRGIN DAISY                | NICK        | DEGENERES    |
        | ZORRO ARK                   | NICK        | DEGENERES    |
        | ALONE TRIP                  | LAURENCE    | BULLOCK      |
        | ANGELS LIFE                 | LAURENCE    | BULLOCK      |
        | BEDAZZLED MARRIED           | LAURENCE    | BULLOCK      |
        | BILL OTHERS                 | LAURENCE    | BULLOCK      |
        | BUNCH MINDS                 | LAURENCE    | BULLOCK      |
        | CARIBBEAN LIBERTY           | LAURENCE    | BULLOCK      |
        | CROOKED FROGMEN             | LAURENCE    | BULLOCK      |
        | EXPECATIONS NATURAL         | LAURENCE    | BULLOCK      |
        | FISH OPUS                   | LAURENCE    | BULLOCK      |
        | FROGMEN BREAKING            | LAURENCE    | BULLOCK      |
        | FROST HEAD                  | LAURENCE    | BULLOCK      |
        | KICK SAVANNAH               | LAURENCE    | BULLOCK      |
        | MALKOVICH PET               | LAURENCE    | BULLOCK      |
        | NOON PAPI                   | LAURENCE    | BULLOCK      |
        | NORTHWEST POLISH            | LAURENCE    | BULLOCK      |
        | PERFECT GROOVE              | LAURENCE    | BULLOCK      |
        | POTLUCK MIXED               | LAURENCE    | BULLOCK      |
        | REAR TRADING                | LAURENCE    | BULLOCK      |
        | ROAD ROXANNE                | LAURENCE    | BULLOCK      |
        | SIDE ARK                    | LAURENCE    | BULLOCK      |
        | SINNERS ATLANTIS            | LAURENCE    | BULLOCK      |
        | SKY MIRACLE                 | LAURENCE    | BULLOCK      |
        | STREETCAR INTENTIONS        | LAURENCE    | BULLOCK      |
        | SUNDANCE INVASION           | LAURENCE    | BULLOCK      |
        | TENENBAUMS COMMAND          | LAURENCE    | BULLOCK      |
        | UNFAITHFUL KILL             | LAURENCE    | BULLOCK      |
        | APOCALYPSE FLAMINGOS        | WILL        | WILSON       |
        | BAREFOOT MANCHURIAN         | WILL        | WILSON       |
        | BOWFINGER GABLES            | WILL        | WILSON       |
        | CAMPUS REMEMBER             | WILL        | WILSON       |
        | CRAZY HOME                  | WILL        | WILSON       |
        | CRUELTY UNFORGIVEN          | WILL        | WILSON       |
        | DARES PLUTO                 | WILL        | WILSON       |
        | DIVORCE SHINING             | WILL        | WILSON       |
        | DONNIE ALLEY                | WILL        | WILSON       |
        | DRIVING POLISH              | WILL        | WILSON       |
        | FATAL HAUNTED               | WILL        | WILSON       |
        | FRENCH HOLIDAY              | WILL        | WILSON       |
        | GUN BONNIE                  | WILL        | WILSON       |
        | HORN WORKING                | WILL        | WILSON       |
        | HUMAN GRAFFITI              | WILL        | WILSON       |
        | LIBERTY MAGNIFICENT         | WILL        | WILSON       |
        | MOURNING PURPLE             | WILL        | WILSON       |
        | NEIGHBORS CHARADE           | WILL        | WILSON       |
        | NOON PAPI                   | WILL        | WILSON       |
        | PAJAMA JAWBREAKER           | WILL        | WILSON       |
        | PICKUP DRIVING              | WILL        | WILSON       |
        | PLATOON INSTINCT            | WILL        | WILSON       |
        | SLEEPING SUSPECTS           | WILL        | WILSON       |
        | SLEUTH ORIENT               | WILL        | WILSON       |
        | SPEED SUIT                  | WILL        | WILSON       |
        | STAR OPERATION              | WILL        | WILSON       |
        | THEORY MERMAID              | WILL        | WILSON       |
        | TIES HUNGER                 | WILL        | WILSON       |
        | TITANIC BOONDOCK            | WILL        | WILSON       |
        | UPRISING UPTOWN             | WILL        | WILSON       |
        | WARLOCK WEREWOLF            | WILL        | WILSON       |
        | AGENT TRUMAN                | KENNETH     | HOFFMAN      |
        | BLACKOUT PRIVATE            | KENNETH     | HOFFMAN      |
        | BRANNIGAN SUNRISE           | KENNETH     | HOFFMAN      |
        | DOUBTFIRE LABYRINTH         | KENNETH     | HOFFMAN      |
        | DOZEN LION                  | KENNETH     | HOFFMAN      |
        | EVE RESURRECTION            | KENNETH     | HOFFMAN      |
        | FAMILY SWEET                | KENNETH     | HOFFMAN      |
        | FLYING HOOK                 | KENNETH     | HOFFMAN      |
        | GANGS PRIDE                 | KENNETH     | HOFFMAN      |
        | GRACELAND DYNAMITE          | KENNETH     | HOFFMAN      |
        | HANOVER GALAXY              | KENNETH     | HOFFMAN      |
        | HORROR REIGN                | KENNETH     | HOFFMAN      |
        | LABYRINTH LEAGUE            | KENNETH     | HOFFMAN      |
        | MASSAGE IMAGE               | KENNETH     | HOFFMAN      |
        | METAL ARMAGEDDON            | KENNETH     | HOFFMAN      |
        | ODDS BOOGIE                 | KENNETH     | HOFFMAN      |
        | ORDER BETRAYED              | KENNETH     | HOFFMAN      |
        | PERSONAL LADYBUGS           | KENNETH     | HOFFMAN      |
        | PREJUDICE OLEANDER          | KENNETH     | HOFFMAN      |
        | RESURRECTION SILVERADO      | KENNETH     | HOFFMAN      |
        | SECRETS PARADISE            | KENNETH     | HOFFMAN      |
        | SNATCHERS MONTEZUMA         | KENNETH     | HOFFMAN      |
        | STOCK GLASS                 | KENNETH     | HOFFMAN      |
        | STORM HAPPINESS             | KENNETH     | HOFFMAN      |
        | TOMATOES HELLFIGHTERS       | KENNETH     | HOFFMAN      |
        | TORQUE BOUND                | KENNETH     | HOFFMAN      |
        | WAKE JAWS                   | KENNETH     | HOFFMAN      |
        | WRATH MILE                  | KENNETH     | HOFFMAN      |
        | ZHIVAGO CORE                | KENNETH     | HOFFMAN      |
        | AIRPLANE SIERRA             | MENA        | HOPPER       |
        | ALIEN CENTER                | MENA        | HOPPER       |
        | ANONYMOUS HUMAN             | MENA        | HOPPER       |
        | APOLLO TEEN                 | MENA        | HOPPER       |
        | BUBBLE GROSSE               | MENA        | HOPPER       |
        | CHASING FIGHT               | MENA        | HOPPER       |
        | CONSPIRACY SPIRIT           | MENA        | HOPPER       |
        | CORE SUIT                   | MENA        | HOPPER       |
        | DARN FORRESTER              | MENA        | HOPPER       |
        | FACTORY DRAGON              | MENA        | HOPPER       |
        | FLATLINERS KILLER           | MENA        | HOPPER       |
        | GILMORE BOILED              | MENA        | HOPPER       |
        | HIGHBALL POTTER             | MENA        | HOPPER       |
        | LAMBS CINCINATTI            | MENA        | HOPPER       |
        | LOVER TRUMAN                | MENA        | HOPPER       |
        | PURPLE MOVIE                | MENA        | HOPPER       |
        | SAINTS BRIDE                | MENA        | HOPPER       |
        | SATURDAY LAMBS              | MENA        | HOPPER       |
        | SUPERFLY TRIP               | MENA        | HOPPER       |
        | TAXI KICK                   | MENA        | HOPPER       |
        | THEORY MERMAID              | MENA        | HOPPER       |
        | UNITED PILOT                | MENA        | HOPPER       |
        | WRONG BEHAVIOR              | MENA        | HOPPER       |
        | YOUNG LANGUAGE              | MENA        | HOPPER       |
        | BADMAN DAWN                 | OLYMPIA     | PFEIFFER     |
        | CHITTY LOCK                 | OLYMPIA     | PFEIFFER     |
        | COLOR PHILADELPHIA          | OLYMPIA     | PFEIFFER     |
        | CONTACT ANONYMOUS           | OLYMPIA     | PFEIFFER     |
        | DEEP CRUSADE                | OLYMPIA     | PFEIFFER     |
        | EFFECT GLADIATOR            | OLYMPIA     | PFEIFFER     |
        | EXPRESS LONELY              | OLYMPIA     | PFEIFFER     |
        | FIREHOUSE VIETNAM           | OLYMPIA     | PFEIFFER     |
        | FUGITIVE MAGUIRE            | OLYMPIA     | PFEIFFER     |
        | HANKY OCTOBER               | OLYMPIA     | PFEIFFER     |
        | ICE CROSSING                | OLYMPIA     | PFEIFFER     |
        | IDOLS SNATCHERS             | OLYMPIA     | PFEIFFER     |
        | INTOLERABLE INTENTIONS      | OLYMPIA     | PFEIFFER     |
        | MAGNOLIA FORRESTER          | OLYMPIA     | PFEIFFER     |
        | MARS ROMAN                  | OLYMPIA     | PFEIFFER     |
        | MAUDE MOD                   | OLYMPIA     | PFEIFFER     |
        | MURDER ANTITRUST            | OLYMPIA     | PFEIFFER     |
        | NONE SPIKING                | OLYMPIA     | PFEIFFER     |
        | OTHERS SOUP                 | OLYMPIA     | PFEIFFER     |
        | PSYCHO SHRUNK               | OLYMPIA     | PFEIFFER     |
        | SANTA PARIS                 | OLYMPIA     | PFEIFFER     |
        | SENSE GREEK                 | OLYMPIA     | PFEIFFER     |
        | STORM HAPPINESS             | OLYMPIA     | PFEIFFER     |
        | SWEET BROTHERHOOD           | OLYMPIA     | PFEIFFER     |
        | TITANIC BOONDOCK            | OLYMPIA     | PFEIFFER     |
        | TOURIST PELICAN             | OLYMPIA     | PFEIFFER     |
        | TRAFFIC HOBBIT              | OLYMPIA     | PFEIFFER     |
        | WAIT CIDER                  | OLYMPIA     | PFEIFFER     |
        | BASIC EASY                  | GROUCHO     | WILLIAMS     |
        | BROOKLYN DESERT             | GROUCHO     | WILLIAMS     |
        | CHOCOLATE DUCK              | GROUCHO     | WILLIAMS     |
        | DAWN POND                   | GROUCHO     | WILLIAMS     |
        | FANTASIA PARK               | GROUCHO     | WILLIAMS     |
        | GABLES METROPOLIS           | GROUCHO     | WILLIAMS     |
        | GONE TROUBLE                | GROUCHO     | WILLIAMS     |
        | GROUNDHOG UNCUT             | GROUCHO     | WILLIAMS     |
        | HOLLYWOOD ANONYMOUS         | GROUCHO     | WILLIAMS     |
        | JINGLE SAGEBRUSH            | GROUCHO     | WILLIAMS     |
        | KANE EXORCIST               | GROUCHO     | WILLIAMS     |
        | LONELY ELEPHANT             | GROUCHO     | WILLIAMS     |
        | LOVERBOY ATTACKS            | GROUCHO     | WILLIAMS     |
        | MEET CHOCOLATE              | GROUCHO     | WILLIAMS     |
        | MUSCLE BRIGHT               | GROUCHO     | WILLIAMS     |
        | OPPOSITE NECKLACE           | GROUCHO     | WILLIAMS     |
        | OZ LIAISONS                 | GROUCHO     | WILLIAMS     |
        | PAST SUICIDES               | GROUCHO     | WILLIAMS     |
        | PEACH INNOCENT              | GROUCHO     | WILLIAMS     |
        | RAGE GAMES                  | GROUCHO     | WILLIAMS     |
        | ROOTS REMEMBER              | GROUCHO     | WILLIAMS     |
        | SAINTS BRIDE                | GROUCHO     | WILLIAMS     |
        | SCORPION APOLLO             | GROUCHO     | WILLIAMS     |
        | SPLENDOR PATTON             | GROUCHO     | WILLIAMS     |
        | WARLOCK WEREWOLF            | GROUCHO     | WILLIAMS     |
        | BADMAN DAWN                 | ALAN        | DREYFUSS     |
        | BARBARELLA STREETCAR        | ALAN        | DREYFUSS     |
        | BIRCH ANTITRUST             | ALAN        | DREYFUSS     |
        | BLANKET BEVERLY             | ALAN        | DREYFUSS     |
        | BULWORTH COMMANDMENTS       | ALAN        | DREYFUSS     |
        | CLASH FREDDY                | ALAN        | DREYFUSS     |
        | CLUELESS BUCKET             | ALAN        | DREYFUSS     |
        | CRAZY HOME                  | ALAN        | DREYFUSS     |
        | DIVIDE MONSTER              | ALAN        | DREYFUSS     |
        | FIDELITY DEVIL              | ALAN        | DREYFUSS     |
        | GREEDY ROOTS                | ALAN        | DREYFUSS     |
        | HAUNTED ANTITRUST           | ALAN        | DREYFUSS     |
        | JUMPING WRATH               | ALAN        | DREYFUSS     |
        | KICK SAVANNAH               | ALAN        | DREYFUSS     |
        | LONELY ELEPHANT             | ALAN        | DREYFUSS     |
        | MAGUIRE APACHE              | ALAN        | DREYFUSS     |
        | MASSAGE IMAGE               | ALAN        | DREYFUSS     |
        | METAL ARMAGEDDON            | ALAN        | DREYFUSS     |
        | MONSTER SPARTACUS           | ALAN        | DREYFUSS     |
        | POLISH BROOKLYN             | ALAN        | DREYFUSS     |
        | RUSH GOODFELLAS             | ALAN        | DREYFUSS     |
        | SAGEBRUSH CLUELESS          | ALAN        | DREYFUSS     |
        | STRANGELOVE DESIRE          | ALAN        | DREYFUSS     |
        | STRICTLY SCARFACE           | ALAN        | DREYFUSS     |
        | UNCUT SUICIDES              | ALAN        | DREYFUSS     |
        | UPTOWN YOUNG                | ALAN        | DREYFUSS     |
        | VAMPIRE WHALE               | ALAN        | DREYFUSS     |
        | ALAMO VIDEOTAPE             | MICHAEL     | BENING       |
        | BEAUTY GREASE               | MICHAEL     | BENING       |
        | COMANCHEROS ENEMY           | MICHAEL     | BENING       |
        | EYES DRIVING                | MICHAEL     | BENING       |
        | GATHERING CALENDAR          | MICHAEL     | BENING       |
        | HUNTING MUSKETEERS          | MICHAEL     | BENING       |
        | IGBY MAKER                  | MICHAEL     | BENING       |
        | KICK SAVANNAH               | MICHAEL     | BENING       |
        | MUSIC BOONDOCK              | MICHAEL     | BENING       |
        | NECKLACE OUTBREAK           | MICHAEL     | BENING       |
        | NEWSIES STORY               | MICHAEL     | BENING       |
        | PARK CITIZEN                | MICHAEL     | BENING       |
        | PIANIST OUTFIELD            | MICHAEL     | BENING       |
        | PURPLE MOVIE                | MICHAEL     | BENING       |
        | REEF SALUTE                 | MICHAEL     | BENING       |
        | SENSIBILITY REAR            | MICHAEL     | BENING       |
        | SILENCE KANE                | MICHAEL     | BENING       |
        | SLIPPER FIDELITY            | MICHAEL     | BENING       |
        | SPICE SORORITY              | MICHAEL     | BENING       |
        | SPIRIT FLINTSTONES          | MICHAEL     | BENING       |
        | STRANGELOVE DESIRE          | MICHAEL     | BENING       |
        | STRANGER STRANGERS          | MICHAEL     | BENING       |
        | TELEGRAPH VOYAGE            | MICHAEL     | BENING       |
        | WOMEN DORADO                | MICHAEL     | BENING       |
        | ALABAMA DEVIL               | WILLIAM     | HACKMAN      |
        | ANTITRUST TOMATOES          | WILLIAM     | HACKMAN      |
        | BERETS AGENT                | WILLIAM     | HACKMAN      |
        | CAUSE DATE                  | WILLIAM     | HACKMAN      |
        | CLEOPATRA DEVIL             | WILLIAM     | HACKMAN      |
        | CREEPERS KANE               | WILLIAM     | HACKMAN      |
        | CROOKED FROGMEN             | WILLIAM     | HACKMAN      |
        | GLORY TRACY                 | WILLIAM     | HACKMAN      |
        | HAUNTED ANTITRUST           | WILLIAM     | HACKMAN      |
        | HOLOCAUST HIGHBALL          | WILLIAM     | HACKMAN      |
        | HUNCHBACK IMPOSSIBLE        | WILLIAM     | HACKMAN      |
        | HUNTING MUSKETEERS          | WILLIAM     | HACKMAN      |
        | JERICHO MULAN               | WILLIAM     | HACKMAN      |
        | MONSOON CAUSE               | WILLIAM     | HACKMAN      |
        | MOONSHINE CABIN             | WILLIAM     | HACKMAN      |
        | NATIONAL STORY              | WILLIAM     | HACKMAN      |
        | RECORDS ZORRO               | WILLIAM     | HACKMAN      |
        | RIDER CADDYSHACK            | WILLIAM     | HACKMAN      |
        | SEA VIRGIN                  | WILLIAM     | HACKMAN      |
        | SECRETS PARADISE            | WILLIAM     | HACKMAN      |
        | SPIKING ELEMENT             | WILLIAM     | HACKMAN      |
        | STATE WASTELAND             | WILLIAM     | HACKMAN      |
        | TIGHTS DAWN                 | WILLIAM     | HACKMAN      |
        | TRAP GUYS                   | WILLIAM     | HACKMAN      |
        | WINDOW SIDE                 | WILLIAM     | HACKMAN      |
        | WISDOM WORKER               | WILLIAM     | HACKMAN      |
        | ZHIVAGO CORE                | WILLIAM     | HACKMAN      |
        | ALI FOREVER                 | JON         | CHASE        |
        | BINGO TALENTED              | JON         | CHASE        |
        | BORROWERS BEDAZZLED         | JON         | CHASE        |
        | CIDER DESIRE                | JON         | CHASE        |
        | CLUELESS BUCKET             | JON         | CHASE        |
        | DOCTOR GRAIL                | JON         | CHASE        |
        | DREAM PICKUP                | JON         | CHASE        |
        | FANTASY TROOPERS            | JON         | CHASE        |
        | FLAMINGOS CONNECTICUT       | JON         | CHASE        |
        | HAROLD FRENCH               | JON         | CHASE        |
        | HILLS NEIGHBORS             | JON         | CHASE        |
        | HUNTER ALTER                | JON         | CHASE        |
        | INDIAN LOVE                 | JON         | CHASE        |
        | INSECTS STONE               | JON         | CHASE        |
        | LESSON CLEOPATRA            | JON         | CHASE        |
        | LIES TREATMENT              | JON         | CHASE        |
        | MADIGAN DORADO              | JON         | CHASE        |
        | MICROCOSMOS PARADISE        | JON         | CHASE        |
        | PRIVATE DROP                | JON         | CHASE        |
        | RESERVOIR ADAPTATION        | JON         | CHASE        |
        | ROLLERCOASTER BRINGING      | JON         | CHASE        |
        | ROUGE SQUAD                 | JON         | CHASE        |
        | SAINTS BRIDE                | JON         | CHASE        |
        | SKY MIRACLE                 | JON         | CHASE        |
        | SPICE SORORITY              | JON         | CHASE        |
        | STALLION SUNDANCE           | JON         | CHASE        |
        | SUGAR WONKA                 | JON         | CHASE        |
        | SWEET BROTHERHOOD           | JON         | CHASE        |
        | VIRTUAL SPOILERS            | JON         | CHASE        |
        | ALASKA PHANTOM              | GENE        | MCKELLEN     |
        | ARMAGEDDON LOST             | GENE        | MCKELLEN     |
        | BALLROOM MOCKINGBIRD        | GENE        | MCKELLEN     |
        | BARBARELLA STREETCAR        | GENE        | MCKELLEN     |
        | BOOGIE AMELIE               | GENE        | MCKELLEN     |
        | CONFUSED CANDLES            | GENE        | MCKELLEN     |
        | CRAZY HOME                  | GENE        | MCKELLEN     |
        | DIVIDE MONSTER              | GENE        | MCKELLEN     |
        | DIVORCE SHINING             | GENE        | MCKELLEN     |
        | EVE RESURRECTION            | GENE        | MCKELLEN     |
        | GO PURPLE                   | GENE        | MCKELLEN     |
        | HAROLD FRENCH               | GENE        | MCKELLEN     |
        | HORN WORKING                | GENE        | MCKELLEN     |
        | INDIAN LOVE                 | GENE        | MCKELLEN     |
        | LIFE TWISTED                | GENE        | MCKELLEN     |
        | MADIGAN DORADO              | GENE        | MCKELLEN     |
        | MASSACRE USUAL              | GENE        | MCKELLEN     |
        | OZ LIAISONS                 | GENE        | MCKELLEN     |
        | PITY BOUND                  | GENE        | MCKELLEN     |
        | PIZZA JUMANJI               | GENE        | MCKELLEN     |
        | RESERVOIR ADAPTATION        | GENE        | MCKELLEN     |
        | RUNAWAY TENENBAUMS          | GENE        | MCKELLEN     |
        | SATISFACTION CONFIDENTIAL   | GENE        | MCKELLEN     |
        | SATURDAY LAMBS              | GENE        | MCKELLEN     |
        | SPICE SORORITY              | GENE        | MCKELLEN     |
        | TREATMENT JEKYLL            | GENE        | MCKELLEN     |
        | WANDA CHAMBER               | GENE        | MCKELLEN     |
        | ANYTHING SAVANNAH           | LISA        | MONROE       |
        | ARABIA DOGMA                | LISA        | MONROE       |
        | BUTTERFLY CHOCOLAT          | LISA        | MONROE       |
        | CHITTY LOCK                 | LISA        | MONROE       |
        | CLUB GRAFFITI               | LISA        | MONROE       |
        | COAST RAINBOW               | LISA        | MONROE       |
        | CROW GREASE                 | LISA        | MONROE       |
        | CRUSADE HONEY               | LISA        | MONROE       |
        | EFFECT GLADIATOR            | LISA        | MONROE       |
        | FICTION CHRISTMAS           | LISA        | MONROE       |
        | HANKY OCTOBER               | LISA        | MONROE       |
        | JERICHO MULAN               | LISA        | MONROE       |
        | LESSON CLEOPATRA            | LISA        | MONROE       |
        | LOVER TRUMAN                | LISA        | MONROE       |
        | MOD SECRETARY               | LISA        | MONROE       |
        | QUILLS BULL                 | LISA        | MONROE       |
        | RIVER OUTLAW                | LISA        | MONROE       |
        | ROOTS REMEMBER              | LISA        | MONROE       |
        | SASSY PACKER                | LISA        | MONROE       |
        | VACATION BOONDOCK           | LISA        | MONROE       |
        | WILD APOLLO                 | LISA        | MONROE       |
        | WON DARES                   | LISA        | MONROE       |
        | ZORRO ARK                   | LISA        | MONROE       |
        | ANALYZE HOOSIERS            | ED          | GUINESS      |
        | ANONYMOUS HUMAN             | ED          | GUINESS      |
        | BEHAVIOR RUNAWAY            | ED          | GUINESS      |
        | BONNIE HOLOCAUST            | ED          | GUINESS      |
        | BUTTERFLY CHOCOLAT          | ED          | GUINESS      |
        | CENTER DINOSAUR             | ED          | GUINESS      |
        | CLOSER BANG                 | ED          | GUINESS      |
        | CROSSROADS CASUALTIES       | ED          | GUINESS      |
        | DRAGON SQUAD                | ED          | GUINESS      |
        | EVOLUTION ALTER             | ED          | GUINESS      |
        | GENTLEMEN STAGE             | ED          | GUINESS      |
        | HIGH ENCINO                 | ED          | GUINESS      |
        | INSTINCT AIRPORT            | ED          | GUINESS      |
        | INVASION CYCLONE            | ED          | GUINESS      |
        | JUGGLER HARDLY              | ED          | GUINESS      |
        | MAUDE MOD                   | ED          | GUINESS      |
        | MODEL FISH                  | ED          | GUINESS      |
        | PACIFIC AMISTAD             | ED          | GUINESS      |
        | PRINCESS GIANT              | ED          | GUINESS      |
        | RINGS HEARTBREAKERS         | ED          | GUINESS      |
        | ROCK INSTINCT               | ED          | GUINESS      |
        | SCHOOL JACKET               | ED          | GUINESS      |
        | SMILE EARRING               | ED          | GUINESS      |
        | SOLDIERS EVOLUTION          | ED          | GUINESS      |
        | STRANGELOVE DESIRE          | ED          | GUINESS      |
        | UNFORGIVEN ZOOLANDER        | ED          | GUINESS      |
        | VALENTINE VANISHING         | ED          | GUINESS      |
        | WARS PLUTO                  | ED          | GUINESS      |
        | WIND PHANTOM                | ED          | GUINESS      |
        | ALASKA PHANTOM              | JEFF        | SILVERSTONE  |
        | APOLLO TEEN                 | JEFF        | SILVERSTONE  |
        | CHINATOWN GLADIATOR         | JEFF        | SILVERSTONE  |
        | CROWDS TELEMARK             | JEFF        | SILVERSTONE  |
        | DRUMS DYNAMITE              | JEFF        | SILVERSTONE  |
        | HUNTER ALTER                | JEFF        | SILVERSTONE  |
        | LADY STAGE                  | JEFF        | SILVERSTONE  |
        | MASK PEACH                  | JEFF        | SILVERSTONE  |
        | MUSCLE BRIGHT               | JEFF        | SILVERSTONE  |
        | NEWSIES STORY               | JEFF        | SILVERSTONE  |
        | NORTHWEST POLISH            | JEFF        | SILVERSTONE  |
        | PARADISE SABRINA            | JEFF        | SILVERSTONE  |
        | REMEMBER DIARY              | JEFF        | SILVERSTONE  |
        | RIDER CADDYSHACK            | JEFF        | SILVERSTONE  |
        | RINGS HEARTBREAKERS         | JEFF        | SILVERSTONE  |
        | SECRETARY ROUGE             | JEFF        | SILVERSTONE  |
        | SLIPPER FIDELITY            | JEFF        | SILVERSTONE  |
        | SMILE EARRING               | JEFF        | SILVERSTONE  |
        | SONS INTERVIEW              | JEFF        | SILVERSTONE  |
        | SPARTACUS CHEAPER           | JEFF        | SILVERSTONE  |
        | STOCK GLASS                 | JEFF        | SILVERSTONE  |
        | SUSPECTS QUILLS             | JEFF        | SILVERSTONE  |
        | TADPOLE PARK                | JEFF        | SILVERSTONE  |
        | WALLS ARTIST                | JEFF        | SILVERSTONE  |
        | WATCH TRACY                 | JEFF        | SILVERSTONE  |
        | AFRICAN EGG                 | MATTHEW     | CARREY       |
        | ARMY FLINTSTONES            | MATTHEW     | CARREY       |
        | BIRCH ANTITRUST             | MATTHEW     | CARREY       |
        | BLACKOUT PRIVATE            | MATTHEW     | CARREY       |
        | BLUES INSTINCT              | MATTHEW     | CARREY       |
        | CIRCUS YOUTH                | MATTHEW     | CARREY       |
        | CROWDS TELEMARK             | MATTHEW     | CARREY       |
        | DISCIPLE MOTHER             | MATTHEW     | CARREY       |
        | ENOUGH RAGING               | MATTHEW     | CARREY       |
        | FAMILY SWEET                | MATTHEW     | CARREY       |
        | FICTION CHRISTMAS           | MATTHEW     | CARREY       |
        | GRINCH MASSAGE              | MATTHEW     | CARREY       |
        | GUN BONNIE                  | MATTHEW     | CARREY       |
        | HARRY IDAHO                 | MATTHEW     | CARREY       |
        | HEARTBREAKERS BRIGHT        | MATTHEW     | CARREY       |
        | HOLES BRANNIGAN             | MATTHEW     | CARREY       |
        | HOUSE DYNAMITE              | MATTHEW     | CARREY       |
        | INCH JET                    | MATTHEW     | CARREY       |
        | LADYBUGS ARMAGEDDON         | MATTHEW     | CARREY       |
        | LIFE TWISTED                | MATTHEW     | CARREY       |
        | LUCK OPUS                   | MATTHEW     | CARREY       |
        | LUST LOCK                   | MATTHEW     | CARREY       |
        | MADRE GABLES                | MATTHEW     | CARREY       |
        | MINDS TRUMAN                | MATTHEW     | CARREY       |
        | MOONSHINE CABIN             | MATTHEW     | CARREY       |
        | MULAN MOON                  | MATTHEW     | CARREY       |
        | MUSCLE BRIGHT               | MATTHEW     | CARREY       |
        | NONE SPIKING                | MATTHEW     | CARREY       |
        | ROOTS REMEMBER              | MATTHEW     | CARREY       |
        | SNOWMAN ROLLERCOASTER       | MATTHEW     | CARREY       |
        | SQUAD FISH                  | MATTHEW     | CARREY       |
        | SUPERFLY TRIP               | MATTHEW     | CARREY       |
        | SWARM GOLD                  | MATTHEW     | CARREY       |
        | TADPOLE PARK                | MATTHEW     | CARREY       |
        | TITANIC BOONDOCK            | MATTHEW     | CARREY       |
        | TRANSLATION SUMMER          | MATTHEW     | CARREY       |
        | TRIP NEWTON                 | MATTHEW     | CARREY       |
        | UNCUT SUICIDES              | MATTHEW     | CARREY       |
        | WORST BANGER                | MATTHEW     | CARREY       |
        | APOLLO TEEN                 | DEBBIE      | AKROYD       |
        | CLUB GRAFFITI               | DEBBIE      | AKROYD       |
        | FAMILY SWEET                | DEBBIE      | AKROYD       |
        | FLINTSTONES HAPPINESS       | DEBBIE      | AKROYD       |
        | GALAXY SWEETHEARTS          | DEBBIE      | AKROYD       |
        | GLORY TRACY                 | DEBBIE      | AKROYD       |
        | HALF OUTFIELD               | DEBBIE      | AKROYD       |
        | HEDWIG ALTER                | DEBBIE      | AKROYD       |
        | HOLIDAY GAMES               | DEBBIE      | AKROYD       |
        | HOUSE DYNAMITE              | DEBBIE      | AKROYD       |
        | MONEY HAROLD                | DEBBIE      | AKROYD       |
        | OPPOSITE NECKLACE           | DEBBIE      | AKROYD       |
        | PEAK FOREVER                | DEBBIE      | AKROYD       |
        | PIANIST OUTFIELD            | DEBBIE      | AKROYD       |
        | PILOT HOOSIERS              | DEBBIE      | AKROYD       |
        | PRESIDENT BANG              | DEBBIE      | AKROYD       |
        | RANDOM GO                   | DEBBIE      | AKROYD       |
        | REDEMPTION COMFORTS         | DEBBIE      | AKROYD       |
        | SONG HEDWIG                 | DEBBIE      | AKROYD       |
        | SPIKING ELEMENT             | DEBBIE      | AKROYD       |
        | STEPMOM DREAM               | DEBBIE      | AKROYD       |
        | SUNDANCE INVASION           | DEBBIE      | AKROYD       |
        | VICTORY ACADEMY             | DEBBIE      | AKROYD       |
        | WORLD LEATHERNECKS          | DEBBIE      | AKROYD       |
        | APOCALYPSE FLAMINGOS        | RUSSELL     | CLOSE        |
        | ARMY FLINTSTONES            | RUSSELL     | CLOSE        |
        | BILKO ANONYMOUS             | RUSSELL     | CLOSE        |
        | CALIFORNIA BIRDS            | RUSSELL     | CLOSE        |
        | FIDELITY DEVIL              | RUSSELL     | CLOSE        |
        | GUNFIGHT MOON               | RUSSELL     | CLOSE        |
        | GUNFIGHTER MUSSOLINI        | RUSSELL     | CLOSE        |
        | GUYS FALCON                 | RUSSELL     | CLOSE        |
        | KENTUCKIAN GIANT            | RUSSELL     | CLOSE        |
        | LICENSE WEEKEND             | RUSSELL     | CLOSE        |
        | MIGHTY LUCK                 | RUSSELL     | CLOSE        |
        | OLEANDER CLUE               | RUSSELL     | CLOSE        |
        | RANGE MOONWALKER            | RUSSELL     | CLOSE        |
        | STORY SIDE                  | RUSSELL     | CLOSE        |
        | SUMMER SCARFACE             | RUSSELL     | CLOSE        |
        | TROUBLE DATE                | RUSSELL     | CLOSE        |
        | VIDEOTAPE ARSENIC           | RUSSELL     | CLOSE        |
        | VOLCANO TEXAS               | RUSSELL     | CLOSE        |
        | WON DARES                   | RUSSELL     | CLOSE        |
        | ARACHNOPHOBIA ROLLERCOASTER | HUMPHREY    | GARLAND      |
        | BOONDOCK BALLROOM           | HUMPHREY    | GARLAND      |
        | CHITTY LOCK                 | HUMPHREY    | GARLAND      |
        | COMFORTS RUSH               | HUMPHREY    | GARLAND      |
        | DELIVERANCE MULHOLLAND      | HUMPHREY    | GARLAND      |
        | FRENCH HOLIDAY              | HUMPHREY    | GARLAND      |
        | GOSFORD DONNIE              | HUMPHREY    | GARLAND      |
        | ILLUSION AMELIE             | HUMPHREY    | GARLAND      |
        | JET NEIGHBORS               | HUMPHREY    | GARLAND      |
        | JUNGLE CLOSER               | HUMPHREY    | GARLAND      |
        | KISS GLORY                  | HUMPHREY    | GARLAND      |
        | MIDNIGHT WESTWARD           | HUMPHREY    | GARLAND      |
        | MINE TITANS                 | HUMPHREY    | GARLAND      |
        | MOONWALKER FOOL             | HUMPHREY    | GARLAND      |
        | NASH CHOCOLAT               | HUMPHREY    | GARLAND      |
        | OPUS ICE                    | HUMPHREY    | GARLAND      |
        | ORDER BETRAYED              | HUMPHREY    | GARLAND      |
        | PACIFIC AMISTAD             | HUMPHREY    | GARLAND      |
        | PAST SUICIDES               | HUMPHREY    | GARLAND      |
        | PIZZA JUMANJI               | HUMPHREY    | GARLAND      |
        | ROSES TREASURE              | HUMPHREY    | GARLAND      |
        | SEA VIRGIN                  | HUMPHREY    | GARLAND      |
        | SHINING ROSES               | HUMPHREY    | GARLAND      |
        | SUPER WYOMING               | HUMPHREY    | GARLAND      |
        | WARLOCK WEREWOLF            | HUMPHREY    | GARLAND      |
        | WEDDING APOLLO              | HUMPHREY    | GARLAND      |
        | WEEKEND PERSONAL            | HUMPHREY    | GARLAND      |
        | WEST LION                   | HUMPHREY    | GARLAND      |
        | WONDERLAND CHRISTMAS        | HUMPHREY    | GARLAND      |
        | AIRPLANE SIERRA             | MICHAEL     | BOLGER       |
        | BREAKFAST GOLDFINGER        | MICHAEL     | BOLGER       |
        | CHARIOTS CONSPIRACY         | MICHAEL     | BOLGER       |
        | DYING MAKER                 | MICHAEL     | BOLGER       |
        | ENOUGH RAGING               | MICHAEL     | BOLGER       |
        | GLASS DYING                 | MICHAEL     | BOLGER       |
        | HEAVENLY GUN                | MICHAEL     | BOLGER       |
        | HOMEWARD CIDER              | MICHAEL     | BOLGER       |
        | HOUSE DYNAMITE              | MICHAEL     | BOLGER       |
        | IDAHO LOVE                  | MICHAEL     | BOLGER       |
        | KARATE MOON                 | MICHAEL     | BOLGER       |
        | LAWLESS VISION              | MICHAEL     | BOLGER       |
        | LIAISONS SWEET              | MICHAEL     | BOLGER       |
        | MALKOVICH PET               | MICHAEL     | BOLGER       |
        | MARS ROMAN                  | MICHAEL     | BOLGER       |
        | METAL ARMAGEDDON            | MICHAEL     | BOLGER       |
        | MIXED DOORS                 | MICHAEL     | BOLGER       |
        | NOVOCAINE FLIGHT            | MICHAEL     | BOLGER       |
        | PATTON INTERVIEW            | MICHAEL     | BOLGER       |
        | PREJUDICE OLEANDER          | MICHAEL     | BOLGER       |
        | RIDGEMONT SUBMARINE         | MICHAEL     | BOLGER       |
        | SANTA PARIS                 | MICHAEL     | BOLGER       |
        | SOMETHING DUCK              | MICHAEL     | BOLGER       |
        | STEPMOM DREAM               | MICHAEL     | BOLGER       |
        | TELEMARK HEARTBREAKERS      | MICHAEL     | BOLGER       |
        | TENENBAUMS COMMAND          | MICHAEL     | BOLGER       |
        | TYCOON GATHERING            | MICHAEL     | BOLGER       |
        | UNBREAKABLE KARATE          | MICHAEL     | BOLGER       |
        | WATERSHIP FRONTIER          | MICHAEL     | BOLGER       |
        | WIFE TURN                   | MICHAEL     | BOLGER       |
        | BREAKFAST GOLDFINGER        | JULIA       | ZELLWEGER    |
        | CRANES RESERVOIR            | JULIA       | ZELLWEGER    |
        | DARES PLUTO                 | JULIA       | ZELLWEGER    |
        | DETECTIVE VISION            | JULIA       | ZELLWEGER    |
        | DIVORCE SHINING             | JULIA       | ZELLWEGER    |
        | HOLLOW JEOPARDY             | JULIA       | ZELLWEGER    |
        | JEOPARDY ENCINO             | JULIA       | ZELLWEGER    |
        | LAMBS CINCINATTI            | JULIA       | ZELLWEGER    |
        | MAJESTIC FLOATS             | JULIA       | ZELLWEGER    |
        | MINDS TRUMAN                | JULIA       | ZELLWEGER    |
        | OPEN AFRICAN                | JULIA       | ZELLWEGER    |
        | OUTLAW HANKY                | JULIA       | ZELLWEGER    |
        | PANKY SUBMARINE             | JULIA       | ZELLWEGER    |
        | RIDER CADDYSHACK            | JULIA       | ZELLWEGER    |
        | WON DARES                   | JULIA       | ZELLWEGER    |
        | WYOMING STORM               | JULIA       | ZELLWEGER    |
        | ALONE TRIP                  | RENEE       | BALL         |
        | ANGELS LIFE                 | RENEE       | BALL         |
        | ANTITRUST TOMATOES          | RENEE       | BALL         |
        | BALLOON HOMEWARD            | RENEE       | BALL         |
        | BINGO TALENTED              | RENEE       | BALL         |
        | BIRDCAGE CASPER             | RENEE       | BALL         |
        | BRIGHT ENCOUNTERS           | RENEE       | BALL         |
        | CABIN FLASH                 | RENEE       | BALL         |
        | CAT CONEHEADS               | RENEE       | BALL         |
        | COMANCHEROS ENEMY           | RENEE       | BALL         |
        | DESERT POSEIDON             | RENEE       | BALL         |
        | DESPERATE TRAINSPOTTING     | RENEE       | BALL         |
        | EXTRAORDINARY CONQUERER     | RENEE       | BALL         |
        | GHOST GROUNDHOG             | RENEE       | BALL         |
        | GREEDY ROOTS                | RENEE       | BALL         |
        | HILLS NEIGHBORS             | RENEE       | BALL         |
        | HOTEL HAPPINESS             | RENEE       | BALL         |
        | HUNTER ALTER                | RENEE       | BALL         |
        | JADE BUNCH                  | RENEE       | BALL         |
        | KING EVOLUTION              | RENEE       | BALL         |
        | LOVERBOY ATTACKS            | RENEE       | BALL         |
        | MAGNIFICENT CHITTY          | RENEE       | BALL         |
        | MASK PEACH                  | RENEE       | BALL         |
        | NATURAL STOCK               | RENEE       | BALL         |
        | NONE SPIKING                | RENEE       | BALL         |
        | PATRIOT ROMAN               | RENEE       | BALL         |
        | PERDITION FARGO             | RENEE       | BALL         |
        | SCARFACE BANG               | RENEE       | BALL         |
        | SENSE GREEK                 | RENEE       | BALL         |
        | TRAMP OTHERS                | RENEE       | BALL         |
        | TROUBLE DATE                | RENEE       | BALL         |
        | UNFAITHFUL KILL             | RENEE       | BALL         |
        | WIND PHANTOM                | RENEE       | BALL         |
        | ACADEMY DINOSAUR            | ROCK        | DUKAKIS      |
        | ALADDIN CALENDAR            | ROCK        | DUKAKIS      |
        | ALICE FANTASIA              | ROCK        | DUKAKIS      |
        | BALLOON HOMEWARD            | ROCK        | DUKAKIS      |
        | BUBBLE GROSSE               | ROCK        | DUKAKIS      |
        | CADDYSHACK JEDI             | ROCK        | DUKAKIS      |
        | CHITTY LOCK                 | ROCK        | DUKAKIS      |
        | DANCING FEVER               | ROCK        | DUKAKIS      |
        | DESIRE ALIEN                | ROCK        | DUKAKIS      |
        | EVE RESURRECTION            | ROCK        | DUKAKIS      |
        | FICTION CHRISTMAS           | ROCK        | DUKAKIS      |
        | FLATLINERS KILLER           | ROCK        | DUKAKIS      |
        | FRISCO FORREST              | ROCK        | DUKAKIS      |
        | HANGING DEEP                | ROCK        | DUKAKIS      |
        | HEAVYWEIGHTS BEAST          | ROCK        | DUKAKIS      |
        | LADY STAGE                  | ROCK        | DUKAKIS      |
        | LESSON CLEOPATRA            | ROCK        | DUKAKIS      |
        | LONELY ELEPHANT             | ROCK        | DUKAKIS      |
        | MAUDE MOD                   | ROCK        | DUKAKIS      |
        | MONTEREY LABYRINTH          | ROCK        | DUKAKIS      |
        | MUMMY CREATURES             | ROCK        | DUKAKIS      |
        | PATHS CONTROL               | ROCK        | DUKAKIS      |
        | SCISSORHANDS SLUMS          | ROCK        | DUKAKIS      |
        | SEABISCUIT PUNK             | ROCK        | DUKAKIS      |
        | SEARCHERS WAIT              | ROCK        | DUKAKIS      |
        | SNATCHERS MONTEZUMA         | ROCK        | DUKAKIS      |
        | STORM HAPPINESS             | ROCK        | DUKAKIS      |
        | UNITED PILOT                | ROCK        | DUKAKIS      |
        | WORKER TARZAN               | ROCK        | DUKAKIS      |
        | WORKING MICROCOSMOS         | ROCK        | DUKAKIS      |
        | ATLANTIS CAUSE              | CUBA        | BIRCH        |
        | BLOOD ARGONAUTS             | CUBA        | BIRCH        |
        | COMMANDMENTS EXPRESS        | CUBA        | BIRCH        |
        | DYNAMITE TARZAN             | CUBA        | BIRCH        |
        | EDGE KISSING                | CUBA        | BIRCH        |
        | FINDING ANACONDA            | CUBA        | BIRCH        |
        | GREATEST NORTH              | CUBA        | BIRCH        |
        | JUNGLE CLOSER               | CUBA        | BIRCH        |
        | LANGUAGE COWBOY             | CUBA        | BIRCH        |
        | LEAGUE HELLFIGHTERS         | CUBA        | BIRCH        |
        | LIBERTY MAGNIFICENT         | CUBA        | BIRCH        |
        | LOST BIRD                   | CUBA        | BIRCH        |
        | MAGNIFICENT CHITTY          | CUBA        | BIRCH        |
        | MARS ROMAN                  | CUBA        | BIRCH        |
        | NORTHWEST POLISH            | CUBA        | BIRCH        |
        | ROAD ROXANNE                | CUBA        | BIRCH        |
        | RUGRATS SHAKESPEARE         | CUBA        | BIRCH        |
        | SHIP WONDERLAND             | CUBA        | BIRCH        |
        | SONS INTERVIEW              | CUBA        | BIRCH        |
        | STRANGER STRANGERS          | CUBA        | BIRCH        |
        | TENENBAUMS COMMAND          | CUBA        | BIRCH        |
        | TOOTSIE PILOT               | CUBA        | BIRCH        |
        | TOWERS HURRICANE            | CUBA        | BIRCH        |
        | VICTORY ACADEMY             | CUBA        | BIRCH        |
        | ARK RIDGEMONT               | AUDREY      | BAILEY       |
        | BANGER PINOCCHIO            | AUDREY      | BAILEY       |
        | BED HIGHBALL                | AUDREY      | BAILEY       |
        | BOONDOCK BALLROOM           | AUDREY      | BAILEY       |
        | CONFESSIONS MAGUIRE         | AUDREY      | BAILEY       |
        | DISTURBING SCARFACE         | AUDREY      | BAILEY       |
        | DRIFTER COMMANDMENTS        | AUDREY      | BAILEY       |
        | ELF MURDER                  | AUDREY      | BAILEY       |
        | FEVER EMPIRE                | AUDREY      | BAILEY       |
        | GRAFFITI LOVE               | AUDREY      | BAILEY       |
        | HEAVENLY GUN                | AUDREY      | BAILEY       |
        | HOME PITY                   | AUDREY      | BAILEY       |
        | ITALIAN AFRICAN             | AUDREY      | BAILEY       |
        | MAGNOLIA FORRESTER          | AUDREY      | BAILEY       |
        | MASKED BUBBLE               | AUDREY      | BAILEY       |
        | MUMMY CREATURES             | AUDREY      | BAILEY       |
        | NEWTON LABYRINTH            | AUDREY      | BAILEY       |
        | PILOT HOOSIERS              | AUDREY      | BAILEY       |
        | PITTSBURGH HUNCHBACK        | AUDREY      | BAILEY       |
        | POTTER CONNECTICUT          | AUDREY      | BAILEY       |
        | PRESIDENT BANG              | AUDREY      | BAILEY       |
        | PURPLE MOVIE                | AUDREY      | BAILEY       |
        | QUILLS BULL                 | AUDREY      | BAILEY       |
        | SKY MIRACLE                 | AUDREY      | BAILEY       |
        | SLEEPY JAPANESE             | AUDREY      | BAILEY       |
        | TADPOLE PARK                | AUDREY      | BAILEY       |
        | WARLOCK WEREWOLF            | AUDREY      | BAILEY       |
        | ALLEY EVOLUTION             | GREGORY     | GOODING      |
        | ARMAGEDDON LOST             | GREGORY     | GOODING      |
        | BOILED DARES                | GREGORY     | GOODING      |
        | COWBOY DOOM                 | GREGORY     | GOODING      |
        | DEEP CRUSADE                | GREGORY     | GOODING      |
        | EXORCIST STING              | GREGORY     | GOODING      |
        | EXPRESS LONELY              | GREGORY     | GOODING      |
        | GREATEST NORTH              | GREGORY     | GOODING      |
        | HEAVEN FREEDOM              | GREGORY     | GOODING      |
        | HOLES BRANNIGAN             | GREGORY     | GOODING      |
        | INSECTS STONE               | GREGORY     | GOODING      |
        | MADISON TRAP                | GREGORY     | GOODING      |
        | MAIDEN HOME                 | GREGORY     | GOODING      |
        | MOONSHINE CABIN             | GREGORY     | GOODING      |
        | OPERATION OPERATION         | GREGORY     | GOODING      |
        | PEAK FOREVER                | GREGORY     | GOODING      |
        | POTLUCK MIXED               | GREGORY     | GOODING      |
        | SEATTLE EXPECATIONS         | GREGORY     | GOODING      |
        | SISTER FREDDY               | GREGORY     | GOODING      |
        | SONG HEDWIG                 | GREGORY     | GOODING      |
        | SPICE SORORITY              | GREGORY     | GOODING      |
        | SPIRIT FLINTSTONES          | GREGORY     | GOODING      |
        | SPOILERS HELLFIGHTERS       | GREGORY     | GOODING      |
        | STORM HAPPINESS             | GREGORY     | GOODING      |
        | SUBMARINE BED               | GREGORY     | GOODING      |
        | TROUBLE DATE                | GREGORY     | GOODING      |
        | WARDROBE PHANTOM            | GREGORY     | GOODING      |
        | WEST LION                   | GREGORY     | GOODING      |
        | WHALE BIKINI                | GREGORY     | GOODING      |
        | WRONG BEHAVIOR              | GREGORY     | GOODING      |
        | ALLEY EVOLUTION             | JOHN        | SUVARI       |
        | BEVERLY OUTLAW              | JOHN        | SUVARI       |
        | CANDLES GRAPES              | JOHN        | SUVARI       |
        | CLEOPATRA DEVIL             | JOHN        | SUVARI       |
        | COLOR PHILADELPHIA          | JOHN        | SUVARI       |
        | CONQUERER NUTS              | JOHN        | SUVARI       |
        | DAUGHTER MADIGAN            | JOHN        | SUVARI       |
        | GLEAMING JAWBREAKER         | JOHN        | SUVARI       |
        | GOLDMINE TYCOON             | JOHN        | SUVARI       |
        | HOME PITY                   | JOHN        | SUVARI       |
        | INTERVIEW LIAISONS          | JOHN        | SUVARI       |
        | ISHTAR ROCKETEER            | JOHN        | SUVARI       |
        | JAPANESE RUN                | JOHN        | SUVARI       |
        | JERSEY SASSY                | JOHN        | SUVARI       |
        | LUKE MUMMY                  | JOHN        | SUVARI       |
        | MILLION ACE                 | JOHN        | SUVARI       |
        | MONSTER SPARTACUS           | JOHN        | SUVARI       |
        | NAME DETECTIVE              | JOHN        | SUVARI       |
        | NECKLACE OUTBREAK           | JOHN        | SUVARI       |
        | NEWSIES STORY               | JOHN        | SUVARI       |
        | PET HAUNTING                | JOHN        | SUVARI       |
        | PIANIST OUTFIELD            | JOHN        | SUVARI       |
        | PINOCCHIO SIMON             | JOHN        | SUVARI       |
        | PITTSBURGH HUNCHBACK        | JOHN        | SUVARI       |
        | QUILLS BULL                 | JOHN        | SUVARI       |
        | RAGING AIRPLANE             | JOHN        | SUVARI       |
        | ROXANNE REBEL               | JOHN        | SUVARI       |
        | SATISFACTION CONFIDENTIAL   | JOHN        | SUVARI       |
        | SONG HEDWIG                 | JOHN        | SUVARI       |
        | ATTACKS HATE                | BURT        | TEMPLE       |
        | BLANKET BEVERLY             | BURT        | TEMPLE       |
        | BUCKET BROTHERHOOD          | BURT        | TEMPLE       |
        | BUTTERFLY CHOCOLAT          | BURT        | TEMPLE       |
        | CAPER MOTIONS               | BURT        | TEMPLE       |
        | CHICAGO NORTH               | BURT        | TEMPLE       |
        | COAST RAINBOW               | BURT        | TEMPLE       |
        | EVOLUTION ALTER             | BURT        | TEMPLE       |
        | GATHERING CALENDAR          | BURT        | TEMPLE       |
        | GILMORE BOILED              | BURT        | TEMPLE       |
        | GRAPES FURY                 | BURT        | TEMPLE       |
        | HEAVYWEIGHTS BEAST          | BURT        | TEMPLE       |
        | INSIDER ARIZONA             | BURT        | TEMPLE       |
        | POLLOCK DELIVERANCE         | BURT        | TEMPLE       |
        | RACER EGG                   | BURT        | TEMPLE       |
        | ROSES TREASURE              | BURT        | TEMPLE       |
        | SLEUTH ORIENT               | BURT        | TEMPLE       |
        | SPIKING ELEMENT             | BURT        | TEMPLE       |
        | SPOILERS HELLFIGHTERS       | BURT        | TEMPLE       |
        | STRAIGHT HOURS              | BURT        | TEMPLE       |
        | VARSITY TRIP                | BURT        | TEMPLE       |
        | WAIT CIDER                  | BURT        | TEMPLE       |
        | WARS PLUTO                  | BURT        | TEMPLE       |
        | ALABAMA DEVIL               | MERYL       | ALLEN        |
        | ARTIST COLDBLOODED          | MERYL       | ALLEN        |
        | BERETS AGENT                | MERYL       | ALLEN        |
        | BOOGIE AMELIE               | MERYL       | ALLEN        |
        | BORN SPINAL                 | MERYL       | ALLEN        |
        | BRIGHT ENCOUNTERS           | MERYL       | ALLEN        |
        | CHANCE RESURRECTION         | MERYL       | ALLEN        |
        | CLUE GRAIL                  | MERYL       | ALLEN        |
        | CLYDE THEORY                | MERYL       | ALLEN        |
        | DAWN POND                   | MERYL       | ALLEN        |
        | DIRTY ACE                   | MERYL       | ALLEN        |
        | GATHERING CALENDAR          | MERYL       | ALLEN        |
        | HIGH ENCINO                 | MERYL       | ALLEN        |
        | JET NEIGHBORS               | MERYL       | ALLEN        |
        | KILLER INNOCENT             | MERYL       | ALLEN        |
        | LOSE INCH                   | MERYL       | ALLEN        |
        | RECORDS ZORRO               | MERYL       | ALLEN        |
        | ROCKETEER MOTHER            | MERYL       | ALLEN        |
        | SHEPHERD MIDSUMMER          | MERYL       | ALLEN        |
        | SWEET BROTHERHOOD           | MERYL       | ALLEN        |
        | VELVET TERMINATOR           | MERYL       | ALLEN        |
        | VICTORY ACADEMY             | MERYL       | ALLEN        |
        | CAUSE DATE                  | JAYNE       | SILVERSTONE  |
        | CELEBRITY HORN              | JAYNE       | SILVERSTONE  |
        | CHICAGO NORTH               | JAYNE       | SILVERSTONE  |
        | CHINATOWN GLADIATOR         | JAYNE       | SILVERSTONE  |
        | EYES DRIVING                | JAYNE       | SILVERSTONE  |
        | GLADIATOR WESTWARD          | JAYNE       | SILVERSTONE  |
        | GLEAMING JAWBREAKER         | JAYNE       | SILVERSTONE  |
        | HALL CASSIDY                | JAYNE       | SILVERSTONE  |
        | HARRY IDAHO                 | JAYNE       | SILVERSTONE  |
        | KARATE MOON                 | JAYNE       | SILVERSTONE  |
        | LICENSE WEEKEND             | JAYNE       | SILVERSTONE  |
        | LOUISIANA HARRY             | JAYNE       | SILVERSTONE  |
        | MARS ROMAN                  | JAYNE       | SILVERSTONE  |
        | MONSTER SPARTACUS           | JAYNE       | SILVERSTONE  |
        | OZ LIAISONS                 | JAYNE       | SILVERSTONE  |
        | PARIS WEEKEND               | JAYNE       | SILVERSTONE  |
        | PERSONAL LADYBUGS           | JAYNE       | SILVERSTONE  |
        | PIANIST OUTFIELD            | JAYNE       | SILVERSTONE  |
        | QUEEN LUKE                  | JAYNE       | SILVERSTONE  |
        | ROCKETEER MOTHER            | JAYNE       | SILVERSTONE  |
        | SCHOOL JACKET               | JAYNE       | SILVERSTONE  |
        | SEVEN SWARM                 | JAYNE       | SILVERSTONE  |
        | SIDE ARK                    | JAYNE       | SILVERSTONE  |
        | SMOOCHY CONTROL             | JAYNE       | SILVERSTONE  |
        | SUSPECTS QUILLS             | JAYNE       | SILVERSTONE  |
        | TEXAS WATCH                 | JAYNE       | SILVERSTONE  |
        | WASTELAND DIVINE            | JAYNE       | SILVERSTONE  |
        | BEETHOVEN EXORCIST          | BELA        | WALKEN       |
        | CARRIE BUNCH                | BELA        | WALKEN       |
        | CLERKS ANGELS               | BELA        | WALKEN       |
        | COMFORTS RUSH               | BELA        | WALKEN       |
        | ELEMENT FREDDY              | BELA        | WALKEN       |
        | ENEMY ODDS                  | BELA        | WALKEN       |
        | FANTASY TROOPERS            | BELA        | WALKEN       |
        | FLINTSTONES HAPPINESS       | BELA        | WALKEN       |
        | HOLLYWOOD ANONYMOUS         | BELA        | WALKEN       |
        | JACKET FRISCO               | BELA        | WALKEN       |
        | JERK PAYCHECK               | BELA        | WALKEN       |
        | LEGALLY SECRETARY           | BELA        | WALKEN       |
        | LION UNCUT                  | BELA        | WALKEN       |
        | LUKE MUMMY                  | BELA        | WALKEN       |
        | MARS ROMAN                  | BELA        | WALKEN       |
        | MIDSUMMER GROUNDHOG         | BELA        | WALKEN       |
        | MIGHTY LUCK                 | BELA        | WALKEN       |
        | MOD SECRETARY               | BELA        | WALKEN       |
        | NASH CHOCOLAT               | BELA        | WALKEN       |
        | OKLAHOMA JUMANJI            | BELA        | WALKEN       |
        | PIZZA JUMANJI               | BELA        | WALKEN       |
        | SIEGE MADRE                 | BELA        | WALKEN       |
        | SNATCHERS MONTEZUMA         | BELA        | WALKEN       |
        | SPLENDOR PATTON             | BELA        | WALKEN       |
        | STAGE WORLD                 | BELA        | WALKEN       |
        | TRAMP OTHERS                | BELA        | WALKEN       |
        | TRAP GUYS                   | BELA        | WALKEN       |
        | TYCOON GATHERING            | BELA        | WALKEN       |
        | VERTIGO NORTHWEST           | BELA        | WALKEN       |
        | WHISPERER GIANT             | BELA        | WALKEN       |
        | AGENT TRUMAN                | REESE       | WEST         |
        | ANTITRUST TOMATOES          | REESE       | WEST         |
        | BEDAZZLED MARRIED           | REESE       | WEST         |
        | CASABLANCA SUPER            | REESE       | WEST         |
        | CAUSE DATE                  | REESE       | WEST         |
        | CHOCOLAT HARRY              | REESE       | WEST         |
        | COAST RAINBOW               | REESE       | WEST         |
        | CREATURES SHAKESPEARE       | REESE       | WEST         |
        | DOORS PRESIDENT             | REESE       | WEST         |
        | DRACULA CRYSTAL             | REESE       | WEST         |
        | DRUMS DYNAMITE              | REESE       | WEST         |
        | GODFATHER DIARY             | REESE       | WEST         |
        | GOODFELLAS SALUTE           | REESE       | WEST         |
        | GORGEOUS BINGO              | REESE       | WEST         |
        | HOBBIT ALIEN                | REESE       | WEST         |
        | LIFE TWISTED                | REESE       | WEST         |
        | LOSE INCH                   | REESE       | WEST         |
        | MALKOVICH PET               | REESE       | WEST         |
        | MOSQUITO ARMAGEDDON         | REESE       | WEST         |
        | NORTHWEST POLISH            | REESE       | WEST         |
        | POSEIDON FOREVER            | REESE       | WEST         |
        | REMEMBER DIARY              | REESE       | WEST         |
        | ROUGE SQUAD                 | REESE       | WEST         |
        | RUNNER MADIGAN              | REESE       | WEST         |
        | SAINTS BRIDE                | REESE       | WEST         |
        | SCHOOL JACKET               | REESE       | WEST         |
        | SNATCHERS MONTEZUMA         | REESE       | WEST         |
        | TURN STAR                   | REESE       | WEST         |
        | VOLUME HOUSE                | REESE       | WEST         |
        | WEEKEND PERSONAL            | REESE       | WEST         |
        | WILD APOLLO                 | REESE       | WEST         |
        | WITCHES PANIC               | REESE       | WEST         |
        | YENTL IDAHO                 | REESE       | WEST         |
        | ACADEMY DINOSAUR            | MARY        | KEITEL       |
        | BUTTERFLY CHOCOLAT          | MARY        | KEITEL       |
        | CASSIDY WYOMING             | MARY        | KEITEL       |
        | CRAFT OUTFIELD              | MARY        | KEITEL       |
        | DUMBO LUST                  | MARY        | KEITEL       |
        | DWARFS ALTER                | MARY        | KEITEL       |
        | FANTASY TROOPERS            | MARY        | KEITEL       |
        | FEUD FROGMEN                | MARY        | KEITEL       |
        | FICTION CHRISTMAS           | MARY        | KEITEL       |
        | FORREST SONS                | MARY        | KEITEL       |
        | GAMES BOWFINGER             | MARY        | KEITEL       |
        | GREEDY ROOTS                | MARY        | KEITEL       |
        | HANDICAP BOONDOCK           | MARY        | KEITEL       |
        | HAUNTING PIANIST            | MARY        | KEITEL       |
        | IDOLS SNATCHERS             | MARY        | KEITEL       |
        | INTENTIONS EMPIRE           | MARY        | KEITEL       |
        | JEOPARDY ENCINO             | MARY        | KEITEL       |
        | KING EVOLUTION              | MARY        | KEITEL       |
        | LOVELY JINGLE               | MARY        | KEITEL       |
        | LUKE MUMMY                  | MARY        | KEITEL       |
        | MADNESS ATTACKS             | MARY        | KEITEL       |
        | MALLRATS UNITED             | MARY        | KEITEL       |
        | MEMENTO ZOOLANDER           | MARY        | KEITEL       |
        | MERMAID INSECTS             | MARY        | KEITEL       |
        | MODEL FISH                  | MARY        | KEITEL       |
        | MOONWALKER FOOL             | MARY        | KEITEL       |
        | NORTHWEST POLISH            | MARY        | KEITEL       |
        | ROSES TREASURE              | MARY        | KEITEL       |
        | SAINTS BRIDE                | MARY        | KEITEL       |
        | SIERRA DIVIDE               | MARY        | KEITEL       |
        | SLEEPY JAPANESE             | MARY        | KEITEL       |
        | SOLDIERS EVOLUTION          | MARY        | KEITEL       |
        | STEEL SANTA                 | MARY        | KEITEL       |
        | SUBMARINE BED               | MARY        | KEITEL       |
        | SWEDEN SHINING              | MARY        | KEITEL       |
        | THEORY MERMAID              | MARY        | KEITEL       |
        | TITANIC BOONDOCK            | MARY        | KEITEL       |
        | UNFORGIVEN ZOOLANDER        | MARY        | KEITEL       |
        | WAGON JAWS                  | MARY        | KEITEL       |
        | YOUTH KICK                  | MARY        | KEITEL       |
        | BERETS AGENT                | JULIA       | FAWCETT      |
        | BOILED DARES                | JULIA       | FAWCETT      |
        | CHISUM BEHAVIOR             | JULIA       | FAWCETT      |
        | CLOSER BANG                 | JULIA       | FAWCETT      |
        | DAY UNFAITHFUL              | JULIA       | FAWCETT      |
        | HOPE TOOTSIE                | JULIA       | FAWCETT      |
        | LUKE MUMMY                  | JULIA       | FAWCETT      |
        | MULAN MOON                  | JULIA       | FAWCETT      |
        | OPUS ICE                    | JULIA       | FAWCETT      |
        | POLLOCK DELIVERANCE         | JULIA       | FAWCETT      |
        | RIDGEMONT SUBMARINE         | JULIA       | FAWCETT      |
        | SHANGHAI TYCOON             | JULIA       | FAWCETT      |
        | SHAWSHANK BUBBLE            | JULIA       | FAWCETT      |
        | THEORY MERMAID              | JULIA       | FAWCETT      |
        | WAIT CIDER                  | JULIA       | FAWCETT      |
        | AFRICAN EGG                 | THORA       | TEMPLE       |
        | BADMAN DAWN                 | THORA       | TEMPLE       |
        | BLANKET BEVERLY             | THORA       | TEMPLE       |
        | CANDIDATE PERDITION         | THORA       | TEMPLE       |
        | CAROL TEXAS                 | THORA       | TEMPLE       |
        | CHRISTMAS MOONSHINE         | THORA       | TEMPLE       |
        | GALAXY SWEETHEARTS          | THORA       | TEMPLE       |
        | HOCUS FRIDA                 | THORA       | TEMPLE       |
        | INSIDER ARIZONA             | THORA       | TEMPLE       |
        | INTERVIEW LIAISONS          | THORA       | TEMPLE       |
        | JADE BUNCH                  | THORA       | TEMPLE       |
        | LOVER TRUMAN                | THORA       | TEMPLE       |
        | LOVERBOY ATTACKS            | THORA       | TEMPLE       |
        | MADISON TRAP                | THORA       | TEMPLE       |
        | RANDOM GO                   | THORA       | TEMPLE       |
        | TELEGRAPH VOYAGE            | THORA       | TEMPLE       |
        | TROJAN TOMORROW             | THORA       | TEMPLE       |
        | VIRGINIAN PLUTO             | THORA       | TEMPLE       |
        | WARDROBE PHANTOM            | THORA       | TEMPLE       |
        | WRONG BEHAVIOR              | THORA       | TEMPLE       |
        +-----------------------------+-------------+--------------+
        5462 rows in set (0,02 sec)
        **/

        -- Mostrar el nombre de la película y el de sus categorías.
        select f.title, c.name as Category from film f JOIN film_category fc ON f.film_id = fc.film_id JOIN category c ON  c.category_id = fc.category_id;
        /**
        +-----------------------------+-------------+
        | title                       | Category    |
        +-----------------------------+-------------+
        | AMADEUS HOLY                | Action      |
        | AMERICAN CIRCUS             | Action      |
        | ANTITRUST TOMATOES          | Action      |
        | ARK RIDGEMONT               | Action      |
        | BAREFOOT MANCHURIAN         | Action      |
        | BERETS AGENT                | Action      |
        | BRIDE INTRIGUE              | Action      |
        | BULL SHAWSHANK              | Action      |
        | CADDYSHACK JEDI             | Action      |
        | CAMPUS REMEMBER             | Action      |
        | CASUALTIES ENCINO           | Action      |
        | CELEBRITY HORN              | Action      |
        | CLUELESS BUCKET             | Action      |
        | CROW GREASE                 | Action      |
        | DANCES NONE                 | Action      |
        | DARKO DORADO                | Action      |
        | DARN FORRESTER              | Action      |
        | DEVIL DESIRE                | Action      |
        | DRAGON SQUAD                | Action      |
        | DREAM PICKUP                | Action      |
        | DRIFTER COMMANDMENTS        | Action      |
        | EASY GLADIATOR              | Action      |
        | ENTRAPMENT SATISFACTION     | Action      |
        | EXCITEMENT EVE              | Action      |
        | FANTASY TROOPERS            | Action      |
        | FIREHOUSE VIETNAM           | Action      |
        | FOOL MOCKINGBIRD            | Action      |
        | FORREST SONS                | Action      |
        | GLASS DYING                 | Action      |
        | GOSFORD DONNIE              | Action      |
        | GRAIL FRANKENSTEIN          | Action      |
        | HANDICAP BOONDOCK           | Action      |
        | HILLS NEIGHBORS             | Action      |
        | KISSING DOLLS               | Action      |
        | LAWRENCE LOVE               | Action      |
        | LORD ARIZONA                | Action      |
        | LUST LOCK                   | Action      |
        | MAGNOLIA FORRESTER          | Action      |
        | MIDNIGHT WESTWARD           | Action      |
        | MINDS TRUMAN                | Action      |
        | MOCKINGBIRD HOLLYWOOD       | Action      |
        | MONTEZUMA COMMAND           | Action      |
        | PARK CITIZEN                | Action      |
        | PATRIOT ROMAN               | Action      |
        | PRIMARY GLASS               | Action      |
        | QUEST MUSSOLINI             | Action      |
        | REAR TRADING                | Action      |
        | RINGS HEARTBREAKERS         | Action      |
        | RUGRATS SHAKESPEARE         | Action      |
        | SHRUNK DIVINE               | Action      |
        | SIDE ARK                    | Action      |
        | SKY MIRACLE                 | Action      |
        | SOUTH WAIT                  | Action      |
        | SPEAKEASY DATE              | Action      |
        | STAGECOACH ARMAGEDDON       | Action      |
        | STORY SIDE                  | Action      |
        | SUSPECTS QUILLS             | Action      |
        | TRIP NEWTON                 | Action      |
        | TRUMAN CRAZY                | Action      |
        | UPRISING UPTOWN             | Action      |
        | WATERFRONT DELIVERANCE      | Action      |
        | WEREWOLF LOLA               | Action      |
        | WOMEN DORADO                | Action      |
        | WORST BANGER                | Action      |
        | ALTER VICTORY               | Animation   |
        | ANACONDA CONFESSIONS        | Animation   |
        | ARGONAUTS TOWN              | Animation   |
        | BIKINI BORROWERS            | Animation   |
        | BLACKOUT PRIVATE            | Animation   |
        | BORROWERS BEDAZZLED         | Animation   |
        | CANYON STOCK                | Animation   |
        | CAROL TEXAS                 | Animation   |
        | CHAMPION FLATLINERS         | Animation   |
        | CLASH FREDDY                | Animation   |
        | CLUB GRAFFITI               | Animation   |
        | CROSSROADS CASUALTIES       | Animation   |
        | DARES PLUTO                 | Animation   |
        | DESIRE ALIEN                | Animation   |
        | DOGMA FAMILY                | Animation   |
        | DONNIE ALLEY                | Animation   |
        | DOORS PRESIDENT             | Animation   |
        | DOUBLE WRATH                | Animation   |
        | DUCK RACER                  | Animation   |
        | EARLY HOME                  | Animation   |
        | FALCON VOLUME               | Animation   |
        | FIGHT JAWBREAKER            | Animation   |
        | FLOATS GARDEN               | Animation   |
        | FLYING HOOK                 | Animation   |
        | FORRESTER COMANCHEROS       | Animation   |
        | GANGS PRIDE                 | Animation   |
        | GHOSTBUSTERS ELF            | Animation   |
        | HARPER DYING                | Animation   |
        | HOOK CHARIOTS               | Animation   |
        | HORN WORKING                | Animation   |
        | INCH JET                    | Animation   |
        | INSECTS STONE               | Animation   |
        | INTENTIONS EMPIRE           | Animation   |
        | ISHTAR ROCKETEER            | Animation   |
        | JUGGLER HARDLY              | Animation   |
        | LAWLESS VISION              | Animation   |
        | LUKE MUMMY                  | Animation   |
        | MASSAGE IMAGE               | Animation   |
        | MENAGERIE RUSHMORE          | Animation   |
        | MIRACLE VIRTUAL             | Animation   |
        | MISSION ZOOLANDER           | Animation   |
        | NASH CHOCOLAT               | Animation   |
        | OSCAR GOLD                  | Animation   |
        | OZ LIAISONS                 | Animation   |
        | PACKER MADIGAN              | Animation   |
        | POND SEATTLE                | Animation   |
        | POTLUCK MIXED               | Animation   |
        | POTTER CONNECTICUT          | Animation   |
        | PRIDE ALAMO                 | Animation   |
        | PUNK DIVORCE                | Animation   |
        | ROOM ROMAN                  | Animation   |
        | SLEEPLESS MONSOON           | Animation   |
        | SNOWMAN ROLLERCOASTER       | Animation   |
        | SONS INTERVIEW              | Animation   |
        | STORM HAPPINESS             | Animation   |
        | SUGAR WONKA                 | Animation   |
        | SUNRISE LEAGUE              | Animation   |
        | TELEMARK HEARTBREAKERS      | Animation   |
        | THEORY MERMAID              | Animation   |
        | THIEF PELICAN               | Animation   |
        | TITANIC BOONDOCK            | Animation   |
        | TRACY CIDER                 | Animation   |
        | TURN STAR                   | Animation   |
        | WAIT CIDER                  | Animation   |
        | WATCH TRACY                 | Animation   |
        | WONKA SEA                   | Animation   |
        | BACKLASH UNDEFEATED         | Children    |
        | BEAR GRACELAND              | Children    |
        | BENEATH RUSH                | Children    |
        | BETRAYED REAR               | Children    |
        | CABIN FLASH                 | Children    |
        | CASPER DRAGONFLY            | Children    |
        | CHRISTMAS MOONSHINE         | Children    |
        | CIRCUS YOUTH                | Children    |
        | CLOCKWORK PARADISE          | Children    |
        | COMANCHEROS ENEMY           | Children    |
        | CROOKED FROGMEN             | Children    |
        | DAUGHTER MADIGAN            | Children    |
        | DOCTOR GRAIL                | Children    |
        | EMPIRE MALKOVICH            | Children    |
        | FARGO GANDHI                | Children    |
        | FOREVER CANDIDATE           | Children    |
        | FULL FLATLINERS             | Children    |
        | FURY MURDER                 | Children    |
        | GHOST GROUNDHOG             | Children    |
        | GIANT TROOPERS              | Children    |
        | GORGEOUS BINGO              | Children    |
        | GRADUATE LORD               | Children    |
        | HALL CASSIDY                | Children    |
        | HEARTBREAKERS BRIGHT        | Children    |
        | HOLLYWOOD ANONYMOUS         | Children    |
        | HOLOCAUST HIGHBALL          | Children    |
        | IDOLS SNATCHERS             | Children    |
        | INVASION CYCLONE            | Children    |
        | JERSEY SASSY                | Children    |
        | JUMPING WRATH               | Children    |
        | LABYRINTH LEAGUE            | Children    |
        | LANGUAGE COWBOY             | Children    |
        | LEGALLY SECRETARY           | Children    |
        | MAGIC MALLRATS              | Children    |
        | MAKER GABLES                | Children    |
        | MICROCOSMOS PARADISE        | Children    |
        | MODEL FISH                  | Children    |
        | MURDER ANTITRUST            | Children    |
        | NOON PAPI                   | Children    |
        | POLISH BROOKLYN             | Children    |
        | ROBBERS JOON                | Children    |
        | SABRINA MIDNIGHT            | Children    |
        | SANTA PARIS                 | Children    |
        | SCARFACE BANG               | Children    |
        | SHEPHERD MIDSUMMER          | Children    |
        | SISTER FREDDY               | Children    |
        | SPLENDOR PATTON             | Children    |
        | STRANGELOVE DESIRE          | Children    |
        | STRANGER STRANGERS          | Children    |
        | SUNDANCE INVASION           | Children    |
        | SWEETHEARTS SUSPECTS        | Children    |
        | TEQUILA PAST                | Children    |
        | TIES HUNGER                 | Children    |
        | TOOTSIE PILOT               | Children    |
        | TWISTED PIRATES             | Children    |
        | UPTOWN YOUNG                | Children    |
        | WALLS ARTIST                | Children    |
        | WARLOCK WEREWOLF            | Children    |
        | WRONG BEHAVIOR              | Children    |
        | ZOOLANDER FICTION           | Children    |
        | ALICE FANTASIA              | Classics    |
        | ARIZONA BANG                | Classics    |
        | BEAST HUNCHBACK             | Classics    |
        | BOUND CHEAPER               | Classics    |
        | CANDIDATE PERDITION         | Classics    |
        | CENTER DINOSAUR             | Classics    |
        | COLOR PHILADELPHIA          | Classics    |
        | CONSPIRACY SPIRIT           | Classics    |
        | CORE SUIT                   | Classics    |
        | CREEPERS KANE               | Classics    |
        | CRUELTY UNFORGIVEN          | Classics    |
        | DETECTIVE VISION            | Classics    |
        | DRACULA CRYSTAL             | Classics    |
        | DYNAMITE TARZAN             | Classics    |
        | EXTRAORDINARY CONQUERER     | Classics    |
        | FROST HEAD                  | Classics    |
        | GALAXY SWEETHEARTS          | Classics    |
        | GILBERT PELICAN             | Classics    |
        | GILMORE BOILED              | Classics    |
        | HOLY TADPOLE                | Classics    |
        | HOPE TOOTSIE                | Classics    |
        | HYDE DOCTOR                 | Classics    |
        | IRON MOON                   | Classics    |
        | ISLAND EXORCIST             | Classics    |
        | JEEPERS WEDDING             | Classics    |
        | JEOPARDY ENCINO             | Classics    |
        | JERK PAYCHECK               | Classics    |
        | JINGLE SAGEBRUSH            | Classics    |
        | LEAGUE HELLFIGHTERS         | Classics    |
        | LIGHTS DEER                 | Classics    |
        | LOATHING LEGALLY            | Classics    |
        | LOVELY JINGLE               | Classics    |
        | LOVER TRUMAN                | Classics    |
        | MAGNIFICENT CHITTY          | Classics    |
        | MALKOVICH PET               | Classics    |
        | MILLION ACE                 | Classics    |
        | MUSKETEERS WAIT             | Classics    |
        | OCTOBER SUBMARINE           | Classics    |
        | PAJAMA JAWBREAKER           | Classics    |
        | PATIENT SISTER              | Classics    |
        | PREJUDICE OLEANDER          | Classics    |
        | REQUIEM TYCOON              | Classics    |
        | RIGHT CRANES                | Classics    |
        | ROOTS REMEMBER              | Classics    |
        | SLING LUKE                  | Classics    |
        | SNATCHERS MONTEZUMA         | Classics    |
        | SPIKING ELEMENT             | Classics    |
        | STEEL SANTA                 | Classics    |
        | SUMMER SCARFACE             | Classics    |
        | TADPOLE PARK                | Classics    |
        | TIMBERLAND SKY              | Classics    |
        | TOMORROW HUSTLER            | Classics    |
        | TOWERS HURRICANE            | Classics    |
        | VOLUME HOUSE                | Classics    |
        | VOYAGE LEGALLY              | Classics    |
        | WASTELAND DIVINE            | Classics    |
        | WESTWARD SEABISCUIT         | Classics    |
        | AIRPLANE SIERRA             | Comedy      |
        | ANTHEM LUKE                 | Comedy      |
        | BRINGING HYSTERICAL         | Comedy      |
        | CAPER MOTIONS               | Comedy      |
        | CAT CONEHEADS               | Comedy      |
        | CLOSER BANG                 | Comedy      |
        | CONNECTION MICROCOSMOS      | Comedy      |
        | CONTROL ANTHEM              | Comedy      |
        | CRAZY HOME                  | Comedy      |
        | DADDY PITTSBURGH            | Comedy      |
        | DOOM DANCING                | Comedy      |
        | DOWNHILL ENOUGH             | Comedy      |
        | DYING MAKER                 | Comedy      |
        | ELEMENT FREDDY              | Comedy      |
        | FERRIS MOTHER               | Comedy      |
        | FIREBALL PHILADELPHIA       | Comedy      |
        | FLINTSTONES HAPPINESS       | Comedy      |
        | FRANKENSTEIN STRANGER       | Comedy      |
        | FREEDOM CLEOPATRA           | Comedy      |
        | GOLD RIVER                  | Comedy      |
        | GROUNDHOG UNCUT             | Comedy      |
        | GUNFIGHT MOON               | Comedy      |
        | HATE HANDICAP               | Comedy      |
        | HEAVEN FREEDOM              | Comedy      |
        | HEDWIG ALTER                | Comedy      |
        | HURRICANE AFFAIR            | Comedy      |
        | HUSTLER PARTY               | Comedy      |
        | JAWS HARRY                  | Comedy      |
        | KNOCK WARLOCK               | Comedy      |
        | LIFE TWISTED                | Comedy      |
        | LION UNCUT                  | Comedy      |
        | LONELY ELEPHANT             | Comedy      |
        | MALLRATS UNITED             | Comedy      |
        | MEMENTO ZOOLANDER           | Comedy      |
        | MULAN MOON                  | Comedy      |
        | MYSTIC TRUMAN               | Comedy      |
        | OPERATION OPERATION         | Comedy      |
        | PARADISE SABRINA            | Comedy      |
        | PARTY KNOCK                 | Comedy      |
        | PERFECT GROOVE              | Comedy      |
        | PINOCCHIO SIMON             | Comedy      |
        | PURE RUNNER                 | Comedy      |
        | RUSHMORE MERMAID            | Comedy      |
        | SADDLE ANTITRUST            | Comedy      |
        | SATURN NAME                 | Comedy      |
        | SEARCHERS WAIT              | Comedy      |
        | SNATCH SLIPPER              | Comedy      |
        | STAGE WORLD                 | Comedy      |
        | STRICTLY SCARFACE           | Comedy      |
        | SUBMARINE BED               | Comedy      |
        | SWEDEN SHINING              | Comedy      |
        | TRAINSPOTTING STRANGERS     | Comedy      |
        | TRAMP OTHERS                | Comedy      |
        | VALLEY PACKER               | Comedy      |
        | VELVET TERMINATOR           | Comedy      |
        | VERTIGO NORTHWEST           | Comedy      |
        | WISDOM WORKER               | Comedy      |
        | ZORRO ARK                   | Comedy      |
        | ACADEMY DINOSAUR            | Documentary |
        | ADAPTATION HOLES            | Documentary |
        | ARMY FLINTSTONES            | Documentary |
        | BEACH HEARTBREAKERS         | Documentary |
        | BED HIGHBALL                | Documentary |
        | BILL OTHERS                 | Documentary |
        | BONNIE HOLOCAUST            | Documentary |
        | BROTHERHOOD BLANKET         | Documentary |
        | CAUSE DATE                  | Documentary |
        | CHICKEN HELLFIGHTERS        | Documentary |
        | CIDER DESIRE                | Documentary |
        | CLERKS ANGELS               | Documentary |
        | COAST RAINBOW               | Documentary |
        | CUPBOARD SINNERS            | Documentary |
        | DANCING FEVER               | Documentary |
        | DEEP CRUSADE                | Documentary |
        | DELIVERANCE MULHOLLAND      | Documentary |
        | DOZEN LION                  | Documentary |
        | DUFFEL APOCALYPSE           | Documentary |
        | EGG IGBY                    | Documentary |
        | EXPENDABLE STALLION         | Documentary |
        | FRENCH HOLIDAY              | Documentary |
        | HALLOWEEN NUTS              | Documentary |
        | HARDLY ROBBERS              | Documentary |
        | HAWK CHILL                  | Documentary |
        | HEAVYWEIGHTS BEAST          | Documentary |
        | HOMEWARD CIDER              | Documentary |
        | HUNTER ALTER                | Documentary |
        | INDEPENDENCE HOTEL          | Documentary |
        | INTOLERABLE INTENTIONS      | Documentary |
        | KILL BROTHERHOOD            | Documentary |
        | MADISON TRAP                | Documentary |
        | MAJESTIC FLOATS             | Documentary |
        | METAL ARMAGEDDON            | Documentary |
        | MIDSUMMER GROUNDHOG         | Documentary |
        | MIGHTY LUCK                 | Documentary |
        | MOD SECRETARY               | Documentary |
        | MODERN DORADO               | Documentary |
        | NATIONAL STORY              | Documentary |
        | NEWSIES STORY               | Documentary |
        | NORTH TEQUILA               | Documentary |
        | NOTORIOUS REUNION           | Documentary |
        | PACIFIC AMISTAD             | Documentary |
        | PELICAN COMFORTS            | Documentary |
        | POCUS PULP                  | Documentary |
        | PRINCESS GIANT              | Documentary |
        | QUILLS BULL                 | Documentary |
        | RAIDERS ANTITRUST           | Documentary |
        | RAINBOW SHOCK               | Documentary |
        | ROAD ROXANNE                | Documentary |
        | SAGEBRUSH CLUELESS          | Documentary |
        | SECRET GROUNDHOG            | Documentary |
        | SHIP WONDERLAND             | Documentary |
        | SHOW LORD                   | Documentary |
        | SMOKING BARBARELLA          | Documentary |
        | SPOILERS HELLFIGHTERS       | Documentary |
        | STREAK RIDGEMONT            | Documentary |
        | THIN SAGEBRUSH              | Documentary |
        | UNITED PILOT                | Documentary |
        | UNTOUCHABLES SUNRISE        | Documentary |
        | VILLAIN DESPERATE           | Documentary |
        | VIRGINIAN PLUTO             | Documentary |
        | WAGON JAWS                  | Documentary |
        | WARS PLUTO                  | Documentary |
        | WEDDING APOLLO              | Documentary |
        | WIFE TURN                   | Documentary |
        | WRATH MILE                  | Documentary |
        | YOUNG LANGUAGE              | Documentary |
        | APOLLO TEEN                 | Drama       |
        | BEAUTY GREASE               | Drama       |
        | BEETHOVEN EXORCIST          | Drama       |
        | BLADE POLISH                | Drama       |
        | BRIGHT ENCOUNTERS           | Drama       |
        | BUNCH MINDS                 | Drama       |
        | CHILL LUCK                  | Drama       |
        | CHITTY LOCK                 | Drama       |
        | CONEHEADS SMOOCHY           | Drama       |
        | CONFESSIONS MAGUIRE         | Drama       |
        | CONQUERER NUTS              | Drama       |
        | CRAFT OUTFIELD              | Drama       |
        | DALMATIONS SWEDEN           | Drama       |
        | DARKNESS WAR                | Drama       |
        | DECEIVER BETRAYED           | Drama       |
        | DESTINATION JERK            | Drama       |
        | DIARY PANIC                 | Drama       |
        | EDGE KISSING                | Drama       |
        | ENCOUNTERS CURTAIN          | Drama       |
        | GOLDFINGER SENSIBILITY      | Drama       |
        | GONE TROUBLE                | Drama       |
        | GREEDY ROOTS                | Drama       |
        | HANGING DEEP                | Drama       |
        | HAROLD FRENCH               | Drama       |
        | HARRY IDAHO                 | Drama       |
        | HOBBIT ALIEN                | Drama       |
        | HUNCHBACK IMPOSSIBLE        | Drama       |
        | JACKET FRISCO               | Drama       |
        | KWAI HOMEWARD               | Drama       |
        | LEBOWSKI SOLDIERS           | Drama       |
        | LIES TREATMENT              | Drama       |
        | LUCK OPUS                   | Drama       |
        | MOB DUFFEL                  | Drama       |
        | NECKLACE OUTBREAK           | Drama       |
        | NOTTING SPEAKEASY           | Drama       |
        | ORIENT CLOSER               | Drama       |
        | PATHS CONTROL               | Drama       |
        | PAYCHECK WAIT               | Drama       |
        | PITY BOUND                  | Drama       |
        | QUEEN LUKE                  | Drama       |
        | RACER EGG                   | Drama       |
        | REUNION WITCHES             | Drama       |
        | ROCKY WAR                   | Drama       |
        | SAINTS BRIDE                | Drama       |
        | SAVANNAH TOWN               | Drama       |
        | SCORPION APOLLO             | Drama       |
        | SEA VIRGIN                  | Drama       |
        | SEATTLE EXPECATIONS         | Drama       |
        | SHOOTIST SUPERFLY           | Drama       |
        | SLACKER LIAISONS            | Drama       |
        | SOMETHING DUCK              | Drama       |
        | SPICE SORORITY              | Drama       |
        | TENENBAUMS COMMAND          | Drama       |
        | TORQUE BOUND                | Drama       |
        | TRANSLATION SUMMER          | Drama       |
        | TREATMENT JEKYLL            | Drama       |
        | UNFAITHFUL KILL             | Drama       |
        | VIETNAM SMOOCHY             | Drama       |
        | VIRGIN DAISY                | Drama       |
        | WARDROBE PHANTOM            | Drama       |
        | WEST LION                   | Drama       |
        | WITCHES PANIC               | Drama       |
        | AFRICAN EGG                 | Family      |
        | APACHE DIVINE               | Family      |
        | ATLANTIS CAUSE              | Family      |
        | BAKED CLEOPATRA             | Family      |
        | BANG KWAI                   | Family      |
        | BEDAZZLED MARRIED           | Family      |
        | BILKO ANONYMOUS             | Family      |
        | BLANKET BEVERLY             | Family      |
        | BLOOD ARGONAUTS             | Family      |
        | BLUES INSTINCT              | Family      |
        | BRAVEHEART HUMAN            | Family      |
        | CHASING FIGHT               | Family      |
        | CHISUM BEHAVIOR             | Family      |
        | CHOCOLAT HARRY              | Family      |
        | CONFUSED CANDLES            | Family      |
        | CONVERSATION DOWNHILL       | Family      |
        | DATE SPEED                  | Family      |
        | DINOSAUR SECRETARY          | Family      |
        | DUMBO LUST                  | Family      |
        | EARRING INSTINCT            | Family      |
        | EFFECT GLADIATOR            | Family      |
        | FEUD FROGMEN                | Family      |
        | FINDING ANACONDA            | Family      |
        | GABLES METROPOLIS           | Family      |
        | GANDHI KWAI                 | Family      |
        | GLADIATOR WESTWARD          | Family      |
        | GREASE YOUTH                | Family      |
        | HALF OUTFIELD               | Family      |
        | HOCUS FRIDA                 | Family      |
        | HOMICIDE PEACH              | Family      |
        | HOUSE DYNAMITE              | Family      |
        | HUNTING MUSKETEERS          | Family      |
        | INDIAN LOVE                 | Family      |
        | JASON TRAP                  | Family      |
        | JEDI BENEATH                | Family      |
        | KILLER INNOCENT             | Family      |
        | KING EVOLUTION              | Family      |
        | LOLITA WORLD                | Family      |
        | LOUISIANA HARRY             | Family      |
        | MAGUIRE APACHE              | Family      |
        | MANCHURIAN CURTAIN          | Family      |
        | MOVIE SHAKESPEARE           | Family      |
        | MUSIC BOONDOCK              | Family      |
        | NATURAL STOCK               | Family      |
        | NETWORK PEAK                | Family      |
        | ODDS BOOGIE                 | Family      |
        | OPPOSITE NECKLACE           | Family      |
        | PILOT HOOSIERS              | Family      |
        | PITTSBURGH HUNCHBACK        | Family      |
        | PRESIDENT BANG              | Family      |
        | PRIX UNDEFEATED             | Family      |
        | RAGE GAMES                  | Family      |
        | RANGE MOONWALKER            | Family      |
        | REMEMBER DIARY              | Family      |
        | RESURRECTION SILVERADO      | Family      |
        | ROBBERY BRIGHT              | Family      |
        | RUSH GOODFELLAS             | Family      |
        | SECRETS PARADISE            | Family      |
        | SENSIBILITY REAR            | Family      |
        | SIEGE MADRE                 | Family      |
        | SLUMS DUCK                  | Family      |
        | SOUP WISDOM                 | Family      |
        | SPARTACUS CHEAPER           | Family      |
        | SPINAL ROCKY                | Family      |
        | SPLASH GUMP                 | Family      |
        | SUNSET RACER                | Family      |
        | SUPER WYOMING               | Family      |
        | VIRTUAL SPOILERS            | Family      |
        | WILLOW TRACY                | Family      |
        | AGENT TRUMAN                | Foreign     |
        | ALAMO VIDEOTAPE             | Foreign     |
        | ALIEN CENTER                | Foreign     |
        | ALLEY EVOLUTION             | Foreign     |
        | BABY HALL                   | Foreign     |
        | BALLROOM MOCKINGBIRD        | Foreign     |
        | BROOKLYN DESERT             | Foreign     |
        | BUGSY SONG                  | Foreign     |
        | CALENDAR GUNFIGHT           | Foreign     |
        | CATCH AMISTAD               | Foreign     |
        | CHOCOLATE DUCK              | Foreign     |
        | COMMAND DARLING             | Foreign     |
        | COWBOY DOOM                 | Foreign     |
        | CROSSING DIVORCE            | Foreign     |
        | CRYSTAL BREAKING            | Foreign     |
        | CYCLONE FAMILY              | Foreign     |
        | DANGEROUS UPTOWN            | Foreign     |
        | DOUBTFIRE LABYRINTH         | Foreign     |
        | EVERYONE CRAFT              | Foreign     |
        | FICTION CHRISTMAS           | Foreign     |
        | FRIDA SLIPPER               | Foreign     |
        | GENTLEMEN STAGE             | Foreign     |
        | GRAPES FURY                 | Foreign     |
        | GREEK EVERYONE              | Foreign     |
        | HAPPINESS UNITED            | Foreign     |
        | HELLFIGHTERS SIERRA         | Foreign     |
        | HIGHBALL POTTER             | Foreign     |
        | HOLIDAY GAMES               | Foreign     |
        | HOOSIERS BIRDCAGE           | Foreign     |
        | HOTEL HAPPINESS             | Foreign     |
        | HUNGER ROOF                 | Foreign     |
        | ILLUSION AMELIE             | Foreign     |
        | IMPOSSIBLE PREJUDICE        | Foreign     |
        | INFORMER DOUBLE             | Foreign     |
        | INNOCENT USUAL              | Foreign     |
        | INTRIGUE WORST              | Foreign     |
        | JET NEIGHBORS               | Foreign     |
        | KANE EXORCIST               | Foreign     |
        | KISS GLORY                  | Foreign     |
        | LOSE INCH                   | Foreign     |
        | LOST BIRD                   | Foreign     |
        | MADNESS ATTACKS             | Foreign     |
        | MATRIX SNOWMAN              | Foreign     |
        | MAUDE MOD                   | Foreign     |
        | MEET CHOCOLATE              | Foreign     |
        | MIXED DOORS                 | Foreign     |
        | MOON BUNCH                  | Foreign     |
        | MULHOLLAND BEAST            | Foreign     |
        | MUPPET MILE                 | Foreign     |
        | NEWTON LABYRINTH            | Foreign     |
        | OPUS ICE                    | Foreign     |
        | ORANGE GRAPES               | Foreign     |
        | PAST SUICIDES               | Foreign     |
        | PEARL DESTINY               | Foreign     |
        | PET HAUNTING                | Foreign     |
        | POLLOCK DELIVERANCE         | Foreign     |
        | PURPLE MOVIE                | Foreign     |
        | RESERVOIR ADAPTATION        | Foreign     |
        | ROCKETEER MOTHER            | Foreign     |
        | SCHOOL JACKET               | Foreign     |
        | SCISSORHANDS SLUMS          | Foreign     |
        | SHOCK CABIN                 | Foreign     |
        | SHREK LICENSE               | Foreign     |
        | SORORITY QUEEN              | Foreign     |
        | STEPMOM DREAM               | Foreign     |
        | TOWN ARK                    | Foreign     |
        | TRAP GUYS                   | Foreign     |
        | USUAL UNTOUCHABLES          | Foreign     |
        | VISION TORQUE               | Foreign     |
        | WAR NOTTING                 | Foreign     |
        | WASH HEAVENLY               | Foreign     |
        | WHALE BIKINI                | Foreign     |
        | WONDERFUL DROP              | Foreign     |
        | AUTUMN CROW                 | Games       |
        | BULWORTH COMMANDMENTS       | Games       |
        | CANDLES GRAPES              | Games       |
        | CHICAGO NORTH               | Games       |
        | CREATURES SHAKESPEARE       | Games       |
        | CURTAIN VIDEOTAPE           | Games       |
        | DARLING BREAKING            | Games       |
        | DAWN POND                   | Games       |
        | DAZED PUNK                  | Games       |
        | DETAILS PACKER              | Games       |
        | DIRTY ACE                   | Games       |
        | DIVINE RESURRECTION         | Games       |
        | DWARFS ALTER                | Games       |
        | ENCINO ELF                  | Games       |
        | FANTASIA PARK               | Games       |
        | FEATHERS METAL              | Games       |
        | FEVER EMPIRE                | Games       |
        | FIRE WOLVES                 | Games       |
        | FORWARD TEMPLE              | Games       |
        | GATHERING CALENDAR          | Games       |
        | GLORY TRACY                 | Games       |
        | GRINCH MASSAGE              | Games       |
        | GRIT CLOCKWORK              | Games       |
        | GUN BONNIE                  | Games       |
        | HAUNTING PIANIST            | Games       |
        | HEAD STRANGER               | Games       |
        | HUMAN GRAFFITI              | Games       |
        | ICE CROSSING                | Games       |
        | JERICHO MULAN               | Games       |
        | LADYBUGS ARMAGEDDON         | Games       |
        | LAMBS CINCINATTI            | Games       |
        | MADRE GABLES                | Games       |
        | MALTESE HOPE                | Games       |
        | MARS ROMAN                  | Games       |
        | MASSACRE USUAL              | Games       |
        | MONSOON CAUSE               | Games       |
        | MOONSHINE CABIN             | Games       |
        | MOONWALKER FOOL             | Games       |
        | NAME DETECTIVE              | Games       |
        | NIGHTMARE CHILL             | Games       |
        | OUTBREAK DIVINE             | Games       |
        | PANKY SUBMARINE             | Games       |
        | PIZZA JUMANJI               | Games       |
        | PRIVATE DROP                | Games       |
        | PSYCHO SHRUNK               | Games       |
        | ROOF CHAMPION               | Games       |
        | ROUGE SQUAD                 | Games       |
        | ROXANNE REBEL               | Games       |
        | SASSY PACKER                | Games       |
        | SEVEN SWARM                 | Games       |
        | SLEUTH ORIENT               | Games       |
        | SPY MILE                    | Games       |
        | STAMPEDE DISTURBING         | Games       |
        | STATE WASTELAND             | Games       |
        | SUIT WALLS                  | Games       |
        | TYCOON GATHERING            | Games       |
        | VANILLA DAY                 | Games       |
        | VIDEOTAPE ARSENIC           | Games       |
        | VOLCANO TEXAS               | Games       |
        | WANDA CHAMBER               | Games       |
        | WIND PHANTOM                | Games       |
        | ACE GOLDFINGER              | Horror      |
        | AFFAIR PREJUDICE            | Horror      |
        | AIRPORT POLLOCK             | Horror      |
        | ALABAMA DEVIL               | Horror      |
        | ALI FOREVER                 | Horror      |
        | ANALYZE HOOSIERS            | Horror      |
        | ANYTHING SAVANNAH           | Horror      |
        | ARABIA DOGMA                | Horror      |
        | ARACHNOPHOBIA ROLLERCOASTER | Horror      |
        | BEHAVIOR RUNAWAY            | Horror      |
        | BOWFINGER GABLES            | Horror      |
        | CARRIE BUNCH                | Horror      |
        | COMMANDMENTS EXPRESS        | Horror      |
        | DESERT POSEIDON             | Horror      |
        | DRUMS DYNAMITE              | Horror      |
        | EGYPT TENENBAUMS            | Horror      |
        | ELEPHANT TROJAN             | Horror      |
        | FAMILY SWEET                | Horror      |
        | FIDELITY DEVIL              | Horror      |
        | FREDDY STORM                | Horror      |
        | GASLIGHT CRUSADE            | Horror      |
        | HIGH ENCINO                 | Horror      |
        | JAPANESE RUN                | Horror      |
        | KARATE MOON                 | Horror      |
        | KENTUCKIAN GIANT            | Horror      |
        | LADY STAGE                  | Horror      |
        | LOLA AGENT                  | Horror      |
        | LOVE SUICIDES               | Horror      |
        | MONTEREY LABYRINTH          | Horror      |
        | MOTIONS DETAILS             | Horror      |
        | PANIC CLUB                  | Horror      |
        | PARIS WEEKEND               | Horror      |
        | PATTON INTERVIEW            | Horror      |
        | PULP BEVERLY                | Horror      |
        | REAP UNFAITHFUL             | Horror      |
        | REEF SALUTE                 | Horror      |
        | ROCK INSTINCT               | Horror      |
        | ROLLERCOASTER BRINGING      | Horror      |
        | RULES HUMAN                 | Horror      |
        | SIMON NORTH                 | Horror      |
        | SINNERS ATLANTIS            | Horror      |
        | SLEEPING SUSPECTS           | Horror      |
        | SPIRIT FLINTSTONES          | Horror      |
        | STRANGERS GRAFFITI          | Horror      |
        | STREETCAR INTENTIONS        | Horror      |
        | SWARM GOLD                  | Horror      |
        | TARZAN VIDEOTAPE            | Horror      |
        | TEMPLE ATTRACTION           | Horror      |
        | TEXAS WATCH                 | Horror      |
        | TRAIN BUNCH                 | Horror      |
        | TREASURE COMMAND            | Horror      |
        | UNDEFEATED DALMATIONS       | Horror      |
        | WATERSHIP FRONTIER          | Horror      |
        | WORLD LEATHERNECKS          | Horror      |
        | YENTL IDAHO                 | Horror      |
        | ZHIVAGO CORE                | Horror      |
        | ALASKA PHANTOM              | Music       |
        | ALONE TRIP                  | Music       |
        | AMELIE HELLFIGHTERS         | Music       |
        | BALLOON HOMEWARD            | Music       |
        | BANGER PINOCCHIO            | Music       |
        | BIRCH ANTITRUST             | Music       |
        | BIRDCAGE CASPER             | Music       |
        | BOOGIE AMELIE               | Music       |
        | CHAMBER ITALIAN             | Music       |
        | CLONES PINOCCHIO            | Music       |
        | CLUE GRAIL                  | Music       |
        | CONFIDENTIAL INTERVIEW      | Music       |
        | DEER VIRGINIAN              | Music       |
        | DORADO NOTTING              | Music       |
        | DRIVING POLISH              | Music       |
        | ELF MURDER                  | Music       |
        | ENEMY ODDS                  | Music       |
        | FREAKY POCUS                | Music       |
        | GO PURPLE                   | Music       |
        | GREATEST NORTH              | Music       |
        | GROSSE WONDERFUL            | Music       |
        | HANOVER GALAXY              | Music       |
        | HEAVENLY GUN                | Music       |
        | HOME PITY                   | Music       |
        | IMPACT ALADDIN              | Music       |
        | INSIDER ARIZONA             | Music       |
        | JAWBREAKER BROOKLYN         | Music       |
        | LEGEND JEDI                 | Music       |
        | LUCKY FLYING                | Music       |
        | MASKED BUBBLE               | Music       |
        | MINORITY KISS               | Music       |
        | MONSTER SPARTACUS           | Music       |
        | OLEANDER CLUE               | Music       |
        | OUTFIELD MASSACRE           | Music       |
        | PERSONAL LADYBUGS           | Music       |
        | REBEL AIRPORT               | Music       |
        | REDS POCUS                  | Music       |
        | ROMAN PUNK                  | Music       |
        | RUNNER MADIGAN              | Music       |
        | SCALAWAG DUCK               | Music       |
        | SILENCE KANE                | Music       |
        | SONG HEDWIG                 | Music       |
        | TAXI KICK                   | Music       |
        | TELEGRAPH VOYAGE            | Music       |
        | TERMINATOR CLUB             | Music       |
        | UNCUT SUICIDES              | Music       |
        | VANISHING ROCKY             | Music       |
        | WIZARD COLDBLOODED          | Music       |
        | WON DARES                   | Music       |
        | WORDS HUNTER                | Music       |
        | YOUTH KICK                  | Music       |
        | AMISTAD MIDSUMMER           | New         |
        | ANGELS LIFE                 | New         |
        | APOCALYPSE FLAMINGOS        | New         |
        | ATTRACTION NEWTON           | New         |
        | BIRDS PERDITION             | New         |
        | BOULEVARD MOB               | New         |
        | BRANNIGAN SUNRISE           | New         |
        | BREAKFAST GOLDFINGER        | New         |
        | BREAKING HOME               | New         |
        | BUTCH PANTHER               | New         |
        | BUTTERFLY CHOCOLAT          | New         |
        | CHAPLIN LICENSE             | New         |
        | CHINATOWN GLADIATOR         | New         |
        | CLEOPATRA DEVIL             | New         |
        | CLYDE THEORY                | New         |
        | DAY UNFAITHFUL              | New         |
        | DESTINY SATURDAY            | New         |
        | DRAGONFLY STRANGERS         | New         |
        | EAGLES PANKY                | New         |
        | EARTH VISION                | New         |
        | ENDING CROWDS               | New         |
        | EVE RESURRECTION            | New         |
        | FATAL HAUNTED               | New         |
        | FLAMINGOS CONNECTICUT       | New         |
        | FLASH WARS                  | New         |
        | FRONTIER CABIN              | New         |
        | GODFATHER DIARY             | New         |
        | HOURS RAGE                  | New         |
        | IDAHO LOVE                  | New         |
        | INTERVIEW LIAISONS          | New         |
        | JEKYLL FROGMEN              | New         |
        | JUMANJI BLADE               | New         |
        | JUNGLE CLOSER               | New         |
        | LOVERBOY ATTACKS            | New         |
        | MAIDEN HOME                 | New         |
        | MANNEQUIN WORST             | New         |
        | MASK PEACH                  | New         |
        | MINE TITANS                 | New         |
        | MONEY HAROLD                | New         |
        | NUTS TIES                   | New         |
        | OKLAHOMA JUMANJI            | New         |
        | PHANTOM GLORY               | New         |
        | PIANIST OUTFIELD            | New         |
        | PLATOON INSTINCT            | New         |
        | PLUTO OLEANDER              | New         |
        | REDEMPTION COMFORTS         | New         |
        | RIDGEMONT SUBMARINE         | New         |
        | RUN PACIFIC                 | New         |
        | RUNAWAY TENENBAUMS          | New         |
        | SALUTE APOLLO               | New         |
        | SAMURAI LION                | New         |
        | SLEEPY JAPANESE             | New         |
        | STING PERSONAL              | New         |
        | STOCK GLASS                 | New         |
        | TROOPERS METAL              | New         |
        | UNBREAKABLE KARATE          | New         |
        | VAMPIRE WHALE               | New         |
        | VANISHED GARDEN             | New         |
        | VARSITY TRIP                | New         |
        | VOICE PEACH                 | New         |
        | WAKE JAWS                   | New         |
        | WILD APOLLO                 | New         |
        | WYOMING STORM               | New         |
        | ANNIE IDENTITY              | Sci-Fi      |
        | ARMAGEDDON LOST             | Sci-Fi      |
        | ATTACKS HATE                | Sci-Fi      |
        | BADMAN DAWN                 | Sci-Fi      |
        | BARBARELLA STREETCAR        | Sci-Fi      |
        | BEVERLY OUTLAW              | Sci-Fi      |
        | BINGO TALENTED              | Sci-Fi      |
        | BLINDNESS GUN               | Sci-Fi      |
        | CAMELOT VACATION            | Sci-Fi      |
        | CHAINSAW UPTOWN             | Sci-Fi      |
        | CHARADE DUFFEL              | Sci-Fi      |
        | CHARIOTS CONSPIRACY         | Sci-Fi      |
        | CHEAPER CLYDE               | Sci-Fi      |
        | CINCINATTI WHISPERER        | Sci-Fi      |
        | CITIZEN SHREK               | Sci-Fi      |
        | COLDBLOODED DARLING         | Sci-Fi      |
        | CONNECTICUT TRAMP           | Sci-Fi      |
        | CROWDS TELEMARK             | Sci-Fi      |
        | DAISY MENAGERIE             | Sci-Fi      |
        | DISTURBING SCARFACE         | Sci-Fi      |
        | DIVIDE MONSTER              | Sci-Fi      |
        | DOLLS RAGE                  | Sci-Fi      |
        | ENGLISH BULWORTH            | Sci-Fi      |
        | EXPRESS LONELY              | Sci-Fi      |
        | EYES DRIVING                | Sci-Fi      |
        | FIDDLER LOST                | Sci-Fi      |
        | FISH OPUS                   | Sci-Fi      |
        | FRISCO FORREST              | Sci-Fi      |
        | GARDEN ISLAND               | Sci-Fi      |
        | GOLDMINE TYCOON             | Sci-Fi      |
        | GOODFELLAS SALUTE           | Sci-Fi      |
        | GRAFFITI LOVE               | Sci-Fi      |
        | GUYS FALCON                 | Sci-Fi      |
        | HAMLET WISDOM               | Sci-Fi      |
        | HANKY OCTOBER               | Sci-Fi      |
        | HOLLOW JEOPARDY             | Sci-Fi      |
        | IDENTITY LOVER              | Sci-Fi      |
        | LICENSE WEEKEND             | Sci-Fi      |
        | MARRIED GO                  | Sci-Fi      |
        | METROPOLIS COMA             | Sci-Fi      |
        | MOURNING PURPLE             | Sci-Fi      |
        | NEMO CAMPUS                 | Sci-Fi      |
        | NONE SPIKING                | Sci-Fi      |
        | OPEN AFRICAN                | Sci-Fi      |
        | PANTHER REDS                | Sci-Fi      |
        | RAGING AIRPLANE             | Sci-Fi      |
        | RANDOM GO                   | Sci-Fi      |
        | REIGN GENTLEMEN             | Sci-Fi      |
        | SILVERADO GOLDFINGER        | Sci-Fi      |
        | SOLDIERS EVOLUTION          | Sci-Fi      |
        | SPIRITED CASUALTIES         | Sci-Fi      |
        | STALLION SUNDANCE           | Sci-Fi      |
        | SUICIDES SILENCE            | Sci-Fi      |
        | SUN CONFESSIONS             | Sci-Fi      |
        | TITANS JERK                 | Sci-Fi      |
        | TROJAN TOMORROW             | Sci-Fi      |
        | UNFORGIVEN ZOOLANDER        | Sci-Fi      |
        | VACATION BOONDOCK           | Sci-Fi      |
        | WEEKEND PERSONAL            | Sci-Fi      |
        | WHISPERER GIANT             | Sci-Fi      |
        | WONDERLAND CHRISTMAS        | Sci-Fi      |
        | ALADDIN CALENDAR            | Sports      |
        | ANONYMOUS HUMAN             | Sports      |
        | ARTIST COLDBLOODED          | Sports      |
        | BUBBLE GROSSE               | Sports      |
        | CALIFORNIA BIRDS            | Sports      |
        | CARIBBEAN LIBERTY           | Sports      |
        | CHANCE RESURRECTION         | Sports      |
        | CONGENIALITY QUEST          | Sports      |
        | CRANES RESERVOIR            | Sports      |
        | CRUSADE HONEY               | Sports      |
        | DIVORCE SHINING             | Sports      |
        | DRIVER ANNIE                | Sports      |
        | DROP WATERFRONT             | Sports      |
        | DUDE BLINDNESS              | Sports      |
        | DURHAM PANKY                | Sports      |
        | ELIZABETH SHANE             | Sports      |
        | EVOLUTION ALTER             | Sports      |
        | EXORCIST STING              | Sports      |
        | FLATLINERS KILLER           | Sports      |
        | FLIGHT LIES                 | Sports      |
        | GLEAMING JAWBREAKER         | Sports      |
        | GRACELAND DYNAMITE          | Sports      |
        | GROOVE FICTION              | Sports      |
        | GUNFIGHTER MUSSOLINI        | Sports      |
        | HOLES BRANNIGAN             | Sports      |
        | HONEY TIES                  | Sports      |
        | HYSTERICAL GRAIL            | Sports      |
        | IMAGE PRINCESS              | Sports      |
        | INSTINCT AIRPORT            | Sports      |
        | JADE BUNCH                  | Sports      |
        | JOON NORTHWEST              | Sports      |
        | KRAMER CHOCOLATE            | Sports      |
        | LESSON CLEOPATRA            | Sports      |
        | LIBERTY MAGNIFICENT         | Sports      |
        | LOSER HUSTLER               | Sports      |
        | MERMAID INSECTS             | Sports      |
        | MILE MULAN                  | Sports      |
        | MOSQUITO ARMAGEDDON         | Sports      |
        | MOTHER OLEANDER             | Sports      |
        | MUMMY CREATURES             | Sports      |
        | MUSSOLINI SPOILERS          | Sports      |
        | NEIGHBORS CHARADE           | Sports      |
        | NORTHWEST POLISH            | Sports      |
        | NOVOCAINE FLIGHT            | Sports      |
        | PEACH INNOCENT              | Sports      |
        | PEAK FOREVER                | Sports      |
        | PERDITION FARGO             | Sports      |
        | PHILADELPHIA WIFE           | Sports      |
        | PICKUP DRIVING              | Sports      |
        | PIRATES ROXANNE             | Sports      |
        | POSEIDON FOREVER            | Sports      |
        | RECORDS ZORRO               | Sports      |
        | RIDER CADDYSHACK            | Sports      |
        | RIVER OUTLAW                | Sports      |
        | ROSES TREASURE              | Sports      |
        | SATISFACTION CONFIDENTIAL   | Sports      |
        | SATURDAY LAMBS              | Sports      |
        | SEABISCUIT PUNK             | Sports      |
        | SECRETARY ROUGE             | Sports      |
        | SENSE GREEK                 | Sports      |
        | SHAKESPEARE SADDLE          | Sports      |
        | SIERRA DIVIDE               | Sports      |
        | SLIPPER FIDELITY            | Sports      |
        | SMOOCHY CONTROL             | Sports      |
        | SQUAD FISH                  | Sports      |
        | STAR OPERATION              | Sports      |
        | STEERS ARMAGEDDON           | Sports      |
        | STRAIGHT HOURS              | Sports      |
        | TALENTED HOMICIDE           | Sports      |
        | TIGHTS DAWN                 | Sports      |
        | TOURIST PELICAN             | Sports      |
        | TRADING PINOCCHIO           | Sports      |
        | TUXEDO MILE                 | Sports      |
        | VICTORY ACADEMY             | Sports      |
        | ARSENIC INDEPENDENCE        | Travel      |
        | BASIC EASY                  | Travel      |
        | BIRD INDEPENDENCE           | Travel      |
        | BOILED DARES                | Travel      |
        | BOONDOCK BALLROOM           | Travel      |
        | BORN SPINAL                 | Travel      |
        | BUCKET BROTHERHOOD          | Travel      |
        | CASABLANCA SUPER            | Travel      |
        | CASSIDY WYOMING             | Travel      |
        | COMA HEAD                   | Travel      |
        | COMFORTS RUSH               | Travel      |
        | CONTACT ANONYMOUS           | Travel      |
        | DESPERATE TRAINSPOTTING     | Travel      |
        | DISCIPLE MOTHER             | Travel      |
        | DRUMLINE CYCLONE            | Travel      |
        | ENOUGH RAGING               | Travel      |
        | ESCAPE METROPOLIS           | Travel      |
        | EXPECATIONS NATURAL         | Travel      |
        | FACTORY DRAGON              | Travel      |
        | FELLOWSHIP AUTUMN           | Travel      |
        | FROGMEN BREAKING            | Travel      |
        | FUGITIVE MAGUIRE            | Travel      |
        | GAMES BOWFINGER             | Travel      |
        | GUMP DATE                   | Travel      |
        | HAUNTED ANTITRUST           | Travel      |
        | HORROR REIGN                | Travel      |
        | IGBY MAKER                  | Travel      |
        | ITALIAN AFRICAN             | Travel      |
        | KICK SAVANNAH               | Travel      |
        | LEATHERNECKS DWARFS         | Travel      |
        | LIAISONS SWEET              | Travel      |
        | LOCK REAR                   | Travel      |
        | MADIGAN DORADO              | Travel      |
        | MOULIN WAKE                 | Travel      |
        | MUSCLE BRIGHT               | Travel      |
        | ORDER BETRAYED              | Travel      |
        | OTHERS SOUP                 | Travel      |
        | OUTLAW HANKY                | Travel      |
        | PAPI NECKLACE               | Travel      |
        | SHANE DARKNESS              | Travel      |
        | SHANGHAI TYCOON             | Travel      |
        | SHAWSHANK BUBBLE            | Travel      |
        | SHINING ROSES               | Travel      |
        | SMILE EARRING               | Travel      |
        | SPEED SUIT                  | Travel      |
        | STONE FIRE                  | Travel      |
        | SUPERFLY TRIP               | Travel      |
        | SWEET BROTHERHOOD           | Travel      |
        | TEEN APOLLO                 | Travel      |
        | TOMATOES HELLFIGHTERS       | Travel      |
        | TRAFFIC HOBBIT              | Travel      |
        | TROUBLE DATE                | Travel      |
        | VALENTINE VANISHING         | Travel      |
        | WINDOW SIDE                 | Travel      |
        | WOLVES DESIRE               | Travel      |
        | WORKER TARZAN               | Travel      |
        | WORKING MICROCOSMOS         | Travel      |
        +-----------------------------+-------------+
        1000 rows in set (0,01 sec)
        **/

        -- Mostrar el country, la ciudad y dirección de cada miembro del staff.
        /**
        La tablka "staff" ha petado.
        **/

        -- Mostrar el country, la ciudad y dirección de cada customer.
        
        -- Numero de películas de cada rating
        select COUNT(film_id) AS num_films, rating from film GROUP BY rating ORDER BY rating;
        /**
        +-----------+--------+
        | num_films | rating |
        +-----------+--------+
        |       178 | G      |
        |       194 | PG     |
        |       223 | PG-13  |
        |       195 | R      |
        |       210 | NC-17  |
        +-----------+--------+
        5 rows in set (0,00 sec)
        **/

        -- Cuantas películas ha realizado el actor ED CHASE.
        select a.first_name, a.last_name, COUNT(f.film_id) AS num_films from actor a JOIN film_actor fa ON a.actor_id = fa.actor_id JOIN film f on f.film_id = fa.film_id WHERE a.first_name = 'ED' and a.last_name = 'CHASE';
        /**
        +------------+-----------+-----------+
        | first_name | last_name | num_films |
        +------------+-----------+-----------+
        | ED         | CHASE     |        22 |
        +------------+-----------+-----------+
        1 row in set (0,00 sec)
        **/
        
        -- Media de duración de las películas cada categoría.
        select c.name, ROUND(AVG(f.length),2) AS avg_film_category from film f JOIN film_category fc ON f.film_id = fc.film_id JOIN category c ON c.category_id = fc.category_id GROUP BY c.name ORDER BY c.name;
        /**
        +-------------+-------------------+
        | name        | avg_film_category |
        +-------------+-------------------+
        | Action      |            111.61 |
        | Animation   |            111.02 |
        | Children    |            109.80 |
        | Classics    |            111.67 |
        | Comedy      |            115.83 |
        | Documentary |            108.75 |
        | Drama       |            120.84 |
        | Family      |            114.78 |
        | Foreign     |            121.70 |
        | Games       |            127.84 |
        | Horror      |            112.48 |
        | Music       |            113.65 |
        | New         |            111.13 |
        | Sci-Fi      |            108.20 |
        | Sports      |            128.20 |
        | Travel      |            113.32 |
        +-------------+-------------------+
        16 rows in set (0,01 sec)
        **/


-- A continuación se muestran algunas de las vistas que se han utilizado en la base de datos Sakila:
CREATE VIEW customer_list AS
SELECT 
  cu.customer_id AS ID, 
    CONCAT(cu.first_name, _utf8mb4' ', cu.last_name) AS name, 
    a.address AS address, 
    a.postal_code AS `zip code`,
  a.phone AS phone, 
    city.city AS city, 
    country.country AS country, 
    IF(cu.active, _utf8mb4'active',_utf8mb4'') AS notes, 
    cu.store_id AS SID
FROM 
  customer AS cu JOIN address AS a 
    ON cu.address_id = a.address_id 
    JOIN city 
    ON a.city_id = city.city_id
  JOIN country 
    ON city.country_id = country.country_id;
--
-- View structure for view `film_list`
--

CREATE VIEW film_list AS
SELECT 
  film.film_id AS FID, 
    film.title AS title, 
    film.description AS description, 
    category.name AS category, 
    film.rental_rate AS price,
  film.length AS length, 
    film.rating AS rating, 
    GROUP_CONCAT(CONCAT(actor.first_name, _utf8mb4' ', actor.last_name) SEPARATOR ', ') AS actors
FROM 
  category LEFT JOIN film_category 
    ON category.category_id = film_category.category_id 
    LEFT JOIN film 
    ON film_category.film_id = film.film_id
  JOIN film_actor 
    ON film.film_id = film_actor.film_id
  JOIN actor 
    ON film_actor.actor_id = actor.actor_id
GROUP BY film.film_id, category.name;

-- Conociendo es estos momentos ya la BBDD, se pide:

    -- Muestra el resultado de la consulta de las vistas que se proporcionan.
      -- 1. Vista 1:
      select * from customer_list;
      /**
      +-----+-----------------------+----------------------------------------+----------+--------------+----------------------------+---------------------------------------+--------+-----+
        | ID  | name                  | address                                | zip code | phone        | city                       | country                               | notes  | SID |
        +-----+-----------------------+----------------------------------------+----------+--------------+----------------------------+---------------------------------------+--------+-----+
        | 218 | VERA MCCOY            | 1168 Najafabad Parkway                 | 40301    | 886649065861 | Kabul                      | Afghanistan                           | active |   1 |
        | 441 | MARIO CHEATHAM        | 1924 Shimonoseki Drive                 | 52625    | 406784385440 | Batna                      | Algeria                               | active |   1 |
        |  69 | JUDY GRAY             | 1031 Daugavpils Parkway                | 59025    | 107137400143 | Béchar                     | Algeria                               | active |   2 |
        | 176 | JUNE CARROLL          | 757 Rustenburg Avenue                  | 89668    | 506134035434 | Skikda                     | Algeria                               | active |   1 |
        | 320 | ANTHONY SCHWAB        | 1892 Nabereznyje Tšelny Lane           | 28396    | 478229987054 | Tafuna                     | American Samoa                        | active |   2 |
        | 528 | CLAUDE HERZOG         | 486 Ondo Parkway                       | 35202    | 105882218332 | Benguela                   | Angola                                | active |   1 |
        | 383 | MARTIN BALES          | 368 Huánuco Boulevard                  | 17165    | 106439158941 | Namibe                     | Angola                                | active |   1 |
        | 381 | BOBBY BOUDREAU        | 1368 Maracaíbo Boulevard               | 32716    | 934352415130 | South Hill                 | Anguilla                              | active |   2 |
        | 359 | WILLIE MARKHAM        | 1623 Kingstown Drive                   | 91299    | 296394569728 | Almirante Brown            | Argentina                             | active |   2 |
        | 560 | JORDAN ARCHULETA      | 1229 Varanasi (Benares) Manor          | 40195    | 817740355461 | Avellaneda                 | Argentina                             | active |   1 |
        | 322 | JASON MORRISSEY       | 1427 A Coruña (La Coruña) Place        | 85799    | 972574862516 | Bahía Blanca               | Argentina                             | active |   1 |
        |  24 | KIMBERLY LEE          | 96 Tafuna Way                          | 99865    | 934730187245 | Córdoba                    | Argentina                             | active |   2 |
        | 445 | MICHEAL FORMAN        | 203 Tambaram Street                    | 73942    | 411549550611 | Escobar                    | Argentina                             | active |   1 |
        | 530 | DARRYL ASHCRAFT       | 166 Jinchang Street                    | 86760    | 717566026669 | Ezeiza                     | Argentina                             | active |   2 |
        |  89 | JULIA FLORES          | 1926 El Alto Avenue                    | 75543    | 846225459260 | La Plata                   | Argentina                             | active |   1 |
        | 107 | FLORENCE WOODS        | 1532 Dzerzinsk Way                     | 9599     | 330838016880 | Merlo                      | Argentina                             | active |   1 |
        | 585 | PERRY SWAFFORD        | 773 Dallas Manor                       | 12664    | 914466027044 | Quilmes                    | Argentina                             | active |   1 |
        | 243 | LYDIA BURKE           | 1483 Pathankot Street                  | 37288    | 686015532180 | San Miguel de Tucumán      | Argentina                             | active |   1 |
        | 331 | ERIC ROBERT           | 430 Kumbakonam Drive                   | 28814    | 105470691550 | Santa Fé                   | Argentina                             | active |   1 |
        | 405 | LEONARD SCHOFIELD     | 88 Nagaon Manor                        | 86868    | 779461480495 | Tandil                     | Argentina                             | active |   1 |
        | 219 | WILLIE HOWELL         | 1244 Allappuzha (Alleppey) Place       | 20657    | 991802825778 | Vicente López              | Argentina                             | active |   2 |
        |  41 | STEPHANIE MITCHELL    | 42 Brindisi Place                      | 16744    | 42384721397  | Yerevan                    | Armenia                               | active |   1 |
        | 173 | AUDREY RAY            | 1010 Klerksdorp Way                    | 6802     | 493008546874 | Graz                       | Austria                               | active |   1 |
        | 159 | JILL HAWKINS          | 1440 Compton Place                     | 81037    | 931059836497 | Linz                       | Austria                               | active |   1 |
        | 266 | NORA HERRERA          | 1587 Loja Manor                        | 5410     | 621625204422 | Salzburg                   | Austria                               | active |   2 |
        | 333 | ANDREW PURDY          | 431 Székesfehérvár Avenue              | 57828    | 119501405123 | Baku                       | Azerbaijan                            | active |   2 |
        | 334 | RAYMOND MCWHORTER     | 503 Sogamoso Loop                      | 49812    | 834626715837 | Sumqayit                   | Azerbaijan                            | active |   2 |
        | 590 | SETH HANNON           | 1759 Niznekamsk Avenue                 | 39414    | 864392582257 | al-Manama                  | Bahrain                               | active |   2 |
        | 332 | STEPHEN QUALLS        | 1838 Tabriz Lane                       | 1195     | 38988715447  | Dhaka                      | Bangladesh                            | active |   1 |
        | 329 | FRANK WAGGONER        | 1816 Bydgoszcz Loop                    | 64308    | 965273813662 | Jamalpur                   | Bangladesh                            | active |   2 |
        |  21 | MICHELLE CLARK        | 262 A Coruña (La Coruña) Parkway       | 34418    | 892775750063 | Tangail                    | Bangladesh                            | active |   1 |
        | 527 | CORY MEEHAN           | 556 Asunción Way                       | 35364    | 338244023543 | Mogiljov                   | Belarus                               | active |   1 |
        | 144 | CLARA SHAW            | 1027 Songkhla Manor                    | 30861    | 563660187896 | Molodetšno                 | Belarus                               | active |   1 |
        | 455 | JON WILES             | 659 Gatineau Boulevard                 | 28587    | 205524798287 | El Alto                    | Bolivia                               | active |   2 |
        | 431 | JOEL FRANCISCO        | 287 Cuautla Boulevard                  | 72736    | 82619513349  | Sucre                      | Bolivia                               | active |   2 |
        | 551 | CLAYTON BARBEE        | 1407 Pachuca de Soto Place             | 26284    | 380077794770 | Alvorada                   | Brazil                                | active |   2 |
        | 307 | JOSEPH JOY            | 1354 Siegen Street                     | 80184    | 573441801529 | Angra dos Reis             | Brazil                                | active |   2 |
        | 229 | TAMARA NGUYEN         | 356 Olomouc Manor                      | 93323    | 22326410776  | Anápolis                   | Brazil                                | active |   1 |
        | 216 | NATALIE MEYER         | 1201 Qomsheh Manor                     | 21464    | 873492228462 | Aparecida de Goiânia       | Brazil                                | active |   1 |
        |  77 | JANE BENNETT          | 1692 Ede Loop                          | 9223     | 918711376618 | Araçatuba                  | Brazil                                | active |   2 |
        | 398 | ANTONIO MEEK          | 1190 0 Place                           | 10417    | 841876514789 | Bagé                       | Brazil                                | active |   1 |
        | 362 | NICHOLAS BARFIELD     | 1163 London Parkway                    | 6066     | 675120358494 | Belém                      | Brazil                                | active |   1 |
        | 206 | TERRI VASQUEZ         | 1304 ´s-Hertogenbosch Way              | 10925    | 90336226227  | Blumenau                   | Brazil                                | active |   1 |
        | 342 | HAROLD MARTINO        | 1293 Nam Dinh Way                      | 71583    | 697656479977 | Boa Vista                  | Brazil                                | active |   1 |
        | 325 | TIMOTHY BUNN          | 981 Kumbakonam Place                   | 87611    | 829116184079 | Brasília                   | Brazil                                | active |   1 |
        |  92 | TINA SIMMONS          | 984 Effon-Alaiye Avenue                | 17119    | 132986892228 | Goiânia                    | Brazil                                | active |   2 |
        | 427 | JESUS MCCARTNEY       | 259 Ipoh Drive                         | 64964    | 419009857119 | Guarujá                    | Brazil                                | active |   2 |
        | 130 | CHARLOTTE HUNTER      | 758 Junan Lane                         | 82639    | 935448624185 | Águas Lindas de Goiás      | Brazil                                | active |   1 |
        | 310 | DANIEL CABRAL         | 543 Bergamo Avenue                     | 59686    | 103602195112 | Ibirité                    | Brazil                                | active |   2 |
        |  47 | FRANCES PARKER        | 686 Garland Manor                      | 52535    | 69493378813  | Juazeiro do Norte          | Brazil                                | active |   1 |
        | 591 | KENT ARSENAULT        | 32 Liaocheng Way                       | 1944     | 410877354933 | Juiz de Fora               | Brazil                                | active |   1 |
        | 183 | IDA ANDREWS           | 1839 Székesfehérvár Parkway            | 55709    | 947468818183 | Luziânia                   | Brazil                                | active |   2 |
        | 246 | MARIAN MENDOZA        | 829 Grand Prairie Way                  | 6461     | 741070712873 | Maringá                    | Brazil                                | active |   1 |
        | 126 | ELLEN SIMPSON         | 1666 Qomsheh Drive                     | 66255    | 582835362905 | Poá                        | Brazil                                | active |   1 |
        | 254 | MAXINE SILVA          | 1338 Zalantun Lane                     | 45403    | 840522972766 | Poços de Caldas            | Brazil                                | active |   2 |
        |  74 | DENISE KELLY          | 1206 Dos Quebradas Place               | 20207    | 241832790687 | Rio Claro                  | Brazil                                | active |   1 |
        | 178 | MARION SNYDER         | 1891 Rizhao Boulevard                  | 47288    | 391065549876 | Santa Bárbara d´Oeste      | Brazil                                | active |   2 |
        | 354 | JUSTIN NGO            | 519 Nyeri Manor                        | 37650    | 764680915323 | Santo André                | Brazil                                | active |   2 |
        | 544 | CODY NOLEN            | 1715 Okayama Street                    | 55676    | 169352919175 | São Bernardo do Campo      | Brazil                                | active |   2 |
        | 443 | FRANCISCO SKIDMORE    | 614 Denizli Parkway                    | 29444    | 876491807547 | São Leopoldo               | Brazil                                | active |   2 |
        | 314 | GEORGE LINTON         | 1957 Yantai Lane                       | 59255    | 704948322302 | Sorocaba                   | Brazil                                | active |   1 |
        |  39 | DEBRA NELSON          | 306 Antofagasta Place                  | 3989     | 378318851631 | Vila Velha                 | Brazil                                | active |   1 |
        | 374 | JEREMY HURTADO        | 1133 Rizhao Avenue                     | 2800     | 600264533987 | Vitória de Santo Antão     | Brazil                                | active |   2 |
        |  91 | LOIS BUTLER           | 1370 Le Mans Avenue                    | 52163    | 345679835036 | Bandar Seri Begawan        | Brunei                                | active |   2 |
        | 540 | TYRONE ASHER          | 191 José Azueta Parkway                | 13629    | 932156667696 | Ruse                       | Bulgaria                              | active |   1 |
        | 215 | JESSIE BANKS          | 1229 Valencia Parkway                  | 99124    | 352679173732 | Stara Zagora               | Bulgaria                              | active |   2 |
        | 516 | ELMER NOE             | 1768 Udine Loop                        | 32347    | 448876499197 | Battambang                 | Cambodia                              | active |   2 |
        | 228 | ALLISON STANLEY       | 754 Valencia Place                     | 87911    | 594319417514 | Phnom Penh                 | Cambodia                              | active |   2 |
        | 352 | ALBERT CROUSE         | 1641 Changhwa Place                    | 37636    | 256546485220 | Bamenda                    | Cameroon                              | active |   1 |
        | 361 | LAWRENCE LAWTON       | 114 Jalib al-Shuyukh Manor             | 60440    | 845378657301 | Yaoundé                    | Cameroon                              | active |   2 |
        | 476 | DERRICK BOURQUE       | 1153 Allende Way                       | 20336    | 856872225376 | Gatineau                   | Canada                                | active |   1 |
        | 463 | DARRELL POWER         | 1844 Usak Avenue                       | 84461    | 164414772677 | Halifax                    | Canada                                | active |   2 |
        | 189 | LORETTA CARPENTER     | 891 Novi Sad Manor                     | 5379     | 247646995453 | Oshawa                     | Canada                                | active |   1 |
        | 410 | CURTIS IRBY           | 432 Garden Grove Street                | 65630    | 615964523510 | Richmond Hill              | Canada                                | active |   2 |
        | 436 | TROY QUIGLEY          | 983 Santa Fé Way                       | 47472    | 145720452260 | Vancouver                  | Canada                                | active |   1 |
        | 535 | JAVIER ELROD          | 195 Ilorin Street                      | 49250    | 8912935608   | NDjamna                    | Chad                                  | active |   1 |
        |  45 | JANET PHILLIPS        | 1718 Valencia Street                   | 37359    | 675292816413 | Antofagasta                | Chile                                 | active |   1 |
        | 515 | ANDRE RAPP            | 568 Dhule (Dhulia) Loop                | 92568    | 602101369463 | Coquimbo                   | Chile                                 | active |   1 |
        | 464 | JEROME KENYON         | 1872 Toulon Loop                       | 7939     | 928809465153 | Rancagua                   | Chile                                 | active |   1 |
        | 538 | TED BREAUX            | 183 Haiphong Street                    | 69953    | 488600270038 | Baicheng                   | China                                 | active |   2 |
        | 495 | CHARLIE BESS          | 362 Rajkot Lane                        | 98030    | 962020153680 | Baiyin                     | China                                 | active |   2 |
        | 533 | JESSIE MILAM          | 1332 Gaziantep Lane                    | 22813    | 383353187467 | Binzhou                    | China                                 | active |   1 |
        | 197 | SUE PETERS            | 817 Bradford Loop                      | 89459    | 264286442804 | Changzhou                  | China                                 | active |   2 |
        | 260 | CHRISTY VARGAS        | 1158 Mandi Bahauddin Parkway           | 98484    | 276555730211 | Datong                     | China                                 | active |   1 |
        |  64 | JUDITH COX            | 1966 Amroha Avenue                     | 70385    | 333489324603 | Daxian                     | China                                 |        |   2 |
        | 466 | LEO EBERT             | 1322 Mosul Parkway                     | 95400    | 268053970382 | Dongying                   | China                                 | active |   1 |
        | 389 | ALAN KAHN             | 753 Ilorin Avenue                      | 3656     | 464511145118 | Emeishan                   | China                                 | active |   1 |
        | 110 | TIFFANY JORDAN        | 804 Elista Drive                       | 61069    | 379804592943 | Enshi                      | China                                 | active |   2 |
        | 313 | DONALD MAHON          | 1774 Yaoundé Place                     | 91400    | 613124286867 | Ezhou                      | China                                 | active |   2 |
        | 211 | STACEY MONTGOMERY     | 1333 Haldia Street                     | 82161    | 408304391718 | Fuyu                       | China                                 | active |   1 |
        | 281 | LEONA OBRIEN          | 1308 Sumy Loop                         | 30657    | 583021225407 | Fuzhou                     | China                                 | active |   2 |
        | 552 | HUGH WALDROP          | 904 Clarksville Drive                  | 52234    | 955349440539 | Haining                    | China                                 | active |   2 |
        | 165 | LORRAINE STEPHENS     | 154 Tallahassee Loop                   | 62250    | 935508855935 | Hami                       | China                                 | active |   2 |
        | 138 | HAZEL WARREN          | 1587 Sullana Lane                      | 85769    | 468060467018 | Hohhot                     | China                                 | active |   1 |
        | 384 | ERNEST STEPP          | 500 Lincoln Parkway                    | 95509    | 550306965159 | Huai´an                    | China                                 | active |   2 |
        | 168 | REGINA BERRY          | 475 Atšinsk Way                        | 59571    | 201705577290 | Jinchang                   | China                                 | active |   1 |
        | 594 | EDUARDO HIATT         | 1837 Kaduna Parkway                    | 82580    | 640843562301 | Jining                     | China                                 | active |   1 |
        | 595 | TERRENCE GUNDERSON    | 844 Bucuresti Place                    | 36603    | 935952366111 | Jinzhou                    | China                                 | active |   1 |
        | 435 | RICKY SHELBY          | 722 Bradford Lane                      | 90920    | 746251338300 | Junan                      | China                                 | active |   2 |
        | 283 | FELICIA SUTTON        | 226 Halifax Street                     | 58492    | 790651020929 | Korla                      | China                                 | active |   1 |
        | 151 | MEGAN PALMER          | 1560 Jelets Boulevard                  | 77777    | 189446090264 | Laiwu                      | China                                 | active |   2 |
        | 422 | MELVIN ELLINGTON      | 1557 Cape Coral Parkway                | 46875    | 368284120423 | Laohekou                   | China                                 | active |   1 |
        | 267 | MARGIE WADE           | 1762 Paarl Parkway                     | 53928    | 192459639410 | Lengshuijiang              | China                                 | active |   1 |
        | 569 | DAVE GARDINER         | 1052 Pathankot Avenue                  | 77397    | 128499386727 | Leshan                     | China                                 | active |   2 |
        | 129 | CARRIE PORTER         | 1854 Tieli Street                      | 15819    | 509492324775 | Liaocheng                  | China                                 | active |   1 |
        |  90 | RUBY WASHINGTON       | 1952 Chatsworth Drive                  | 25958    | 991562402283 | Meixian                    | China                                 | active |   2 |
        |  37 | PAMELA BAKER          | 1440 Fukuyama Loop                     | 47929    | 912257250465 | Nanyang                    | China                                 | active |   1 |
        | 169 | ERICA MATTHEWS        | 1294 Firozabad Drive                   | 70618    | 161801569569 | Pingxiang                  | China                                 |        |   2 |
        | 242 | GLENDA FRAZIER        | 1246 Boksburg Parkway                  | 28349    | 890283544295 | Qinhuangdao                | China                                 | active |   1 |
        | 496 | TYLER WREN            | 1060 Tandil Lane                       | 72349    | 211256301880 | Rizhao                     | China                                 | active |   2 |
        | 546 | KELLY KNOTT           | 390 Wroclaw Way                        | 5753     | 357593328658 | Sanya                      | China                                 | active |   1 |
        | 424 | KYLE SPURLOCK         | 1269 Botosani Manor                    | 47394    | 736517327853 | Shanwei                    | China                                 | active |   2 |
        | 485 | CLYDE TOBIAS          | 1909 Dayton Avenue                     | 88513    | 702955450528 | Shaoguan                   | China                                 | active |   1 |
        | 378 | EUGENE CULPEPPER      | 686 Donostia-San Sebastián Lane        | 97390    | 71857599858  | Shenzhen                   | China                                 | active |   1 |
        | 511 | CHESTER BENNER        | 1574 Goiânia Boulevard                 | 39529    | 59634255214  | Suihua                     | China                                 | active |   1 |
        | 249 | DORA MEDINA           | 1760 Oshawa Manor                      | 38140    | 56257502250  | Tianjin                    | China                                 | active |   2 |
        | 302 | MICHAEL SILVERMAN     | 1908 Gaziantep Place                   | 58979    | 108053751300 | Tiefa                      | China                                 | active |   1 |
        | 599 | AUSTIN CINTRON        | 1325 Fukuyama Street                   | 27107    | 288241215394 | Tieli                      | China                                 | active |   2 |
        | 442 | LEROY BUSTAMANTE      | 105 Dzerzinsk Manor                    | 48570    | 240776414296 | Tongliao                   | China                                 | active |   1 |
        | 588 | MARION OCAMPO         | 1464 Kursk Parkway                     | 17381    | 338758048786 | Weifang                    | China                                 | active |   1 |
        | 241 | HEIDI LARSON          | 1103 Bilbays Parkway                   | 87660    | 279979529227 | Xi´angfan                  | China                                 |        |   2 |
        |  67 | KELLY TORRES          | 1586 Guarujá Place                     | 5135     | 947233365992 | Xi´angtan                  | China                                 | active |   1 |
        | 564 | BOB PFEIFFER          | 415 Pune Avenue                        | 44274    | 203202500108 | Xintai                     | China                                 | active |   2 |
        | 339 | WALTER PERRYMAN       | 1909 Benguela Lane                     | 19913    | 624138001031 | Xinxiang                   | China                                 | active |   2 |
        | 272 | KAY CALDWELL          | 85 San Felipe de Puerto Plata Drive    | 46063    | 170739645687 | Yantai                     | China                                 | active |   1 |
        | 484 | ROBERTO VU            | 1297 Alvorada Parkway                  | 11839    | 508348602835 | Yinchuan                   | China                                 | active |   1 |
        | 521 | ROLAND SOUTH          | 1993 0 Loop                            | 41214    | 25865528181  | Yingkou                    | China                                 | active |   2 |
        | 154 | MICHELE GRANT         | 798 Cianjur Avenue                     | 76990    | 499408708580 | Yuncheng                   | China                                 | active |   2 |
        | 324 | GARY COY              | 867 Benin City Avenue                  | 78543    | 168884817145 | Yuzhou                     | China                                 | active |   2 |
        |  93 | PHYLLIS FOSTER        | 832 Nakhon Sawan Manor                 | 49021    | 275595571388 | Zalantun                   | China                                 | active |   1 |
        | 514 | FRANKLIN TROUTMAN     | 1778 Gijón Manor                       | 35156    | 288910576761 | Zaoyang                    | China                                 | active |   2 |
        | 550 | GUY BROWNLEE          | 346 Cam Ranh Avenue                    | 39976    | 978430786151 | Zhoushan                   | China                                 | active |   2 |
        | 235 | JACKIE LYNCH          | 98 Stara Zagora Boulevard              | 76448    | 610173756082 | Buenaventura               | Colombia                              | active |   1 |
        | 120 | SYLVIA ORTIZ          | 241 Mosul Lane                         | 76157    | 765345144779 | Dos Quebradas              | Colombia                              | active |   2 |
        | 460 | LEON BOSTIC           | 734 Tanshui Avenue                     | 70664    | 366776723320 | Florencia                  | Colombia                              | active |   1 |
        | 180 | STACY CUNNINGHAM      | 1410 Benin City Parkway                | 29747    | 104150372603 | Pereira                    | Colombia                              | active |   2 |
        |  87 | WANDA PATTERSON       | 1740 Portoviejo Avenue                 | 29932    | 198123170793 | Sincelejo                  | Colombia                              | active |   1 |
        | 490 | SAM MCDUFFIE          | 656 Matamoros Drive                    | 19489    | 17305839123  | Sogamoso                   | Colombia                              | active |   1 |
        | 387 | JESSE SCHILLING       | 514 Ife Way                            | 69973    | 900235712074 | Lubumbashi                 | Congo, The Democratic Republic of the | active |   2 |
        | 375 | AARON SELBY           | 1519 Santiago de los Caballeros Loop   | 22025    | 409315295763 | Mwene-Ditu                 | Congo, The Democratic Republic of the | active |   2 |
        | 265 | JENNIE TERRY          | 682 Halisahar Place                    | 20536    | 475553436330 | Olomouc                    | Czech Republic                        | active |   2 |
        | 437 | RANDALL NEUMANN       | 1245 Ibirité Way                       | 40926    | 331888642162 | La Romana                  | Dominican Republic                    | active |   2 |
        | 418 | JEFF EAST             | 437 Chungho Drive                      | 59489    | 491271355190 | San Felipe de Puerto Plata | Dominican Republic                    | active |   2 |
        | 258 | MYRTLE FLEMING        | 532 Toulon Street                      | 69517    | 46871694740  | Santiago de los Caballeros | Dominican Republic                    | active |   1 |
        | 589 | TRACY HERRMANN        | 1074 Sanaa Parkway                     | 22474    | 154124128457 | Loja                       | Ecuador                               | active |   1 |
        | 262 | PATSY DAVIDSON        | 816 Cayenne Parkway                    | 93629    | 282874611748 | Portoviejo                 | Ecuador                               | active |   2 |
        | 494 | RAMON CHOATE          | 1954 Kowloon and New Kowloon Way       | 63667    | 898559280434 | Ríobamba                   | Ecuador                               | active |   2 |
        | 559 | EVERETT BANDA         | 1741 Hoshiarpur Boulevard              | 22372    | 855066328617 | Bilbays                    | Egypt                                 | active |   2 |
        | 233 | LILLIE KIM            | 1736 Cavite Place                      | 98775    | 431770603551 | Idfu                       | Egypt                                 | active |   2 |
        | 491 | RICK MATTOX           | 775 Šostka Drive                       | 22358    | 171973024401 | Mit Ghamr                  | Egypt                                 | active |   2 |
        | 134 | EMMA BOYD             | 765 Southampton Drive                  | 4285     | 23712411567  | Qalyub                     | Egypt                                 | active |   1 |
        | 423 | ALFRED CASILLAS       | 1727 Matamoros Place                   | 78813    | 129673677866 | Sawhaj                     | Egypt                                 | active |   2 |
        | 119 | SHERRY MARSHALL       | 1987 Coacalco de Berriozábal Loop      | 96065    | 787654415858 | Shubra al-Khayma           | Egypt                                 | active |   1 |
        | 444 | MARCUS HIDALGO        | 1289 Belém Boulevard                   | 88306    | 237368926031 | Tartu                      | Estonia                               | active |   2 |
        | 392 | SEAN DOUGLASS         | 614 Pak Kret Street                    | 27796    | 47808359842  | Addis Abeba                | Ethiopia                              | active |   2 |
        | 317 | EDWARD BAUGH          | 1359 Zhoushan Parkway                  | 29763    | 46568045367  | Tórshavn                   | Faroe Islands                         | active |   2 |
        | 298 | ERIKA PENA            | 898 Jining Lane                        | 40070    | 161643343536 | Oulu                       | Finland                               | active |   1 |
        | 402 | LUIS YANEZ            | 1346 Mysore Drive                      | 61507    | 516647474029 | Brest                      | France                                | active |   1 |
        | 162 | LAUREN HUDSON         | 1740 Le Mans Loop                      | 22853    | 168476538960 | Le Mans                    | France                                | active |   2 |
        | 104 | RITA GRAHAM           | 1386 Yangor Avenue                     | 80720    | 449216226468 | Toulon                     | France                                | active |   1 |
        |  35 | VIRGINIA GREEN        | 391 Callao Drive                       | 34021    | 440512153169 | Toulouse                   | France                                | active |   2 |
        |  65 | ROSE HOWARD           | 698 Otsu Street                        | 71110    | 409983924481 | Cayenne                    | French Guiana                         | active |   2 |
        |  43 | CHRISTINE ROBERTS     | 1447 Imus Way                          | 48942    | 539758313890 | Faaa                       | French Polynesia                      | active |   2 |
        |  56 | GLORIA COOK           | 1668 Saint Louis Place                 | 39072    | 347487831378 | Papeete                    | French Polynesia                      | active |   1 |
        | 584 | SALVADOR TEEL         | 247 Jining Parkway                     | 53446    | 170115379190 | Banjul                     | Gambia                                | active |   2 |
        | 114 | GRACE ELLIS           | 442 Rae Bareli Place                   | 24321    | 886636413768 | Duisburg                   | Germany                               | active |   2 |
        | 448 | MIGUEL BETANCOURT     | 319 Springs Loop                       | 99552    | 72524459905  | Erlangen                   | Germany                               | active |   1 |
        | 251 | VICKIE BREWER         | 1966 Tonghae Street                    | 36481    | 567359279425 | Halle/Saale                | Germany                               | active |   2 |
        | 196 | ALMA AUSTIN           | 1074 Binzhou Manor                     | 36490    | 331132568928 | Mannheim                   | Germany                               | active |   1 |
        | 227 | COLLEEN BURTON        | 430 Alessandria Loop                   | 47446    | 669828224459 | Saarbrücken                | Germany                               | active |   1 |
        | 195 | VANESSA SIMS          | 1792 Valle de la Pascua Place          | 15540    | 419419591240 | Siegen                     | Germany                               | active |   1 |
        | 201 | VICKI FIELDS          | 68 Molodetšno Manor                    | 4662     | 146640639760 | Witten                     | Germany                               | active |   1 |
        |   3 | LINDA WILLIAMS        | 692 Joliet Street                      | 83579    | 448477190408 | Athenai                    | Greece                                | active |   1 |
        | 596 | ENRIQUE FORSYTHE      | 1101 Bucuresti Boulevard               | 97661    | 199514580428 | Patras                     | Greece                                | active |   1 |
        | 207 | GERTRUDE CASTILLO     | 850 Salala Loop                        | 10800    | 403404780639 | Nuuk                       | Greenland                             | active |   1 |
        |  26 | JESSICA HALL          | 18 Duisburg Boulevard                  | 58327    | 998009777982 | Città del Vaticano         | Holy See (Vatican City State)         | active |   2 |
        | 289 | VIOLET RODRIQUEZ      | 1912 Allende Manor                     | 58124    | 172262454487 | Kowloon and New Kowloon    | Hong Kong                             | active |   1 |
        | 592 | TERRANCE ROUSH        | 42 Fontana Avenue                      | 14684    | 437829801725 | Székesfehérvár             | Hungary                               |        |   1 |
        | 367 | ADAM GOOCH            | 230 Urawa Drive                        | 2738     | 166898395731 | Adoni                      | India                                 | active |   1 |
        | 297 | SHERRI RHODES         | 922 Vila Velha Loop                    | 4085     | 510737228015 | Ahmadnagar                 | India                                 | active |   1 |
        | 175 | ANNETTE OLSON         | 431 Xi´angtan Avenue                   | 4854     | 230250973122 | Allappuzha (Alleppey)      | India                                 | active |   1 |
        | 225 | ARLENE HARVEY         | 1014 Loja Manor                        | 66851    | 460795526514 | Ambattur                   | India                                 | active |   1 |
        | 534 | CHRISTIAN JUNG        | 949 Allende Lane                       | 67521    | 122981120653 | Amroha                     | India                                 |        |   1 |
        | 208 | LUCY WHEELER          | 624 Oshawa Boulevard                   | 89959    | 49677664184  | Balurghat                  | India                                 | active |   1 |
        | 413 | MARVIN YEE            | 126 Acuña Parkway                      | 58888    | 480039662421 | Berhampore (Baharampur)    | India                                 | active |   2 |
        | 379 | CARLOS COUGHLIN       | 97 Mogiljov Lane                       | 89294    | 924815207181 | Bhavnagar                  | India                                 | active |   1 |
        | 209 | TONYA CHAPMAN         | 43 Dadu Avenue                         | 4855     | 95666951770  | Bhilwara                   | India                                 | active |   2 |
        | 529 | ERIK GUILLEN          | 635 Brest Manor                        | 40899    | 80593242951  | Bhimavaram                 | India                                 | active |   2 |
        |  15 | HELEN HARRIS          | 419 Iligan Lane                        | 72878    | 990911107354 | Bhopal                     | India                                 | active |   1 |
        | 202 | CARLA GUTIERREZ       | 642 Nador Drive                        | 3924     | 369050085652 | Bhusawal                   | India                                 | active |   2 |
        | 468 | TIM CARY              | 1257 Guadalajara Street                | 33599    | 195337700615 | Bijapur                    | India                                 | active |   1 |
        | 167 | SALLY PIERCE          | 1540 Wroclaw Drive                     | 62686    | 182363341674 | Chandrapur                 | India                                 | active |   2 |
        | 509 | RAUL FORTIER          | 1747 Rustenburg Place                  | 51369    | 442673923363 | Chapra                     | India                                 | active |   1 |
        | 440 | BERNARD COLBY         | 495 Bhimavaram Lane                    | 3        | 82088937724  | Dhule (Dhulia)             | India                                 | active |   1 |
        | 121 | JOSEPHINE GOMEZ       | 211 Chiayi Drive                       | 58186    | 665993880048 | Etawah                     | India                                 | active |   1 |
        | 192 | LAURIE LAWRENCE       | 9 San Miguel de Tucumán Manor          | 90845    | 956188728558 | Firozabad                  | India                                 | active |   1 |
        | 117 | EDITH MCDONALD        | 1967 Sincelejo Place                   | 73644    | 577812616052 | Gandhinagar                | India                                 | active |   1 |
        | 370 | WAYNE TRUONG          | 1049 Matamoros Parkway                 | 69640    | 960505250340 | Gulbarga                   | India                                 | active |   2 |
        | 186 | HOLLY FOX             | 435 0 Way                              | 74750    | 760171523969 | Haldia                     | India                                 | active |   2 |
        | 259 | LENA JENSEN           | 1027 Banjul Place                      | 50390    | 538241037443 | Halisahar                  | India                                 | active |   2 |
        | 412 | ALLEN BUTTERFIELD     | 791 Salinas Street                     | 40509    | 129953030512 | Hoshiarpur                 | India                                 | active |   2 |
        | 136 | ANITA MORALES         | 788 Atšinsk Street                     | 81691    | 146497509724 | Hubli-Dharwad              | India                                 | active |   2 |
        |  60 | MILDRED BAILEY        | 81 Hodeida Way                         | 55561    | 250767749542 | Jaipur                     | India                                 | active |   1 |
        |  32 | AMY LOPEZ             | 176 Mandaluyong Place                  | 65213    | 627705991774 | Jhansi                     | India                                 | active |   1 |
        | 224 | PEARL GARZA           | 60 Poços de Caldas Street              | 82338    | 963063788669 | Jodhpur                    | India                                 | active |   2 |
        |  31 | BRENDA WRIGHT         | 33 Gorontalo Way                       | 30348    | 745994947458 | Kamarhati                  | India                                 | active |   2 |
        | 492 | LESTER KRAUS          | 1013 Tabuk Boulevard                   | 96203    | 158399646978 | Kanchrapara                | India                                 | active |   2 |
        | 274 | NAOMI JENNINGS        | 1884 Shikarpur Avenue                  | 85548    | 959949395183 | Karnal                     | India                                 | active |   1 |
        | 419 | CHAD CARBONE          | 1948 Bayugan Parkway                   | 60622    | 987306329957 | Katihar                    | India                                 | active |   1 |
        | 271 | PENNY NEAL            | 1675 Xi´angfan Manor                   | 11763    | 271149517630 | Kumbakonam                 | India                                 |        |   1 |
        | 316 | STEVEN CURLEY         | 651 Pathankot Loop                     | 59811    | 139378397418 | Miraj                      | India                                 | active |   1 |
        |  28 | CYNTHIA YOUNG         | 1425 Shikarpur Manor                   | 65599    | 678220867005 | Munger (Monghyr)           | India                                 | active |   1 |
        |  59 | CHERYL MURPHY         | 1213 Ranchi Parkway                    | 94352    | 800024380485 | Mysore                     | India                                 | active |   1 |
        | 152 | ALICIA MILLS          | 1963 Moscow Place                      | 64863    | 761379480249 | Nagaon                     | India                                 | active |   1 |
        | 268 | NINA SOTO             | 1519 Ilorin Place                      | 49298    | 357445645426 | Palghat (Palakkad)         | India                                 | active |   1 |
        | 300 | JOHN FARNSWORTH       | 41 El Alto Parkway                     | 56883    | 51917807050  | Parbhani                   | India                                 | active |   1 |
        |  95 | PAULA BRYANT          | 1697 Tanauan Lane                      | 22870    | 4764773857   | Pathankot                  | India                                 | active |   2 |
        | 296 | RAMONA HALE           | 951 Stara Zagora Manor                 | 98573    | 429925609431 | Patiala                    | India                                 | active |   2 |
        | 421 | LEE HAWKS             | 1661 Abha Drive                        | 14400    | 270456873752 | Pudukkottai                | India                                 | active |   1 |
        | 135 | JUANITA MASON         | 943 Johannesburg Avenue                | 5892     | 90921003005  | Pune                       | India                                 | active |   2 |
        | 426 | BRADLEY MOTLEY        | 1596 Acuña Parkway                     | 70425    | 157133457169 | Purnea (Purnia)            | India                                 | active |   1 |
        |  78 | LORI WOOD             | 936 Salzburg Lane                      | 96709    | 875756771675 | Rae Bareli                 | India                                 | active |   1 |
        | 554 | DWAYNE OLVERA         | 1447 Imus Place                        | 12905    | 62127829280  | Rajkot                     | India                                 | active |   1 |
        | 336 | JOSHUA MARK           | 1920 Weifang Avenue                    | 15643    | 869507847714 | Rampur                     | India                                 | active |   1 |
        | 358 | SAMUEL MARLOW         | 604 Bern Place                         | 5373     | 620719383725 | Ranchi                     | India                                 | active |   2 |
        | 217 | AGNES BISHOP          | 866 Shivapuri Manor                    | 22474    | 778502731092 | Sambhal                    | India                                 | active |   2 |
        | 356 | GERALD FULTZ          | 45 Aparecida de Goiânia Place          | 7431     | 650496654258 | Satna                      | India                                 | active |   2 |
        | 238 | NELLIE GARRETT        | 1964 Gijón Manor                       | 14408    | 918119601885 | Shimoga                    | India                                 | active |   1 |
        |  68 | NICOLE PETERSON       | 57 Arlington Manor                     | 48960    | 990214419142 | Shivapuri                  | India                                 | active |   1 |
        | 502 | BRETT CORNWELL        | 1197 Sokoto Boulevard                  | 87687    | 868602816371 | Siliguri (Shiliguri)       | India                                 | active |   1 |
        | 287 | BECKY MILES           | 1993 Tabuk Lane                        | 64221    | 648482415405 | Tambaram                   | India                                 | active |   2 |
        | 170 | BEATRICE ARNOLD       | 1877 Ezhou Lane                        | 63337    | 264541743403 | Udaipur                    | India                                 | active |   1 |
        | 446 | THEODORE CULP         | 1704 Tambaram Manor                    | 2834     | 39463554936  | Uluberia                   | India                                 |        |   2 |
        | 231 | GEORGIA JACOBS        | 954 Kimchon Place                      | 42420    | 541327526474 | Uttarpara-Kotrung          | India                                 | active |   1 |
        | 403 | MIKE WAY              | 990 Etawah Loop                        | 79940    | 206169448769 | Valparai                   | India                                 | active |   1 |
        | 123 | SHANNON FREEMAN       | 117 Boa Vista Way                      | 6804     | 677976133614 | Varanasi (Benares)         | India                                 | active |   2 |
        | 508 | MILTON HOWLAND        | 758 Korolev Parkway                    | 75474    | 441628280920 | Vijayawada                 | India                                 | active |   2 |
        |  12 | NANCY THOMAS          | 808 Bhopal Manor                       | 10672    | 465887807014 | Yamuna Nagar               | India                                 | active |   1 |
        | 411 | NORMAN CURRIER        | 1445 Carmen Parkway                    | 70809    | 598912394463 | Cianjur                    | Indonesia                             | active |   1 |
        | 239 | MINNIE ROMERO         | 47 Syktyvkar Lane                      | 22236    | 63937119031  | Ciomas                     | Indonesia                             | active |   2 |
        | 328 | JEFFREY SPEAR         | 1860 Taguig Loop                       | 59550    | 38158430589  | Ciparay                    | Indonesia                             | active |   2 |
        | 203 | TARA RYAN             | 1688 Nador Lane                        | 61613    | 652218196731 | Gorontalo                  | Indonesia                             | active |   1 |
        | 153 | SUZANNE NICHOLS       | 456 Escobar Way                        | 36061    | 719202533520 | Jakarta                    | Indonesia                             | active |   2 |
        | 473 | JORGE OLIVARES        | 1078 Stara Zagora Drive                | 69221    | 932992626595 | Lhokseumawe                | Indonesia                             | active |   2 |
        | 500 | REGINALD KINDER       | 519 Brescia Parkway                    | 69504    | 793996678771 | Madiun                     | Indonesia                             | active |   1 |
        | 542 | LONNIE TIRADO         | 1658 Cumaná Loop                       | 51309    | 784907335610 | Pangkal Pinang             | Indonesia                             | active |   2 |
        | 116 | VICTORIA GIBSON       | 544 Malmö Parkway                      | 63502    | 386759646229 | Pemalang                   | Indonesia                             | active |   1 |
        | 506 | LESLIE SEWARD         | 1152 al-Qatif Lane                     | 44816    | 131370665218 | Pontianak                  | Indonesia                             | active |   2 |
        | 372 | STEVE MACKENZIE       | 154 Oshawa Manor                       | 72771    | 440365973660 | Probolinggo                | Indonesia                             | active |   2 |
        | 524 | JARED ELY             | 1003 Qinhuangdao Street                | 25972    | 35533115997  | Purwakarta                 | Indonesia                             | active |   1 |
        | 450 | JAY ROBB              | 1947 Paarl Way                         | 23636    | 834061016202 | Surakarta                  | Indonesia                             | active |   1 |
        | 458 | LLOYD DOWD            | 935 Aden Boulevard                     | 64709    | 335052544020 | Tegal                      | Indonesia                             | active |   1 |
        |  36 | KATHLEEN ADAMS        | 334 Munger (Monghyr) Lane              | 38145    | 481183273622 | Arak                       | Iran                                  | active |   2 |
        |  10 | DOROTHY TAYLOR        | 1531 Salé Drive                        | 53628    | 648856936185 | Esfahan                    | Iran                                  | active |   1 |
        | 377 | HOWARD FORTNER        | 220 Hidalgo Drive                      | 45298    | 342720754566 | Kermanshah                 | Iran                                  | active |   1 |
        | 368 | HARRY ARCE            | 1922 Miraj Way                         | 13203    | 320471479776 | Najafabad                  | Iran                                  |        |   1 |
        | 459 | TOMMY COLLAZO         | 76 Kermanshah Manor                    | 23343    | 762361821578 | Qomsheh                    | Iran                                  | active |   1 |
        | 185 | ROBERTA HARPER        | 927 Barcelona Street                   | 65121    | 951486492670 | Shahr-e Kord               | Iran                                  | active |   1 |
        | 449 | OSCAR AQUINO          | 956 Nam Dinh Manor                     | 21872    | 474047727727 | Sirjan                     | Iran                                  | active |   2 |
        | 279 | DIANNE SHELTON        | 600 Bradford Street                    | 96204    | 117592274996 | Tabriz                     | Iran                                  | active |   2 |
        | 579 | DARYL LARUE           | 1208 Tama Loop                         | 73605    | 954786054144 | Mosul                      | Iraq                                  | active |   2 |
        | 102 | CRYSTAL FORD          | 659 Vaduz Drive                        | 49708    | 709935135487 | Ashdod                     | Israel                                | active |   1 |
        | 478 | LEWIS LYMAN           | 632 Usolje-Sibirskoje Parkway          | 73085    | 667648979883 | Ashqelon                   | Israel                                | active |   1 |
        | 315 | KENNETH GOODEN        | 1542 Lubumbashi Boulevard              | 62472    | 508800331065 | Bat Yam                    | Israel                                |        |   2 |
        | 161 | GERALDINE PERKINS     | 97 Shimoga Avenue                      | 44660    | 177167004331 | Tel Aviv-Jaffa             | Israel                                | active |   1 |
        |  33 | ANNA HILL             | 127 Purnea (Purnia) Manor              | 79388    | 911872220378 | Alessandria                | Italy                                 | active |   2 |
        | 439 | ALEXANDER FENNELL     | 231 Kaliningrad Place                  | 57833    | 575081026569 | Bergamo                    | Italy                                 | active |   2 |
        | 309 | CHRISTOPHER GRECO     | 1224 Huejutla de Reyes Boulevard       | 70923    | 806016930576 | Brescia                    | Italy                                 | active |   1 |
        | 499 | MARC OUTLAW           | 1 Valle de Santiago Avenue             | 86208    | 465897838272 | Brindisi                   | Italy                                 | active |   2 |
        | 541 | DARREN WINDHAM        | 379 Lublin Parkway                     | 74568    | 921960450089 | Livorno                    | Italy                                 | active |   2 |
        | 221 | BESSIE MORRISON       | 1926 Gingoog Street                    | 22824    | 469738825391 | Syrakusa                   | Italy                                 | active |   1 |
        | 525 | ADRIAN CLARY          | 1986 Sivas Place                       | 95775    | 182059202712 | Udine                      | Italy                                 | active |   2 |
        | 574 | JULIAN VEST           | 923 Tangail Boulevard                  | 33384    | 315528269898 | Akishima                   | Japan                                 | active |   2 |
        | 141 | DEBBIE REYES          | 928 Jaffna Loop                        | 93762    | 581852137991 | Fukuyama                   | Japan                                 | active |   1 |
        | 264 | GWENDOLYN MAY         | 446 Kirovo-Tšepetsk Lane               | 19428    | 303967439816 | Higashiosaka               | Japan                                 | active |   1 |
        | 194 | KRISTEN CHAVEZ        | 345 Oshawa Boulevard                   | 32114    | 104491201771 | Hino                       | Japan                                 | active |   2 |
        | 299 | JAMES GANNON          | 1635 Kuwana Boulevard                  | 52137    | 710603868323 | Hiroshima                  | Japan                                 | active |   2 |
        | 519 | RON DELUCA            | 1949 Sanya Street                      | 61244    | 132100972047 | Isesaki                    | Japan                                 | active |   2 |
        | 240 | MARLENE WELCH         | 1148 Saarbrücken Parkway               | 1921     | 137773001988 | Iwaki                      | Japan                                 | active |   1 |
        |  54 | TERESA ROGERS         | 1964 Allappuzha (Alleppey) Street      | 48980    | 920811325222 | Iwakuni                    | Japan                                 | active |   1 |
        | 396 | EARL SHANKS           | 168 Cianjur Manor                      | 73824    | 679095087143 | Iwatsuki                   | Japan                                 | active |   1 |
        | 391 | CLARENCE GAMEZ        | 767 Pyongyang Drive                    | 83536    | 667736124769 | Izumisano                  | Japan                                 | active |   1 |
        | 163 | CATHY SPENCER         | 1287 Xi´angfan Boulevard               | 57844    | 819416131190 | Kakamigahara               | Japan                                 | active |   1 |
        |  79 | RACHEL BARNES         | 586 Tete Way                           | 1079     | 18581624103  | Kamakura                   | Japan                                 | active |   1 |
        | 547 | KURT EMMONS           | 1421 Quilmes Lane                      | 19151    | 135407755975 | Kanazawa                   | Japan                                 | active |   1 |
        | 401 | TONY CARRANZA         | 454 Patiala Lane                       | 13496    | 794553031307 | Koriyama                   | Japan                                 | active |   2 |
        |  34 | REBECCA SCOTT         | 61 Tama Street                         | 94065    | 708403338270 | Kurashiki                  | Japan                                 | active |   2 |
        | 531 | JAMIE WAUGH           | 958 Sagamihara Lane                    | 88408    | 427274926505 | Kuwana                     | Japan                                 | active |   2 |
        | 355 | TERRY GRISSOM         | 619 Huánuco Avenue                     | 81508    | 142596392389 | Matsue                     | Japan                                 | active |   2 |
        | 253 | TERRY CARLSON         | 752 Ondo Loop                          | 32474    | 134673576619 | Miyakonojo                 | Japan                                 | active |   1 |
        |  53 | HEATHER MORRIS        | 17 Kabul Boulevard                     | 38594    | 697760867968 | Nagareyama                 | Japan                                 | active |   1 |
        | 489 | RICARDO MEADOR        | 591 Sungai Petani Drive                | 46400    | 37247325001  | Okayama                    | Japan                                 | active |   1 |
        | 365 | BRUCE SCHWARZ         | 1565 Tangail Manor                     | 45750    | 634445428822 | Okinawa                    | Japan                                 | active |   2 |
        | 404 | STANLEY SCROGGINS     | 1266 Laredo Parkway                    | 7664     | 1483365694   | Omiya                      | Japan                                 | active |   2 |
        | 337 | JERRY JORDON          | 124 al-Manama Way                      | 52368    | 647899404952 | Onomichi                   | Japan                                 | active |   1 |
        | 285 | MIRIAM MCKINNEY       | 1336 Benin City Drive                  | 46044    | 341242939532 | Otsu                       | Japan                                 | active |   1 |
        |  11 | LISA ANDERSON         | 1542 Tarlac Parkway                    | 1027     | 635297277345 | Sagamihara                 | Japan                                 | active |   2 |
        |   1 | MARY SMITH            | 1913 Hanoi Way                         | 35200    | 28303384290  | Sasebo                     | Japan                                 | active |   1 |
        |  29 | ANGELA HERNANDEZ      | 786 Aurora Avenue                      | 65750    | 18461860151  | Shimonoseki                | Japan                                 | active |   2 |
        | 385 | PHILLIP HOLM          | 102 Chapra Drive                       | 14073    | 776031833752 | Tama                       | Japan                                 | active |   1 |
        | 429 | FREDERICK ISBELL      | 1404 Taguig Drive                      | 87212    | 572068624538 | Tsuyama                    | Japan                                 | active |   2 |
        | 503 | ANGEL BARCLAY         | 496 Celaya Drive                       | 90797    | 759586584889 | Ueda                       | Japan                                 | active |   1 |
        | 147 | JOANNE ROBERTSON      | 1337 Lincoln Parkway                   | 99457    | 597815221267 | Urawa                      | Japan                                 | active |   2 |
        |  76 | IRENE PRICE           | 602 Paarl Street                       | 98889    | 896314772871 | Pavlodar                   | Kazakstan                             | active |   2 |
        | 573 | BYRON BOX             | 521 San Juan Bautista Tuxtepec Place   | 95093    | 844018348565 | Zhezqazghan                | Kazakstan                             | active |   1 |
        | 193 | KATIE ELLIOTT         | 447 Surakarta Loop                     | 10428    | 940830176580 | Kisumu                     | Kenya                                 | active |   2 |
        | 363 | ROY WHITING           | 1658 Jastrzebie-Zdrój Loop             | 96584    | 568367775448 | Nyeri                      | Kenya                                 | active |   2 |
        | 234 | CLAUDIA FULLER        | 346 Skikda Parkway                     | 90628    | 630424482919 | Jalib al-Shuyukh           | Kuwait                                | active |   1 |
        | 347 | RYAN SALISBURY        | 1673 Tangail Drive                     | 26857    | 627924259271 | Daugavpils                 | Latvia                                | active |   2 |
        |  23 | SARAH LEWIS           | 1780 Hino Boulevard                    | 7716     | 902731229323 | Liepaja                    | Latvia                                | active |   2 |
        |  57 | EVELYN MORGAN         | 943 Tokat Street                       | 45428    | 889318963672 | Vaduz                      | Liechtenstein                         | active |   2 |
        | 557 | FELIX GAFFNEY         | 1059 Yuncheng Avenue                   | 47498    | 107092893983 | Vilnius                    | Lithuania                             | active |   1 |
        |  81 | ANDREA HENDERSON      | 320 Baiyin Parkway                     | 37307    | 223664661973 | Mahajanga                  | Madagascar                            | active |   1 |
        | 166 | LYNN PAYNE            | 710 San Felipe del Progreso Avenue     | 76901    | 843801144113 | Lilongwe                   | Malawi                                | active |   1 |
        | 171 | DOLORES WAGNER        | 316 Uruapan Street                     | 58194    | 275788967899 | Ipoh                       | Malaysia                              | active |   2 |
        |  58 | JEAN BELL             | 1114 Liepaja Street                    | 69226    | 212869228936 | Kuching                    | Malaysia                              | active |   1 |
        | 306 | CHARLES KOWALSKI      | 715 São Bernardo do Campo Lane         | 84804    | 181179321332 | Sungai Petani              | Malaysia                              | active |   1 |
        | 486 | GLEN TALBERT          | 1789 Saint-Denis Parkway               | 8268     | 936806643983 | Acuña                      | Mexico                                | active |   1 |
        | 414 | VINCENT RALSTON       | 397 Sunnyvale Avenue                   | 55566    | 680851640676 | Allende                    | Mexico                                | active |   1 |
        |  84 | SARA PERRY            | 125 Città del Vaticano Boulevard       | 67912    | 48417642933  | Atlixco                    | Mexico                                | active |   2 |
        | 578 | WILLARD LUMPKIN       | 1819 Alessandria Loop                  | 53829    | 377633994405 | Carmen                     | Mexico                                | active |   2 |
        | 587 | SERGIO STANFIELD      | 1402 Zanzibar Boulevard                | 71102    | 387448063440 | Celaya                     | Mexico                                | active |   1 |
        | 247 | STELLA MORENO         | 1473 Changhwa Parkway                  | 75933    | 266798132374 | Coacalco de Berriozábal    | Mexico                                | active |   1 |
        | 482 | MAURICE CRAWLEY       | 1785 São Bernardo do Campo Street      | 71182    | 684529463244 | Coatzacoalcos              | Mexico                                |        |   1 |
        | 467 | ALVIN DELOACH         | 1447 Chatsworth Place                  | 41545    | 769370126331 | Cuauhtémoc                 | Mexico                                | active |   2 |
        | 323 | MATTHEW MAHAN         | 479 San Felipe del Progreso Avenue     | 54949    | 869051782691 | Cuautla                    | Mexico                                | active |   2 |
        | 575 | ISAAC OGLESBY         | 186 Skikda Lane                        | 89422    | 14465669789  | Cuernavaca                 | Mexico                                | active |   2 |
        | 451 | JIM REA               | 814 Simferopol Loop                    | 48745    | 524567129902 | El Fuerte                  | Mexico                                | active |   1 |
        | 364 | BENJAMIN VARNEY       | 817 Laredo Avenue                      | 77449    | 151249681135 | Guadalajara                | Mexico                                | active |   1 |
        | 150 | DANIELLE DANIELS      | 781 Shimonoseki Drive                  | 95444    | 632316273199 | Hidalgo                    | Mexico                                | active |   2 |
        | 582 | ANDY VANHORN          | 966 Asunción Way                       | 62703    | 995527378381 | Huejutla de Reyes          | Mexico                                | active |   2 |
        | 108 | TRACY COLE            | 1002 Ahmadnagar Manor                  | 93026    | 371490777743 | Huixquilucan               | Mexico                                | active |   1 |
        | 581 | VIRGIL WOFFORD        | 760 Miyakonojo Drive                   | 64682    | 294449058179 | José Azueta                | Mexico                                | active |   1 |
        | 369 | FRED WHEAT            | 433 Florencia Street                   | 91330    | 561729882725 | Juárez                     | Mexico                                | active |   2 |
        | 488 | SHANE MILLARD         | 184 Mandaluyong Street                 | 94239    | 488425406814 | La Paz                     | Mexico                                | active |   2 |
        | 177 | SAMANTHA DUNCAN       | 146 Johannesburg Way                   | 54132    | 953689007081 | Matamoros                  | Mexico                                | active |   2 |
        | 343 | DOUGLAS GRAF          | 785 Vaduz Street                       | 36170    | 895616862749 | Mexicali                   | Mexico                                | active |   1 |
        | 570 | IVAN CROMWELL         | 1351 Sousse Lane                       | 37815    | 203804046132 | Monclova                   | Mexico                                | active |   2 |
        | 115 | WENDY HARRISON        | 1107 Nakhon Sawan Avenue               | 75149    | 867546627903 | Nezahualcóyotl             | Mexico                                | active |   1 |
        | 353 | JONATHAN SCARBOROUGH  | 1698 Southport Loop                    | 49009    | 754358349853 | Pachuca de Soto            | Mexico                                | active |   1 |
        | 273 | PRISCILLA LOWE        | 144 South Hill Loop                    | 2012     | 45387294817  | Salamanca                  | Mexico                                | active |   2 |
        | 319 | RONALD WEINER         | 1145 Vilnius Manor                     | 73170    | 674805712553 | San Felipe del Progreso    | Mexico                                | active |   2 |
        | 425 | FRANCIS SIKES         | 355 Vitória de Santo Antão Way         | 81758    | 548003849552 | San Juan Bautista Tuxtepec | Mexico                                | active |   2 |
        | 133 | PAULINE HENRY         | 261 Saint Louis Way                    | 83401    | 321944036800 | Torreón                    | Mexico                                | active |   1 |
        | 454 | ALEX GRESHAM          | 251 Florencia Drive                    | 16119    | 118011831565 | Uruapan                    | Mexico                                | active |   2 |
        | 288 | BOBBIE CRAIG          | 86 Higashiosaka Lane                   | 33768    | 957128697225 | Valle de Santiago          | Mexico                                | active |   1 |
        | 465 | FLOYD GANDY           | 1088 Ibirité Place                     | 88502    | 49084281333  | Zapopan                    | Mexico                                | active |   1 |
        |  38 | MARTHA GONZALEZ       | 269 Cam Ranh Parkway                   | 34689    | 489783829737 | Chisinau                   | Moldova                               | active |   1 |
        | 543 | LANCE PEMBERTON       | 454 Qinhuangdao Drive                  | 25866    | 786270036240 | Beni-Mellal                | Morocco                               | active |   1 |
        |  40 | AMANDA CARTER         | 671 Graz Street                        | 94399    | 680768868518 | Nador                      | Morocco                               | active |   2 |
        |  22 | LAURA RODRIGUEZ       | 28 Charlotte Amalie Street             | 37551    | 161968374323 | Salé                       | Morocco                               | active |   1 |
        | 257 | MARSHA DOUGLAS        | 771 Yaoundé Manor                      | 86768    | 245477603573 | Beira                      | Mozambique                            | active |   2 |
        | 433 | DON BONE              | 596 Huixquilucan Place                 | 65892    | 342709348083 | Naçala-Porto               | Mozambique                            | active |   1 |
        |  97 | ANNIE RUSSELL         | 1599 Plock Drive                       | 71986    | 817248913162 | Tete                       | Mozambique                            | active |   2 |
        | 256 | MABEL HOLLAND         | 51 Laredo Avenue                       | 68146    | 884536620568 | Monywa                     | Myanmar                               | active |   2 |
        |   4 | BARBARA JONES         | 1566 Inegöl Manor                      | 53561    | 705814003527 | Myingyan                   | Myanmar                               | active |   2 |
        | 513 | DUANE TUBBS           | 962 Tama Loop                          | 65952    | 282667506728 | Yangor                     | Nauru                                 | active |   2 |
        | 321 | KEVIN SCHULER         | 470 Boksburg Street                    | 97960    | 908029859266 | Birgunj                    | Nepal                                 | active |   1 |
        | 415 | GLENN PULLEN          | 992 Klerksdorp Loop                    | 33711    | 855290087237 | Amersfoort                 | Netherlands                           | active |   1 |
        | 137 | RHONDA KENNEDY        | 1749 Daxian Place                      | 11044    | 963369996279 | Apeldoorn                  | Netherlands                           | active |   2 |
        | 341 | PETER MENARD          | 1217 Konotop Avenue                    | 504      | 718917251754 | Ede                        | Netherlands                           | active |   1 |
        | 474 | DUSTIN GILLETTE       | 1854 Okara Boulevard                   | 42123    | 131912793873 | Emmen                      | Netherlands                           | active |   2 |
        | 184 | VIVIAN RUIZ           | 741 Ambattur Manor                     | 43310    | 302590383819 | ´s-Hertogenbosch           | Netherlands                           | active |   1 |
        |   8 | SUSAN WILSON          | 478 Joliet Way                         | 77948    | 657282285970 | Hamilton                   | New Zealand                           | active |   2 |
        | 284 | SONIA GREGORY         | 1279 Udine Parkway                     | 75860    | 195003555232 | Benin City                 | Nigeria                               | active |   1 |
        | 409 | RODNEY MOELLER        | 1936 Lapu-Lapu Parkway                 | 7122     | 653436985797 | Deba Habe                  | Nigeria                               | active |   2 |
        | 286 | VELMA LUCAS           | 1155 Liaocheng Place                   | 22650    | 558236142492 | Effon-Alaiye               | Nigeria                               | active |   1 |
        |  80 | MARILYN ROSS          | 1888 Kabul Drive                       | 20936    | 701457319790 | Ife                        | Nigeria                               | active |   1 |
        | 198 | ELSIE KELLEY          | 955 Bamenda Way                        | 1545     | 768481779568 | Ikerre                     | Nigeria                               | active |   2 |
        | 103 | GLADYS HAMILTON       | 1177 Jelets Way                        | 3305     | 484292626944 | Ilorin                     | Nigeria                               | active |   1 |
        |  18 | CAROL GARCIA          | 320 Brest Avenue                       | 43331    | 747791594069 | Kaduna                     | Nigeria                               | active |   2 |
        | 277 | OLGA JIMENEZ          | 556 Baybay Manor                       | 55802    | 363982224739 | Ogbomosho                  | Nigeria                               | active |   2 |
        | 156 | BERTHA FERGUSON       | 1367 Yantai Manor                      | 21294    | 889538496300 | Ondo                       | Nigeria                               | active |   1 |
        | 280 | TRACEY BARRETT        | 1006 Santa Bárbara d´Oeste Manor       | 36229    | 85059738746  | Owo                        | Nigeria                               | active |   2 |
        | 250 | JO FOWLER             | 786 Stara Zagora Way                   | 98332    | 716256596301 | Oyo                        | Nigeria                               | active |   2 |
        | 562 | WALLACE SLONE         | 1342 Sharja Way                        | 93655    | 946114054231 | Sokoto                     | Nigeria                               | active |   1 |
        | 232 | CONSTANCE REID        | 885 Yingkou Manor                      | 31390    | 588964509072 | Zaria                      | Nigeria                               | active |   2 |
        | 157 | DARLENE ROSE          | 1386 Nakhon Sawan Boulevard            | 53502    | 368899174225 | Pyongyang                  | North Korea                           | active |   2 |
        |   9 | MARGARET MOORE        | 613 Korolev Drive                      | 45844    | 380657522649 | Masqat                     | Oman                                  | active |   2 |
        | 498 | GENE SANBORN          | 1416 San Juan Bautista Tuxtepec Avenue | 50592    | 144206758053 | Salala                     | Oman                                  | active |   1 |
        | 416 | JEFFERY PINSON        | 966 Arecibo Loop                       | 94018    | 15273765306  | Dadu                       | Pakistan                              | active |   2 |
        | 223 | MELINDA FERNANDEZ     | 1820 Maringá Parkway                   | 88307    | 99760893676  | Mandi Bahauddin            | Pakistan                              | active |   1 |
        |  20 | SHARON ROBINSON       | 1688 Okara Way                         | 21954    | 144453869132 | Mardan                     | Pakistan                              | active |   2 |
        | 399 | DANNY ISOM            | 734 Béchar Place                       | 30586    | 280578750435 | Okara                      | Pakistan                              | active |   1 |
        |  25 | DEBORAH WALKER        | 934 San Felipe de Puerto Plata Street  | 99780    | 196495945706 | Shikarpur                  | Pakistan                              | active |   1 |
        | 226 | MAUREEN LITTLE        | 201 Effon-Alaiye Way                   | 64344    | 684192903087 | Asunción                   | Paraguay                              | active |   2 |
        | 205 | EILEEN CARR           | 1679 Antofagasta Street                | 86599    | 905903574913 | Ciudad del Este            | Paraguay                              | active |   2 |
        | 345 | CARL ARTIS            | 1628 Nagareyama Lane                   | 60079    | 20064292617  | San Lorenzo                | Paraguay                              | active |   1 |
        | 304 | DAVID ROYAL           | 827 Yuncheng Drive                     | 79047    | 504434452842 | Callao                     | Peru                                  | active |   2 |
        | 565 | JAIME NETTLES         | 1746 Faaa Way                          | 32515    | 863080561151 | Huánuco                    | Peru                                  | active |   2 |
        | 122 | THELMA MURRAY         | 1175 Tanauan Way                       | 64615    | 937222955822 | Lima                       | Peru                                  | active |   1 |
        | 597 | FREDDIE DUGGAN        | 1103 Quilmes Boulevard                 | 52137    | 644021380889 | Sullana                    | Peru                                  | active |   1 |
        |  71 | KATHY JAMES           | 492 Cam Ranh Street                    | 50805    | 565018274456 | Baybay                     | Philippines                           | active |   1 |
        | 188 | MELANIE ARMSTRONG     | 1166 Changhwa Street                   | 58852    | 650752094490 | Bayugan                    | Philippines                           | active |   1 |
        |  94 | NORMA GONZALES        | 152 Kitwe Parkway                      | 53182    | 835433605312 | Bislig                     | Philippines                           | active |   1 |
        | 371 | BILLY POULIN          | 1061 Ede Avenue                        | 57810    | 333390595558 | Cabuyao                    | Philippines                           | active |   1 |
        | 388 | CRAIG MORRELL         | 717 Changzhou Lane                     | 21615    | 426255288071 | Cavite                     | Philippines                           | active |   2 |
        |  27 | SHIRLEY ALLEN         | 217 Botshabelo Place                   | 49521    | 665356572025 | Davao                      | Philippines                           | active |   2 |
        | 461 | DEREK BLAKELY         | 118 Jaffna Loop                        | 10447    | 325526730021 | Gingoog                    | Philippines                           | active |   1 |
        | 255 | IRMA PEARSON          | 127 Iwakuni Boulevard                  | 20777    | 987442542471 | Hagonoy                    | Philippines                           | active |   2 |
        | 580 | ROSS GREY             | 951 Springs Lane                       | 96115    | 165164761435 | Iligan                     | Philippines                           | active |   1 |
        | 349 | JOE GILLILAND         | 953 Hodeida Street                     | 18841    | 53912826864  | Imus                       | Philippines                           | active |   2 |
        | 244 | VIOLA HANSON          | 582 Papeete Loop                       | 27722    | 569868543137 | Lapu-Lapu                  | Philippines                           | active |   2 |
        | 263 | HILDA HOPKINS         | 1831 Nam Dinh Loop                     | 51990    | 322888976727 | Mandaluyong                | Philippines                           | active |   1 |
        | 434 | EDDIE TOMLIN          | 1351 Aparecida de Goiânia Parkway      | 41775    | 959834530529 | Ozamis                     | Philippines                           | active |   1 |
        | 522 | ARNOLD HAVENS         | 1176 Southend-on-Sea Manor             | 81651    | 236679267178 | Santa Rosa                 | Philippines                           | active |   2 |
        |  72 | THERESA WATSON        | 89 Allappuzha (Alleppey) Manor         | 75444    | 255800440636 | Taguig                     | Philippines                           | active |   2 |
        | 505 | RAFAEL ABNEY          | 48 Maracaíbo Place                     | 1570     | 82671830126  | Talavera                   | Philippines                           | active |   1 |
        | 373 | LOUIS LEONE           | 1191 Tandil Drive                      | 6362     | 45554316010  | Tanauan                    | Philippines                           | active |   1 |
        | 236 | MARCIA DEAN           | 1479 Rustenburg Boulevard              | 18727    | 727785483194 | Tanza                      | Philippines                           | active |   1 |
        | 548 | ALLAN CORNISH         | 947 Tórshavn Place                     | 841      | 50898428626  | Tarlac                     | Philippines                           | active |   1 |
        | 261 | DEANNA BYRD           | 862 Xintai Lane                        | 30065    | 265153400632 | Tuguegarao                 | Philippines                           | active |   1 |
        | 318 | BRIAN WYMAN           | 1769 Iwaki Lane                        | 25787    | 556100547674 | Bydgoszcz                  | Poland                                | active |   1 |
        | 572 | SIDNEY BURLESON       | 1405 Hagonoy Avenue                    | 86587    | 867287719310 | Czestochowa                | Poland                                | active |   1 |
        | 128 | MARJORIE TUCKER       | 1050 Garden Grove Avenue               | 4999     | 973047364353 | Jastrzebie-Zdrój           | Poland                                | active |   1 |
        | 270 | LEAH CURTIS           | 906 Goiânia Way                        | 83565    | 701767622697 | Kalisz                     | Poland                                | active |   1 |
        | 501 | RUBEN GEARY           | 414 Mandaluyong Street                 | 16370    | 52709222667  | Lublin                     | Poland                                | active |   1 |
        | 571 | JOHNNIE CHISHOLM      | 1501 Pangkal Pinang Avenue             | 943      | 770864062795 | Plock                      | Poland                                | active |   2 |
        | 380 | RUSSELL BRINSON       | 1642 Charlotte Amalie Drive            | 75442    | 821476736117 | Tychy                      | Poland                                | active |   1 |
        | 558 | JIMMIE EGGLESTON      | 505 Madiun Boulevard                   | 97271    | 970638808606 | Wroclaw                    | Poland                                |        |   1 |
        | 360 | RALPH MADRIGAL        | 1009 Zanzibar Lane                     | 64875    | 102396298916 | Arecibo                    | Puerto Rico                           | active |   2 |
        | 282 | JENNY CASTRO          | 1405 Chisinau Place                    | 8160     | 62781725285  | Ponce                      | Puerto Rico                           | active |   2 |
        | 230 | JOY GEORGE            | 1256 Bislig Boulevard                  | 50598    | 479007229460 | Botosani                   | Romania                               | active |   2 |
        | 563 | KEN PREWITT           | 1342 Abha Boulevard                    | 10714    | 997453607116 | Bucuresti                  | Romania                               | active |   2 |
        | 148 | ELEANOR HUNT          | 1952 Pune Lane                         | 92150    | 354615066969 | Saint-Denis                | Réunion                               | active |   1 |
        | 397 | JIMMY SCHRADER        | 616 Hagonoy Avenue                     | 46043    | 604177838256 | Atšinsk                    | Russian Federation                    | active |   1 |
        |  55 | DORIS REED            | 1697 Kowloon and New Kowloon Loop      | 57807    | 499352017190 | Balašiha                   | Russian Federation                    | active |   2 |
        | 430 | RAY HOULE             | 740 Udaipur Lane                       | 33505    | 497288595103 | Dzerzinsk                  | Russian Federation                    | active |   1 |
        |  17 | DONNA THOMPSON        | 270 Toulon Boulevard                   | 81766    | 407752414682 | Elista                     | Russian Federation                    | active |   1 |
        | 106 | CONNIE WALLACE        | 1867 San Juan Bautista Tuxtepec Avenue | 78311    | 547003310357 | Ivanovo                    | Russian Federation                    | active |   1 |
        | 222 | DELORES HANSEN        | 810 Palghat (Palakkad) Boulevard       | 73431    | 516331171356 | Jaroslavl                  | Russian Federation                    | active |   2 |
        | 100 | ROBIN HAYES           | 1913 Kamakura Place                    | 97287    | 942570536750 | Jelets                     | Russian Federation                    | active |   1 |
        | 301 | ROBERT BAUGHMAN       | 1883 Maikop Lane                       | 68469    | 96110042435  | Kaliningrad                | Russian Federation                    | active |   2 |
        | 510 | BEN EASTER            | 886 Tonghae Place                      | 19450    | 711928348157 | Kamyšin                    | Russian Federation                    |        |   2 |
        | 179 | DANA HART             | 1089 Iwatsuki Avenue                   | 35109    | 866092335135 | Kirovo-Tšepetsk            | Russian Federation                    | active |   1 |
        | 295 | DAISY BATES           | 661 Chisinau Lane                      | 8856     | 816436065431 | Kolpino                    | Russian Federation                    | active |   1 |
        | 393 | PHILIP CAUSEY         | 954 Lapu-Lapu Way                      | 8816     | 737229003916 | Korolev                    | Russian Federation                    | active |   1 |
        | 376 | RANDY GAITHER         | 1618 Olomouc Manor                     | 26385    | 96846695220  | Kurgan                     | Russian Federation                    | active |   1 |
        | 311 | PAUL TROUT            | 746 Joliet Lane                        | 94878    | 688485191923 | Kursk                      | Russian Federation                    | active |   2 |
        |  44 | MARIE TURNER          | 1998 Halifax Drive                     | 76022    | 177727722820 | Lipetsk                    | Russian Federation                    | active |   1 |
        | 160 | ERIN DUNN             | 1623 Bahía Blanca Manor                | 81511    | 149981248346 | Ljubertsy                  | Russian Federation                    | active |   2 |
        | 346 | ARTHUR SIMPKINS       | 1157 Nyeri Loop                        | 56380    | 262744791493 | Maikop                     | Russian Federation                    | active |   1 |
        |  46 | CATHERINE CAMPBELL    | 46 Pjatigorsk Lane                     | 23616    | 262076994845 | Moscow                     | Russian Federation                    | active |   2 |
        | 447 | CLIFFORD BOWENS       | 207 Cuernavaca Loop                    | 52671    | 782900030287 | Nabereznyje Tšelny         | Russian Federation                    | active |   1 |
        |  48 | ANN EVANS             | 909 Garland Manor                      | 69367    | 705800322606 | Niznekamsk                 | Russian Federation                    | active |   1 |
        | 191 | JEANETTE GREENE       | 1077 San Felipe de Puerto Plata Place  | 65387    | 812824036424 | Novotšerkassk              | Russian Federation                    | active |   1 |
        | 487 | HECTOR POINDEXTER     | 185 Mannheim Lane                      | 23661    | 589377568313 | Pjatigorsk                 | Russian Federation                    | active |   2 |
        | 567 | ALFREDO MCADAMS       | 1407 Surakarta Manor                   | 33224    | 324346485054 | Serpuhov                   | Russian Federation                    | active |   2 |
        | 127 | ELAINE STEVENS        | 801 Hagonoy Drive                      | 8439     | 237426099212 | Smolensk                   | Russian Federation                    | active |   2 |
        | 428 | HERBERT KRUGER        | 1823 Hoshiarpur Lane                   | 33191    | 307133768620 | Syktyvkar                  | Russian Federation                    | active |   2 |
        | 350 | JUAN FRALEY           | 469 Nakhon Sawan Street                | 58866    | 689199636560 | Tšeboksary                 | Russian Federation                    | active |   1 |
        | 462 | WARREN SHERROD        | 1621 Tongliao Avenue                   | 22173    | 209342540247 | Usolje-Sibirskoje          | Russian Federation                    | active |   2 |
        | 351 | JACK FOUST            | 1378 Beira Loop                        | 40792    | 840957664136 | Zeleznogorsk               | Russian Federation                    | active |   1 |
        | 326 | JOSE ANDREW           | 1016 Iwakuni Street                    | 49833    | 961370847344 | Kingstown                  | Saint Vincent and the Grenadines      | active |   1 |
        | 101 | PEGGY MYERS           | 733 Mandaluyong Place                  | 77459    | 196568435814 | Abha                       | Saudi Arabia                          | active |   1 |
        |  70 | CHRISTINA RAMIREZ     | 1124 Buenaventura Drive                | 6856     | 407733804223 | al-Hawiya                  | Saudi Arabia                          | active |   2 |
        | 417 | TRAVIS ESTEP          | 289 Santo André Manor                  | 72410    | 214976066017 | al-Qatif                   | Saudi Arabia                          | active |   1 |
        |  49 | JOYCE EDWARDS         | 725 Isesaki Place                      | 74428    | 876295323994 | Jedda                      | Saudi Arabia                          | active |   2 |
        | 312 | MARK RINEHART         | 780 Kimberley Way                      | 17032    | 824396883951 | Tabuk                      | Saudi Arabia                          | active |   2 |
        | 456 | RONNIE RICKETTS       | 1889 Valparai Way                      | 75559    | 670370974122 | Ziguinchor                 | Senegal                               | active |   2 |
        | 357 | KEITH RICO            | 482 Kowloon and New Kowloon Manor      | 97056    | 738968474939 | Bratislava                 | Slovakia                              | active |   1 |
        | 125 | ETHEL WEBB            | 569 Baicheng Lane                      | 60304    | 490211944645 | Boksburg                   | South Africa                          | active |   1 |
        | 132 | ESTHER CRAWFORD       | 898 Belém Manor                        | 49757    | 707169393853 | Botshabelo                 | South Africa                          | active |   2 |
        | 555 | DWIGHT LOMBARDI       | 1497 Fengshan Drive                    | 63022    | 368738360376 | Chatsworth                 | South Africa                          | active |   1 |
        | 471 | DEAN SAUER            | 270 Tambaram Parkway                   | 9668     | 248446668735 | Johannesburg               | South Africa                          | active |   1 |
        |  19 | RUTH MARTINEZ         | 1417 Lancaster Avenue                  | 72192    | 272572357893 | Kimberley                  | South Africa                          | active |   1 |
        | 109 | EDNA WEST             | 682 Junan Way                          | 30418    | 622255216127 | Klerksdorp                 | South Africa                          | active |   2 |
        | 432 | EDWIN BURK            | 1766 Almirante Brown Street            | 63104    | 617567598243 | Newcastle                  | South Africa                          | active |   1 |
        | 338 | DENNIS GILMAN         | 1443 Mardan Street                     | 31483    | 231383037471 | Paarl                      | South Africa                          | active |   1 |
        | 407 | DALE RATCLIFF         | 1639 Saarbrücken Drive                 | 9827     | 328494873422 | Rustenburg                 | South Africa                          | active |   1 |
        | 145 | LUCILLE HOLMES        | 999 Sanaa Loop                         | 3439     | 918032330119 | Soshanguve                 | South Africa                          | active |   1 |
        |  83 | LOUISE JENKINS        | 929 Tallahassee Loop                   | 74671    | 800716535041 | Springs                    | South Africa                          | active |   1 |
        |  88 | BONNIE HUGHES         | 1942 Ciparay Parkway                   | 82624    | 978987363654 | Cheju                      | South Korea                           | active |   2 |
        |  99 | EMILY DIAZ            | 588 Vila Velha Manor                   | 51540    | 333339908719 | Kimchon                    | South Korea                           | active |   2 |
        | 237 | TANYA GILBERT         | 647 A Coruña (La Coruña) Street        | 36971    | 792557457753 | Naju                       | South Korea                           | active |   1 |
        | 536 | FERNANDO CHURCHILL    | 193 Bhusawal Place                     | 9750     | 745267607502 | Tonghae                    | South Korea                           | active |   2 |
        | 245 | COURTNEY DAY          | 300 Junan Street                       | 81314    | 890289150158 | Uijongbu                   | South Korea                           | active |   1 |
        |  52 | JULIE SANCHEZ         | 939 Probolinggo Loop                   | 4166     | 680428310138 | A Coruña (La Coruña)       | Spain                                 | active |   1 |
        | 293 | MAE FLETCHER          | 44 Najafabad Way                       | 61391    | 96604821070  | Donostia-San Sebastián     | Spain                                 | active |   2 |
        | 394 | CHRIS BROTHERS        | 331 Bydgoszcz Parkway                  | 966      | 537374465982 | Gijón                      | Spain                                 | active |   2 |
        | 469 | WESLEY BULL           | 1469 Plock Lane                        | 95835    | 622884741180 | Ourense (Orense)           | Spain                                 | active |   2 |
        | 549 | NELSON CHRISTENSON    | 1764 Jalib al-Shuyukh Parkway          | 77642    | 84794532510  | Santiago de Compostela     | Spain                                 | active |   1 |
        | 408 | MANUEL MURRELL        | 692 Amroha Drive                       | 35575    | 359478883004 | Jaffna                     | Sri Lanka                             | active |   1 |
        | 395 | JOHNNY TURPIN         | 1152 Citrus Heights Manor              | 5239     | 765957414528 | al-Qadarif                 | Sudan                                 | active |   2 |
        |  50 | DIANE COLLINS         | 115 Hidalgo Parkway                    | 80168    | 307703950263 | Omdurman                   | Sudan                                 | active |   1 |
        |  66 | JANICE WARD           | 1150 Kimchon Manor                     | 96109    | 663449333709 | Malmö                      | Sweden                                | active |   2 |
        |  61 | KATHERINE RIVERA      | 915 Ponce Place                        | 83980    | 1395251317   | Basel                      | Switzerland                           | active |   2 |
        | 155 | GAIL KNIGHT           | 185 Novi Sad Place                     | 41778    | 904253967161 | Bern                       | Switzerland                           | active |   1 |
        | 598 | WADE DELVALLE         | 1331 Usak Boulevard                    | 61960    | 145308717464 | Lausanne                   | Switzerland                           | active |   1 |
        |  75 | TAMMY SANDERS         | 1551 Rampur Lane                       | 72394    | 251164340471 | Changhwa                   | Taiwan                                | active |   2 |
        |  73 | BEVERLY BROOKS        | 1947 Poços de Caldas Boulevard         | 60951    | 427454485876 | Chiayi                     | Taiwan                                | active |   2 |
        | 517 | BRAD MCCURDY          | 608 Birgunj Parkway                    | 400      | 627425618482 | Chungho                    | Taiwan                                | active |   2 |
        | 576 | MORRIS MCCARTER       | 1568 Celaya Parkway                    | 34750    | 278669994384 | Fengshan                   | Taiwan                                | active |   2 |
        | 348 | ROGER QUINTANILLA     | 381 Kabul Way                          | 87272    | 55477302294  | Hsichuh                    | Taiwan                                | active |   2 |
        |  30 | MELISSA KING          | 1668 Anápolis Street                   | 50199    | 525255540978 | Lungtan                    | Taiwan                                | active |   1 |
        |   5 | ELIZABETH BROWN       | 53 Idfu Parkway                        | 42399    | 10655648674  | Nantou                     | Taiwan                                | active |   1 |
        | 577 | CLIFTON MALCOLM       | 1489 Kakamigahara Lane                 | 98883    | 29341849811  | Tanshui                    | Taiwan                                | active |   2 |
        | 139 | AMBER DIXON           | 1029 Dzerzinsk Manor                   | 57519    | 33173584456  | Touliu                     | Taiwan                                | active |   1 |
        | 586 | KIRK STCLAIR          | 1923 Stara Zagora Lane                 | 95179    | 182178609211 | Tsaotun                    | Taiwan                                | active |   1 |
        | 481 | HERMAN DEVORE         | 64 Korla Street                        | 25145    | 510383179153 | Mwanza                     | Tanzania                              | active |   1 |
        | 190 | YOLANDA WEAVER        | 605 Rio Claro Parkway                  | 49348    | 352469351088 | Tabora                     | Tanzania                              | active |   2 |
        | 220 | CHARLENE ALVAREZ      | 1842 Luziânia Boulevard                | 94420    | 706878974831 | Zanzibar                   | Tanzania                              | active |   2 |
        | 390 | SHAWN HEATON          | 1337 Mit Ghamr Avenue                  | 29810    | 175283210378 | Nakhon Sawan               | Thailand                              | active |   1 |
        |  42 | CAROLYN PEREZ         | 1632 Bislig Avenue                     | 61117    | 471675840679 | Pak Kret                   | Thailand                              | active |   2 |
        |  86 | JACQUELINE LONG       | 870 Ashqelon Loop                      | 84931    | 135117278909 | Songkhla                   | Thailand                              | active |   2 |
        | 344 | HENRY BILLINGSLEY     | 1516 Escobar Drive                     | 46069    | 64536069371  | Nuku´alofa                 | Tonga                                 | active |   1 |
        | 335 | GREGORY MAULDIN       | 507 Smolensk Loop                      | 22971    | 80303246192  | Sousse                     | Tunisia                               | active |   1 |
        | 327 | LARRY THRASHER        | 663 Bahía Blanca Parkway               | 33463    | 834418779292 | Adana                      | Turkey                                | active |   2 |
        | 366 | BRANDON HUEY          | 1912 Emeishan Drive                    | 33050    | 99883471275  | Balikesir                  | Turkey                                | active |   1 |
        | 172 | BERNICE WILLIS        | 29 Pyongyang Loop                      | 47753    | 734780743462 | Batman                     | Turkey                                | active |   1 |
        | 483 | VERNON CHAPA          | 698 Jelets Boulevard                   | 2596     | 975185523021 | Denizli                    | Turkey                                | active |   2 |
        | 507 | EDGAR RHOADS          | 1269 Ipoh Avenue                       | 54674    | 402630109080 | Eskisehir                  | Turkey                                | active |   2 |
        | 480 | COREY HAUSER          | 984 Novotšerkassk Loop                 | 28165    | 435118527255 | Gaziantep                  | Turkey                                | active |   1 |
        | 278 | BILLIE HORTON         | 457 Tongliao Loop                      | 56254    | 880756161823 | Inegöl                     | Turkey                                | active |   2 |
        | 143 | LESLIE GORDON         | 374 Bat Yam Boulevard                  | 97700    | 923261616249 | Kilis                      | Turkey                                | active |   1 |
        | 124 | SHEILA WELLS          | 848 Tafuna Manor                       | 45142    | 614935229095 | Kütahya                    | Turkey                                |        |   1 |
        |  13 | KAREN JACKSON         | 270 Amroha Parkway                     | 29610    | 695479687538 | Osmaniye                   | Turkey                                | active |   2 |
        | 518 | GABRIEL HARDER        | 680 A Coruña (La Coruña) Manor         | 49806    | 158326114853 | Sivas                      | Turkey                                | active |   1 |
        | 493 | BRENT HARKINS         | 319 Plock Parkway                      | 26101    | 854259976812 | Sultanbeyli                | Turkey                                | active |   1 |
        | 164 | JOANN GARDNER         | 842 Salzburg Lane                      | 3313     | 697151428760 | Tarsus                     | Turkey                                | active |   2 |
        | 566 | CASEY MENA            | 539 Hami Way                           | 52196    | 525518075499 | Tokat                      | Turkey                                | active |   1 |
        | 204 | ROSEMARY SCHMIDT      | 1215 Pyongyang Parkway                 | 25238    | 646237101779 | Usak                       | Turkey                                | active |   1 |
        | 200 | JEANNE LAWSON         | 387 Mwene-Ditu Drive                   | 8073     | 764477681869 | Ashgabat                   | Turkmenistan                          | active |   2 |
        | 105 | DAWN SULLIVAN         | 454 Nakhon Sawan Boulevard             | 76383    | 963887147572 | Funafuti                   | Tuvalu                                | active |   1 |
        | 386 | TODD TAN              | 1793 Meixian Place                     | 33535    | 619966287415 | Kamjanets-Podilskyi        | Ukraine                               | active |   1 |
        | 545 | JULIO NOLAND          | 182 Nuku´alofa Drive                   | 15414    | 426346224043 | Konotop                    | Ukraine                               | active |   2 |
        | 131 | MONICA HICKS          | 1752 São Leopoldo Parkway              | 14014    | 252265130067 | Mukatševe                  | Ukraine                               | active |   2 |
        | 475 | PEDRO CHESTNUT        | 421 Yaoundé Street                     | 11363    | 726875628268 | Šostka                     | Ukraine                               | active |   2 |
        |  82 | KATHRYN COLEMAN       | 927 Bahía Blanca Parkway               | 9495     | 821972242086 | Simferopol                 | Ukraine                               | active |   1 |
        | 187 | BRITTANY RILEY        | 140 Chiayi Parkway                     | 38982    | 855863906434 | Sumy                       | Ukraine                               | active |   2 |
        | 452 | TOM MILNER            | 535 Ahmadnagar Manor                   | 41136    | 985109775584 | Abu Dhabi                  | United Arab Emirates                  | active |   1 |
        |  98 | LILLIAN GRIFFIN       | 669 Firozabad Loop                     | 92265    | 412903167998 | al-Ayn                     | United Arab Emirates                  | active |   1 |
        | 292 | MISTY LAMBERT         | 1192 Tongliao Street                   | 19065    | 350970907017 | Sharja                     | United Arab Emirates                  | active |   2 |
        |  85 | ANNE POWELL           | 1557 Kütahya Boulevard                 | 88002    | 720998247660 | Bradford                   | United Kingdom                        | active |   2 |
        | 142 | APRIL BURNS           | 483 Ljubertsy Parkway                  | 60562    | 581174211853 | Dundee                     | United Kingdom                        | active |   1 |
        | 252 | MATTIE HOFFMAN        | 1497 Yuzhou Drive                      | 3433     | 246810237916 | London                     | United Kingdom                        | active |   2 |
        | 512 | CECIL VINES           | 548 Uruapan Street                     | 35653    | 879347453467 | London                     | United Kingdom                        | active |   1 |
        | 583 | MARSHALL THORN        | 1584 Ljubertsy Lane                    | 22954    | 285710089439 | Southampton                | United Kingdom                        | active |   1 |
        |  16 | SANDRA MARTIN         | 360 Toulouse Parkway                   | 54308    | 949312333307 | Southend-on-Sea            | United Kingdom                        |        |   2 |
        | 556 | ARMANDO GRUBER        | 869 Shikarpur Way                      | 57380    | 590764256785 | Southport                  | United Kingdom                        | active |   2 |
        | 477 | DAN PAINE             | 808 Naçala-Porto Parkway               | 41060    | 553452430707 | Stockport                  | United Kingdom                        | active |   1 |
        | 497 | GILBERT SLEDGE        | 1515 Korla Way                         | 57197    | 959467760895 | York                       | United Kingdom                        | active |   2 |
        | 479 | ZACHARY HITE          | 98 Pyongyang Boulevard                 | 88749    | 191958435142 | Akron                      | United States                         | active |   1 |
        | 305 | RICHARD MCCRARY       | 913 Coacalco de Berriozábal Loop       | 42141    | 262088367001 | Arlington                  | United States                         | active |   1 |
        |  96 | DIANA ALEXANDER       | 1308 Arecibo Way                       | 30695    | 6171054059   | Augusta-Richmond County    | United States                         | active |   1 |
        | 330 | SCOTT SHELLEY         | 587 Benguela Manor                     | 91590    | 165450987037 | Aurora                     | United States                         | active |   1 |
        | 537 | CLINTON BUFORD        | 43 Vilnius Manor                       | 79814    | 484500282381 | Aurora                     | United States                         | active |   2 |
        | 212 | WILMA RICHARDS        | 660 Jedda Boulevard                    | 25053    | 168758068397 | Bellevue                   | United States                         | active |   2 |
        | 149 | VALERIE BLACK         | 782 Mosul Street                       | 25545    | 885899703621 | Brockton                   | United States                         | active |   1 |
        | 526 | KARL SEAL             | 1427 Tabuk Place                       | 31342    | 214756839122 | Cape Coral                 | United States                         | active |   2 |
        |  14 | BETTY WHITE           | 770 Bydgoszcz Avenue                   | 16266    | 517338314235 | Citrus Heights             | United States                         | active |   2 |
        | 140 | EVA RAMOS             | 1666 Beni-Mellal Place                 | 13377    | 9099941466   | Clarksville                | United States                         | active |   1 |
        | 182 | RENEE LANE            | 533 al-Ayn Boulevard                   | 8862     | 662227486184 | Compton                    | United States                         | active |   1 |
        | 400 | BRYAN HARDISON        | 530 Lausanne Lane                      | 11067    | 775235029633 | Dallas                     | United States                         | active |   2 |
        | 294 | SHELLY WATTS          | 32 Pudukkottai Lane                    | 38834    | 967274728547 | Dayton                     | United States                         | active |   2 |
        | 420 | JACOB LANCE           | 1866 al-Qatif Avenue                   | 89420    | 546793516940 | El Monte                   | United States                         | active |   1 |
        |  51 | ALICE STEWART         | 1135 Izumisano Parkway                 | 48150    | 171822533480 | Fontana                    | United States                         | active |   1 |
        | 593 | RENE MCALISTER        | 1895 Zhezqazghan Drive                 | 36693    | 137809746111 | Garden Grove               | United States                         | active |   2 |
        | 561 | IAN STILL             | 1894 Boa Vista Way                     | 77464    | 239357986667 | Garland                    | United States                         | active |   2 |
        | 118 | KIM CRUZ              | 333 Goiânia Way                        | 78625    | 909029256431 | Grand Prairie              | United States                         | active |   1 |
        | 158 | VERONICA STONE        | 369 Papeete Way                        | 66639    | 170117068815 | Greensboro                 | United States                         | active |   1 |
        | 504 | NATHANIEL ADAM        | 786 Matsue Way                         | 37469    | 111177206479 | Joliet                     | United States                         | active |   1 |
        | 308 | THOMAS GRIGSBY        | 1191 Sungai Petani Boulevard           | 9668     | 983259819766 | Kansas City                | United States                         | active |   1 |
        | 112 | ROSA REYNOLDS         | 793 Cam Ranh Avenue                    | 87057    | 824370924746 | Lancaster                  | United States                         | active |   2 |
        |   6 | JENNIFER DAVIS        | 1795 Santiago de Compostela Way        | 18743    | 860452626434 | Laredo                     | United States                         | active |   2 |
        |  63 | ASHLEY RICHARDSON     | 1214 Hanoi Way                         | 67055    | 491001136577 | Lincoln                    | United States                         | active |   1 |
        | 382 | VICTOR BARKLEY        | 401 Sucre Boulevard                    | 25007    | 486395999608 | Manchester                 | United States                         | active |   2 |
        | 181 | ANA BRADLEY           | 682 Garden Grove Place                 | 67497    | 72136330362  | Memphis                    | United States                         | active |   2 |
        | 275 | CAROLE BARNETT        | 1980 Kamjanets-Podilskyi Street        | 89502    | 874337098891 | Peoria                     | United States                         | active |   2 |
        | 291 | TONI HOLT             | 1936 Cumaná Avenue                     | 61195    | 976798660411 | Roanoke                    | United States                         | active |   1 |
        | 457 | BILL GAVIN            | 1485 Bratislava Place                  | 83183    | 924663855568 | Rockford                   | United States                         | active |   2 |
        |  62 | JOAN COOPER           | 1717 Guadalajara Lane                  | 85505    | 914090181665 | Saint Louis                | United States                         | active |   1 |
        | 269 | CASSANDRA WALTERS     | 920 Kumbakonam Loop                    | 75090    | 685010736240 | Salinas                    | United States                         | active |   1 |
        |   2 | PATRICIA JOHNSON      | 1121 Loja Avenue                       | 17886    | 838635286649 | San Bernardino             | United States                         | active |   1 |
        | 146 | JAMIE RICE            | 879 Newcastle Way                      | 90732    | 206841104594 | Sterling Heights           | United States                         | active |   1 |
        | 214 | KRISTIN JOHNSTON      | 226 Brest Manor                        | 2299     | 785881412500 | Sunnyvale                  | United States                         | active |   1 |
        | 248 | CAROLINE BOWMAN       | 1309 Weifang Street                    | 57338    | 435785045362 | Tallahassee                | United States                         | active |   1 |
        | 276 | BRANDY GRAVES         | 1944 Bamenda Way                       | 24645    | 75975221996  | Warren                     | United States                         | active |   1 |
        | 568 | ALBERTO HENNING       | 502 Mandi Bahauddin Parkway            | 15992    | 618156722572 | Barcelona                  | Venezuela                             | active |   2 |
        | 111 | CARMEN OWENS          | 1378 Alvorada Avenue                   | 75834    | 272234298332 | Caracas                    | Venezuela                             | active |   1 |
        | 113 | CINDY FISHER          | 1079 Tel Aviv-Jaffa Boulevard          | 10885    | 358178933857 | Cumaná                     | Venezuela                             | active |   2 |
        | 453 | CALVIN MARTEL         | 138 Caracas Boulevard                  | 16790    | 974433019532 | Maracaíbo                  | Venezuela                             | active |   1 |
        | 174 | YVONNE WATKINS        | 1848 Salala Boulevard                  | 25220    | 48265851133  | Ocumare del Tuy            | Venezuela                             | active |   2 |
        | 539 | MATHEW BOLIN          | 163 Augusta-Richmond County Loop       | 33030    | 754579047924 | Valencia                   | Venezuela                             | active |   1 |
        | 290 | KRISTINA CHAMBERS     | 544 Tarsus Boulevard                   | 53145    | 892523334    | Valle de la Pascua         | Venezuela                             | active |   1 |
        | 532 | NEIL RENNER           | 1817 Livorno Way                       | 79401    | 478380208348 | Cam Ranh                   | Vietnam                               | active |   2 |
        | 199 | BETH FRANKLIN         | 1149 A Coruña (La Coruña) Boulevard    | 95824    | 470884141195 | Haiphong                   | Vietnam                               | active |   2 |
        | 340 | PATRICK NEWSOM        | 68 Ponce Parkway                       | 85926    | 870635127812 | Hanoi                      | Vietnam                               | active |   1 |
        | 472 | GREG ROBINS           | 1786 Salinas Place                     | 66546    | 206060652238 | Nam Dinh                   | Vietnam                               | active |   1 |
        | 520 | MITCHELL WESTMORELAND | 617 Klerksdorp Place                   | 94707    | 574973479129 | Nha Trang                  | Vietnam                               | active |   2 |
        | 523 | HARVEY GUAJARDO       | 600 Purnea (Purnia) Avenue             | 18043    | 638409958875 | Vinh                       | Vietnam                               | active |   1 |
        | 406 | NATHAN RUNYON         | 264 Bhimavaram Manor                   | 54749    | 302526949177 | Charlotte Amalie           | Virgin Islands, U.S.                  |        |   1 |
        | 210 | ELLA OLIVER           | 751 Lima Loop                          | 99405    | 756460337785 | Aden                       | Yemen                                 | active |   2 |
        | 470 | GORDON ALLARD         | 434 Ourense (Orense) Manor             | 14122    | 562370137426 | Hodeida                    | Yemen                                 | active |   1 |
        | 303 | WILLIAM SATTERFIELD   | 687 Alessandria Parkway                | 57587    | 407218522294 | Sanaa                      | Yemen                                 | active |   2 |
        | 213 | GINA WILLIAMSON       | 1001 Miyakonojo Lane                   | 67924    | 584316724815 | Taizz                      | Yemen                                 | active |   1 |
        |   7 | MARIA MILLER          | 900 Santiago de Compostela Parkway     | 93896    | 716571220373 | Kragujevac                 | Yugoslavia                            | active |   1 |
        | 553 | MAX PITT              | 1917 Kumbakonam Parkway                | 11892    | 698182547686 | Novi Sad                   | Yugoslavia                            | active |   1 |
        | 438 | BARRY LOVELACE        | 1836 Korla Parkway                     | 55405    | 689681677428 | Kitwe                      | Zambia                                | active |   1 |
        +-----+-----------------------+----------------------------------------+----------+--------------+----------------------------+---------------------------------------+--------+-----+
        599 rows in set (0,03 sec)
        **/

        -- Vista 2:
        select * from film_list LIMIT 10;
        /**
        +-----+------------------+-----------------------------------------------------------------------------------------------------------------------+-------------+-------+--------+--------+------------------------------------------------------------------------------------------------------------------------------------------------+
        | FID | title            | description                                                                                                           | category    | price | length | rating | actors                                                                                                                                         |
        +-----+------------------+-----------------------------------------------------------------------------------------------------------------------+-------------+-------+--------+--------+------------------------------------------------------------------------------------------------------------------------------------------------+
        |   1 | ACADEMY DINOSAUR | A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies                      | Documentary |  0.99 |     86 | PG     | CHRISTIAN GABLE, LUCILLE TRACY, SANDRA PECK, JOHNNY CAGE, MENA TEMPLE, WARREN NOLTE, OPRAH KILMER, ROCK DUKAKIS, MARY KEITEL, PENELOPE GUINESS |
        |   2 | ACE GOLDFINGER   | A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China                  | Horror      |  4.99 |     48 | G      | CHRIS DEPP, SEAN GUINESS, MINNIE ZELLWEGER, BOB FAWCETT                                                                                        |
        |   3 | ADAPTATION HOLES | A Astounding Reflection of a Lumberjack And a Car who must Sink a Lumberjack in A Baloon Factory                      | Documentary |  2.99 |     50 | NC-17  | NICK WAHLBERG, BOB FAWCETT, CAMERON STREEP, RAY JOHANSSON, JULIANNE DENCH                                                                      |
        |   4 | AFFAIR PREJUDICE | A Fanciful Documentary of a Frisbee And a Lumberjack who must Chase a Monkey in A Shark Tank                          | Horror      |  2.99 |    117 | G      | JODIE DEGENERES, SCARLETT DAMON, KENNETH PESCI, FAY WINSLET, OPRAH KILMER                                                                      |
        |   5 | AFRICAN EGG      | A Fast-Paced Documentary of a Pastry Chef And a Dentist who must Pursue a Forensic Psychologist in The Gulf of Mexico | Family      |  2.99 |    130 | G      | DUSTIN TAUTOU, THORA TEMPLE, MATTHEW CARREY, MATTHEW LEIGH, GARY PHOENIX                                                                       |
        |   6 | AGENT TRUMAN     | A Intrepid Panorama of a Robot And a Boy who must Escape a Sumo Wrestler in Ancient China                             | Foreign     |  2.99 |    169 | PG     | KIRSTEN PALTROW, SANDRA KILMER, JAYNE NEESON, WARREN NOLTE, MORGAN WILLIAMS, KENNETH HOFFMAN, REESE WEST                                       |
        |   7 | AIRPLANE SIERRA  | A Touching Saga of a Hunter And a Butler who must Discover a Butler in A Jet Boat                                     | Comedy      |  4.99 |     62 | PG-13  | RICHARD PENN, MICHAEL BOLGER, MENA HOPPER, OPRAH KILMER, JIM MOSTEL                                                                            |
        |   8 | AIRPORT POLLOCK  | A Epic Tale of a Moose And a Girl who must Confront a Monkey in Ancient India                                         | Horror      |  4.99 |     54 | R      | FAY KILMER, GENE WILLIS, SUSAN DAVIS, LUCILLE DEE                                                                                              |
        |   9 | ALABAMA DEVIL    | A Thoughtful Panorama of a Database Administrator And a Mad Scientist who must Outgun a Mad Scientist in A Jet Boat   | Horror      |  2.99 |    114 | PG-13  | WARREN NOLTE, GRETA KEITEL, WILLIAM HACKMAN, MERYL ALLEN, CHRISTIAN GABLE, MENA TEMPLE, RIP WINSLET, ELVIS MARX, RIP CRAWFORD                  |
        |  10 | ALADDIN CALENDAR | A Action-Packed Tale of a Man And a Lumberjack who must Reach a Feminist in Ancient China                             | Sports      |  4.99 |     63 | NC-17  | ALEC WAYNE, JUDY DEAN, VAL BOLGER, RAY JOHANSSON, RENEE TRACY, JADA RYDER, GRETA MALDEN, ROCK DUKAKIS                                          |
        +-----+------------------+-----------------------------------------------------------------------------------------------------------------------+-------------+-------+--------+--------+------------------------------------------------------------------------------------------------------------------------------------------------+
        10 rows in set (0,07 sec)

        **/
  -- Crea 5 vistas sobre la BBDD, y realizar la consulta, para mostrar los resultados. Las vistas deben de tener 3 o más tablas de la BBDD.
    -- Vista 1:
    CREATE VIEW ED_CHASE_INFO AS (select a.first_name, a.last_name, COUNT(f.film_id) AS num_films from actor a JOIN film_actor fa ON a.actor_id = fa.actor_id JOIN film f on f.film_id = fa.film_id WHERE a.first_name = 'ED' and a.last_name = 'CHASE');
    select * from ED_CHASE_INFO;

    /**
    +------------+-----------+-----------+
    | first_name | last_name | num_films |
    +------------+-----------+-----------+
    | ED         | CHASE     |        22 |
    +------------+-----------+-----------+
    1 row in set (0,00 sec)
    **/

    -- Vista 2:
    CREATE VIEW FILM_ACTOR_NAMES_10 AS (select f.title, a.first_name from film f JOIN film_actor fa ON f.film_id = fa.film_id JOIN actor a ON a.actor_id = fa.actor_id LIMIT 10);
    select * from FILM_ACTOR_NAMES_10;

    /**
    +-----------------------+------------+
    | title                 | first_name |
    +-----------------------+------------+
    | ACADEMY DINOSAUR      | PENELOPE   |
    | ANACONDA CONFESSIONS  | PENELOPE   |
    | ANGELS LIFE           | PENELOPE   |
    | BULWORTH COMMANDMENTS | PENELOPE   |
    | CHEAPER CLYDE         | PENELOPE   |
    | COLOR PHILADELPHIA    | PENELOPE   |
    | ELEPHANT TROJAN       | PENELOPE   |
    | GLEAMING JAWBREAKER   | PENELOPE   |
    | HUMAN GRAFFITI        | PENELOPE   |
    | KING EVOLUTION        | PENELOPE   |
    +-----------------------+------------+
    10 rows in set (0,00 sec)
    **/

    -- Vista 3:
    CREATE VIEW AVERAGE_FILM_LENGTH AS (select c.name, ROUND(AVG(f.length),2) AS avg_film_category from film f JOIN film_category fc ON f.film_id = fc.film_id JOIN category c ON c.category_id = fc.category_id GROUP BY c.name ORDER BY c.name);
    select * from AVERAGE_FILM_LENGTH;

    /**
    +-------------+-------------------+
    | name        | avg_film_category |
    +-------------+-------------------+
    | Action      |            111.61 |
    | Animation   |            111.02 |
    | Children    |            109.80 |
    | Classics    |            111.67 |
    | Comedy      |            115.83 |
    | Documentary |            108.75 |
    | Drama       |            120.84 |
    | Family      |            114.78 |
    | Foreign     |            121.70 |
    | Games       |            127.84 |
    | Horror      |            112.48 |
    | Music       |            113.65 |
    | New         |            111.13 |
    | Sci-Fi      |            108.20 |
    | Sports      |            128.20 |
    | Travel      |            113.32 |
    +-------------+-------------------+
    16 rows in set (0,00 sec)
    **/

    -- Vista 4:
    CREATE VIEW CATEGORY_FILMS AS (select f.title, c.name as Category from film f JOIN film_category fc ON f.film_id = fc.film_id JOIN category c ON  c.category_id = fc.category_id LIMIT 30);
    select * from CATEGORY_FILMS;

    /**
    +-----------------------------+-------------+
    | title                       | Category    |
    +-----------------------------+-------------+
    | AMADEUS HOLY                | Action      |
    | AMERICAN CIRCUS             | Action      |
    | ANTITRUST TOMATOES          | Action      |
    | ARK RIDGEMONT               | Action      |
    | BAREFOOT MANCHURIAN         | Action      |
    | BERETS AGENT                | Action      |
    | BRIDE INTRIGUE              | Action      |
    | BULL SHAWSHANK              | Action      |
    | CADDYSHACK JEDI             | Action      |
    | CAMPUS REMEMBER             | Action      |
    | CASUALTIES ENCINO           | Action      |
    | CELEBRITY HORN              | Action      |
    | CLUELESS BUCKET             | Action      |
    | CROW GREASE                 | Action      |
    | DANCES NONE                 | Action      |
    | DARKO DORADO                | Action      |
    | DARN FORRESTER              | Action      |
    | DEVIL DESIRE                | Action      |
    | DRAGON SQUAD                | Action      |
    | DREAM PICKUP                | Action      |
    | DRIFTER COMMANDMENTS        | Action      |
    | EASY GLADIATOR              | Action      |
    | ENTRAPMENT SATISFACTION     | Action      |
    | EXCITEMENT EVE              | Action      |
    | FANTASY TROOPERS            | Action      |
    | FIREHOUSE VIETNAM           | Action      |
    | FOOL MOCKINGBIRD            | Action      |
    | FORREST SONS                | Action      |
    | GLASS DYING                 | Action      |
    | GOSFORD DONNIE              | Action      |
    | GRAIL FRANKENSTEIN          | Action      |
    | HANDICAP BOONDOCK           | Action      |
    | HILLS NEIGHBORS             | Action      |
    | KISSING DOLLS               | Action      |
    | LAWRENCE LOVE               | Action      |
    | LORD ARIZONA                | Action      |
    | LUST LOCK                   | Action      |
    | MAGNOLIA FORRESTER          | Action      |
    | MIDNIGHT WESTWARD           | Action      |
    | MINDS TRUMAN                | Action      |
    | MOCKINGBIRD HOLLYWOOD       | Action      |
    | MONTEZUMA COMMAND           | Action      |
    | PARK CITIZEN                | Action      |
    | PATRIOT ROMAN               | Action      |
    | PRIMARY GLASS               | Action      |
    | QUEST MUSSOLINI             | Action      |
    | REAR TRADING                | Action      |
    | RINGS HEARTBREAKERS         | Action      |
    | RUGRATS SHAKESPEARE         | Action      |
    | SHRUNK DIVINE               | Action      |
    | SIDE ARK                    | Action      |
    | SKY MIRACLE                 | Action      |
    | SOUTH WAIT                  | Action      |
    | SPEAKEASY DATE              | Action      |
    | STAGECOACH ARMAGEDDON       | Action      |
    | STORY SIDE                  | Action      |
    | SUSPECTS QUILLS             | Action      |
    | TRIP NEWTON                 | Action      |
    | TRUMAN CRAZY                | Action      |
    | UPRISING UPTOWN             | Action      |
    | WATERFRONT DELIVERANCE      | Action      |
    | WEREWOLF LOLA               | Action      |
    | WOMEN DORADO                | Action      |
    | WORST BANGER                | Action      |
    | ALTER VICTORY               | Animation   |
    | ANACONDA CONFESSIONS        | Animation   |
    | ARGONAUTS TOWN              | Animation   |
    | BIKINI BORROWERS            | Animation   |
    | BLACKOUT PRIVATE            | Animation   |
    | BORROWERS BEDAZZLED         | Animation   |
    | CANYON STOCK                | Animation   |
    | CAROL TEXAS                 | Animation   |
    | CHAMPION FLATLINERS         | Animation   |
    | CLASH FREDDY                | Animation   |
    | CLUB GRAFFITI               | Animation   |
    | CROSSROADS CASUALTIES       | Animation   |
    | DARES PLUTO                 | Animation   |
    | DESIRE ALIEN                | Animation   |
    | DOGMA FAMILY                | Animation   |
    | DONNIE ALLEY                | Animation   |
    | DOORS PRESIDENT             | Animation   |
    | DOUBLE WRATH                | Animation   |
    | DUCK RACER                  | Animation   |
    | EARLY HOME                  | Animation   |
    | FALCON VOLUME               | Animation   |
    | FIGHT JAWBREAKER            | Animation   |
    | FLOATS GARDEN               | Animation   |
    | FLYING HOOK                 | Animation   |
    | FORRESTER COMANCHEROS       | Animation   |
    | GANGS PRIDE                 | Animation   |
    | GHOSTBUSTERS ELF            | Animation   |
    | HARPER DYING                | Animation   |
    | HOOK CHARIOTS               | Animation   |
    | HORN WORKING                | Animation   |
    | INCH JET                    | Animation   |
    | INSECTS STONE               | Animation   |
    | INTENTIONS EMPIRE           | Animation   |
    | ISHTAR ROCKETEER            | Animation   |
    | JUGGLER HARDLY              | Animation   |
    | LAWLESS VISION              | Animation   |
    | LUKE MUMMY                  | Animation   |
    | MASSAGE IMAGE               | Animation   |
    | MENAGERIE RUSHMORE          | Animation   |
    | MIRACLE VIRTUAL             | Animation   |
    | MISSION ZOOLANDER           | Animation   |
    | NASH CHOCOLAT               | Animation   |
    | OSCAR GOLD                  | Animation   |
    | OZ LIAISONS                 | Animation   |
    | PACKER MADIGAN              | Animation   |
    | POND SEATTLE                | Animation   |
    | POTLUCK MIXED               | Animation   |
    | POTTER CONNECTICUT          | Animation   |
    | PRIDE ALAMO                 | Animation   |
    | PUNK DIVORCE                | Animation   |
    | ROOM ROMAN                  | Animation   |
    | SLEEPLESS MONSOON           | Animation   |
    | SNOWMAN ROLLERCOASTER       | Animation   |
    | SONS INTERVIEW              | Animation   |
    | STORM HAPPINESS             | Animation   |
    | SUGAR WONKA                 | Animation   |
    | SUNRISE LEAGUE              | Animation   |
    | TELEMARK HEARTBREAKERS      | Animation   |
    | THEORY MERMAID              | Animation   |
    | THIEF PELICAN               | Animation   |
    | TITANIC BOONDOCK            | Animation   |
    | TRACY CIDER                 | Animation   |
    | TURN STAR                   | Animation   |
    | WAIT CIDER                  | Animation   |
    | WATCH TRACY                 | Animation   |
    | WONKA SEA                   | Animation   |
    | BACKLASH UNDEFEATED         | Children    |
    | BEAR GRACELAND              | Children    |
    | BENEATH RUSH                | Children    |
    | BETRAYED REAR               | Children    |
    | CABIN FLASH                 | Children    |
    | CASPER DRAGONFLY            | Children    |
    | CHRISTMAS MOONSHINE         | Children    |
    | CIRCUS YOUTH                | Children    |
    | CLOCKWORK PARADISE          | Children    |
    | COMANCHEROS ENEMY           | Children    |
    | CROOKED FROGMEN             | Children    |
    | DAUGHTER MADIGAN            | Children    |
    | DOCTOR GRAIL                | Children    |
    | EMPIRE MALKOVICH            | Children    |
    | FARGO GANDHI                | Children    |
    | FOREVER CANDIDATE           | Children    |
    | FULL FLATLINERS             | Children    |
    | FURY MURDER                 | Children    |
    | GHOST GROUNDHOG             | Children    |
    | GIANT TROOPERS              | Children    |
    | GORGEOUS BINGO              | Children    |
    | GRADUATE LORD               | Children    |
    | HALL CASSIDY                | Children    |
    | HEARTBREAKERS BRIGHT        | Children    |
    | HOLLYWOOD ANONYMOUS         | Children    |
    | HOLOCAUST HIGHBALL          | Children    |
    | IDOLS SNATCHERS             | Children    |
    | INVASION CYCLONE            | Children    |
    | JERSEY SASSY                | Children    |
    | JUMPING WRATH               | Children    |
    | LABYRINTH LEAGUE            | Children    |
    | LANGUAGE COWBOY             | Children    |
    | LEGALLY SECRETARY           | Children    |
    | MAGIC MALLRATS              | Children    |
    | MAKER GABLES                | Children    |
    | MICROCOSMOS PARADISE        | Children    |
    | MODEL FISH                  | Children    |
    | MURDER ANTITRUST            | Children    |
    | NOON PAPI                   | Children    |
    | POLISH BROOKLYN             | Children    |
    | ROBBERS JOON                | Children    |
    | SABRINA MIDNIGHT            | Children    |
    | SANTA PARIS                 | Children    |
    | SCARFACE BANG               | Children    |
    | SHEPHERD MIDSUMMER          | Children    |
    | SISTER FREDDY               | Children    |
    | SPLENDOR PATTON             | Children    |
    | STRANGELOVE DESIRE          | Children    |
    | STRANGER STRANGERS          | Children    |
    | SUNDANCE INVASION           | Children    |
    | SWEETHEARTS SUSPECTS        | Children    |
    | TEQUILA PAST                | Children    |
    | TIES HUNGER                 | Children    |
    | TOOTSIE PILOT               | Children    |
    | TWISTED PIRATES             | Children    |
    | UPTOWN YOUNG                | Children    |
    | WALLS ARTIST                | Children    |
    | WARLOCK WEREWOLF            | Children    |
    | WRONG BEHAVIOR              | Children    |
    | ZOOLANDER FICTION           | Children    |
    | ALICE FANTASIA              | Classics    |
    | ARIZONA BANG                | Classics    |
    | BEAST HUNCHBACK             | Classics    |
    | BOUND CHEAPER               | Classics    |
    | CANDIDATE PERDITION         | Classics    |
    | CENTER DINOSAUR             | Classics    |
    | COLOR PHILADELPHIA          | Classics    |
    | CONSPIRACY SPIRIT           | Classics    |
    | CORE SUIT                   | Classics    |
    | CREEPERS KANE               | Classics    |
    | CRUELTY UNFORGIVEN          | Classics    |
    | DETECTIVE VISION            | Classics    |
    | DRACULA CRYSTAL             | Classics    |
    | DYNAMITE TARZAN             | Classics    |
    | EXTRAORDINARY CONQUERER     | Classics    |
    | FROST HEAD                  | Classics    |
    | GALAXY SWEETHEARTS          | Classics    |
    | GILBERT PELICAN             | Classics    |
    | GILMORE BOILED              | Classics    |
    | HOLY TADPOLE                | Classics    |
    | HOPE TOOTSIE                | Classics    |
    | HYDE DOCTOR                 | Classics    |
    | IRON MOON                   | Classics    |
    | ISLAND EXORCIST             | Classics    |
    | JEEPERS WEDDING             | Classics    |
    | JEOPARDY ENCINO             | Classics    |
    | JERK PAYCHECK               | Classics    |
    | JINGLE SAGEBRUSH            | Classics    |
    | LEAGUE HELLFIGHTERS         | Classics    |
    | LIGHTS DEER                 | Classics    |
    | LOATHING LEGALLY            | Classics    |
    | LOVELY JINGLE               | Classics    |
    | LOVER TRUMAN                | Classics    |
    | MAGNIFICENT CHITTY          | Classics    |
    | MALKOVICH PET               | Classics    |
    | MILLION ACE                 | Classics    |
    | MUSKETEERS WAIT             | Classics    |
    | OCTOBER SUBMARINE           | Classics    |
    | PAJAMA JAWBREAKER           | Classics    |
    | PATIENT SISTER              | Classics    |
    | PREJUDICE OLEANDER          | Classics    |
    | REQUIEM TYCOON              | Classics    |
    | RIGHT CRANES                | Classics    |
    | ROOTS REMEMBER              | Classics    |
    | SLING LUKE                  | Classics    |
    | SNATCHERS MONTEZUMA         | Classics    |
    | SPIKING ELEMENT             | Classics    |
    | STEEL SANTA                 | Classics    |
    | SUMMER SCARFACE             | Classics    |
    | TADPOLE PARK                | Classics    |
    | TIMBERLAND SKY              | Classics    |
    | TOMORROW HUSTLER            | Classics    |
    | TOWERS HURRICANE            | Classics    |
    | VOLUME HOUSE                | Classics    |
    | VOYAGE LEGALLY              | Classics    |
    | WASTELAND DIVINE            | Classics    |
    | WESTWARD SEABISCUIT         | Classics    |
    | AIRPLANE SIERRA             | Comedy      |
    | ANTHEM LUKE                 | Comedy      |
    | BRINGING HYSTERICAL         | Comedy      |
    | CAPER MOTIONS               | Comedy      |
    | CAT CONEHEADS               | Comedy      |
    | CLOSER BANG                 | Comedy      |
    | CONNECTION MICROCOSMOS      | Comedy      |
    | CONTROL ANTHEM              | Comedy      |
    | CRAZY HOME                  | Comedy      |
    | DADDY PITTSBURGH            | Comedy      |
    | DOOM DANCING                | Comedy      |
    | DOWNHILL ENOUGH             | Comedy      |
    | DYING MAKER                 | Comedy      |
    | ELEMENT FREDDY              | Comedy      |
    | FERRIS MOTHER               | Comedy      |
    | FIREBALL PHILADELPHIA       | Comedy      |
    | FLINTSTONES HAPPINESS       | Comedy      |
    | FRANKENSTEIN STRANGER       | Comedy      |
    | FREEDOM CLEOPATRA           | Comedy      |
    | GOLD RIVER                  | Comedy      |
    | GROUNDHOG UNCUT             | Comedy      |
    | GUNFIGHT MOON               | Comedy      |
    | HATE HANDICAP               | Comedy      |
    | HEAVEN FREEDOM              | Comedy      |
    | HEDWIG ALTER                | Comedy      |
    | HURRICANE AFFAIR            | Comedy      |
    | HUSTLER PARTY               | Comedy      |
    | JAWS HARRY                  | Comedy      |
    | KNOCK WARLOCK               | Comedy      |
    | LIFE TWISTED                | Comedy      |
    | LION UNCUT                  | Comedy      |
    | LONELY ELEPHANT             | Comedy      |
    | MALLRATS UNITED             | Comedy      |
    | MEMENTO ZOOLANDER           | Comedy      |
    | MULAN MOON                  | Comedy      |
    | MYSTIC TRUMAN               | Comedy      |
    | OPERATION OPERATION         | Comedy      |
    | PARADISE SABRINA            | Comedy      |
    | PARTY KNOCK                 | Comedy      |
    | PERFECT GROOVE              | Comedy      |
    | PINOCCHIO SIMON             | Comedy      |
    | PURE RUNNER                 | Comedy      |
    | RUSHMORE MERMAID            | Comedy      |
    | SADDLE ANTITRUST            | Comedy      |
    | SATURN NAME                 | Comedy      |
    | SEARCHERS WAIT              | Comedy      |
    | SNATCH SLIPPER              | Comedy      |
    | STAGE WORLD                 | Comedy      |
    | STRICTLY SCARFACE           | Comedy      |
    | SUBMARINE BED               | Comedy      |
    | SWEDEN SHINING              | Comedy      |
    | TRAINSPOTTING STRANGERS     | Comedy      |
    | TRAMP OTHERS                | Comedy      |
    | VALLEY PACKER               | Comedy      |
    | VELVET TERMINATOR           | Comedy      |
    | VERTIGO NORTHWEST           | Comedy      |
    | WISDOM WORKER               | Comedy      |
    | ZORRO ARK                   | Comedy      |
    | ACADEMY DINOSAUR            | Documentary |
    | ADAPTATION HOLES            | Documentary |
    | ARMY FLINTSTONES            | Documentary |
    | BEACH HEARTBREAKERS         | Documentary |
    | BED HIGHBALL                | Documentary |
    | BILL OTHERS                 | Documentary |
    | BONNIE HOLOCAUST            | Documentary |
    | BROTHERHOOD BLANKET         | Documentary |
    | CAUSE DATE                  | Documentary |
    | CHICKEN HELLFIGHTERS        | Documentary |
    | CIDER DESIRE                | Documentary |
    | CLERKS ANGELS               | Documentary |
    | COAST RAINBOW               | Documentary |
    | CUPBOARD SINNERS            | Documentary |
    | DANCING FEVER               | Documentary |
    | DEEP CRUSADE                | Documentary |
    | DELIVERANCE MULHOLLAND      | Documentary |
    | DOZEN LION                  | Documentary |
    | DUFFEL APOCALYPSE           | Documentary |
    | EGG IGBY                    | Documentary |
    | EXPENDABLE STALLION         | Documentary |
    | FRENCH HOLIDAY              | Documentary |
    | HALLOWEEN NUTS              | Documentary |
    | HARDLY ROBBERS              | Documentary |
    | HAWK CHILL                  | Documentary |
    | HEAVYWEIGHTS BEAST          | Documentary |
    | HOMEWARD CIDER              | Documentary |
    | HUNTER ALTER                | Documentary |
    | INDEPENDENCE HOTEL          | Documentary |
    | INTOLERABLE INTENTIONS      | Documentary |
    | KILL BROTHERHOOD            | Documentary |
    | MADISON TRAP                | Documentary |
    | MAJESTIC FLOATS             | Documentary |
    | METAL ARMAGEDDON            | Documentary |
    | MIDSUMMER GROUNDHOG         | Documentary |
    | MIGHTY LUCK                 | Documentary |
    | MOD SECRETARY               | Documentary |
    | MODERN DORADO               | Documentary |
    | NATIONAL STORY              | Documentary |
    | NEWSIES STORY               | Documentary |
    | NORTH TEQUILA               | Documentary |
    | NOTORIOUS REUNION           | Documentary |
    | PACIFIC AMISTAD             | Documentary |
    | PELICAN COMFORTS            | Documentary |
    | POCUS PULP                  | Documentary |
    | PRINCESS GIANT              | Documentary |
    | QUILLS BULL                 | Documentary |
    | RAIDERS ANTITRUST           | Documentary |
    | RAINBOW SHOCK               | Documentary |
    | ROAD ROXANNE                | Documentary |
    | SAGEBRUSH CLUELESS          | Documentary |
    | SECRET GROUNDHOG            | Documentary |
    | SHIP WONDERLAND             | Documentary |
    | SHOW LORD                   | Documentary |
    | SMOKING BARBARELLA          | Documentary |
    | SPOILERS HELLFIGHTERS       | Documentary |
    | STREAK RIDGEMONT            | Documentary |
    | THIN SAGEBRUSH              | Documentary |
    | UNITED PILOT                | Documentary |
    | UNTOUCHABLES SUNRISE        | Documentary |
    | VILLAIN DESPERATE           | Documentary |
    | VIRGINIAN PLUTO             | Documentary |
    | WAGON JAWS                  | Documentary |
    | WARS PLUTO                  | Documentary |
    | WEDDING APOLLO              | Documentary |
    | WIFE TURN                   | Documentary |
    | WRATH MILE                  | Documentary |
    | YOUNG LANGUAGE              | Documentary |
    | APOLLO TEEN                 | Drama       |
    | BEAUTY GREASE               | Drama       |
    | BEETHOVEN EXORCIST          | Drama       |
    | BLADE POLISH                | Drama       |
    | BRIGHT ENCOUNTERS           | Drama       |
    | BUNCH MINDS                 | Drama       |
    | CHILL LUCK                  | Drama       |
    | CHITTY LOCK                 | Drama       |
    | CONEHEADS SMOOCHY           | Drama       |
    | CONFESSIONS MAGUIRE         | Drama       |
    | CONQUERER NUTS              | Drama       |
    | CRAFT OUTFIELD              | Drama       |
    | DALMATIONS SWEDEN           | Drama       |
    | DARKNESS WAR                | Drama       |
    | DECEIVER BETRAYED           | Drama       |
    | DESTINATION JERK            | Drama       |
    | DIARY PANIC                 | Drama       |
    | EDGE KISSING                | Drama       |
    | ENCOUNTERS CURTAIN          | Drama       |
    | GOLDFINGER SENSIBILITY      | Drama       |
    | GONE TROUBLE                | Drama       |
    | GREEDY ROOTS                | Drama       |
    | HANGING DEEP                | Drama       |
    | HAROLD FRENCH               | Drama       |
    | HARRY IDAHO                 | Drama       |
    | HOBBIT ALIEN                | Drama       |
    | HUNCHBACK IMPOSSIBLE        | Drama       |
    | JACKET FRISCO               | Drama       |
    | KWAI HOMEWARD               | Drama       |
    | LEBOWSKI SOLDIERS           | Drama       |
    | LIES TREATMENT              | Drama       |
    | LUCK OPUS                   | Drama       |
    | MOB DUFFEL                  | Drama       |
    | NECKLACE OUTBREAK           | Drama       |
    | NOTTING SPEAKEASY           | Drama       |
    | ORIENT CLOSER               | Drama       |
    | PATHS CONTROL               | Drama       |
    | PAYCHECK WAIT               | Drama       |
    | PITY BOUND                  | Drama       |
    | QUEEN LUKE                  | Drama       |
    | RACER EGG                   | Drama       |
    | REUNION WITCHES             | Drama       |
    | ROCKY WAR                   | Drama       |
    | SAINTS BRIDE                | Drama       |
    | SAVANNAH TOWN               | Drama       |
    | SCORPION APOLLO             | Drama       |
    | SEA VIRGIN                  | Drama       |
    | SEATTLE EXPECATIONS         | Drama       |
    | SHOOTIST SUPERFLY           | Drama       |
    | SLACKER LIAISONS            | Drama       |
    | SOMETHING DUCK              | Drama       |
    | SPICE SORORITY              | Drama       |
    | TENENBAUMS COMMAND          | Drama       |
    | TORQUE BOUND                | Drama       |
    | TRANSLATION SUMMER          | Drama       |
    | TREATMENT JEKYLL            | Drama       |
    | UNFAITHFUL KILL             | Drama       |
    | VIETNAM SMOOCHY             | Drama       |
    | VIRGIN DAISY                | Drama       |
    | WARDROBE PHANTOM            | Drama       |
    | WEST LION                   | Drama       |
    | WITCHES PANIC               | Drama       |
    | AFRICAN EGG                 | Family      |
    | APACHE DIVINE               | Family      |
    | ATLANTIS CAUSE              | Family      |
    | BAKED CLEOPATRA             | Family      |
    | BANG KWAI                   | Family      |
    | BEDAZZLED MARRIED           | Family      |
    | BILKO ANONYMOUS             | Family      |
    | BLANKET BEVERLY             | Family      |
    | BLOOD ARGONAUTS             | Family      |
    | BLUES INSTINCT              | Family      |
    | BRAVEHEART HUMAN            | Family      |
    | CHASING FIGHT               | Family      |
    | CHISUM BEHAVIOR             | Family      |
    | CHOCOLAT HARRY              | Family      |
    | CONFUSED CANDLES            | Family      |
    | CONVERSATION DOWNHILL       | Family      |
    | DATE SPEED                  | Family      |
    | DINOSAUR SECRETARY          | Family      |
    | DUMBO LUST                  | Family      |
    | EARRING INSTINCT            | Family      |
    | EFFECT GLADIATOR            | Family      |
    | FEUD FROGMEN                | Family      |
    | FINDING ANACONDA            | Family      |
    | GABLES METROPOLIS           | Family      |
    | GANDHI KWAI                 | Family      |
    | GLADIATOR WESTWARD          | Family      |
    | GREASE YOUTH                | Family      |
    | HALF OUTFIELD               | Family      |
    | HOCUS FRIDA                 | Family      |
    | HOMICIDE PEACH              | Family      |
    | HOUSE DYNAMITE              | Family      |
    | HUNTING MUSKETEERS          | Family      |
    | INDIAN LOVE                 | Family      |
    | JASON TRAP                  | Family      |
    | JEDI BENEATH                | Family      |
    | KILLER INNOCENT             | Family      |
    | KING EVOLUTION              | Family      |
    | LOLITA WORLD                | Family      |
    | LOUISIANA HARRY             | Family      |
    | MAGUIRE APACHE              | Family      |
    | MANCHURIAN CURTAIN          | Family      |
    | MOVIE SHAKESPEARE           | Family      |
    | MUSIC BOONDOCK              | Family      |
    | NATURAL STOCK               | Family      |
    | NETWORK PEAK                | Family      |
    | ODDS BOOGIE                 | Family      |
    | OPPOSITE NECKLACE           | Family      |
    | PILOT HOOSIERS              | Family      |
    | PITTSBURGH HUNCHBACK        | Family      |
    | PRESIDENT BANG              | Family      |
    | PRIX UNDEFEATED             | Family      |
    | RAGE GAMES                  | Family      |
    | RANGE MOONWALKER            | Family      |
    | REMEMBER DIARY              | Family      |
    | RESURRECTION SILVERADO      | Family      |
    | ROBBERY BRIGHT              | Family      |
    | RUSH GOODFELLAS             | Family      |
    | SECRETS PARADISE            | Family      |
    | SENSIBILITY REAR            | Family      |
    | SIEGE MADRE                 | Family      |
    | SLUMS DUCK                  | Family      |
    | SOUP WISDOM                 | Family      |
    | SPARTACUS CHEAPER           | Family      |
    | SPINAL ROCKY                | Family      |
    | SPLASH GUMP                 | Family      |
    | SUNSET RACER                | Family      |
    | SUPER WYOMING               | Family      |
    | VIRTUAL SPOILERS            | Family      |
    | WILLOW TRACY                | Family      |
    | AGENT TRUMAN                | Foreign     |
    | ALAMO VIDEOTAPE             | Foreign     |
    | ALIEN CENTER                | Foreign     |
    | ALLEY EVOLUTION             | Foreign     |
    | BABY HALL                   | Foreign     |
    | BALLROOM MOCKINGBIRD        | Foreign     |
    | BROOKLYN DESERT             | Foreign     |
    | BUGSY SONG                  | Foreign     |
    | CALENDAR GUNFIGHT           | Foreign     |
    | CATCH AMISTAD               | Foreign     |
    | CHOCOLATE DUCK              | Foreign     |
    | COMMAND DARLING             | Foreign     |
    | COWBOY DOOM                 | Foreign     |
    | CROSSING DIVORCE            | Foreign     |
    | CRYSTAL BREAKING            | Foreign     |
    | CYCLONE FAMILY              | Foreign     |
    | DANGEROUS UPTOWN            | Foreign     |
    | DOUBTFIRE LABYRINTH         | Foreign     |
    | EVERYONE CRAFT              | Foreign     |
    | FICTION CHRISTMAS           | Foreign     |
    | FRIDA SLIPPER               | Foreign     |
    | GENTLEMEN STAGE             | Foreign     |
    | GRAPES FURY                 | Foreign     |
    | GREEK EVERYONE              | Foreign     |
    | HAPPINESS UNITED            | Foreign     |
    | HELLFIGHTERS SIERRA         | Foreign     |
    | HIGHBALL POTTER             | Foreign     |
    | HOLIDAY GAMES               | Foreign     |
    | HOOSIERS BIRDCAGE           | Foreign     |
    | HOTEL HAPPINESS             | Foreign     |
    | HUNGER ROOF                 | Foreign     |
    | ILLUSION AMELIE             | Foreign     |
    | IMPOSSIBLE PREJUDICE        | Foreign     |
    | INFORMER DOUBLE             | Foreign     |
    | INNOCENT USUAL              | Foreign     |
    | INTRIGUE WORST              | Foreign     |
    | JET NEIGHBORS               | Foreign     |
    | KANE EXORCIST               | Foreign     |
    | KISS GLORY                  | Foreign     |
    | LOSE INCH                   | Foreign     |
    | LOST BIRD                   | Foreign     |
    | MADNESS ATTACKS             | Foreign     |
    | MATRIX SNOWMAN              | Foreign     |
    | MAUDE MOD                   | Foreign     |
    | MEET CHOCOLATE              | Foreign     |
    | MIXED DOORS                 | Foreign     |
    | MOON BUNCH                  | Foreign     |
    | MULHOLLAND BEAST            | Foreign     |
    | MUPPET MILE                 | Foreign     |
    | NEWTON LABYRINTH            | Foreign     |
    | OPUS ICE                    | Foreign     |
    | ORANGE GRAPES               | Foreign     |
    | PAST SUICIDES               | Foreign     |
    | PEARL DESTINY               | Foreign     |
    | PET HAUNTING                | Foreign     |
    | POLLOCK DELIVERANCE         | Foreign     |
    | PURPLE MOVIE                | Foreign     |
    | RESERVOIR ADAPTATION        | Foreign     |
    | ROCKETEER MOTHER            | Foreign     |
    | SCHOOL JACKET               | Foreign     |
    | SCISSORHANDS SLUMS          | Foreign     |
    | SHOCK CABIN                 | Foreign     |
    | SHREK LICENSE               | Foreign     |
    | SORORITY QUEEN              | Foreign     |
    | STEPMOM DREAM               | Foreign     |
    | TOWN ARK                    | Foreign     |
    | TRAP GUYS                   | Foreign     |
    | USUAL UNTOUCHABLES          | Foreign     |
    | VISION TORQUE               | Foreign     |
    | WAR NOTTING                 | Foreign     |
    | WASH HEAVENLY               | Foreign     |
    | WHALE BIKINI                | Foreign     |
    | WONDERFUL DROP              | Foreign     |
    | AUTUMN CROW                 | Games       |
    | BULWORTH COMMANDMENTS       | Games       |
    | CANDLES GRAPES              | Games       |
    | CHICAGO NORTH               | Games       |
    | CREATURES SHAKESPEARE       | Games       |
    | CURTAIN VIDEOTAPE           | Games       |
    | DARLING BREAKING            | Games       |
    | DAWN POND                   | Games       |
    | DAZED PUNK                  | Games       |
    | DETAILS PACKER              | Games       |
    | DIRTY ACE                   | Games       |
    | DIVINE RESURRECTION         | Games       |
    | DWARFS ALTER                | Games       |
    | ENCINO ELF                  | Games       |
    | FANTASIA PARK               | Games       |
    | FEATHERS METAL              | Games       |
    | FEVER EMPIRE                | Games       |
    | FIRE WOLVES                 | Games       |
    | FORWARD TEMPLE              | Games       |
    | GATHERING CALENDAR          | Games       |
    | GLORY TRACY                 | Games       |
    | GRINCH MASSAGE              | Games       |
    | GRIT CLOCKWORK              | Games       |
    | GUN BONNIE                  | Games       |
    | HAUNTING PIANIST            | Games       |
    | HEAD STRANGER               | Games       |
    | HUMAN GRAFFITI              | Games       |
    | ICE CROSSING                | Games       |
    | JERICHO MULAN               | Games       |
    | LADYBUGS ARMAGEDDON         | Games       |
    | LAMBS CINCINATTI            | Games       |
    | MADRE GABLES                | Games       |
    | MALTESE HOPE                | Games       |
    | MARS ROMAN                  | Games       |
    | MASSACRE USUAL              | Games       |
    | MONSOON CAUSE               | Games       |
    | MOONSHINE CABIN             | Games       |
    | MOONWALKER FOOL             | Games       |
    | NAME DETECTIVE              | Games       |
    | NIGHTMARE CHILL             | Games       |
    | OUTBREAK DIVINE             | Games       |
    | PANKY SUBMARINE             | Games       |
    | PIZZA JUMANJI               | Games       |
    | PRIVATE DROP                | Games       |
    | PSYCHO SHRUNK               | Games       |
    | ROOF CHAMPION               | Games       |
    | ROUGE SQUAD                 | Games       |
    | ROXANNE REBEL               | Games       |
    | SASSY PACKER                | Games       |
    | SEVEN SWARM                 | Games       |
    | SLEUTH ORIENT               | Games       |
    | SPY MILE                    | Games       |
    | STAMPEDE DISTURBING         | Games       |
    | STATE WASTELAND             | Games       |
    | SUIT WALLS                  | Games       |
    | TYCOON GATHERING            | Games       |
    | VANILLA DAY                 | Games       |
    | VIDEOTAPE ARSENIC           | Games       |
    | VOLCANO TEXAS               | Games       |
    | WANDA CHAMBER               | Games       |
    | WIND PHANTOM                | Games       |
    | ACE GOLDFINGER              | Horror      |
    | AFFAIR PREJUDICE            | Horror      |
    | AIRPORT POLLOCK             | Horror      |
    | ALABAMA DEVIL               | Horror      |
    | ALI FOREVER                 | Horror      |
    | ANALYZE HOOSIERS            | Horror      |
    | ANYTHING SAVANNAH           | Horror      |
    | ARABIA DOGMA                | Horror      |
    | ARACHNOPHOBIA ROLLERCOASTER | Horror      |
    | BEHAVIOR RUNAWAY            | Horror      |
    | BOWFINGER GABLES            | Horror      |
    | CARRIE BUNCH                | Horror      |
    | COMMANDMENTS EXPRESS        | Horror      |
    | DESERT POSEIDON             | Horror      |
    | DRUMS DYNAMITE              | Horror      |
    | EGYPT TENENBAUMS            | Horror      |
    | ELEPHANT TROJAN             | Horror      |
    | FAMILY SWEET                | Horror      |
    | FIDELITY DEVIL              | Horror      |
    | FREDDY STORM                | Horror      |
    | GASLIGHT CRUSADE            | Horror      |
    | HIGH ENCINO                 | Horror      |
    | JAPANESE RUN                | Horror      |
    | KARATE MOON                 | Horror      |
    | KENTUCKIAN GIANT            | Horror      |
    | LADY STAGE                  | Horror      |
    | LOLA AGENT                  | Horror      |
    | LOVE SUICIDES               | Horror      |
    | MONTEREY LABYRINTH          | Horror      |
    | MOTIONS DETAILS             | Horror      |
    | PANIC CLUB                  | Horror      |
    | PARIS WEEKEND               | Horror      |
    | PATTON INTERVIEW            | Horror      |
    | PULP BEVERLY                | Horror      |
    | REAP UNFAITHFUL             | Horror      |
    | REEF SALUTE                 | Horror      |
    | ROCK INSTINCT               | Horror      |
    | ROLLERCOASTER BRINGING      | Horror      |
    | RULES HUMAN                 | Horror      |
    | SIMON NORTH                 | Horror      |
    | SINNERS ATLANTIS            | Horror      |
    | SLEEPING SUSPECTS           | Horror      |
    | SPIRIT FLINTSTONES          | Horror      |
    | STRANGERS GRAFFITI          | Horror      |
    | STREETCAR INTENTIONS        | Horror      |
    | SWARM GOLD                  | Horror      |
    | TARZAN VIDEOTAPE            | Horror      |
    | TEMPLE ATTRACTION           | Horror      |
    | TEXAS WATCH                 | Horror      |
    | TRAIN BUNCH                 | Horror      |
    | TREASURE COMMAND            | Horror      |
    | UNDEFEATED DALMATIONS       | Horror      |
    | WATERSHIP FRONTIER          | Horror      |
    | WORLD LEATHERNECKS          | Horror      |
    | YENTL IDAHO                 | Horror      |
    | ZHIVAGO CORE                | Horror      |
    | ALASKA PHANTOM              | Music       |
    | ALONE TRIP                  | Music       |
    | AMELIE HELLFIGHTERS         | Music       |
    | BALLOON HOMEWARD            | Music       |
    | BANGER PINOCCHIO            | Music       |
    | BIRCH ANTITRUST             | Music       |
    | BIRDCAGE CASPER             | Music       |
    | BOOGIE AMELIE               | Music       |
    | CHAMBER ITALIAN             | Music       |
    | CLONES PINOCCHIO            | Music       |
    | CLUE GRAIL                  | Music       |
    | CONFIDENTIAL INTERVIEW      | Music       |
    | DEER VIRGINIAN              | Music       |
    | DORADO NOTTING              | Music       |
    | DRIVING POLISH              | Music       |
    | ELF MURDER                  | Music       |
    | ENEMY ODDS                  | Music       |
    | FREAKY POCUS                | Music       |
    | GO PURPLE                   | Music       |
    | GREATEST NORTH              | Music       |
    | GROSSE WONDERFUL            | Music       |
    | HANOVER GALAXY              | Music       |
    | HEAVENLY GUN                | Music       |
    | HOME PITY                   | Music       |
    | IMPACT ALADDIN              | Music       |
    | INSIDER ARIZONA             | Music       |
    | JAWBREAKER BROOKLYN         | Music       |
    | LEGEND JEDI                 | Music       |
    | LUCKY FLYING                | Music       |
    | MASKED BUBBLE               | Music       |
    | MINORITY KISS               | Music       |
    | MONSTER SPARTACUS           | Music       |
    | OLEANDER CLUE               | Music       |
    | OUTFIELD MASSACRE           | Music       |
    | PERSONAL LADYBUGS           | Music       |
    | REBEL AIRPORT               | Music       |
    | REDS POCUS                  | Music       |
    | ROMAN PUNK                  | Music       |
    | RUNNER MADIGAN              | Music       |
    | SCALAWAG DUCK               | Music       |
    | SILENCE KANE                | Music       |
    | SONG HEDWIG                 | Music       |
    | TAXI KICK                   | Music       |
    | TELEGRAPH VOYAGE            | Music       |
    | TERMINATOR CLUB             | Music       |
    | UNCUT SUICIDES              | Music       |
    | VANISHING ROCKY             | Music       |
    | WIZARD COLDBLOODED          | Music       |
    | WON DARES                   | Music       |
    | WORDS HUNTER                | Music       |
    | YOUTH KICK                  | Music       |
    | AMISTAD MIDSUMMER           | New         |
    | ANGELS LIFE                 | New         |
    | APOCALYPSE FLAMINGOS        | New         |
    | ATTRACTION NEWTON           | New         |
    | BIRDS PERDITION             | New         |
    | BOULEVARD MOB               | New         |
    | BRANNIGAN SUNRISE           | New         |
    | BREAKFAST GOLDFINGER        | New         |
    | BREAKING HOME               | New         |
    | BUTCH PANTHER               | New         |
    | BUTTERFLY CHOCOLAT          | New         |
    | CHAPLIN LICENSE             | New         |
    | CHINATOWN GLADIATOR         | New         |
    | CLEOPATRA DEVIL             | New         |
    | CLYDE THEORY                | New         |
    | DAY UNFAITHFUL              | New         |
    | DESTINY SATURDAY            | New         |
    | DRAGONFLY STRANGERS         | New         |
    | EAGLES PANKY                | New         |
    | EARTH VISION                | New         |
    | ENDING CROWDS               | New         |
    | EVE RESURRECTION            | New         |
    | FATAL HAUNTED               | New         |
    | FLAMINGOS CONNECTICUT       | New         |
    | FLASH WARS                  | New         |
    | FRONTIER CABIN              | New         |
    | GODFATHER DIARY             | New         |
    | HOURS RAGE                  | New         |
    | IDAHO LOVE                  | New         |
    | INTERVIEW LIAISONS          | New         |
    | JEKYLL FROGMEN              | New         |
    | JUMANJI BLADE               | New         |
    | JUNGLE CLOSER               | New         |
    | LOVERBOY ATTACKS            | New         |
    | MAIDEN HOME                 | New         |
    | MANNEQUIN WORST             | New         |
    | MASK PEACH                  | New         |
    | MINE TITANS                 | New         |
    | MONEY HAROLD                | New         |
    | NUTS TIES                   | New         |
    | OKLAHOMA JUMANJI            | New         |
    | PHANTOM GLORY               | New         |
    | PIANIST OUTFIELD            | New         |
    | PLATOON INSTINCT            | New         |
    | PLUTO OLEANDER              | New         |
    | REDEMPTION COMFORTS         | New         |
    | RIDGEMONT SUBMARINE         | New         |
    | RUN PACIFIC                 | New         |
    | RUNAWAY TENENBAUMS          | New         |
    | SALUTE APOLLO               | New         |
    | SAMURAI LION                | New         |
    | SLEEPY JAPANESE             | New         |
    | STING PERSONAL              | New         |
    | STOCK GLASS                 | New         |
    | TROOPERS METAL              | New         |
    | UNBREAKABLE KARATE          | New         |
    | VAMPIRE WHALE               | New         |
    | VANISHED GARDEN             | New         |
    | VARSITY TRIP                | New         |
    | VOICE PEACH                 | New         |
    | WAKE JAWS                   | New         |
    | WILD APOLLO                 | New         |
    | WYOMING STORM               | New         |
    | ANNIE IDENTITY              | Sci-Fi      |
    | ARMAGEDDON LOST             | Sci-Fi      |
    | ATTACKS HATE                | Sci-Fi      |
    | BADMAN DAWN                 | Sci-Fi      |
    | BARBARELLA STREETCAR        | Sci-Fi      |
    | BEVERLY OUTLAW              | Sci-Fi      |
    | BINGO TALENTED              | Sci-Fi      |
    | BLINDNESS GUN               | Sci-Fi      |
    | CAMELOT VACATION            | Sci-Fi      |
    | CHAINSAW UPTOWN             | Sci-Fi      |
    | CHARADE DUFFEL              | Sci-Fi      |
    | CHARIOTS CONSPIRACY         | Sci-Fi      |
    | CHEAPER CLYDE               | Sci-Fi      |
    | CINCINATTI WHISPERER        | Sci-Fi      |
    | CITIZEN SHREK               | Sci-Fi      |
    | COLDBLOODED DARLING         | Sci-Fi      |
    | CONNECTICUT TRAMP           | Sci-Fi      |
    | CROWDS TELEMARK             | Sci-Fi      |
    | DAISY MENAGERIE             | Sci-Fi      |
    | DISTURBING SCARFACE         | Sci-Fi      |
    | DIVIDE MONSTER              | Sci-Fi      |
    | DOLLS RAGE                  | Sci-Fi      |
    | ENGLISH BULWORTH            | Sci-Fi      |
    | EXPRESS LONELY              | Sci-Fi      |
    | EYES DRIVING                | Sci-Fi      |
    | FIDDLER LOST                | Sci-Fi      |
    | FISH OPUS                   | Sci-Fi      |
    | FRISCO FORREST              | Sci-Fi      |
    | GARDEN ISLAND               | Sci-Fi      |
    | GOLDMINE TYCOON             | Sci-Fi      |
    | GOODFELLAS SALUTE           | Sci-Fi      |
    | GRAFFITI LOVE               | Sci-Fi      |
    | GUYS FALCON                 | Sci-Fi      |
    | HAMLET WISDOM               | Sci-Fi      |
    | HANKY OCTOBER               | Sci-Fi      |
    | HOLLOW JEOPARDY             | Sci-Fi      |
    | IDENTITY LOVER              | Sci-Fi      |
    | LICENSE WEEKEND             | Sci-Fi      |
    | MARRIED GO                  | Sci-Fi      |
    | METROPOLIS COMA             | Sci-Fi      |
    | MOURNING PURPLE             | Sci-Fi      |
    | NEMO CAMPUS                 | Sci-Fi      |
    | NONE SPIKING                | Sci-Fi      |
    | OPEN AFRICAN                | Sci-Fi      |
    | PANTHER REDS                | Sci-Fi      |
    | RAGING AIRPLANE             | Sci-Fi      |
    | RANDOM GO                   | Sci-Fi      |
    | REIGN GENTLEMEN             | Sci-Fi      |
    | SILVERADO GOLDFINGER        | Sci-Fi      |
    | SOLDIERS EVOLUTION          | Sci-Fi      |
    | SPIRITED CASUALTIES         | Sci-Fi      |
    | STALLION SUNDANCE           | Sci-Fi      |
    | SUICIDES SILENCE            | Sci-Fi      |
    | SUN CONFESSIONS             | Sci-Fi      |
    | TITANS JERK                 | Sci-Fi      |
    | TROJAN TOMORROW             | Sci-Fi      |
    | UNFORGIVEN ZOOLANDER        | Sci-Fi      |
    | VACATION BOONDOCK           | Sci-Fi      |
    | WEEKEND PERSONAL            | Sci-Fi      |
    | WHISPERER GIANT             | Sci-Fi      |
    | WONDERLAND CHRISTMAS        | Sci-Fi      |
    | ALADDIN CALENDAR            | Sports      |
    | ANONYMOUS HUMAN             | Sports      |
    | ARTIST COLDBLOODED          | Sports      |
    | BUBBLE GROSSE               | Sports      |
    | CALIFORNIA BIRDS            | Sports      |
    | CARIBBEAN LIBERTY           | Sports      |
    | CHANCE RESURRECTION         | Sports      |
    | CONGENIALITY QUEST          | Sports      |
    | CRANES RESERVOIR            | Sports      |
    | CRUSADE HONEY               | Sports      |
    | DIVORCE SHINING             | Sports      |
    | DRIVER ANNIE                | Sports      |
    | DROP WATERFRONT             | Sports      |
    | DUDE BLINDNESS              | Sports      |
    | DURHAM PANKY                | Sports      |
    | ELIZABETH SHANE             | Sports      |
    | EVOLUTION ALTER             | Sports      |
    | EXORCIST STING              | Sports      |
    | FLATLINERS KILLER           | Sports      |
    | FLIGHT LIES                 | Sports      |
    | GLEAMING JAWBREAKER         | Sports      |
    | GRACELAND DYNAMITE          | Sports      |
    | GROOVE FICTION              | Sports      |
    | GUNFIGHTER MUSSOLINI        | Sports      |
    | HOLES BRANNIGAN             | Sports      |
    | HONEY TIES                  | Sports      |
    | HYSTERICAL GRAIL            | Sports      |
    | IMAGE PRINCESS              | Sports      |
    | INSTINCT AIRPORT            | Sports      |
    | JADE BUNCH                  | Sports      |
    | JOON NORTHWEST              | Sports      |
    | KRAMER CHOCOLATE            | Sports      |
    | LESSON CLEOPATRA            | Sports      |
    | LIBERTY MAGNIFICENT         | Sports      |
    | LOSER HUSTLER               | Sports      |
    | MERMAID INSECTS             | Sports      |
    | MILE MULAN                  | Sports      |
    | MOSQUITO ARMAGEDDON         | Sports      |
    | MOTHER OLEANDER             | Sports      |
    | MUMMY CREATURES             | Sports      |
    | MUSSOLINI SPOILERS          | Sports      |
    | NEIGHBORS CHARADE           | Sports      |
    | NORTHWEST POLISH            | Sports      |
    | NOVOCAINE FLIGHT            | Sports      |
    | PEACH INNOCENT              | Sports      |
    | PEAK FOREVER                | Sports      |
    | PERDITION FARGO             | Sports      |
    | PHILADELPHIA WIFE           | Sports      |
    | PICKUP DRIVING              | Sports      |
    | PIRATES ROXANNE             | Sports      |
    | POSEIDON FOREVER            | Sports      |
    | RECORDS ZORRO               | Sports      |
    | RIDER CADDYSHACK            | Sports      |
    | RIVER OUTLAW                | Sports      |
    | ROSES TREASURE              | Sports      |
    | SATISFACTION CONFIDENTIAL   | Sports      |
    | SATURDAY LAMBS              | Sports      |
    | SEABISCUIT PUNK             | Sports      |
    | SECRETARY ROUGE             | Sports      |
    | SENSE GREEK                 | Sports      |
    | SHAKESPEARE SADDLE          | Sports      |
    | SIERRA DIVIDE               | Sports      |
    | SLIPPER FIDELITY            | Sports      |
    | SMOOCHY CONTROL             | Sports      |
    | SQUAD FISH                  | Sports      |
    | STAR OPERATION              | Sports      |
    | STEERS ARMAGEDDON           | Sports      |
    | STRAIGHT HOURS              | Sports      |
    | TALENTED HOMICIDE           | Sports      |
    | TIGHTS DAWN                 | Sports      |
    | TOURIST PELICAN             | Sports      |
    | TRADING PINOCCHIO           | Sports      |
    | TUXEDO MILE                 | Sports      |
    | VICTORY ACADEMY             | Sports      |
    | ARSENIC INDEPENDENCE        | Travel      |
    | BASIC EASY                  | Travel      |
    | BIRD INDEPENDENCE           | Travel      |
    | BOILED DARES                | Travel      |
    | BOONDOCK BALLROOM           | Travel      |
    | BORN SPINAL                 | Travel      |
    | BUCKET BROTHERHOOD          | Travel      |
    | CASABLANCA SUPER            | Travel      |
    | CASSIDY WYOMING             | Travel      |
    | COMA HEAD                   | Travel      |
    | COMFORTS RUSH               | Travel      |
    | CONTACT ANONYMOUS           | Travel      |
    | DESPERATE TRAINSPOTTING     | Travel      |
    | DISCIPLE MOTHER             | Travel      |
    | DRUMLINE CYCLONE            | Travel      |
    | ENOUGH RAGING               | Travel      |
    | ESCAPE METROPOLIS           | Travel      |
    | EXPECATIONS NATURAL         | Travel      |
    | FACTORY DRAGON              | Travel      |
    | FELLOWSHIP AUTUMN           | Travel      |
    | FROGMEN BREAKING            | Travel      |
    | FUGITIVE MAGUIRE            | Travel      |
    | GAMES BOWFINGER             | Travel      |
    | GUMP DATE                   | Travel      |
    | HAUNTED ANTITRUST           | Travel      |
    | HORROR REIGN                | Travel      |
    | IGBY MAKER                  | Travel      |
    | ITALIAN AFRICAN             | Travel      |
    | KICK SAVANNAH               | Travel      |
    | LEATHERNECKS DWARFS         | Travel      |
    | LIAISONS SWEET              | Travel      |
    | LOCK REAR                   | Travel      |
    | MADIGAN DORADO              | Travel      |
    | MOULIN WAKE                 | Travel      |
    | MUSCLE BRIGHT               | Travel      |
    | ORDER BETRAYED              | Travel      |
    | OTHERS SOUP                 | Travel      |
    | OUTLAW HANKY                | Travel      |
    | PAPI NECKLACE               | Travel      |
    | SHANE DARKNESS              | Travel      |
    | SHANGHAI TYCOON             | Travel      |
    | SHAWSHANK BUBBLE            | Travel      |
    | SHINING ROSES               | Travel      |
    | SMILE EARRING               | Travel      |
    | SPEED SUIT                  | Travel      |
    | STONE FIRE                  | Travel      |
    | SUPERFLY TRIP               | Travel      |
    | SWEET BROTHERHOOD           | Travel      |
    | TEEN APOLLO                 | Travel      |
    | TOMATOES HELLFIGHTERS       | Travel      |
    | TRAFFIC HOBBIT              | Travel      |
    | TROUBLE DATE                | Travel      |
    | VALENTINE VANISHING         | Travel      |
    | WINDOW SIDE                 | Travel      |
    | WOLVES DESIRE               | Travel      |
    | WORKER TARZAN               | Travel      |
    | WORKING MICROCOSMOS         | Travel      |
    +-----------------------------+-------------+
    1000 rows in set (0,00 sec)
    **/

    -- Vista 5:
    CREATE VIEW 