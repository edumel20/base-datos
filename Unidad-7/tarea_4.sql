/**
TRABAJO CON SAKILA
**/

-- Se pide:
-- 
   -- Realiza cada una de las siguientes consultas:
        -- Actores que tienen de primer nombre Scarlett.
        -- Actores que tienen de apellido Johansson.
        -- Actores que contengan una O en su nombre.
        -- Actores que contengan una O en su nombre y en una A en su apellido.
        -- Actores que contengan dos O en su nombre y en una A en su apellido.
        -- Actores donde su tercera letra sea B.
        -- Ciudades que empiezan por a.
        -- Ciudades que acaban por s.
        -- Ciudades del country 61.
        -- Ciudades del country Spain.
        -- Ciudades con nombres compuestos.
        -- Películas con una duración entre 80 y 100.
        -- Peliculas con un rental_rate entre 1 y 3.
        -- Películas con un titulo de más de 12 letras.
        -- Peliculas con un rating de PG o G.
        -- Peliculas que no tengan un rating de NC-17.
        -- Peliculas con un rating PG y duracion de más de 120.
        -- ¿Cuantos actores hay?
        -- ¿Cuántas ciudades tiene el country Spain?
        -- ¿Cuántos countries hay que empiezan por a?
        -- Media de duración de peliculas con PG.
        -- Suma de rental_rate de todas las peliculas.
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
