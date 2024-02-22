/**
Consultas sobre una tabla
**/

--Devuelve un listado con todos los pedidos que se han realizado. Los pedidos deben estar ordenados por la fecha de realización, mostrando en primer lugar los pedidos más recientes.
select * from pedido ORDER BY fecha desc;

/**
+----+---------+------------+------------+--------------+
| id |  total  |   fecha    | id_cliente | id_comercial |
+----+---------+------------+------------+--------------+
| 15 | 370.85  | 2019-03-11 | 1          | 5            |
| 16 | 2389.23 | 2019-03-11 | 1          | 5            |
| 13 | 545.75  | 2019-01-25 | 6          | 1            |
| 8  | 1983.43 | 2017-10-10 | 4          | 6            |
| 1  | 150.5   | 2017-10-05 | 5          | 2            |
| 3  | 65.26   | 2017-10-05 | 2          | 1            |
| 5  | 948.5   | 2017-09-10 | 5          | 2            |
| 12 | 3045.6  | 2017-04-25 | 2          | 1            |
| 14 | 145.82  | 2017-02-02 | 6          | 1            |
| 9  | 2480.4  | 2016-10-10 | 8          | 3            |
| 2  | 270.65  | 2016-09-10 | 1          | 5            |
| 4  | 110.5   | 2016-08-17 | 8          | 3            |
| 11 | 75.29   | 2016-08-17 | 3          | 7            |
| 6  | 2400.6  | 2016-07-27 | 7          | 1            |
| 7  | 5760.0  | 2015-09-10 | 2          | 1            |
| 10 | 250.45  | 2015-06-27 | 8          | 2            |
+----+---------+------------+------------+--------------+
**/

--Devuelve todos los datos de los dos pedidos de mayor valor.
select * from pedido ORDER BY total desc LIMIT 2;

/**
+----+--------+------------+------------+--------------+
| id | total  |   fecha    | id_cliente | id_comercial |
+----+--------+------------+------------+--------------+
| 7  | 5760.0 | 2015-09-10 | 2          | 1            |
| 12 | 3045.6 | 2017-04-25 | 2          | 1            |
+----+--------+------------+------------+--------------+
**/

--Devuelve un listado con los identificadores de los clientes que han realizado algún pedido. Tenga en cuenta que no debe mostrar identificadores que estén repetidos.
select DISTINCT id_cliente from pedido;

/**
+------------+
| id_cliente |
+------------+
| 5          |
| 1          |
| 2          |
| 8          |
| 7          |
| 4          |
| 3          |
| 6          |
+------------+
**/

--Devuelve un listado de todos los pedidos que se realizaron durante el año 2017, cuya cantidad total sea superior a 500€.
select * from pedido WHERE fecha regexp '2017' and total > 500;

/**
+----+---------+------------+------------+--------------+
| id |  total  |   fecha    | id_cliente | id_comercial |
+----+---------+------------+------------+--------------+
| 5  | 948.5   | 2017-09-10 | 5          | 2            |
| 8  | 1983.43 | 2017-10-10 | 4          | 6            |
| 12 | 3045.6  | 2017-04-25 | 2          | 1            |
+----+---------+------------+------------+--------------+
**/

--Devuelve un listado con el nombre y los apellidos de los comerciales que tienen una comisión entre 0.05 y 0.11.
select nombre, apellido1, apellido2, categoria from comercial WHERE categoria BETWEEN 0.05 and 0.11;

/**
+---------+-----------+-----------+-----------+
| nombre  | apellido1 | apellido2 | categoria |
+---------+-----------+-----------+-----------+
| Diego   | Flores    | Salas     | 0.11      |
| Antonio | Vega      | Hernández | 0.11      |
| Alfredo | Ruiz      | Flores    | 0.05      |
+---------+-----------+-----------+-----------+
**/

--Devuelve el valor de la comisión de mayor valor que existe en la tabla comercial.
select nombre, apellido1, apellido2, MAX(categoria) AS mayor_comision from comercial;

/**
+--------+-----------+-----------+----------------+
| nombre | apellido1 | apellido2 | mayor_comision |
+--------+-----------+-----------+----------------+
| Daniel | Sáez      | Vega      | 0.15           |
+--------+-----------+-----------+----------------+
**/

--Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo segundo apellido no es NULL. El listado deberá estar ordenado alfabéticamente por apellidos y nombre.
select id, nombre, apellido1 from cliente WHERE apellido2 IS NOT NULL ORDER BY apellido1 asc, nombre desc;

/**
+----+-----------+-----------+
| id |  nombre   | apellido1 |
+----+-----------+-----------+
| 5  | Marcos    | Loyola    |
| 9  | Guillermo | López     |
| 1  | Aarón     | Rivero    |
| 3  | Adolfo    | Rubio     |
| 8  | Pepe      | Ruiz      |
| 2  | Adela     | Salas     |
| 6  | María     | Santana   |
| 10 | Daniel    | Santana   |
+----+-----------+-----------+
**/

--Devuelve un listado de los nombres de los clientes que empiezan por A y terminan por n y también los nombres que empiezan por P. El listado deberá estar ordenado alfabéticamente.
select nombre from cliente WHERE (nombre regexp 'A' OR nombre regexp 'P') ORDER BY nombre;
--regexp ('^[a|p]* n&')

/**
+--------+
| nombre |
+--------+
| Aarón  |
| Adela  |
| Adolfo |
| Adrián |
| Pepe   |
| Pilar  |
+--------+
**/

--Devuelve un listado de los nombres de los clientes que no empiezan por A. El listado deberá estar ordenado alfabéticamente.
select nombre from cliente WHERE nombre not regexp 'A' ORDER BY nombre;
-- not regexp (^a*)
/**
+-----------+
|  nombre   |
+-----------+
| Daniel    |
| Guillermo |
| Marcos    |
| María     |
| Pepe      |
| Pilar     |
+-----------+
**/

--Devuelve un listado con los nombres de los comerciales que terminan por el o o. Tenga en cuenta que se deberán eliminar los nombres repetidos.
select DISTINCT nombre from comercial WHERE nombre regexp 'o$';

/**
+---------+
| nombre  |
+---------+
| Diego   |
| Antonio |
| Alfredo |
+---------+
**/

/**
Consultas multitabla
Nota: Resuelva todas las consultas utilizando las cláusulas INNER JOIN.
**/

--Devuelve un listado con el identificador, nombre y los apellidos de todos los clientes que han realizado algún pedido. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.
select DISTINCT cli.id, cli.nombre, cli.apellido1, cli.apellido2 from cliente cli JOIN pedido p ON cli.id = p.id_cliente WHERE (select p.id_cliente from pedido) ORDER BY cli.nombre;

/**
+----+--------+-----------+-----------+
| id | nombre | apellido1 | apellido2 |
+----+--------+-----------+-----------+
| 1  | Aarón  | Rivero    | Gómez     |
| 2  | Adela  | Salas     | Díaz      |
| 3  | Adolfo | Rubio     | Flores    |
| 4  | Adrián | Suárez    |           |
| 5  | Marcos | Loyola    | Méndez    |
| 6  | María  | Santana   | Moreno    |
| 8  | Pepe   | Ruiz      | Santana   |
| 7  | Pilar  | Ruiz      |           |
+----+--------+-----------+-----------+
**/

--Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.
select cli.*, p.* from cliente cli JOIN pedido p ON cli.id = p.id_cliente WHERE (select p.id_cliente from pedido) ORDER BY cli.nombre;

