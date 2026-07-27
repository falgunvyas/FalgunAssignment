create database CompanyDB;

use CompanyDB;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Department VARCHAR(20) NOT NULL,
    Designation VARCHAR(30) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Gender CHAR(1) NOT NULL,
    JoiningDate DATE NOT NULL,
    Age INT NOT NULL )

    select * from Employee;

    


-- 3. Add a new column Email to the Employee table.
ALTER TABLE Employees ADD Email VARCHAR(50);

-- 4. Modify the Email column to increase its size.
ALTER TABLE Employees Alter Column Email VARCHAR(100);

-- 5. Rename the column City to Location.
sp_rename 'Employees.City', 'Location'

-- 6. Rename the table Employee to EmployeeDetails and then rename it back to Employee.
sp_rename 'Employees', 'EmployeeDetails';
sp_rename 'EmployeeDetails', 'Employee';

-- 7. Drop the Email column from the Employee table.
ALTER TABLE Employee DROP COLUMN Email;

-- 8. Write a query to check the structure of the Employee table.
sp_help Employee;

-- 9. Make EmpID column the Primary Key of the Employee table.
ALTER TABLE Employee ADD PRIMARY KEY (EmpID);

-- 10. Add a NOT NULL constraint on the FirstName column.
ALTER TABLE Employee Alter Column FirstName VARCHAR(50) NOT NULL;

-- 11. Add a UNIQUE constraint on the column to ensure no two employees have the same email.
ALTER TABLE Employee ADD Email VARCHAR(100);
ALTER TABLE Employee ADD CONSTRAINT UQ_Email UNIQUE (Email);

-- 12. Add a DEFAULT constraint on the Department column.
ALTER TABLE Employee 
ADD CONSTRAINT default_Department DEFAULT 'General' For Department;

-- 13. Add a CHECK constraint on the Salary column (salary >= 10000).
ALTER TABLE Employee ADD CONSTRAINT CHK_Salary CHECK (Salary >= 10000);




-- 14. Add a CHECK constraint on the Age column (age between 18 and 60).
ALTER TABLE Employee ADD CONSTRAINT CHK_Age CHECK (Age BETWEEN 18 AND 60);
 
-- 15. Remove the CHECK constraint applied on the Salary column.
ALTER TABLE Employee 
DROP Constraint CHK_Salary;

-- 16. Add a Manager_EmpID column and apply a CHECK constraint so it cannot be equal to EmpID.
ALTER TABLE Employee ADD Manager_EmpID INT;
ALTER TABLE Employee ADD CONSTRAINT CHK_Manager CHECK (Manager_EmpID <> EmpID);

-- 17. Insert 15 records into the Employee table.




