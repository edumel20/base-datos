/**
TAREA 1 DE TRABAJO CON ÍNDICES
**/

-- 1. Elimine la tabla "alumno si existe":
drop table if exists alumno;

-- 2. Cree la tabla definiendo una clave primaria compuesta (año de inscripción y número de inscripción):
CREATE DATABASE IF NOT EXISTS tarea_1;

USE tarea_1

CREATE TABLE alumnos (
    numero_inscripcion INT AUTO_INCREMENT,
    fecha_inscripcion INT,
    nombre VARCHAR(50),
    dni VARCHAR(50),
    domicilio VARCHAR(50),
    ciudad VARCHAR(50),
    provincia VARCHAR(50),
    PRIMARY KEY (numero_inscripcion, fecha_inscripcion) 
);

describe alumnos;

