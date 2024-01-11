<div align="center">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/SQLite370.svg/2560px-SQLite370.svg.png" width="300px"/>
</div>

# **TAREA 2**
___
## Primeros pasos en SQL

### Paso 1 y 2: Crear una tabla con un campo de cada tipo (con inserciones incluidas )
1. Para esta tarea, vamos a crear una tabla abriendo SQLite3 en la terminal e introduciendo lo siguiente:
```sql
sqlite3 tarea2.db
```

2. Una vez abierto SQLite3, creamos las tablas *propietarios* y *vehículos* mediante los siguientes comandos (con sus respectivos datos) :
```sql
create table propietarios (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nombre TEXT NOT NULL,
apellido TEXT NOT NULL,
dni TEXT UNICODE );

INSERT INTO propietarios (nombre, apellido, dni) VALUES ('Juan', 'Perez', '12345678A')
INSERT INTO propietarios (nombre, apellido, dni) VALUES ('María', 'Lopez', '87456321B')
INSERT INTO propietarios (nombre, apellido, dni) VALUES ('Carlos', 'Ruiz', '11111111C')

```

```sql
create table vehículos (
id INTEGER PRIMARY KEY AUTOINCREMENT,
marca TEXT NOT NULL, 
modelo TEXT NOT NULL,
año INTEGER NOT NULL, 
id_propietario INTEGER	references propietarios(id));

INSERT INTO vehículos (marca, modelo, año, id_propietario) VALUES ('Ford', 'Fiesta', '2019', '1')
INSERT INTO vehículos (marca, modelo, año, id_propietario) VALUES ('Toyota', 'Corolla', '2018', '2')
INSERT INTO vehículos (marca, modelo, año, id_propietario) VALUES ('Nissan', 'Sentra', '2020', '3')
```

> Solo se muestran las tres primeras inserciones de las tablas *propietario* y *vehículos*

Las tablas resultantes son las siguientes:

```sql
+----+----------+-----------+-----------+
| id |  nombre  | apellido  |    dni    |
+----+----------+-----------+-----------+
| 1  | Juan     | Perez     | 12345678A |
| 2  | María    | Lopez     | 87456321B |
| 3  | Carlos   | Ruiz      | 11111111C |
| 4  | Laura    | Gomez     | 22222222D |
| 5  | Pedro    | Martinez  | 33333333E |
| 6  | Ana      | Fernandez | 44444444F |
| 7  | Diego    | Sanchez   | 55555555G |
| 8  | Sofia    | Torres    | 66666666H |
| 9  | Javier   | Leon      | 77777777I |
| 10 | Lucia    | Castillo  | 88888888J |
| 11 | Luis     | González  | 99999999K |
| 12 | Marta    | Diaz      | 10101010L |
| 13 | Victor   | Vargas    | 11111112L |
| 14 | Elena    | Castro    | 12121212N |
| 15 | Roberto  | Blanco    | 13131313O |
| 16 | Natalia  | Paredes   | 14141414P |
| 17 | Fernando | Herrera   | 15151515Q |
| 18 | Clara    | Soto      | 16161616R |
| 19 | Sergio   | Mendoza   | 17171717S |
| 20 | Patricia | Navarro   | 18181818T |
+----+----------+-----------+-----------+
```

