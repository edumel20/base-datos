<div align="center">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/SQLite370.svg/2560px-SQLite370.svg.png" width="300px"/>
</div>

# **TAREA 1**
___
## Primeros pasos en SQL

### Paso 1: Crear una tabla con un campo de cada tipo
1. Para esta tarea, vamos a crear una tabla abriendo SQLite3 en la terminal e introduciendo lo siguiente:
```sql
sqlite3 tarea1.db
```
2. Una vez abierto SQLite3, añadimos los siguientes campos a la tabla `tarea1.db` mediante los siguientes comandos:
```sql
create table Ejemplo (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    texto TEXT NOT NULL,
    entero INTEGER NOT NULL,
    decimal REAL NOT NULL,
    fecha DATE NOT NULL,
    booleano BOOLEAN NOT NULL  
);
```
___
### Paso 2: Inserción de 50 entradas
1. Ahora vamos a realizar de las 50 entradas en nuetra tabla `tarea1.db` mediante los siguientes comandos de sqlite3:
```sql
insert into Ejemplo (texto, entero, decimal, fecha, booleano) values ('Ejemplo1','25','10.5','2022-05-15','0');
```

```sql
insert into Ejemplo (texto, entero, decimal, fecha, booleano) values ('Ejemplo2','63','45.7','2022-06-22','1');
```

```sql
insert into Ejemplo (texto, entero, decimal, fecha, booleano) values ('Ejemplo3','12','30.0','2022-07-10','0');
```

En este caso hemos añadido las tres primeras filas de la tabla `Ejemplo`.
___

### Paso 3: Realizar 5 consultas de datos
1. Mostramos todas las entradas de la tabla `Ejemplo` usando el siguiente comando en la terminal:

```sql
select * from Ejemplo;
```
El resultado de salida sería el siguiente:

