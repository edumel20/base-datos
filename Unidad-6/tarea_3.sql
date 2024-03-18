-- Realiza las siguientes consultas:

--Mostrar todos los clientes.
select * from clientes;

/**
+------------+----------------+----------------+
| id_cliente | nombre_cliente | ciudad_cliente |
+------------+----------------+----------------+
|          1 | Juan           | Ciudad A       |
|          2 | María          | Ciudad B       |
|          3 | Pedro          | Ciudad C       |
+------------+----------------+----------------+
**/

--Mostrar todas las órdenes.
select * from ordenes;

/**
+----------+------------+-------------+
| id_orden | id_cliente | fecha_orden |
+----------+------------+-------------+
|        1 |          1 | 2024-03-01  |
|        2 |          2 | 2024-03-02  |
|        3 |          3 | 2024-03-03  |
+----------+------------+-------------+
**/

--Mostrar todos los productos.
select * from productos;

/**
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           1 | Producto A      |           50.00 |
|           2 | Producto B      |           75.00 |
|           3 | Producto C      |          100.00 |
+-------------+-----------------+-----------------+
**/

--Mostrar todos los detalles de las órdenes.
select * from detalles_ordenes;

/**
+------------+----------+-------------+----------+
| id_detalle | id_orden | id_producto | cantidad |
+------------+----------+-------------+----------+
|          1 |        1 |           1 |        2 |
|          2 |        2 |           2 |        1 |
|          3 |        3 |           3 |        3 |
+------------+----------+-------------+----------+
**/

--Mostrar los primeros 5 clientes ordenados por nombre.
select nombre_cliente from clientes ORDER BY nombre_cliente LIMIT 5;

/**
+----------------+
| nombre_cliente |
+----------------+
| Juan           |
| María          |
| Pedro          |
+----------------+
**/

--Mostrar los productos con un precio mayor a 50.
select * from productos WHERE precio_producto > 50;

/**
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           2 | Producto B      |           75.00 |
|           3 | Producto C      |          100.00 |
+-------------+-----------------+-----------------+
**/

--Mostrar todas las órdenes realizadas por el cliente con ID 1.
select * from ordenes WHERE id_cliente = 1;

/**
+----------+------------+-------------+
| id_orden | id_cliente | fecha_orden |
+----------+------------+-------------+
|        1 |          1 | 2024-03-01  |
+----------+------------+-------------+
**/

--Mostrar los clientes cuyos nombres comienzan con la letra "A".
select * from clientes WHERE nombre_cliente regexp '^A';

/**
Sale sentencia vacía debido a que no hay ningún nombre
que empiece por la letra 'A'.
**/

--Mostrar las órdenes que contienen más de 2 productos.
select * from detalles_ordenes WHERE cantidad > 2;

/**
+------------+----------+-------------+----------+
| id_detalle | id_orden | id_producto | cantidad |
+------------+----------+-------------+----------+
|          3 |        3 |           3 |        3 |
+------------+----------+-------------+----------+
**/

--Mostrar los productos ordenados por precio de forma descendente.
select * from productos ORDER BY precio_producto desc;

/**
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           3 | Producto C      |          100.00 |
|           2 | Producto B      |           75.00 |
|           1 | Producto A      |           50.00 |
+-------------+-----------------+-----------------+
**/

--Seleccionar todos los clientes y sus órdenes, incluso si no tienen órdenes.
select cli.*, ord.id_orden, ord.fecha_orden from clientes cli JOIN ordenes ord ON cli.id_cliente = ord.id_cliente;
--USAR LEFT JOIN!!!
/**
+------------+----------------+----------------+----------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | fecha_orden |
+------------+----------------+----------------+----------+-------------+
|          1 | Juan           | Ciudad A       |        1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 | 2024-03-03  |
+------------+----------------+----------------+----------+-------------+
**/

--Seleccionar todas las órdenes junto con los productos correspondientes.
select ord.*, pro.* from detalles_ordenes det JOIN ordenes ord ON det.id_orden = ord.id_orden JOIN productos pro ON det.id_producto = pro.id_producto;

/**
+----------+------------+-------------+-------------+-----------------+-----------------+
| id_orden | id_cliente | fecha_orden | id_producto | nombre_producto | precio_producto |
+----------+------------+-------------+-------------+-----------------+-----------------+
|        1 |          1 | 2024-03-01  |           1 | Producto A      |           50.00 |
|        2 |          2 | 2024-03-02  |           2 | Producto B      |           75.00 |
|        3 |          3 | 2024-03-03  |           3 | Producto C      |          100.00 |
+----------+------------+-------------+-------------+-----------------+-----------------+
**/

