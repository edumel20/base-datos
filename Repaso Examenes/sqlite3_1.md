## -- Tablas Pokemon y Tipo antes de las modificaciones:
```sql
/**
+----+------------+---------+-------+
| id |   nombre   | id_tipo | nivel |
+----+------------+---------+-------+
| 1  | Bulbasaur  | 3       | 10    |
| 2  | Charmander | 2       | 12    |
| 3  | Squirtle   | 1       | 8     |
| 4  | Pikachu    | 4       | 15    |
| 5  | Geodude    | 5       | 11    |
| 6  | Vaporeon   | 1       | 25    |
| 7  | Flareon    | 2       | 27    |
| 8  | Ivysaur    | 3       | 18    |
| 9  | Jolteon    | 4       | 22    |
| 10 | Cubone     | 5       | 14    |
| 11 | Gyarados   | 1       | 30    |
| 12 | Arcanine   | 2       | 35    |
| 13 | Exeggutor  | 3       | 40    |
| 14 | Raichu     | 4       | 38    |
| 15 | Sandslash  | 5       | 33    |
| 16 | Venusaur   | 3       | 45    |
| 17 | Charizard  | 2       | 50    |
| 18 | Blastoise  | 1       | 55    |
| 19 | Electabuzz | 4       | 48    |
| 20 | Rhydon     | 5       | 52    |
| 21 | Dragonite  | 2       | 60    |
| 22 | Flareon    | 2       | 65    |
| 23 | Venusaur   | 3       | 70    |
| 24 | Zapdos     | 4       | 75    |
| 25 | Rhydon     | 5       | 80    |
+----+------------+---------+-------+
**/
```
```sql
/**
+----+-----------+
| id |  nombre   |
+----+-----------+
| 1  | Agua      |
| 2  | Fuego     |
| 3  | Planta    |
| 4  | Eléctrico |
| 5  | Tierra    |
+----+-----------+
**/
```

 1. -- Actualizar el nivel de Bulbasaur.
```sql
/**
+----+------------+---------+-------+
| id |   nombre   | id_tipo | nivel |
+----+------------+---------+-------+
| 1  | Bulbasaur  | 3       | 10    |
+----+------------+---------+-------+
**/
```
```sql
 update Pokemon set nivel = 21 where nombre = 'Bulbasaur';
```
```sql
/**
+----+-----------+---------+-------+
| id |  nombre   | id_tipo | nivel |
+----+-----------+---------+-------+
| 1  | Bulbasaur | 3       | 21    |
+----+-----------+---------+-------+
**/
```

 2. -- Cambiar el tipo de Pikachu a "Eléctrico/Rojo".
```sql
 /**
 +----+------------+---------+-------+
 | id |   nombre   | id_tipo | nivel |
 +----+------------+---------+-------+
 | 4  | Pikachu    | 4       | 15    |
 +----+------------+---------+-------+
 **/
```
```sql
 update tipo as t set nombre='Electrico/Rojo' from Pokemon as p where p.id_tipo=t.id and p.nombre='Pikachu';
```
```sql
/**

**/
```
 3. -- Incrementar el nivel de todos los Pokémon de tipo Agua.
```sql
 update Pokemon as p set nivel = nivel + 1 from tipo as t where t.nombre = 'Agua';
```
```sql 
/**
 select p.* from Pokemon as p, tipo as t where p.id_tipo=t.id and t.nombre='Agua';

 +----+-----------+---------+-------+
| id |  nombre   | id_tipo | nivel |
+----+-----------+---------+-------+
| 3  | Squirtle  | 1       | 9     |
| 6  | Vaporeon  | 1       | 26    |
| 11 | Gyarados  | 1       | 31    |
| 18 | Blastoise | 1       | 56    |
+----+-----------+---------+-------+
**/
```
 4. -- Eliminar a Jynx de la lista de Pokémon.
```sql
 delete from Pokemon where nombre= 'Jynx';
```
```sql
 /**
 No ocurre nada debido a que 'Jynx' no estaba en la tabla 'Pokemon'.
 **/
```
 5. -- Eliminar el tipo "Hielo" de la lista de tipos de Pokémon.
```sql
delete from Tipos where nombre = 'Hielo';
```
```sql
/**
No ocurre nada debido a que el tipo 'Hielo' no está en la tabla 'Tipos'.
**/
```
 6. -- Obtener todos los Pokémon.
