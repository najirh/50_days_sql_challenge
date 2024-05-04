-- SQL Challenge Day 39/50
DROP TABLE IF EXISTS amazon_products;
CREATE TABLE amazon_products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(100),
    price DECIMAL(10, 2),
    country VARCHAR(50)
);

-- Add 25+ records with real product names for the USA
INSERT INTO amazon_products (product_name, category, price, country) VALUES
('iPhone 13 Pro Max', 'Smartphones', 1099.00, 'USA'),
('Samsung Galaxy S21 Ultra', 'Smartphones', 1199.99, 'USA'),
('Google Pixel 6 Pro', 'Smartphones', 899.00, 'USA'),
('Samsung QN90A Neo QLED TV', 'TVs', 2397.99, 'USA'),
('LG OLED C1 Series', 'TVs', 1996.99, 'USA'),
('Sony Bravia XR A90J', 'TVs', 2798.00, 'USA'),
('Apple MacBook Pro 16-inch', 'Laptops', 2399.00, 'USA'),
('Dell XPS 15', 'Laptops', 1899.99, 'USA'),
('Microsoft Surface Laptop 4', 'Laptops', 1299.99, 'USA'),
('Sony WH-1000XM4 Wireless Headphones', 'Headphones', 348.00, 'USA'),
('Bose Noise Cancelling Headphones 700', 'Headphones', 379.00, 'USA'),
('Apple AirPods Pro', 'Headphones', 249.00, 'USA'),
('Samsung Odyssey G9 Gaming Monitor', 'Monitors', 1399.99, 'USA'),
('Dell S2721QS 27-inch 4K Monitor', 'Monitors', 339.99, 'USA'),
('LG 27GN950-B UltraGear Gaming Monitor', 'Monitors', 1296.99, 'USA'),
('Canon EOS R5 Mirrorless Camera', 'Cameras', 3899.00, 'USA'),
('Sony Alpha a7 III Mirrorless Camera', 'Cameras', 1998.00, 'USA'),
('Nikon Z7 II Mirrorless Camera', 'Cameras', 2996.95, 'USA'),
('Nintendo Switch', 'Gaming Consoles', 299.99, 'USA'),
('PlayStation 5', 'Gaming Consoles', 499.99, 'USA'),
('Xbox Series X', 'Gaming Consoles', 499.99, 'USA'),
('Apple Watch Series 7', 'Smartwatches', 399.00, 'USA'),
('Samsung Galaxy Watch 4', 'Smartwatches', 249.99, 'USA'),
('Fitbit Sense', 'Smartwatches', 299.95, 'USA'),
('iPhone 13 Pro Max', 'Smartphones', 1099.00, 'USA'),
('Samsung Galaxy S21 Ultra', 'Smartphones', 1199.99, 'USA'),
('Google Pixel 6 Pro', 'Smartphones', 899.00, 'USA'),
('Samsung QN90A Neo QLED TV', 'TVs', 2397.99, 'USA'),
('LG OLED C1 Series', 'TVs', 1996.99, 'USA'),
('Sony Bravia XR A90J', 'TVs', 2798.00, 'USA'),
('Apple MacBook Pro 16-inch', 'Laptops', 2399.00, 'USA'),
('Dell XPS 15', 'Laptops', 1899.99, 'USA'),
('Microsoft Surface Laptop 4', 'Laptops', 1299.99, 'USA'),
('Sony WH-1000XM4 Wireless Headphones', 'Headphones', 348.00, 'USA'),
('Bose Noise Cancelling Headphones 700', 'Headphones', 379.00, 'USA'),
('Apple AirPods Pro', 'Headphones', 249.00, 'USA'),
('Samsung Odyssey G9 Gaming Monitor', 'Monitors', 1399.99, 'USA'),
('Dell S2721QS 27-inch 4K Monitor', 'Monitors', 339.99, 'USA'),
('LG 27GN950-B UltraGear Gaming Monitor', 'Monitors', 1296.99, 'USA'),
('Canon EOS R5 Mirrorless Camera', 'Cameras', 3899.00, 'USA'),
('Sony Alpha a7 III Mirrorless Camera', 'Cameras', 1998.00, 'USA'),
('Nikon Z7 II Mirrorless Camera', 'Cameras', 2996.95, 'USA'),
('Nintendo Switch', 'Gaming Consoles', 299.99, 'USA'),
('PlayStation 5', 'Gaming Consoles', 499.99, 'USA'),
('Xbox Series X', 'Gaming Consoles', 499.99, 'USA'),
('Apple Watch Series 7', 'Smartwatches', 399.00, 'USA'),
('Samsung Galaxy Watch 4', 'Smartwatches', 249.99, 'USA'),
('Fitbit Sense', 'Smartwatches', 299.95, 'USA'),
('iPhone 13 Pro Max', 'Smartphones', 1099.00, 'USA'),
('Samsung Galaxy S21 Ultra', 'Smartphones', 1199.99, 'USA'),
('Google Pixel 6 Pro', 'Smartphones', 899.00, 'USA'),
('Samsung QN90A Neo QLED TV', 'TVs', 2397.99, 'USA'),
('LG OLED C1 Series', 'TVs', 1996.99, 'USA'),
('Sony Bravia XR A90J', 'TVs', 2798.00, 'USA'),
('Apple MacBook Pro 16-inch', 'Laptops', 2399.00, 'USA'),
('Dell XPS 15', 'Laptops', 1899.99, 'USA'),
('Microsoft Surface Laptop 4', 'Laptops', 1299.99, 'USA'),
('Sony WH-1000XM4 Wireless Headphones', 'Headphones', 348.00, 'USA');