--Mostrar el nombre de los clientes que han realizado órdenes de productos que cuestan más de 50.
select ord.*, pro.* from detalles_ordenes det JOIN ordenes ord ON det.id_orden = ord.id_orden JOIN productos pro ON det.id_producto = pro.id_producto WHERE pro.precio_producto > 50;

/**
+----------+------------+-------------+-------------+-----------------+-----------------+
| id_orden | id_cliente | fecha_orden | id_producto | nombre_producto | precio_producto |
+----------+------------+-------------+-------------+-----------------+-----------------+
|        2 |          2 | 2024-03-02  |           2 | Producto B      |           75.00 |
|        3 |          3 | 2024-03-03  |           3 | Producto C      |          100.00 |
+----------+------------+-------------+-------------+-----------------+-----------------+
**/

--Obtener el nombre de los productos que no se han ordenado aún.
select pro.nombre_producto from detalles_ordenes det JOIN ordenes ord ON det.id_orden = ord.id_orden JOIN productos pro ON det.id_producto = pro.id_producto WHERE det.id_producto IS NULL;

/**
Sale una sentencia vacía debido a que todos los productos han sido ordenados.
**/

--Mostrar el nombre del cliente, el producto y la cantidad para todas las órdenes.
select cli.nombre_cliente, pro.nombre_producto, det.cantidad from clientes cli JOIN ordenes ord ON cli.id_cliente = ord.id_cliente JOIN detalles_ordenes det ON ord.id_orden = det.id_orden JOIN productos pro ON det.id_producto = pro.id_producto;

/**
+----------------+-----------------+----------+
| nombre_cliente | nombre_producto | cantidad |
+----------------+-----------------+----------+
| Juan           | Producto A      |        2 |
| María          | Producto B      |        1 |
| Pedro          | Producto C      |        3 |
+----------------+-----------------+----------+
**/

--Obtener el nombre de los productos junto con los nombres de los clientes que han realizado órdenes de esos productos.
select cli.nombre_cliente, pro.nombre_producto from clientes cli JOIN ordenes ord ON cli.id_cliente = ord.id_cliente JOIN detalles_ordenes det ON ord.id_orden = det.id_orden JOIN productos pro ON det.id_producto = pro.id_producto;

/**
+----------------+-----------------+
| nombre_cliente | nombre_producto |
+----------------+-----------------+
| Juan           | Producto A      |
| María          | Producto B      |
| Pedro          | Producto C      |
+----------------+-----------------+
**/

--Mostrar todas las órdenes con sus clientes y productos, incluso si no hay órdenes.
select cli.nombre_cliente, pro.nombre_producto from clientes cli LEFT JOIN ordenes ord ON cli.id_cliente = ord.id_cliente JOIN detalles_ordenes det ON ord.id_orden = det.id_orden JOIN productos pro ON det.id_producto = pro.id_producto;

/**
+----------------+-----------------+
| nombre_cliente | nombre_producto |
+----------------+-----------------+
| Juan           | Producto A      |
| María          | Producto B      |
| Pedro          | Producto C      |
+----------------+-----------------+
**/

--Obtener el nombre de los clientes junto con el número total de órdenes que han realizado.
select cli.nombre_cliente, COUNT(ord.id_orden) AS total_ordenes from clientes cli JOIN ordenes ord ON cli.id_cliente = ord.id_cliente GROUP BY cli.id_cliente;

/**
+----------------+---------------+
| nombre_cliente | total_ordenes |
+----------------+---------------+
| Juan           |             1 |
| María          |             1 |
| Pedro          |             1 |
+----------------+---------------+
**/

--Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto.
select ord.*, cli.nombre_cliente, pro.nombre_producto from clientes cli JOIN ordenes ord ON cli.id_cliente = ord.id_cliente JOIN detalles_ordenes det ON ord.id_orden = det.id_orden JOIN productos pro ON det.id_producto = pro.id_producto;

/**
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+
**/

--Mostrar todas las órdenes con sus productos y clientes, incluso si no hay información de cliente.
select ord.*, cli.nombre_cliente, pro.nombre_producto from clientes cli RIGHT JOIN ordenes ord ON cli.id_cliente = ord.id_cliente JOIN detalles_ordenes det ON ord.id_orden = det.id_orden JOIN productos pro ON det.id_producto = pro.id_producto;

/**
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+
**/

