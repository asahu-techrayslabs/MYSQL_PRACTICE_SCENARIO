use product_detail

CREATE TABLE departments (
	department_id int PRIMARY KEY AUTO_INCREMENT,
	department_name VARCHAR(100) NOT NULL
);

INSERT INTO departments (department_name) VALUES
('Human Resources'),
('Engineering'),
('Finance'),
('Marketing'),
('Operations');


CREATE TABLE employees(
	employee_id int PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	salary DECIMAL(10,2) NOT NULL,
	department_id INT,
    FOREIGN KEY(department_id) REFERENCES departments(department_id) ON DELETE CASCADE
);

INSERT INTO employees (first_name, last_name, salary, department_id) VALUES
('Aarav', 'Sharma', 60000.00, 2),
('Diya', 'Patel', 55000.00, 1),
('Rohan', 'Verma', 72000.00, 2),
('Sneha', 'Singh', 50000.00, 4),
('Kunal', 'Reddy', 68000.00, 3),
('Priya', 'Mehta', 48000.00, 5),
('Vivaan', 'Iyer', 75000.00, 2),
('Ananya', 'Mishra', 53000.00, 1);


DELIMITER //

CREATE PROCEDURE GetEmployeeDetailsWithDepartment()
BEGIN 
   SELECT 
       e.employee_id,
       e.first_name,
       e.last_name,
       e.salary,
       d.department_name
   FROM employees e
	   JOIN departments d ON e.department_id=d.department_id;
END //

DELIMITER ;       

CALL GetEmployeeDetailsWithDepartment();
   
