-- 01/50 Days SQL challenge

-- Create the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Insert records for three departments
INSERT INTO employees (name, department, salary) VALUES 
('John Doe', 'Engineering', 63000),
('Jane Smith', 'Engineering', 55000),
('Michael Johnson', 'Engineering', 64000),
('Emily Davis', 'Marketing', 58000),
('Chris Brown', 'Marketing', 56000),
('Emma Wilson', 'Marketing', 59000),
('Alex Lee', 'Sales', 58000),
('Sarah Adams', 'Sales', 58000),
('Ryan Clark', 'Sales', 61000);


/*

Write the SQL query to find the second highest salary

*/

-- -------------------------
-- My Solution
-- -------------------------


-- Approach 1

SELECT * FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;


-- ADDED new records
INSERT INTO employees
VALUES
(11, 'zara', 'it', 63000)


-- Approach 2
-- Window function dense_rank

SELECT *
FROM
(	SELECT *,
	DENSE_RANK() OVER( ORDER BY salary DESC) drn	
	FROM employees
) as subquery
WHERE drn = 2








-- Your Task 

-- Question: Get the details of the employee with the second-highest salary from each department













/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/
	

