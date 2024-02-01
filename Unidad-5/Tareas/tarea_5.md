# TAREA 5 SQL 
- Selección de libros cuyo título comienza con "H".
```sql
select * from libro WHERE titulo REGEXP '^H';
```
- Sale una consulta vacía debido a que no hay ningún libro cuyo título empiece con la letra 'H'.

- Libros escritos por autores cuyos nombres terminan con "ing".
```sql
select l.titulo, a.nombre from libro l JOIN autor a ON l.id_autor = a.id where a.nombre LIKE '%ing';
```
- Libros con títulos que contienen la palabra "and" en cualquier posición.

-- Libros cuyo título comienza con una vocal.
```sql
select * from libor WHERE titulo REGEXP '[aeiouAEIOU]';
```
```sql
+--------+----------------------------------+----------+-----------------------+--------+
| codigo |              titulo              | autor_id |       editorial       | precio |
+--------+----------------------------------+----------+-----------------------+--------+
| 4      | One Hundred Years of Solitude    | 9        | Harper & Row          | 22.5   |
| 20     | Alice's Adventures in Wonderland | 22       | Macmillan             | 11.5   |
| 24     | Anna Karenina                    | 26       | The Russian Messenger | 23.99  |
+--------+----------------------------------+----------+-----------------------+--------+
```
-- Libros cuyo autor tiene al menos una vocal repetida.
```sql
select * from libro WHERE titulo REGEXP '[aeiouAEIOU].*[aeiouAEIOU]'; -- CORREGIR
```
-- Libros con precios que tienen dos dígitos decimales exactos.
```sql
select * from libro WHERE precio REGEXP '\.[0-9]{2}$';
```
```sql
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| codigo |              titulo               | autor_id |                  editorial                  | precio |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| 1      | The Great Gatsby                  | 6        | Charles Scribner's Sons                     | 20.99  |
| 2      | To Kill a Mockingbird             | 7        | J.B. Lippincott & Co.                       | 15.95  |
| 3      | The Catcher in the Rye            | 8        | Little, Brown and Company                   | 18.75  |
| 5      | Brave New World                   | 3        | Chatto & Windus                             | 17.99  |
| 6      | The Hobbit                        | 10       | George Allen & Unwin                        | 24.99  |
| 8      | The Chronicles of Narnia          | 11       | Geoffrey Bles                               | 28.99  |
| 9      | The Odyssey                       | 12       | Homer                                       | 14.95  |
| 10     | The Iliad                         | 12       | Homer                                       | 14.95  |
| 11     | Moby-Dick                         | 13       | Harper & Brothers                           | 19.99  |
| 12     | The Road                          | 14       | Alfred A. Knopf                             | 16.75  |
| 14     | Wuthering Heights                 | 16       | Emily Brontë                                | 12.99  |
| 15     | The Old Man and the Sea           | 17       | Charles Scribner's Sons                     | 18.95  |
| 16     | The Count of Monte Cristo         | 18       | Pétion                                      | 27.99  |
| 18     | The Adventures of Sherlock Holmes | 20       | George Newnes                               | 16.99  |
| 19     | Frankenstein                      | 21       | Lackington, Hughes, Harding, Mavor, & Jones | 13.25  |
| 21     | The Prince                        | 23       | Niccolò Machiavelli                         | 10.99  |
| 22     | Don Quixote                       | 24       | Francisco de Robles                         | 26.75  |
| 24     | Anna Karenina                     | 26       | The Russian Messenger                       | 23.99  |
| 25     | Les Misérables                    | 27       | A. Lacroix, Verboeckhoven & Cie.            | 29.75  |
| 26     | The Jungle Book                   | 28       | Macmillan Publishers                        | 14.99  |
| 28     | War and Peace                     | 26       | The Russian Messenger                       | 33.25  |
| 29     | Crime and Punishment              | 30       | The Russian Messenger                       | 19.99  |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
```
-- Libros cuyos títulos tienen al menos tres palabras.
```sql
select * from libro where titulo regexp '\\b\\w+\\b\\s\\b\\w+\\b\\s\\b\\w+\\b';
```
```sql
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| codigo |              titulo               | autor_id |                  editorial                  | precio |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| 1      | The Great Gatsby                  | 6        | Charles Scribner's Sons                     | 20.99  |
| 2      | To Kill a Mockingbird             | 7        | J.B. Lippincott & Co.                       | 15.95  |
| 3      | The Catcher in the Rye            | 8        | Little, Brown and Company                   | 18.75  |
| 4      | One Hundred Years of Solitude     | 9        | Harper & Row                                | 22.5   |
| 5      | Brave New World                   | 3        | Chatto & Windus                             | 17.99  |
| 6      | The Hobbit                        | 10       | George Allen & Unwin                        | 24.99  |
| 7      | The Lord of the Rings             | 10       | George Allen & Unwin                        | 35.5   |
| 8      | The Chronicles of Narnia          | 11       | Geoffrey Bles                               | 28.99  |
| 9      | The Odyssey                       | 12       | Homer                                       | 14.95  |
| 10     | The Iliad                         | 12       | Homer                                       | 14.95  |
| 11     | Moby-Dick                         | 13       | Harper & Brothers                           | 19.99  |
| 12     | The Road                          | 14       | Alfred A. Knopf                             | 16.75  |
| 13     | The Grapes of Wrath               | 15       | The Viking Press                            | 21.5   |
| 14     | Wuthering Heights                 | 16       | Emily Brontë                                | 12.99  |
| 15     | The Old Man and the Sea           | 17       | Charles Scribner's Sons                     | 18.95  |
| 16     | The Count of Monte Cristo         | 18       | Pétion                                      | 27.99  |
| 17     | The Picture of Dorian Gray        | 19       | Ward, Lock, and Company                     | 14.5   |
| 18     | The Adventures of Sherlock Holmes | 20       | George Newnes                               | 16.99  |
| 19     | Frankenstein                      | 21       | Lackington, Hughes, Harding, Mavor, & Jones | 13.25  |
| 20     | Alice's Adventures in Wonderland  | 22       | Macmillan                                   | 11.5   |
| 21     | The Prince                        | 23       | Niccolò Machiavelli                         | 10.99  |
| 22     | Don Quixote                       | 24       | Francisco de Robles                         | 26.75  |
| 23     | The Divine Comedy                 | 25       | Dante Alighieri                             | 20.5   |
| 24     | Anna Karenina                     | 26       | The Russian Messenger                       | 23.99  |
| 25     | Les Misérables                    | 27       | A. Lacroix, Verboeckhoven & Cie.            | 29.75  |
| 26     | The Jungle Book                   | 28       | Macmillan Publishers                        | 14.99  |
| 27     | The Wind in the Willows           | 29       | Methuen & Co.                               | 17.5   |
| 28     | War and Peace                     | 26       | The Russian Messenger                       | 33.25  |
| 29     | Crime and Punishment              | 30       | The Russian Messenger                       | 19.99  |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
```
-- Obtener todos los autores cuyo nombre empieza con la letra "A":
```sql
select * from autor WHERE nombre regexp '^A';
```
´´´sql
+----+-----------------+
| id |     nombre      |
+----+-----------------+
| 5  | Agatha Christie |
+----+-----------------+
```
-- Seleccionar los libros cuyo título contiene la palabra "SQL":
```sql
select * from libro WHERE titulo regexp 'SQL';
```
--Sale un resultado vacío debido a que no hay ningún titulo que contenga la palabra "SQL".

-- Obtener todos los autores cuyo nombre termina con "ez":
```sql
select * from autor WHERE nombre regexp 'ez$';
```
--Sale un resultado vacío debido a que no hay nombres de autores cuyo nombre terminen con "ez".

-- Obtener todos los autores cuyo nombre tiene al menos 5 caracteres:
```sql
select * from autor WHERE LENGTH(nombre) >= 5;

