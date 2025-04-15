
use product_detail

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(50) NOT NULL
);


DELIMITER //

CREATE PROCEDURE InsertProduct(
 IN p_product_name VARCHAR(100),
 IN p_price DECIMAL(10,2),
 IN p_category VARCHAR(50)
)
BEGIN 
  INSERT into products (product_name,price,category)
  VALUES (p_product_name,p_price,p_category);
  
 END //
 
 DELIMITER ;
 
 CALL InsertProduct('Wireless Mouse', 2500.00, 'Electronics');
 
 
 DELIMITER //

CREATE PROCEDURE UpdateProductPrice(
 IN p_product_id int,
 IN p_price DECIMAL(10,2)
)
BEGIN 
  UPDATE products
  set price=p_price
  where product_id=p_product_id;
 END //
 
 DELIMITER ;
 
 CALL UpdateProductPrice(1, 199.99);

select * from products;
 

SELECT * FROM products;