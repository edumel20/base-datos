/**
TAREA 7: ¿El salario?
**/

-- Una de las preguntas más comunes que se hacen las personas cuando empiezan su vida laboral, suele ser qué es el salario base. Y es que es normal que la gente ande un poco confundida ya que, si no tienes conocimientos en este campo, es fácil hacerse un lío con términos como:

    --Salario base.
    --Base reguladora.
    --Salario bruto.
    --Salario neto.
    --Etc.

-- Teniendo en cuenta esta información se pide:

-- 1.Crea una base datos llamada salario.
CREATE DATABASE salario;
/**
Query OK, 1 row affected (0,01 sec)
**/

use salario;
/**
Database changed
**/

-- 2.Crea una tabla llamada persona con los siguientes campos:

    --Identificador. (Texto)(PK).
    --Nombre (Texto).
    --Salario_base. (Escoge el tipo de dato).
    --Subsidio(Escoge el tipo de dato).
    --Salud(Escoge el tipo de dato).
    --Pensión(Escoge el tipo de dato).
    --Bono(Escoge el tipo de dato).
    --Integral(Escoge el tipo de dato).

CREATE TABLE persona (
    Identificador VARCHAR(100),
    Nombre VARCHAR(100),
    Salario_base DECIMAL(10, 2),
    Subsidio DECIMAL(5, 2),
    Salud DECIMAL (5, 2),
    Pension DECIMAL(5, 2),
    Bono DECIMAL(5, 2),
    Integral DECIMAL(10, 2),
    PRIMARY KEY (Identificador) 
);
/**
Query OK, 0 rows affected (0,03 sec)
**/

show tables;
/**
+-------------------+
| Tables_in_salario |
+-------------------+
| persona           |
+-------------------+
1 row in set (0,01 sec)
**/


-- 3.Creación de un procedimiento de forma aleatoria con las siguientes características:

    --Parámetro de entrada el número de registros (Mínimo 10, y realiza la prueba varias veces).

-- Crear un procedimiento almacenado
DROP PROCEDURE IF EXISTS generar_personas_aleatorias;
DELIMITER $$
CREATE PROCEDURE generar_personas_aleatorias(IN iterations INT) 
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        INSERT INTO persona (Identificador ,Nombre, Salario_base)
        VALUES (CONCAT('Persona', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000);
        SELECT counter;

        SET counter = counter + 1;
    END WHILE;
END$$

DELIMITER ;
call generar_personas_aleatorias(10);
-- CORREGIRR!!!

-- 4.Cree una función para cada punto teniendo en cuenta que:

    --Función subsidio_transporte: El subsidio de transporte equivale al 7% al salario básico. Actualiza el valor en la tabla.
    --Función salud: La salud que corresponde al 4% al salario básico. Actualiza el valor en la tabla.
    --Función pension: La pensión que corresponde al 4% al salario básico. Actualiza el valor en la tabla.
    --Función bono: Un bono que corresponde al 8% al salario básico. Actualiza el valor en la tabla.
    --Función integral: El salario integral es la suma del salario básico - salud - pension + bono + sub de transporte. Actualiza el valor en la tabla.
    --Crea cada uno de las funciones anteriores para una persona en específico.
    --El parámetro de entrada debe de ser un identificar de la persona.

