/**
TRABAJO CON PRODECIMIENTOS DE GENERACIÓN DE INFORMACIÓN
**/

-- Dado el siguiente procedimiento base:
DELIMITER //

CREATE PROCEDURE my_loop(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        -- Coloca aquí el código que deseas ejecutar en cada iteración del bucle
        -- Por ejemplo, puedes imprimir el valor del contador
        SELECT counter;

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

-- Llama al procedimiento 
CALL my_loop(5);

-- 1. Inserta cinco filas en la tabla empleados con nombres aleatorios generados usando la función CONCAT() junto con RAND().
DELIMITER $$

CREATE PROCEDURE generar_empleados_aleatorios(IN iterations INT) --(METERLE MÁS PARÁMETROS COMO EL SALARIO MÍNIMO Y MÁXIMO, ETC...)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        INSERT INTO empleados (nombre, salario)
        VALUES (CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000);
        SELECT counter;

        SET counter = counter + 1;
    END WHILE;
END$$

DELIMITER ;

-- Se llama al procedimiento de la siguiente manera:
call generar_empleados_aleatorios(5);

select * from empleados;
/**
+----+-----------------------------+---------+
| id | nombre                      | salario |
+----+-----------------------------+---------+
|  1 | Juan                        | 3000.00 |
|  2 | María                       | 3500.00 |
|  3 | Pedro                       | 3200.00 |
|  4 | Empleado0.5205281847347768  | 8573.00 |
|  5 | Empleado0.5460388227794681  | 4125.00 |
|  6 | Empleado0.6899842467997076  | 7225.00 |
|  7 | Empleado0.19535156078203728 | 2140.00 |
|  8 | Empleado0.5018217102641442  | 5651.00 |
+----+-----------------------------+---------+
8 rows in set (0,00 sec)
**/

-- 2. Inserta tres filas en la tabla empleados con nombres aleatorios generados usando la función UUID().
DELIMITER $$

CREATE PROCEDURE generar_empleados_aleatorios_2(IN iterations INT) --(METERLE MÁS PARÁMETROS COMO EL SALARIO MÍNIMO Y MÁXIMO, ETC...)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        INSERT INTO empleados (nombre, salario)
        VALUES (UUID(), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000);
        SELECT counter;

        SET counter = counter + 1;
    END WHILE;
END$$

DELIMITER ; 

-- Se llama al procedimiento de la siguiente manera:
call generar_empleados_aleatorios_2(3);

select * from empleados;
/**
+----+--------------------------------------+---------+
| id | nombre                               | salario |
+----+--------------------------------------+---------+
|  1 | Juan                                 | 3000.00 |
|  2 | María                                | 3500.00 |
|  3 | Pedro                                | 3200.00 |
|  4 | Empleado0.5205281847347768           | 8573.00 |
|  5 | Empleado0.5460388227794681           | 4125.00 |
|  6 | Empleado0.6899842467997076           | 7225.00 |
|  7 | Empleado0.19535156078203728          | 2140.00 |
|  8 | Empleado0.5018217102641442           | 5651.00 |
|  9 | f30f7440-1230-11ef-b8f6-0800271a12ae | 8212.00 |
| 10 | f3134694-1230-11ef-b8f6-0800271a12ae | 6105.00 |
| 11 | f317063c-1230-11ef-b8f6-0800271a12ae | 3889.00 |
+----+--------------------------------------+---------+
11 rows in set (0,00 sec)
**/

-- 3. Inserta dos filas en la tabla empleados con nombres aleatorios generados usando la función RAND() junto con ORDER BY RAND().
DELIMITER $$

CREATE PROCEDURE generar_empleados_aleatorios_3(IN iterations INT) --(METERLE MÁS PARÁMETROS COMO EL SALARIO MÍNIMO Y MÁXIMO, ETC...)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        
        SELECT counter;
        INSERT INTO empleados (nombre, salario)
        SELECT CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000
        FROM (SELECT 1 UNION SELECT 2) AS sub
        ORDER BY RAND()
        LIMIT 2;
        SET counter = counter + 1;
    END WHILE;
END$$

DELIMITER ;

-- Se llama al procedimiento de la siguiente manera:
call generar_empleados_aleatorios_3(2);--(tenía que haber puesto 1)

select * from empleados;
/**
+----+--------------------------------------+---------+
| id | nombre                               | salario |
+----+--------------------------------------+---------+
|  1 | Juan                                 | 3000.00 |
|  2 | María                                | 3500.00 |
|  3 | Pedro                                | 3200.00 |
|  4 | Empleado0.5205281847347768           | 8573.00 |
|  5 | Empleado0.5460388227794681           | 4125.00 |
|  6 | Empleado0.6899842467997076           | 7225.00 |
|  7 | Empleado0.19535156078203728          | 2140.00 |
|  8 | Empleado0.5018217102641442           | 5651.00 |
|  9 | f30f7440-1230-11ef-b8f6-0800271a12ae | 8212.00 |
| 10 | f3134694-1230-11ef-b8f6-0800271a12ae | 6105.00 |
| 11 | f317063c-1230-11ef-b8f6-0800271a12ae | 3889.00 |
| 12 | Empleado0.02195732297558088          | 2592.00 |
| 13 | Empleado0.49844413017709194          | 6545.00 |
| 15 | Empleado0.29482759097109323          | 5617.00 |
| 16 | Empleado0.29859592141452795          | 6645.00 |
+----+--------------------------------------+---------+
15 rows in set (0,00 sec)
**/

-- 4. Inserta cuatro filas en la tabla empleados con nombres aleatorios generados usando la función SUBSTRING_INDEX(UUID(), '-', -1).
DELIMITER $$

CREATE PROCEDURE generar_empleados_aleatorios_4(IN iterations INT) --(METERLE MÁS PARÁMETROS COMO EL SALARIO MÍNIMO Y MÁXIMO, ETC...)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
       
        SELECT counter;
        INSERT INTO empleados (nombre, salario)
        VALUES (SUBSTRING_INDEX(UUID(), '-', -1), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000);
        SET counter = counter + 1;
    END WHILE;
END$$

DELIMITER ;

-- Se llama al procedimiento de la siguiente manera:
call generar_empleados_aleatorios_4(4);

select * from empleados;
/**
+----+--------------------------------------+---------+
| id | nombre                               | salario |
+----+--------------------------------------+---------+
|  1 | Juan                                 | 3000.00 |
|  2 | María                                | 3500.00 |
|  3 | Pedro                                | 3200.00 |
|  4 | Empleado0.5205281847347768           | 8573.00 |
|  5 | Empleado0.5460388227794681           | 4125.00 |
|  6 | Empleado0.6899842467997076           | 7225.00 |
|  7 | Empleado0.19535156078203728          | 2140.00 |
|  8 | Empleado0.5018217102641442           | 5651.00 |
|  9 | f30f7440-1230-11ef-b8f6-0800271a12ae | 8212.00 |
| 10 | f3134694-1230-11ef-b8f6-0800271a12ae | 6105.00 |
| 11 | f317063c-1230-11ef-b8f6-0800271a12ae | 3889.00 |
| 12 | Empleado0.02195732297558088          | 2592.00 |
| 13 | Empleado0.49844413017709194          | 6545.00 |
| 15 | Empleado0.29482759097109323          | 5617.00 |
| 16 | Empleado0.29859592141452795          | 6645.00 |
| 18 | 0800271a12ae                         | 5009.00 |
| 19 | 0800271a12ae                         | 6193.00 |
| 20 | 0800271a12ae                         | 5939.00 |
| 21 | 0800271a12ae                         | 9114.00 |
+----+--------------------------------------+---------+
19 rows in set (0,00 sec)
**/

-- 5. Inserta seis filas en la tabla empleados con nombres aleatorios generados usando la función RAND() y una semilla diferente.
DELIMITER //

CREATE PROCEDURE my_loop(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        -- Coloca aquí el código que deseas ejecutar en cada iteración del bucle
        -- Por ejemplo, puedes imprimir el valor del contador
        SELECT counter;

        SET counter = counter + 1;
    END WHILE;
END//
