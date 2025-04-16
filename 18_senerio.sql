use product_detail

CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL
);

INSERT INTO staff (full_name) VALUES
('Rahul Sharma'),
('Anita Desai'),
('Vikram Singh'),
('Priya Kumar'),
('Sanjay Patel');

SELECT 
    full_name,
    SUBSTRING_INDEX(full_name, ' ', 1) AS first_name,
    SUBSTRING_INDEX(full_name, ' ', -1) AS last_name
FROM 
    staff;
    
    



