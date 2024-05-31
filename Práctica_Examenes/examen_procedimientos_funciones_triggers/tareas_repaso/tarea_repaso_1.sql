/**
TAREA REPASO 1
**/

--En este ejercicio, vamos a trabajar en la creación de una base de datos simple utilizando MySQL. Esta base de datos estará diseñada para administrar información de usuarios y productos. Una vez que hayamos creado la base de datos y las tablas necesarias, vamos a implementar procedimientos almacenados y funciones para realizar operaciones comunes sobre estos datos:

--Pasos:

-- 1. Crea la bbdd. Utilizaremos comandos SQL para crear una base de datos llamada "SimpleDB" que contendrá dos tablas: "Users" para almacenar información de usuarios y "Products" para almacenar información de productos.

DROP DATABASE IF EXISTS SimpleDB;

CREATE DATABASE SimpleDB;

USE SimpleDB;

CREATE TABLE IF NOT EXISTS Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

INSERT INTO Products (ProductName, Price) VALUES ('Producto 4', 30.99);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 5', 19.50);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 6', 11.75);

-- 2. Crea procedimientos almacenados para realizar operaciones como insertar un nuevo usuario, actualizar el nombre de un usuario, etc.

--Procedimiento para insertar un nuevo usuario.
DROP PROCEDURE IF EXISTS insert_user;
DELIMITER $$
CREATE PROCEDURE insert_user(IN user_name VARCHAR(50), IN user_email VARCHAR(100), OUT new_id INT)
BEGIN
    INSERT INTO Users (UserName, Email) VALUES (user_name, user_email);
    SET new_id = LAST_INSERT_ID();
END $$

DELIMITER ;

call insert_user('Eduardo Gómez', 'edugo@example.com', @new_id);
call insert_user('Pablo Casas', 'pabca@example.com', @new_id);
call insert_user('Lili Guo', 'lilguo@example.com', @new_id);
call insert_user('Enrique Ramos', 'enrir@example.com', @new_id);
call insert_user('Isabel Yuste', 'isayus@example.com', @new_id);
call insert_user('Paola Díaz', 'pao_diaz@example.com', @new_id);

select * from Users;
/**
+--------+----------------+----------------------+
| UserID | UserName       | Email                |
+--------+----------------+----------------------+
|      1 | Eduardo Gómez  | edugo@example.com    |
|      2 | Pablo Casas    | pabca@example.com    |
|      3 | Lili Guo       | lilguo@example.com   |
|      4 | Enrique Ramos  | enrir@example.com    |
|      5 | Isabel Yuste   | isayus@example.com   |
|      6 | Paola Díaz     | pao_diaz@example.com |
+--------+----------------+----------------------+
6 rows in set (0,00 sec)
**/

--Procedimiento para actualizar el nombre de un usuario.
DROP PROCEDURE IF EXISTS update_name;
DELIMITER $$
CREATE PROCEDURE update_name(IN new_user_name VARCHAR(50), IN user_id INT)
BEGIN
    DECLARE user_id_val INT;
    SET user_id_val = user_id;
    UPDATE Users SET UserName = new_user_name WHERE UserID = user_id_val; 
END$$

DELIMITER ;

call update_name('Emilio Sarra', 1);

select * from Users;
/**
+--------+---------------+----------------------+
| UserID | UserName      | Email                |
+--------+---------------+----------------------+
|      1 | Emili Sarra   | edugo@example.com    |
|      2 | Pablo Casas   | pabca@example.com    |
|      3 | Lili Guo      | lilguo@example.com   |
|      4 | Enrique Ramos | enrir@example.com    |
|      5 | Isabel Yuste  | isayus@example.com   |
|      6 | Paola Díaz    | pao_diaz@example.com |
+--------+---------------+----------------------+
6 rows in set (0,00 sec)
**/


-- 3. Implementa funciones para realizar cálculos o consultas:

--Función para calcular el precio total de un conjunto de productos.
DROP FUNCTION IF EXISTS calcular_precio_total;

DELIMITER $$
CREATE FUNCTION calculate_total_price ()
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE products_total_price DECIMAL(10,2);
    select SUM(Price) INTO products_total_price from Products;
    RETURN products_total_price;
END$$

DELIMITER ;

select calculate_total_price();
/**
+-------------------------+
| calculate_total_price() |
+-------------------------+
|                  109.48 |
+-------------------------+
1 row in set (0,02 sec)
**/

--Función para contar el número de usuarios.
DROP FUNCTION IF EXISTS number_of_users;

DELIMITER $$
CREATE FUNCTION number_of_users()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE num_users INT;
    select COUNT(UserID) INTO num_users from Users;
    RETURN num_users;
END$$

DELIMITER ;

select number_of_users();
/**
+-------------------+
| number_of_users() |
+-------------------+
|                 6 |
+-------------------+
1 row in set (0,06 sec)
**/