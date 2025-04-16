use product_detail

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    transaction_date DATE,
    amount DECIMAL(10, 2) NOT NULL
);

INSERT INTO transactions (transaction_date, amount) VALUES
('2025-04-01', 123.456),
('2025-04-02', 78.91),
('2025-04-03', 456.789),
('2025-04-04', 12.345),
('2025-04-05', 98.765);

SELECT 
    transaction_id,
    ROUND(amount, 2) AS rounded_amount
FROM 
    transactions;
