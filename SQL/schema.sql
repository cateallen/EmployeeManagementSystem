CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(255) NOT NULL
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    department_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
