use product_detail

CREATE TABLE products1 (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    product_code VARCHAR(20) NOT NULL
);

INSERT INTO products1 (product_name, product_code) VALUES
('Laptop', 'P-001'),
('Smartphone', 'P-002'),
('Headphones', 'P-003'),
('Keyboard', 'P-004'),
('Monitor', 'P-005');

SELECT 
    product_id,
    product_name,
    product_code,
    SUBSTRING(product_code, 3) AS cleaned_product_code
FROM 
    products1;
    
    


