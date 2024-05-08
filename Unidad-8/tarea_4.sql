/**
TAREA 3 PROCEDIMIENTOS
**/

--Teniendo este ejemplo como referencia, realiza:
-- 1. Escribe un procedimiento almacenado que aumente los salarios de todos los empleados en un 5%, pero excluya a aquellos cuyo salario sea superior a 3200. El procedimiento debe tener parámetros de entrada.
  
DELIMITER $$
CREATE PROCEDURE aumentar_salarios(IN porcentaje DECIMAL(5,2))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados WHERE salario > 3200;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_nombre, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        UPDATE empleados SET salario = salario * (1 + porcentaje / 100) WHERE id = emp_id;
    END LOOP;
    CLOSE cur;
END $$

DELIMITER ;

CALL aumentar_salarios()

select * from empleados;
/**
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3000.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+
3 rows in set (0,00 sec)
**/

-- 2. Escribe un procedimiento almacenado que calcule el salario anual de cada empleado (asumiendo que trabajan todo el año) y lo imprima.
DELIMITER $$
CREATE PROCEDURE calcular_salario_anual()
BEGIN
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE done INT DEFAULT FALSE;
    DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_nombre, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT CONCAT( emp_nombre, ': Salario Total = $', emp_salario * 12) AS salario_anual;
    END LOOP;
    CLOSE cur;
END $$

DELIMITER ;

CALL calcular_salario_anual();
/**
+---------------------------------+
| salario_anual                   |
+---------------------------------+
| Juan: Salario Total = $36000.00 |
+---------------------------------+
1 row in set (0,00 sec)

+-----------------------------------+
| salario_anual                     |
+-----------------------------------+
| María: Salario Total = $46200.00  |
+-----------------------------------+
1 row in set (0,01 sec)

+----------------------------------+
| salario_anual                    |
+----------------------------------+
| Pedro: Salario Total = $38400.00 |
+----------------------------------+
1 row in set (0,01 sec)

Query OK, 0 rows affected (0,01 sec)
**/

-- 3. Escribe un procedimiento almacenado que cuente y muestre el número de empleados en cada rango de salario (por ejemplo, menos de 3000, entre 3000 y 5000, más de 5000). El procedimiento debe tener parámetros de entrada.

/**
DESPUÉS LO HAGO
**/