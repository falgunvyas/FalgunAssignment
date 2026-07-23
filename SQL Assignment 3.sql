use newjuly2026

Create Table EMP
( EID INT,
Ename Varchar(30),
Department Varchar(20),
Salary INT );

Insert into EMP Values
( 101, 'dhyaan patel','IT',30000),
( 102, 'meha desai', 'IT',25000),
( 103, 'harshit shah', 'Manager', 35000),
( 104, 'janvi patel','HR',40000),
( 105, 'trith desai', 'Finance',50000),
( 106, 'vaisnavi shukla', 'Finance', 60000),
( 107, 'gautami parik','IT',36000),
( 108, 'nisarg shah', 'Mechanical',22000),
( 109, 'nisarg shukla', 'Civil', 45000),
( 110, 'mahirishi shah','Mechanical',25000),
( 111, 'dishant vyas', 'Civil',35000),
( 112, 'vrundavan bhatt', 'Electrical', 15000)

select * from EMP;

-- 1. Write a query to display each Department and the total number of employees working in that department from the Employee table.

SELECT Department, COUNT(*) AS Total_Employees
FROM EMP
GROUP BY Department;


-- 2.Write a query to find the Department, the highest salary (MAX), and the average salary (AVG) for each department.

SELECT Department, MAX(Salary) AS Highest_Salary, AVG(Salary) AS Average_Salary
FROM EMP
GROUP BY Department;


-- 3. Write a query to count how many employees are in each Department.

SELECT Department, COUNT(Ename) AS Employee_Count
FROM EMP
GROUP BY Department;

-- 4. Write a query to find the minimum salary in each Department

SELECT Department, MIN(Salary) AS Minimum_Salary
FROM EMP
GROUP BY Department;

-- 5. Write a query to show departments that have more than 2 employees

SELECT Department 
FROM EMP
GROUP BY Department 
HAVING COUNT(*) > 2;

-- 6.Write a query to show departments where the total salary payout is greater than 100,000

SELECT Department 
FROM EMP 
GROUP BY Department 
HAVING SUM(Salary) > 100000;

-- 7. Write a query to find departments where the average salary is above 60,000

SELECT Department 
FROM EMP 
GROUP BY Department 
HAVING AVG(Salary) > 60000;

-- 8. Write a query to show departments that have exactly 1 employee

SELECT Department 
FROM EMP 
GROUP BY Department 
HAVING COUNT(*) = 1;


-- 9. Write a query to list all employees sorted by Salary from highest to lowest

SELECT * 
FROM EMP 
ORDER BY Salary DESC;




-- 10. Write a query to list all employees sorted by Ename in alphabetical order

SELECT * 
FROM EMP 
ORDER BY Ename ASC;


-- 11. Write a query to list all employees sorted by Department alphabetically, and then by Ename alphabetically.

SELECT * 
FROM EMP 
ORDER BY Department ASC, Ename ASC;