```sql
+----+------------+------------+------+----------------+
| id |   marca    |   modelo   | año  | id_propietario |
+----+------------+------------+------+----------------+
| 1  | Ford       | Fiesta     | 2019 | 1              |
| 2  | Toyota     | Corolla    | 2018 | 2              |
| 3  | Nissan     | Sentra     | 2020 | 3              |
| 4  | Chevrolet  | Spark      | 2017 | 4              |
| 5  | Honda      | Civic      | 2016 | 5              |
| 6  | Ford       | Mustang    | 2021 | 6              |
| 7  | Toyota     | RAV4       | 2019 | 7              |
| 8  | Volkswagen | Golf       | 2020 | 8              |
| 9  | Honda      | CR-V       | 2018 | 9              |
| 10 | Nissan     | Altima     | 2017 | 10             |
| 11 | Chevrolet  | Malibu     | 2019 | 11             |
| 12 | Toyota     | Camry      | 2020 | 12             |
| 13 | Honda      | Accord     | 2018 | 13             |
| 14 | Ford       | Explorer   | 2021 | 14             |
| 15 | Nissan     | Rogue      | 2017 | 15             |
| 16 | Volkswagen | Jetta      | 2019 | 16             |
| 17 | Chevrolet  | Equinox    | 2018 | 17             |
| 18 | Toyota     | Highlander | 2020 | 18             |
| 19 | Toyota     | Odyssey    | 2016 | 19             |
| 20 | Nissan     | Murano     | 2019 | 20             |
+----+------------+------------+------+----------------+
```

___

### Paso 3: Realizar las 10 consultas de datos
1. Seleccionar todos los propietarios:

```sql
select * from propietarios where propietarios.id;
```
El resultado de salida sería el siguiente:

```sql
+----+----------+-----------+-----------+
| id |  nombre  | apellido  |    dni    |
+----+----------+-----------+-----------+
| 1  | Juan     | Perez     | 12345678A |
| 2  | María    | Lopez     | 87456321B |
| 3  | Carlos   | Ruiz      | 11111111C |
| 4  | Laura    | Gomez     | 22222222D |
| 5  | Pedro    | Martinez  | 33333333E |
| 6  | Ana      | Fernandez | 44444444F |
| 7  | Diego    | Sanchez   | 55555555G |
| 8  | Sofia    | Torres    | 66666666H |
| 9  | Javier   | Leon      | 77777777I |
| 10 | Lucia    | Castillo  | 88888888J |
| 11 | Luis     | González  | 99999999K |
| 12 | Marta    | Diaz      | 10101010L |
| 13 | Victor   | Vargas    | 11111112L |
| 14 | Elena    | Castro    | 12121212N |
| 15 | Roberto  | Blanco    | 13131313O |
| 16 | Natalia  | Paredes   | 14141414P |
| 17 | Fernando | Herrera   | 15151515Q |
| 18 | Clara    | Soto      | 16161616R |
| 19 | Sergio   | Mendoza   | 17171717S |
| 20 | Patricia | Navarro   | 18181818T |
+----+----------+-----------+-----------+
```

2. Listar todos los vehículos:

```sql
select from vehículos where vehículos.id;
```
El resultado de salida sería el siguiente:

```sql
+----+------------+------------+------+----------------+
| id |   marca    |   modelo   | año  | id_propietario |
+----+------------+------------+------+----------------+
| 1  | Ford       | Fiesta     | 2019 | 1              |
| 2  | Toyota     | Corolla    | 2018 | 2              |
| 3  | Nissan     | Sentra     | 2020 | 3              |
| 4  | Chevrolet  | Spark      | 2017 | 4              |
| 5  | Honda      | Civic      | 2016 | 5              |
| 6  | Ford       | Mustang    | 2021 | 6              |
| 7  | Toyota     | RAV4       | 2019 | 7              |
| 8  | Volkswagen | Golf       | 2020 | 8              |
| 9  | Honda      | CR-V       | 2018 | 9              |
| 10 | Nissan     | Altima     | 2017 | 10             |
| 11 | Chevrolet  | Malibu     | 2019 | 11             |
| 12 | Toyota     | Camry      | 2020 | 12             |
| 13 | Honda      | Accord     | 2018 | 13             |
| 14 | Ford       | Explorer   | 2021 | 14             |
| 15 | Nissan     | Rogue      | 2017 | 15             |
| 16 | Volkswagen | Jetta      | 2019 | 16             |
| 17 | Chevrolet  | Equinox    | 2018 | 17             |
| 18 | Toyota     | Highlander | 2020 | 18             |
| 19 | Toyota     | Odyssey    | 2016 | 19             |
| 20 | Nissan     | Murano     | 2019 | 20             |
+----+------------+------------+------+----------------+
```