/**
+----+-----------------+
| id |     nombre      |
+----+-----------------+
| 1  | J.K. Rowling    |
| 2  | Stephen King    |
| 3  | George Orwell   |
| 4  | Jane Austen     |
| 5  | Agatha Christie |
+----+-----------------+
**/
-- Seleccionar los libros cuya editorial es diferente de "EditorialX":
select * from libro WHERE editorial NOT regexp '\\EditorialX\\b';

/**
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| codigo |              titulo               | autor_id |                  editorial                  | precio |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| 1      | The Great Gatsby                  | 6        | Charles Scribner's Sons                     | 20.99  |
| 2      | To Kill a Mockingbird             | 7        | J.B. Lippincott & Co.                       | 15.95  |
| 3      | The Catcher in the Rye            | 8        | Little, Brown and Company                   | 18.75  |
| 4      | One Hundred Years of Solitude     | 9        | Harper & Row                                | 22.5   |
| 5      | Brave New World                   | 3        | Chatto & Windus                             | 17.99  |
| 6      | The Hobbit                        | 10       | George Allen & Unwin                        | 24.99  |
| 7      | The Lord of the Rings             | 10       | George Allen & Unwin                        | 35.5   |
| 8      | The Chronicles of Narnia          | 11       | Geoffrey Bles                               | 28.99  |
| 9      | The Odyssey                       | 12       | Homer                                       | 14.95  |
| 10     | The Iliad                         | 12       | Homer                                       | 14.95  |
| 11     | Moby-Dick                         | 13       | Harper & Brothers                           | 19.99  |
| 12     | The Road                          | 14       | Alfred A. Knopf                             | 16.75  |
| 13     | The Grapes of Wrath               | 15       | The Viking Press                            | 21.5   |
| 14     | Wuthering Heights                 | 16       | Emily Brontë                                | 12.99  |
| 15     | The Old Man and the Sea           | 17       | Charles Scribner's Sons                     | 18.95  |
| 16     | The Count of Monte Cristo         | 18       | Pétion                                      | 27.99  |
| 17     | The Picture of Dorian Gray        | 19       | Ward, Lock, and Company                     | 14.5   |
| 18     | The Adventures of Sherlock Holmes | 20       | George Newnes                               | 16.99  |
| 19     | Frankenstein                      | 21       | Lackington, Hughes, Harding, Mavor, & Jones | 13.25  |
| 20     | Alice's Adventures in Wonderland  | 22       | Macmillan                                   | 11.5   |
| 21     | The Prince                        | 23       | Niccolò Machiavelli                         | 10.99  |
| 22     | Don Quixote                       | 24       | Francisco de Robles                         | 26.75  |
| 23     | The Divine Comedy                 | 25       | Dante Alighieri                             | 20.5   |
| 24     | Anna Karenina                     | 26       | The Russian Messenger                       | 23.99  |
| 25     | Les Misérables                    | 27       | A. Lacroix, Verboeckhoven & Cie.            | 29.75  |
| 26     | The Jungle Book                   | 28       | Macmillan Publishers                        | 14.99  |
| 27     | The Wind in the Willows           | 29       | Methuen & Co.                               | 17.5   |
| 28     | War and Peace                     | 26       | The Russian Messenger                       | 33.25  |
| 29     | Crime and Punishment              | 30       | The Russian Messenger                       | 19.99  |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
**/

