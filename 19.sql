-- Day 19/50 SQL Challenge

DROP TABLE IF EXISTS employees;
-- Creating the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Inserting sample data for employees
INSERT INTO employees (employee_name, department, salary) 
VALUES
    ('John Doe', 'HR', 50000.00),
    ('Jane Smith', 'HR', 55000.00),
    ('Michael Johnson', 'HR', 60000.00),
    ('Emily Davis', 'IT', 60000.00),
    ('David Brown', 'IT', 65000.00),
    ('Sarah Wilson', 'Finance', 70000.00),
    ('Robert Taylor', 'Finance', 75000.00),
    ('Jennifer Martinez', 'Finance', 80000.00);

/*
-- Q.
You have a table with below COLUMNS
emp_id employee_name, department, salary


Find the details of employees whose salary is greater
than the average salary across the entire company.
*/

SELECT * FROM employees;

-- Find avg salary - 64375
-- select * from employees use where salary > Find avg salary
-- 


SELECT * FROM employees
WHERE salary > (SELECT AVG(salary) from employees) ;

















/*
-- Your Task:
Question:
Find the average salary of employees in each department, 
along with the total number of employees in that department.
*/