3. Seleccionar solo los nombres y apellidos de los propietarios:

```sql
select nombre, apellidos from propietarios;
```
El resultado de salida es el siguiente:

```sql
+----------+-----------+
|  nombre  | apellido  |
+----------+-----------+
| Juan     | Perez     |
| María    | Lopez     |
| Carlos   | Ruiz      |
| Laura    | Gomez     |
| Pedro    | Martinez  |
| Ana      | Fernandez |
| Diego    | Sanchez   |
| Sofia    | Torres    |
| Javier   | Leon      |
| Lucia    | Castillo  |
| Luis     | González  |
| Marta    | Diaz      |
| Victor   | Vargas    |
| Elena    | Castro    |
| Roberto  | Blanco    |
| Natalia  | Paredes   |
| Fernando | Herrera   |
| Clara    | Soto      |
| Sergio   | Mendoza   |
| Patricia | Navarro   |
+----------+-----------+
```

4. Listar todas las marcas y modelos de los vehículos:

```sql
select marca, modelo from vehículos;
```
El resultado de salida es el siguiente:

```sql
+------------+------------+
|   marca    |   modelo   |
+------------+------------+
| Ford       | Fiesta     |
| Toyota     | Corolla    |
| Nissan     | Sentra     |
| Chevrolet  | Spark      |
| Honda      | Civic      |
| Ford       | Mustang    |
| Toyota     | RAV4       |
| Volkswagen | Golf       |
| Honda      | CR-V       |
| Nissan     | Altima     |
| Chevrolet  | Malibu     |
| Toyota     | Camry      |
| Honda      | Accord     |
| Ford       | Explorer   |
| Nissan     | Rogue      |
| Volkswagen | Jetta      |
| Chevrolet  | Equinox    |
| Toyota     | Highlander |
| Toyota     | Odyssey    |
| Nissan     | Murano     |
+------------+------------+
```

5. Listar solo los propietarios que tengan de apellido "Pérez":

```sql
select * from propietarios where apellido = 'Pérez';
```
El resultado de salida es el siguiente:

```sql
+----+--------+----------+-----------+
| id | nombre | apellido |    dni    |
+----+--------+----------+-----------+
| 1  | Juan   | Perez    | 12345678A |
+----+--------+----------+-----------+
```

6. Listar todos los vehículos con año 2019

```sql
select * from vehículos where año = '2019'
```
El resultado de salida es el siguiente:

```sql
+----+------------+--------+------+----------------+
| id |   marca    | modelo | año  | id_propietario |
+----+------------+--------+------+----------------+
| 1  | Ford       | Fiesta | 2019 | 1              |
| 7  | Toyota     | RAV4   | 2019 | 7              |
| 11 | Chevrolet  | Malibu | 2019 | 11             |
| 16 | Volkswagen | Jetta  | 2019 | 16             |
| 20 | Nissan     | Murano | 2019 | 20             |
+----+------------+--------+------+----------------+
```

7. Seleccionar propietarios que tienen vehículos de la marca 'Toyota':

```sql
select * from vehículos where marca = 'Toyota';
```
El resultado de salida es el siguiente:

```sql
+----+--------+------------+------+----------------+
| id | marca  |   modelo   | año  | id_propietario |
+----+--------+------------+------+----------------+
| 2  | Toyota | Corolla    | 2018 | 2              |
| 7  | Toyota | RAV4       | 2019 | 7              |
| 12 | Toyota | Camry      | 2020 | 12             |
| 18 | Toyota | Highlander | 2020 | 18             |
| 19 | Toyota | Odyssey    | 2016 | 19             |
+----+--------+------------+------+----------------+
```

8. Listar con marca 'Ford' y modelo 'Fiesta':

```sql
select * from vehículos where marca = 'Ford' and modelo = 'Fiesta';
```
El resultado de salida es el siguiente:

```sql
+----+-------+--------+------+----------------+
| id | marca | modelo | año  | id_propietario |
+----+-------+--------+------+----------------+
| 1  | Ford  | Fiesta | 2019 | 1              |
+----+-------+--------+------+----------------+
```

