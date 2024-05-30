-- SQL Challenge 50/50

DROP TABLE IF EXISTS sellers;
DROP TABLE IF EXISTS orders;
-- Create table for sellers
CREATE TABLE sellers (
    seller_id SERIAL PRIMARY KEY,
    seller_name VARCHAR(100) NOT NULL
);

-- Insert sample records into the sellers table
INSERT INTO sellers (seller_name)
VALUES 
    ('Seller A'),
    ('Seller B'),
    ('Seller C');

-- Create table for orders
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    seller_id INT REFERENCES sellers(seller_id),
    product_id INT,
    category VARCHAR(50),
    quantity INT,
    price_per_unit FLOAT
);

-- Insert sample records into the orders table
INSERT INTO orders (seller_id, product_id, category, quantity, price_per_unit)
VALUES 
    (1, 1, 'Electronics', 2, 999.99),
    (1, 2, 'Electronics', 3, 699.99),
    (2, 3, 'Home & Kitchen', 1, 49.99),
    (2, 4, 'Home & Kitchen', 2, 79.99),
    (2, 5, 'Electronics', 1, 29.99),
    (3, 1, 'Electronics', 2, 999.99),
    (3, 4, 'Home & Kitchen', 1, 79.99),
    (1, 3, 'Home & Kitchen', 2, 49.99),
    (2, 1, 'Electronics', 1, 999.99),
    (3, 2, 'Electronics', 1, 699.99),
    (1, 4, 'Home & Kitchen', 3, 79.99),
    (2, 2, 'Electronics', 2, 699.99),
    (3, 3, 'Home & Kitchen', 1, 49.99),
    (1, 5, 'Electronics', 2, 29.99),
    (2, 4, 'Home & Kitchen', 1, 79.99),
    (3, 1, 'Electronics', 1, 999.99),
    (1, 2, 'Electronics', 1, 699.99),
    (2, 3, 'Home & Kitchen', 2, 49.99),
    (3, 5, 'Electronics', 1, 29.99),
    (1, 3, 'Home & Kitchen', 1, 49.99),
    (2, 1, 'Electronics', 3, 999.99),
    (3, 2, 'Electronics', 2, 699.99),
    (1, 4, 'Home & Kitchen', 1, 79.99),
    (2, 2, 'Electronics', 1, 699.99),
    (3, 3, 'Home & Kitchen', 3, 49.99),
    (1, 5, 'Electronics', 1, 29.99);



/*
-- You have two tables, sellers and orders. 

sellers table columns are 
seller_id, seller_name

orders table has columns 
seller_id, product_id, category, 
quantity, price_per_unit

Write an SQL query to find each seller's 
revenue from each category and each product.

return seller_name, total_revenue in each 
product inside each category

*/
 
-- seller_name get from seller_table
-- category_name orders TABLE
-- product_id
-- revenue


SELECT * FROM sellers;
SELECT * FROM orders;




















SELECT
    s.seller_name,
    o.category,
    o.product_id,
    SUM(o.price_per_unit * o.quantity) as total_revenue
FROM orders as o
JOIN
sellers as s
ON s.seller_id = o.seller_id
GROUP BY 1, 2, 3
ORDER BY 1, 3 




