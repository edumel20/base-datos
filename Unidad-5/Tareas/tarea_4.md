<div align="center">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/SQLite370.svg/2560px-SQLite370.svg.png" width="300px"/>
</div>

# **TAREA 4**
___
## Trabajando con funciones

### Paso 1: Creación de la BBDD.

Se crea el fichero *supermercado-dump.sql* con la siguiente información: 

```sql
CREATE TABLE productos (
    id INTEGER PRIMARY KEY,
    nombre TEXT,
    categoria TEXT,
    precio REAL
);

CREATE TABLE ventas (
    id INTEGER PRIMARY KEY,
    id_producto INTEGER,
    cantidad INTEGER,
    fecha DATE,
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

INSERT INTO productos (id, nombre, categoria, precio) VALUES 
    (1, 'Arroz', 'Alimentos', 2.5),
    (2, 'Leche', 'Lácteos', 1.8),
    (3, 'Pan', 'Panadería', 1.2),
    (4, 'Manzanas', 'Frutas', 3.0),
    (5, 'Pollo', 'Carnes', 5.5),
    (6, 'Huevos', 'Lácteos', 1.0),
    (7, 'Yogurt', 'Lácteos', 2.0),
    (8, 'Tomates', 'Verduras', 2.2),
    (9, 'Queso', 'Lácteos', 4.0),
    (10, 'Cereal', 'Desayuno', 3.5),
    (11, 'Papel Higiénico', 'Hogar', 1.5),
    (12, 'Cepillo de Dientes', 'Higiene', 2.0),
    (13, 'Detergente', 'Limpieza', 2.8),
    (14, 'Galletas', 'Snacks', 1.7),
    (15, 'Aceite de Oliva', 'Cocina', 4.5),
    (16, 'Café', 'Bebidas', 5.0),
    (17, 'Sopa enlatada', 'Conservas', 2.3),
    (18, 'Jabón de Baño', 'Higiene', 1.2),
    (19, 'Botellas de Agua', 'Bebidas', 1.0),
    (20, 'Cerveza', 'Bebidas', 3.8);

INSERT INTO ventas (id_producto, cantidad, fecha) VALUES 
    (1, 5, '2024-01-17'),
    (2, 3, '2024-01-17'),
    (4, 2, '2024-01-17'),
    (5, 1, '2024-01-17'),
    (6, 10, '2024-01-18'),
    (8, 4, '2024-01-18'),
    (10, 2, '2024-01-18'),
    (14, 7, '2024-01-19'),
    (16, 3, '2024-01-19'),
    (18, 6, '2024-01-20');
```
___

### Paso 2: Lectura del fichero .sql

1. Creamos la base de datos con el nombre *tarea4.db* mediante el siguiente comando:

```sql
sqlite3 tarea4.db
```

2. Ahora realizaremos la creación e inserción de información de la BBDD con el fichero **sql** anteriormente creado usando la siguiente sentencia:

```sql
.read supermercado-dump.sql
```
___

### Paso 3: Responde a las siguientes cuestiones

1. Realiza el diagrama **ER** de la **BBDD** supermercado:

![Alt text](image-6.png)



2. Realiza el diagrama **MR** de la **BBDD** supermercado:

![Alt text](image-7.png)
___

### Paso 4: Responde a las siguientes cuestiones

En este apartado vamos a realizar varias consultas a la BBDD *tarea4.db*, mosttrando el resultado obtenido:

1. Mostrar todos los productos de la categoría "Bebidas".

```sql
select * from productos where categoria = 'Bebidas';
```
```sql
+----+------------------+-----------+--------+
| id |      nombre      | categoria | precio |
+----+------------------+-----------+--------+
| 16 | Café             | Bebidas   | 5.0    |
| 19 | Botellas de Agua | Bebidas   | 1.0    |
| 20 | Cerveza          | Bebidas   | 3.8    |
+----+------------------+-----------+--------+
```

2. Listar los productos ordenados por precio de forma descendente.

