# TABLAS CORREGIDAS

## TABLAS BBDD

- Tabla Programa Académico:

```sql
create table programa_academico (
id INTEGER NOT NULL PRIMARY KEY
);
```

```sql
INSERT INTO programa_academico (id) VALUES ('1');
INSERT INTO programa_academico (id) VALUES ('2');
INSERT INTO programa_academico (id) VALUES ('3');
INSERT INTO programa_academico (id) VALUES ('4');
```

```sql
+----+
| id |
+----+
| 1  |
| 2  |
| 3  |
| 4  |
+----+
```

____
- Tabla Estudiante:

```sql
create table estudiante (
dni TEXT NOT NULL PRIMARY KEY,
nombre TEXT NOT NULL,
apellidos TEXT NOT NULL,
id_programa_academico INTEGER NOT NULL    references programa_academico(id)
);
```

```sql
INSERT INTO estudiante (dni, nombre, apellidos, id_programa_academico) VALUES ('12345678A','Francisco','Pérez Ramírez','1');
INSERT INTO estudiante (dni, nombre, apellidos, id_programa_academico) VALUES ('87654321B','Miguel','Casas Negredo','2');
INSERT INTO estudiante (dni, nombre, apellidos, id_programa_academico) VALUES ('24681357C','Susana','Lago Prados','3');
INSERT INTO estudiante (dni, nombre, apellidos, id_programa_academico) VALUES ('13572468D','Elena','Negrín Curbelo','4');
```

```sql
+-----------+-----------+----------------+-----------------------+
|    dni    |  nombre   |   apellidos    | id_programa_academico |
+-----------+-----------+----------------+-----------------------+
| 12345678A | Francisco | Pérez Ramírez  | 1                     |
| 87654321B | Miguel    | Casas Negredo  | 2                     |
| 24681357C | Susana    | Lago Prados    | 3                     |
| 13572468D | Elena     | Negrín Curbelo | 4                     |
+-----------+-----------+----------------+-----------------------+
```

___
- Tabla Profesor:

```sql
create table profesor (
dni TEXT NOT NULL PRIMARY KEY,
id INTEGER NOT NULL,
nombre TEXT NOT NULL,
apellidos TEXT NOT NULL,
es_tutor INTEGER NOT NULL
);
```

```sql
INSERT INTO profesor (dni, id, nombre, apellidos, es_tutor) VALUES ('56781234W','01','Pilar','Rodríguez Palenzuela','0');
INSERT INTO profesor (dni, id, nombre, apellidos, es_tutor) VALUES ('46970812R','02','Pedro','Salazar Ramos','1');
INSERT INTO profesor (dni, id, nombre, apellidos, es_tutor) VALUES ('23418567Q','03','Silvia','Benítez Paz','0');
INSERT INTO profesor (dni, id, nombre, apellidos, es_tutor) VALUES ('53421300S','04','Rodrigo','Díaz Vivar','1');
```

```sql
+-----------+----+---------+----------------------+----------+
|    dni    | id | nombre  |      apellidos       | es_tutor |
+-----------+----+---------+----------------------+----------+
| 56781234W | 1  | Pilar   | Rodríguez Palenzuela | 0        |
| 46970812R | 2  | Pedro   | Salazar Ramos        | 1        |
| 23418567Q | 3  | Silvia  | Benítez Paz          | 0        |
| 53421300S | 4  | Rodrigo | Díaz Vivar           | 1        |
+-----------+----+---------+----------------------+----------+
```

___
- Tabla Email:

```sql
create table email (
id INTEGER NOT NULL PRIMARY KEY,
email TEXT NOT NULL,
dni_estudiante TEXT NOT NULL    references estudiante(dni)
);
```

```sql
INSERT INTO email (id, email, dni_estudiante) VALUES ('1001','franpr20@gmail.com','12345678A');
INSERT INTO email (id, email, dni_estudiante) VALUES ('1002','miguelillo21@hotmail.com','87654321B');
INSERT INTO email (id, email, dni_estudiante) VALUES ('1003','casadenegredo@gmail.es','87654321B');
INSERT INTO email (id, email, dni_estudiante) VALUES ('1004','pradosusana_01@yahoo.es','24681357C');
INSERT INTO email (id, email, dni_estudiante) VALUES ('1005','elenita_negrinn@gmail.es','13572468D');
INSERT INTO email (id, email, dni_estudiante) VALUES ('1006','curbelotrabajo@hotmail.com','13572468D');
```

