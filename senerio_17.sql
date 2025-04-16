use product_detail

CREATE TABLE products2 (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    product_code VARCHAR(20) NOT NULL,
    description TEXT
);

INSERT INTO products2 (product_name, product_code, description) VALUES
('Laptop', 'P-001', 'This is an old model laptop.'),
('Smartphone', 'P-002', 'Brand new smartphone with old packaging.'),
('Keyboard', 'P-003', 'An old-style mechanical keyboard.'),
('Monitor', 'P-004', 'Old version, limited stock available.'),
('Headphones', 'P-005', 'Classic design, not old but vintage.');

SELECT 
    product_id,
    product_name,
    description,
    REPLACE(description, 'old', 'new') AS updated_description
FROM 
    products2;