```sql
select * from productos ORDER BY precio desc;
```
```sql
+----+--------------------+-----------+--------+
| id |       nombre       | categoria | precio |
+----+--------------------+-----------+--------+
| 5  | Pollo              | Carnes    | 5.5    |
| 16 | Café               | Bebidas   | 5.0    |
| 15 | Aceite de Oliva    | Cocina    | 4.5    |
| 9  | Queso              | Lácteos   | 4.0    |
| 20 | Cerveza            | Bebidas   | 3.8    |
| 10 | Cereal             | Desayuno  | 3.5    |
| 4  | Manzanas           | Frutas    | 3.0    |
| 13 | Detergente         | Limpieza  | 2.8    |
| 1  | Arroz              | Alimentos | 2.5    |
| 17 | Sopa enlatada      | Conservas | 2.3    |
| 8  | Tomates            | Verduras  | 2.2    |
| 7  | Yogurt             | Lácteos   | 2.0    |
| 12 | Cepillo de Dientes | Higiene   | 2.0    |
| 2  | Leche              | Lácteos   | 1.8    |
| 14 | Galletas           | Snacks    | 1.7    |
| 11 | Papel Higiénico    | Hogar     | 1.5    |
| 3  | Pan                | Panadería | 1.2    |
| 18 | Jabón de Baño      | Higiene   | 1.2    |
| 6  | Huevos             | Lácteos   | 1.0    |
| 19 | Botellas de Agua   | Bebidas   | 1.0    |
+----+--------------------+-----------+--------+
```
3. Calcular el precio total de todos los productos en la tabla "productos".

```sql
select SUM(precio) as total_price from productos;
```
```sql
+-------------+
| total_price |
+-------------+
| 52.5        |
+-------------+
```
4. Encontrar los productos con un nombre que contenga la letra 'a'.

```sql
select * from productos WHERE nombre LIKE '%a%';
```
```sql
+----+------------------+-----------+--------+
| id |      nombre      | categoria | precio |
+----+------------------+-----------+--------+
| 1  | Arroz            | Alimentos | 2.5    |
| 3  | Pan              | Panadería | 1.2    |
| 4  | Manzanas         | Frutas    | 3.0    |
| 8  | Tomates          | Verduras  | 2.2    |
| 10 | Cereal           | Desayuno  | 3.5    |
| 11 | Papel Higiénico  | Hogar     | 1.5    |
| 14 | Galletas         | Snacks    | 1.7    |
| 15 | Aceite de Oliva  | Cocina    | 4.5    |
| 16 | Café             | Bebidas   | 5.0    |
| 17 | Sopa enlatada    | Conservas | 2.3    |
| 18 | Jabón de Baño    | Higiene   | 1.2    |
| 19 | Botellas de Agua | Bebidas   | 1.0    |
| 20 | Cerveza          | Bebidas   | 3.8    |
+----+------------------+-----------+--------+
```

5. Obtener la cantidad total de productos vendidos en todas las fechas.

```sql
select SUM(cantidad) as cantidad_total from ventas;
```
```sql
+----------------+
| cantidad_total |
+----------------+
| 43             |
+----------------+
```

6. Encontrar el producto más caro en cada categoría.

```sql
select nombre, categoria, precio from productos WHERE (categoria, precio) IN (select categoria, MAX(precio) AS precio_max from productos GROUP BY categoria);
```
```sql
+--------------------+-----------+--------+
|       nombre       | categoria | precio |
+--------------------+-----------+--------+
| Arroz              | Alimentos | 2.5    |
| Pan                | Panadería | 1.2    |
| Manzanas           | Frutas    | 3.0    |
| Pollo              | Carnes    | 5.5    |
| Tomates            | Verduras  | 2.2    |
| Queso              | Lácteos   | 4.0    |
| Cereal             | Desayuno  | 3.5    |
| Papel Higiénico    | Hogar     | 1.5    |
| Cepillo de Dientes | Higiene   | 2.0    |
| Detergente         | Limpieza  | 2.8    |
| Galletas           | Snacks    | 1.7    |
| Aceite de Oliva    | Cocina    | 4.5    |
| Café               | Bebidas   | 5.0    |
| Sopa enlatada      | Conservas | 2.3    |
+--------------------+-----------+--------+
```

7. Listar los productos que no han sido vendidos.

```sql
select * from productos WHERE id NOT IN (select id_producto FROM ventas);
```
```sql
+----+--------------------+-----------+--------+
| id |       nombre       | categoria | precio |
+----+--------------------+-----------+--------+
| 3  | Pan                | Panadería | 1.2    |
| 7  | Yogurt             | Lácteos   | 2.0    |
| 9  | Queso              | Lácteos   | 4.0    |
| 11 | Papel Higiénico    | Hogar     | 1.5    |
| 12 | Cepillo de Dientes | Higiene   | 2.0    |
| 13 | Detergente         | Limpieza  | 2.8    |
| 15 | Aceite de Oliva    | Cocina    | 4.5    |
| 17 | Sopa enlatada      | Conservas | 2.3    |
| 19 | Botellas de Agua   | Bebidas   | 1.0    |
| 20 | Cerveza            | Bebidas   | 3.8    |
+----+--------------------+-----------+--------+
```