/**
+----+--------+-----------+-----------+---------+-----------+----+---------+------------+------------+--------------+
| id | nombre | apellido1 | apellido2 | ciudad  | categoria | id |  total  |   fecha    | id_cliente | id_comercial |
+----+--------+-----------+-----------+---------+-----------+----+---------+------------+------------+--------------+
| 1  | Aarón  | Rivero    | Gómez     | Almería | 100       | 2  | 270.65  | 2016-09-10 | 1          | 5            |
| 1  | Aarón  | Rivero    | Gómez     | Almería | 100       | 15 | 370.85  | 2019-03-11 | 1          | 5            |
| 1  | Aarón  | Rivero    | Gómez     | Almería | 100       | 16 | 2389.23 | 2019-03-11 | 1          | 5            |
| 2  | Adela  | Salas     | Díaz      | Granada | 200       | 3  | 65.26   | 2017-10-05 | 2          | 1            |
| 2  | Adela  | Salas     | Díaz      | Granada | 200       | 7  | 5760.0  | 2015-09-10 | 2          | 1            |
| 2  | Adela  | Salas     | Díaz      | Granada | 200       | 12 | 3045.6  | 2017-04-25 | 2          | 1            |
| 3  | Adolfo | Rubio     | Flores    | Sevilla |           | 11 | 75.29   | 2016-08-17 | 3          | 7            |
| 4  | Adrián | Suárez    |           | Jaén    | 300       | 8  | 1983.43 | 2017-10-10 | 4          | 6            |
| 5  | Marcos | Loyola    | Méndez    | Almería | 200       | 1  | 150.5   | 2017-10-05 | 5          | 2            |
| 5  | Marcos | Loyola    | Méndez    | Almería | 200       | 5  | 948.5   | 2017-09-10 | 5          | 2            |
| 6  | María  | Santana   | Moreno    | Cádiz   | 100       | 13 | 545.75  | 2019-01-25 | 6          | 1            |
| 6  | María  | Santana   | Moreno    | Cádiz   | 100       | 14 | 145.82  | 2017-02-02 | 6          | 1            |
| 8  | Pepe   | Ruiz      | Santana   | Huelva  | 200       | 4  | 110.5   | 2016-08-17 | 8          | 3            |
| 8  | Pepe   | Ruiz      | Santana   | Huelva  | 200       | 9  | 2480.4  | 2016-10-10 | 8          | 3            |
| 8  | Pepe   | Ruiz      | Santana   | Huelva  | 200       | 10 | 250.45  | 2015-06-27 | 8          | 2            |
| 7  | Pilar  | Ruiz      |           | Sevilla | 300       | 6  | 2400.6  | 2016-07-27 | 7          | 1            |
+----+--------+-----------+-----------+---------+-----------+----+---------+------------+------------+--------------+
**/

--Devuelve un listado que muestre todos los pedidos en los que ha participado un comercial. El resultado debe mostrar todos los datos de los pedidos y de los comerciales. El listado debe mostrar los datos de los comerciales ordenados alfabéticamente.
select com.*, p.* from comercial com JOIN pedido p ON com.id = p.id_comercial WHERE (select p.id_cliente from pedido) ORDER BY com.nombre;

/**
+----+---------+-----------+-----------+-----------+----+---------+------------+------------+--------------+
| id | nombre  | apellido1 | apellido2 | categoria | id |  total  |   fecha    | id_cliente | id_comercial |
+----+---------+-----------+-----------+-----------+----+---------+------------+------------+--------------+
| 5  | Antonio | Carretero | Ortega    | 0.12      | 2  | 270.65  | 2016-09-10 | 1          | 5            |
| 7  | Antonio | Vega      | Hernández | 0.11      | 11 | 75.29   | 2016-08-17 | 3          | 7            |
| 5  | Antonio | Carretero | Ortega    | 0.12      | 15 | 370.85  | 2019-03-11 | 1          | 5            |
| 5  | Antonio | Carretero | Ortega    | 0.12      | 16 | 2389.23 | 2019-03-11 | 1          | 5            |
| 1  | Daniel  | Sáez      | Vega      | 0.15      | 3  | 65.26   | 2017-10-05 | 2          | 1            |
| 1  | Daniel  | Sáez      | Vega      | 0.15      | 6  | 2400.6  | 2016-07-27 | 7          | 1            |
| 1  | Daniel  | Sáez      | Vega      | 0.15      | 7  | 5760.0  | 2015-09-10 | 2          | 1            |
| 1  | Daniel  | Sáez      | Vega      | 0.15      | 12 | 3045.6  | 2017-04-25 | 2          | 1            |
| 1  | Daniel  | Sáez      | Vega      | 0.15      | 13 | 545.75  | 2019-01-25 | 6          | 1            |
| 1  | Daniel  | Sáez      | Vega      | 0.15      | 14 | 145.82  | 2017-02-02 | 6          | 1            |
| 3  | Diego   | Flores    | Salas     | 0.11      | 4  | 110.5   | 2016-08-17 | 8          | 3            |
| 3  | Diego   | Flores    | Salas     | 0.11      | 9  | 2480.4  | 2016-10-10 | 8          | 3            |
| 2  | Juan    | Gómez     | López     | 0.13      | 1  | 150.5   | 2017-10-05 | 5          | 2            |
| 2  | Juan    | Gómez     | López     | 0.13      | 5  | 948.5   | 2017-09-10 | 5          | 2            |
| 2  | Juan    | Gómez     | López     | 0.13      | 10 | 250.45  | 2015-06-27 | 8          | 2            |
| 6  | Manuel  | Domínguez | Hernández | 0.13      | 8  | 1983.43 | 2017-10-10 | 4          | 6            |
+----+---------+-----------+-----------+-----------+----+---------+------------+------------+--------------+
**/

--Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los comerciales asociados a cada pedido.
select (cli.nombre) AS nombre_cliente, (p.id) AS id_pedido, (p.total) AS total_pedido, (p.fecha) AS fecha_pedido, (com.nombre) AS nombre_comercial, (com.apellido1) AS apellido1_comercial, (com.apellido2) AS apellido2_comercial 
FROM cliente cli JOIN pedido p ON cli.id = p.id_cliente JOIN comercial com ON p.id_comercial = com.id;

/**
+----------------+-----------+--------------+--------------+------------------+---------------------+---------------------+
| nombre_cliente | id_pedido | total_pedido | fecha_pedido | nombre_comercial | apellido1_comercial | apellido2_comercial |
+----------------+-----------+--------------+--------------+------------------+---------------------+---------------------+
| Marcos         | 1         | 150.5        | 2017-10-05   | Juan             | Gómez               | López               |
| Aarón          | 2         | 270.65       | 2016-09-10   | Antonio          | Carretero           | Ortega              |
| Adela          | 3         | 65.26        | 2017-10-05   | Daniel           | Sáez                | Vega                |
| Pepe           | 4         | 110.5        | 2016-08-17   | Diego            | Flores              | Salas               |
| Marcos         | 5         | 948.5        | 2017-09-10   | Juan             | Gómez               | López               |
| Pilar          | 6         | 2400.6       | 2016-07-27   | Daniel           | Sáez                | Vega                |
| Adela          | 7         | 5760.0       | 2015-09-10   | Daniel           | Sáez                | Vega                |
| Adrián         | 8         | 1983.43      | 2017-10-10   | Manuel           | Domínguez           | Hernández           |
| Pepe           | 9         | 2480.4       | 2016-10-10   | Diego            | Flores              | Salas               |
| Pepe           | 10        | 250.45       | 2015-06-27   | Juan             | Gómez               | López               |
| Adolfo         | 11        | 75.29        | 2016-08-17   | Antonio          | Vega                | Hernández           |
| Adela          | 12        | 3045.6       | 2017-04-25   | Daniel           | Sáez                | Vega                |
| María          | 13        | 545.75       | 2019-01-25   | Daniel           | Sáez                | Vega                |
| María          | 14        | 145.82       | 2017-02-02   | Daniel           | Sáez                | Vega                |
| Aarón          | 15        | 370.85       | 2019-03-11   | Antonio          | Carretero           | Ortega              |
| Aarón          | 16        | 2389.23      | 2019-03-11   | Antonio          | Carretero           | Ortega              |
+----------------+-----------+--------------+--------------+------------------+---------------------+---------------------+
**/
--Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2017, cuya cantidad esté entre 300 € y 1000 €.
select cli.* from cliente cli JOIN pedido p ON cli.id = p.id_cliente WHERE (select p.fecha, p.total from pedido WHERE p.fecha regexp '2017' and p.total >= 300 and p.total < 1000);
--Devuelve el nombre y los apellidos de todos los comerciales que ha participado en algún pedido realizado por María Santana Moreno.
select com.nombre, com.apellido1, com.apellido2 from comercial com, cliente cli JOIN pedido p ON cli.id = p.id_cliente and com.id = p.id_comercial WHERE cli.nombre regexp 'María';

/**
+--------+-----------+-----------+
| nombre | apellido1 | apellido2 |
+--------+-----------+-----------+
| Daniel | Sáez      | Vega      |
| Daniel | Sáez      | Vega      |
+--------+-----------+-----------+
**/

--Devuelve el nombre de todos los clientes que han realizado algún pedido con el comercial Daniel Sáez Vega.
select cli.nombre, cli.apellido1, cli.apellido2 from comercial com, cliente cli JOIN pedido p ON cli.id = p.id_cliente and com.id = p.id_comercial WHERE com.nombre regexp 'Daniel';

