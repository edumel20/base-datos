-- Tablas Pokemon y Tipo antes de las modificaciones:

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


 -- Actualizar el nivel de Bulbasaur.

/**
+----+------------+---------+-------+
| id |   nombre   | id_tipo | nivel |
+----+------------+---------+-------+
| 1  | Bulbasaur  | 3       | 10    |
+----+------------+---------+-------+
**/
 update Pokemon set nivel = 21 where nombre = 'Bulbasaur';
/**
+----+-----------+---------+-------+
| id |  nombre   | id_tipo | nivel |
+----+-----------+---------+-------+
| 1  | Bulbasaur | 3       | 21    |
+----+-----------+---------+-------+
**/


 -- Cambiar el tipo de Pikachu a "Eléctrico/Rojo".

 /**
 +----+------------+---------+-------+
 | id |   nombre   | id_tipo | nivel |
 +----+------------+---------+-------+
 | 4  | Pikachu    | 4       | 15    |
 +----+------------+---------+-------+
 **/

 update tipo as t set nombre='Electrico/Rojo' from Pokemon as p where p.id_tipo=t.id and p.nombre='Pikachu';

/**

**/
 -- Incrementar el nivel de todos los Pokémon de tipo Agua.

 update Pokemon as p set nivel = nivel + 1 from tipo as t where t.nombre = 'Agua'; 
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

 -- Eliminar a Jynx de la lista de Pokémon.

 delete from Pokemon where nombre= 'Jynx';

 /**
 No ocurre nada debido a que 'Jynx' no estaba en la tabla 'Pokemon'.
 **/

 -- Eliminar el tipo "Hielo" de la lista de tipos de Pokémon.

delete from Tipos where nombre = 'Hielo';

/**
No ocurre nada debido a que el tipo 'Hielo' no está en la tabla 'Tipos'.
**/

 -- Obtener todos los Pokémon.

 select nombre from Pokemon;

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

 -- Obtener el nombre y nivel de los Pokémon de tipo Fuego.

select p.nombre, p.nivel from Pokemon as p, Tipo as t where t.nombre='Fuego' and t.id=p.id_tipo;

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

 -- Obtener el nombre de los Pokémon que tienen un nivel superior a 30.

 select * from Pokemon where nivel >= 30;

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
 -- Obtener el nombre de los Pokémon ordenados por nivel de forma descendente.

 select nombre, nivel from Pokemon ORDER BY nivel desc; 

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

 -- Obtener la cantidad de Pokémon por tipo.

 select t.nombre, count(id_tipo) as 'Total tipos' from Pokemon as p, tipo as t where t.id=p.id_tipo group by p.id_tipo;

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
 -- Obtener la información completa de un Pokémon específico. Selecciona el que desees.

select * from Pokemon where id = 14;

/**
+----+--------+---------+-------+
| id | nombre | id_tipo | nivel |
+----+--------+---------+-------+
| 14 | Raichu | 4       | 39    |
+----+--------+---------+-------+
**/
 -- Obtener el promedio de niveles de todos los Pokémon.
select AVG(nivel) AS nivel_media from Pokemon;

/**
+-------------+
| nivel_media |
+-------------+
| 38.96       |
+-------------+
**/

 -- Obtener el nombre del Pokémon de mayor nivel.

select nombre from Pokemon where (select MAX(nivel) from Pokemon) ORDER BY nivel desc LIMIT 1;

/**
+--------+
| nombre |
+--------+
| Rhydon |
+--------+
**/
 -- Actualizar el nombre de Bulbasaur a "Bulbasaur Nv. 15":

update Pokemon set nombre = 'Bulbasaur Nv. 15' where nombre = 'Bulbasaur';

/**
+----+------------------+---------+-------+
| id |      nombre      | id_tipo | nivel |
+----+------------------+---------+-------+
| 1  | Bulbasaur Nv. 15 | 3       | 22    |
+----+------------------+---------+-------+
**/

 -- Obtener los Pokémon cuyo nivel es igual a 50.

 select * from Pokemon where nivel = 50;

 /**
 No hay ningún pokemon con nivel 50.
 **/

 -- Eliminar todos los Pokémon de nivel 40.

delete from Pokemon where nivel = 40;

/**
No hay pokemon con nivel 40.
**/

 -- Obtener el tipo y nivel de Pikachu.

select p.nivel, t.nombre from Pokemon p JOIN Tipo t ON p.id_tipo = t.id where p.nombre = 'Pikachu';

/**
+-------+----------------+
| nivel |     nombre     |
+-------+----------------+
| 16    | Electrico/Rojo |
+-------+----------------+
**/

 -- Obtener los Pokémon de tipo Planta con nivel superior a 20:

select * from Pokemon AS p, Tipo as t where p.nivel > 20 and t.nombre = 'Planta' and p.id_tipo = t.id;

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

 -- Actualizar el tipo de Pikachu a "Eléctrico/Azul":
 
update tipo as t set nombre='Electrico/Azul' from Pokemon as p where p.id_tipo=t.id and p.nombre='Pikachu';

/**
+-------+----------------+
| nivel |     nombre     |
+-------+----------------+
| 16    | Electrico/Azul |
+-------+----------------+
**/
 -- Eliminar todos los Pokémon de tipo Planta.

delete from Pokemon where id_tipo IN (select id from Tipo where nombre = 'Planta');

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

 -- Obtener los Pokémon con nombre y tipo ordenados alfabéticamente.

select p.nombre, t.nombre from Pokemon p JOIN Tipo t ON p.id_tipo = t.id ORDER BY p.nombre;

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

 -- Obtén todos los Pokémon cuyos nombres contienen las letras 'sa'.

select * from Pokemon where nombre LIKE '%sa%';

/**
+----+-----------+---------+-------+
| id |  nombre   | id_tipo | nivel |
+----+-----------+---------+-------+
| 15 | Sandslash | 5       | 34    |
+----+-----------+---------+-------+
**/
 -- Encuentra todos los Pokémon cuyo nivel es 40, 50 o 60.

select * from Pokemon where nivel IN (40, 50, 60);

 -- Obtén todos los Pokémon de tipo Fuego cuyos nombres comienzan con la letra 'C'.

select * from Pokemon p JOIN Tipo t ON p.id_tipo = t.id where p.nombre LIKE 'C%' and t.nombre = 'Fuego';

/**
+----+------------+---------+-------+----+--------+
| id |   nombre   | id_tipo | nivel | id | nombre |
+----+------------+---------+-------+----+--------+
| 2  | Charmander | 2       | 13    | 2  | Fuego  |
| 17 | Charizard  | 2       | 51    | 2  | Fuego  |
+----+------------+---------+-------+----+--------+
**/

 -- Encuentra los nombres y tipos de los Pokémon cuyo nivel es mayor que el promedio de todos los Pokémon en la base de datos.

select p.nombre, t.nombre from Pokemon p JOIN Tipo t ON p.id_tipo = t.id where p.nivel > (select AVG(nivel) from Pokemon);

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


-- Tablas Pokemon y Tipo después de las modificaciones:

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
