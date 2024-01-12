create table programa_academico (
id INTEGER NOT NULL PRIMARY KEY 	
);

insert into programa_academico (id) values ('1');
insert into programa_academico (id) values ('2');
insert into programa_academico (id) values ('3');
insert into programa_academico (id) values ('4');

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

___

create table curso (
	id INTEGER NOT NULL PRIMARY KEY,
 	id_programa_academico INTEGER NOT NULL		references programa_academico(id)
);

insert into curso (id, id_programa_academico) values ('100','1');
insert into curso (id, id_programa_academico) values ('200','2');
insert into curso (id, id_programa_academico) values ('300','3');
insert into curso (id, id_programa_academico) values ('400','4');


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

create table aula (
	id INTEGER NOT NULL PRIMARY KEY
);

insert into aula (id) values ('1000');
insert into aula (id) values ('2000');
insert into aula (id) values ('3000');
insert into aula (id) values ('4000');

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


create table notas (
	id TEXT NOT NULL PRIMARY KEY,
	nota FLOAT NOT NULL,
	dni_estudiante TEXT NOT NULL REFERENCES estudiante(dni)
);

insert into notas (id, nota, dni_estudiante) values ('1P', 5.4, '12345678A');
insert into notas (id, nota, dni_estudiante) values ('2I', 6.9, '12345678A');
insert into notas (id, nota, dni_estudiante) values ('3W', 6.2, '87654321B');
insert into notas (id, nota, dni_estudiante) values ('4C', 9.6, '87654321B');
insert into notas (id, nota, dni_estudiante) values ('5T', 5.1, '24681357C');
insert into notas (id, nota, dni_estudiante) values ('6M', 3.7, '24681357C');
insert into notas (id, nota, dni_estudiante) values ('7H', 1.4, '13572468D');
insert into notas (id, nota, dni_estudiante) values ('8B', 5.1, '13572468D');


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



create table evento (
	id INTEGER NOT NULL PRIMARY KEY
); 

insert into evento (id) values (100000);
insert into evento (id) values (110000);
insert into evento (id) values (111000);
insert into evento (id) values (111100);

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

create table libro (
ID TEXT NOT NULL PRIMARY KEY,
Genero TEXT NOT NULL );

INSERT INTO libro ( ID, Genero ) VALUES ("978-1-4088-0162-5", "ciencia ficcion");
INSERT INTO libro ( ID, Genero ) VALUES ("978-1-4088-0162-5", "policiaca");
INSERT INTO libro ( ID, Genero ) VALUES ("978-0-7432-4723-5", "belico");
INSERT INTO libro ( ID, Genero ) VALUES ("978-0-330-51526-5", "terror");
INSERT INTO libro ( ID, Genero ) VALUES ("978-0-330-51526-5", "suspense");
INSERT INTO libro ( ID, Genero ) VALUES ("978-0-553-80244-5", "comedia");
INSERT INTO libro ( ID, Genero ) VALUES ("978-0-553-80244-5", "fantasia");

___

create table estudiante (
DNI TEXT NOT NULL PRIMARY KEY,
NOMBRE TEXT NOT NULL,
APELLIDOS TEXT NOT NULL,
id_programa_academico INTEGER NOT NULL		references programa_academico(id)
);

INSERT INTO estudiante (DNI, NOMBRE, APELLIDOS, id_programa_academico) VALUES ("12345678A","Fancisco","Pérez Ramírez","1");
INSERT INTO estudiante (DNI, NOMBRE, APELLIDOS, id_programa_academico) VALUES ("87654321B","Miguel","Casas Negredo","2");
INSERT INTO estudiante (DNI, NOMBRE, APELLIDOS, id_programa_academico) VALUES ("24681357C","Susana","Lago Prados","3");
INSERT INTO estudiante (DNI, NOMBRE, APELLIDOS, id_programa_academico) VALUES ("13572468D","Elena","Negrín Curbelo","4");

```sql
+-----------+----------+----------------+-----------------------+
|    DNI    |  NOMBRE  |   APELLIDOS    | id_programa_academico |
+-----------+----------+----------------+-----------------------+
| 12345678A | Fancisco | Pérez Ramírez  | 1                     |
| 87654321B | Miguel   | Casas Negredo  | 2                     |
| 24681357C | Susana   | Lago Prados    | 3                     |
| 13572468D | Elena    | Negrín Curbelo | 4                     |
+-----------+----------+----------------+-----------------------+
```

___

create table email (
id INTEGER NOT NULL PRIMARY KEY,
email TEXT NOT NULL,
DNI_estudiante TEXT NOT NULL		references estudiante(DNI)
);

INSERT INTO email (id, email, DNI_estudiante) VALUES ('1001','franpr20@gmail.com','12345678A');
INSERT INTO email (id, email, DNI_estudiante) VALUES ('1002','miguelillo21@hotmail','87654321B');
INSERT INTO email (id, email, DNI_estudiante) VALUES ('1003','casadenegredo@gmail.com','87654321B');
INSERT INTO email (id, email, DNI_estudiante) VALUES ('1004','pradosusana_01@yahoo.es','24561357C');
INSERT INTO email (id, email, DNI_estudiante) VALUES ('1005','elenita_negrinn@gmail.es','13572468D');
INSERT INTO email (id, email, DNI_estudiante) VALUES ('1006','curbelotrabajo@hotmail.com','13572468D');

```sql
+------+----------------------------+----------------+
|  id  |           email            | DNI_estudiante |
+------+----------------------------+----------------+
| 1001 | franpr20@gmail.com         | 12345678A      |
| 1002 | miguelillo21@hotmail       | 87654321B      |
| 1003 | casadenegredo@gmail.com    | 87654321B      |
| 1004 | pradosusana_01@yahoo.es    | 24561357C      |
| 1005 | elenita_negrinn@gmail.es   | 13572468D      |
| 1006 | curbelotrabajo@hotmail.com | 13572468D      |
+------+----------------------------+----------------+
```








### TABLAS N:M (3FN)	


