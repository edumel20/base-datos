
<div align="center">
<img src="https://e7.pngegg.com/pngimages/778/255/png-clipart-sqlite-database-android-mysql-android-text-logo-thumbnail.png" width="200px"/>
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

```

2. En este caso mostramos las entradas de la tabla `Ejemplo` con el campo `entero` mayor de 50:

```sql
select entero from Ejemplo where entero > 50
```
El resultado de salida sería el siguiente:

```sql

```
___

### Paso 4: Realizar 3 eliminaciones y modificaciones
1. Eliminamos las entradas donde el campo `booleano` es igual a `True` con el comando que se mostrará a continuación:

```sql
delete from Ejemplo where booleano='True';
```
El resultado de salida es el siguiente:

```sql
```

2. Modificamos el campo `texto` de las entradas donde el campo `entero` es menor a 30 y establecemos el texto como *"Modificado"*:

```sql

```
El resultado de salida es el siguiente:

```sql

```