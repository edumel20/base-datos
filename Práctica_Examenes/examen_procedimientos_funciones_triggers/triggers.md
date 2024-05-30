<div align="center">
<img src= 'https://qloudea.com/blog/wp-content/uploads/2022/11/mysql-logo.jpg' width= '300px'>
</div>

# Triggers en MYSQL

## Definición:
-Un trigger en MySQL es un **conjunto de instrucciones SQL que se ejecuta automáticamente en respuesta a ciertos eventos en una tabla específica.** Los triggers permiten definir acciones que se llevarán a cabo de manera automática antes o después de operaciones como INSERT, UPDATE o DELETE en una tabla. Son útiles para mantener la integridad de los datos, auditar cambios, y automatizar procesos de negocio.

## Sintaxis y Ejemplo de de un trigger:
- La estructura básica de un *trigger* es la siguiente:

```sql
DELIMITER $$
CREATE TRIGGER nombre_trigger
{BEFORE | AFTER} {INSERT | UPDATE | DELETE}
ON nombre_tabla
FOR EACH ROW
BEGIN
    -- Instrucciones del trigger
END$$

DELIMITER ;
```

- Un ejemplo de un trigger que se activa después de una operación de *UPDATE* en la tabla *empleados*:

```sql
-- TABLA empleados:
CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    salario DECIMAL(10,2)
);

-- TABLA auditoria_salarios:
CREATE TABLE auditoria_salarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    salario_antiguo DECIMAL(10,2),
    salario_nuevo DECIMAL(10,2),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```


```sql
-- Creación del trigger 'auditar_salarios':
DELIMITER $$
CREATE TRIGGER auditar_salarios
AFTER UPDATE ON empleados
FOR EACH ROW
BEGIN
    -- Insertar en la tabla de auditoría solo si el salario ha cambiado
    IF OLD.salario <> NEW.salario THEN
        INSERT INTO auditoria_salarios (empleado_id, salario_antiguo, salario_nuevo)
        VALUES (OLD.id, OLD.salario, NEW.salario);
    END IF;
END$$

DELIMITER ;
```

```sql
-- TABLA antes de UPDATE:
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
+----+------------------+---------+
6 rows in set (0,00 sec)

-- TABLA después de UPDATE (se ha activado el trigger):
select * from auditoria_salarios;
+----+-------------+-----------------+---------------+---------------------+
| id | empleado_id | salario_antiguo | salario_nuevo | fecha               |
+----+-------------+-----------------+---------------+---------------------+
|  1 |           1 |         2500.00 |       2600.00 | 2024-05-30 15:16:56 |
|  2 |           2 |         3000.00 |       3100.00 | 2024-05-30 15:17:21 |
|  3 |           3 |         2200.00 |       2300.00 | 2024-05-30 15:17:31 |
+----+-------------+-----------------+---------------+---------------------+
3 rows in set (0,00 sec)
```