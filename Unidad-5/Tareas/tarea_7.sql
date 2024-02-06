-- Listar los coches vendidos con sus modelos y precios, junto con los nombres de los clientes que los compraron.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. ¿Qué es lo que no me han pedido?
select c.modelo, c.precio, (select ci.nombre from clientes as ci WHERE ci.id_cliente = v.id_cliente) AS cliente from coches as c, ventas as v WHERE c.id_coche = v.id_coche;

/**
+----------------+---------+-----------------+
|     modelo     | precio  |     cliente     |
+----------------+---------+-----------------+
| Sedán 2022     | 25000.0 | Juan Pérez      |
| Hatchback 2021 | 22000.0 | María Gómez     |
| SUV 2023       | 30000.0 | Carlos López    |
| Coupé 2022     | 28000.0 | Ana Martínez    |
| Camioneta 2023 | 32000.0 | Pedro Rodríguez |
| Compacto 2021  | 20000.0 | Laura Sánchez   |
| Híbrido 2022   | 27000.0 | Miguel González |
| Deportivo 2023 | 35000.0 | Isabel Díaz     |
| Eléctricvo 2021 | 40000.0 | Elena Torres   |
+----------------+---------+-----------------+
**/

-- Encontrar los clientes que han comprado coches con precios superiores al promedio de todos los coches vendidos.
  -- Cosas que debo de tener en cuenta:
    -- Precios superiores.
    -- Obtener la media. AVG(precio)
select ci.nombre from clientes as ci, coches as c, ventas as v WHERE ci.id_cliente = v.id_cliente and v.id_coche = c.id_coche and c.precio > (select AVG(precio) from coches);

/**
+-----------------+
|     nombre      |
+-----------------+
| Carlos López    |
| Pedro Rodríguez |
| Isabel Díaz     |
| Elena Torres    |
+-----------------+
**/
-- Mostrar los modelos de coches y sus precios que no han sido vendidos aún:
  -- Cosas que debo de tener en cuenta:
    -- Coches que han sido vendidos.
    -- Quiero los coches que no han sido vendidos. NOT id_coche IN ventas 
select modelo, precio from coches WHERE id_coche NOT IN (select id_coche from ventas );

/**
+-------------+---------+
|   modelo    | precio  |
+-------------+---------+
| Pickup 2022 | 31000.0 |
+-------------+---------+
**/

-- Calcular el total gastado por todos los clientes en coches:
  -- Cosas que debo de tener en cuenta:
    -- Me estan pidiendo la suma total de todos los coches vendidos, NO de aquellos que aún no se han vendido.
select ci.id_cliente, ci.nombre, (select SUM(c.precio) from coches as c, ventas as v WHERE c.id_coche = v.id_coche and v.id_cliente = ci.id_cliente) AS gasto_total from clientes as ci;

/**
+------------+-----------------+-------------+
| id_cliente |     nombre      | gasto_total |
+------------+-----------------+-------------+
| 1          | Juan Pérez      | 25000.0     |
| 2          | María Gómez     | 22000.0     |
| 3          | Carlos López    | 30000.0     |
| 4          | Ana Martínez    | 28000.0     |
| 5          | Pedro Rodríguez | 32000.0     |
| 6          | Laura Sánchez   | 20000.0     |
| 7          | Miguel González | 27000.0     |
| 8          | Isabel Díaz     | 35000.0     |
| 9          | Francisco Ruiz  |             |
| 10         | Elena Torres    | 40000.0     |
+------------+-----------------+-------------+
**/
-- Listar los coches vendidos junto con la fecha de venta y el nombre del cliente, ordenados por fecha de venta de forma descendente:
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. ¿Por qué campo tengo que ordenadar. Es uno o más campos?
select modelos,
-- Encontrar el modelo de coche más caro.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. MAX
select modelo, MAX(precio) AS coche_más_caro from coches;

/**
+----------------+----------------+
|     modelo     | coche_más_caro |
+----------------+----------------+
| Eléctrico 2021 | 40000.0        |
+----------------+----------------+
**/

-- Mostrar los clientes que han comprado al menos un coche (un coche o más) y la cantidad de coches comprados.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT

-- Encontrar los clientes que han comprado coches de la marca 'Toyota':
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. Like | regexp | =. Tabla normalizada ?.
select DISTINCT ci.* from clientes as ci, coches as c, ventas as v WHERE ci.id_cliente = v.id_cliente and v.id_coche = c.id_coche and c.marca = 'Toyota';

/**
+------------+------------+------+--------------+
| id_cliente |   nombre   | edad |  direccion   |
+------------+------------+------+--------------+
| 1          | Juan Pérez | 30   | Calle A #123 |
+------------+------------+------+--------------+
**/

-- Calcular el promedio de edad de los clientes que han comprado coches de más de 25,000.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. 
select AVG(edad) AS edad_promedio from clientes WHERE id_cliente IN  (select v.id_cliente from ventas as v, coches as c WHERE v.id_coche = c.id_coche and c.precio > 25000); 

/**
+------------------+
|  edad_promedio   |
+------------------+
| 32.8333333333333 |
+------------------+
**/
-- Mostrar los modelos de coches y sus precios que fueron comprados por clientes mayores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.
select modelo, precio from coches WHERE id_coche IN (select v.id_coche from ventas as v, clientes as ci WHERE v.id_cliente = ci.id_cliente and ci.edad > 30);

/**
+----------------+---------+
|     modelo     | precio  |
+----------------+---------+
| SUV 2023       | 30000.0 |
| Camioneta 2023 | 32000.0 |
| Compacto 2021  | 20000.0 |
| Deportivo 2023 | 35000.0 |
+----------------+---------+
**/
-- Encontrar los coches vendidos en el año 2022 junto con la cantidad total de ventas en ese año.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.

-- Listar los coches cuyos precios son mayores que el precio promedio de coches vendidos a clientes menores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. AVG
select id_coche, modelo, precio from coches WHERE precio > (select AVG(c.precio) from coches as c, ventas as v, clientes as ci WHERE c.id_coche = v.id_coche and v.id_coche = ci.id_cliente and ci.edad < 30);

/**
+----------+----------------+---------+
| id_coche |     modelo     | precio  |
+----------+----------------+---------+
| 3        | SUV 2023       | 30000.0 |
| 5        | Camioneta 2023 | 32000.0 |
| 8        | Deportivo 2023 | 35000.0 |
| 9        | Pickup 2022    | 31000.0 |
| 10       | Eléctrico 2021 | 40000.0 |
+----------+----------------+---------+
**/
-- Calcular el total de ventas por marca de coche, ordenado de forma descendente por el total de ventas:
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT| DESC|ASC precio
select c.marca, COUNT(*) AS ventas_totales from ventas as v, coches as c WHERE v.id_coche = c.id_coche GROUP BY c.marca ORDER BY ventas_totales desc;

/**
+------------+----------------+
|   marca    | ventas_totales |
+------------+----------------+
| Volkswagen | 1              |
| Toyota     | 1              |
| Tesla      | 1              |
| Nissan     | 1              |
| Mazda      | 1              |
| Hyundai    | 1              |
| Honda      | 1              |
| Ford       | 1              |
| Chevrolet  | 1              |
+------------+----------------+
**/