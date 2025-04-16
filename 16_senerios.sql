use product_detail

CREATE TABLE items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(255)
);

INSERT INTO items (description) VALUES
('   Fresh Apples  '),
('Oranges  '),
('   Banana'),
('   Grapes'),
('Mangoes   ');

SELECT item_id, 
       description AS original_description,
       TRIM(description) AS trimmed_description
FROM items;

