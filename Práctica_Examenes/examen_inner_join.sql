-- ----------------------------------------
-- Consultas sobre una tabla
-- 0,2 puntos la correcta. Total = 1,4 puntos
-- ----------------------------------------

-- 1.- Devuelve un listado con todos las compras que se han realizado. Las compras deben estar ordenados por la fecha de realización, mostrando en primer lugar las compras más recientes.
select * from compra order by fecha desc;
/**
+----+---------+------------+---------------+------------------+
| id | total   | fecha      | id_consumidor | id_suministrador |
+----+---------+------------+---------------+------------------+
| 13 |  545.75 | 2022-01-25 |             6 |                1 |
|  8 | 1983.43 | 2020-10-10 |             4 |                6 |
|  1 |   150.5 | 2020-10-05 |             5 |                2 |
|  3 |   65.26 | 2020-10-05 |             2 |                1 |
|  5 |   948.5 | 2020-09-10 |             5 |                2 |
| 12 |  3045.6 | 2020-04-25 |             2 |                1 |
| 14 |  145.82 | 2020-02-02 |             6 |                1 |
|  9 |  2480.4 | 2019-10-10 |             8 |                3 |
|  4 |   110.5 | 2019-08-17 |             8 |                3 |
| 11 |   75.29 | 2019-08-17 |             3 |                7 |
|  6 |  2400.6 | 2019-07-27 |             7 |                1 |
|  7 |    5760 | 2018-09-10 |             2 |                1 |
| 10 |  250.45 | 2018-06-27 |             8 |                2 |
+----+---------+------------+---------------+------------------+
13 rows in set (0,00 sec)
**/

-- 2. Devuelve todos los datos de los dos compras de mayor valor.
select * from compra order by total desc limit 2;
/**
+----+--------+------------+---------------+------------------+
| id | total  | fecha      | id_consumidor | id_suministrador |
+----+--------+------------+---------------+------------------+
|  7 |   5760 | 2018-09-10 |             2 |                1 |
| 12 | 3045.6 | 2020-04-25 |             2 |                1 |
+----+--------+------------+---------------+------------------+
2 rows in set (0,00 sec)
**/

-- 3. Devuelve un listado con los identificadores de los consumidores que han realizado algún compra. Tenga en cuenta que no debe mostrar identificadores que estén repetidos.
select distinct id_consumidor from compra;
/**
+---------------+
| id_consumidor |
+---------------+
|             2 |
|             3 |
|             4 |
|             5 |
|             6 |
|             7 |
|             8 |
+---------------+
7 rows in set (0,00 sec)
**/

-- 4. Devuelve un listado de todos las compras que se realizaron durante el año 2020, cuya cantidad total sea superior a 500€.
select * from compras where fecha regexp '2020' and total > 500;
/**
+----+---------+------------+---------------+------------------+
| id | total   | fecha      | id_consumidor | id_suministrador |
+----+---------+------------+---------------+------------------+
|  5 |   948.5 | 2020-09-10 |             5 |                2 |
|  8 | 1983.43 | 2020-10-10 |             4 |                6 |
| 12 |  3045.6 | 2020-04-25 |             2 |                1 |
+----+---------+------------+---------------+------------------+
3 rows in set (0,02 sec)
**/

-- 5. Devuelve un listado con el nombre y los apellidos de los suministradores que tienen una comisión entre 0.11 y 0.15.
select nombre, apellido1, apellido2 from suministrador where categoria between 0.11 and 0.15;
/**
+---------+------------+------------+
| nombre  | apellido1  | apellido2  |
+---------+------------+------------+
| Daniel  | Sáez       | Vega       |
| Juan    | Gómez      | López      |
| Diego   | Flores     | Salas      |
| Marta   | Herrera    | Gil        |
| Antonio | Carretero  | Ortega     |
| Manuel  | Domínguez  | Hernández  |
| Antonio | Vega       | Hernández  |
+---------+------------+------------+
7 rows in set (0,00 sec)
**/

-- 6. Devuelve el valor de la comisión de mayor valor que existe en la tabla suministrador.
select MAX(categoria) AS mayor_comision from suministrador;
/**
+----------------+
| mayor_comision |
+----------------+
|           0.15 |
+----------------+
1 row in set (0,01 sec)
**/

