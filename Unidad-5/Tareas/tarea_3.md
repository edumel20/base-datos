<div align="center">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/SQLite370.svg/2560px-SQLite370.svg.png" width="300px"/>
</div>

# **TAREA 3**
___
## Primeros pasos en SQL

### Paso 1: Creación de la BBDD.

Se crea el fichero *empleados-dump.sql* con la siguiente información: 

```sql
CREATE TABLE empleados (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT,
    salario REAL,
    departamento TEXT
);
```

```sql
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Juan', 50000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('María', 60000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Carlos', 55000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Ana', 48000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Pedro', 70000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Laura', 52000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Javier', 48000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Carmen', 65000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Miguel', 51000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Elena', 55000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Diego', 72000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Sofía', 49000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Andrés', 60000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Isabel', 53000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Raúl', 68000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Patricia', 47000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Alejandro', 71000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Natalia', 54000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Roberto', 49000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Beatriz', 63000, 'TI');
```
___

### Paso 2: Lectura del fichero .sql

1. Creamos la base de datos con el nombre *tarea3.db* mediante el siguiente comando:

```sql
sqlite3 tarea3.db
```

2. Ahora realizaremos la creación e inserción de información de la BBDD con el fichero **sql** anteriormente creado usando la siguiente sentencia:

```sql
.read empleados-dump.sql
```
___

### Paso 3: Realización de consultas

En este apartado se van a realizar las siguientes consultas:

1. **Funciones UPPER y LOWER**:
- Muestra el nombre de todos los empleados en mayúsculas:

```sql
select UPPER(nombre) as nombre_mayuscula from
empleados;
```
```sql
+------------------+
| nombre_mayuscula |
+------------------+
| JUAN             |
| MARíA            |
| CARLOS           |
| ANA              |
| PEDRO            |
| LAURA            |
| JAVIER           |
| CARMEN           |
| MIGUEL           |
| ELENA            |
| DIEGO            |
| SOFíA            |
| ANDRéS           |
| ISABEL           |
| RAúL             |
| PATRICIA         |
| ALEJANDRO        |
| NATALIA          |
| ROBERTO          |
| BEATRIZ          |
+------------------+
```

2. **Funciones Numéricas**:
- Calcula el valor absoluto del salario de todos los empleados:

```sql
select ABS(salario) AS salario_absoluto from empleados;
```
```sql
+------------------+
| salario_absoluto |
+------------------+
| 50000.0          |
| 60000.0          |
| 55000.0          |
| 48000.0          |
| 70000.0          |
| 52000.0          |
| 48000.0          |
| 65000.0          |
| 51000.0          |
| 55000.0          |
| 72000.0          |
| 49000.0          |
| 60000.0          |
| 53000.0          |
| 68000.0          |
| 47000.0          |
| 71000.0          |
| 54000.0          |
| 49000.0          |
| 63000.0          |
+------------------+
```

3. **Funciones de Fecha y Hora**:
- Muestra la fecha actual:

```sql
select DATE('now') AS fecha_actual;
```
```sql
+--------------+
| fecha_actual |
+--------------+
| 2024-01-16   |
+--------------+
```

4. **Funciones de Agregación**:
- Calcula el promedio de salarios de todos los empleados:

```sql
select AVG(salario) AS avg_salario from empleados;
```
```sql
+-------------+
| avg_salario |
+-------------+
| 57000.0     |
+-------------+
```

- Convierte la cadena '123' a un valor entero:

```sql
select CAST('123' AS INTEGER) AS entero;
```
```sql
+--------+
| entero |
+--------+
| 123    |
+--------+
```

5. **Funciones de Manipulación de Cadenas**:
- Concatena el nombre y el departamento de cada empleado:

```sql
select CONCAT(nombre, departamento) AS nombre_departamento from empleados;
```
```sql
+--------------------------+
|   nombre_departamento    |
+--------------------------+
| JuanVentas               |
| MaríaTI                  |
| CarlosVentas             |
| AnaRecursos Humanos      |
| PedroTI                  |
| LauraVentas              |
| JavierRecursos Humanos   |
| CarmenTI                 |
| MiguelVentas             |
| ElenaRecursos Humanos    |
| DiegoTI                  |
| SofíaVentas              |
| AndrésRecursos Humanos   |
| IsabelTI                 |
| RaúlVentas               |
| PatriciaRecursos Humanos |
| AlejandroTI              |
| NataliaVentas            |
| RobertoRecursos Humanos  |
| BeatrizTI                |
+--------------------------+
```

6. **Funciones de Manipulaciçon de Cadenas (CONCAT_WS)**:
- Concatena el nombre y el departamento de cada empleado con un guión como separador:

```sql
 select nombre || '-' || departamento AS nombre_departamento from empleados;
```
```sql
+---------------------------+
|    nombre_departamento    |
+---------------------------+
| Juan-Ventas               |
| María-TI                  |
| Carlos-Ventas             |
| Ana-Recursos Humanos      |
| Pedro-TI                  |
| Laura-Ventas              |
| Javier-Recursos Humanos   |
| Carmen-TI                 |
| Miguel-Ventas             |
| Elena-Recursos Humanos    |
| Diego-TI                  |
| Sofía-Ventas              |
| Andrés-Recursos Humanos   |
| Isabel-TI                 |
| Raúl-Ventas               |
| Patricia-Recursos Humanos |
| Alejandro-TI              |
| Natalia-Ventas            |
| Roberto-Recursos Humanos  |
| Beatriz-TI                |
+---------------------------+
```

7. **Funciones de Control de Flujo (CASE)**:
- Categoriza a los empleados según sus salarios:

```sql
```
```sql
```
PREGUNTAR EN CLASE


8. **Funciones de Agregación (SUM)**:
- Calcula la suma total de salarios de todos los empleados:

```sql
select SUM(salario) as total_salarios from empleados;
```
```sql
+----------------+
| total_salarios |
+----------------+
| 1140000.0      |
+----------------+
```

9. **Funciones Numéricas (ROUND)**:
-Redondea el salario de todos los empleados a dos decimales:

```sql
select nombre, ROUND(salario, 2) as salario_redondeado from empleados;
```
```sql
+-----------+--------------------+
|  nombre   | salario_redondeado |
+-----------+--------------------+
| Juan      | 50000.0            |
| María     | 60000.0            |
| Carlos    | 55000.0            |
| Ana       | 48000.0            |
| Pedro     | 70000.0            |
| Laura     | 52000.0            |
| Javier    | 48000.0            |
| Carmen    | 65000.0            |
| Miguel    | 51000.0            |
| Elena     | 55000.0            |
| Diego     | 72000.0            |
| Sofía     | 49000.0            |
| Andrés    | 60000.0            |
| Isabel    | 53000.0            |
| Raúl      | 68000.0            |
| Patricia  | 47000.0            |
| Alejandro | 71000.0            |
| Natalia   | 54000.0            |
| Roberto   | 49000.0            |
| Beatriz   | 63000.0            |
+-----------+--------------------+
```

10. **Funciones de Manupulación de Cadenas (LENGTH) **:
- Muestra la longitud de cada nombre de empleado:

```sql
select nombre, LENGTH(nombre) as longitud_nombre_empleado from empleados;
```
```sql
+-----------+--------------------------+
|  nombre   | longitud_nombre_empleado |
+-----------+--------------------------+
| Juan      | 4                        |
| María     | 5                        |
| Carlos    | 6                        |
| Ana       | 3                        |
| Pedro     | 5                        |
| Laura     | 5                        |
| Javier    | 6                        |
| Carmen    | 6                        |
| Miguel    | 6                        |
| Elena     | 5                        |
| Diego     | 5                        |
| Sofía     | 5                        |
| Andrés    | 6                        |
| Isabel    | 6                        |
| Raúl      | 4                        |
| Patricia  | 8                        |
| Alejandro | 9                        |
| Natalia   | 7                        |
| Roberto   | 7                        |
| Beatriz   | 7                        |
+-----------+--------------------------+
```

11. **Funciones de Agregación**:
- Cuenta el número total de empleados en cada departamento:

```sql
select departamento, COUNT(*) as numero_empleados from empleados group by departamento;
```
```sql
+------------------+------------------+
|   departamento   | numero_empleados |
+------------------+------------------+
| Recursos Humanos | 6                |
| TI               | 7                |
| Ventas           | 7                |
+------------------+------------------+
```

12. **Funciones de Fecha y Hora (CURRENT_TIME)**:
- Muestra la hora actual:

```sql
select TIME('now') as hora_actual;
```
```sql
+-------------+
| hora_actual |
+-------------+
| 00:12:18    |
+-------------+
```

13. **Funciones de Conversión (CAST)**:
- Convierte el salario a un valor de punto flotante:

```sql
select CAST(salario as REAL) as salario_flotante from empleados;
```
```sql
+------------------+
| salario_flotante |
+------------------+
| 50000.0          |
| 60000.0          |
| 55000.0          |
| 48000.0          |
| 70000.0          |
| 52000.0          |
| 48000.0          |
| 65000.0          |
| 51000.0          |
| 55000.0          |
| 72000.0          |
| 49000.0          |
| 60000.0          |
| 53000.0          |
| 68000.0          |
| 47000.0          |
| 71000.0          |
| 54000.0          |
| 49000.0          |
| 63000.0          |
+------------------+
```