--Obtener el nombre de los productos junto con los nombres de los clientes que han realizado órdenes de esos productos, incluyendo los productos que no han sido ordenados.
select ord.*, cli.nombre_cliente, pro.nombre_producto from clientes cli RIGHT JOIN ordenes ord ON cli.id_cliente = ord.id_cliente JOIN detalles_ordenes det ON ord.id_orden = det.id_orden JOIN productos pro ON det.id_producto = pro.id_producto;

/**
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+
**/

--Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto, incluyendo las órdenes sin productos.

--Obtener el nombre de los clientes junto con el número total de órdenes que han realizado, incluyendo los clientes que no han realizado órdenes.

--Mostrar todas las órdenes con sus clientes y productos, incluyendo las órdenes y productos que no tienen información.

--Realizar un inner join entre clientes y órdenes.
select cli.*, ord.id_orden, ord.fecha_orden from clientes cli JOIN ordenes ord ON cli.id_cliente = ord.id_cliente;

/**
------------+----------------+----------------+----------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | fecha_orden |
+------------+----------------+----------------+----------+-------------+
|          1 | Juan           | Ciudad A       |        1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 | 2024-03-03  |
+------------+----------------+----------------+----------+-------------+
**/

--Realizar un left join entre órdenes y detalles de órdenes.
select ord.*, det.id_detalle, det.id_producto, det.cantidad from ordenes ord LEFT JOIN detalles_ordenes det ON ord.id_orden = det.id_orden;

/**
+----------+------------+-------------+------------+-------------+----------+
| id_orden | id_cliente | fecha_orden | id_detalle | id_producto | cantidad |
+----------+------------+-------------+------------+-------------+----------+
|        1 |          1 | 2024-03-01  |          1 |           1 |        2 |
|        2 |          2 | 2024-03-02  |          2 |           2 |        1 |
|        3 |          3 | 2024-03-03  |          3 |           3 |        3 |
+----------+------------+-------------+------------+-------------+----------+
**/

--Realizar un right join entre productos y detalles de órdenes.
select pro.*, det.id_orden, det.id_detalle, det.cantidad from productos pro RIGHT JOIN detalles_ordenes det ON pro.id_producto = det.id_producto;

/**
-------------+-----------------+-----------------+----------+------------+----------+
| id_producto | nombre_producto | precio_producto | id_orden | id_detalle | cantidad |
+-------------+-----------------+-----------------+----------+------------+----------+
|           1 | Producto A      |           50.00 |        1 |          1 |        2 |
|           2 | Producto B      |           75.00 |        2 |          2 |        1 |
|           3 | Producto C      |          100.00 |        3 |          3 |        3 |
+-------------+-----------------+-----------------+----------+------------+----------+
**/

--Realizar un full join entre clientes y órdenes.
select * from clientes cli LEFT JOIN ordenes ord ON cli.id_cliente = ord.id_cliente UNION select * from clientes cli RIGHT JOIN ordenes ord ON cli.id_cliente = ord.id_cliente;

/**
+------------+----------------+----------------+----------+------------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | id_cliente | fecha_orden |
+------------+----------------+----------------+----------+------------+-------------+
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 |          2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 |          3 | 2024-03-03  |
+------------+----------------+----------------+----------+------------+-------------+
**/

--Realizar un full join entre órdenes y detalles de órdenes.
select * from ordenes ord LEFT JOIN detalles_ordenes det ON ord.id_orden = det.id_orden UNION select * from ordenes ord RIGHT JOIN detalles_ordenes det ON ord.id_orden = det.id_orden;

/**
+----------+------------+-------------+------------+----------+-------------+----------+
| id_orden | id_cliente | fecha_orden | id_detalle | id_orden | id_producto | cantidad |
+----------+------------+-------------+------------+----------+-------------+----------+
|        1 |          1 | 2024-03-01  |          1 |        1 |           1 |        2 |
|        2 |          2 | 2024-03-02  |          2 |        2 |           2 |        1 |
|        3 |          3 | 2024-03-03  |          3 |        3 |           3 |        3 |
+----------+------------+-------------+------------+----------+-------------+----------+
**/

--Realizar un full join entre productos y detalles de órdenes.
select * from productos pro LEFT JOIN detalles_ordenes det ON pro.id_producto = det.id_producto UNION select * from productos pro RIGHT JOIN detalles_ordenes ON pro.id_producto = det.id_producto WHERE pro.id_producto IS NULL; 

/**
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
| id_producto | nombre_producto | precio_producto | id_detalle | id_orden | id_producto | cantidad |
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
|           1 | Producto A      |           50.00 |          1 |        1 |           1 |        2 |
|           2 | Producto B      |           75.00 |          2 |        2 |           2 |        1 |
|           3 | Producto C      |          100.00 |          3 |        3 |           3 |        3 |
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
**/