/**
+--------+-----------+-----------+
| nombre | apellido1 | apellido2 |
+--------+-----------+-----------+
| Adela  | Salas     | Díaz      |
| Pilar  | Ruiz      |           |
| Adela  | Salas     | Díaz      |
| Adela  | Salas     | Díaz      |
| María  | Santana   | Moreno    |
| María  | Santana   | Moreno    |
+--------+-----------+-----------+
**/

/**
Consultas resumen (Funciones)
**/

--Calcula la cantidad total que suman todos los pedidos que aparecen en la tabla pedido.
select SUM(total) AS cantidad_total from pedido;

/**
+----------------+
| cantidad_total |
+----------------+
| 20992.83       |
+----------------+
**/

--Calcula la cantidad media de todos los pedidos que aparecen en la tabla pedido.
select AVG(id) AS cantidad_media from pedido;

/**
+----------------+
| cantidad_media |
+----------------+
| 8.5            |
+----------------+
**/

--Calcula el número total de comerciales distintos que aparecen en la tabla pedido.
select DISTINCT(COUNT(id)) AS numero_comerciales from comercial; 

/**
+--------------------+
| numero_comerciales |
+--------------------+
| 8                  |
+--------------------+
**/

--Calcula el número total de clientes que aparecen en la tabla cliente.
select COUNT(id) AS numero_clientes from cliente;

/**
+-----------------+
| numero_clientes |
+-----------------+
| 10              |
+-----------------+
**/

--Calcula cuál es la mayor cantidad que aparece en la tabla pedido.
select MAX(total) AS mayor_cantidad from pedido;

/**
+----------------+
| mayor_cantidad |
+----------------+
| 5760.0         |
+----------------+
**/

--Calcula cuál es la menor cantidad que aparece en la tabla pedido.
select MIN(total) AS menor_cantidad from pedido;

/**
+----------------+
| menor_cantidad |
+----------------+
| 65.26          |
+----------------+
**/

--Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla cliente.
select ciudad, MAX(categoria) AS maximo_categoria from cliente GROUP BY ciudad;

/**
+---------+------------------+
| ciudad  | maximo_categoria |
+---------+------------------+
| Almería | 200              |
| Cádiz   | 100              |
| Granada | 225              |
| Huelva  | 200              |
| Jaén    | 300              |
| Sevilla | 300              |
+---------+------------------+
**/

--Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes. Es decir, el mismo cliente puede haber realizado varios pedidos de diferentes cantidades el mismo día. Se pide que se calcule cuál es el pedido de máximo valor para cada uno de los días en los que un cliente ha realizado un pedido. Muestra el identificador del cliente, nombre, apellidos, la fecha y el valor de la cantidad.
select c.id, c.nombre, c.apellido1, c.apellido2, p.fecha, MAX(p.total) AS valor_max from cliente c, pedido p WHERE c.id = p.id_cliente GROUP BY p.id_cliente, p.fecha;
-- USAR JOIN Y QUITAR P.ID_CLIENTE PARA QUE NO SE ME REPITA LOS NOMBRES
/**
+----+--------+-----------+-----------+------------+-----------+
| id | nombre | apellido1 | apellido2 |   fecha    | valor_max |
+----+--------+-----------+-----------+------------+-----------+
| 1  | Aarón  | Rivero    | Gómez     | 2016-09-10 | 270.65    |
| 1  | Aarón  | Rivero    | Gómez     | 2019-03-11 | 2389.23   |
| 2  | Adela  | Salas     | Díaz      | 2015-09-10 | 5760.0    |
| 2  | Adela  | Salas     | Díaz      | 2017-04-25 | 3045.6    |
| 2  | Adela  | Salas     | Díaz      | 2017-10-05 | 65.26     |
| 3  | Adolfo | Rubio     | Flores    | 2016-08-17 | 75.29     |
| 4  | Adrián | Suárez    |           | 2017-10-10 | 1983.43   |
| 5  | Marcos | Loyola    | Méndez    | 2017-09-10 | 948.5     |
| 5  | Marcos | Loyola    | Méndez    | 2017-10-05 | 150.5     |
| 6  | María  | Santana   | Moreno    | 2017-02-02 | 145.82    |
| 6  | María  | Santana   | Moreno    | 2019-01-25 | 545.75    |
| 7  | Pilar  | Ruiz      |           | 2016-07-27 | 2400.6    |
| 8  | Pepe   | Ruiz      | Santana   | 2015-06-27 | 250.45    |
| 8  | Pepe   | Ruiz      | Santana   | 2016-08-17 | 110.5     |
| 8  | Pepe   | Ruiz      | Santana   | 2016-10-10 | 2480.4    |
+----+--------+-----------+-----------+------------+-----------+
**/

--Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes, teniendo en cuenta que sólo queremos mostrar aquellos pedidos que superen la cantidad de 2000 €.
select id_cliente, fecha, MAX(total) AS valor_max from pedido WHERE total > 2000 GROUP BY id_cliente, fecha;

/**
+------------+------------+-----------+
| id_cliente |   fecha    | valor_max |
+------------+------------+-----------+
| 1          | 2019-03-11 | 2389.23   |
| 2          | 2015-09-10 | 5760.0    |
| 2          | 2017-04-25 | 3045.6    |
| 7          | 2016-07-27 | 2400.6    |
| 8          | 2016-10-10 | 2480.4    |
+------------+------------+-----------+
**/

--Calcula el máximo valor de los pedidos realizados para cada uno de los comerciales durante la fecha 2016-08-17. Muestra el identificador del comercial, nombre, apellidos y total.
select c.id, c.nombre, c.apellido1, c.apellido2, p.fecha, MAX(p.total) AS total_max from comercial c JOIN pedido p ON c.id = p.id_comercial WHERE p.fecha = '2016-08-17' GROUP BY c.id;

/**
+----+---------+-----------+-----------+------------+-----------+
| id | nombre  | apellido1 | apellido2 |   fecha    | total_max |
+----+---------+-----------+-----------+------------+-----------+
| 3  | Diego   | Flores    | Salas     | 2016-08-17 | 110.5     |
| 7  | Antonio | Vega      | Hernández | 2016-08-17 | 75.29     |
+----+---------+-----------+-----------+------------+-----------+
**/

--Devuelve un listado con el identificador de cliente, nombre y apellidos y el número total de pedidos que ha realizado cada uno de clientes. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido. Estos clientes también deben aparecer en el listado indicando que el número de pedidos realizados es 0.
select (c.id) AS id_cliente, c.nombre, c.apellido1, c.apellido2, (select COUNT(*) from pedido p WHERE p.id_cliente = c.id) as pedidos_totales from cliente c;

/**
+------------+-----------+-----------+-----------+-----------------+
| id_cliente |  nombre   | apellido1 | apellido2 | pedidos_totales |
+------------+-----------+-----------+-----------+-----------------+
| 1          | Aarón     | Rivero    | Gómez     | 3               |
| 2          | Adela     | Salas     | Díaz      | 3               |
| 3          | Adolfo    | Rubio     | Flores    | 1               |
| 4          | Adrián    | Suárez    |           | 1               |
| 5          | Marcos    | Loyola    | Méndez    | 2               |
| 6          | María     | Santana   | Moreno    | 2               |
| 7          | Pilar     | Ruiz      |           | 1               |
| 8          | Pepe      | Ruiz      | Santana   | 3               |
| 9          | Guillermo | López     | Gómez     | 0               |
| 10         | Daniel    | Santana   | Loyola    | 0               |
+------------+-----------+-----------+-----------+-----------------+
**/

--Devuelve un listado con el identificador de cliente, nombre y apellidos y el número total de pedidos que ha realizado cada uno de clientes durante el año 2017.
select c.id, c.nombre, c.apellido1, c.apellido2, p.total from pedido p, cliente c WHERE c.id = p.id_cliente and p.fecha regexp '2017';

/**
+----+--------+-----------+-----------+---------+
| id | nombre | apellido1 | apellido2 |  total  |
+----+--------+-----------+-----------+---------+
| 5  | Marcos | Loyola    | Méndez    | 150.5   |
| 2  | Adela  | Salas     | Díaz      | 65.26   |
| 5  | Marcos | Loyola    | Méndez    | 948.5   |
| 4  | Adrián | Suárez    |           | 1983.43 |
| 2  | Adela  | Salas     | Díaz      | 3045.6  |
| 6  | María  | Santana   | Moreno    | 145.82  |
+----+--------+-----------+-----------+---------+
**/

