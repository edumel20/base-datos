/**
TAREA 1 PROCEDIMIENTOS
**/

-- 1. Crea la bbdd. _ Utilizaremos comandos SQL para crear una base de datos llamada "SimpleDB" que contendrá dos tablas: "Users" para almacenar información de usuarios y "Products" para almacenar información de productos._

CREATE DATABASE IF NOT EXISTS SimpleDB;

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

/**
Query OK, 0 rows affected (0,06 sec)
**/

-- 2. Realiza la inserción de algunos datos de prueba.

INSERT INTO Users (UserName, Email) VALUES ('Juan', 'juan@example.com');
INSERT INTO Users (UserName, Email) VALUES ('María', 'maria@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Pedro', 'pedro@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Pol', 'pol@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Pilar', 'pilar@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Irene', 'irene@example.com');



INSERT INTO Products (ProductName, Price) VALUES ('Producto 1', 10.99);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 2', 20.50);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 3', 15.75);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 4', 14.75);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 5', 11.50);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 6', 21.60);

-- 3. Crea procedimientos almacenados para realizar operaciones como insertar un nuevo usuario, actualizar el nombre de un usuario, etc.
    -- 3.1: Procedimiento para insertar un nuevo usuario.
    DELIMITER $$
    DROP PROCEDURE IF EXISTS insertar_usuarios$$
    CREATE PROCEDURE insertar_usuarios(IN UserName VARCHAR(50), IN Email VARCHAR(100))
    BEGIN
        INSERT INTO Users (UserName, Email) VALUES (UserName,Email);
    END $$
    /**
    Query OK, 0 rows affected (0,02 sec)
    **/

    DELIMITER;
    CALL insertar_usuarios('Pepe','pepe@example.com');
    /**
    Query OK, 1 row affected (0,01 sec)
    **/

    select * from Users;
    /**
    +--------+----------+-------------------+
    | UserID | UserName | Email             |
    +--------+----------+-------------------+
    |      1 | Juan     | juan@example.com  |
    |      2 | María    | maria@example.com |
    |      3 | Pedro    | pedro@example.com |
    |      4 | Pol      | pol@example.com   |
    |      5 | Pilar    | pilar@example.com |
    |      6 | Irene    | irene@example.com |
    |      7 | Pepe     | pepe@example.com  |
    +--------+----------+-------------------+
    7 rows in set (0,00 sec)
    **/

    -- 3.2: Procedimiento para actualizar el nombre de un usuario.
    DELIMITER $$
    DROP PROCEDURE IF EXISTS actualizar_nombre_usuarios$$
    CREATE PROCEDURE actualizar_nombre_usuarios(IN Nombre VARCHAR(50), IN new_Nombre VARCHAR(50))
    BEGIN
       UPDATE Users SET UserName = Nombre WHERE UserName = new_Nombre; 
    END $$
    /**
    Query OK, 0 rows affected (0,02 sec)
    **/

    DELIMITER;
    CALL actualizar_nombre_usuarios('Pedro', 'Pablo');
    /**
    Query OK, 1 row affected (0,01 sec)
    **/

    select * from Users;
    /**
    +--------+----------+-------------------+
    | UserID | UserName | Email             |
    +--------+----------+-------------------+
    |      1 | Juan     | juan@example.com  |
    |      2 | María    | maria@example.com |
    |      3 | Pablo    | pedro@example.com |
    |      4 | Pol      | pol@example.com   |
    |      5 | Pilar    | pilar@example.com |
    |      6 | Irene    | irene@example.com |
    |      7 | Pepe     | pepe@example.com  |
    +--------+----------+-------------------+
    7 rows in set (0,00 sec)
    **/

-- 4. Implementa funciones para realizar cálculos o consultas:
    --4.1: Función para calcular el precio total de un conjunto de productos.
    DELIMITER $$
    CREATE FUNCTION total_price() RETURNS FLOAT DETERMINISTIC
    BEGIN
        DECLARE total_price FLOAT;
        select SUM(price) INTO total_price from Products;
        return total_price;
    END$$
    /**
    Query OK, 0 rows affected (0,05 sec)
    **/

    DELIMITER ;
    select total_price();
    /**
    +---------------+
    | total_price() |
    +---------------+
    |         95.09 |
    +---------------+
    1 row in set (0,00 sec)
    **/

    -- 4.2 Función para contar el número de usuarios
    DELIMITER $$
    CREATE FUNCTION total_users() RETURNS INT DETERMINISTIC
    BEGIN
        DECLARE total_users INT;
        select COUNT(*) INTO total_users from Users;
        return total_users;
    END $$
    /**
    Query OK, 0 rows affected (0,11 sec)
    **/

    DELIMITER ;
    select total_users();
    /**
    +---------------+
    | total_users() |
    +---------------+
    |             7 |
    +---------------+
    1 row in set (0,01 sec)
    **/