-- Obtener todos los autores cuyo nombre contiene al menos una vocal:
select * from autor WHERE nombre regexp '[aeiouAEIOU]';

/**
+----+-----------------+
| id |     nombre      |
+----+-----------------+
| 1  | J.K. Rowling    |
| 2  | Stephen King    |
| 3  | George Orwell   |
| 4  | Jane Austen     |
| 5  | Agatha Christie |
+----+-----------------+
**/

-- Seleccionar los libros cuyo título comienza con una letra mayúscula:
select * from libro WHERE titulo regexp '^[A-Z]';

/**
+--------+-----------------------------------+
| codigo |              titulo               |
+--------+-----------------------------------+
| 1      | The Great Gatsby                  |
| 2      | To Kill a Mockingbird             |
| 3      | The Catcher in the Rye            |
| 4      | One Hundred Years of Solitude     |
| 5      | Brave New World                   |
| 6      | The Hobbit                        |
| 7      | The Lord of the Rings             |
| 8      | The Chronicles of Narnia          |
| 9      | The Odyssey                       |
| 10     | The Iliad                         |
| 11     | Moby-Dick                         |
| 12     | The Road                          |
| 13     | The Grapes of Wrath               |
| 14     | Wuthering Heights                 |
| 15     | The Old Man and the Sea           |
| 16     | The Count of Monte Cristo         |
| 17     | The Picture of Dorian Gray        |
| 18     | The Adventures of Sherlock Holmes |
| 19     | Frankenstein                      |
| 20     | Alice's Adventures in Wonderland  |
| 21     | The Prince                        |
| 22     | Don Quixote                       |
| 23     | The Divine Comedy                 |
| 24     | Anna Karenina                     |
| 25     | Les Misérables                    |
| 26     | The Jungle Book                   |
| 27     | The Wind in the Willows           |
| 28     | War and Peace                     |
| 29     | Crime and Punishment              |
+--------+-----------------------------------+
**/
-- Obtener todos los autores cuyo nombre no contiene la letra "r":
select * from autor WHERE nombre NOT regexp '\\r\\w'; 
-- Seleccionar los libros cuya editorial empieza con la letra "P":
select codigo, nombre from libro WHERE editorial regexp '^P';