```sql
 select nombre from Pokemon;
```
```sql
 /**
+------------+
|   nombre   |
+------------+
| Bulbasaur  |
| Charmander |
| Squirtle   |
| Pikachu    |
| Geodude    |
| Vaporeon   |
| Flareon    |
| Ivysaur    |
| Jolteon    |
| Cubone     |
| Gyarados   |
| Arcanine   |
| Exeggutor  |
| Raichu     |
| Sandslash  |
| Venusaur   |
| Charizard  |
| Blastoise  |
| Electabuzz |
| Rhydon     |
| Dragonite  |
| Flareon    |
| Venusaur   |
| Zapdos     |
| Rhydon     |
+------------+
 **/
```
 7. -- Obtener el nombre y nivel de los Pokémon de tipo Fuego.
```sql
select p.nombre, p.nivel from Pokemon as p, Tipo as t where t.nombre='Fuego' and t.id=p.id_tipo;
```
```sql
/**
+------------+-------+
|   nombre   | nivel |
+------------+-------+
| Charmander | 13    |
| Flareon    | 28    |
| Arcanine   | 36    |
| Charizard  | 51    |
| Dragonite  | 61    |
| Flareon    | 66    |
+------------+-------+
**/
```

 8. -- Obtener el nombre de los Pokémon que tienen un nivel superior a 30.
```sql
 select * from Pokemon where nivel >= 30;
```
```sql
/**
+----+------------+---------+-------+
| id |   nombre   | id_tipo | nivel |
+----+------------+---------+-------+
| 11 | Gyarados   | 1       | 31    |
| 12 | Arcanine   | 2       | 36    |
| 13 | Exeggutor  | 3       | 41    |
| 14 | Raichu     | 4       | 39    |
| 15 | Sandslash  | 5       | 34    |
| 16 | Venusaur   | 3       | 46    |
| 17 | Charizard  | 2       | 51    |
| 18 | Blastoise  | 1       | 56    |
| 19 | Electabuzz | 4       | 49    |
| 20 | Rhydon     | 5       | 53    |
| 21 | Dragonite  | 2       | 61    |
| 22 | Flareon    | 2       | 66    |
| 23 | Venusaur   | 3       | 71    |
| 24 | Zapdos     | 4       | 76    |
| 25 | Rhydon     | 5       | 81    |
+----+------------+---------+-------+
**/
```
 9. -- Obtener el nombre de los Pokémon ordenados por nivel de forma descendente.
```sql
 select nombre, nivel from Pokemon ORDER BY nivel desc; 
```
```sql
 /**
 +------------+-------+
|   nombre   | nivel |
+------------+-------+
| Rhydon     | 81    |
| Zapdos     | 76    |
| Venusaur   | 71    |
| Flareon    | 66    |
| Dragonite  | 61    |
| Blastoise  | 56    |
| Rhydon     | 53    |
| Charizard  | 51    |
| Electabuzz | 49    |
| Venusaur   | 46    |
| Exeggutor  | 41    |
| Raichu     | 39    |
| Arcanine   | 36    |
| Sandslash  | 34    |
| Gyarados   | 31    |
| Flareon    | 28    |
| Vaporeon   | 26    |
| Jolteon    | 23    |
| Bulbasaur  | 22    |
| Ivysaur    | 19    |
| Pikachu    | 16    |
| Cubone     | 15    |
| Charmander | 13    |
| Geodude    | 12    |
| Squirtle   | 9     |
+------------+-------+
 **/
```
 10. -- Obtener la cantidad de Pokémon por tipo.
```sql
 select t.nombre, count(id_tipo) as 'Total tipos' from Pokemon as p, tipo as t where t.id=p.id_tipo group by p.id_tipo;
```
```sql
/**
+-----------+-------------+
|  nombre   | total_tipos |
+-----------+-------------+
| Agua      | 4           |
| Fuego     | 6           |
| Planta    | 5           |
| Eléctrico | 5           |
| Tierra    | 5           |
+-----------+-------------+
**/
```
 11. -- Obtener la información completa de un Pokémon específico. Selecciona el que desees.
```sql
select * from Pokemon where id = 14;
```
```sql
/**
+----+--------+---------+-------+
| id | nombre | id_tipo | nivel |
+----+--------+---------+-------+
| 14 | Raichu | 4       | 39    |
+----+--------+---------+-------+
**/
```
 12. -- Obtener el promedio de niveles de todos los Pokémon.
```sql
select AVG(nivel) AS nivel_media from Pokemon;
```
```sql
/**
+-------------+
| nivel_media |
+-------------+
| 38.96       |
+-------------+
**/
```
 13. -- Obtener el nombre del Pokémon de mayor nivel.
