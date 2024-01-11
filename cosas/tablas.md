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
### TABLAS N:M (3FN)


