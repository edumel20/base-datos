/**
TAREA REPASO 2
**/

--La base de datos de "empleados" es un sistema diseñado para gestionar información relacionada con los empleados de una empresa. Esta base de datos está estructurada en torno a la entidad principal "empleados", que contiene información detallada sobre cada empleado. La estructura de la base de datos se compone de una única tabla principal llamada "empleados".

--La tabla "empleados" está diseñada con las siguientes columnas:

--id: Esta columna sirve como identificador único para cada empleado. Es de tipo entero y se genera automáticamente utilizando la propiedad AUTO_INCREMENT.
--nombre: Almacena el nombre completo de cada empleado. Es de tipo cadena de caracteres (VARCHAR) con una longitud máxima de 100 caracteres.
--salario: Esta columna registra el salario de cada empleado. Se define como un número decimal (DECIMAL) con una precisión de 10 dígitos en total y 2 dígitos después del punto decimal.

CREATE DATABASE IF NOT EXISTS tarea_repaso_2;
USE tarea_repaso_2;

CREATE TABLE empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    salario DECIMAL(10, 2)
);

INSERT INTO empleados (nombre, salario) VALUES
('Juan', 3000.00),
('María', 3500.00),
('Pedro', 3200.00);

--Vamos a crear distintos procedimientos que harán uso de cursores. Vamos a ver un ejemplo y ver como se define y comporta.

-- Crea un procedimiento que aumente el salario de los empleados en un porcentaje dado:
salario * (1 + porcentaje / 100) 

-- El procedimiento que resulta el problema planteado será el siguiente:
DROP PROCEDURE IF EXISTS aumentar_salario;

DELIMITER $$
CREATE PROCEDURE aumentar_salario(in porcentaje DECIMAL(5,2))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10,2);
    DECLARE cur CURSOR FOR select id, nombre, salario from empleados;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop : LOOP
        FETCH cur INTO emp_id, emp_nombre, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        UPDATE empleados SET salario = salario * (1 + porcentaje / 100) WHERE id = emp_id;
    END LOOP;
    CLOSE cur;
END $$

DELIMITER ;

-- Llamamos al procedimiento de la siguiente manera:
call aumentar_salario(15);
/**
-- TABLA ANTES DEL AUMENTO DE SALARIO:
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3000.00 |
|  2 | María  | 3500.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+

-- TABLA DESPUÉS DEL AUMENTO DE SALARIO:
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3450.00 |
|  2 | María  | 4025.00 |
|  3 | Pedro  | 3680.00 |
+----+--------+---------+
**/


-- Teniendo este ejemplo como referencia, realiza:

--Escribe un procedimiento almacenado que aumente los salarios de todos los empleados en un 5%, pero excluya a aquellos cuyo salario sea superior a 3200. El procedimiento debe tener parámetros de entrada.
DROP PROCEDURE IF EXISTS aumentar_salario_en_5;

DELIMITER $$
CREATE PROCEDURE aumentar_salario_en_5(IN porcentaje DECIMAL(5,2))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10,2);
    DECLARE cur CURSOR FOR select id, nombre, salario from empleados WHERE salario > 3200;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    IF porcentaje IS NULL OR porcentaje = 0 THEN
        SET porcentaje = 5;
    END IF;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_nombre, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        UPDATE empleados SET salario = salario * (1 + porcentaje / 100) WHERE id = emp_id;
    END LOOP;
    CLOSE cur;
END$$

DELIMITER ;

-- Llamamos a la función de la siguiente manera:
call aumentar_salario_en_5(NULL);
/**
-- TABLA ANTES DEL AUMENTO DE SALARIO:
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3450.00 |
|  2 | María  | 4025.00 |
|  3 | Pedro  | 3680.00 |
+----+--------+---------+

-- TABLA DESPUÉS DEL AUMENTO DE SALARIO:
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3622.50 |
|  2 | María  | 4226.25 |
|  3 | Pedro  | 3864.00 |
+----+--------+---------+
**/

-- Escribe un procedimiento almacenado que calcule el salario anual de cada empleado (asumiendo que trabajan todo el año) y lo imprima.
DROP PROCEDURE IF EXISTS salario_anual;

DELIMITER $$
CREATE PROCEDURE salario_anual()
BEGIN
    DECLARE fin INT DEFAULT O;
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10,2);
    DECLARE emp_salario_anual DECIMAL(10,2);
    DECLARE cur CURSOR FOR SELECT id, nombre, salario from empleados;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin = 1;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_nombre, emp_salario;
        IF fin = 1 THEN
            LEAVE read_loop;
        END IF;
        SET emp_salario_anual = salario * 12;
        SELECT CONCAT('Empleado', emp_nombre, 'Salario Anual', emp_salario_anual) AS resultado;
    END LOOP;
    CLOSE cur;
END$$

DELIMITER ;

-- Llamamos al procedimiento de la siguiente forma:
call salario_anual();
/**

**/