14. **Funciones de Manipulación de Cadenas (SUBSTR)**:
-Muestra los primeros tres caracteres de cada nombre de empleado:

```sql
select nombre, SUBSTR(nombre, 1, 3) as tres_primeros_caracteres from empleados;
```
```sql
+-----------+--------------------------+
|  nombre   | tres_primeros_caracteres |
+-----------+--------------------------+
| Juan      | Jua                      |
| María     | Mar                      |
| Carlos    | Car                      |
| Ana       | Ana                      |
| Pedro     | Ped                      |
| Laura     | Lau                      |
| Javier    | Jav                      |
| Carmen    | Car                      |
| Miguel    | Mig                      |
| Elena     | Ele                      |
| Diego     | Die                      |
| Sofía     | Sof                      |
| Andrés    | And                      |
| Isabel    | Isa                      |
| Raúl      | Raú                      |
| Patricia  | Pat                      |
| Alejandro | Ale                      |
| Natalia   | Nat                      |
| Roberto   | Rob                      |
| Beatriz   | Bea                      |
+-----------+--------------------------+
```

15. **ORDER BY and LIKE**:
- Empleados en el departamento de 'Ventas' con salarios superiores a 52000:

```sql
select * from empleados where departamento = 'Ventas' and salario > 52000 order by salario;
```
```sql
+----+---------+---------+--------------+
| id | nombre  | salario | departamento |
+----+---------+---------+--------------+
| 18 | Natalia | 54000.0 | Ventas       |
| 3  | Carlos  | 55000.0 | Ventas       |
| 15 | Raúl    | 68000.0 | Ventas       |
+----+---------+---------+--------------+
```

- Empleados cuyos nombres contienen la letra 'a' y tienen salarios ordenados de manera ascendente:

```sql
select * from empleados WHERE nombre LIKE '%a%' order by salario asc;
```
```sql
+----+-----------+---------+------------------+
| id |  nombre   | salario |   departamento   |
+----+-----------+---------+------------------+
| 16 | Patricia  | 47000.0 | Recursos Humanos |
| 4  | Ana       | 48000.0 | Recursos Humanos |
| 7  | Javier    | 48000.0 | Recursos Humanos |
| 12 | Sofía     | 49000.0 | Ventas           |
| 1  | Juan      | 50000.0 | Ventas           |
| 6  | Laura     | 52000.0 | Ventas           |
| 14 | Isabel    | 53000.0 | TI               |
| 18 | Natalia   | 54000.0 | Ventas           |
| 3  | Carlos    | 55000.0 | Ventas           |
| 10 | Elena     | 55000.0 | Recursos Humanos |
| 2  | María     | 60000.0 | TI               |
| 13 | Andrés    | 60000.0 | Recursos Humanos |
| 20 | Beatriz   | 63000.0 | TI               |
| 8  | Carmen    | 65000.0 | TI               |
| 15 | Raúl      | 68000.0 | Ventas           |
| 17 | Alejandro | 71000.0 | TI               |
+----+-----------+---------+------------------+
```

-Empleados en el departamento 'Recursos Humanos' con salarios entre 45000 y 55000:

```sql
select  * from empleados WHERE departamento = 'Recursos Humanos' and salario BETWEEN 45000 and 55000 order by salario;
```
```sql
+----+----------+---------+------------------+
| id |  nombre  | salario |   departamento   |
+----+----------+---------+------------------+
| 16 | Patricia | 47000.0 | Recursos Humanos |
| 4  | Ana      | 48000.0 | Recursos Humanos |
| 7  | Javier   | 48000.0 | Recursos Humanos |
| 19 | Roberto  | 49000.0 | Recursos Humanos |
| 10 | Elena    | 55000.0 | Recursos Humanos |
+----+----------+---------+------------------+
```

- Empleados con salarios en orden descendente, limitando a los primeros 5 resultados:

```sql
select * from empleados order by salario desc limit 5;
```
```sql
+----+-----------+---------+--------------+
| id |  nombre   | salario | departamento |
+----+-----------+---------+--------------+
| 11 | Diego     | 72000.0 | TI           |
| 17 | Alejandro | 71000.0 | TI           |
| 5  | Pedro     | 70000.0 | TI           |
| 15 | Raúl      | 68000.0 | Ventas       |
| 8  | Carmen    | 65000.0 | TI           |
+----+-----------+---------+--------------+
```

- Empleados cuyos nombres comienzan con 'M' o 'N' y tienen salarios superiores a 50000:

```sql
select * from empleados WHERE (nombre LIKE 'M%' OR nombre LIKE '%N') and salario > 50000;
```
```sql
+----+--------+---------+--------------+
| id | nombre | salario | departamento |
+----+--------+---------+--------------+
| 2  | María  | 60000.0 | TI           |
| 8  | Carmen | 65000.0 | TI           |
| 9  | Miguel | 51000.0 | Ventas       |
+----+--------+---------+--------------+
```

