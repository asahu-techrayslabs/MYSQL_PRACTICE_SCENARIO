use product_detail

CREATE TABLE store (
    store_id INT PRIMARY KEY AUTO_INCREMENT,
    total_sales DECIMAL(15, 2)
);

INSERT INTO store (total_sales) VALUES
(500000.00),
(300000.00),
(250000.00),
(700000.00);

SELECT 
    SUM(total_sales) AS total_sales_sum,
    CASE 
        WHEN SUM(total_sales) > 1000000 THEN 'Exceeds 1,000,000'
        ELSE 'Does not exceed 1,000,000'
    END AS sales_status
FROM store;