-- 7. Devuelve el identificador, nombre y primer apellido de aquellos consumidores cuyo segundo apellido no es NULL. El listado deberá estar ordenado alfabéticamente por apellidos y nombre.
select id, nombre, apellido1 from consumidor where apellido2 is not null order by apellido1, nombre;
/**
CORREGIR!!!
**/



-- (Consultas Multitabla Where)
-- -----------------------------------------------
-- 0,3 puntos la correcta. Total =  2,1 puntos
-- -----------------------------------------------

-- 1. Devuelve un listado con el identificador, nombre y los apellidos de todos los consumidores que han realizado algún compra. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.
SELECT c.id, c.nombre, c.apellido1, c.apellido2 FROM consumidor c, compra co WHERE 
c.id = co.id_consumidor GROUP BY c.id, c.nombre, c.apellido1, c.apellido2 ORDER BY c.nombre; 
/**
+----+---------+-----------+-----------+
| id | nombre  | apellido1 | apellido2 |
+----+---------+-----------+-----------+
|  2 | Adela   | Salas     | Díaz      |
|  3 | Adolfo  | Rubio     | Flores    |
|  4 | Adrián  | Suárez    | NULL      |
|  5 | Marcos  | Loyola    | Méndez    |
|  6 | María   | Santana   | Moreno    |
|  8 | Pepe    | Ruiz      | Santana   |
|  7 | Pilar   | Ruiz      | NULL      |
+----+---------+-----------+-----------+
7 rows in set (0,02 sec)
**/

-- 2. Devuelve un listado que muestre todos las compras que ha realizado cada consumidor. El resultado debe mostrar todos los datos de las compras y del consumidor. El listado debe mostrar los datos de los consumidores ordenados alfabéticamente.
select co.*, c.nombre, c.apellido1, c.apellido2 from compra co, consumidor c WHERE co.id_consumidor = c.id GROUP BY co.id ORDER BY c.nombre;
/**
+----+---------+------------+---------------+------------------+---------+-----------+-----------+
| id | total   | fecha      | id_consumidor | id_suministrador | nombre  | apellido1 | apellido2 |
+----+---------+------------+---------------+------------------+---------+-----------+-----------+
|  3 |   65.26 | 2020-10-05 |             2 |                1 | Adela   | Salas     | Díaz      |
|  7 |    5760 | 2018-09-10 |             2 |                1 | Adela   | Salas     | Díaz      |
| 12 |  3045.6 | 2020-04-25 |             2 |                1 | Adela   | Salas     | Díaz      |
| 11 |   75.29 | 2019-08-17 |             3 |                7 | Adolfo  | Rubio     | Flores    |
|  8 | 1983.43 | 2020-10-10 |             4 |                6 | Adrián  | Suárez    | NULL      |
|  1 |   150.5 | 2020-10-05 |             5 |                2 | Marcos  | Loyola    | Méndez    |
|  5 |   948.5 | 2020-09-10 |             5 |                2 | Marcos  | Loyola    | Méndez    |
| 13 |  545.75 | 2022-01-25 |             6 |                1 | María   | Santana   | Moreno    |
| 14 |  145.82 | 2020-02-02 |             6 |                1 | María   | Santana   | Moreno    |
|  4 |   110.5 | 2019-08-17 |             8 |                3 | Pepe    | Ruiz      | Santana   |
|  9 |  2480.4 | 2019-10-10 |             8 |                3 | Pepe    | Ruiz      | Santana   |
| 10 |  250.45 | 2018-06-27 |             8 |                2 | Pepe    | Ruiz      | Santana   |
|  6 |  2400.6 | 2019-07-27 |             7 |                1 | Pilar   | Ruiz      | NULL      |
+----+---------+------------+---------------+------------------+---------+-----------+-----------+
13 rows in set (0,00 sec)
**/

