-- SQL challenge 39/50

DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
  Emp_No DECIMAL(4,0) NOT NULL,
  Emp_Name VARCHAR(10),
  Job_Name VARCHAR(9),
  Manager_Id DECIMAL(4,0),
  HireDate DATE,
  Salary DECIMAL(7,2),
  Commission DECIMAL(7,2),  
  Department VARCHAR(20) -- Changed from DeptNo to Department
);

INSERT INTO Employees (Emp_No, Emp_Name, Job_Name, Manager_Id, HireDate, Salary, Commission, Department) VALUES
(7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 'IT'),
(7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 'HR'),
(7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 'Marketing'),
(7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 'Operations'),
(7788, 'SCOTT', 'ANALYST', 7566, '1987-07-29', 3000, NULL, 'Operations'),
(7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 'Operations'),
(7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 'Operations'),
(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 'HR'),
(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 'HR'),
(7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 'HR'),
(7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 'HR'),
(7876, 'ADAMS', 'CLERK', 7788, '1987-06-02', 1100, NULL, 'Operations'),
(7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 'HR'),
(7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 'Marketing'),
(7905, 'BROWN', 'SALESMAN', 7698, '1981-11-12', 1250, 1400, 'HR'),
(7906, 'DAVIS', 'ANALYST', 7566, '1987-07-13', 3000, NULL, 'Operations'),
(7907, 'GARCIA', 'MANAGER', 7839, '1981-08-12', 2975, NULL, 'IT'),
(7908, 'HARRIS', 'SALESMAN', 7698, '1981-06-21', 1600, 300, 'HR'),
(7909, 'JACKSON', 'CLERK', 7902, '1981-11-17', 800, NULL, 'Operations'),
(7910, 'JOHNSON', 'MANAGER', 7839, '1981-04-02', 2850, NULL, 'Marketing'),
(7911, 'LEE', 'ANALYST', 7566, '1981-09-28', 1250, 1400, 'Operations'),
(7912, 'MARTINEZ', 'CLERK', 7902, '1981-12-03', 1250, NULL, 'Operations'),
(7913, 'MILLER', 'MANAGER', 7839, '1981-01-23', 2450, NULL, 'HR'),
(7914, 'RODRIGUEZ', 'SALESMAN', 7698, '1981-12-03', 1500, 0, 'Marketing'),
(7915, 'SMITH', 'CLERK', 7902, '1980-12-17', 1100, NULL, 'IT'),
(7916, 'TAYLOR', 'CLERK', 7902, '1981-02-20', 950, NULL, 'Marketing'),
(7917, 'THOMAS', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 'Operations'),
(7918, 'WHITE', 'ANALYST', 7566, '1981-09-28', 1300, NULL, 'IT'),
(7919, 'WILLIAMS', 'MANAGER', 7839, '1981-11-17', 5000, NULL, 'Marketing'),
(7920, 'WILSON', 'SALESMAN', 7698, '1981-05-01', 2850, NULL, 'HR'),
(7921, 'YOUNG', 'CLERK', 7902, '1981-06-09', 2450, NULL, 'Operations'),
(7922, 'ADAMS', 'ANALYST', 7566, '1987-07-13', 3000, NULL, 'HR'),
(7923, 'BROWN', 'MANAGER', 7839, '1981-08-12', 2975, NULL, 'Marketing'),
(7924, 'DAVIS', 'SALESMAN', 7698, '1981-06-21', 1600, 300, 'Operations');



/*
Most Asked Data Analyst Interview Questions 

Write an SQL query to retrieve employee details 
from each department who have a salary greater 
than the average salary in their department.

*/

-- Corelated Subquery

SELECT 
    e1.emp_name,
    e1.salary,
    e1.department
FROM employees as e1
WHERE salary > (SELECT AVG(e2.salary)
                FROM employees as e2
                WHERE e2.department = e1.department) -- IT
    

























    


    
SELECT 
    AVG(salary)
FROM employees
WHERE department = 'HR' -1850



SELECT 
    AVG(salary)
FROM employees
WHERE department = 'IT' -- 2593





















-- Your Task
-- Find the employee who has less than average salary accross company?
