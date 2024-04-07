/**
TAREA 3 DE TRABAJO CON ÍNDICES
**/

-- Crea una base de datos que tendrá por nombre Base_Indices.
create database if not exists Base_Indices;

use Base_Indices;

-- En la BD crea una tabla de nombre MOVIMIENTO con la siguiente estructura:
create table MOVIMIENTO (
    Identificador int auto_increment primary key,
    Articulo varchar(50) not null,
    Fecha date not null,
    Cantidad int not null
);

/**
Query OK, 0 rows affected (0,19 sec)
**/

-- Aplica la sentencia adecuada para visualizar los índices que hay en la tabla.
show index from MOVIMIENTO;

/**
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table      | Non_unique | Key_name | Seq_in_index | Column_name   | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| MOVIMIENTO |          0 | PRIMARY  |            1 | Identificador | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
1 row in set (0,03 sec)
**/

/**
El índice que posee la tabla es la PRIMARY KEY, la cual fue insertada en la creación de la tabla.
**/

-- Ejecuta la siguiente sentencia sql para generar datos de prueba:
CREATE TABLE NumerosUnicos (
Numero INT AUTO_INCREMENT PRIMARY KEY
);

/**
Query OK, 0 rows affected (0,26 sec)
**/

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

/**
Query OK, 3595 rows affected (0,28 sec)
Records: 3595  Duplicates: 0  Warnings: 0
**/

DROP TABLE NumerosUnicos;

/**
Query OK, 0 rows affected (0,10 sec)
**/

-- Crea con la sentencia CREATE TABLE…SELECT… un duplicado de la tabla MOVIMIENTO a la que llamaremos MOVIMIENTO_BIS.
create table MOVIMIENTO_BIS select * from MOVIMIENTO;

/**
Query OK, 3595 rows affected (0,37 sec)
Records: 3595  Duplicates: 0  Warnings: 0
**/

-- Con la cláusula DESCRIBE observa cuál es la situación de la tabla clonada, ¿Qué le pasa al índice y a la propiedad AUTO_INCREMENT?
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
4 rows in set (0,00 sec)
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

-- Se puede apreciar que la tabla "MOVIMENTO_BIS" no posee una clave primaria.

-- Utilizando EXPLAIN observa el plan de ejecución de la consulta que devuelve toda la información de los movimientos con identificador=3. Tanto en la tabla MOVIMIENTOS como en la tabla MOVIMIENTOS_bis. Escribe tus conclusiones al respecto.
Explain select identificador from MOVIMIENTO where identificador = 3;

/**
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------------+
| id | select_type | table      | partitions | type  | possible_keys | key     | key_len | ref   | rows | filtered | Extra       |
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | const | PRIMARY       | PRIMARY | 4       | const |    1 |   100.00 | Using index |
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------------+
1 row in set, 1 warning (0,00 sec)
**/

Explain select identificador from MOVIMIENTO_BIS where identificador = 3;

/**
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table          | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 3595 |    10.00 | Using where |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
1 row in set, 1 warning (0,02 sec)
**/

/**
La consulta ha sido más rápida en la tabla "MOVIMIENTO" debido a que ésta posse una clave primaria (solo ha recorrido una fila),
mientras que en la segu da tabla, al no tener ninguna identación, ha tenido que recorrer todas las filas de la tabla.
**/

-- Supongamos que las consultas de rango que se van a hacer en nuestra tabla son frecuentes y además no por el identificador, sino por la fecha. Este es motivo suficiente para que sea la fecha un índice de tabla y así mejorar el tiempo de respuesta de nuestras consultas. En la tabla MOVIMIENTO_BIS creamos un índice para la fecha (IX_FECHA_BIS) y otro índice para el identificador (IX_IDENTIFICADOR).
create index IX_FECHA_BIS ON MOVIMIENTO_BIS(Fecha);
/**
Query OK, 0 rows affected (0,32 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

create index IX_IDENTIFICADOR ON MOVIMIENTO_BIS(identificador);
/**
Query OK, 0 rows affected (0,30 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

-- Analiza el plan de ejecución de las siguientes consultas y observa la diferencia:
    -- Consulta 1:
    EXPLAIN SELECT fecha FROM MOVIMIENTO WHERE fecha BETWEEN '01/01/2012' and '01/03/2012';
    /**
    +----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
    | id | select_type | table      | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
    +----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
    |  1 | SIMPLE      | MOVIMIENTO | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 3595 |    11.11 | Using where |
    +----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
    1 row in set, 1 warning (0,00 sec)
    **/

    -- Consulta 2:
    EXPLAIN SELECT * FROM MOVIMIENTO_BIS WHERE fecha BETWEEN '01/01/2012' and '01/03/2012';
    /**
    +----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
    | id | select_type | table          | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
    +----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
    |  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ALL  | IX_FECHA_BIS  | NULL | NULL    | NULL | 3595 |    11.11 | Using where |
    +----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
    1 row in set, 2 warnings (0,01 sec)
    **/

    -- Fijate que en la consulta 2 pedimos todos los campos. ¿A través de que índice busca? ¿Por qué crees que lo hace así? En la consulta 1 solo pedimos la fecha. ¿A través de que índice busca? ¿Por qué crees que lo hace así? Analiza la ejecución.

    /**
    En la tabla clonada "MOVIMIENTO_BIS" utiliza el índice "IX_FECHA_BIS".
    **/

    -- Vamos a crear un índice por fecha (IX_FECHA) en la tabla MOVIMIENTO, puesto que no lo tenía, en este caso la tabla ya tenía un indice, la clave primaria.
    create index IX_FECHA on MOVIMIENTO(Fecha);

    -- Visualiza los indices de las tablas MOVIMIENTO y MOVIMIENTO_BIS.