9. Seleccionar propietarios con DNI '12345678A':

```sql
select * from propietarios where dni = '12345678A'
```
El resultado de salida es el siguiente:

```sql
+----+--------+----------+-----------+
| id | nombre | apellido |    dni    |
+----+--------+----------+-----------+
| 1  | Juan   | Perez    | 12345678A |
+----+--------+----------+-----------+
```

10. Listar vehículos que pertenecen al propietario con ID 5:

```sql
select * from propietarios where id_propietario = 5; 
```
El resultado de salida es el siguiente:

```sql
+----+-------+--------+------+----------------+
| id | marca | modelo | año  | id_propietario |
+----+-------+--------+------+----------------+
| 5  | Honda | Civic  | 2016 | 5              |
+----+-------+--------+------+----------------+
```
___
### Paso 4: Realizar los siguientes updates
1. Actualizar el nombre de un propietario con DNI '12345678A':

```sql
update propietarios set nombre = 'Margaret' where dni = '12345678A';
```
El resultado de salida es el siguiente:

```sql
+----+----------+-----------+-----------+
| id |  nombre  | apellido  |    dni    |
+----+----------+-----------+-----------+
| 1  | Margaret | Perez     | 12345678A |
| 2  | María    | Lopez     | 87456321B |
| 3  | Carlos   | Ruiz      | 11111111C |
| 4  | Laura    | Gomez     | 22222222D |
| 5  | Pedro    | Martinez  | 33333333E |
| 6  | Ana      | Fernandez | 44444444F |
| 7  | Diego    | Sanchez   | 55555555G |
| 8  | Sofia    | Torres    | 66666666H |
| 9  | Javier   | Leon      | 77777777I |
| 10 | Lucia    | Castillo  | 88888888J |
| 11 | Luis     | González  | 99999999K |
| 12 | Marta    | Diaz      | 10101010L |
| 13 | Victor   | Vargas    | 11111112L |
| 14 | Elena    | Castro    | 12121212N |
| 15 | Roberto  | Blanco    | 13131313O |
| 16 | Natalia  | Paredes   | 14141414P |
| 17 | Fernando | Herrera   | 15151515Q |
| 18 | Clara    | Soto      | 16161616R |
| 19 | Sergio   | Mendoza   | 17171717S |
| 20 | Patricia | Navarro   | 18181818T |
+----+----------+-----------+-----------+
```

2. Modificar el año de un vehículo con ID '3' a '2022':

```sql
update vehículos set año = '2022' where id_vehiculo = 3;
```
El resultado de salida es el siguiente:

```sql
+----+------------+------------+------+----------------+
| id |   marca    |   modelo   | año  | id_propietario |
+----+------------+------------+------+----------------+
| 1  | Ford       | Fiesta     | 2019 | 1              |
| 2  | Toyota     | Corolla    | 2018 | 2              |
| 3  | Nissan     | Sentra     | 2022 | 3              |
| 4  | Chevrolet  | Spark      | 2017 | 4              |
| 5  | Honda      | Civic      | 2016 | 5              |
| 6  | Ford       | Mustang    | 2021 | 6              |
| 7  | Toyota     | RAV4       | 2019 | 7              |
| 8  | Volkswagen | Golf       | 2020 | 8              |
| 9  | Honda      | CR-V       | 2018 | 9              |
| 10 | Nissan     | Altima     | 2017 | 10             |
| 11 | Chevrolet  | Malibu     | 2019 | 11             |
| 12 | Toyota     | Camry      | 2020 | 12             |
| 13 | Honda      | Accord     | 2018 | 13             |
| 14 | Ford       | Explorer   | 2021 | 14             |
| 15 | Nissan     | Rogue      | 2017 | 15             |
| 16 | Volkswagen | Jetta      | 2019 | 16             |
| 17 | Chevrolet  | Equinox    | 2018 | 17             |
| 18 | Toyota     | Highlander | 2020 | 18             |
| 19 | Toyota     | Odyssey    | 2016 | 19             |
| 20 | Nissan     | Murano     | 2019 | 20             |
+----+------------+------------+------+----------------+
```