```sql
+----+-----------+--------+---------+------------+----------+
| id |   texto   | entero | decimal |   fecha    | booleano |
+----+-----------+--------+---------+------------+----------+
| 1  | Ejemplo1  | 25     | 10.5    | 2022-05-15 | 0        |
| 2  | Ejemplo2  | 63     | 45.7    | 2022-06-22 | 1        |
| 3  | Ejemplo3  | 12     | 30.0    | 2022-07-10 | 0        |
| 4  | Ejemplo4  | 78     | 75.2    | 2022-08-05 | 1        |
| 5  | Ejemplo5  | 42     | 18.9    | 2022-09-12 | 0        |
| 6  | Ejemplo6  | 55     | 60.3    | 2022-10-08 | 1        |
| 7  | Ejemplo7  | 10     | 40.1    | 2022-11-17 | 0        |
| 8  | Ejemplo8  | 87     | 22.6    | 2022-12-03 | 1        |
| 9  | Ejemplo9  | 31     | 55.0    | 2023-01-20 | 0        |
| 10 | Ejemplo10 | 68     | 90.4    | 2023-02-14 | 1        |
| 11 | Ejemplo11 | 15     | 12.8    | 2023-03-22 | 0        |
| 12 | Ejemplo12 | 72     | 48.6    | 2023-04-09 | 1        |
| 13 | Ejemplo13 | 22     | 33.7    | 2023-05-01 | 0        |
| 14 | Ejemplo14 | 93     | 70.2    | 2023-06-18 | 1        |
| 15 | Ejemplo15 | 37     | 15.4    | 2023-07-05 | 0        |
| 16 | Ejemplo16 | 81     | 82.9    | 2023-08-11 | 1        |
| 17 | Ejemplo17 | 45     | 28.3    | 2023-09-27 | 0        |
| 18 | Ejemplo18 | 60     | 50.6    | 2023-10-15 | 1        |
| 19 | Ejemplo19 | 5      | 8.7     | 2023-11-22 | 0        |
| 20 | Ejemplo20 | 76     | 65.1    | 2023-12-08 | 1        |
| 21 | Ejemplo21 | 33     | 20.3    | 2024-01-14 | 0        |
| 22 | Ejemplo22 | 70     | 55.8    | 2024-02-29 | 1        |
| 23 | Ejemplo23 | 13     | 42.7    | 2024-03-18 | 0        |
| 24 | Ejemplo24 | 89     | 78.4    | 2024-04-25 | 1        |
| 25 | Ejemplo25 | 49     | 15.9    | 2024-05-12 | 0        |
| 26 | Ejemplo26 | 62     | 60.7    | 2024-06-20 | 1        |
| 27 | Ejemplo27 | 8      | 35.2    | 2024-07-07 | 0        |
| 28 | Ejemplo28 | 95     | 25.6    | 2024-08-23 | 1        |
| 29 | Ejemplo29 | 27     | 50.0    | 2024-09-10 | 0        |
| 30 | Ejemplo30 | 74     | 85.3    | 2024-10-05 | 1        |
| 31 | Ejemplo31 | 18     | 11.8    | 2024-11-12 | 0        |
| 32 | Ejemplo32 | 83     | 47.6    | 2024-12-28 | 1        |
| 33 | Ejemplo33 | 38     | 32.7    | 2025-01-15 | 0        |
| 34 | Ejemplo34 | 101    | 70.2    | 2025-02-01 | 1        |
| 35 | Ejemplo35 | 52     | 18.4    | 2025-03-20 | 0        |
| 36 | Ejemplo36 | 67     | 83.9    | 2025-04-06 | 1        |
| 37 | Ejemplo37 | 43     | 28.3    | 2025-05-13 | 0        |
| 38 | Ejemplo38 | 58     | 50.6    | 2025-06-30 | 1        |
| 39 | Ejemplo39 | 9      | 8.7     | 2025-07-17 | 0        |
| 40 | Ejemplo40 | 82     | 65.1    | 2025-08-23 | 1        |
| 41 | Ejemplo41 | 26     | 20.3    | 2025-09-09 | 0        |
| 42 | Ejemplo42 | 73     | 55.8    | 2025-10-26 | 1        |
| 43 | Ejemplo43 | 14     | 42.7    | 2025-11-13 | 0        |
| 44 | Ejemplo44 | 90     | 78.4    | 2025-12-30 | 1        |
| 45 | Ejemplo45 | 50     | 15.9    | 2026-01-16 | 0        |
| 46 | Ejemplo46 | 63     | 60.7    | 2026-02-03 | 1        |
| 47 | Ejemplo47 | 7      | 35.2    | 2026-03-22 | 0        |
| 48 | Ejemplo48 | 96     | 25.6    | 2026-04-08 | 1        |
| 49 | Ejemplo49 | 28     | 50.0    | 2026-05-25 | 0        |
| 50 | Ejemplo50 | 75     | 85.3    | 2026-06-11 | 1        |
+----+-----------+--------+---------+------------+----------+
```

2. En este caso mostramos las entradas de la tabla `Ejemplo` con el campo `entero` mayor de 50:

```sql
select entero from Ejemplo where entero > 50;
```
El resultado de salida sería el siguiente:

```sql
+--------+
| entero |
+--------+
| 63     |
| 78     |
| 55     |
| 87     |
| 68     |
| 72     |
| 93     |
| 81     |
| 60     |
| 76     |
| 70     |
| 89     |
| 62     |
| 95     |
| 74     |
| 83     |
| 101    |
| 52     |
| 67     |
| 58     |
| 82     |
| 73     |
| 90     |
| 63     |
| 96     |
| 75     |
+--------+
```


___
### Paso 4: Realizar 3 eliminaciones y modificaciones
1. Eliminamos las entradas donde el campo `booleano` es igual a `True` con el comando que se mostrará a continuación:

```sql
delete from Ejemplo where booleano = 1;
```
El resultado de salida es el siguiente:

```sql
+----+-----------+--------+---------+------------+----------+
| id |   texto   | entero | decimal |   fecha    | booleano |
+----+-----------+--------+---------+------------+----------+
| 1  | Ejemplo1  | 25     | 10.5    | 2022-05-15 | 0        |
| 3  | Ejemplo3  | 12     | 30.0    | 2022-07-10 | 0        |
| 5  | Ejemplo5  | 42     | 18.9    | 2022-09-12 | 0        |
| 7  | Ejemplo7  | 10     | 40.1    | 2022-11-17 | 0        |
| 9  | Ejemplo9  | 31     | 55.0    | 2023-01-20 | 0        |
| 11 | Ejemplo11 | 15     | 12.8    | 2023-03-22 | 0        |
| 13 | Ejemplo13 | 22     | 33.7    | 2023-05-01 | 0        |
| 15 | Ejemplo15 | 37     | 15.4    | 2023-07-05 | 0        |
| 17 | Ejemplo17 | 45     | 28.3    | 2023-09-27 | 0        |
| 19 | Ejemplo19 | 5      | 8.7     | 2023-11-22 | 0        |
| 21 | Ejemplo21 | 33     | 20.3    | 2024-01-14 | 0        |
| 23 | Ejemplo23 | 13     | 42.7    | 2024-03-18 | 0        |
| 25 | Ejemplo25 | 49     | 15.9    | 2024-05-12 | 0        |
| 27 | Ejemplo27 | 8      | 35.2    | 2024-07-07 | 0        |
| 29 | Ejemplo29 | 27     | 50.0    | 2024-09-10 | 0        |
| 31 | Ejemplo31 | 18     | 11.8    | 2024-11-12 | 0        |
| 33 | Ejemplo33 | 38     | 32.7    | 2025-01-15 | 0        |
| 35 | Ejemplo35 | 52     | 18.4    | 2025-03-20 | 0        |
| 37 | Ejemplo37 | 43     | 28.3    | 2025-05-13 | 0        |
| 39 | Ejemplo39 | 9      | 8.7     | 2025-07-17 | 0        |
| 41 | Ejemplo41 | 26     | 20.3    | 2025-09-09 | 0        |
| 43 | Ejemplo43 | 14     | 42.7    | 2025-11-13 | 0        |
| 45 | Ejemplo45 | 50     | 15.9    | 2026-01-16 | 0        |
| 47 | Ejemplo47 | 7      | 35.2    | 2026-03-22 | 0        |
| 49 | Ejemplo49 | 28     | 50.0    | 2026-05-25 | 0        |
+----+-----------+--------+---------+------------+----------+
```

2. Modificamos el campo `texto` de las entradas donde el campo `entero` es menor a 30 y establecemos el texto como *"Modificado"*:

```sql
update Ejemplo set texto = 'Modificado' where entero < 30;
```
El resultado de salida es el siguiente:

