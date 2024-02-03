-- TAREA 6 BBDD / Eduardo Rabadán Melián

-- Obtener todos los clientes.
select * from Cliente;

/**
+----+-----------------+---------------------------+
| id |     nombre      |           email           |
+----+-----------------+---------------------------+
| 1  | Juan Pérez      | juan@example.com          |
| 2  | María Gómez     | maria@example.com         |
| 3  | Carlos López    | carlos@example.com        |
| 4  | Ana Rodríguez   | ana@example.com           |
| 5  | Luisa Martínez  | luisa@example.com         |
| 6  | Pedro Sánchez   | pedro@example.com         |
| 7  | Laura García    | laura@example.com         |
| 8  | Miguel Martín   | miguel@example.com        |
| 9  | Elena González  | elena@example.com         |
| 10 | David Torres    | david@example.com         |
| 11 | Sofía Ruiz      | sofia@example.com         |
| 12 | Javier López    | javier@example.com        |
| 13 | Carmen Vargas   | carmen@example.com        |
| 14 | Daniel Muñoz    | daniel@example.com        |
| 15 | Isabel Serrano  | isabel@example.com        |
| 16 | Alejandro Muñoz | alejandro@example.com     |
| 17 | Raquel Herrera  | raquel@example.com        |
| 18 | Francisco Mora  | francisco@example.com     |
| 19 | Marina Díaz     | marina@example.com        |
| 20 | Antonio Jiménez | antonio@example.com       |
| 21 | Beatriz Romero  | beatriz@example.com       |
| 22 | Carlos Gómez    | carlos.gomez@example.com  |
| 23 | Clara Sánchez   | clara.sanchez@example.com |
| 24 | Andrés Martínez | andres@example.com        |
| 25 | Lucía Díaz      | lucia@example.com         |
| 26 | Mario Serrano   | mario@example.com         |
| 27 | Eva Torres      | eva.torres@example.com    |
| 28 | Roberto Ruiz    | roberto@example.com       |
| 29 | Celia García    | celia@example.com         |
+----+-----------------+---------------------------+
**/

-- Obtener la cantidad total de productos en todos los pedidos
select SUM(cantidad) AS cantidad_total from Pedidos;

/**
+----------------+
| cantidad_total |
+----------------+
| 54             |
+----------------+
**/

-- Obtener el precio promedio de los productos:
select AVG(precio) AS precio_promedio from Productos;

/**
+------------------+
| precio_promedio  |
+------------------+
| 188.294285714286 |
+------------------+
**/

-- Obtener los clientes que tienen un email válido (contiene '@'):
select id, nombre from Clientes WHERE email regexp '[@]';

/**
+----+-----------------+
| id |     nombre      |
+----+-----------------+
| 1  | Juan Pérez      |
| 2  | María Gómez     |
| 3  | Carlos López    |
| 4  | Ana Rodríguez   |
| 5  | Luisa Martínez  |
| 6  | Pedro Sánchez   |
| 7  | Laura García    |
| 8  | Miguel Martín   |
| 9  | Elena González  |
| 10 | David Torres    |
| 11 | Sofía Ruiz      |
| 12 | Javier López    |
| 13 | Carmen Vargas   |
| 14 | Daniel Muñoz    |
| 15 | Isabel Serrano  |
| 16 | Alejandro Muñoz |
| 17 | Raquel Herrera  |
| 18 | Francisco Mora  |
| 19 | Marina Díaz     |
| 20 | Antonio Jiménez |
| 21 | Beatriz Romero  |
| 22 | Carlos Gómez    |
| 23 | Clara Sánchez   |
| 24 | Andrés Martínez |
| 25 | Lucía Díaz      |
| 26 | Mario Serrano   |
| 27 | Eva Torres      |
| 28 | Roberto Ruiz    |
| 29 | Celia García    |
+----+-----------------+
**/

-- Obtener el producto más caro.
select nombre, MAX(precio) AS mayor_precio from Productos;

/**
+--------+--------------+
| nombre | mayor_precio |
+--------+--------------+
| Laptop | 1200.0       |
+--------+--------------+
**/
-- Obtener los pedidos realizados en febrero de 2024.
select * from Pedidos WHERE fecha_pedido regexp '2024-02';