```sql
+------+----------------------------+----------------+
|  id  |           email            | dni_estudiante |
+------+----------------------------+----------------+
| 1001 | franpr20@gmail.com         | 12345678A      |
| 1002 | miguelillo21@hotmail.com   | 87654321B      |
| 1003 | casadenegredo@gmail.es     | 87654321B      |
| 1004 | pradosusana_01@yahoo.es    | 24681357C      |
| 1005 | elenita_negrinn@gmail.es   | 13572468D      |
| 1006 | curbelotrabajo@hotmail.com | 13572468D      |
+------+----------------------------+----------------+
```

___
- Tabla Dirección:

```sql
create table direccion (
id INTEGER NOT NULL PRIMARY KEY,
calle TEXT NOT NULL,
numero INTEGER NOT NULL,
piso INTEGER NOT NULL,
codigo_postal INTEGER NOT NULL,
municipio TEXT NOT NULL,
provincia TEXT NOT NULL,
dni_estudiante TEXT NOT NULL    references estudiante(dni)
);
```

```sql
INSERT INTO direccion (id, calle, numero, piso, codigo_postal, municipio, provincia, dni_estudiante) VALUES ('10','Calle Pitágoras','12','9','38009','Vilaflor','Santa Cruz de Tenerife','12345678A');
INSERT INTO direccion (id, calle, numero, piso, codigo_postal, municipio, provincia, dni_estudiante) VALUES ('11','Calle Velázquez','33','1','38654','El Sauzal','Santa Cruz de Tenerife','87654321B');
INSERT INTO direccion (id, calle, numero, piso, codigo_postal, municipio, provincia, dni_estudiante) VALUES ('12','Calle Ignacio','79','3','38900','Puerto de la Cruz','Santa Cruz de Tenerife','24681357C');
INSERT INTO direccion (id, calle, numero, piso, codigo_postal, municipio, provincia, dni_estudiante) VALUES ('13','Calle Saúco','44','2','34532','Agulo','Santa Cruz de Tenerife','13572468D'); 
```

```sql
+----+-----------------+--------+------+---------------+-------------------+------------------------+----------------+
| id |      calle      | numero | piso | codigo_postal |     municipio     |       provincia        | dni_estudiante |
+----+-----------------+--------+------+---------------+-------------------+------------------------+----------------+
| 10 | Calle Pitágoras | 12     | 9    | 38009         | Vilaflor          | Santa Cruz de Tenerife | 12345678A      |
| 11 | Calle Velázquez | 33     | 1    | 38654         | El Sauzal         | Santa Cruz de Tenerife | 87654321B      |
| 12 | Calle Ignacio   | 79     | 3    | 38900         | Puerto de la Cruz | Santa Cruz de Tenerife | 24681357C      |
| 13 | Calle Saúco     | 44     | 2    | 34532         | Agulo             | Santa Cruz de Tenerife | 13572468D      |
+----+-----------------+--------+------+---------------+-------------------+------------------------+----------------+
```

____
- Tabla Curso:

```sql
create table curso (
id INTEGER NOT NULL PRIMARY KEY,
id_programa_academico INTEGER NOT NULL    references programa_academico(id)
);
```

```sql
INSERT INTO curso (id, id_programa_academico) VALUES ('100','1');
INSERT INTO curso (id, id_programa_academico) VALUES ('200','2');
INSERT INTO curso (id, id_programa_academico) VALUES ('300','3');
INSERT INTO curso (id, id_programa_academico) VALUES ('400','4');
```

```sql
+-----+-----------------------+
| id  | id_programa_academico |
+-----+-----------------------+
| 100 | 1                     |
| 200 | 2                     |
| 300 | 3                     |
| 400 | 4                     |
+-----+-----------------------+
```

___
- Tabla Libro:

```sql
create table libro (
id TEXT NOT NULL,
dni_estudiante TEXT NOT NULL    references estudiante(dni)
);
```

