/**
TAREA 3 DE TRABAJO CON ÍNDICES
**/

-- 1. Crea una base de datos que tendrá por nombre Base_Indices:
CREATE DATABASE IF NOT EXISTS Base_Indices;

-- 2. En la BD crea una tabla de nombre MOVIMIENTO:
CREATE TABLE MOVIMIENTO (
    Identificador INT AUTO_INCREMENT,
    Articulo VARCHAR(50) NOT NULL,
    Fecha DATE NOT NULL,
    Cantidad INT NOT NULL,
    PRIMARY KEY (Identificador)
);

-- 3. Aplica la sentencia adecuada para visualizar los índices que hay en la tabla.

describe MOVIMIENTO;

/**
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| Identificador | int         | NO   | PRI | NULL    | auto_increment |
| Articulo      | varchar(50) | NO   |     | NULL    |                |
| Fecha         | date        | NO   |     | NULL    |                |
| Cantidad      | int         | NO   |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
4 rows in set (0,01 sec)
**/

-- 4. Aplica la sentencia adecuada para visualizar los índices que hay en la tabla.

CREATE TABLE NumerosUnicos (
Numero INT AUTO_INCREMENT PRIMARY KEY
);

INSERT INTO NumerosUnicos (Numero)
SELECT NULL FROM INFORMATION_SCHEMA.COLUMNS LIMIT 5000;

INSERT INTO MOVIMIENTO (Identificador, Articulo, Fecha, Cantidad)
SELECT 
    n.Numero,
    CONCAT('Producto', n.Numero),
    DATE_ADD('2012-01-01', INTERVAL FLOOR(RAND() * 120) DAY),
    FLOOR(RAND() * 1000000) + 1
FROM 
    NumerosUnicos n;

    DROP TABLE NumerosUnicos;

/**
Query OK, 3585 rows affected (0,06 sec)
Records: 3585  Duplicates: 0  Warnings: 0
**/

-- 5. Crea con la sentencia CREATE TABLE…SELECT… un duplicado de la tabla MOVIMIENTO a la que llamaremos MOVIMIENTO_BIS.
create table MOVIMIENTO_BIS select * from MOVIMIENTO;

/**
Query OK, 3585 rows affected (0,06 sec)
Records: 3585  Duplicates: 0  Warnings: 0
**/

-- 6. Con la cláusula DESCRIBE observa cuál es la situación de la tabla clonada, ¿Qué le pasa al índice y a la propiedad AUTO_INCREMENT?

describe MOVIMIENTO_BIS;

/**
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Identificador | int         | NO   |     | 0       |       |
| Articulo      | varchar(50) | NO   |     | NULL    |       |
| Fecha         | date        | NO   |     | NULL    |       |
| Cantidad      | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0,01 sec)
**/

describe MOVIMIENTO;

/**
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| Identificador | int         | NO   | PRI | NULL    | auto_increment |
| Articulo      | varchar(50) | NO   |     | NULL    |                |
| Fecha         | date        | NO   |     | NULL    |                |
| Cantidad      | int         | NO   |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
4 rows in set (0,00 sec)
**/

/**
Se puede observar que, al clonar la tabla "MOVIMIENTO", dicha clonación le ha quitado las propiedades
de "PRIMARY KEY" y "AUTOINCREMENT" a la columna "Identificador".
**/

-- 7. Utilizando EXPLAIN observa el plan de ejecución de la consulta que devuelve toda la información de los movimientos con identificador=3. Tanto en la tabla MOVIMIENTOS como en la tabla MOVIMIENTOS_bis. Escribe tus conclusiones al respecto.
EXPLAIN select * from MOVIMIENTO where Identificador = 3;

/**
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
| id | select_type | table      | partitions | type  | possible_keys | key     | key_len | ref   | rows | filtered | Extra |
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | const | PRIMARY       | PRIMARY | 4       | const |    1 |   100.00 | NULL  |
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0,00 sec)
**/

