use product_detail

CREATE TABLE items1 (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

INSERT INTO items1 (item_name, price) VALUES
('Laptop', 1000.00),
('Smartphone', 500.00),
('Headphones', 150.00),
('Keyboard', 80.00),
('Monitor', 300.00);

SELECT 
    AVG(price) AS average_price
FROM 
    items1;