/**
+-----------+------------+-------------+----------+--------------+
| id_pedido | id_cliente | id_producto | cantidad | fecha_pedido |
+-----------+------------+-------------+----------+--------------+
| 1         | 1          | 1           | 2        | 2024-02-01   |
| 2         | 2          | 2           | 1        | 2024-02-02   |
| 3         | 3          | 3           | 3        | 2024-02-03   |
| 4         | 4          | 4           | 1        | 2024-02-04   |
| 5         | 5          | 5           | 2        | 2024-02-05   |
| 6         | 6          | 6           | 1        | 2024-02-06   |
| 7         | 7          | 7           | 3        | 2024-02-07   |
| 8         | 8          | 8           | 2        | 2024-02-08   |
| 9         | 9          | 9           | 1        | 2024-02-09   |
| 10        | 10         | 10          | 2        | 2024-02-10   |
| 11        | 11         | 11          | 1        | 2024-02-11   |
| 12        | 12         | 12          | 3        | 2024-02-12   |
| 13        | 13         | 13          | 1        | 2024-02-13   |
| 14        | 14         | 14          | 2        | 2024-02-14   |
| 15        | 15         | 15          | 1        | 2024-02-15   |
| 16        | 16         | 16          | 3        | 2024-02-16   |
| 17        | 17         | 17          | 2        | 2024-02-17   |
| 18        | 18         | 18          | 1        | 2024-02-18   |
| 19        | 19         | 19          | 2        | 2024-02-19   |
| 20        | 20         | 20          | 1        | 2024-02-20   |
| 21        | 21         | 21          | 3        | 2024-02-21   |
| 22        | 22         | 22          | 1        | 2024-02-22   |
| 23        | 23         | 23          | 2        | 2024-02-23   |
| 24        | 24         | 24          | 1        | 2024-02-24   |
| 25        | 25         | 25          | 3        | 2024-02-25   |
| 26        | 26         | 26          | 2        | 2024-02-26   |
| 27        | 27         | 27          | 1        | 2024-02-27   |
| 28        | 28         | 28          | 2        | 2024-02-28   |
| 29        | 29         | 29          | 1        | 2024-02-29   |
+-----------+------------+-------------+----------+--------------+
**/
-- Obtener la cantidad total de productos en todos los pedidos por producto.
select pr.nombre, p.cantidad  from Productos pr JOIN Pedidos p ON pr.id = p.id_producto;

/**
+-----------------------------------+----------+
|              nombre               | cantidad |
+-----------------------------------+----------+
| Laptop                            | 2        |
| Smartphone                        | 1        |
| TV LED                            | 3        |
| Tablet                            | 1        |
| Auriculares Bluetooth             | 2        |
| Impresora                         | 1        |
| Cámara Digital                    | 3        |
| Reproductor de Audio              | 2        |
| Altavoces Inalámbricos            | 1        |
| Reloj Inteligente                 | 2        |
| Teclado Inalámbrico               | 1        |
| Ratón Óptico                      | 3        |
| Monitor LED                       | 1        |
| Mochila para Portátil             | 2        |
| Disco Duro Externo                | 1        |
| Router Wi-Fi                      | 3        |
| Lámpara LED                       | 2        |
| Batería Externa                   | 1        |
| Estuche para Auriculares          | 2        |
| Tarjeta de Memoria                | 1        |
| Cargador Inalámbrico              | 3        |
| Kit de Limpieza para Computadoras | 1        |
| Funda para Tablet                 | 2        |
| Soporte para Teléfono             | 1        |
| Hub USB                           | 3        |
| Webcam HD                         | 2        |
| Funda para Laptop                 | 1        |
| Adaptador HDMI                    | 2        |
+-----------------------------------+----------+
**/
-- Obtener los clientes que han realizado más de un pedido.

-- Obtener los productos que tienen un precio registrado.
select * from Productos;
--Todos los productos de esta tabla tienen un precio registrado

-- Obtener la fecha del primer pedido realizado:
select MIN(fecha_pedido) AS primer_pedido from Pedidos;

