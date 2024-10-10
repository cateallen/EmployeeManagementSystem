CREATE TRIGGER before_employee_update
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_history (employee_id, old_salary, new_salary, change_date)
    VALUES (OLD.employee_id, OLD.salary, NEW.salary, NOW());
END;