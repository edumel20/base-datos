--Modifica el ejercicio anterior y añade un nuevo trigger que las siguientes características: Trigger: trigger_guardar_email_after_update:

    --Se ejecuta sobre la tabla alumnos.
    --Se ejecuta después de una operación de actualización.
    --Cada vez que un alumno modifique su dirección de email se deberá insertar un nuevo registro en una tabla llamada log_cambios_email.
    --La tabla log_cambios_email contiene los siguientes campos:
        --id: clave primaria (entero autonumérico)
        --id_alumno: id del alumno (entero)
        --fecha_hora: marca de tiempo con el instante del cambio (fecha y hora)
        --old_email: valor anterior del email (cadena de caracteres)
        --new_email: nuevo valor con el que se ha actualizado

--Tabla log_cambios_email:
DROP TABLE IF EXISTS log_cambios_email;
CREATE TABLE log_cambios_email (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_alumno INT REFERENCES alumnos(id),
    fecha_hora DATETIME,
    old_email VARCHAR(100),
    new_email VARCHAR(100)
);

--Trigger trigger_guardar_email_after_update:
DROP TRIGGER IF EXISTS trigger_guardar_email_after_update;
DELIMITER $$
CREATE TRIGGER trigger_guardar_email_after_update
AFTER UPDATE on alumnos
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO log_cambios_email (id_alumno, fecha_hora, old_email, new_email) VALUES (NEW.id, NOW(), OLD.email, NEW.email);
    END IF;
END$$

DELIMITER ;

-- Comprobamos que todo está correcto:
UPDATE alumnos SET email = 'king_africa@gmail.com' WHERE id = 8;

select * from alumnos;
/**
+----+----------------+----------------+----------------+-----------------------+
| id | nombre         | apellido1      | apellido2      | email                 |
+----+----------------+----------------+----------------+-----------------------+
|  1 | Pedro          | García         | Aguado         | pgaragu@ejemplo.com   |
|  2 | María          | Becerra        | Gutiérrez      | lamery_loca@gmail.com |
|  3 | alumno8c654921 | alumno8c6549cb | alumno8c6549f0 | aalualu@ejemplo.com   |
|  4 | alumno8c69d3ef | alumno8c69d4b7 | alumno8c69d50b | aalualu@ejemplo.com   |
|  5 | alumno8c6dcb5c | alumno8c6dcc06 | alumno8c6dcc52 | aalualu@ejemplo.com   |
|  6 | alumno8c713a28 | alumno8c713acf | alumno8c713b1e | aalualu@ejemplo.com   |
|  7 | alumno8c75e494 | alumno8c75e518 | alumno8c75e54a | aalualu@ejemplo.com   |
|  8 | alumno8c78b537 | alumno8c78b5e1 | alumno8c78b62c | king_africa@gmail.com |
|  9 | alumno8c7c2edc | alumno8c7c2f5c | alumno8c7c2f96 | aalualu@ejemplo.com   |
| 10 | alumno8c80d5bb | alumno8c80d644 | alumno8c80d67c | aalualu@ejemplo.com   |
+----+----------------+----------------+----------------+-----------------------+
10 rows in set (0,00 sec)
**/

select * from log_cambios_email;
/**
+----+-----------+---------------------+---------------------+-----------------------+
| id | id_alumno | fecha_hora          | old_email           | new_email             |
+----+-----------+---------------------+---------------------+-----------------------+
|  1 |         8 | 2024-05-23 02:07:40 | aalualu@ejemplo.com | king_africa@gmail.com |
+----+-----------+---------------------+---------------------+-----------------------+
1 row in set (0,00 sec)
**/

--Añade un nuevo trigger que tenga las siguientes características:

--Trigger: trigger_guardar_alumnos_eliminados:
    --Se ejecuta sobre la tabla alumnos.
    --Se ejecuta después de una operación de borrado.
    --Cada vez que se elimine un alumno de la tabla alumnos se deberá insertar un nuevo registro en una tabla llamada log_alumnos_eliminados.
    --La tabla log_alumnos_eliminados contiene los siguientes campos:
        --id: clave primaria (entero autonumérico)
        --id_alumno: id del alumno (entero)
        --fecha_hora: marca de tiempo con el instante del cambio (fecha y hora)
        --nombre: nombre del alumno eliminado (cadena de caracteres)
        --apellido1: primer apellido del alumno eliminado (cadena de caracteres)
        --apellido2: segundo apellido del alumno eliminado (cadena de caracteres)
        --email: email del alumno eliminado (cadena de caracteres).