show index from MOVIMIENTO;

/**
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table      | Non_unique | Key_name | Seq_in_index | Column_name   | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| MOVIMIENTO |          0 | PRIMARY  |            1 | Identificador | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| MOVIMIENTO |          1 | IX_FECHA |            1 | Fecha         | A         |         120 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
**/

show index from MOVIMENTO_BIS;

/**
+----------------+------------+------------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table          | Non_unique | Key_name         | Seq_in_index | Column_name   | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------------+------------+------------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| MOVIMIENTO_BIS |          1 | IX_FECHA_BIS     |            1 | Fecha         | A         |         120 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| MOVIMIENTO_BIS |          1 | IX_IDENTIFICADOR |            1 | Identificador | A         |        3595 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+----------------+------------+------------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
2 rows in set (0,04 sec)
**/

/**
Se crean índices en el campo fecha de la tabla MOVIMIENTO para mejorar el rendimiento de las consultas que se relacionan con el filtrado por fecha.
**/

-- Analiza el plan de ejecución de las siguientes consultas y observa la diferencia:
    -- Consulta 1:
    EXPLAIN select fecha FROM MOVIMIENTO WHERE fecha BETWEEN 01/01/2012 and 01/03/2012;
    /**
    +----+-------------+------------+------------+------+---------------+----------+---------+-------+------+----------+-------------+
    | id | select_type | table      | partitions | type | possible_keys | key      | key_len | ref   | rows | filtered | Extra       |
    +----+-------------+------------+------------+------+---------------+----------+---------+-------+------+----------+-------------+
    |  1 | SIMPLE      | MOVIMIENTO | NULL       | ref  | IX_FECHA      | IX_FECHA | 3       | const |    1 |   100.00 | Using index |
    +----+-------------+------------+------------+------+---------------+----------+---------+-------+------+----------+-------------+
    1 row in set, 1 warning (0,01 sec)
    **/

    -- Consulta 2:
    EXPLAIN SELECT * FROM MOVIMIENTO WHERE fecha BETWEEN 01/01/2012 AND 01/03/2012;
    /**
    +----+-------------+------------+------------+------+---------------+----------+---------+-------+------+----------+-------+
    | id | select_type | table      | partitions | type | possible_keys | key      | key_len | ref   | rows | filtered | Extra |
    +----+-------------+------------+------------+------+---------------+----------+---------+-------+------+----------+-------+
    |  1 | SIMPLE      | MOVIMIENTO | NULL       | ref  | IX_FECHA      | IX_FECHA | 3       | const |    1 |   100.00 | NULL  |
    +----+-------------+------------+------------+------+---------------+----------+---------+-------+------+----------+-------+
    1 row in set, 1 warning (0,01 sec)
    **/

    -- Consulta 3:
    EXPLAIN SELECT fecha FROM MOVIMIENTO_BIS WHERE fecha BETWEEN 01/01/2012 AND 01/03/2012;
    /**
    +----+-------------+----------------+------------+------+---------------+--------------+---------+-------+------+----------+-------------+
    | id | select_type | table          | partitions | type | possible_keys | key          | key_len | ref   | rows | filtered | Extra       |
    +----+-------------+----------------+------------+------+---------------+--------------+---------+-------+------+----------+-------------+
    |  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ref  | IX_FECHA_BIS  | IX_FECHA_BIS | 3       | const |    1 |   100.00 | Using index |  
    +----+-------------+----------------+------------+------+---------------+--------------+---------+-------+------+----------+-------------+
    1 row in set, 1 warning (0,00 sec)
    **/

    -- Consulta 4:
    EXPLAIN SELECT * FROM MOVIMIENTO_BIS WHERE fecha BETWEEN 01/01/2012 AND 01/03/2012;
    /**
    +----+-------------+----------------+------------+------+---------------+--------------+---------+-------+------+----------+-------+
    | id | select_type | table          | partitions | type | possible_keys | key          | key_len | ref   | rows | filtered | Extra |
    +----+-------------+----------------+------------+------+---------------+--------------+---------+-------+------+----------+-------+
    |  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ref  | IX_FECHA_BIS  | IX_FECHA_BIS | 3       | const |    1 |   100.00 | NULL  |
    +----+-------------+----------------+------------+------+---------------+--------------+---------+-------+------+----------+-------+
    1 row in set, 1 warning (0,00 sec)
    **/