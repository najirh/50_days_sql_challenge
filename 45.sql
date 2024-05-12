-- SQL Challenge 45/50

DROP TABLE IF EXISTS orders;
-- Create Orders table
CREATE TABLE Orders (
    Order_id INT PRIMARY KEY,
    Customer_id INT,
    Order_Date DATE,
    Amount DECIMAL(10, 2)
);


DROP TABLE IF EXISTS Customers;
-- Create Customers table
CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Join_Date DATE
);

-- Insert records into Orders table
INSERT INTO Orders (Order_id, Customer_id, Order_Date, Amount)
VALUES
    (1, 1, '2024-05-01', 100),
    (2, 2, '2024-05-02', 150),
    (3, 3, '2023-12-15', 200),
    (4, 1, '2024-05-03', 120),
    (5, 2, '2024-01-20', 180),
    (6, 4, '2024-03-10', 90);

-- Insert records into Customers table
INSERT INTO Customers (Customer_id, Customer_Name, Join_Date)
VALUES
    (1, 'Alice', '2024-01-15'),
    (2, 'Bob', '2024-02-20'),
    (3, 'Charlie', '2023-12-01'),
    (4, 'David', '2024-03-01');



/*
-- Amazon Data Analyst interview 
questions for exp 1-3 year!

You have two tables: Orders and Customers.

 - Orders Table Columns: 
Order_id, Customer_id, Order_Date, Amount

- Customers Table Columns: 
Customer_id, Customer_Name, Join_Date
 
Write an SQL query to calculate the total 
order amount for each customer who joined 
in the current year. 

The output should contain Customer_Name and 
the total amount.

*/
-- join both table based on cx id
-- filter the cx records for current_year 
-- based on eacx cx id sum the amount
-- group by cx id


SELECT * FROM Customers;
SELECT * FROM orders;


SELECT
    c.customer_name,
    SUM(o.amount)
FROM orders as o
JOIN 
customers as c
on c.customer_id = o.customer_id    
WHERE EXTRACT(YEAR FROM c.join_date) = 
    EXTRACT(YEAR FROM CURRENT_DATE)
GROUP by 1
























-- SELECT *, EXTRACT(YEAR FROM join_date) FROM Customers

-- SELECT EXTRACT(YEAR FROM CURRENT_DATE);





SELECT 
    -- c.customer_id,
    c.customer_name,
    SUM(o.amount) as total_amt
FROM orders as o
JOIN 
customers as c
ON c.customer_id = o.customer_id  
-- WHERE EXTRACT(YEAR FROM c.join_date) = 
--     EXTRACT(YEAR FROM CURRENT_DATE)
WHERE c.join_date BETWEEN '2024-01-01' AND '2024-12-31'      
GROUP BY c.customer_id, c.customer_name











-- Your Task
-- Write a SQL query to return each and and total orders for current year
-- return month_number, total orders