-- 3. Devuelve un listado que muestre todos las compras en los que ha participado un suministrador. El resultado debe mostrar todos los datos de las compras y de los suministradores. El listado debe mostrar los datos de los suministradores ordenados alfabéticamente.
select co.*, s.nombre, s.apellido1, s.apellido2, s.categoria from compra co, suministrador s WHERE co.id_suministrador = s.id GROUP BY co.id ORDER BY s.nombre;
/**
+----+---------+------------+---------------+------------------+---------+------------+------------+-----------+
| id | total   | fecha      | id_consumidor | id_suministrador | nombre  | apellido1  | apellido2  | categoria |
+----+---------+------------+---------------+------------------+---------+------------+------------+-----------+
| 11 |   75.29 | 2019-08-17 |             3 |                7 | Antonio | Vega       | Hernández  |      0.11 |
|  3 |   65.26 | 2020-10-05 |             2 |                1 | Daniel  | Sáez       | Vega       |      0.15 |
|  6 |  2400.6 | 2019-07-27 |             7 |                1 | Daniel  | Sáez       | Vega       |      0.15 |
|  7 |    5760 | 2018-09-10 |             2 |                1 | Daniel  | Sáez       | Vega       |      0.15 |
| 12 |  3045.6 | 2020-04-25 |             2 |                1 | Daniel  | Sáez       | Vega       |      0.15 |
| 13 |  545.75 | 2022-01-25 |             6 |                1 | Daniel  | Sáez       | Vega       |      0.15 |
| 14 |  145.82 | 2020-02-02 |             6 |                1 | Daniel  | Sáez       | Vega       |      0.15 |
|  4 |   110.5 | 2019-08-17 |             8 |                3 | Diego   | Flores     | Salas      |      0.11 |
|  9 |  2480.4 | 2019-10-10 |             8 |                3 | Diego   | Flores     | Salas      |      0.11 |
|  1 |   150.5 | 2020-10-05 |             5 |                2 | Juan    | Gómez      | López      |      0.13 |
|  5 |   948.5 | 2020-09-10 |             5 |                2 | Juan    | Gómez      | López      |      0.13 |
| 10 |  250.45 | 2018-06-27 |             8 |                2 | Juan    | Gómez      | López      |      0.13 |
|  8 | 1983.43 | 2020-10-10 |             4 |                6 | Manuel  | Domínguez  | Hernández  |      0.13 |
+----+---------+------------+---------------+------------------+---------+------------+------------+-----------+
13 rows in set (0,01 sec)
**/

-- 4. Devuelve un listado que muestre todos los consumidores, con todos las compras que han realizado 
-- y con los datos de los suministradores asociados a cada compra.
select co.*, c.*, s.* 
-- 5. Devuelve un listado de todos los consumidores que realizaron un compra durante el año 2020, cuya cantidad esté entre 300 € y 1000 €.
select co.*, c.nombre, c.apellido1, c.apellido2 from compra co, consumidor c WHERE co.id_consumidor = c.id and co.fecha regexp '2020' and co.total BETWEEN 300 and 1000 ORDER BY co.id_consumidor;
/**
+----+-------+------------+---------------+------------------+--------+-----------+-----------+
| id | total | fecha      | id_consumidor | id_suministrador | nombre | apellido1 | apellido2 |
+----+-------+------------+---------------+------------------+--------+-----------+-----------+
|  5 | 948.5 | 2020-09-10 |             5 |                2 | Marcos | Loyola    | Méndez    |
+----+-------+------------+---------------+------------------+--------+-----------+-----------+
1 row in set (0,00 sec)
**/

-- 6. Devuelve el nombre y los apellidos de todos los suministradores que ha participado en algún compra realizado por María Santana Moreno.
select s.nombre, s.apellido1, s.apellido2, c.nombre, c.apellido1, c.apellido2 from suministrador s, consumidor c WHERE 
-- 7. Devuelve el nombre de todos los consumidores que han realizado algún compra con el suministrador Daniel Sáez Vega.

-- (Consultas Multitabla Join)
-- -----------------------------------------------
-- 0,3 puntos la correcta. Total = 2,1 puntos
-- -----------------------------------------------