--Devuelve un listado que muestre el identificador de cliente, nombre, primer apellido y el valor de la máxima cantidad del pedido realizado por cada uno de los clientes. El resultado debe mostrar aquellos clientes que no han realizado ningún pedido indicando que la máxima cantidad de sus pedidos realizados es 0.
select (id) AS id_cliente, c.nombre, c.apellido1, (select MAX(total) from pedido p WHERE p.id_cliente = c.id) AS max_cantidad_pedido from cliente c;

/**
+------------+-----------+-----------+---------------------+
| id_cliente |  nombre   | apellido1 | max_cantidad_pedido |
+------------+-----------+-----------+---------------------+
| 1          | Aarón     | Rivero    | 2389.23             |
| 2          | Adela     | Salas     | 5760.0              |
| 3          | Adolfo    | Rubio     | 75.29               |
| 4          | Adrián    | Suárez    | 1983.43             |
| 5          | Marcos    | Loyola    | 948.5               |
| 6          | María     | Santana   | 545.75              |
| 7          | Pilar     | Ruiz      | 2400.6              |
| 8          | Pepe      | Ruiz      | 2480.4              |
| 9          | Guillermo | López     |                     |
| 10         | Daniel    | Santana   |                     |
+------------+-----------+-----------+---------------------+
**/

--Devuelve cuál ha sido el pedido de máximo valor que se ha realizado cada año.
select strftime('%Y', fecha) AS año, MAX(id) AS id_pedido, MAX(total) AS valor_pedido_max from pedido GROUP BY STRFTIME('%Y', fecha);

/**
+------+-----------+------------------+
| año  | id_pedido | valor_pedido_max |
+------+-----------+------------------+
| 2015 | 10        | 5760.0           |
| 2016 | 11        | 2480.4           |
| 2017 | 14        | 3045.6           |
| 2019 | 16        | 2389.23          |
+------+-----------+------------------+
**/

--Devuelve el número total de pedidos que se han realizado cada año.
select strftime('%Y', fecha) AS año, COUNT(*) AS pedido_total from pedido GROUP BY strftime('%Y', fecha);

/**
+------+--------------+
| año  | pedido_total |
+------+--------------+
| 2015 | 2            |
| 2016 | 5            |
| 2017 | 6            |
| 2019 | 3            |
+------+--------------+
**/

/**
Subconsultas
Con operadores básicos de comparación
**/

--Devuelve un listado con todos los pedidos que ha realizado Adela Salas Díaz. (Sin utilizar INNER JOIN).
select * from pedido WHERE id_cliente = (select id from cliente WHERE nombre = 'Adela');

/**
+----+--------+------------+------------+--------------+
| id | total  |   fecha    | id_cliente | id_comercial |
+----+--------+------------+------------+--------------+
| 3  | 65.26  | 2017-10-05 | 2          | 1            |
| 7  | 5760.0 | 2015-09-10 | 2          | 1            |
| 12 | 3045.6 | 2017-04-25 | 2          | 1            |
+----+--------+------------+------------+--------------+
**/

--Devuelve el número de pedidos en los que ha participado el comercial Daniel Sáez Vega. (Sin utilizar INNER JOIN)
select count(*) from pedido WHERE id_comercial = (select id from comercial WHERE nombre = 'Daniel');
-- SELECT count(*)
/**
+----+--------+------------+------------+--------------+
| id | total  |   fecha    | id_cliente | id_comercial |
+----+--------+------------+------------+--------------+
| 3  | 65.26  | 2017-10-05 | 2          | 1            |
| 6  | 2400.6 | 2016-07-27 | 7          | 1            |
| 7  | 5760.0 | 2015-09-10 | 2          | 1            |   CAMBIAR TABLA!!!!
| 12 | 3045.6 | 2017-04-25 | 2          | 1            |
| 13 | 545.75 | 2019-01-25 | 6          | 1            |
| 14 | 145.82 | 2017-02-02 | 6          | 1            |
+----+--------+------------+------------+--------------+
**/

