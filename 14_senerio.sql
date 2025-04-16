use product_detail

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(255) NOT NULL
);

INSERT INTO customers (first_name, last_name, address) VALUES
('Amit', 'Kumar', '123 MG Road, Bengaluru, Karnataka'),
('Sneha', 'Sharma', '45 Nehru Street, Delhi'),
('Raj', 'Patel', '67 Park Lane, Ahmedabad, Gujarat'),
('Priya', 'Verma', '89 Connaught Place, New Delhi'),
('Anil', 'Yadav', '21 Brigade Road, Bengaluru');


SELECT 
    customer_id,
    SUBSTRING(address, 1, 10) AS short_address
FROM 
    customers;

