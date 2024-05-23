/**
TAREA 8 
**/

-- 1.Crea una base de datos llamada test que contenga una tabla llamada alumnos con las siguientes columnas:

--Tabla alumnos:

    --id (entero sin signo)
    --nombre (cadena de caracteres)
    --apellido1 (cadena de caracteres)
    --apellido2 (cadena de caracteres)
    --nota (número real)

CREATE DATABASE test_3;
USE test_3;

CREATE TABLE alumnos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    nota REAL
);

-- 2.Crea los siguientes triggers:

-- a) Trigger1:trigger_check_nota_before_insert.

    --Se ejecuta sobre la tabla alumnos.
    --Se ejecuta antes de una operación de inserción.
    --Si el nuevo valor de la nota que se quiere insertar es negativo, se guarda como 0.
    --Si el nuevo valor de la nota que se quiere insertar es mayor que 10, se guarda como 10.

DROP TRIGGER IF EXISTS trigger_check_nota_before_insert;
DELIMITER $$
CREATE TRIGGER trigger_check_nota_before_insert
BEFORE INSERT ON alumnos
FOR EACH ROW
BEGIN
    IF NEW.nota < 0 THEN SET NEW.nota = 0;
    ELSEIF NEW.nota > 10 THEN SET NEW.nota = 10;
    END IF;
END$$

DELIMITER ;

-- b) Trigger2 : trigger_check_nota_before_update.

    --Se ejecuta sobre la tabla alumnos.
    --Se ejecuta antes de una operación de actualización.
    --Si el nuevo valor de la nota que se quiere actualizar es negativo, se guarda como 0.
    --Si el nuevo valor de la nota que se quiere actualizar es mayor que 10, se guarda como 10.

DROP TRIGGER IF EXISTS trigger_check_nota_before_update;
DELIMITER $$
CREATE TRIGGER trigger_check_nota_before_update
BEFORE UPDATE ON alumnos
FOR EACH ROW
BEGIN
    IF NEW.nota < 0 THEN SET NEW.nota = 0;
    ELSEIF NEW.nota > 10 THEN SET NEW.nota = 10;
    END IF;
END$$

DELIMITER ;

-- Ahora insertamos datos para ver que todo funciona correctamente:

INSERT INTO alumnos (nombre, apellido1, apellido2, nota) VALUES ('Eduardo','Rabadan','Melian',-2);
INSERT INTO alumnos (nombre, apellido1, apellido2, nota) VALUES ('Li Li','Guo','Zeng',13);

select * from alumnos;
/**
+----+---------+-----------+-----------+------+
| id | nombre  | apellido1 | apellido2 | nota |
+----+---------+-----------+-----------+------+
|  1 | Eduardo | Rabadan   | Melian    |    0 |
|  2 | Li Li   | Guo       | Zeng      |   10 |
+----+---------+-----------+-----------+------+
2 rows in set (0,00 sec)
**/

-- 3. Una vez creados los triggers escriba varias sentencias de inserción y actualización sobre la tabla alumnos y verifica que los triggers se están ejecutando correctamente.

--Crea el siguiente procedimiento:

-- a) Procedimiento1:
--Crea un procedimiento que permita realizar la inserción de un número de alumnos, con una nota mímina y máxima. Estos valores pueden oscilar entre 3, y 10.
DROP PROCEDURE IF EXISTS insercion_alumnos_1;
DELIMITER $$
CREATE PROCEDURE insercion_alumnos_1 (IN nota_minima, IN nota_maxima)




--Crea un procedimiento que permita realizar la inserción de un número de alumnos, con una nota mímina y máxima. Estos valores pueden oscilar entre -10, y 12.