8. Calcular el precio promedio de los productos en la categoría "Snacks".

```sql
select AVG(precio) AS avg_precio from productos where categoria = 'Snacks';
```
```sql
+------------+
| avg_precio |
+------------+
| 1.7        |
+------------+
```
9. Encontrar los productos que han sido vendidos más de 5 veces.

```sql
select * from ventas where cantidad = > 5;
```
```sql
+----+-------------+----------+------------+
| id | id_producto | cantidad |   fecha    |
+----+-------------+----------+------------+
| 5  | 6           | 10       | 2024-01-18 |
| 8  | 14          | 7        | 2024-01-19 |
| 10 | 18          | 6        | 2024-01-20 |
+----+-------------+----------+------------+
```
10. Mostrar la fecha y la cantidad de ventas para cada producto.

```sql

```

11. Encontrar los productos que tienen un precio menor o igual a 2.

```sql
select * from productos where precio <= 2;
```
```sql
+----+--------------------+-----------+--------+
| id |       nombre       | categoria | precio |
+----+--------------------+-----------+--------+
| 2  | Leche              | Lácteos   | 1.8    |
| 3  | Pan                | Panadería | 1.2    |
| 6  | Huevos             | Lácteos   | 1.0    |
| 7  | Yogurt             | Lácteos   | 2.0    |
| 11 | Papel Higiénico    | Hogar     | 1.5    |
| 12 | Cepillo de Dientes | Higiene   | 2.0    |
| 14 | Galletas           | Snacks    | 1.7    |
| 18 | Jabón de Baño      | Higiene   | 1.2    |
| 19 | Botellas de Agua   | Bebidas   | 1.0    |
+----+--------------------+-----------+--------+
```
12. Calcular la cantidad total de ventas para cada fecha.

```sql
select fecha, COUNT(id) AS cantidad_ventas_total from ventas GROUP BY fecha;
```
```sql
+------------+-----------------------+
|   fecha    | cantidad_ventas_total |
+------------+-----------------------+
| 2024-01-17 | 4                     |
| 2024-01-18 | 3                     |
| 2024-01-19 | 2                     |
| 2024-01-20 | 1                     |
+------------+-----------------------+
```

13. Listar los productos cuyo nombre comienza con la letra 'P'.

```sql
select * from productos WHERE nombre LIKE 'P%';
```
```sql
+----+-----------------+-----------+--------+
| id |     nombre      | categoria | precio |
+----+-----------------+-----------+--------+
| 3  | Pan             | Panadería | 1.2    |
| 5  | Pollo           | Carnes    | 5.5    |
| 11 | Papel Higiénico | Hogar     | 1.5    |
+----+-----------------+-----------+--------+
```

14. Obtener el producto más vendido en términos de cantidad.

```sql
select id, id_producto, SUM(cantidad) AS ventas_total from ventas GROUP BY id, id_producto ORDER BY ventas_total desc;
```
```sql
+----+-------------+--------------+
| id | id_producto | ventas_total |
+----+-------------+--------------+
| 5  | 6           | 10           |
| 8  | 14          | 7            |
| 10 | 18          | 6            |
| 1  | 1           | 5            |
| 6  | 8           | 4            |
| 2  | 2           | 3            |
| 9  | 16          | 3            |
| 3  | 4           | 2            |
| 7  | 10          | 2            |
| 4  | 5           | 1            |
+----+-------------+--------------+
```

15. Mostrar los productos que fueron vendidos en la fecha '__2024-01-18__'.

```sql
select p.id, p.nombre, v.fecha, v.cantidad from productos p JOIN ventas v ON p.id = v.id_producto WHERE v.fecha = '2024-01-18';
```
```sql
+----+---------+------------+----------+
| id | nombre  |   fecha    | cantidad |
+----+---------+------------+----------+
| 6  | Huevos  | 2024-01-18 | 10       |
| 8  | Tomates | 2024-01-18 | 4        |
| 10 | Cereal  | 2024-01-18 | 2        |
+----+---------+------------+----------+
```
16. Calcular el total de ventas para cada producto.

```sql
select p.id, p.nombre, SUM(v.cantidad) AS ventas_total from productos p JOIN ventas v ON p.id = v.id_producto GROUP BY p.id, p.nombre;
```
```sql
+----+---------------+--------------+
| id |    nombre     | ventas_total |
+----+---------------+--------------+
| 1  | Arroz         | 5            |
| 2  | Leche         | 3            |
| 4  | Manzanas      | 2            |
| 5  | Pollo         | 1            |
| 6  | Huevos        | 10           |
| 8  | Tomates       | 4            |
| 10 | Cereal        | 2            |
| 14 | Galletas      | 7            |
| 16 | Café          | 3            |
| 18 | Jabón de Baño | 6            |
+----+---------------+--------------+
```