```sql
select nombre from Pokemon where (select MAX(nivel) from Pokemon) ORDER BY nivel desc LIMIT 1;
```
```sql
/**
+--------+
| nombre |
+--------+
| Rhydon |
+--------+
**/
```
 14. -- Actualizar el nombre de Bulbasaur a "Bulbasaur Nv. 15":
```sql
update Pokemon set nombre = 'Bulbasaur Nv. 15' where nombre = 'Bulbasaur';
```
```sql
/**
+----+------------------+---------+-------+
| id |      nombre      | id_tipo | nivel |
+----+------------------+---------+-------+
| 1  | Bulbasaur Nv. 15 | 3       | 22    |
+----+------------------+---------+-------+
**/
```
 15. -- Obtener los Pokémon cuyo nivel es igual a 50.
```sql
 select * from Pokemon where nivel = 50;
```
```sql
 /**
 No hay ningún pokemon con nivel 50.
 **/
```
 16. -- Eliminar todos los Pokémon de nivel 40.
```sql
delete from Pokemon where nivel = 40;
```
```sql
/**
No hay pokemon con nivel 40.
**/
```
 17. -- Obtener el tipo y nivel de Pikachu.
```sql
select p.nivel, t.nombre from Pokemon p JOIN Tipo t ON p.id_tipo = t.id where p.nombre = 'Pikachu';
```
```sql
/**
+-------+----------------+
| nivel |     nombre     |
+-------+----------------+
| 16    | Electrico/Rojo |
+-------+----------------+
**/
```
 18. -- Obtener los Pokémon de tipo Planta con nivel superior a 20:
```sql
select * from Pokemon AS p, Tipo as t where p.nivel > 20 and t.nombre = 'Planta' and p.id_tipo = t.id;
```
```sql
/**
+----+------------------+---------+-------+----+--------+
| id |      nombre      | id_tipo | nivel | id | nombre |
+----+------------------+---------+-------+----+--------+
| 1  | Bulbasaur Nv. 15 | 3       | 22    | 3  | Planta |
| 13 | Exeggutor        | 3       | 41    | 3  | Planta |
| 16 | Venusaur         | 3       | 46    | 3  | Planta |
| 23 | Venusaur         | 3       | 71    | 3  | Planta |
+----+------------------+---------+-------+----+--------+
**/
```
 19. -- Actualizar el tipo de Pikachu a "Eléctrico/Azul":
 ```sql
 update tipo as t set nombre='Electrico/Azul' from Pokemon as p where p.id_tipo=t.id and p.nombre='Pikachu';
 ```
```sql
/**
+-------+----------------+
| nivel |     nombre     |
+-------+----------------+
| 16    | Electrico/Azul |
+-------+----------------+
**/
```
 20. -- Eliminar todos los Pokémon de tipo Planta.
```sql
delete from Pokemon where id_tipo IN (select id from Tipo where nombre = 'Planta');
```
```sql
/**
+----+------------+---------+-------+
| id |   nombre   | id_tipo | nivel |
+----+------------+---------+-------+
| 2  | Charmander | 2       | 13    |
| 3  | Squirtle   | 1       | 9     |
| 4  | Pikachu    | 4       | 16    |
| 5  | Geodude    | 5       | 12    |
| 6  | Vaporeon   | 1       | 26    |
| 7  | Flareon    | 2       | 28    |
| 9  | Jolteon    | 4       | 23    |
| 10 | Cubone     | 5       | 15    |
| 11 | Gyarados   | 1       | 31    |
| 12 | Arcanine   | 2       | 36    |
| 14 | Raichu     | 4       | 39    |
| 15 | Sandslash  | 5       | 34    |
| 17 | Charizard  | 2       | 51    |
| 18 | Blastoise  | 1       | 56    |
| 19 | Electabuzz | 4       | 49    |
| 20 | Rhydon     | 5       | 53    |
| 21 | Dragonite  | 2       | 61    |
| 22 | Flareon    | 2       | 66    |
| 24 | Zapdos     | 4       | 76    |
| 25 | Rhydon     | 5       | 81    |
+----+------------+---------+-------+
**/
```
 21. -- Obtener los Pokémon con nombre y tipo ordenados alfabéticamente.
