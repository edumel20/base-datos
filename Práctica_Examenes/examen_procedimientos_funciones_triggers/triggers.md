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