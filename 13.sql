-- SQL Challenge Day 13/50

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(emp_id)
);

INSERT INTO employees (emp_id, name, manager_id) VALUES
(1, 'John Doe', NULL),        -- John Doe is not a manager
(2, 'Jane Smith', 1),          -- Jane Smith's manager is John Doe
(3, 'Alice Johnson', 1),       -- Alice Johnson's manager is John Doe
(4, 'Bob Brown', 3),           -- Bob Brown's manager is Alice Johnson
(5, 'Emily White', NULL),      -- Emily White is not a manager
(6, 'Michael Lee', 3),         -- Michael Lee's manager is Alice Johnson
(7, 'David Clark', NULL),      -- David Clark is not a manager
(8, 'Sarah Davis', 2),         -- Sarah Davis's manager is Jane Smith
(9, 'Kevin Wilson', 2),        -- Kevin Wilson's manager is Jane Smith
(10, 'Laura Martinez', 4);     -- Laura Martinez's manager is Bob Brown


/*
You have a table named employees containing information about employees, 
including their emp_id, name, and manager_id. 
The manager_id refers to the emp_id of the employee's manager.


write a SQL query to retrieve all employees' 
details along with their manager's names based on the manager ID

*/

SELECT * FROM employees;













-- -----------
-- My Solution
-- -----------


SELECT    
    e1.emp_id,
    e1.name,
    e1.manager_id,
    e2.name as manager_name
FROM employees as e1
CROSS JOIN 
employees as e2    
WHERE e1.manager_id = e2.emp_id






    






-- Your Task
-- Write a SQL query to find the names of all employees who are also managers. 
In other words, retrieve the names of employees who appear as managers in the manager_id column.








/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/
	
    