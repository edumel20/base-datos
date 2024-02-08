-- Obtener el nombre del alumno y el nombre de la clase en la que está inscrito.
select a.nombre, c.nombre from Alumnos a JOIN Clases c ON a.id = c.id;

/**
+--------+------------------------+
| nombre |         nombre         |
+--------+------------------------+
| Juan   | Matemáticas 101        |
| María  | Historia Antigua       |
| Pedro  | Literatura Moderna     |
| Laura  | Biología Avanzada      |
| Carlos | Química Orgánica       |
| Ana    | Física Cuántica        |
| Sofía  | Arte Contemporáneo     |
| Diego  | Inglés Avanzado        |
| Lucía  | Economía Internacional |
| Miguel | Derecho Penal          |
+--------+------------------------+
**/

-- Obtener el nombre del alumno y la materia de las clases en las que está inscrito.
select a.nombre, c.materia from Alumnos a JOIN Clases c ON ON a.id = c.id;

/**
+--------+-------------+
| nombre |   materia   |
+--------+-------------+
| Juan   | Matemáticas |
| María  | Historia    |
| Pedro  | Literatura  |
| Laura  | Biología    |
| Carlos | Química     |
| Ana    | Física      |
| Sofía  | Arte        |
| Diego  | Idiomas     |
| Lucía  | Economía    |
| Miguel | Derecho     |
+--------+-------------+
**/

-- Obtener el nombre del alumno, la edad y el nombre del profesor de las clases en las que está inscrito.
select a.nombre, a.edad, c.profesor from Alumnos a JOIN Clases c ON a.id = c.id;

/**
+--------+------+------------+
| nombre | edad |  profesor  |
+--------+------+------------+
| Juan   | 20   | Profesor X |
| María  | 21   | Profesor Y |
| Pedro  | 19   | Profesor Z |
| Laura  | 22   | Profesor W |
| Carlos | 20   | Profesor V |
| Ana    | 19   | Profesor U |
| Sofía  | 21   | Profesor T |
| Diego  | 20   | Profesor S |
| Lucía  | 22   | Profesor R |
| Miguel | 19   | Profesor Q |
+--------+------+------------+
**/
-- Obtener el nombre del alumno y la dirección de las clases en las que está inscrito.
select a.nombre, c.id from Alumnos a, Clases c JOIN Inscripciones i ON i.id_alumno = a.id and i.id_clase = c.id;

/**
+--------+----+
| nombre | id |
+--------+----+
| Juan   | 1  |
| Juan   | 2  |
| María  | 3  |
| María  | 4  |
| Pedro  | 5  |
| Pedro  | 6  |
| Laura  | 7  |
| Laura  | 8  |
| Carlos | 9  |
| Ana    | 10 |
+--------+----+
**/

-- Obtener el nombre del alumno y el nombre de la clase junto con el profesor.
select a.nombre, c.nombre, c.profesor from Alumnos a JOIN Clases c ON a.id = c.id;

/**
+--------+------------------------+------------+
| nombre |         nombre         |  profesor  |
+--------+------------------------+------------+
| Juan   | Matemáticas 101        | Profesor X |
| María  | Historia Antigua       | Profesor Y |
| Pedro  | Literatura Moderna     | Profesor Z |
| Laura  | Biología Avanzada      | Profesor W |
| Carlos | Química Orgánica       | Profesor V |
| Ana    | Física Cuántica        | Profesor U |
| Sofía  | Arte Contemporáneo     | Profesor T |
| Diego  | Inglés Avanzado        | Profesor S |
| Lucía  | Economía Internacional | Profesor R |
| Miguel | Derecho Penal          | Profesor Q |
+--------+------------------------+------------+
**/

-- Obtener el nombre del alumno, la materia y el nombre del profesor de las clases en las que está inscrito.
select a.nombre, c.materia, c.profesor from Alumnos a JOIN Clases c ON a.id = c.id;

/**
+--------+-------------+------------+
| nombre |   materia   |  profesor  |
+--------+-------------+------------+
| Juan   | Matemáticas | Profesor X |
| María  | Historia    | Profesor Y |
| Pedro  | Literatura  | Profesor Z |
| Laura  | Biología    | Profesor W |
| Carlos | Química     | Profesor V |
| Ana    | Física      | Profesor U |
| Sofía  | Arte        | Profesor T |
| Diego  | Idiomas     | Profesor S |
| Lucía  | Economía    | Profesor R |
| Miguel | Derecho     | Profesor Q |
+--------+-------------+------------+
**/

-- Obtener el nombre del alumno, la edad y la materia de las clases en las que está inscrito.
select a.nombre, a.edad, c.materia from Alumnos a JOIN Clases c ON a.id = c.id;

/**
+--------+------+-------------+
| nombre | edad |   materia   |
+--------+------+-------------+
| Juan   | 20   | Matemáticas |
| María  | 21   | Historia    |
| Pedro  | 19   | Literatura  |
| Laura  | 22   | Biología    |
| Carlos | 20   | Química     |
| Ana    | 19   | Física      |
| Sofía  | 21   | Arte        |
| Diego  | 20   | Idiomas     |
| Lucía  | 22   | Economía    |
| Miguel | 19   | Derecho     |
+--------+------+-------------+
**/
-- Obtener el nombre del alumno, la dirección y el profesor de las clases en las que está inscrito.
select a.nombre, a.direccion, c.profesor from Alumnos a JOIN Clases c ON a.id = c.id;

/**
+--------+-----------+------------+
| nombre | direccion |  profesor  |
+--------+-----------+------------+
| Juan   | Calle A   | Profesor X |
| María  | Calle B   | Profesor Y |
| Pedro  | Calle C   | Profesor Z |
| Laura  | Calle D   | Profesor W |
| Carlos | Calle E   | Profesor V |
| Ana    | Calle F   | Profesor U |
| Sofía  | Calle G   | Profesor T |
| Diego  | Calle H   | Profesor S |
| Lucía  | Calle I   | Profesor R |
| Miguel | Calle J   | Profesor Q |
+--------+-----------+------------+
**/

-- Obtener el nombre del alumno y la materia de las clases en las que está inscrito, ordenado por el nombre del alumno.
select a.nombre, c.materia from Alumnos a JOIN Clases c ON a.id = c.id ORDER BY a.nombre;

/**
+--------+-------------+
| nombre |   materia   |
+--------+-------------+
| Ana    | Física      |
| Carlos | Química     |
| Diego  | Idiomas     |
| Juan   | Matemáticas |
| Laura  | Biología    |
| Lucía  | Economía    |
| María  | Historia    |
| Miguel | Derecho     |
| Pedro  | Literatura  |
| Sofía  | Arte        |
+--------+-------------+
**/

-- Contar cuántos alumnos están inscritos en cada clase.
select c.materia, COUNT(a.id) AS numero_alumnos from Alumnos a, Clases c JOIN Inscripciones i ON i.id_alumno = a.id and i.id_clase = c.id GROUP BY a.id;

/**
+-------------+----------------+
|   materia   | numero_alumnos |
+-------------+----------------+
| Matemáticas | 2              |
| Literatura  | 2              |
| Química     | 2              |
| Arte        | 2              |
| Economía    | 1              |
| Derecho     | 1              |
+-------------+----------------+
**/