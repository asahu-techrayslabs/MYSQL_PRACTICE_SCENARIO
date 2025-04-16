use product_detail

CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT NOT NULL,
    quantity INT NOT NULL,
    sale_date DATE
);

INSERT INTO sales (item_id, quantity, sale_date) VALUES
(1, 10, '2025-04-01'),
(2, 5, '2025-04-02'),
(1, 15, '2025-04-03'),
(3, 7, '2025-04-04'),
(2, 20, '2025-04-05'),
(1, 25, '2025-04-06');

SELECT 
    MAX(quantity) AS highest_quantity_sold
FROM 
    sales;

