/**
TAREA 2 DE TRABAJO CON ÍNDICES
**/

-- 1. Elimine la tabla "cliente" si existe:
drop table if exists cliente;

-- 2. Cree la tabla sin clave primaria e incluyela a posteriori:
CREATE DATABASE IF NOT EXISTS tarea_2;

USE tarea_2;

CREATE TABLE cliente (
    documento CHAR(8) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    domicilio VARCHAR(30),
    ciudad VARCHAR(20),
    provincia VARCHAR(20),
    telefono VARCHAR(11)
);

describe cliente;

/**
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| documento | char(8)     | NO   |     | NULL    |       |
| nombre    | varchar(30) | NO   |     | NULL    |       |
| domicilio | varchar(30) | YES  |     | NULL    |       |
| ciudad    | varchar(20) | YES  |     | NULL    |       |
| provincia | varchar(20) | YES  |     | NULL    |       |
| telefono  | varchar(11) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0,02 sec)
**/
ALTER TABLE cliente MODIFY documento CHAR(8) NOT NULL, ADD PRIMARY KEY(documento);
/**
Query OK, 0 rows affected (0,08 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

-- 4. Define los siguientes índices:
    -- 4.1. Un índice único por el campo "documento" y un índice común por ciudad y provincia.
    create unique index idx_documento ON cliente(documento);
    /**
    Query OK, 0 rows affected (0,03 sec)
    Records: 0  Duplicates: 0  Warnings: 0
    **/

    create index idx_ciudad_prov ON cliente(ciudad, provincia);
    /**
    Query OK, 0 rows affected (0,03 sec)
    Records: 0  Duplicates: 0  Warnings: 0
    **/

    -- 4.2. Vea los índices de la tabla:
    show index from cliente;
    /**
    +---------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
    | Table   | Non_unique | Key_name        | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
    +---------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
    | cliente |          0 | PRIMARY         |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
    | cliente |          0 | idx_documento   |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
    | cliente |          1 | idx_ciudad_prov |            1 | ciudad      | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
    | cliente |          1 | idx_ciudad_prov |            2 | provincia   | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
    +---------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
    **/

-- 5. Agregue un índice único por el campo "telefono". 
create unique index idx_telefono ON cliente(telefono);
/**
Query OK, 0 rows affected (0,02 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

-- 6. Elimina los índices:
drop index idx_documento ON cliente;
/**
Query OK, 0 rows affected (0,04 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/
drop index idx_cuidad_prov ON cliente;
/**
Query OK, 0 rows affected (0,04 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/
drop index idx_telefono ON cliente;
/**
Query OK, 0 rows affected (0,04 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/