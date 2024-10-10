CREATE PROCEDURE CalculateBonus(IN emp_id INT, OUT bonus DECIMAL(10, 2))
BEGIN
    DECLARE salary DECIMAL(10, 2);
    SELECT e.salary INTO salary FROM employees e WHERE e.employee_id = emp_id;
    SET bonus = salary * 0.10; -- 10% bonus
END
