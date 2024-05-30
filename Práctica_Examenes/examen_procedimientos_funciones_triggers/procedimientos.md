<div align="center">
<img src= 'https://qloudea.com/blog/wp-content/uploads/2022/11/mysql-logo.jpg' width= '300px'>
</div>

# Procedimientos en MYSQL

## Definición:
- En MySQL, un procedimiento almacenado es un **conjunto de instrucciones SQL que se almacenan y se pueden ejecutar en la base de datos.** Los procedimientos almacenados permiten agrupar varias operaciones SQL en una unidad lógica que puede ser invocada con un solo comando. Son útiles para encapsular lógica de negocio, mejorar el rendimiento y la seguridad, y facilitar la reutilización del código.

## Sintaxis y ejemplo de un procedimiento:
- La estructura básica de un *procedimiento* es la siguiente:
```sql
DELIMITER $$
CREATE PROCEDURE nombre_procedimiento ([parámetros])
BEGIN
    -- Instrucciones SQL
END$$

DELIMITER ;
```

- Un ejemplo de un procedimiento almacenado que añade un nuevo empleado a una tabla *empleados* y devuelve el ID del nuevo empleado:
```sql
DELIMITER $$
CREATE PROCEDURE agregar_empleado (IN nombre_empleado VARCHAR(100), IN salario_empleado DECIMAL(10,2), OUT nuevo_id INT)
BEGIN
    -- Insertar el nuevo empleado:
    INSERT INTO empleados (nombre, salario) VALUES (nombre_empleado, salario_empleado);
    -- Obtener el ID del nuevo empleado:
    SET nuevo_id = LAST_INSERT_ID();
END$$

DELIMITER ;
```

```sql
-- Llamada del procedimiento 'agregar_empleado'
call agregar_empleado('Juan Guarnizo', 3500.00, @nuevo_id);

-- Comprobación de que el procedimiento funciona correctamente:
select * from empleados;

+----+------------------+---------+
| id | nombre           | salario |
+----+------------------+---------+
|  1 | Juan Pérez       | 2600.00 |
|  2 | María López      | 3100.00 |
|  3 | Carlos Ruiz      | 2300.00 |
|  4 | Ana García       | 2800.00 |
|  5 | Luis Fernández   | 2700.00 |
|  6 | Marta Rodríguez  | 3200.00 |
|  7 | Juan Guarnizo    | 3500.00 |
+----+------------------+---------+
7 rows in set (0,00 sec)
```