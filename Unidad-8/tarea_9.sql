/**
TAREA 9 Trabajo con la BBDD Alumnos
***/
--Crea una base de datos llamada test que contenga una tabla llamada alumnos con las siguientes columnas:

--Tabla alumnos:
    --id (entero sin signo)
    --nombre (cadena de caracteres)
    --apellido1 (cadena de caracteres)
    --apellido2 (cadena de caracteres)
    --email (cadena de caracteres)

CREATE DATABASE IF NOT EXISTS test_2;

USE test_2;

CREATE TABLE IF NOT EXISTS alumnos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    email VARCHAR(100)
);


--Escribe una función llamado crear_email que dados los parámetros de entrada: nombre, apellido1, apellido2 y dominio, cree una dirección de email y la devuelva como salida.

--Función: crear_email
    --Entrada:
        --nombre (cadena de caracteres)
        --apellido1 (cadena de caracteres)
        --apellido2 (cadena de caracteres)
        --dominio (cadena de caracteres)
    --Salida:
        --email (cadena de caracteres)

--El email devuelve una dirección de correo electrónico con el siguiente formato:

    --El primer carácter del parámetro nombre.
    --Los tres primeros caracteres del parámetro apellido1.
    --Los tres primeros caracteres del parámetro apellido2.
    --El carácter @.
    --El dominio pasado como parámetro.
    --La dirección de email debe estar en minúsculas.

DELIMITER $$

CREATE FUNCTION crear_email(nombre VARCHAR(255), apellido1 VARCHAR(255), apellido2 VARCHAR(255), dominio VARCHAR(255)) RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
    DECLARE email VARCHAR(255);
    SET nombre = eliminar_acentos(LOWER(nombre));
    SET apellido1 = eliminar_acentos(LOWER(apellido1));
    SET apellido2 = eliminar_acentos(LOWER(apellido2));
    
    SET email = CONCAT(
        SUBSTRING(nombre, 1, 1),
        SUBSTRING(apellido1, 1, 3),
        SUBSTRING(apellido2, 1, 3),
        '@',
        LOWER(dominio)
    );
    
    RETURN email;
END$$

DELIMITER ; 


--También crea una función llamada eliminar_acentos que reciba una cadena de caracteres y devuelva la misma cadena sin acentos. La función tendrá que reemplazar todas las vocales que tengan acento por la misma vocal pero sin acento. Por ejemplo, si la función recibe como parámetro de entrada la cadena María la función debe devolver la cadena Maria.

--Función: eliminar_acentos
    --Entrada:
        --cadena (cadena de caracteres)
    --Salida:
        --(cadena de caracteres)

--La función crear_email deberá hacer uso de la función eliminar_acentos.


DELIMITER $$

CREATE FUNCTION eliminar_acentos(cadena VARCHAR(255)) RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
    DECLARE resultado VARCHAR(255) DEFAULT cadena;
    SET resultado = REPLACE(resultado, 'á', 'a');
    SET resultado = REPLACE(resultado, 'é', 'e');
    SET resultado = REPLACE(resultado, 'í', 'i');
    SET resultado = REPLACE(resultado, 'ó', 'o');
    SET resultado = REPLACE(resultado, 'ú', 'u');
    SET resultado = REPLACE(resultado, 'Á', 'A');
    SET resultado = REPLACE(resultado, 'É', 'E');
    SET resultado = REPLACE(resultado, 'Í', 'I');
    SET resultado = REPLACE(resultado, 'Ó', 'O');
    SET resultado = REPLACE(resultado, 'Ú', 'U');
    RETURN resultado;
END$$

DELIMITER ;

--Ahora vamos a insertar datos para probar las funciones:

INSERT INTO alumnos (nombre, apellido1, apellido2) VALUES ('Pedro', 'García', 'Aguado');
INSERT INTO alumnos (nombre, apellido1, apellido2, email) VALUES ('María', 'Becerra', 'Gutiérrez', 'lamery_loca@gmail.com');

/**

**/

--Una vez creada la tabla escriba un trigger con las siguientes características:

--Trigger:
    --trigger_crear_email_before_insert. Se ejecuta sobre la tabla alumnos. Se ejecuta antes de una operación de inserción.Si el nuevo valor del email que se quiere insertar es NULL, entonces se le creará automáticamente una dirección de email y se insertará en la tabla. Si el nuevo valor del email no es NULL se guardará en la tabla el valor del email.

    --Nota: Para crear la nueva dirección de email se deberá hacer uso del procedimiento crear_email.

DELIMITER $$

CREATE TRIGGER trigger_crear_email_before_insert
BEFORE INSERT ON alumnos
FOR EACH ROW
BEGIN
    IF NEW.email IS NULL THEN
        SET NEW.email = crear_email(NEW.nombre, NEW.apellido1, NEW.apellido2, 'ejemplo.com');
    END IF;
END$$

DELIMITER ;


--Ahora vamos a insertar datos para probar las funciones:

INSERT INTO alumnos (nombre, apellido1, apellido2) VALUES ('Pedro', 'García', 'Aguado');
INSERT INTO alumnos (nombre, apellido1, apellido2, email) VALUES ('María', 'Becerra', 'Gutiérrez', 'lamery_loca@gmail.com');

/**
+----+--------+-----------+------------+-----------------------+
| id | nombre | apellido1 | apellido2  | email                 |
+----+--------+-----------+------------+-----------------------+
|  1 | Pedro  | García    | Aguado     | pgaragu@ejemplo.com   |
|  2 | María  | Becerra   | Gutiérrez  | lamery_loca@gmail.com |
+----+--------+-----------+------------+-----------------------+
2 rows in set (0,00 sec)
**/


-- Ahora vamos a crear un procedimiento para insertar aleatoriamente más alumnos:









 --Verificación:
    --Realiza inserciones en la tabla y verifica el correcto funcionamiento de las funciones y triggers.
    --Realiza un procedimiento que realice la inserción de un número de elementos que se pasa como parámetro. Incluye la máxima aleatoridad posible.