```sql
INSERT INTO libro (id, dni_estudiante) VALUES ('978-1-4088-0162-5','12345678A');
INSERT INTO libro (id, dni_estudiante) VALUES ('978-1-4088-0162-5','12345678A');
INSERT INTO libro (id, dni_estudiante) VALUES ('978-0-7432-4723-5','87654321B');
INSERT INTO libro (id, dni_estudiante) VALUES ('978-0-330-51526-5','24681357C');
INSERT INTO libro (id, dni_estudiante) VALUES ('978-0-330-51526-5','24681357C');
INSERT INTO libro (id, dni_estudiante) VALUES ('978-0-553-80244-5','13572468D');
```

```sql
+-------------------+----------------+
|        id         | dni_estudiante |
+-------------------+----------------+
| 978-1-4088-0162-5 | 12345678A      |
| 978-1-4088-0162-5 | 12345678A      |
| 978-0-7432-4723-5 | 87654321B      |
| 978-0-330-51526-5 | 24681357C      |
| 978-0-330-51526-5 | 24681357C      |
| 978-0-553-80244-5 | 13572468D      |
+-------------------+----------------+
```

___
- Tarea Género:

```sql
create table genero (
id INTEGER NOT NULL PRIMARY KEY,
genero TEXT NOT NULL,
id_libro TEXT NOT NULL    references libro(id)
);
```

```sql
INSERT INTO genero (id, genero, id_libro) VALUES ('1001','Ciencia Ficción','978-1-4088-0162-5');
INSERT INTO genero (id, genero, id_libro) VALUES ('1002','Policiaca','978-1-4088-0162-5');
INSERT INTO genero (id, genero, id_libro) VALUES ('1003','Bélico','978-0-7432-4723-5');
INSERT INTO genero (id, genero, id_libro) VALUES ('1004','Terror','978-0-330-51526-5');
INSERT INTO genero (id, genero, id_libro) VALUES ('1005','Suspense','978-0-330-51526-5');
INSERT INTO genero (id, genero, id_libro) VALUES ('1006','Comedia','978-0-553-80244-5');
```

```sql
+------+-----------------+-------------------+
|  id  |     genero      |     id_libro      |
+------+-----------------+-------------------+
| 1001 | Ciencia Ficción | 978-1-4088-0162-5 |
| 1002 | Policiaca       | 978-1-4088-0162-5 |
| 1003 | Bélico          | 978-0-7432-4723-5 |
| 1004 | Terror          | 978-0-330-51526-5 |
| 1005 | Suspense        | 978-0-330-51526-5 |
| 1006 | Comedia         | 978-0-553-80244-5 |
+------+-----------------+-------------------+
```

___
- Tabla Notas:

```sql
create table notas (
id TEXT NOT NULL PRIMARY KEY,
nota FLOAT NOT NULL,
dni_estudiante TEXT NOT NULL    references estudiante(dni)
);
```

```sql
INSERT INTO notas (id, nota, dni_estudiante) VALUES ('1P', 5.4, '12345678A');
INSERT INTO notas (id, nota, dni_estudiante) VALUES ('2I', 6.9, '12345678A');
INSERT INTO notas (id, nota, dni_estudiante) VALUES ('3W', 6.2, '87654321B');
INSERT INTO notas (id, nota, dni_estudiante) VALUES ('4C', 9.6, '87654321B');
INSERT INTO notas (id, nota, dni_estudiante) VALUES ('5T', 5.1, '24681357C');
INSERT INTO notas (id, nota, dni_estudiante) VALUES ('6M', 3.7, '24681357C');
INSERT INTO notas (id, nota, dni_estudiante) VALUES ('7H', 1.4, '13572468D');
INSERT INTO notas (id, nota, dni_estudiante) VALUES ('8B', 5.1, '13572468D');
```

```sql
+----+------+----------------+
| id | nota | dni_estudiante |
+----+------+----------------+
| 1P | 5.4  | 12345678A      |
| 2I | 6.9  | 12345678A      |
| 3W | 6.2  | 87654321B      |
| 4C | 9.6  | 87654321B      |
| 5T | 5.1  | 24681357C      |
| 6M | 3.7  | 24681357C      |
| 7H | 1.4  | 13572468D      |
| 8B | 5.1  | 13572468D      |
+----+------+----------------+
```

___
- Tabla Asignatura:

```sql
create table asignatura (
id INTEGER NOT NULL PRIMARY KEY
);
```

```sql
INSERT INTO asignatura (id) VALUES ('001');
INSERT INTO asignatura (id) VALUES ('002');
INSERT INTO asignatura (id) VALUES ('003');
INSERT INTO asignatura (id) VALUES ('004');
```

