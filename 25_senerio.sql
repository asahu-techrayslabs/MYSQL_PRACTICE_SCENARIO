use product_detail

CREATE TABLE reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    user_id INT NOT NULL,
    rating DECIMAL(3, 2) NOT NULL,
    review_date DATE NOT NULL,
    review_text TEXT
);

INSERT INTO reviews (product_id, user_id, rating, review_date, review_text) VALUES
(1, 101, 4.7, '2025-04-01', 'Great product, would recommend!'),
(2, 102, 4.5, '2025-04-02', 'Good value for money.'),
(3, 103, 4.0, '2025-04-03', 'Decent, but could be improved.'),
(4, 104, 5.0, '2025-04-04', 'Excellent quality, exceeded expectations.'),
(5, 105, 4.2, '2025-04-05', 'Satisfactory performance.'),
(6, 106, 3.8, '2025-04-06', 'Not bad, but could be better.');

SELECT 
    COUNT(*) AS total_reviews_above_4_5
FROM 
    reviews
WHERE 
    rating >= 4.5;