-- 1. Devuelve un listado con el identificador, nombre y los apellidos de todos los consumidores que han realizado algún compra. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.
SELECT c.id, c.nombre, c.apellido1, c.apellido2 FROM consumidor c JOIN compra co ON 
c.id = co.id_consumidor GROUP BY c.id, c.nombre, c.apellido1, c.apellido2 ORDER BY c.nombre; 
/**
+----+---------+-----------+-----------+
| id | nombre  | apellido1 | apellido2 |
+----+---------+-----------+-----------+
|  2 | Adela   | Salas     | Díaz      |
|  3 | Adolfo  | Rubio     | Flores    |
|  4 | Adrián  | Suárez    | NULL      |
|  5 | Marcos  | Loyola    | Méndez    |
|  6 | María   | Santana   | Moreno    |
|  8 | Pepe    | Ruiz      | Santana   |
|  7 | Pilar   | Ruiz      | NULL      |
+----+---------+-----------+-----------+
7 rows in set (0,01 sec)
**/

-- 2. Devuelve un listado que muestre todos las compras que ha realizado cada consumidor.  El resultado debe mostrar todos los datos de las compras y del consumidor. El listado debe mostrar los datos de los consumidores ordenados alfabéticamente.
select co.*, c.nombre, c.apellido1, c.apellido2 from compra co JOIN consumidor c ON co.id_consumidor = c.id GROUP BY co.id ORDER BY c.nombre;
/**
+----+---------+------------+---------------+------------------+---------+-----------+-----------+
| id | total   | fecha      | id_consumidor | id_suministrador | nombre  | apellido1 | apellido2 |
+----+---------+------------+---------------+------------------+---------+-----------+-----------+
|  3 |   65.26 | 2020-10-05 |             2 |                1 | Adela   | Salas     | Díaz      |
|  7 |    5760 | 2018-09-10 |             2 |                1 | Adela   | Salas     | Díaz      |
| 12 |  3045.6 | 2020-04-25 |             2 |                1 | Adela   | Salas     | Díaz      |
| 11 |   75.29 | 2019-08-17 |             3 |                7 | Adolfo  | Rubio     | Flores    |
|  8 | 1983.43 | 2020-10-10 |             4 |                6 | Adrián  | Suárez    | NULL      |
|  1 |   150.5 | 2020-10-05 |             5 |                2 | Marcos  | Loyola    | Méndez    |
|  5 |   948.5 | 2020-09-10 |             5 |                2 | Marcos  | Loyola    | Méndez    |
| 13 |  545.75 | 2022-01-25 |             6 |                1 | María   | Santana   | Moreno    |
| 14 |  145.82 | 2020-02-02 |             6 |                1 | María   | Santana   | Moreno    |
|  4 |   110.5 | 2019-08-17 |             8 |                3 | Pepe    | Ruiz      | Santana   |
|  9 |  2480.4 | 2019-10-10 |             8 |                3 | Pepe    | Ruiz      | Santana   |
| 10 |  250.45 | 2018-06-27 |             8 |                2 | Pepe    | Ruiz      | Santana   |
|  6 |  2400.6 | 2019-07-27 |             7 |                1 | Pilar   | Ruiz      | NULL      |
+----+---------+------------+---------------+------------------+---------+-----------+-----------+
**/

-- 3. Devuelve un listado que muestre todos las compras en los que ha participado un suministrador.El resultado debe mostrar todos los datos de las compras y de los suministradores. El listado debe mostrar los datos de los suministradores ordenados alfabéticamente.
select co.*, s.nombre, s.apellido1, s.apellido2, s.categoria from compra co JOIN suministrador s ON co.id_suministrador = s.id GROUP BY co.id ORDER BY s.nombre;
/**
+----+---------+------------+---------------+------------------+---------+------------+------------+-----------+
| id | total   | fecha      | id_consumidor | id_suministrador | nombre  | apellido1  | apellido2  | categoria |
+----+---------+------------+---------------+------------------+---------+------------+------------+-----------+
| 11 |   75.29 | 2019-08-17 |             3 |                7 | Antonio | Vega       | Hernández  |      0.11 |
|  3 |   65.26 | 2020-10-05 |             2 |                1 | Daniel  | Sáez       | Vega       |      0.15 |
|  6 |  2400.6 | 2019-07-27 |             7 |                1 | Daniel  | Sáez       | Vega       |      0.15 |
|  7 |    5760 | 2018-09-10 |             2 |                1 | Daniel  | Sáez       | Vega       |      0.15 |
| 12 |  3045.6 | 2020-04-25 |             2 |                1 | Daniel  | Sáez       | Vega       |      0.15 |
| 13 |  545.75 | 2022-01-25 |             6 |                1 | Daniel  | Sáez       | Vega       |      0.15 |
| 14 |  145.82 | 2020-02-02 |             6 |                1 | Daniel  | Sáez       | Vega       |      0.15 |
|  4 |   110.5 | 2019-08-17 |             8 |                3 | Diego   | Flores     | Salas      |      0.11 |
|  9 |  2480.4 | 2019-10-10 |             8 |                3 | Diego   | Flores     | Salas      |      0.11 |
|  1 |   150.5 | 2020-10-05 |             5 |                2 | Juan    | Gómez      | López      |      0.13 |
|  5 |   948.5 | 2020-09-10 |             5 |                2 | Juan    | Gómez      | López      |      0.13 |
| 10 |  250.45 | 2018-06-27 |             8 |                2 | Juan    | Gómez      | López      |      0.13 |
|  8 | 1983.43 | 2020-10-10 |             4 |                6 | Manuel  | Domínguez  | Hernández  |      0.13 |
+----+---------+------------+---------------+------------------+---------+------------+------------+-----------+
13 rows in set (0,00 sec)
**/