DROP TABLE IF EXISTS return_records;
CREATE TABLE return_records (
    return_id SERIAL PRIMARY KEY,
    order_id INT,
    product_id INT,
    return_reason VARCHAR(255),
    return_date DATE
);

-- Add 10 more return records
INSERT INTO return_records (order_id, product_id, return_reason, return_date) VALUES
(1006, 7, 'Defective product', '2024-04-27'),
(1007, 9, 'Wrong color', '2024-04-29'),
(1008, 8, 'Size too small', '2024-05-01'),
(1009, 6, 'Not satisfied with quality', '2024-05-03'),
(1010, 10, 'Received wrong item', '2024-05-05'),
(1011, 12, 'Defective product', '2024-05-07'),
(1012, 11, 'Changed mind', '2024-05-09'),
(1013, 14, 'Item not needed', '2024-05-11'),
(1014, 15, 'Damaged upon arrival', '2024-05-13'),
(1015, 13, 'Wrong quantity', '2024-05-15'),
(1016, 16, 'Defective product', '2024-05-17'),
(1017, 17, 'Wrong size', '2024-05-19'),
(1018, 18, 'Received damaged', '2024-05-21'),
(1019, 19, 'Not as described', '2024-05-23'),
(1020, 20, 'Changed mind', '2024-05-25'),
(1021, 21, 'Item not needed', '2024-05-27'),
(1022, 22, 'Defective product', '2024-05-29'),
(1023, 23, 'Wrong color', '2024-05-31'),
(1024, 24, 'Received wrong item', '2024-06-02'),
(1025, 25, 'Size too small', '2024-06-04'),
(1026, 26, 'Damaged upon arrival', '2024-06-06'),
(1027, 27, 'Defective product', '2024-06-08'),
(1028, 28, 'Not satisfied with quality', '2024-06-10'),
(1029, 29, 'Wrong quantity', '2024-06-12'),
(1030, 30, 'Changed mind', '2024-06-14'),
(1031, 31, 'Item not needed', '2024-06-16'),
(1032, 32, 'Defective product', '2024-06-18'),
(1033, 33, 'Wrong size', '2024-06-20'),
(1034, 34, 'Received damaged', '2024-06-22'),
(1035, 35, 'Not as described', '2024-06-24'),
(1036, 36, 'Changed mind', '2024-06-26'),
(1037, 37, 'Item not needed', '2024-06-28'),
(1038, 38, 'Defective product', '2024-06-30'),
(1039, 39, 'Wrong color', '2024-07-02'),
(1040, 40, 'Received wrong item', '2024-07-04');


/*
Question:

Write a SQL query to show each product category
and its return percentage. 

return percentage = 
total_return by category
/
total_overall_return * 100

Expected Output:

Category: Name of the product category.
Return Percentage: Percentage of returns 
for each category.
*/

-- category name,
-- total returns
-- each category return count
-- each category return count/total returns * 100


SELECT * FROM amazon_products;
SELECT * FROM return_records;

















SELECT COUNT(*) FROM return_records;


SELECT
    ap.category,
    COUNT(rr.*)::numeric/(SELECT COUNT(*) 
                 FROM return_records)::numeric * 100
    AS percetage_return
    
FROM amazon_products as ap
JOIN return_records as rr
ON ap.product_id = rr.product_id
GROUP BY ap.category
ORDER BY 2 DESC



