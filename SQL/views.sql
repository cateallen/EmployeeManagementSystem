CREATE VIEW EmployeeOverview AS
SELECT e.first_name, e.last_name, d.department_name, e.salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id;
