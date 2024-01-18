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

1. Realiza el diagrama **ER** de la **BBDD** supermercado.

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



7. Listar los productos que no han sido vendidos.



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
select COUNT(cantidad) from ventas;
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

```

15. Mostrar los productos que fueron vendidos en la fecha '__2024-01-18__'.

16. Calcular el total de ventas para cada producto.

17. Encontrar los productos con un precio entre 3 y 4.

18. Listar los productos y sus categorías ordenados alfabéticamente por categoría.

19. Calcular el precio total de los productos vendidos en la fecha '2024-01-19'.

20. Mostrar los productos que no pertenecen a la categoría "__Higiene__".

21. Encontrar la cantidad total de productos en cada categoría.

22. Listar los productos que tienen un precio igual a la media de precios.

23. Calcular el precio total de los productos vendidos en cada fecha.

24. Mostrar los productos con un nombre que termina con la letra 'o'.

25. Encontrar los productos que han sido vendidos en más de una fecha.

26. Listar los productos cuya categoría comienza con la letra 'L'.

27. Calcular el total de ventas para cada producto en la fecha '2024-01-17'.

28. Mostrar los productos cuyo nombre tiene al menos 5 caracteres.

29. Encontrar los productos que tienen un precio superior al precio máximo en la tabla "__productos__".




___
### Autor
[Eduardo Rabadán Melián](https://github.com/edumel20)
