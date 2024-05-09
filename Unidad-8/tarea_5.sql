/**
TAREA 5 PROCEDIMIENTOS
**/
-- Realiza:
-- 1. Escribe un procedimiento almacenado que copie los nombres de todos los empleados cuyo salario sea superior a 3000 en una nueva tabla llamada 'empleados_destino'. Es necesario crear la tabla empleados_destino.
create table empleados_destino (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);

DELIMITER $$
CREATE PROCEDURE procedimiento_1(IN salario_limite DECIMAL(10,2))
  BEGIN
      DECLARE done INT DEFAULT FALSE;
      DECLARE emp_nombre VARCHAR(100);
      DECLARE cur CURSOR FOR SELECT nombre FROM empleados WHERE salario > salario_limite;
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

      OPEN cur;
      read_loop: LOOP
          FETCH cur INTO emp_nombre;
          IF done THEN
              LEAVE read_loop;
          END IF;
          INSERT INTO empleados_destino (nombre) VALUES (emp_nombre);
      END LOOP;
      CLOSE cur;
END $$

DELIMITER ;
call procedimiento_1(3000);
  
select * from empleados_destino;
/**
+----+--------+
| id | nombre |
+----+--------+
|  1 | Juan   |
|  2 | María  |
|  3 | Pedro  |
+----+--------+
3 rows in set (0,00 sec)
**/

-- 2. Escribe un procedimiento almacenado que seleccione los empleados cuyos nombres contienen la letra 'a' y aumente sus salarios en un 10%.
DELIMITER $$
CREATE PROCEDURE procedimiento_2(IN porcentaje DECIMAL(5,2))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE cur CURSOR FOR SELECT id, salario FROM empleados WHERE nombre regexp 'a';
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        UPDATE empleados SET salario = salario * (1 + porcentaje / 100) WHERE id = emp_id;
    END LOOP;
    CLOSE cur;
END $$

DELIMITER ;
call procedimiento_2(10)

select * from empleados;
/**
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+
3 rows in set (0,00 sec)
**/

-- 3. Escribe un procedimiento almacenado que seleccione empleados cuyos IDs estén en un rango específico, por ejemplo, entre 2 y 3.
DELIMITER $$
CREATE PROCEDURE procedimiento_3(IN porcentaje_aumento DECIMAL(10,2))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE cur CURSOR FOR SELECT id, salario FROM empleados WHERE nombre regexp 'a';
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        UPDATE empleados SET salario = salario * (1 + porcentaje_aumento / 100) WHERE id = emp_id;
    END LOOP;
    CLOSE cur;
END $$
 
-- 4. Escribe un procedimiento almacenado que elimine todos los empleados cuyo salario esté entre 2000 y 2500.
 
-- 5. Escribe un procedimiento almacenado que aumente el salario de un empleado específico cuyo nombre se pasa como parámetro en un 20%.