- Empleados en el departamento 'TI' o 'Ventas' ordenados alfabéticamente por nombre:

```sql
select * from empleados WHERE (departamento = 'TI' or departamento = 'Ventas') order by nombre asc;
```
```sql
+----+-----------+---------+--------------+
| id |  nombre   | salario | departamento |
+----+-----------+---------+--------------+
| 17 | Alejandro | 71000.0 | TI           |
| 20 | Beatriz   | 63000.0 | TI           |
| 3  | Carlos    | 55000.0 | Ventas       |
| 8  | Carmen    | 65000.0 | TI           |
| 11 | Diego     | 72000.0 | TI           |
| 14 | Isabel    | 53000.0 | TI           |
| 1  | Juan      | 50000.0 | Ventas       |
| 6  | Laura     | 52000.0 | Ventas       |
| 2  | María     | 60000.0 | TI           |
| 9  | Miguel    | 51000.0 | Ventas       |
| 18 | Natalia   | 54000.0 | Ventas       |
| 5  | Pedro     | 70000.0 | TI           |
| 15 | Raúl      | 68000.0 | Ventas       |
| 12 | Sofía     | 49000.0 | Ventas       |
+----+-----------+---------+--------------+
```

- Empleados con salarios únicos (eliminando duplicados) en orden ascendente:

```sql
select DISTINCT nombre, salario from empleados order by salario asc;
```
```sql
+-----------+---------+
|  nombre   | salario |
+-----------+---------+
| Patricia  | 47000.0 |
| Ana       | 48000.0 |
| Javier    | 48000.0 |
| Sofía     | 49000.0 |
| Roberto   | 49000.0 |
| Juan      | 50000.0 |
| Miguel    | 51000.0 |
| Laura     | 52000.0 |
| Isabel    | 53000.0 |
| Natalia   | 54000.0 |
| Carlos    | 55000.0 |
| Elena     | 55000.0 |
| María     | 60000.0 |
| Andrés    | 60000.0 |
| Beatriz   | 63000.0 |
| Carmen    | 65000.0 |
| Raúl      | 68000.0 |
| Pedro     | 70000.0 |
| Alejandro | 71000.0 |
| Diego     | 72000.0 |
+-----------+---------+
```

-Empleados cuyos nombres terminan con 'o' o 'a' y están en el departamento 'Ventas':

```sql
select * from empleados WHERE (nombre LIKE '%o' or nombre LIKE '%a') and departamento = 'Ventas';
```
```sql
+----+---------+---------+--------------+
| id | nombre  | salario | departamento |
+----+---------+---------+--------------+
| 6  | Laura   | 52000.0 | Ventas       |
| 12 | Sofía   | 49000.0 | Ventas       |
| 18 | Natalia | 54000.0 | Ventas       |
+----+---------+---------+--------------+
```

- Empleados con salarios fuera de rango de 55000 and 70000, ordenados por departamento:

```sql
select * from empleados where salario < 55000 or salario > 70000 order by departamento;
```
```sql
+----+-----------+---------+------------------+
| id |  nombre   | salario |   departamento   |
+----+-----------+---------+------------------+
| 4  | Ana       | 48000.0 | Recursos Humanos |
| 7  | Javier    | 48000.0 | Recursos Humanos |
| 16 | Patricia  | 47000.0 | Recursos Humanos |
| 19 | Roberto   | 49000.0 | Recursos Humanos |
| 11 | Diego     | 72000.0 | TI               |
| 14 | Isabel    | 53000.0 | TI               |
| 17 | Alejandro | 71000.0 | TI               |
| 1  | Juan      | 50000.0 | Ventas           |
| 6  | Laura     | 52000.0 | Ventas           |
| 9  | Miguel    | 51000.0 | Ventas           |
| 12 | Sofía     | 49000.0 | Ventas           |
| 18 | Natalia   | 54000.0 | Ventas           |
+----+-----------+---------+------------------+
```

- Empleados en el departamento 'Recursos Humanos' con nombres que no contienen la letra 'e':

```sql
select * from empleados WHERE departamento = 'Recursos Humanos' and nombre NOT LIKE '%e%';
```
```sql
+----+----------+---------+------------------+
| id |  nombre  | salario |   departamento   |
+----+----------+---------+------------------+
| 4  | Ana      | 48000.0 | Recursos Humanos |
| 13 | Andrés   | 60000.0 | Recursos Humanos |
| 16 | Patricia | 47000.0 | Recursos Humanos |
+----+----------+---------+------------------+
```

___
### Autor
[Eduardo Rabadán Melián](https://github.com/edumel20)