17. Encontrar los productos con un precio entre 3 y 4.

```sql
select * from productos WHERE precio >= 3 and precio <= 4;
```
```sql
+----+----------+-----------+--------+
| id |  nombre  | categoria | precio |
+----+----------+-----------+--------+
| 4  | Manzanas | Frutas    | 3.0    |
| 9  | Queso    | Lácteos   | 4.0    |
| 10 | Cereal   | Desayuno  | 3.5    |
| 20 | Cerveza  | Bebidas   | 3.8    |
+----+----------+-----------+--------+
```
18. Listar los productos y sus categorías ordenados alfabéticamente por categoría.

```sql
select nombre, categoria from productos ORDER BY categoria;
```
```sql
+--------------------+-----------+
|       nombre       | categoria |
+--------------------+-----------+
| Arroz              | Alimentos |
| Café               | Bebidas   |
| Botellas de Agua   | Bebidas   |
| Cerveza            | Bebidas   |
| Pollo              | Carnes    |
| Aceite de Oliva    | Cocina    |
| Sopa enlatada      | Conservas |
| Cereal             | Desayuno  |
| Manzanas           | Frutas    |
| Cepillo de Dientes | Higiene   |
| Jabón de Baño      | Higiene   |
| Papel Higiénico    | Hogar     |
| Detergente         | Limpieza  |
| Leche              | Lácteos   |
| Huevos             | Lácteos   |
| Yogurt             | Lácteos   |
| Queso              | Lácteos   |
| Pan                | Panadería |
| Galletas           | Snacks    |
| Tomates            | Verduras  |
+--------------------+-----------+
```

19. Calcular el precio total de los productos vendidos en la fecha '2024-01-19'.

```sql
select v.fecha, p.id, p.nombre, SUM(p.precio * v.cantidad) AS total_price from productos p JOIN ventas v ON p.id = v.id_producto WHERE v.fecha = '2024-01-19' GROUP BY v.fecha, p.id, p.nombre;
```
```sql
+------------+----+----------+-------------+
|   fecha    | id |  nombre  | total_price |
+------------+----+----------+-------------+
| 2024-01-19 | 14 | Galletas | 11.9        |
| 2024-01-19 | 16 | Café     | 15.0        |
+------------+----+----------+-------------+
```
20. Mostrar los productos que no pertenecen a la categoría "__Higiene__".

```sql
select * from productos WHERE categoria <> 'Higiene';
```
```sql
+----+------------------+-----------+--------+
| id |      nombre      | categoria | precio |
+----+------------------+-----------+--------+
| 1  | Arroz            | Alimentos | 2.5    |
| 2  | Leche            | Lácteos   | 1.8    |
| 3  | Pan              | Panadería | 1.2    |
| 4  | Manzanas         | Frutas    | 3.0    |
| 5  | Pollo            | Carnes    | 5.5    |
| 6  | Huevos           | Lácteos   | 1.0    |
| 7  | Yogurt           | Lácteos   | 2.0    |
| 8  | Tomates          | Verduras  | 2.2    |
| 9  | Queso            | Lácteos   | 4.0    |
| 10 | Cereal           | Desayuno  | 3.5    |
| 11 | Papel Higiénico  | Hogar     | 1.5    |
| 13 | Detergente       | Limpieza  | 2.8    |
| 14 | Galletas         | Snacks    | 1.7    |
| 15 | Aceite de Oliva  | Cocina    | 4.5    |
| 16 | Café             | Bebidas   | 5.0    |
| 17 | Sopa enlatada    | Conservas | 2.3    |
| 19 | Botellas de Agua | Bebidas   | 1.0    |
| 20 | Cerveza          | Bebidas   | 3.8    |
+----+------------------+-----------+--------+
```
21. Encontrar la cantidad total de productos en cada categoría.

```sql
select categoria, COUNT(*) AS total_productos from productos GROUP BY categoria;
```
```sql
| categoria | total_productos |
+-----------+-----------------+
| Alimentos | 1               |
| Bebidas   | 3               |
| Carnes    | 1               |
| Cocina    | 1               |
| Conservas | 1               |
| Desayuno  | 1               |
| Frutas    | 1               |
| Higiene   | 2               |
| Hogar     | 1               |
| Limpieza  | 1               |
| Lácteos   | 4               |
| Panadería | 1               |
| Snacks    | 1               |
| Verduras  | 1               |
+-----------+-----------------+
```
22. Listar los productos que tienen un precio igual a la media de precios.

