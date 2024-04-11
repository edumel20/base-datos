/**
TRABAJO CON LA BBDD JARDINERÍA
**/

-- 1. Carga de datos
    -- Realiza la carga de la BBDD de Jardineria y describe los pasos que has realizado.
        /**
        Se ha descargado 'jardineria.sql' y se ha usado la siguiente 
        sentencia para cargarlo al motor de BBDD MySQL: 
        **/
        SOURCE jardineria.sql;

-- 2. índices
    --Consulte cuáles son los índices que hay en la tabla producto utilizando las instrucciones SQL que nos permiten obtener esta información de la tabla.
    SHOW INDEX from producto;
    /**
    +----------+------------+----------+--------------+-----------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
    | Table    | Non_unique | Key_name | Seq_in_index | Column_name     | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
    +----------+------------+----------+--------------+-----------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
    | producto |          0 | PRIMARY  |            1 | codigo_producto | A         |         276 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
    | producto |          1 | gama     |            1 | gama            | A         |           4 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
    +----------+------------+----------+--------------+-----------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
    2 rows in set (0,04 sec)
    **/

    --Haga uso de EXPLAIN para obtener información sobre cómo se están realizando las consultas y diga cuál de las dos consultas realizará menos comparaciones para encontrar el producto que estamos buscando. ¿Cuántas comparaciones se realizan en cada caso? ¿Por qué?.
    EXPLAIN SELECT * FROM producto WHERE codigo_producto = 'OR-114';
    /**
    +----+-------------+----------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
    | id | select_type | table    | partitions | type  | possible_keys | key     | key_len | ref   | rows | filtered | Extra |
    +----+-------------+----------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
    |  1 | SIMPLE      | producto | NULL       | const | PRIMARY       | PRIMARY | 62      | const |    1 |   100.00 | NULL  |
    +----+-------------+----------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
    1 row in set, 1 warning (0,01 sec)
    **/

    EXPLAIN SELECT * FROM producto WHERE nombre = 'Evonimus Pulchellus';
    /**
    +----+-------------+----------+------------+------+---------------+------+---------+------+------+----------+-------------+
    | id | select_type | table    | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
    +----+-------------+----------+------------+------+---------------+------+---------+------+------+----------+-------------+
    |  1 | SIMPLE      | producto | NULL       | ALL  | NULL          | NULL | NULL    | NULL |  276 |    10.00 | Using where |
    +----+-------------+----------+------------+------+---------------+------+---------+------+------+----------+-------------+
    1 row in set, 1 warning (0,00 sec)
    **/

    /**
      La primera consulta es más eficiente que la segunda, debido a que la primera
    sentencia posee una clave primaria, por lo que solo ha tenido que recorrer una
    fila de la tabla 'producto'.
      La segunda consulta es menos eficiente, ya que al no tener una clave primaria
    como referencia, se ha tenido que recorrer todas las filas de la tabla 'producto'
    **/

    --Suponga que estamos trabajando con la base de datos jardineria y queremos saber optimizar las siguientes consultas. ¿Cuál de las dos sería más eficiente?. Se recomienda hacer uso de EXPLAIN para obtener información sobre cómo se están realizando las consultas.
    EXPLAIN SELECT AVG(total) FROM pago WHERE YEAR(fecha_pago) = 2008;
    /**
    +----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
    | id | select_type | table | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
    +----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
    |  1 | SIMPLE      | pago  | NULL       | ALL  | NULL          | NULL | NULL    | NULL |   26 |   100.00 | Using where |
    +----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
    1 row in set, 1 warning (0,00 sec)
    **/

    EXPLAIN SELECT AVG(total) FROM pago WHERE fecha_pago >= '2008-01-01' AND fecha_pago <= '2008-12-31';
    /**
    +----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
    | id | select_type | table | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
    +----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
    |  1 | SIMPLE      | pago  | NULL       | ALL  | NULL          | NULL | NULL    | NULL |   26 |    11.11 | Using where |
    +----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------------+
    1 row in set, 1 warning (0,00 sec)
    **/

    /**

    **/

    --Optimiza la siguiente consulta creando índices cuando sea necesario. Se recomienda hacer uso de EXPLAIN para obtener información sobre cómo se están realizando las consultas.
    EXPLAIN SELECT * FROM cliente INNER JOIN pedido ON cliente.codigo_cliente = pedido.codigo_cliente WHERE cliente.nombre_cliente LIKE 'A%';
    /**
    +----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
    | id | select_type | table   | partitions | type | possible_keys  | key            | key_len | ref                               | rows | filtered | Extra       |
    +----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
    |  1 | SIMPLE      | cliente | NULL       | ALL  | PRIMARY        | NULL           | NULL    | NULL                              |   36 |    11.11 | Using where |
    |  1 | SIMPLE      | pedido  | NULL       | ref  | codigo_cliente | codigo_cliente | 4       | jardineria.cliente.codigo_cliente |    1 |   100.00 | NULL        |
    +----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
    2 rows in set, 1 warning (0,00 sec)
    **/
    -- HACER LO DE LA OPTIMIZACIÓN

    --¿Por qué no es posible optimizar el tiempo de ejecución de las siguientes consultas, incluso haciendo uso de índices?
    EXPLAIN SELECT * FROM cliente INNER JOIN pedido ON cliente.codigo_cliente = pedido.codigo_cliente WHERE cliente.nombre_cliente LIKE '%A%';
    /**
    +----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
    | id | select_type | table   | partitions | type | possible_keys  | key            | key_len | ref                               | rows | filtered | Extra       |
    +----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
    |  1 | SIMPLE      | cliente | NULL       | ALL  | PRIMARY        | NULL           | NULL    | NULL                              |   36 |    11.11 | Using where |
    |  1 | SIMPLE      | pedido  | NULL       | ref  | codigo_cliente | codigo_cliente | 4       | jardineria.cliente.codigo_cliente |    1 |   100.00 | NULL        |
    +----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
    2 rows in set, 1 warning (0,01 sec)
    **/

    EXPLAIN SELECT * FROM cliente INNER JOIN pedido ON cliente.codigo_cliente = pedido.codigo_cliente WHERE cliente.nombre_cliente LIKE '%A';
    /**
    +----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
    | id | select_type | table   | partitions | type | possible_keys  | key            | key_len | ref                               | rows | filtered | Extra       |
    +----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
    |  1 | SIMPLE      | cliente | NULL       | ALL  | PRIMARY        | NULL           | NULL    | NULL                              |   36 |    11.11 | Using where |
    |  1 | SIMPLE      | pedido  | NULL       | ref  | codigo_cliente | codigo_cliente | 4       | jardineria.cliente.codigo_cliente |    1 |   100.00 | NULL        |
    +----+-------------+---------+------------+------+----------------+----------------+---------+-----------------------------------+------+----------+-------------+
    2 rows in set, 1 warning (0,00 sec)
    **/

    /**
    ESCRIBIR JUSTIFICACIÓN
    **/

    --Crea un índice de tipo FULLTEXT sobre las columnas nombre y descripcion de la tabla producto.
    CREATE FULLTEXT INDEX idx_nombre_descripcion ON producto(nombre, descripcion);
    /**
    Query OK, 0 rows affected, 1 warning (0,36 sec)
    Records: 0  Duplicates: 0  Warnings: 1
    **/

    --Una vez creado el índice del ejercicio anterior realiza las siguientes consultas haciendo uso de la función MATCH, para buscar todos los productos que:
        --Contienen la palabra planta en el nombre o en la descripción. - Realice una consulta para cada uno de los modos de búsqueda full-text que existen en MySQL (IN NATURAL LANGUAGE MODE, IN BOOLEAN MODE y WITH QUERY EXPANSION) y compare los resultados que ha obtenido en cada caso.
        EXPLAIN select * from producto WHERE MATCH(nombre, descripcion) AGAINST ('planta' IN NATURAL LANGUAGE MODE);
        /**
        +----+-------------+----------+------------+----------+------------------------+------------------------+---------+-------+------+----------+-------------------------------+
        | id | select_type | table    | partitions | type     | possible_keys          | key                    | key_len | ref   | rows | filtered | Extra                         |
        +----+-------------+----------+------------+----------+------------------------+------------------------+---------+-------+------+----------+-------------------------------+
        |  1 | SIMPLE      | producto | NULL       | fulltext | idx_nombre_descripcion | idx_nombre_descripcion | 0       | const |    1 |   100.00 | Using where; Ft_hints: sorted |
        +----+-------------+----------+------------+----------+------------------------+------------------------+---------+-------+------+----------+-------------------------------+
        1 row in set, 1 warning (0,00 sec)
        **/