```sql
   +-------+
   |   ID  |
   +-------+
   |  001  |
   |  002  |
   |  003  |
   |  004  |
   +-------+
```

___
- Tabla Aula:

```sql
create table aula (
id INTEGER NOT NULL PRIMARY KEY
);
```

```sql
INSERT INTO aula (id) VALUES ('1000');
INSERT INTO aula (id) VALUES ('2000');
INSERT INTO aula (id) VALUES ('3000');
INSERT INTO aula (id) VALUES ('4000');
```

```sql
+------+
|  id  |
+------+
| 1000 |
| 2000 |
| 3000 |
| 4000 |
+------+
```

___
- Tabla Becas:

```sql
create table beca (
id INTEGER NOT NULL PRIMARY KEY
);
```

```sql
INSERT INTO beca (id) VALUES ('0001');
INSERT INTO beca (id) VALUES ('0002');
INSERT INTO beca (id) VALUES ('0003');
INSERT INTO beca (id) VALUES ('0004');
```

```sql
+------+
|  id  |
+------+
| 0001 |
| 0002 |
| 0003 |
| 0004 |
+------+
```

___
- Tabla Empleados Administrativos:

```sql
create table empleado_administrativo (
id INTEGER NOT NULL PRIMARY KEY
);
```

```sql
INSERT INTO empleado_administrativo (id) VALUES ('00001');
INSERT INTO empleado_administrativo (id) VALUES ('00002');
INSERT INTO empleado_administrativo (id) VALUES ('00003');
INSERT INTO empleado_administrativo (id) VALUES ('00004');
```

```sql
+-------+
|   id  |
+-------+
| 00001 |
| 00002 |
| 00003 |
| 00004 |
+-------+
```

___
- Tarea Empresas Asociadas:

```sql
create table empresa_asociada (
id TEXT NOT NULL PRIMARY KEY
);
```

```sql
INSERT INTO empresa_asociada (id) VALUES ('1-A');
INSERT INTO empresa_asociada (id) VALUES ('1-B');
INSERT INTO empresa_asociada (id) VALUES ('1-C');
INSERT INTO empresa_asociada (id) VALUES ('1-D');
```

```sql
+-----+
| id  |
+-----+
| 1-A |
| 1-B |
| 1-C |
| 1-D |
+-----+
```

___
- Tabla Eventos:

```sql
create table evento (
id INTEGER NOT NULL PRIMARY KEY
);
```

```sql
INSERT INTO evento (id) VALUES ('100000');
INSERT INTO evento (id) VALUES ('110000');
INSERT INTO evento (id) VALUES ('111000');
INSERT INTO evento (id) VALUES ('111100');
```

```sql
+--------+
|   id   |
+--------+
| 100000 |
| 110000 |
| 111000 |
| 111100 |
+--------+
```

___
- Tabla Departamentos:

```sql
create table departamento (
id INTEGER NOT NULL PRIMARY KEY
);
```

```sql
INSERT INTO departamento (id) VALUES ('10000');
INSERT INTO departamento (id) VALUES ('20000');
INSERT INTO departamento (id) VALUES ('30000');
INSERT INTO departamento (id) VALUES ('40000');
```

```sql
+-------+
|  id   |
+-------+
| 10000 |
| 20000 |
| 30000 |
| 40000 |
+-------+
```

___
- Tabla Instalaciones Deportivas:

```sql
create table instalacion_deportiva (
id INTEGER NOT NULL PRIMARY KEY
);
```

```sql
INSERT INTO instalacion_deportiva (id) VALUES ('000001');
INSERT INTO instalacion_deportiva (id) VALUES ('000002');
INSERT INTO instalacion_deportiva (id) VALUES ('000003');
INSERT INTO instalacion_deportiva (id) VALUES ('000004');
```

```sql
+----------+
|    id    |
+----------+
|  000001  |
|  000002  |
|  000003  |
|  000004  |
+----------+
```

___

## TABLAS N:M GENERADAS

- Tabla Profesor imparte Curso:

```sql
create table profesor_imparte_curso (
dni_profesor TEXT NOT NULL      references profesor(dni),
id_curso INTEGER NOT NULL      references curso(id),
PRIMARY KEY (dni_profesor, id_curso)
);
```

