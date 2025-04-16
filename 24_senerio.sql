use product_detail

CREATE TABLE products3 (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

INSERT INTO products3 (product_name, price) VALUES
('Laptop', 1000.00),
('Smartphone', 500.00),
('Headphones', 150.00),
('Keyboard', 80.00),
('Monitor', 300.00);

select * from products3;

SELECT 
    MAX(price) - MIN(price) AS price_difference
FROM 
    products3;
    
    
    
    