/**
+--------+-----------+---------------------------+
| codigo | editorial |          titulo           |
+--------+-----------+---------------------------+
| 16     | Pétion    | The Count of Monte Cristo |
+--------+-----------+---------------------------+
**/
-- Obtener todos los autores cuyo nombre tiene exactamente 6 caracteres:
select * from autor where nombre regexp '^.{6}$';
--Sale un resultado vacío debido a que no hay ningún nombre que contenga exactamente 6 caracteres.

-- Seleccionar los libros cuyo título contiene al menos un número:
select * from libro WHERE titulo regexp '\\d';
----Sale un resultado vacío debido a que no hay ningún título que contenga al menos un número.

-- Obtener todos los autores cuyo nombre inicial con una vocal:
select * from autor WHERE nombre regexp '^[aeiouAEIOU]';

/**
+----+-----------------+
| id |     nombre      |
+----+-----------------+
| 5  | Agatha Christie |
+----+-----------------+
**/
-- Obtener todos los autores cuyo nombre no contiene espacios en blanco:


-- Seleccionar los libros cuyo título termina con una vocal:
select codigo, titulo from libro WHERE titulo regexp '[aeiouAEIOU]$';

/**
+--------+-------------------------------+
| codigo |            titulo             |
+--------+-------------------------------+
| 3      | The Catcher in the Rye        |
| 4      | One Hundred Years of Solitude |
| 8      | The Chronicles of Narnia      |
| 15     | The Old Man and the Sea       |
| 16     | The Count of Monte Cristo     |
| 21     | The Prince                    |
| 22     | Don Quixote                   |
| 24     | Anna Karenina                 |
| 28     | War and Peace                 |
+--------+-------------------------------+
**/
-- Obtener todos los autores cuyo nombre contiene la secuencia "er":
select * from autor WHERE nombre regexp 'er';
----Sale un resultado vacío debido a que no hay ningún nombre que contenga la secuencia "er".


-- Seleccionar los libros cuyo título empieza con la palabra "The":
select * from libro WHERE titulo regexp '^[The]';