-- 4. Devuelve un listado que muestre todos los consumidores, con todos las compras que han realizado y con los datos de los suministradores asociados a cada compra.
select c.id, c.nombre, c.apellido1, c.apellido2, co.*, s.id, s.nombre, s.apellido1, s.apellido2, s.categoria from consumidor c JOIN compra co ON c.id = co.id_consumidor JOIN suministrador s ON co.id_suministrador = s.id order by c.id;
/**
+----+---------+-----------+-----------+----+---------+------------+---------------+------------------+----+---------+------------+------------+-----------+
| id | nombre  | apellido1 | apellido2 | id | total   | fecha      | id_consumidor | id_suministrador | id | nombre  | apellido1  | apellido2  | categoria |
+----+---------+-----------+-----------+----+---------+------------+---------------+------------------+----+---------+------------+------------+-----------+
|  2 | Adela   | Salas     | Díaz      |  3 |   65.26 | 2020-10-05 |             2 |                1 |  1 | Daniel  | Sáez       | Vega       |      0.15 |
|  2 | Adela   | Salas     | Díaz      |  7 |    5760 | 2018-09-10 |             2 |                1 |  1 | Daniel  | Sáez       | Vega       |      0.15 |
|  2 | Adela   | Salas     | Díaz      | 12 |  3045.6 | 2020-04-25 |             2 |                1 |  1 | Daniel  | Sáez       | Vega       |      0.15 |
|  3 | Adolfo  | Rubio     | Flores    | 11 |   75.29 | 2019-08-17 |             3 |                7 |  7 | Antonio | Vega       | Hernández  |      0.11 |
|  4 | Adrián  | Suárez    | NULL      |  8 | 1983.43 | 2020-10-10 |             4 |                6 |  6 | Manuel  | Domínguez  | Hernández  |      0.13 |
|  5 | Marcos  | Loyola    | Méndez    |  1 |   150.5 | 2020-10-05 |             5 |                2 |  2 | Juan    | Gómez      | López      |      0.13 |
|  5 | Marcos  | Loyola    | Méndez    |  5 |   948.5 | 2020-09-10 |             5 |                2 |  2 | Juan    | Gómez      | López      |      0.13 |
|  6 | María   | Santana   | Moreno    | 13 |  545.75 | 2022-01-25 |             6 |                1 |  1 | Daniel  | Sáez       | Vega       |      0.15 |
|  6 | María   | Santana   | Moreno    | 14 |  145.82 | 2020-02-02 |             6 |                1 |  1 | Daniel  | Sáez       | Vega       |      0.15 |
|  7 | Pilar   | Ruiz      | NULL      |  6 |  2400.6 | 2019-07-27 |             7 |                1 |  1 | Daniel  | Sáez       | Vega       |      0.15 |
|  8 | Pepe    | Ruiz      | Santana   |  4 |   110.5 | 2019-08-17 |             8 |                3 |  3 | Diego   | Flores     | Salas      |      0.11 |
|  8 | Pepe    | Ruiz      | Santana   |  9 |  2480.4 | 2019-10-10 |             8 |                3 |  3 | Diego   | Flores     | Salas      |      0.11 |
|  8 | Pepe    | Ruiz      | Santana   | 10 |  250.45 | 2018-06-27 |             8 |                2 |  2 | Juan    | Gómez      | López      |      0.13 |
+----+---------+-----------+-----------+----+---------+------------+---------------+------------------+----+---------+------------+------------+-----------+
13 rows in set (0,00 sec)
**/

