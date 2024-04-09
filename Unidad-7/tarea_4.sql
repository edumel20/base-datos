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
        -- Película con menor duración.
        -- Mostrar las ciudades del country Spain (multitabla).
        -- Mostrar el nombre de la película y el nombre de los actores.
        -- Mostrar el nombre de la película y el de sus categorías.
        -- Mostrar el country, la ciudad y dirección de cada miembro del staff.
        -- Mostrar el country, la ciudad y dirección de cada customer.
        -- Numero de películas de cada rating
        -- Cuantas películas ha realizado el actor ED CHASE.
        -- Media de duración de las películas cada categoría.


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
    -- Crea 5 vistas sobre la BBDD, y realizar la consulta, para mostrar los resultados. Las vistas deben de tener 3 o más tablas de la BBDD.
