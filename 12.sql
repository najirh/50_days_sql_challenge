-- Day 12/50 Days sql Challenge


DROP TABLE IF EXISTS Employees;
-- Create Employees table
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Insert sample data into Employees table
INSERT INTO Employees (id, name) VALUES
    (1, 'Alice'),
    (7, 'Bob'),
    (11, 'Meir'),
    (90, 'Winston'),
    (3, 'Jonathan');


DROP TABLE IF EXISTS EmployeeUNI;
-- Create EmployeeUNI table
CREATE TABLE EmployeeUNI (
    id INT PRIMARY KEY,
    unique_id INT
);

-- Insert sample data into EmployeeUNI table
INSERT INTO EmployeeUNI (id, unique_id) VALUES
    (3, 1),
    (11, 2),
    (90, 3);



/*

Write a solution to show the unique ID of each user, 
If a user does not have a unique ID replace just show null.

Return employee name and their unique_id.



Table: Employees

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
+---------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains the id and the name of an employee in a company.
 

Table: EmployeeUNI

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| unique_id     | int     |
+---------------+---------+
(id, unique_id) is the primary key (combination of columns with unique values) for this table.
Each row of this table contains the id and the corresponding unique id of an employee in the company.

*/

SELECT * FROM Employees;
SELECT * FROM EmployeeUNI;


SELECT 
    e.name,
    eu.unique_id
FROM employees as e
LEFT JOIN
employeeuni as eu
ON eu.id = e.id







-- Your task to replace null values to 0 for the employee who doesn't have unique id








/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/
	

    