use newjuly2026

create table rishabhsoft
( 
  EmployeeID INT,
  Name Varchar(20),
  Department Varchar(30),
  Salary Money,
  Experience INT,
  City Varchar(30)
  );

 insert into rishabhsoft values
(101,'Falgun Vyas','IT',50000,10,'Vadodara'),
(102,'Tejaswini Panoli','Manager',80000,15,'Vadodara'),
(103,'Kinjal Dave','HR',40000,5,'Delhi'),
(104,'Ajay Patel','IT',60000,9,'Mumbai'),
(105,'Gajdendra Patil','Lecture',25000,4,'Vadodara'),
(106,'Nidhi Patel','IT',40000,10,'Mumbai'),
(107,'Aesha Patel','HR',30000,12,'Delhi')

Select * From rishabhsoft;



-- 1. Write a query to display all employees whose salary is greater than 50,000.

select * from rishabhsoft
where Salary > 50000;

-- 2. Retrieve employees who work in the IT department and have more than 5 years of experience.

select * from rishabhsoft
where Department = 'IT' AND Experience > 5;

-- 3. Write a query to display employees whose salary is between 45,000 and 60,000.

select * from rishabhsoft
where Salary BETWEEN 45000 AND 60000;

-- 4. Display employees whose city is either Mumbai or Delhi.

select * from rishabhsoft
where City IN ('Mumbai', 'Delhi');

-- 5. Write a query to display employee name along with their annual income

select Name, Salary * 12 As Annual_Income
from rishabhsoft;

-- 6. Find employees whose name ends with the letter 'A'.

select * from rishabhsoft
where Name like 'A%';

-- 7. Find the highest salary among all employees.

select MAX(Salary) as Highest_Salary
from rishabhsoft;

-- 8. Find the total bonus paid to employees in the IT department.

select SUM(Salary) as Total_IT_Bonus
from rishabhsoft
where Department = 'IT';

-- 9. Display the minimum and maximum experience of employees.

select MIN(Experience) as mini_experince, MAX(Experience) as max_experience 
from rishabhsoft;

-- 10.Count the number of employees in each department.

SELECT Department, COUNT(*) AS Total_Employees 
FROM rishabhsoft 
GROUP BY Department;


-- 11. Find the total bonus paid to employees in the IT department.

select SUM(Salary) as Total_IT_Bonus
from rishabhsoft
where Department = 'IT';


-- 12.Write an SQL statement to add a new column named Email of type VARCHAR(100) to the Employees table.

ALTER TABLE rishabhsoft 
ADD Email VARCHAR(100);

-- 13. Write an SQL statement to modify the Salary column so that it becomes DECIMAL(10,2).

ALTER TABLE rishabhsoft 
alter column Salary DECIMAL(10,2);