/**
+---------------+
| primer_pedido |
+---------------+
| 2024-02-01    |
+---------------+
**/
-- Obtener los productos cuyos nombres comienzan con 'A' o 'B':
select nombre from Productos WHERE nombre regexp '^A|^B';

/**
+------------------------+
|         nombre         |
+------------------------+
| Auriculares Bluetooth  |
| Altavoces Inalámbricos |
| Batería Externa        |
| Adaptador HDMI         |
+------------------------+
**/

-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cliente.
select id_cliente, SUM(cantidad) AS cantidad_total from Pedidos GROUP BY id_cliente;

/**
+------------+----------------+
| id_cliente | cantidad_total |
+------------+----------------+
| 1          | 2              |
| 2          | 1              |
| 3          | 3              |
| 4          | 1              |
| 5          | 2              |
| 6          | 1              |
| 7          | 3              |
| 8          | 2              |
| 9          | 1              |
| 10         | 2              |
| 11         | 1              |
| 12         | 3              |
| 13         | 1              |
| 14         | 2              |
| 15         | 1              |
| 16         | 3              |
| 17         | 2              |
| 18         | 1              |
| 19         | 2              |
| 20         | 1              |
| 21         | 3              |
| 22         | 1              |
| 23         | 2              |
| 24         | 1              |
| 25         | 3              |
| 26         | 2              |
| 27         | 1              |
| 28         | 2              |
| 29         | 1              |
| 30         | 3              |
+------------+----------------+
**/
-- Obtener los clientes que han realizado más de un pedido en febrero de 2024.
select id_cliente from Pedidos WHERE fecha_pedido >= '2024-02-01'and fecha_pedido <= '2024-02-29' GROUP BY id_cliente HAVING COUNT(id_pedido) > 1;
--Sale un resultado vacío debido a que ningún cliente ha realizado más de un pedido.

-- Obtener los productos con precio entre 100 y 500.
select nombre, precio from Productos WHERE precio BETWEEN 100 and 500;

/**
+------------------------+--------+
|         nombre         | precio |
+------------------------+--------+
| Tablet                 | 299.99 |
| Impresora              | 199.99 |
| Cámara Digital         | 499.99 |
| Reproductor de Audio   | 149.99 |
| Altavoces Inalámbricos | 129.99 |
| Reloj Inteligente      | 249.99 |
| Monitor LED            | 349.99 |
+------------------------+--------+
**/

-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cantidad descendente.
select id_cliente, SUM(cantidad) AS cantidad_total from Pedidos GROUP BY id_cliente ORDER BY cantidad_total desc;

/**
+------------+----------------+
| id_cliente | cantidad_total |
+------------+----------------+
| 30         | 3              |
| 25         | 3              |
| 21         | 3              |
| 16         | 3              |
| 12         | 3              |
| 7          | 3              |
| 3          | 3              |
| 28         | 2              |
| 26         | 2              |
| 23         | 2              |
| 19         | 2              |
| 17         | 2              |
| 14         | 2              |
| 10         | 2              |
| 8          | 2              |
| 5          | 2              |
| 1          | 2              |
| 29         | 1              |
| 27         | 1              |
| 24         | 1              |
| 22         | 1              |
| 20         | 1              |
| 18         | 1              |
| 15         | 1              |
| 13         | 1              |
| 11         | 1              |
| 9          | 1              |
| 6          | 1              |
| 4          | 1              |
| 2          | 1              |
+------------+----------------+
**/

-- Obtener los clientes que tienen una 'a' en cualquier posición de su nombre.
select * from Clientes WHERE nombre regexp 'a';