-- 5. Devuelve un listado de todos los consumidores que realizaron un compra durante el año 2020, cuya cantidad esté entre 300 € y 1000 €.
select c.* from consumidor c JOIN compra co ON c.id = co.id_consumidor WHERE co.fecha regexp '2020' and total BETWEEN 300 and 1000;
/**
+----+--------+-----------+-----------+----------+-----------+
| id | nombre | apellido1 | apellido2 | ciudad   | categoria |
+----+--------+-----------+-----------+----------+-----------+
|  5 | Marcos | Loyola    | Méndez    | Almería  |       200 |
+----+--------+-----------+-----------+----------+-----------+
1 row in set (0,02 sec)
**/

-- 6. Devuelve el nombre y los apellidos de todos los suministradores que ha participado en algún compra realizado por María Santana Moreno.
select  s.* from compra co JOIN suministrador s ON co.id_suministrador = s.id JOIN consumidor c ON co.id_consumidor = c.id WHERE c.nombre = 'María' and c.apellido1 = 'Santana' and c.apellido2 = 'Moreno' GROUP BY s.id;
/**
+----+--------+-----------+-----------+-----------+
| id | nombre | apellido1 | apellido2 | categoria |
+----+--------+-----------+-----------+-----------+
|  1 | Daniel | Sáez      | Vega      |      0.15 |
+----+--------+-----------+-----------+-----------+
1 row in set (0,00 sec)
**/

-- 7. Devuelve el nombre de todos los consumidores que han realizado algún compra con el suministrador Daniel Sáez Vega.
select  c.* from compra co JOIN consumidor c ON co.id_consumidor = c.id JOIN suministrador s ON co.id_suministrador = s.id WHERE s.nombre = 'Daniel' and s.apellido1 = 'Sáez' and s.apellido2 = 'Vega' GROUP BY c.id;
/**
+----+--------+-----------+-----------+---------+-----------+
| id | nombre | apellido1 | apellido2 | ciudad  | categoria |
+----+--------+-----------+-----------+---------+-----------+
|  2 | Adela  | Salas     | Díaz      | Granada |       200 |
|  7 | Pilar  | Ruiz      | NULL      | Sevilla |       300 |
|  6 | María  | Santana   | Moreno    | Cádiz   |       100 |
+----+--------+-----------+-----------+---------+-----------+
3 rows in set (0,00 sec)
**/

-- ---------------------------
-- Consultas resumen (funciones)
-- -----------------------------------------------
-- 0,2 puntos la correcta. (1-6) 1,2 puntos
-- 0,25 puntos la correcta. (7-10) 1 punto.
-- Total = 2,2 puntos
-- -----------------------------------------------

-- 1. Calcula la cantidad media de todos las compras que aparecen en la tabla compra.
select AVG(total) AS cantidad_media from compra;
/**
+--------------------+
| cantidad_media     |
+--------------------+
| 1381.7000000000003 |
+--------------------+
1 row in set (0,00 sec)
**/

-- 2. Calcula el número total de suministradores distintos que aparecen en la tabla compra.
select distinct COUNT(id_suministrador) AS numero_suministradores from compra;
/**
+------------------------+
| numero_suministradores |
+------------------------+
|                     13 |
+------------------------+
1 row in set (0,00 sec)
**/

-- 3. Calcula el número total de consumidores que aparecen en la tabla consumidor.
select COUNT(id) as numero_consumidores from consumidor;
/**
+---------------------+
| numero_consumidores |
+---------------------+
|                   9 |
+---------------------+
1 row in set (0,02 sec)
**/

-- 4. Calcula cuál es la mayor cantidad que aparece en la tabla compra.
select MAX(total) AS mayor_cantidad from compra;
/**
+----------------+
| mayor_cantidad |
+----------------+
|           5760 |
+----------------+
1 row in set (0,00 sec)
**/

