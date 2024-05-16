-- SQL Challenge 49/50

DROP TABLE IF EXISTS orders;
-- Create table for orders
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE
);

-- Insert sample records for orders
INSERT INTO orders (order_date)
VALUES
    ('2024-05-01'),
    ('2024-05-01'),
    ('2024-05-01'),
    ('2024-05-02'),
    ('2024-05-02'),
    ('2024-05-02'),
    ('2024-05-03'),
    ('2024-05-03'),
    ('2024-05-03'),
    ('2024-05-03'),
    ('2024-05-03'),
    ('2024-05-04'),
    ('2024-05-04'),
    ('2024-05-04'),
    ('2024-05-04'),
    ('2024-05-04'),
    ('2024-05-05'),
    ('2024-05-05'),
    ('2024-05-05'),
    ('2024-05-05'),
    ('2024-05-06'),
    ('2024-05-06'),
    ('2024-05-06'),
    ('2024-05-06'),
    ('2024-05-06');

-- Display the records to verify


/*
-- Question:
You are given a orders table with
columns order_id, order_date

Identify the busiest day for orders along 
with the total number of orders placed on that day. 
*/

SELECT * FROM orders;

SELECT 
    order_date,
    COUNT(1)  
FROM orders
GROUP by 1
ORDER BY 2 DESC
LIMIT 1
