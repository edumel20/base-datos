/**
TAREA 1 DE TRABAJO CON ÍNDICES
**/

-- 1. Elimine la tabla "alumno si existe":
drop table if exists alumno;

-- 2. Cree la tabla definiendo una clave primaria compuesta (año de inscripción y número de inscripción):
CREATE DATABASE IF NOT EXISTS tarea_1;

USE tarea_1

CREATE TABLE alumnos (
    numero_inscripcion INT AUTO_INCREMENT,
    fecha_inscripcion INT,
    nombre VARCHAR(50),
    dni VARCHAR(50),
    domicilio VARCHAR(50),
    ciudad VARCHAR(50),
    provincia VARCHAR(50),
    PRIMARY KEY (numero_inscripcion, fecha_inscripcion) 
);

describe alumnos;

/**
+--------------------+-------------+------+-----+---------+----------------+
| Field              | Type        | Null | Key | Default | Extra          |
+--------------------+-------------+------+-----+---------+----------------+
| numero_inscripcion | int         | NO   | PRI | NULL    | auto_increment |
| fecha_inscripcion  | int         | NO   | PRI | NULL    |                |
| nombre             | varchar(50) | YES  |     | NULL    |                |
| dni                | varchar(50) | YES  |     | NULL    |                |
| domicilio          | varchar(50) | YES  |     | NULL    |                |
| ciudad             | varchar(50) | YES  |     | NULL    |                |
| provincia          | varchar(50) | YES  |     | NULL    |                |
+--------------------+-------------+------+-----+---------+----------------+
**/

-- 3. Define los siguientes índices:

    -- 3.1. Un índice único por el campo "documento" y un índice común por ciudad y provincia.
    create unique index idx_dni ON alumnos(dni);
    /**
    Query OK, 0 rows affected (0,02 sec)
    Records: 0  Duplicates: 0  Warnings: 0
    **/

    create unique index idx_ciudad_prov ON alumnos(ciudad, provincia);
    /**
    Query OK, 0 rows affected (0,02 sec)
    Records: 0  Duplicates: 0  Warnings: 0
    **/

    -- 3.2. Vea los índices de la tabla:
    show index from alumnos;

    /**
    +---------+------------+-----------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
    | Table   | Non_unique | Key_name        | Seq_in_index | Column_name        | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
    +---------+------------+-----------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
    | alumnos |          0 | PRIMARY         |            1 | numero_inscripcion | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
    | alumnos |          0 | PRIMARY         |            2 | fecha_inscripcion  | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
    | alumnos |          0 | idx_dni         |            1 | dni                | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
    | alumnos |          1 | idx_ciudad_prov |            1 | ciudad             | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
    | alumnos |          1 | idx_ciudad_prov |            2 | provincia          | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
    +---------+------------+-----------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
    **/

-- 4. Intente ingresar un alumno con clave primaria repetida:
insert into alumnos (numero_inscripcion, fecha_inscripcion, nombre) values (3, 2024, "Eduardo");
/**
ERROR 1062 (23000): Duplicate entry '3-2024' for key 'alumnos.PRIMARY'
**/

-- 5. Intente ingresar un alumno con documento repetido:
insert into alumnos (numero_inscripcion, fecha_inscripcion, nombre, dni) values (3, 2024, "Pedro", "123456789A");
/**
ERROR 1062 (23000): Duplicate entry '123456789A' for key 'alumnos.idx_dni'
**/

-- 5. Ingrese varios alumnos de la misma cuidad y provincia:
insert into alumnos (numero_inscripcion, fecha_inscripcion, nombre, ciudad, provincia) values (8, 2022, "Pietro", "santa cruz", "santa cruz"), (9, 2023, "Ilia", "santa cruz", "santa cruz"), (10, 2023, "Elena",  "santa cruz", "santa cruz");
/**
Query OK, 3 rows affected (0,02 sec)
Records: 3  Duplicates: 0  Warnings: 0
**/

-- 6. Elimina los indices creados, y muestra que ya no se encuentran:
drop index idx_dni ON alumnos;

drop index idx_ciudad_prov on alumnos;

show index from alumnos;
/**
+---------+------------+----------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name        | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+----------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| alumnos |          0 | PRIMARY  |            1 | numero_inscripcion | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| alumnos |          0 | PRIMARY  |            2 | anio_inscripcion   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+---------+------------+----------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+

**/