/**
+--------+-----------------------------------+----------+---------------------------+--------+
| codigo |              titulo               | autor_id |         editorial         | precio |
+--------+-----------------------------------+----------+---------------------------+--------+
| 1      | The Great Gatsby                  | 6        | Charles Scribner's Sons   | 20.99  |
| 2      | To Kill a Mockingbird             | 7        | J.B. Lippincott & Co.     | 15.95  |
| 3      | The Catcher in the Rye            | 8        | Little, Brown and Company | 18.75  |
| 6      | The Hobbit                        | 10       | George Allen & Unwin      | 24.99  |
| 7      | The Lord of the Rings             | 10       | George Allen & Unwin      | 35.5   |
| 8      | The Chronicles of Narnia          | 11       | Geoffrey Bles             | 28.99  |
| 9      | The Odyssey                       | 12       | Homer                     | 14.95  |
| 10     | The Iliad                         | 12       | Homer                     | 14.95  |
| 12     | The Road                          | 14       | Alfred A. Knopf           | 16.75  |
| 13     | The Grapes of Wrath               | 15       | The Viking Press          | 21.5   |
| 15     | The Old Man and the Sea           | 17       | Charles Scribner's Sons   | 18.95  |
| 16     | The Count of Monte Cristo         | 18       | Pétion                    | 27.99  |
| 17     | The Picture of Dorian Gray        | 19       | Ward, Lock, and Company   | 14.5   |
| 18     | The Adventures of Sherlock Holmes | 20       | George Newnes             | 16.99  |
| 21     | The Prince                        | 23       | Niccolò Machiavelli       | 10.99  |
| 23     | The Divine Comedy                 | 25       | Dante Alighieri           | 20.5   |
| 26     | The Jungle Book                   | 28       | Macmillan Publishers      | 14.99  |
| 27     | The Wind in the Willows           | 29       | Methuen & Co.             | 17.5   |
+--------+-----------------------------------+----------+---------------------------+--------+
**/
-- Obtener todos los autores cuyo nombre tiene al menos una letra mayúscula:
select * from autor WHERE nombre regexp '[A-Z]';

/**
+----+-----------------+
| id |     nombre      |
+----+-----------------+
| 1  | J.K. Rowling    |
| 2  | Stephen King    |
| 3  | George Orwell   |
| 4  | Jane Austen     |
| 5  | Agatha Christie |
+----+-----------------+
**/
-- Seleccionar los libros cuyo precio es un número decimal con exactamente dos decimales:
select * from libro where precio regexp '\.[0-9]{2}$';

/**
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| codigo |              titulo               | autor_id |                  editorial                  | precio |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| 1      | The Great Gatsby                  | 6        | Charles Scribner's Sons                     | 20.99  |
| 2      | To Kill a Mockingbird             | 7        | J.B. Lippincott & Co.                       | 15.95  |
| 3      | The Catcher in the Rye            | 8        | Little, Brown and Company                   | 18.75  |
| 5      | Brave New World                   | 3        | Chatto & Windus                             | 17.99  |
| 6      | The Hobbit                        | 10       | George Allen & Unwin                        | 24.99  |
| 8      | The Chronicles of Narnia          | 11       | Geoffrey Bles                               | 28.99  |
| 9      | The Odyssey                       | 12       | Homer                                       | 14.95  |
| 10     | The Iliad                         | 12       | Homer                                       | 14.95  |
| 11     | Moby-Dick                         | 13       | Harper & Brothers                           | 19.99  |
| 12     | The Road                          | 14       | Alfred A. Knopf                             | 16.75  |
| 14     | Wuthering Heights                 | 16       | Emily Brontë                                | 12.99  |
| 15     | The Old Man and the Sea           | 17       | Charles Scribner's Sons                     | 18.95  |
| 16     | The Count of Monte Cristo         | 18       | Pétion                                      | 27.99  |
| 18     | The Adventures of Sherlock Holmes | 20       | George Newnes                               | 16.99  |
| 19     | Frankenstein                      | 21       | Lackington, Hughes, Harding, Mavor, & Jones | 13.25  |
| 21     | The Prince                        | 23       | Niccolò Machiavelli                         | 10.99  |
| 22     | Don Quixote                       | 24       | Francisco de Robles                         | 26.75  |
| 24     | Anna Karenina                     | 26       | The Russian Messenger                       | 23.99  |
| 25     | Les Misérables                    | 27       | A. Lacroix, Verboeckhoven & Cie.            | 29.75  |
| 26     | The Jungle Book                   | 28       | Macmillan Publishers                        | 14.99  |
| 28     | War and Peace                     | 26       | The Russian Messenger                       | 33.25  |
| 29     | Crime and Punishment              | 30       | The Russian Messenger                       | 19.99  |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
**/
-- Obtener todos los autores cuyo nombre no contiene números:
select * from autor WHERE nombre NOT regexp '\\d';

