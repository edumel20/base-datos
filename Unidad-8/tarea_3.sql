/**
TRABAJO CON LA BBDD DE JARDINERIA
**/

-- 1. Realice los siguientes procedimientos y funciones sobre la base de datos jardineria:
    -- Función calcular_precio_total_pedido:
    DELIMITER $$
    DROP FUNCTION IF EXISTS calcular_precio_total_pedido $$
    CREATE FUNCTION calcular_precio_total_pedido(codigo_pedido INTEGER) RETURNS FLOAT DETERMINISTIC
    BEGIN
        DECLARE total_price FLOAT;
        select SUM(cantidad * precio_unidad) INTO total_price from detalle_pedido WHERE codigo_pedido = codigo_pedido;
        return total_price;
    END $$

    /**
    Query OK, 0 rows affected (0,07 sec)
    **/

    DELIMITER ;
    select codigo_pedido, calcular_precio_total_pedido(8) AS total_price from pedido WHERE codigo_pedido = '8';
    /**
    +---------------+-------------+
    | codigo_pedido | total_price |
    +---------------+-------------+
    |             8 |      217738 |
    +---------------+-------------+
    1 row in set (0,00 sec)

    **/

    -- Función calcular_suma_pedidos_cliente:
    DELIMITER $$
    DROP FUNCTION IF EXISTS calcular_suma_pedidos_cliente $$
    CREATE FUNCTION calcular_suma_pedidos_cliente(codigo_pedido INTEGER) RETURNS INT DETERMINISTIC
    BEGIN
        DECLARE num_pedido_cliente FLOAT;
        select COUNT(codigo_cliente) INTO num_pedido_cliente from pedido WHERE codigo_cliente = codigo_cliente;
        return num_pedido_cliente;
    END $$
    /**
    Query OK, 0 rows affected (0,09 sec)
    **/

    DELIMITER ;
    select calcular_suma_pedidos_cliente(8);
    /**
    +----------------------------------+
    | calcular_suma_pedidos_cliente(8) |
    +----------------------------------+
    |                              115 |
    +----------------------------------+
    1 row in set (0,00 sec)
    **/

    -- Función calcular_suma_pagos_cliente:
    DELIMITER $$
    DROP IF EXISTS calcular_suma_pagos_cliente;
    CREATE FUNCTION calcular_suma_pagos_cliente(codigo_cliente INTEGER) RETURNS FLOAT DETERMINISTIC 
    BEGIN
        DECLARE total_pagado FLOAT;
        select SUM(calcular_precio_total_pedido(codigo_cliente)) INTO total_pagado from pedido WHERE codigo_cliente = codigo_cliente;
        return total_pagado;
    END $$
    /**
    Query OK, 0 rows affected (0,06 sec)
    **/

    DELIMITER ;
    select calcular_suma_pagos_cliente(8) from cliente WHERE codigo_cliente = 8;
    /**
    +--------------------------------+
    | calcular_suma_pagos_cliente(8) |
    +--------------------------------+
    |                       25039900 |
    +--------------------------------+
    1 row in set (0,06 sec)
    **/