```sql
select id, nombre, precio from productos WHERE precio = (select AVG(precio) from productos);
```
```sql

```
23. Calcular el precio total de los productos vendidos en cada fecha.
select v.fecha, p.nombre, SUM(p.precio * v.cantidad) AS total_precio from ventas v JOIN productos p ON v.id_producto = p.id GROUP BY v.fecha;

```sql
+------------+---------------+--------------+
|   fecha    |    nombre     | total_precio |
+------------+---------------+--------------+
| 2024-01-17 | Arroz         | 29.4         |
| 2024-01-18 | Huevos        | 25.8         |
| 2024-01-19 | Galletas      | 26.9         |
| 2024-01-20 | Jabón de Baño | 7.2          |
+------------+---------------+--------------+
```

24. Mostrar los productos con un nombre que termina con la letra 'o'.

```sql
select * from productos WHERE nombre LIKE '%o';
```
```sql
+----+-----------------+-----------+--------+
| id |     nombre      | categoria | precio |
+----+-----------------+-----------+--------+
| 5  | Pollo           | Carnes    | 5.5    |
| 9  | Queso           | Lácteos   | 4.0    |
| 11 | Papel Higiénico | Hogar     | 1.5    |
| 18 | Jabón de Baño   | Higiene   | 1.2    |
+----+-----------------+-----------+--------+
```

25. Encontrar los productos que han sido vendidos en más de una fecha.

```sql
```
```sql
```
26. Listar los productos cuya categoría comienza con la letra 'L'.

```sql
select * from productos WHERE categoria LIKE 'L%';
```
```sql
+----+------------+-----------+--------+
| id |   nombre   | categoria | precio |
+----+------------+-----------+--------+
| 2  | Leche      | Lácteos   | 1.8    |
| 6  | Huevos     | Lácteos   | 1.0    |
| 7  | Yogurt     | Lácteos   | 2.0    |
| 9  | Queso      | Lácteos   | 4.0    |
| 13 | Detergente | Limpieza  | 2.8    |
+----+------------+-----------+--------+
```

27. Calcular el total de ventas para cada producto en la fecha '2024-01-17'.

```sql
select p.id, p.nombre, SUM(v.cantidad) AS ventas_totales from productos p JOIN ventas v ON p.id = v.id_producto WHERE fecha = '2024-01-17';
```
```sql
+----+--------+----------------+
| id | nombre | ventas_totales |
+----+--------+----------------+
| 1  | Arroz  | 11             |
+----+--------+----------------+
```

28. Mostrar los productos cuyo nombre tiene al menos 5 caracteres.

```sql
select * from productos WHERE LENGTH(nombre) >= 5;
```
```sql
+----+--------------------+-----------+--------+
| id |       nombre       | categoria | precio |
+----+--------------------+-----------+--------+
| 1  | Arroz              | Alimentos | 2.5    |
| 2  | Leche              | Lácteos   | 1.8    |
| 4  | Manzanas           | Frutas    | 3.0    |
| 5  | Pollo              | Carnes    | 5.5    |
| 6  | Huevos             | Lácteos   | 1.0    |
| 7  | Yogurt             | Lácteos   | 2.0    |
| 8  | Tomates            | Verduras  | 2.2    |
| 9  | Queso              | Lácteos   | 4.0    |
| 10 | Cereal             | Desayuno  | 3.5    |
| 11 | Papel Higiénico    | Hogar     | 1.5    |
| 12 | Cepillo de Dientes | Higiene   | 2.0    |
| 13 | Detergente         | Limpieza  | 2.8    |
| 14 | Galletas           | Snacks    | 1.7    |
| 15 | Aceite de Oliva    | Cocina    | 4.5    |
| 17 | Sopa enlatada      | Conservas | 2.3    |
| 18 | Jabón de Baño      | Higiene   | 1.2    |
| 19 | Botellas de Agua   | Bebidas   | 1.0    |
| 20 | Cerveza            | Bebidas   | 3.8    |
+----+--------------------+-----------+--------+
```

29. Encontrar los productos que tienen un precio superior al precio máximo en la tabla "__productos__".

```sql
select * from productos WHERE precio > (select MAX(precio) from productos);
```


___
### Autor
[Eduardo Rabadán Melián](https://github.com/edumel20)
