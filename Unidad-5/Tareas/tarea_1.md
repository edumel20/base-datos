# **TAREA 1**
___
## Primeros pasos en SQL

### Paso 1: Crear una tabla con un campo de cada tipo
1. Para esta tarea, vamos a crear una tabla abriendo SQLite3 en la terminal e introduciendo lo siguiente:
```
sqlite3 tarea1.db
```
2. Una vez abierto SQLite3, añadimos los siguientes campos a la tabla *tarea1.db* mediante los siguientes comandos:
```
create table Ejemplo (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    texto TEXT NOT NULL,
    entero INTEGER NOT NULL,
    decimal REAL NOT NULL,
    fecha DATE NOT NULL,
    booleano BOOLEAN NOT NULL  
);
```

### Paso 2: Inserción de 50 entradas
Ahora vamos a realizar de las 50 entradas en nuetra tabla tarea1.db mediante los siguientes comandos de sqlite3:
```

```
