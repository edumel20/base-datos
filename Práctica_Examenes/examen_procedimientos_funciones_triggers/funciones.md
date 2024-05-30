<div align="center">
<img src= 'https://qloudea.com/blog/wp-content/uploads/2022/11/mysql-logo.jpg' width= '300px'>
</div>

# Funciones en MYSQL

## Definición:
- En MySQL, **una función es un bloque de código reutilizable que realiza una tarea específica y devuelve un valor único.** Las funciones se utilizan para encapsular operaciones complejas o repetitivas y pueden aceptar parámetros de entrada para personalizar su comportamiento. Existen dos tipos principales de funciones en MySQL: funciones incorporadas (built-in functions) y funciones definidas por el usuario (user-defined functions).

## Sintaxis y Ejemplo de una función definida por el usuario:
- La estructura básica de una *función* es la siguiente:

```sql
DELIMITER $$
CREATE FUNCTION nombre_funcion (parametro1 tipo1, parametro2 tipo2, ...)
RETURNS tipo_de_retorno
DETERMINISTIC
BEGIN
    -- Cuerpo de la función
    DECLARE variable tipo;
    -- Operaciones o lógica
    SET variable = ...;
    RETURN variable;
END$$

DELIMITER ;
```

- Un ejemplo de una función para calcular el salario anual de un círculo dado el salario mensual, los meses trabajados y la bonificación:
```sql
DELIMITER $$
CREATE FUNCTION calcular_salario_anual(salario_mensual DECIMAL(10,2), meses_trabajados INT, bonificacion DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE salario_anual DECIMAL(10,2);
    
    -- Calcular el salario anual sin bonificaciones
    SET salario_anual = salario_mensual * meses_trabajados;
    
    -- Añadir la bonificación al salario anual
    SET salario_anual = salario_anual + bonificacion;
    
    RETURN salario_anual;
END$$

DELIMITER;
```
