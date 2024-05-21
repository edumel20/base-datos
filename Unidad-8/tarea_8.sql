/**
TAREA 8 Trabajo con la BBDD de Alumnos
**/
-- 1. Crea una base de datos llamada test que contenga una tabla llamada alumnos con las siguientes columnas:

    --Tabla alumnos:
        --id (entero sin signo)
        --nombre (cadena de caracteres)
        --apellido1 (cadena de caracteres)
        --apellido2 (cadena de caracteres)
        --nota (número real)

CREATE DATABASE test;
use test;

CREATE TABLE alumnos (
    id INT AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido1 VARCHAR(100),
    apellido2 VARCHAR(100),
    nota REAL,
    PRIMARY KEY (id)
);

-- 2. Crea los siguientes triggers:

--Trigger1:trigger_check_nota_before_insert.
    --Se ejecuta sobre la tabla alumnos.
    --Se ejecuta antes de una operación de inserción.
    --Si el nuevo valor de la nota que se quiere insertar es negativo, se guarda como 0.
    --Si el nuevo valor de la nota que se quiere insertar es mayor que 10, se guarda como 10.

DELIMITER $$
CREATE TRIGGER trigger_check_nota_before_insert
BEFORE INSERT ON alumnos
FOR EACH ROW
BEGIN
    IF NEW.nota < 0 THEN SET NEW.nota = 0;
    ELSEIF NEW.nota > 10 THEN SET NEW.nota = 10;
    END IF;
END; $$


--Trigger2 : trigger_check_nota_before_update.
    --Se ejecuta sobre la tabla alumnos.
    --Se ejecuta antes de una operación de actualización.
    --Si el nuevo valor de la nota que se quiere actualizar es negativo, se guarda como 0.
    --Si el nuevo valor de la nota que se quiere actualizar es mayor que 10, se guarda como 10.

DELIMITER $$
CREATE TRIGGER trigger_check_nota_before_update
BEFORE UPDATE ON alumnos
FOR EACH ROW
BEGIN
    IF NEW.nota < 0 THEN SET NEW.nota = 0;
    ELSEIF NEW.nota > 10 THEN SET NEW.nota = 10;
    END IF;
END; $$

--Una vez creados los triggers escriba varias sentencias de inserción y actualización sobre la tabla alumnos y verifica que los triggers se están ejecutando correctamente.
INSERT INTO alumnos (nombre, apellido1, apellido2, nota) VALUES ('Juan', 'Hernández', 'Conde', 12.20);
INSERT INTO alumnos (nombre, apellido1, apellido2, nota) VALUES ('Pilar', 'González', 'Duque', -1.02);
INSERT INTO alumnos (nombre, apellido1, apellido2, nota) VALUES ('Eduardo', 'Márquez', 'Orejuela', 3.02);
INSERT INTO alumnos (nombre, apellido1, apellido2, nota) VALUES ('María', 'Elvira', 'Navarro', 8.02);
INSERT INTO alumnos (nombre, apellido1, apellido2, nota) VALUES ('Jesé', 'Páez', 'Melián', 6.7);
/**
+----+---------+------------+-----------+------+
| id | nombre  | apellido1  | apellido2 | nota |
+----+---------+------------+-----------+------+
|  1 | Pilar   | González   | Duque     |    0 |
|  2 | Juan    | Hernández  | Conde     |   10 |
|  3 | Eduardo | Márquez    | Orejuela  | 3.02 |
|  4 | María   | Elvira     | Navarro   | 8.02 |
|  5 | Jesé    | Páez       | Melián    |  6.7 |
+----+---------+------------+-----------+------+
5 rows in set (0,01 sec)
**/



-- 3. Crea el siguiente procedimiento:

--Procedimiento1:
--Crea un procedimiento que permita realizar la inserción de un número de alumnos, con una nota mímina y máxima. Estos valores pueden oscilar entre 3, y 10.
DELIMITER $$

CREATE PROCEDURE insertar_alumnos(
    IN num_alumnos INT,
    IN nota_minima DECIMAL(5,2),
    IN nota_maxima DECIMAL(5,2)
)
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= num_alumnos DO
        INSERT INTO alumnos (nombre, apellido1, apellido2, nota)
        VALUES (
            CONCAT('Alumno', i),
            'Apellido1',
            'Apellido2',
            ROUND(RAND() * (nota_maxima - nota_minima) + nota_minima, 2)
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;
call insertar_alumnos(5, 3.2, 9.1);


--Crea un procedimiento que permita realizar la inserción de un número de alumnos, con una nota mímina y máxima. Estos valores pueden oscilar entre -10, y 12.
DELIMITER $$

CREATE PROCEDURE insertar_alumnos(
    IN num_alumnos INT,
    IN nota_minima DECIMAL(5,2),
    IN nota_maxima DECIMAL(5,2)
)
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= num_alumnos DO
        INSERT INTO alumnos (nombre, apellido1, apellido2, nota)
        VALUES (
            CONCAT('Alumno', i),
            'Apellido1',
            'Apellido2',
            ROUND(RAND() * (nota_maxima - nota_minima) + nota_minima, 2)
        );
        SET i = i + 1;
    END WHILE;
END$$

--Realiza los procedimientos y verifica el comportamiento llamando a este con los parámetros adecuados.