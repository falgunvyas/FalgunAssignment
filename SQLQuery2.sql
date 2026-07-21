

use newjuly2026

--1) Execute a literal select statement that returns your name.

Select 'Falgun' + ' '  + 'Vyas'

-- 2) Write the literal select statement that evaluates the product of 7 and 4.

Select 7 * 4 as product;

-- 3) Write the literal select statement that takes the difference of 7 and 4 then multiplies that difference by 8.

Select (7 - 4) * 8 as difference;

-- 4) Write a literal select statement that returns the phrase “Brewster’s SQL Training Class”. (Hint: note the single apostrophe in the string).

Select  'Brewster''s  SQL  Training  Class';

-- 5) Execute a literal SELECT statement that returns the phrase “Day 1 of Training” in one column and the result of 5*3 in another column.

Select 'Day 1 of Training', 5*3;

create table Employee 
(
id int,
name varchar (30),
department varchar (20),
salary int
);


-- 1. Insert a new employee record with all details provided directly

INSERT INTO Employee (id, name, department, salary) 
VALUES (101, 'Falgun Vyas', 'Engineering', 60000);

Select * from Employee;

-- 2. Add multiple new team members to the HR department at once

INSERT INTO Employee (id, name, department, salary) 
VALUES 
    (102, 'Nidhi Patel', 'Communication', 30000),
    (103, 'Kamini Vyas', 'HR', 100000),
    (104, 'Yash Patel', 'Manager', 70000);

 -- 3. Register an employee who hasn't been assigned a salary yet

 INSERT INTO Employee (id, name, department, salary) 
VALUES (105, 'Het Rathod', 'Sales', NULL);

 INSERT INTO Employee (id, name, department, salary) 
VALUES (106, 'Yash Trivedi', 'Cloud', 30000);

INSERT INTO Employee (id, name, department, salary) 
VALUES (107, 'Nisha Shah', 'Cloud', 45000);

INSERT INTO Employee (id, name, department, salary) 
VALUES (108, 'Gunjan Desai', 'DevOps', 28000);

INSERT INTO Employee (id, name, department, salary) 
VALUES (109, 'Hitesh Shah', 'AI', 45000);

INSERT INTO Employee (id, name, department, salary) 
VALUES (110, 'Mrunal Patel', 'Operations', 35000);

INSERT INTO Employee (id, name, department, salary) 
VALUES (111, 'Dihska Patel', 'Operations', 45000);

INSERT INTO Employee (id, name, department, salary) 
VALUES (112, 'Tithi Shah', 'Finance', 15000);

INSERT INTO Employee (id, name, department, salary) 
VALUES (113, 'Meha Desia', 'Finance', 30000);

Select * from Employee;

-- 4. Update the salary to 85,000 for everyone working in the 'Cloud' department

UPDATE Employee 
SET salary = 85000 
WHERE department = 'Cloud';


-- 5. Change both the department and salary for a specific employee by name

UPDATE Employee 
SET department = 'DevOps', salary = 95000 
WHERE name = 'Gunjan Desai';

-- 6.Give a flat 10% appraisal boost to employees working in the AI department

UPDATE Employee 
SET salary = salary * 1.10 
WHERE department = 'AI';

-- 7. Assign an initial entry-level salary of 30,000 to anyone whose salary column is completely blank (NULL)

UPDATE Employee 
SET salary = 30000 
WHERE salary IS NULL;

-- 8. Remove a specific employee from the system using their unique ID

DELETE FROM Employee 
WHERE id = 102;

-- 9. Remove all records belonging to a department that has been completely shut down

DELETE FROM Employee 
WHERE department = 'Operations';


-- 10. Drop records of any employee earning less than 20,000 in the Finance division

DELETE FROM Employee 
WHERE salary < 20000 AND department = 'Finance';




Select * From Employee;