-- 5. Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla consumidor.
select ciudad, MAX(categoria) AS valor_maximo_categoria from consumidor GROUP BY ciudad ORDER BY ciudad;
/**
+----------+------------------------+
| ciudad   | valor_maximo_categoria |
+----------+------------------------+
| Almería  |                    200 |
| Cádiz    |                    100 |
| Granada  |                    225 |
| Huelva   |                    200 |
| Jaén     |                    300 |
| Sevilla  |                    300 |
+----------+------------------------+
6 rows in set (0,00 sec)
**/
-- 6. Calcula cuál es el máximo valor de las compras realizadas durante el mismo día para cada uno de los consumidores.  Es decir, el mismo consumidor puede haber realizado varios compras de diferentes cantidades el mismo día. Se pide que se calcule cuál es el compra de máximo valor para cada uno de los días en los que un consumidor ha realizado un compra. Muestra el identificador del consumidor, nombre, apellidos, la fecha y el valor de la cantidad.

-- 7. Calcula cuál es el máximo valor de las compras realizadas durante el mismo día para cada uno de los consumidores, teniendo en cuenta que sólo queremos mostrar aquellas compras que superen la cantidad de 2000 €.

-- 8. Calcula el máximo valor de las compras realizadas para cada uno de los suministradores durante la fecha 2020-08-17. Muestra el identificador del suministrador, nombre, apellidos y total.
select s.*, MAX(co.total) AS valor_maximo_compra from suministrador s JOIN compra co ON s.id = co.id_suministrador WHERE co.fecha = '2020-08-17' GROUP BY s.id;
/**
Da Empty set debido a que no se realizaron compras ese dia. 
**/

-- 9. Devuelve un listado con el identificador de consumidor, nombre y apellidos y el número total de compras que ha realizado cada uno de consumidores. Tenga en cuenta que pueden existir consumidores que no han realizado ninguna compra. Estos consumidores también deben aparecer en el listado indicando que el número de compras realizadas es 0.
select c.id, c. 

-- 10. Devuelve un listado con el identificador de consumidor, nombre y apellidos y el número total de compras que ha realizado cada uno de consumidores durante el año 2020.
select c.id, c.nombre, c.apellido1, c.apellido2 , COUNT(co.id_consumidor) AS numero_total_compras from consumidor c JOIN compra co ON c.id = co.id_consumidor WHERE fecha regexp '2020' GROUP BY c.id ORDER BY c.nombre;
/**
+----+---------+-----------+-----------+----------------------+
| id | nombre  | apellido1 | apellido2 | numero_total_compras |
+----+---------+-----------+-----------+----------------------+
|  2 | Adela   | Salas     | Díaz      |                    2 |
|  4 | Adrián  | Suárez    | NULL      |                    1 |
|  5 | Marcos  | Loyola    | Méndez    |                    2 |
|  6 | María   | Santana   | Moreno    |                    1 |
+----+---------+-----------+-----------+----------------------+
4 rows in set (0,00 sec)
**/

-- ---------------------
-- Subconsultas
-- -----------------------------------------------
-- 0,2 puntos la correcta (1-5).
-- 0,3 puntos la correcta (6-9).
-- Total = 2,2 puntos
-- -----------------------------------------------

--- Con operadores básicos de comparación

-- 1. Devuelve un listado con todos las compras que ha realizado Adela Salas Díaz. (Sin utilizar INNER JOIN).
select * from compra where id_consumidor = (select id from consumidor WHERE nombre = 'Adela' and apellido1 = 'Salas' and apellido2 = 'Díaz');
/**
+----+--------+------------+---------------+------------------+
| id | total  | fecha      | id_consumidor | id_suministrador |
+----+--------+------------+---------------+------------------+
|  3 |  65.26 | 2020-10-05 |             2 |                1 |
|  7 |   5760 | 2018-09-10 |             2 |                1 |
| 12 | 3045.6 | 2020-04-25 |             2 |                1 |
+----+--------+------------+---------------+------------------+
3 rows in set (0,00 sec)
**/

-- 2. Devuelve la fecha y la cantidad del compra de menor valor realizado por el cliente Pepe Ruiz Santana.
select fecha, total AS compra_menor_valor from compra where id_consumidor = (select id from consumidor WHERE nombre = 'Pepe' and apellido1 = 'Ruiz' and apellido2 = 'Santana') ORDER BY total asc LIMIT 1;
/**
+------------+--------------------+
| fecha      | compra_menor_valor |
+------------+--------------------+
| 2019-08-17 |              110.5 |
+------------+--------------------+
1 row in set (0,00 sec)
**/

