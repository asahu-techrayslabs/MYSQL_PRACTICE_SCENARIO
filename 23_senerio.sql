select * from product_detail

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL
);

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2023-03-15', 250.75),
(2, '2024-01-20', 180.50),
(3, '2025-04-05', 320.00),
(4, '2023-06-25', 145.25),
(5, '2024-11-30', 215.90);


SELECT 
    order_id,
    order_date,
    YEAR(order_date) AS order_year
FROM 
    orders;