```sql
INSERT INTO profesor_imparte_curso (dni_profesor, id_curso) VALUES ('56781234W','100');
INSERT INTO profesor_imparte_curso (dni_profesor, id_curso) VALUES ('46970812R','200');
INSERT INTO profesor_imparte_curso (dni_profesor, id_curso) VALUES ('23418567Q','300');
INSERT INTO profesor_imparte_curso (dni_profesor, id_curso) VALUES ('53421300S','400');
```

```sql
+--------------+----------+
| dni_profesor | id_curso |
+--------------+----------+
| 56781234W    | 100      |
| 46970812R    | 200      |
| 23418567Q    | 300      |
| 53421300S    | 400      |
+--------------+----------+
```

___
- Tabla Asignatura asocia Curso:

```sql
create table asignatura_asocia_curso (
id_asignatura INTEGER NOT NULL      references asignatura(id),
id_curso INTEGER NOT NULL      references curso(id),
PRIMARY KEY (id_asignatura, id_curso) 
);
```

```sql
INSERT INTO asignatura_asocia_curso (id_asignatura, id_curso) VALUES ('001','100');
INSERT INTO asignatura_asocia_curso (id_asignatura, id_curso) VALUES ('002','200');
INSERT INTO asignatura_asocia_curso (id_asignatura, id_curso) VALUES ('003','300');
INSERT INTO asignatura_asocia_curso (id_asignatura, id_curso) VALUES ('004','400');
```

```sql
+---------------+----------+
| id_asignatura | id_curso |
+---------------+----------+
| 001           | 100      |
| 002           | 200      |
| 003           | 300      |
| 004           | 400      |
+---------------+----------+
```

___
- Tabla Aula utiliza Curso:

```sql
create table aula_utiliza_curso (
id_aula INTEGER NOT NULL      references aula(id),
id_curso INTEGER NOT NULL      references curso(id),
PRIMARY KEY (id_aula, id_curso) 
);
```

```sql
INSERT INTO aula_utiliza_curso (id_aula, id_curso) VALUES ('1000','100');
INSERT INTO aula_utiliza_curso (id_aula, id_curso) VALUES ('2000','200');
INSERT INTO aula_utiliza_curso (id_aula, id_curso) VALUES ('3000','300');
INSERT INTO aula_utiliza_curso (id_aula, id_curso) VALUES ('4000','400');
```

```sql
+---------+----------+
| id_aula | id_curso |
+---------+----------+
| 1000    | 100      |
| 2000    | 200      |
| 3000    | 300      |
| 4000    | 400      |
+---------+----------+
```

___
- Tabla Departamento asocia Programa Académico:

```sql
create table departamento_asocia_programa_academico (
id_departamento INTEGER NOT NULL      references departamento(id),
id_programa_academico INTEGER NOT NULL      references programa_academico(id),
PRIMARY KEY (id_departamento, id_programa_academico)
);
```

```sql
INSERT INTO departamento_asocia_programa_academico (id_departamento, id_programa_academico) VALUES ('10000','1');
INSERT INTO departamento_asocia_programa_academico (id_departamento, id_programa_academico) VALUES ('20000','2');
INSERT INTO departamento_asocia_programa_academico (id_departamento, id_programa_academico) VALUES ('30000','3');
INSERT INTO departamento_asocia_programa_academico (id_departamento, id_programa_academico) VALUES ('40000','4');
```

```sql
+-----------------+-----------------------+
| id_departamento | id_programa_academico |
+-----------------+-----------------------+
| 10000           | 1                     |
| 20000           | 2                     |
| 30000           | 3                     |
| 40000           | 4                     |
+-----------------+-----------------------+
```

___
- Tabla Estudiante matricula Curso:

```sql
create table estudiante_matricula_curso (
dni_estudiante TEXT NOT NULL      references estudiante(dni),
id_curso INTEGER NOT NULL      references curso(id),
PRIMARY KEY (dni_estudiante, id_curso)
);
```

```sql
INSERT INTO estudiante_matricula_curso (dni_estudiante, id_curso) VALUES ('12345678A','100');
INSERT INTO estudiante_matricula_curso (dni_estudiante, id_curso) VALUES ('87654321B','200');
INSERT INTO estudiante_matricula_curso (dni_estudiante, id_curso) VALUES ('24681357C','300');
INSERT INTO estudiante_matricula_curso (dni_estudiante, id_curso) VALUES ('13572468D','400');
```