-- 3. Devuelve el número de compras en los que ha participado el suministrador Daniel Sáez Vega. (Sin utilizar INNER JOIN)
select COUNT(id) AS numero_compras from compra where id_suministrador = (select id from suministrador WHERE nombre = 'Daniel' and apellido1 = 'Sáez' and apellido2 = 'Vega');
/**
+----------------+
| numero_compras |
+----------------+
|              6 |
+----------------+
1 row in set (0,00 sec)
**/

-- 4. Devuelve los datos del consumidor que realizó el compra más caro en el año 2021. (Sin utilizar INNER JOIN)
select * from consumidor WHERE id = (select id id_consumidor from compra WHERE fecha regexp '2021') ORDER BY total desc LIMIT 1;
esta Mal  

/**
SELECT *
FROM consumidor
WHERE id = (
    SELECT id_consumidor
    FROM compra
    WHERE YEAR(fecha) = 2021
    ORDER BY total DESC
    LIMIT 1
);

**/
-- 5. Devuelve un listado con los datos de los consumidores y las compras, de todos los consumidores que han realizado un compra durante el año 2020 con un valor mayor o igual al valor medio de las compras realizadas durante ese mismo año.

-- 6. Devuelve un listado de los consumidores que no han realizado ningún compra. (Utilizando IN o NOT IN).
select * from consumidor WHERE id NOT IN (select id_consumidor from compra);
/**
+----+-----------+-----------+-----------+---------+-----------+
| id | nombre    | apellido1 | apellido2 | ciudad  | categoria |
+----+-----------+-----------+-----------+---------+-----------+
|  9 | Guillermo | López     | Gómez     | Granada |       225 |
| 10 | Daniel    | Santana   | Loyola    | Sevilla |       125 |
+----+-----------+-----------+-----------+---------+-----------+
2 rows in set (0,01 sec)
**/

-- 7. Devuelve un listado de los suministradores que no han realizado ningún compra. (Utilizando IN o NOT IN).
select * from suministrador WHERE id NOT IN (select id_suministrador from compra);
/**
+----+---------+-----------+-----------+-----------+
| id | nombre  | apellido1 | apellido2 | categoria |
+----+---------+-----------+-----------+-----------+
|  4 | Marta   | Herrera   | Gil       |      0.14 |
|  5 | Antonio | Carretero | Ortega    |      0.12 |
|  8 | Alfredo | Ruiz      | Flores    |      0.05 |
+----+---------+-----------+-----------+-----------+
3 rows in set (0,00 sec)
**/

-- 8. Devuelve un listado de los consumidores que no han realizado ningún compra. (Utilizando EXISTS o NOT EXISTS).
select * from consumidor c WHERE NOT EXISTS (select 1 from compra co WHERE co.id_consumidor = c.id);
/**
+----+-----------+-----------+-----------+---------+-----------+
| id | nombre    | apellido1 | apellido2 | ciudad  | categoria |
+----+-----------+-----------+-----------+---------+-----------+
|  9 | Guillermo | López     | Gómez     | Granada |       225 |
| 10 | Daniel    | Santana   | Loyola    | Sevilla |       125 |
+----+-----------+-----------+-----------+---------+-----------+
2 rows in set (0,00 sec)
**/

-- 9. Devuelve un listado de los suministradores que no han realizado ningún compra. (Utilizando EXISTS o NOT EXISTS).
select * from suministrador s WHERE NOT EXISTS (select 1 from compra co WHERE co.id_suministrador = s.id);
/**
+----+---------+-----------+-----------+-----------+
| id | nombre  | apellido1 | apellido2 | categoria |
+----+---------+-----------+-----------+-----------+
|  4 | Marta   | Herrera   | Gil       |      0.14 |
|  5 | Antonio | Carretero | Ortega    |      0.12 |
|  8 | Alfredo | Ruiz      | Flores    |      0.05 |
+----+---------+-----------+-----------+-----------+
3 rows in set (0,00 sec)
**/