/**
+----+-----------------+---------------------------+
| id |     nombre      |           email           |
+----+-----------------+---------------------------+
| 1  | Juan Pérez      | juan@example.com          |
| 2  | María Gómez     | maria@example.com         |
| 3  | Carlos López    | carlos@example.com        |
| 4  | Ana Rodríguez   | ana@example.com           |
| 5  | Luisa Martínez  | luisa@example.com         |
| 7  | Laura García    | laura@example.com         |
| 8  | Miguel Martín   | miguel@example.com        |
| 9  | Elena González  | elena@example.com         |
| 10 | David Torres    | david@example.com         |
| 11 | Sofía Ruiz      | sofia@example.com         |
| 12 | Javier López    | javier@example.com        |
| 13 | Carmen Vargas   | carmen@example.com        |
| 14 | Daniel Muñoz    | daniel@example.com        |
| 15 | Isabel Serrano  | isabel@example.com        |
| 16 | Alejandro Muñoz | alejandro@example.com     |
| 17 | Raquel Herrera  | raquel@example.com        |
| 18 | Francisco Mora  | francisco@example.com     |
| 19 | Marina Díaz     | marina@example.com        |
| 21 | Beatriz Romero  | beatriz@example.com       |
| 22 | Carlos Gómez    | carlos.gomez@example.com  |
| 23 | Clara Sánchez   | clara.sanchez@example.com |
| 24 | Andrés Martínez | andres@example.com        |
| 25 | Lucía Díaz      | lucia@example.com         |
| 26 | Mario Serrano   | mario@example.com         |
| 27 | Eva Torres      | eva.torres@example.com    |
| 29 | Celia García    | celia@example.com         |
+----+-----------------+---------------------------+
**/

-- Obtener el precio máximo de los productos.
select MAX(precio) as precio_máximo from Productos;

/**
+---------------+
| precio_máximo |
+---------------+
| 1200.0        |
+---------------+
**/

-- Obtener los pedidos realizados por el cliente con ID 1 en febrero de 2024.
select * from Pedidos WHERE id_cliente = 1 and fecha_pedido regexp '2024-02';

/**
+-----------+------------+-------------+----------+--------------+
| id_pedido | id_cliente | id_producto | cantidad | fecha_pedido |
+-----------+------------+-------------+----------+--------------+
| 1         | 1          | 1           | 2        | 2024-02-01   |
+-----------+------------+-------------+----------+--------------+
**/

-- Obtener la cantidad total de productos en todos los pedidos por producto ordenado por total de productos descendente.
select id_cliente, SUM(cantidad) AS cantidad_total_cliente from Pedidos GROUP BY id_cliente ORDER BY id_cliente desc;

/**
+------------+------------------------+
| id_cliente | cantidad_total_cliente |
+------------+------------------------+
| 30         | 3                      |
| 29         | 1                      |
| 28         | 2                      |
| 27         | 1                      |
| 26         | 2                      |
| 25         | 3                      |
| 24         | 1                      |
| 23         | 2                      |
| 22         | 1                      |
| 21         | 3                      |
| 20         | 1                      |
| 19         | 2                      |
| 18         | 1                      |
| 17         | 2                      |
| 16         | 3                      |
| 15         | 1                      |
| 14         | 2                      |
| 13         | 1                      |
| 12         | 3                      |
| 11         | 1                      |
| 10         | 2                      |
| 9          | 1                      |
| 8          | 2                      |
| 7          | 3                      |
| 6          | 1                      |
| 5          | 2                      |
| 4          | 1                      |
| 3          | 3                      |
| 2          | 1                      |
| 1          | 2                      |
+------------+------------------------+
**/

-- Obtener los productos que no tienen un precio registrado.

-- Obtener la fecha del último pedido realizado.
select MAX(fecha_pedido) AS último_pedido from Pedidos;

/**
+---------------+
| último_pedido |
+---------------+
| 2024-03-01    |
+---------------+
**/

-- Obtener los clientes cuyo nombre tiene al menos 5 caracteres.
select * from Clientes WHERE LENGTH(nombre) >= 5;