```sql
+----------------+----------+
| dni_estudiante | id_curso |
+----------------+----------+
| 12345678A      | 100      |
| 87654321B      | 200      |
| 24681357C      | 300      |
| 13572468D      | 400      |
+----------------+----------+
```

___
- Tabla Asignatura tiene Notas:

```sql
create table asignatura_tiene_notas (
id_asignatura INTEGER NOT NULL      references asignatura(id),
id_notas TEXT NOT NULL      references notas(id),
PRIMARY KEY (id_asignatura, id_notas)
);
```

```sql
INSERT INTO asignatura_tiene_notas (id_asignatura, id_notas) VALUES ('001','1P');
INSERT INTO asignatura_tiene_notas (id_asignatura, id_notas) VALUES ('001','2I');
INSERT INTO asignatura_tiene_notas (id_asignatura, id_notas) VALUES ('002','3W');
INSERT INTO asignatura_tiene_notas (id_asignatura, id_notas) VALUES ('002','4C');
INSERT INTO asignatura_tiene_notas (id_asignatura, id_notas) VALUES ('003','5T');
INSERT INTO asignatura_tiene_notas (id_asignatura, id_notas) VALUES ('003','6M');
INSERT INTO asignatura_tiene_notas (id_asignatura, id_notas) VALUES ('004','7H');
INSERT INTO asignatura_tiene_notas (id_asignatura, id_notas) VALUES ('004','8B');
```

```sql
+---------------+----------+
| id_asignatura | id_notas |
+---------------+----------+
| 001           | 1P       |
| 001           | 2I       |
| 002           | 3W       |
| 002           | 4C       |
| 003           | 5T       |
| 003           | 6M       |
| 004           | 7H       |
| 004           | 8B       |
+---------------+----------+
```

___
- Tabla Estudiante recibe Beca:

```sql
create table estudiante_recibe_beca (
dni_estudiante TEXT NOT NULL      references estudiante(dni),
id_beca INTEGER NOT NULL      references beca(id),
PRIMARY KEY (dni_estudiante, id_beca)
);
```

```sql
INSERT INTO estudiante_recibe_beca (dni_estudiante, id_beca) VALUES ('12345678A','0001');
INSERT INTO estudiante_recibe_beca (dni_estudiante, id_beca) VALUES ('87654321B','0002');
INSERT INTO estudiante_recibe_beca (dni_estudiante, id_beca) VALUES ('24681357C','0003');
INSERT INTO estudiante_recibe_beca (dni_estudiante, id_beca) VALUES ('13572468D','0004');
```

```sql
+----------------+---------+
| dni_estudiante | id_beca |
+----------------+---------+
| 12345678A      | 0001    |
| 87654321B      | 0002    |
| 24681357C      | 0003    |
| 13572468D      | 0004    |
+----------------+---------+
```

___
- Tabla Empleado Administrativo trabaja Departamento:

```sql
create table empleado_administrativo_trabaja_Departamento (
id_empleado_administrativo INTEGER NOT NULL      references empleado_administrativo(id),
id_departamento INTEGER NOT NULL      references departamento(id),
PRIMARY KEY (id_empleado_administrativo, id_departamento)
);
```

```sql
INSERT INTO empleado_administrativo_trabaja_departamento (id_empleado_administrativo, id_departamento) VALUES ('00001','10000');
INSERT INTO empleado_administrativo_trabaja_departamento (id_empleado_administrativo, id_departamento) VALUES ('00002','20000');
INSERT INTO empleado_administrativo_trabaja_departamento (id_empleado_administrativo, id_departamento) VALUES ('00003','30000');
INSERT INTO empleado_administrativo_trabaja_departamento (id_empleado_administrativo, id_departamento) VALUES ('00004','40000');
```

```sql
+----------------------------+-----------------+
| id_empleado_administrativo | id_departamento |
+----------------------------+-----------------+
| 00001                      | 10000           |
| 00002                      | 20000           |
| 00003                      | 30000           |
| 00004                      | 40000           |
+----------------------------+-----------------+
```

___
- Tabla Instalación Deportiva aloja Eventos:

```sql
create table instalacion_deportiva_aloja_evento (
id_instalacion_deportiva INTEGER NOT NULL      references instalacion_deportiva(id),
id_evento INTEGER NOT NULL      references evento(id),
PRIMARY KEY (id_instalacion_deportiva, id_evento)
);
```