/**
+----+-----------------+
| id |     nombre      |
+----+-----------------+
| 1  | J.K. Rowling    |
| 2  | Stephen King    |
| 3  | George Orwell   |
| 4  | Jane Austen     |
| 5  | Agatha Christie |
+----+-----------------+
**/
-- Seleccionar los libros cuyo título contiene al menos tres vocales:
select * from libro WHERE titulo regexp '[aeiouAEIOU].*[aeiouAEIOU].*[aeiouAEIOU]';

/**
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| codigo |              titulo               | autor_id |                  editorial                  | precio |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| 1      | The Great Gatsby                  | 6        | Charles Scribner's Sons                     | 20.99  |
| 2      | To Kill a Mockingbird             | 7        | J.B. Lippincott & Co.                       | 15.95  |
| 3      | The Catcher in the Rye            | 8        | Little, Brown and Company                   | 18.75  |
| 4      | One Hundred Years of Solitude     | 9        | Harper & Row                                | 22.5   |
| 5      | Brave New World                   | 3        | Chatto & Windus                             | 17.99  |
| 6      | The Hobbit                        | 10       | George Allen & Unwin                        | 24.99  |
| 7      | The Lord of the Rings             | 10       | George Allen & Unwin                        | 35.5   |
| 8      | The Chronicles of Narnia          | 11       | Geoffrey Bles                               | 28.99  |
| 9      | The Odyssey                       | 12       | Homer                                       | 14.95  |
| 10     | The Iliad                         | 12       | Homer                                       | 14.95  |
| 12     | The Road                          | 14       | Alfred A. Knopf                             | 16.75  |
| 13     | The Grapes of Wrath               | 15       | The Viking Press                            | 21.5   |
| 14     | Wuthering Heights                 | 16       | Emily Brontë                                | 12.99  |
| 15     | The Old Man and the Sea           | 17       | Charles Scribner's Sons                     | 18.95  |
| 16     | The Count of Monte Cristo         | 18       | Pétion                                      | 27.99  |
| 17     | The Picture of Dorian Gray        | 19       | Ward, Lock, and Company                     | 14.5   |
| 18     | The Adventures of Sherlock Holmes | 20       | George Newnes                               | 16.99  |
| 19     | Frankenstein                      | 21       | Lackington, Hughes, Harding, Mavor, & Jones | 13.25  |
| 20     | Alice's Adventures in Wonderland  | 22       | Macmillan                                   | 11.5   |
| 21     | The Prince                        | 23       | Niccolò Machiavelli                         | 10.99  |
| 22     | Don Quixote                       | 24       | Francisco de Robles                         | 26.75  |
| 23     | The Divine Comedy                 | 25       | Dante Alighieri                             | 20.5   |
| 24     | Anna Karenina                     | 26       | The Russian Messenger                       | 23.99  |
| 25     | Les Misérables                    | 27       | A. Lacroix, Verboeckhoven & Cie.            | 29.75  |
| 26     | The Jungle Book                   | 28       | Macmillan Publishers                        | 14.99  |
| 27     | The Wind in the Willows           | 29       | Methuen & Co.                               | 17.5   |
| 28     | War and Peace                     | 26       | The Russian Messenger                       | 33.25  |
| 29     | Crime and Punishment              | 30       | The Russian Messenger                       | 19.99  |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
**/
-- Obtener todos los autores cuyo nombre inicia con una consonante:
select * from autor where nombre not regexp '^[aeiouAEIOU]';