/**
+----+-----------------+---------------------------+
| id |     nombre      |           email           |
+----+-----------------+---------------------------+
| 1  | Juan Pérez      | juan@example.com          |
| 2  | María Gómez     | maria@example.com         |
| 3  | Carlos López    | carlos@example.com        |
| 4  | Ana Rodríguez   | ana@example.com           |
| 5  | Luisa Martínez  | luisa@example.com         |
| 6  | Pedro Sánchez   | pedro@example.com         |
| 7  | Laura García    | laura@example.com         |
| 8  | Miguel Martín   | miguel@example.com        |
| 9  | Elena González  | elena@example.com         |
| 10 | David Torres    | david@example.com         |
| 11 | Sofía Ruiz      | sofia@example.com         |
| 12 | Javier López    | javier@example.com        |
| 13 | Carmen Vargas   | carmen@example.com        |
| 14 | Daniel Muñoz    | daniel@example.com        |
| 15 | Isabel Serrano  | isabel@example.com        |
| 16 | Alejandro Muñoz | alejandro@example.com     |
| 17 | Raquel Herrera  | raquel@example.com        |
| 18 | Francisco Mora  | francisco@example.com     |
| 19 | Marina Díaz     | marina@example.com        |
| 20 | Antonio Jiménez | antonio@example.com       |
| 21 | Beatriz Romero  | beatriz@example.com       |
| 22 | Carlos Gómez    | carlos.gomez@example.com  |
| 23 | Clara Sánchez   | clara.sanchez@example.com |
| 24 | Andrés Martínez | andres@example.com        |
| 25 | Lucía Díaz      | lucia@example.com         |
| 26 | Mario Serrano   | mario@example.com         |
| 27 | Eva Torres      | eva.torres@example.com    |
| 28 | Roberto Ruiz    | roberto@example.com       |
| 29 | Celia García    | celia@example.com         |
+----+-----------------+---------------------------+
**/

-- Obtener los productos que tienen la letra 'o' en cualquier posición del nombre.
select id, nombre from Productos WHERE nombre regexp 'o';

/**
+----+-----------------------------------+
| id |              nombre               |
+----+-----------------------------------+
| 1  | Laptop                            |
| 2  | Smartphone                        |
| 5  | Auriculares Bluetooth             |
| 6  | Impresora                         |
| 8  | Reproductor de Audio              |
| 9  | Altavoces Inalámbricos            |
| 10 | Reloj Inteligente                 |
| 11 | Teclado Inalámbrico               |
| 12 | Ratón Óptico                      |
| 13 | Monitor LED                       |
| 14 | Mochila para Portátil             |
| 15 | Disco Duro Externo                |
| 16 | Router Wi-Fi                      |
| 20 | Tarjeta de Memoria                |
| 21 | Cargador Inalámbrico              |
| 22 | Kit de Limpieza para Computadoras |
| 24 | Soporte para Teléfono             |
| 27 | Funda para Laptop                 |
| 28 | Adaptador HDMI                    |
+----+-----------------------------------+
**/

-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cliente.
--Repetida.

-- Obtener los clientes cuyos nombres no contienen la letra 'i':
 select id, nombre from Clientes WHERE nombre NOT regexp '[iíI]' ORDER BY id;

 /**
 +----+-----------------+
| id |     nombre      |
+----+-----------------+
| 1  | Juan Pérez      |
| 3  | Carlos López    |
| 6  | Pedro Sánchez   |
| 9  | Elena González  |
| 13 | Carmen Vargas   |
| 16 | Alejandro Muñoz |
| 17 | Raquel Herrera  |
| 22 | Carlos Gómez    |
| 23 | Clara Sánchez   |
| 27 | Eva Torres      |
+----+-----------------+
 **/
-- Obtener los pedidos realizados por el cliente con ID 2 en febrero de 2024.
select * from Pedidos WHERE id_cliente = 2 and fecha_pedido regexp '2024-02';

/**
+-----------+------------+-------------+----------+--------------+
| id_pedido | id_cliente | id_producto | cantidad | fecha_pedido |
+-----------+------------+-------------+----------+--------------+
| 2         | 2          | 2           | 1        | 2024-02-02   |
+-----------+------------+-------------+----------+--------------+
**/
-- Obtener el precio mínimo de los productos.
select nombre, MIN(precio) from Productos;

/**
+-----------------------------------+-------------+
|              nombre               | MIN(precio) |
+-----------------------------------+-------------+
| Kit de Limpieza para Computadoras | 9.99        |
+-----------------------------------+-------------+
**/

-- Obtener los clientes que han realizado al menos un pedido en febrero de 2024.
select id_cliente from Pedidos WHERE fecha_pedido >= '2024-02-01'and fecha_pedido <= '2024-02-29' GROUP BY id_cliente HAVING COUNT(id_pedido) >= 1;