```sql
INSERT INTO instalacion_deportiva_aloja_evento (id_instalacion_deportiva, id_evento) VALUES ('000001','100000');
INSERT INTO instalacion_deportiva_aloja_evento (id_instalacion_deportiva, id_evento) VALUES ('000002','110000');
INSERT INTO instalacion_deportiva_aloja_evento (id_instalacion_deportiva, id_evento) VALUES ('000003','111000');
INSERT INTO instalacion_deportiva_aloja_evento (id_instalacion_deportiva, id_evento) VALUES ('000004','111100');
```

```sql
+--------------------------+-----------+
| id_instalacion_deportiva | id_evento |
+--------------------------+-----------+
| 000001                   | 100000    |
| 000002                   | 110000    |
| 000003                   | 111000    |
| 000004                   | 111100    |
+--------------------------+-----------+
```

___
- Tabla Empresa Asociada patrocina Evento:

```sql
create table empresa_asociada_patrocina_evento (
id_empresa_asociada TEXT NOT NULL      references empresa_asociada(id),
id_evento INTEGER NOT NULL      references evento(id),
PRIMARY KEY (id_empresa_asociada, id_evento)
);
```

```sql
INSERT INTO empresa_asociada_patrocina_evento (id_empresa_asociada, id_evento) VALUES ('1-A','100000');
INSERT INTO empresa_asociada_patrocina_evento (id_empresa_asociada, id_evento) VALUES ('1-B','110000');
INSERT INTO empresa_asociada_patrocina_evento (id_empresa_asociada, id_evento) VALUES ('1-C','111000');
INSERT INTO empresa_asociada_patrocina_evento (id_empresa_asociada, id_evento) VALUES ('1-D','111100');
```

```sql
+---------------------+-----------+
| id_empresa_asociada | id_evento |
+---------------------+-----------+
| 1-A                 | 100000    |
| 1-B                 | 110000    |
| 1-C                 | 111000    |
| 1-D                 | 111100    |
+---------------------+-----------+
```

___
- Tabla Empresa Asociada proporciona Beca:

```sql
create table empresa_asociada_proporciona_beca (
id_empresa_asociada TEXT NOT NULL      references empresa_asociada(id),
id_beca INTEGER NOT NULL      references beca(id),
PRIMARY KEY (id_empresa_asociada, id_beca)
);
```

```sql
INSERT INTO empresa_asociada_proporciona_beca (id_empresa_asociada, id_beca) VALUES ('1-A','0001');
INSERT INTO empresa_asociada_proporciona_beca (id_empresa_asociada, id_beca) VALUES ('1-B','0002');
INSERT INTO empresa_asociada_proporciona_beca (id_empresa_asociada, id_beca) VALUES ('1-C','0003');
INSERT INTO empresa_asociada_proporciona_beca (id_empresa_asociada, id_beca) VALUES ('1-D','0004');
```

```sql
+---------------------+---------+
| id_empresa_asociada | id_beca |
+---------------------+---------+
| 1-A                 | 0001    |
| 1-B                 | 0002    |
| 1-C                 | 0003    |
| 1-D                 | 0004    |
+---------------------+---------+
```

___
- Tabla Estudiante tiene Profesor:

```sql
create table estudiante_tiene_profesor (
dni_estudiante TEXT NOT NULL      references estudiante(dni),
dni_profesor TEXT NOT NULL      references profesor(dni),
PRIMARY KEY (dni_estudiante, dni_profesor)
);
```

```sql
INSERT INTO estudiante_tiene_profesor (dni_estudiante, dni_profesor) VALUES ('12345678A','56781234W');
INSERT INTO estudiante_tiene_profesor (dni_estudiante, dni_profesor) VALUES ('87654321B','46970812R');
INSERT INTO estudiante_tiene_profesor (dni_estudiante, dni_profesor) VALUES ('24681357C','23418567Q');
INSERT INTO estudiante_tiene_profesor (dni_estudiante, dni_profesor) VALUES ('13572468D','53421300S');
```

```sql
+----------------+--------------+
| dni_estudiante | dni_profesor |
+----------------+--------------+
| 12345678A      | 56781234W    |
| 87654321B      | 46970812R    |
| 24681357C      | 23418567Q    |
| 13572468D      | 53421300S    |
+----------------+--------------+
```