```sql
select p.nombre, t.nombre from Pokemon p JOIN Tipo t ON p.id_tipo = t.id ORDER BY p.nombre;
```
```sql
/**
+------------+----------------+
|   nombre   |     nombre     |
+------------+----------------+
| Arcanine   | Fuego          |
| Blastoise  | Agua           |
| Charizard  | Fuego          |
| Charmander | Fuego          |
| Cubone     | Tierra         |
| Dragonite  | Fuego          |
| Electabuzz | Electrico/Azul |
| Flareon    | Fuego          |
| Flareon    | Fuego          |
| Geodude    | Tierra         |
| Gyarados   | Agua           |
| Jolteon    | Electrico/Azul |
| Pikachu    | Electrico/Azul |
| Raichu     | Electrico/Azul |
| Rhydon     | Tierra         |
| Rhydon     | Tierra         |
| Sandslash  | Tierra         |
| Squirtle   | Agua           |
| Vaporeon   | Agua           |
| Zapdos     | Electrico/Azul |
+------------+----------------+
**/
```
 22. -- Obtén todos los Pokémon cuyos nombres contienen las letras 'sa'.
```sql
select * from Pokemon where nombre LIKE '%sa%';
```
```sql
/**
+----+-----------+---------+-------+
| id |  nombre   | id_tipo | nivel |
+----+-----------+---------+-------+
| 15 | Sandslash | 5       | 34    |
+----+-----------+---------+-------+
**/
```
 23. -- Encuentra todos los Pokémon cuyo nivel es 40, 50 o 60.
```sql
select * from Pokemon where nivel IN (40, 50, 60);
```
 24. -- Obtén todos los Pokémon de tipo Fuego cuyos nombres comienzan con la letra 'C'.
```sql
select * from Pokemon p JOIN Tipo t ON p.id_tipo = t.id where p.nombre LIKE 'C%' and t.nombre = 'Fuego';
```
```sql
/**
+----+------------+---------+-------+----+--------+
| id |   nombre   | id_tipo | nivel | id | nombre |
+----+------------+---------+-------+----+--------+
| 2  | Charmander | 2       | 13    | 2  | Fuego  |
| 17 | Charizard  | 2       | 51    | 2  | Fuego  |
+----+------------+---------+-------+----+--------+
**/
```
 25. -- Encuentra los nombres y tipos de los Pokémon cuyo nivel es mayor que el promedio de todos los Pokémon en la base de datos.
```sql
select p.nombre, t.nombre from Pokemon p JOIN Tipo t ON p.id_tipo = t.id where p.nivel > (select AVG(nivel) from Pokemon);
```
```sql
/**
+------------+----------------+
|   nombre   |     nombre     |
+------------+----------------+
| Raichu     | Electrico/Azul |
| Charizard  | Fuego          |
| Blastoise  | Agua           |
| Electabuzz | Electrico/Azul |
| Rhydon     | Tierra         |
| Dragonite  | Fuego          |
| Flareon    | Fuego          |
| Zapdos     | Electrico/Azul |
| Rhydon     | Tierra         |
+------------+----------------+
**/
```

## -- Tablas Pokemon y Tipo después de las modificaciones:

/**
+----+------------+---------+-------+
| id |   nombre   | id_tipo | nivel |
+----+------------+---------+-------+
| 2  | Charmander | 2       | 13    |
| 3  | Squirtle   | 1       | 9     |
| 4  | Pikachu    | 4       | 16    |
| 5  | Geodude    | 5       | 12    |
| 6  | Vaporeon   | 1       | 26    |
| 7  | Flareon    | 2       | 28    |
| 9  | Jolteon    | 4       | 23    |
| 10 | Cubone     | 5       | 15    |
| 11 | Gyarados   | 1       | 31    |
| 12 | Arcanine   | 2       | 36    |
| 14 | Raichu     | 4       | 39    |
| 15 | Sandslash  | 5       | 34    |
| 17 | Charizard  | 2       | 51    |
| 18 | Blastoise  | 1       | 56    |
| 19 | Electabuzz | 4       | 49    |
| 20 | Rhydon     | 5       | 53    |
| 21 | Dragonite  | 2       | 61    |
| 22 | Flareon    | 2       | 66    |
| 24 | Zapdos     | 4       | 76    |
| 25 | Rhydon     | 5       | 81    |
+----+------------+---------+-------+
**/

/**
+----+----------------+
| id |     nombre     |
+----+----------------+
| 1  | Agua           |
| 2  | Fuego          |
| 3  | Planta         |
| 4  | Electrico/Azul |
| 5  | Tierra         |
+----+----------------+
**/