/**
+------------+
| id_cliente |
+------------+
| 1          |
| 2          |
| 3          |
| 4          |
| 5          |
| 6          |
| 7          |
| 8          |
| 9          |
| 10         |
| 11         |
| 12         |
| 13         |
| 14         |
| 15         |
| 16         |
| 17         |
| 18         |
| 19         |
| 20         |
| 21         |
| 22         |
| 23         |
| 24         |
| 25         |
| 26         |
| 27         |
| 28         |
| 29         |
+------------+
**/

-- Obtener la fecha del último pedido realizado por el cliente con ID 3.
select id_cliente, MAX(fecha_pedido) from Pedidos WHERE id_cliente = 3;

/**
+------------+-------------------+
| id_cliente | MAX(fecha_pedido) |
+------------+-------------------+
| 3          | 2024-02-03        |
+------------+-------------------+
**/
-- Obtener los productos que tienen una 'a' al final del nombre.
select * from Productos WHERE nombre regexp 'a$';

/**
+----+--------------------+--------+
| id |       nombre       | precio |
+----+--------------------+--------+
| 6  | Impresora          | 199.99 |
| 18 | Batería Externa    | 19.99  |
| 20 | Tarjeta de Memoria | 24.99  |
+----+--------------------+--------+
**/

-- Obtener los clientes cuyos nombres tienen al menos 4 vocales (mayúsculas|minúsculas).
select id, nombre from clientes where nombre regexp '([aeiouAEIOU].*){4,}';

/**
+----+-----------------+
| id |     nombre      |
+----+-----------------+
| 4  | Ana Rodríguez   |
| 5  | Luisa Martínez  |
| 7  | Laura García    |
| 8  | Miguel Martín   |
| 9  | Elena González  |
| 10 | David Torres    |
| 11 | Sofía Ruiz      |
| 12 | Javier López    |
| 13 | Carmen Vargas   |
| 14 | Daniel Muñoz    |
| 15 | Isabel Serrano  |
| 16 | Alejandro Muñoz |
| 17 | Raquel Herrera  |
| 18 | Francisco Mora  |
| 19 | Marina Díaz     |
| 20 | Antonio Jiménez |
| 21 | Beatriz Romero  |
| 26 | Mario Serrano   |
| 27 | Eva Torres      |
| 28 | Roberto Ruiz    |
| 29 | Celia García    |
+----+-----------------+
**/

-- Obtener los productos cuyo precio tenga al menos 4 números sin contar los decimales.
select * from Productos WHERE precio regexp '\d{4,}\.';

/**
+----+--------+--------+
| id | nombre | precio |
+----+--------+--------+
| 1  | Laptop | 1200.0 |
+----+--------+--------+
**/
-- Obtener los clientes cuyos nombres tienen al menos una 'a' seguida de una 'e'.
select id, nombre from Clientes WHERE nombre regexp 'ae';
--Sale un resultado vacío debido a que no hay ningún nombre que tenga 'ae'

-- Obtener los productos cuyos nombres terminan con una consonante.
select id, nombre from Productos WHERE nombre not regexp '[aeiouAEIOU]$';

/**
+----+-----------------------------------+
| id |              nombre               |
+----+-----------------------------------+
| 1  | Laptop                            |
| 3  | TV LED                            |
| 4  | Tablet                            |
| 5  | Auriculares Bluetooth             |
| 7  | Cámara Digital                    |
| 9  | Altavoces Inalámbricos            |
| 13 | Monitor LED                       |
| 14 | Mochila para Portátil             |
| 17 | Lámpara LED                       |
| 19 | Estuche para Auriculares          |
| 22 | Kit de Limpieza para Computadoras |
| 23 | Funda para Tablet                 |
| 25 | Hub USB                           |
| 26 | Webcam HD                         |
| 27 | Funda para Laptop                 |
+----+-----------------------------------+
**/

-- Obtener los productos cuyos nombres empiezan con una vocal.
select id, nombre from Productos WHERE nombre regexp '^[aeiouAEIOU]';

/**
+----+--------------------------+
| id |          nombre          |
+----+--------------------------+
| 5  | Auriculares Bluetooth    |
| 6  | Impresora                |
| 9  | Altavoces Inalámbricos   |
| 19 | Estuche para Auriculares |
| 28 | Adaptador HDMI           |
+----+--------------------------+
**/