3. Cambiar el modelo de todos los vehículos Nissan a 'Micra':

```sql
update vehículos set modelo = 'Micra' where marca = 'Nissan';
```

El resultado es el siguiente:

```sql
+----+------------+------------+------+----------------+
| id |   marca    |   modelo   | año  | id_propietario |
+----+------------+------------+------+----------------+
| 1  | Ford       | Fiesta     | 2019 | 1              |
| 2  | Toyota     | Corolla    | 2018 | 2              |
| 3  | Nissan     | Micra      | 2022 | 3              |
| 4  | Chevrolet  | Spark      | 2017 | 4              |
| 5  | Honda      | Civic      | 2016 | 5              |
| 6  | Ford       | Mustang    | 2021 | 6              |
| 7  | Toyota     | RAV4       | 2019 | 7              |
| 8  | Volkswagen | Golf       | 2020 | 8              |
| 9  | Honda      | CR-V       | 2018 | 9              |
| 10 | Nissan     | Micra      | 2017 | 10             |
| 11 | Chevrolet  | Malibu     | 2019 | 11             |
| 12 | Toyota     | Camry      | 2020 | 12             |
| 13 | Honda      | Accord     | 2018 | 13             |
| 14 | Ford       | Explorer   | 2021 | 14             |
| 15 | Nissan     | Micra      | 2017 | 15             |
| 16 | Volkswagen | Jetta      | 2019 | 16             |
| 17 | Chevrolet  | Equinox    | 2018 | 17             |
| 18 | Toyota     | Highlander | 2020 | 18             |
| 19 | Toyota     | Odyssey    | 2016 | 19             |
| 20 | Nissan     | Micra      | 2019 | 20             |
+----+------------+------------+------+----------------+
```

4. Actualiza el apellido de un propietario con ID 7 a "Gómez":

```sql
update propietarios set apellido = 'Gómez' where id = 7;
```

El resulado de salida es:

```sql
+----+--------+----------+-----------+
| id | nombre | apellido |    dni    |
+----+--------+----------+-----------+
| 7  | Diego  | Gómez    | 55555555G |
+----+--------+----------+-----------+
```

5. Modifica la marca de un vehículo con modelo 'Fiesta' a 'Renault':

```sql
update vehículos set marca = 'Renault' where modelo = 'Fiesta';
```

El resultado de salida es:

```sql
+----+------------+------------+------+----------------+
| id |   marca    |   modelo   | año  | id_propietario |
+----+------------+------------+------+----------------+
| 1  | Renault    | Fiesta     | 2019 | 1              |
| 2  | Toyota     | Corolla    | 2018 | 2              |
| 3  | Nissan     | Micra      | 2022 | 3              |
| 4  | Chevrolet  | Spark      | 2017 | 4              |
| 5  | Honda      | Civic      | 2016 | 5              |
| 6  | Ford       | Mustang    | 2021 | 6              |
| 7  | Toyota     | RAV4       | 2019 | 7              |
| 8  | Volkswagen | Golf       | 2020 | 8              |
| 9  | Honda      | CR-V       | 2018 | 9              |
| 10 | Nissan     | Micra      | 2017 | 10             |
| 11 | Chevrolet  | Malibu     | 2019 | 11             |
| 12 | Toyota     | Camry      | 2020 | 12             |
| 13 | Honda      | Accord     | 2018 | 13             |
| 14 | Ford       | Explorer   | 2021 | 14             |
| 15 | Nissan     | Micra      | 2017 | 15             |
| 16 | Volkswagen | Jetta      | 2019 | 16             |
| 17 | Chevrolet  | Equinox    | 2018 | 17             |
| 18 | Toyota     | Highlander | 2020 | 18             |
| 19 | Toyota     | Odyssey    | 2016 | 19             |
| 20 | Nissan     | Micra      | 2019 | 20             |
+----+------------+------------+------+----------------+
```

