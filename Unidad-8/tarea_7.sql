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
    Subsidio DECIMAL(10, 2),
    Salud DECIMAL (10, 2),
    Pension DECIMAL(10, 2),
    Bono DECIMAL(10, 2),
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

CREATE PROCEDURE generar_personas_aleatorias(IN num_registros INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE identificador VARCHAR(100);
    DECLARE nombre VARCHAR(100);
    DECLARE salario_base DECIMAL(10, 2);
    DECLARE subsidio DECIMAL(10, 2);
    DECLARE salud DECIMAL(10, 2);
    DECLARE pension DECIMAL(10, 2);
    DECLARE bono DECIMAL(10, 2);
    DECLARE integral DECIMAL(10, 2);

    IF num_registros < 10 THEN
        SET num_registros = 10;
    END IF;

    WHILE counter < num_registros DO
        SET identificador = UUID();
        SET nombre = CONCAT('Persona', counter + 1);
        SET salario_base = FLOOR(RAND() * (10000 - 2000 + 1)) + 2000;
        SET subsidio = FLOOR(RAND() * (500 - 100 + 1)) + 100;
        SET salud = salario_base * 0.04;
        SET pension = salario_base * 0.04;
        SET bono = FLOOR(RAND() * (1000 - 100 + 1)) + 100;
        SET integral = salario_base + subsidio + bono - salud - pension;

        INSERT INTO persona (Identificador, Nombre, Salario_base, Subsidio, Salud, Pension, Bono, Integral) 
        VALUES (identificador, nombre, salario_base, subsidio, salud, pension, bono, integral);

        SET counter = counter + 1;
    END WHILE;
END$$

DELIMITER ;
call generar_personas_aleatorias(10);
/**
Query OK, 1 row affected (0,24 sec)
**/

select * from persona;
/**
+--------------------------------------+-----------+--------------+----------+--------+---------+--------+----------+
| Identificador                        | Nombre    | Salario_base | Subsidio | Salud  | Pension | Bono   | Integral |
+--------------------------------------+-----------+--------------+----------+--------+---------+--------+----------+
| 14c0e192-1627-11ef-90bc-0800271a12ae | Persona1  |      2397.00 |   134.00 |  95.88 |   95.88 | 352.00 |  2691.24 |
| 14c4d65d-1627-11ef-90bc-0800271a12ae | Persona2  |      3154.00 |   452.00 | 126.16 |  126.16 | 972.00 |  4325.68 |
| 14c8ba19-1627-11ef-90bc-0800271a12ae | Persona3  |      3614.00 |   141.00 | 144.56 |  144.56 | 920.00 |  4385.88 |
| 14cd9f19-1627-11ef-90bc-0800271a12ae | Persona4  |      3968.00 |   299.00 | 158.72 |  158.72 | 771.00 |  4720.56 |
| 14d5acd3-1627-11ef-90bc-0800271a12ae | Persona5  |      3898.00 |   480.00 | 155.92 |  155.92 | 133.00 |  4199.16 |
| 14d8558d-1627-11ef-90bc-0800271a12ae | Persona6  |      4684.00 |   327.00 | 187.36 |  187.36 | 844.00 |  5480.28 |
| 14dadc16-1627-11ef-90bc-0800271a12ae | Persona7  |      5463.00 |   374.00 | 218.52 |  218.52 | 212.00 |  5611.96 |
| 14dd06a4-1627-11ef-90bc-0800271a12ae | Persona8  |      6570.00 |   292.00 | 262.80 |  262.80 | 722.00 |  7058.40 |
| 14e031fa-1627-11ef-90bc-0800271a12ae | Persona9  |      2111.00 |   499.00 |  84.44 |   84.44 | 943.00 |  3384.12 |
| 14e2e6a3-1627-11ef-90bc-0800271a12ae | Persona10 |      7563.00 |   367.00 | 302.52 |  302.52 | 325.00 |  7649.96 |
+--------------------------------------+-----------+--------------+----------+--------+---------+--------+----------+
10 rows in set (0,00 sec)
**/


-- 4.Cree una función para cada punto teniendo en cuenta que:

--Función subsidio_transporte: El subsidio de transporte equivale al 7% al salario básico. Actualiza el valor en la tabla.
DELIMITER $$

CREATE FUNCTION subsidio_transporte(salario_base DECIMAL(10, 2))
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    RETURN salario_base * 0.07;
END$$

DELIMITER ;

select Identificador, Nombre, Salario_base, subsidio_transporte(Salario_base) AS Subsidio_Transporte
from persona;


--Función salud: La salud que corresponde al 4% al salario básico. Actualiza el valor en la tabla.

--Función pension: La pensión que corresponde al 4% al salario básico. Actualiza el valor en la tabla.
--Función bono: Un bono que corresponde al 8% al salario básico. Actualiza el valor en la tabla.
--Función integral: El salario integral es la suma del salario básico - salud - pension + bono + sub de transporte. Actualiza el valor en la tabla.
--Crea cada uno de las funciones anteriores para una persona en específico.
--El parámetro de entrada debe de ser un identificar de la persona.