--Devuelve los datos del cliente que realizó el pedido más caro en el año 2019. (Sin utilizar INNER JOIN)
select * from cliente WHERE id = (select id_cliente from pedido WHERE strftime('%Y', fecha) = '2019' ORDER BY total desc LIMIT 1);

/**
+----+--------+-----------+-----------+---------+-----------+
| id | nombre | apellido1 | apellido2 | ciudad  | categoria |
+----+--------+-----------+-----------+---------+-----------+
| 1  | Aarón  | Rivero    | Gómez     | Almería | 100       |
+----+--------+-----------+-----------+---------+-----------+
**/

--Devuelve la fecha y la cantidad del pedido de menor valor realizado por el cliente Pepe Ruiz Santana.
select fecha, total from pedido WHERE id_cliente = (select id from cliente WHERE nombre = 'Pepe') ORDER BY total asc LIMIT 1;

/**
+------------+-------+
|   fecha    | total |
+------------+-------+
| 2016-08-17 | 110.5 |
+------------+-------+
**/

--Devuelve un listado con los datos de los clientes y los pedidos, de todos los clientes que han realizado un pedido durante el año 2017 con un valor mayor o igual al valor medio de los pedidos realizados durante ese mismo año.
select cli.*, p.* from cliente cli JOIN pedido p ON cli.id = p.id_cliente WHERE p.fecha regexp '2017' and p.total >= (select AVG(total) from pedido WHERE strftime('%Y', fecha) = '2017');

/**
+----+--------+-----------+-----------+---------+-----------+----+---------+------------+------------+--------------+
| id | nombre | apellido1 | apellido2 | ciudad  | categoria | id |  total  |   fecha    | id_cliente | id_comercial |
+----+--------+-----------+-----------+---------+-----------+----+---------+------------+------------+--------------+
| 4  | Adrián | Suárez    |           | Jaén    | 300       | 8  | 1983.43 | 2017-10-10 | 4          | 6            |
| 2  | Adela  | Salas     | Díaz      | Granada | 200       | 12 | 3045.6  | 2017-04-25 | 2          | 1            |
+----+--------+-----------+-----------+---------+-----------+----+---------+------------+------------+--------------+
**/

/**
Subconsultas con IN y NOT IN
**/

--Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando IN o NOT IN).
select * from cliente WHERE id NOT IN (select id_cliente from pedido);

/**
+----+-----------+-----------+-----------+---------+-----------+
| id |  nombre   | apellido1 | apellido2 | ciudad  | categoria |
+----+-----------+-----------+-----------+---------+-----------+
| 9  | Guillermo | López     | Gómez     | Granada | 225       |
| 10 | Daniel    | Santana   | Loyola    | Sevilla | 125       |
+----+-----------+-----------+-----------+---------+-----------+
**/

--Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando IN o NOT IN).
select * from comercial WHERE id NOT IN (select id_comercial from pedido);

/**
+----+---------+-----------+-----------+-----------+
| id | nombre  | apellido1 | apellido2 | categoria |
+----+---------+-----------+-----------+-----------+
| 4  | Marta   | Herrera   | Gil       | 0.14      |
| 8  | Alfredo | Ruiz      | Flores    | 0.05      |
+----+---------+-----------+-----------+-----------+
**/

/**
Subconsultas con EXISTS y NOT EXISTS
**/
--Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS).
select cli.nombre, cli.apellido1, cli.apellido2 from cliente cli WHERE NOT EXISTS (select p.id_cliente from pedido p WHERE cli.id = p.id_cliente);

/**
+-----------+-----------+-----------+
|  nombre   | apellido1 | apellido2 |
+-----------+-----------+-----------+
| Guillermo | López     | Gómez     |
| Daniel    | Santana   | Loyola    |
+-----------+-----------+-----------+
**/

--Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS).
select c.* from comercial c WHERE NOT EXISTS (select p.id_comercial from pedido p WHERE c.id = p.id_comercial);

/**
+----+---------+-----------+-----------+-----------+
| id | nombre  | apellido1 | apellido2 | categoria |
+----+---------+-----------+-----------+-----------+
| 4  | Marta   | Herrera   | Gil       | 0.14      |
| 8  | Alfredo | Ruiz      | Flores    | 0.05      |
+----+---------+-----------+-----------+-----------+
**/