/**
+----+---------------+
| id |    nombre     |
+----+---------------+
| 1  | J.K. Rowling  |
| 2  | Stephen King  |
| 3  | George Orwell |
| 4  | Jane Austen   |
+----+---------------+
**/
-- Seleccionar los libros cuyo título no contiene la palabra "Science":
select * from libro WHERE titulo not regexp 'Science';

/**
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| codigo |              titulo               | autor_id |                  editorial                  | precio |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| 1      | The Great Gatsby                  | 6        | Charles Scribner's Sons                     | 20.99  |
| 2      | To Kill a Mockingbird             | 7        | J.B. Lippincott & Co.                       | 15.95  |
| 3      | The Catcher in the Rye            | 8        | Little, Brown and Company                   | 18.75  |
| 4      | One Hundred Years of Solitude     | 9        | Harper & Row                                | 22.5   |
| 5      | Brave New World                   | 3        | Chatto & Windus                             | 17.99  |
| 6      | The Hobbit                        | 10       | George Allen & Unwin                        | 24.99  |
| 7      | The Lord of the Rings             | 10       | George Allen & Unwin                        | 35.5   |
| 8      | The Chronicles of Narnia          | 11       | Geoffrey Bles                               | 28.99  |
| 9      | The Odyssey                       | 12       | Homer                                       | 14.95  |
| 10     | The Iliad                         | 12       | Homer                                       | 14.95  |
| 11     | Moby-Dick                         | 13       | Harper & Brothers                           | 19.99  |
| 12     | The Road                          | 14       | Alfred A. Knopf                             | 16.75  |
| 13     | The Grapes of Wrath               | 15       | The Viking Press                            | 21.5   |
| 14     | Wuthering Heights                 | 16       | Emily Brontë                                | 12.99  |
| 15     | The Old Man and the Sea           | 17       | Charles Scribner's Sons                     | 18.95  |
| 16     | The Count of Monte Cristo         | 18       | Pétion                                      | 27.99  |
| 17     | The Picture of Dorian Gray        | 19       | Ward, Lock, and Company                     | 14.5   |
| 18     | The Adventures of Sherlock Holmes | 20       | George Newnes                               | 16.99  |
| 19     | Frankenstein                      | 21       | Lackington, Hughes, Harding, Mavor, & Jones | 13.25  |
| 20     | Alice's Adventures in Wonderland  | 22       | Macmillan                                   | 11.5   |
| 21     | The Prince                        | 23       | Niccolò Machiavelli                         | 10.99  |
| 22     | Don Quixote                       | 24       | Francisco de Robles                         | 26.75  |
| 23     | The Divine Comedy                 | 25       | Dante Alighieri                             | 20.5   |
| 24     | Anna Karenina                     | 26       | The Russian Messenger                       | 23.99  |
| 25     | Les Misérables                    | 27       | A. Lacroix, Verboeckhoven & Cie.            | 29.75  |
| 26     | The Jungle Book                   | 28       | Macmillan Publishers                        | 14.99  |
| 27     | The Wind in the Willows           | 29       | Methuen & Co.                               | 17.5   |
| 28     | War and Peace                     | 26       | The Russian Messenger                       | 33.25  |
| 29     | Crime and Punishment              | 30       | The Russian Messenger                       | 19.99  |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
**/
-- Obtener todos los autores cuyo nombre tiene al menos una letra repetida consecutivamente:
select nombre from autor WHERE nombre regexp '(\\w)\\1';
--Sale una sentencia vacía debido a que no hay ninguno.

-- Obtener todos los autores cuyo nombre empieza con "M" o termina con "n":
select * from autor where nombre regexp '^M|n$';
--Sale una sentencia vacía ya que no hay ninguno.

-- Obtener todos los autores cuyo nombre no contiene caracteres especiales:
select * from autor where nombre regexp '[a-zA-Z0-9]';

/**
+----+-----------------+
| id |     nombre      |
+----+-----------------+
| 1  | J.K. Rowling    |
| 2  | Stephen King    |
| 3  | George Orwell   |
| 4  | Jane Austen     |
| 5  | Agatha Christie |
+----+-----------------+
**/
