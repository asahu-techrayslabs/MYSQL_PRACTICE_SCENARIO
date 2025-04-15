use product_detail

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO users (first_name, last_name, email) VALUES
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@test.com'),
('Alice', 'Johnson', 'alice.johnson@company.org');

SELECT email,
		substring_index(email,'@',-1) AS domain_name
FROM users;     

-- Scenerio 13----

SELECT * FROM employees;
SELECT upper(first_name) AS firstname from employees;
   