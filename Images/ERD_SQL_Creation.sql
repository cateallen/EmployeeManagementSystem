-- Create Departments Table
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(255) NOT NULL
);

-- Create Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    department_id INT,
    salary DECIMAL(10, 2) NOT NULL,
    hire_date DATE NOT NULL,
    job_title VARCHAR(255) NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Create Projects Table
CREATE TABLE projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    budget DECIMAL(12, 2) NOT NULL
);

-- Create Employee_Projects Table
CREATE TABLE employee_projects (
    employee_project_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    project_id INT,
    role VARCHAR(255) NOT NULL,
    allocation_percentage DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

-- Create Employee History Table (Optional)
CREATE TABLE employee_history (
    history_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    change_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    old_salary DECIMAL(10, 2),
    new_salary DECIMAL(10, 2),
    old_department_id INT,
    new_department_id INT,
    old_job_title VARCHAR(255),
    new_job_title VARCHAR(255),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
