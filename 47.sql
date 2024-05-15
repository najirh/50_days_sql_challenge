-- SQL Challenge 47/50

DROP TABLE IF EXISTS inventory;
CREATE TABLE inventory (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT,
    price_per_unit FLOAT
);


INSERT INTO inventory (product_name, quantity, price_per_unit)
VALUES
    ('Laptop', 20, 999.99),
    ('Smartphone', 15, 699.99),
    ('Tablet', 8, 399.99),
    ('Headphones', 25, 149.99),
    ('Mouse', 30, 29.99),
    ('Wireless Earbuds', 12, 79.99),
    ('Portable Charger', 10, 49.99),
    ('Bluetooth Speaker', 18, 129.99),
    ('Fitness Tracker', 7, 89.99),
    ('External Hard Drive', 9, 149.99),
    ('Gaming Mouse', 14, 59.99),
    ('USB-C Cable', 22, 19.99),
    ('Smart Watch', 6, 199.99),
    ('Desk Lamp', 11, 34.99),
    ('Power Bank', 16, 39.99),
    ('Wireless Mouse', 13, 29.99),
    ('Bluetooth Headset', 20, 59.99),
    ('MicroSD Card', 5, 24.99),
    ('USB Flash Drive', 8, 14.99),
    ('HDMI Cable', 17, 9.99);


/*
Question:
Write an SQL query to display inventory details 
including the product name, quantity in stock, 
remaining stock level ('Medium' if quantity is
more than 10, 'Low' otherwise), and supplier ID. 

Assume each product has a unique 
supplier ID associated with it.
*/
-- product name, quantity in stock, stock level
-- qty > 10 medium, Low
-- supplier ID


SELECT *,
    CASE 
        WHEN  quantity > 10   THEN  'Medium'
        ELSE 'low'
    END as stock_level
FROM inventory;