EXPLAIN select * from MOVIMIENTO_BIS where Identificador = 3;

/**
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table          | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 3585 |    10.00 | Using where |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
1 row in set, 1 warning (0,00 sec)
**/

-- 8. Supongamos que las consultas de rango que se van a hacer en nuestra tabla son frecuentes y además no por el identificador, sino por la fecha. Este es motivo suficiente para que sea la fecha un índice de tabla y así mejorar el tiempo de respuesta de nuestras consultas. En la tabla MOVIMIENTO_BIS creamos un índice para la fecha (IX_FECHA_BIS) y otro índice para el identificador (IX_IDENTIFICADOR).
create index IX_FECHA_BIS ON MOVIMIENTO_BIS(Fecha);

/**
Query OK, 0 rows affected (0,10 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

create index IX_IDENTIFICADOR ON MOVIMIENTO_BIS(identificador);

/**
Query OK, 0 rows affected (0,09 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

-- 9. Analiza el plan de ejecución de las siguientes consultas y observa la diferencia: 
    --Consulta 1:
    select * from MOVIMIENTO_BIS where identificador = 3;

    /**
    +---------------+-----------+------------+----------+
    | Identificador | Articulo  | Fecha      | Cantidad |
    +---------------+-----------+------------+----------+
    |             3 | Producto3 | 2012-02-17 |   735391 |
    +---------------+-----------+------------+----------+
    1 row in set (0,00 sec)
    **/

    --Consulta 2:
    select identificador from MOVIMIENTO_BIS where identificador = 3;

    /**
    +---------------+
    | identificador |
    +---------------+
    |             3 |
    +---------------+
    1 row in set (0,00 sec)
    **/

    --Fíjata en que en la consulta 1 pedimos todos los campos. ¿A través de que indice se busca? ¿Por qué crees que lo hace así? En la consulta 2 solo pedimos el identificador. ¿A través de que índice busca? ¿Por qué crees que lo hace así? Analiza la ejecución.


-- 10. Analiza el plan de ejecución de las siguientes consultas y observa la diferencia:
    -- Consulta 1:
    SELECT fecha FROM MOVIMIENTO WHERE fecha BETWEEN '01/01/2012' and '01/03/2012';

    /**
    Empty set, 7170 warnings (0,02 sec)
    **/

    -- Consulta 2:
    SELECT * FROM MOVIMIENTO WHERE fecha BETWEEN '01/01/2012' and '01/03/2012';

    /**
    Empty set, 7170 warnings (0,01 sec)
    **/

    -- Fijate que en la consulta 2 pedimos todos los campos. ¿A través de que índice busca? ¿Por qué crees que lo hace así? En la consulta 1 solo pedimos la fecha. ¿A través de que índice busca? ¿Por qué crees que lo hace así? Analiza la ejecución.


-- 11. Vamos a crear un índice por fecha (IX_FECHA) en la tabla MOVIMIENTO, puesto que no lo tenía, en este caso la tabla ya tenía un indice, la clave primaria.
create index IX_FECHA ON MOVIMIENTO(Fecha);

/**
Query OK, 0 rows affected (0,07 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

-- 12. Visualiza los indices de las tablas MOVIMIENTO y MOVIMIENTO_BIS.
describe MOVIMIENTO;

/**
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| Identificador | int         | NO   | PRI | NULL    | auto_increment |
| Articulo      | varchar(50) | NO   |     | NULL    |                |
| Fecha         | date        | NO   | MUL | NULL    |                |
| Cantidad      | int         | NO   |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
4 rows in set (0,01 sec)
**/

describe MOVIMIENTO_BIS;

/**
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Identificador | int         | NO   | MUL | 0       |       |
| Articulo      | varchar(50) | NO   |     | NULL    |       |
| Fecha         | date        | NO   | MUL | NULL    |       |
| Cantidad      | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0,00 sec)
**/