```sql
+----+------------+--------+---------+------------+----------+
| id |   texto    | entero | decimal |   fecha    | booleano |
+----+------------+--------+---------+------------+----------+
| 1  | Modificado | 25     | 10.5    | 2022-05-15 | 0        |
| 3  | Modificado | 12     | 30.0    | 2022-07-10 | 0        |
| 5  | Ejemplo5   | 42     | 18.9    | 2022-09-12 | 0        |
| 7  | Modificado | 10     | 40.1    | 2022-11-17 | 0        |
| 9  | Ejemplo9   | 31     | 55.0    | 2023-01-20 | 0        |
| 11 | Modificado | 15     | 12.8    | 2023-03-22 | 0        |
| 13 | Modificado | 22     | 33.7    | 2023-05-01 | 0        |
| 15 | Ejemplo15  | 37     | 15.4    | 2023-07-05 | 0        |
| 17 | Ejemplo17  | 45     | 28.3    | 2023-09-27 | 0        |
| 19 | Modificado | 5      | 8.7     | 2023-11-22 | 0        |
| 21 | Ejemplo21  | 33     | 20.3    | 2024-01-14 | 0        |
| 23 | Modificado | 13     | 42.7    | 2024-03-18 | 0        |
| 25 | Ejemplo25  | 49     | 15.9    | 2024-05-12 | 0        |
| 27 | Modificado | 8      | 35.2    | 2024-07-07 | 0        |
| 29 | Modificado | 27     | 50.0    | 2024-09-10 | 0        |
| 31 | Modificado | 18     | 11.8    | 2024-11-12 | 0        |
| 33 | Ejemplo33  | 38     | 32.7    | 2025-01-15 | 0        |
| 35 | Ejemplo35  | 52     | 18.4    | 2025-03-20 | 0        |
| 37 | Ejemplo37  | 43     | 28.3    | 2025-05-13 | 0        |
| 39 | Modificado | 9      | 8.7     | 2025-07-17 | 0        |
| 41 | Modificado | 26     | 20.3    | 2025-09-09 | 0        |
| 43 | Modificado | 14     | 42.7    | 2025-11-13 | 0        |
| 45 | Ejemplo45  | 50     | 15.9    | 2026-01-16 | 0        |
| 47 | Modificado | 7      | 35.2    | 2026-03-22 | 0        |
| 49 | Modificado | 28     | 50.0    | 2026-05-25 | 0        |
+----+------------+--------+---------+------------+----------+
```

3. Ahora eliminaremos las entradas donde el campo `entero` es igual a 50:

```sql
delete from Ejemplo where entero = 50;
```

El resultado es el siguiente:

```sql
+----+------------+--------+---------+------------+----------+
| id |   texto    | entero | decimal |   fecha    | booleano |
+----+------------+--------+---------+------------+----------+
| 1  | Modificado | 25     | 10.5    | 2022-05-15 | 0        |
| 3  | Modificado | 12     | 30.0    | 2022-07-10 | 0        |
| 5  | Ejemplo5   | 42     | 18.9    | 2022-09-12 | 0        |
| 7  | Modificado | 10     | 40.1    | 2022-11-17 | 0        |
| 9  | Ejemplo9   | 31     | 55.0    | 2023-01-20 | 0        |
| 11 | Modificado | 15     | 12.8    | 2023-03-22 | 0        |
| 13 | Modificado | 22     | 33.7    | 2023-05-01 | 0        |
| 15 | Ejemplo15  | 37     | 15.4    | 2023-07-05 | 0        |
| 17 | Ejemplo17  | 45     | 28.3    | 2023-09-27 | 0        |
| 19 | Modificado | 5      | 8.7     | 2023-11-22 | 0        |
| 21 | Ejemplo21  | 33     | 20.3    | 2024-01-14 | 0        |
| 23 | Modificado | 13     | 42.7    | 2024-03-18 | 0        |
| 25 | Ejemplo25  | 49     | 15.9    | 2024-05-12 | 0        |
| 27 | Modificado | 8      | 35.2    | 2024-07-07 | 0        |
| 29 | Modificado | 27     | 50.0    | 2024-09-10 | 0        |
| 31 | Modificado | 18     | 11.8    | 2024-11-12 | 0        |
| 33 | Ejemplo33  | 38     | 32.7    | 2025-01-15 | 0        |
| 35 | Ejemplo35  | 52     | 18.4    | 2025-03-20 | 0        |
| 37 | Ejemplo37  | 43     | 28.3    | 2025-05-13 | 0        |
| 39 | Modificado | 9      | 8.7     | 2025-07-17 | 0        |
| 41 | Modificado | 26     | 20.3    | 2025-09-09 | 0        |
| 43 | Modificado | 14     | 42.7    | 2025-11-13 | 0        |
| 47 | Modificado | 7      | 35.2    | 2026-03-22 | 0        |
| 49 | Modificado | 28     | 50.0    | 2026-05-25 | 0        |
+----+------------+--------+---------+------------+----------+
```

4. Lo siguiente que se va a hacer es incrementar en 10 el valor del campo `entero` para las entradas donde el campo `booleano` es igual a `False`:

```sql
update Ejemplo set entero = entero + 10 where booleano = 0
```

El resulado de salida es:

```sql
+----+------------+--------+---------+------------+----------+
| id |   texto    | entero | decimal |   fecha    | booleano |
+----+------------+--------+---------+------------+----------+
| 1  | Modificado | 35     | 10.5    | 2022-05-15 | 0        |
| 3  | Modificado | 22     | 30.0    | 2022-07-10 | 0        |
| 5  | Ejemplo5   | 52     | 18.9    | 2022-09-12 | 0        |
| 7  | Modificado | 20     | 40.1    | 2022-11-17 | 0        |
| 9  | Ejemplo9   | 41     | 55.0    | 2023-01-20 | 0        |
| 11 | Modificado | 25     | 12.8    | 2023-03-22 | 0        |
| 13 | Modificado | 32     | 33.7    | 2023-05-01 | 0        |
| 15 | Ejemplo15  | 47     | 15.4    | 2023-07-05 | 0        |
| 17 | Ejemplo17  | 55     | 28.3    | 2023-09-27 | 0        |
| 19 | Modificado | 15     | 8.7     | 2023-11-22 | 0        |
| 21 | Ejemplo21  | 43     | 20.3    | 2024-01-14 | 0        |
| 23 | Modificado | 23     | 42.7    | 2024-03-18 | 0        |
| 25 | Ejemplo25  | 59     | 15.9    | 2024-05-12 | 0        |
| 27 | Modificado | 18     | 35.2    | 2024-07-07 | 0        |
| 29 | Modificado | 37     | 50.0    | 2024-09-10 | 0        |
| 31 | Modificado | 28     | 11.8    | 2024-11-12 | 0        |
| 33 | Ejemplo33  | 48     | 32.7    | 2025-01-15 | 0        |
| 35 | Ejemplo35  | 62     | 18.4    | 2025-03-20 | 0        |
| 37 | Ejemplo37  | 53     | 28.3    | 2025-05-13 | 0        |
| 39 | Modificado | 19     | 8.7     | 2025-07-17 | 0        |
| 41 | Modificado | 36     | 20.3    | 2025-09-09 | 0        |
| 43 | Modificado | 24     | 42.7    | 2025-11-13 | 0        |
| 47 | Modificado | 17     | 35.2    | 2026-03-22 | 0        |
| 49 | Modificado | 38     | 50.0    | 2026-05-25 | 0        |
+----+------------+--------+---------+------------+----------+
```

5. Eliminamos las entradas donde el campo `decimal` es menor que 50:

```sql
delete from Ejemplo where decimal < 50;
```

El resultado de salida es:

```sql
+----+------------+--------+---------+------------+----------+
| id |   texto    | entero | decimal |   fecha    | booleano |
+----+------------+--------+---------+------------+----------+
| 9  | Ejemplo9   | 41     | 55.0    | 2023-01-20 | 0        |
| 29 | Modificado | 37     | 50.0    | 2024-09-10 | 0        |
| 49 | Modificado | 38     | 50.0    | 2026-05-25 | 0        |
+----+------------+--------+---------+------------+----------+
```

6. Por último, actualizaremos el campo `fecha` de todas las entradas a la fecha actual:

```sql
update Ejemplo set fecha = current_date;
```

El resultado es el siguiente:

```sql
+----+------------+--------+---------+------------+----------+
| id |   texto    | entero | decimal |   fecha    | booleano |
+----+------------+--------+---------+------------+----------+
| 9  | Ejemplo9   | 41     | 55.0    | 2023-12-15 | 0        |
| 29 | Modificado | 37     | 50.0    | 2023-12-15 | 0        |
| 49 | Modificado | 38     | 50.0    | 2023-12-15 | 0        |
+----+------------+--------+---------+------------+----------+
```
___
### Autor
[Eduardo Rabadán Melián](https://github.com/edumel20)
