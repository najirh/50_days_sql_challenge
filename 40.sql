-- SQL Challenge Day 40/50


DROP table if exists order_data;
-- Create the table
CREATE TABLE order_data (
    order_id SERIAL PRIMARY KEY,
    order_time TIMESTAMP,
    customer_id INT,
    total_amount DECIMAL(10, 2)
);


-- Add records

-- Add records
INSERT INTO order_data (order_time, customer_id, total_amount) VALUES
    ('2024-03-31 08:30:00', 1001, 25.50),
    ('2024-03-31 09:15:00', 1002, 32.75),
    ('2024-03-31 10:00:00', 1003, 20.00),
    ('2024-03-31 11:45:00', 1004, 18.50),
    ('2024-03-31 12:30:00', 1005, 27.80),
    ('2024-03-31 13:15:00', 1006, 35.20),
    ('2024-03-31 14:00:00', 1007, 40.00),
    ('2024-03-31 15:45:00', 1008, 22.90),
    ('2024-03-31 16:30:00', 1009, 28.75),
    ('2024-03-31 17:15:00', 1010, 30.60),
    ('2024-03-31 18:00:00', 1011, 24.95),
    ('2024-03-31 19:45:00', 1012, 38.25),
    ('2024-03-31 20:30:00', 1013, 42.80),
    ('2024-03-31 21:15:00', 1014, 26.40),
    ('2024-03-31 22:00:00', 1015, 33.10),
    ('2024-03-31 23:45:00', 1016, 20.50),
    ('2024-03-31 00:15:00', 1017, 28.75),
    ('2024-03-31 01:00:00', 1018, 18.90),
    ('2024-03-31 22:45:00', 1019, 23.25),
    ('2024-03-31 22:30:00', 1020, 30.00),
    ('2024-03-31 22:15:00', 1021, 35.80),
    ('2024-03-31 23:00:00', 1022, 38.50),
    ('2024-03-31 06:45:00', 1023, 21.20),
    ('2024-03-31 09:30:00', 1024, 27.95),
    ('2024-03-31 23:15:00', 1025, 32.70),
    ('2024-03-31 09:00:00', 1026, 25.45),
    ('2024-03-31 10:45:00', 1027, 37.80),
    ('2024-03-31 21:30:00', 1028, 40.90),
    ('2024-03-31 23:15:00', 1029, 24.60),
    ('2024-03-31 13:00:00', 1030, 31.75),
    ('2024-03-31 22:45:00', 1031, 22.50),
    ('2024-03-31 22:30:00', 1032, 30.25),
    ('2024-03-31 23:15:00', 1033, 19.80),
    ('2024-03-31 23:00:00', 1034, 24.75),
    ('2024-03-31 20:45:00', 1035, 32.50),
    ('2024-03-31 20:30:00', 1036, 38.20),
    ('2024-03-31 20:15:00', 1037, 41.75),
    ('2024-03-31 22:00:00', 1038, 23.80),
    ('2024-03-31 22:45:00', 1039, 29.95),
    ('2024-03-31 22:30:00', 1040, 31.60);



/*
Swiggy Data Analyst Interview Question:

Write a SQL query to analyze the order patterns
throughout the day, providing insights into each 
hour's total orders and their respective 
percentages of the total orders. 

The output should include the hour, total orders,
and order percentage. 
Order by % order in decending

%orders = hourly order/total_orders * 100
*/
-- each hour and their total order
-- each hour order/total order * 100
-- ORDER BY 2 Desc













SELECT * FROM order_data

-- SELECT COUNT(*) FROM order_data
    
SELECT 
      EXTRACT(HOUR FROM order_time) as hour,
      COUNT(1) as cnt_orders,
      ROUND(COUNT(1)::numeric/(SELECT COUNT(*) 
                        FROM order_data)::numeric*100, 2)
       as order_percetage
FROM order_data
GROUP BY 1
ORDER BY 3 DESC












/*
-- Your Task
Create a new time category as Morning, After_noon, Evening and Night 
And Find total orders fall into this category
Morning < 12 O clock
After noon between 12 and 5
Evening 5 and 8
Night > 8 
*/
