use newjuly2026;

-- To create a database for the college without using joins or subqueries, set up a Department table with DepartmentID and DepartmentName, 
-- and a Student table with fields like RollNo, StudentName, Course, Marks, City, Gender, Age, AdmissionDate, Fee, and DepartmentID.

-- You need to create two tables:
-- 1. Student — to store the details of each student mentioned above.
-- 2. Department — a small table to store department information, which will be linked
-- to the Student table using a foreign key relationship.
-- Decide the column names and appropriate data types yourself while creating both tables.
-- Use these two tables to answer all 100 questions given below.
-- Note: Do not use JOIN or Subquery based solutions anywhere in this assignment.

-- Create Department Table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Create Student Table
CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Course VARCHAR(50) NOT NULL,
    Marks DECIMAL(5,2) CHECK (Marks >= 0 AND Marks <= 100),
    City VARCHAR(50) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    Age INT CHECK (Age > 0),
    AdmissionDate DATE NOT NULL,
    Fee DECIMAL(10,2) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Insert Department Records
INSERT INTO Department (DepartmentID, DepartmentName) VALUES 
(1, 'Computer Science'),
(2, 'Commerce'),
(3, 'Arts'),
(4, 'Mechanical Engineering');

-- Insert 30 Student Records
INSERT INTO Student (RollNo, StudentName, Course, Marks, City, Gender, Age, AdmissionDate, Fee, DepartmentID) VALUES
(101, 'Aarav Sharma', 'B.Tech CS', 85.50, 'Vadodara', 'M', 20, '2024-07-10', 45000.00, 1),
(102, 'Diya Patel', 'B.Tech CS', 92.00, 'Ahmedabad', 'F', 19, '2024-07-11', 45000.00, 1),
(103, 'Rohan Mehta', 'B.Com', 68.00, 'Vadodara', 'M', 21, '2023-08-05', 25000.00, 2),
(104, 'Ananya Sen', 'B.A.', 74.50, 'Surat', 'F', 20, '2023-08-12', 20000.00, 3),
(105, 'Kabir Khan', 'B.Tech Mech', 62.00, 'Vadodara', 'M', 22, '2022-07-15', 50000.00, 4),
(106, 'Pooja Nair', 'B.Com', 81.00, 'Mumbai', 'F', 20, '2023-08-06', 25000.00, 2),
(107, 'Amit Joshi', 'B.Tech CS', 55.00, 'Rajkot', 'M', 20, '2024-07-12', 45000.00, 1),
(108, 'Neha Verma', 'B.A.', 88.00, 'Vadodara', 'F', 21, '2023-08-14', 20000.00, 3),
(109, 'Rahul Verma', 'B.Tech Mech', 79.50, 'Delhi', 'M', 23, '2022-07-18', 50000.00, 4),
(110, 'Simran Kaur', 'B.Com', 90.00, 'Ahmedabad', 'F', 19, '2023-08-08', 25000.00, 2),
(111, 'Jayesh Patel', 'B.Tech CS', 45.00, 'Vadodara', 'M', 20, '2024-07-13', 45000.00, 1),
(112, 'Meera Iyer', 'B.A.', 95.00, 'Pune', 'F', 22, '2023-08-15', 20000.00, 3),
(113, 'Kunal Shah', 'B.Tech Mech', 70.00, 'Surat', 'M', 21, '2022-07-20', 50000.00, 4),
(114, 'Tanvi Rao', 'B.Tech CS', 83.00, 'Vadodara', 'F', 19, '2024-07-14', 45000.00, 1),
(115, 'Vikas Dubey', 'B.Com', 65.50, 'Indore', 'M', 20, '2023-08-09', 25000.00, 2),
(116, 'Sneha Roy', 'B.Tech Mech', 77.00, 'Kolkata', 'F', 22, '2022-07-22', 50000.00, 4),
(117, 'Manish Kumar', 'B.A.', 59.00, 'Vadodara', 'M', 21, '2023-08-16', 20000.00, 3),
(118, 'Kavita Joshi', 'B.Tech CS', 91.50, 'Ahmedabad', 'F', 20, '2024-07-15', 45000.00, 1),
(119, 'Deepak Singh', 'B.Com', 82.00, 'Jaipur', 'M', 21, '2023-08-10', 25000.00, 2),
(120, 'Ritu Sen', 'B.A.', 66.00, 'Vadodara', 'F', 19, '2023-08-18', 20000.00, 3),
(121, 'Sameer Shaikh', 'B.Tech Mech', 73.00, 'Surat', 'M', 22, '2022-07-25', 50000.00, 4),
(122, 'Priya Das', 'B.Tech CS', 89.00, 'Vadodara', 'F', 20, '2024-07-16', 45000.00, 1),
(123, 'Karan Malhotra', 'B.Com', 53.00, 'Delhi', 'M', 20, '2023-08-11', 25000.00, 2),
(124, 'Nisha Pillai', 'B.A.', 94.00, 'Chennai', 'F', 21, '2023-08-19', 20000.00, 3),
(125, 'Arjun Reddy', 'B.Tech Mech', 80.50, 'Hyderabad', 'M', 21, '2022-07-26', 50000.00, 4),
(126, 'Puja Kumari', 'B.Tech CS', 76.00, 'Vadodara', 'F', 19, '2024-07-17', 45000.00, 1),
(127, 'Yash Gupta', 'B.Com', 61.00, 'Kanpur', 'M', 22, '2023-08-13', 25000.00, 2),
(128, 'Alia Bhatt', 'B.A.', 87.00, 'Mumbai', 'F', 20, '2023-08-20', 20000.00, 3),
(129, 'Harsh Wardhan', 'B.Tech Mech', 69.00, 'Vadodara', 'M', 23, '2022-07-28', 50000.00, 4),
(130, 'Tina Dabi', 'B.Tech CS', 98.00, 'Jaipur', 'F', 19, '2024-07-18', 45000.00, 1);

Select * from Department;

Select * from Student;

-- 1. Create a database for the college records.

CREATE DATABASE CollegeRecords;

USE CollegeRecords;

-- 2. Create the Department table.

CREATE TABLE Department1 (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL,
    HeadOfDepartment VARCHAR(50)
);

-- 3. Create the Student table with all required columns.

CREATE TABLE Student1 (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department1(DepartmentID)
);

-- 4. Add a new column to the Student table to store the student's email address.

ALTER TABLE Student1 
ADD EmailAddress VARCHAR(50);

-- 5. Modify the data type/size of the email column you just added.

ALTER TABLE Student1
Alter Column EmailAddress VARCHAR(100);

-- 6. Rename the newly added email column to something more suitable.

sp_rename 'EmailAddress','StudentEmail';


-- 7. Drop the email column from the Student table.

ALTER TABLE Student1 
DROP COLUMN StudentEmail;

-- 8. Rename the Student table to StudentRecords and then rename it back to Student.

sp_rename 'Student1', 'StudentRecords';
sp_rename 'StudentRecords', 'Student1';

-- 9. Write a query to view the complete structure of the Student table.

Select * from Student;


-- 10. Write a query to view the complete structure of the Department table.

Select * from Department;

-- 11. Truncate all the data from the Department table and recreate it.

TRUNCATE TABLE Department;

-- 12. Drop the Department table and create it again with the same structure.

DROP TABLE Department;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL,
    HeadOfDepartment VARCHAR(50)
);


-- Section 2: Constraints — PK, FK, UNIQUE, NOT NULL, DEFAULT, CHECK — Q13 to Q32

-- 13. Set the primary key on the Department table
ALTER TABLE Department 
ADD CONSTRAINT PK_Department PRIMARY KEY (dept_id);

-- 14. Set the primary key on the Student table
ALTER TABLE Student 
ADD CONSTRAINT PK_Student PRIMARY KEY (student_id);

-- 15. Add a foreign key on the Student table referencing Department
ALTER TABLE Student 
ADD CONSTRAINT FK_Student_Department FOREIGN KEY (dept_id) 
REFERENCES Department(dept_id);

-- 16. Test invalid foreign key insertion
INSERT INTO Student (student_id, name, dept_id) 
VALUES (999, 'John Doe', 9999); 

-- 17. Apply NOT NULL on student's name
ALTER TABLE Student 
ALTER COLUMN name SET NOT NULL;

-- 18. Apply NOT NULL on course column
ALTER TABLE Student 
ALTER COLUMN course SET NOT NULL;

-- 19. Apply UNIQUE constraint on roll number
ALTER TABLE Student 
ADD CONSTRAINT UQ_RollNumber UNIQUE (roll_number);

-- 20. Re-add and apply a UNIQUE constraint on the email column.
ALTER TABLE Student ADD COLUMN email VARCHAR(100);

ALTER TABLE Student ADD CONSTRAINT unq_email UNIQUE (email);

-- 21. Apply a DEFAULT constraint on the city column.
ALTER TABLE Student ALTER COLUMN city SET DEFAULT 'New York';

-- 22. Apply a DEFAULT constraint on the fee column.
ALTER TABLE Student ALTER COLUMN fee SET DEFAULT 0.00;

-- 23. Apply a CHECK constraint on the marks column.
ALTER TABLE Student ADD CONSTRAINT chk_marks CHECK (marks >= 0 AND marks <= 100);

-- 24. Apply a CHECK constraint on the age column.
ALTER TABLE Student ADD CONSTRAINT chk_age CHECK (age >= 15);

-- 25. Apply a CHECK constraint on the gender column.
ALTER TABLE Student ADD CONSTRAINT chk_gender CHECK (gender IN ('M', 'F'));

-- 26. Remove the CHECK constraint applied on the age column.
ALTER TABLE Student DROP CONSTRAINT chk_age;

-- 27. Remove the UNIQUE constraint applied on the roll number column.
ALTER TABLE Student DROP CONSTRAINT unq_roll_no;

-- 28. Remove the DEFAULT constraint applied on the fee column.
ALTER TABLE Student ALTER COLUMN fee DROP DEFAULT;

-- 29. Remove the foreign key constraint from the Student table.
ALTER TABLE Student DROP CONSTRAINT fk_student_dept;

-- 30. Add the foreign key constraint back to the Student table.
ALTER TABLE Student ADD CONSTRAINT fk_student_dept FOREIGN KEY (dept_id) REFERENCES Department(dept_id);

-- 31. Remove the primary key from the Department table and then reapply it.
-- Note: You must temporarily drop the referencing FK first if it is active.
ALTER TABLE Student DROP CONSTRAINT fk_student_dept;
ALTER TABLE Department DROP PRIMARY KEY;
ALTER TABLE Department ADD CONSTRAINT pk_dept PRIMARY KEY (dept_id);
ALTER TABLE Student ADD CONSTRAINT fk_student_dept FOREIGN KEY (dept_id) REFERENCES Department(dept_id);



-- Section 3: DML (Data Manipulation Language) — Q33 to Q47

-- 33. Insert 5 departments

INSERT INTO Department (dept_id, dept_name) VALUES 
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Physics'),
(4, 'Chemistry'),
(5, 'Business');

-- 34. Insert 20 student records

INSERT INTO Student (roll_no, name, course, city, marks, fees, dept_id, age) VALUES 
(1, 'Aarav', 'Computer Science', 'Vadodara', 85, 12000, 1, 20),
(2, 'Vivaan', 'Mathematics', 'Surat', 78, 10000, 2, 19),
(3, 'Aditya', 'Physics', 'Ahmedabad', 92, 11000, 3, 21),
(4, 'Diya', 'Chemistry', 'Vadodara', 65, 9500, 4, 20),
(5, 'Kabir', 'Business', 'Rajkot', 88, 15000, 5, 22),
(6, 'Ananya', 'Computer Science', 'Mumbai', 90, 12000, 1, 20),
(7, 'Rohan', 'Mathematics', 'Vadodara', 45, 10000, 2, 19),
(8, 'Meera', 'Physics', 'Delhi', 74, 11000, 3, 21),
(9, 'Ishaan', 'Chemistry', 'Surat', 82, 9500, 4, 18),
(10, 'Riya', 'Business', 'Ahmedabad', 95, 15000, 5, 23),
(11, 'Karan', 'Computer Science', 'Pune', 60, 12000, 1, 20),
(12, 'Pooja', 'Mathematics', 'Vadodara', 30, 10000, 2, 19),
(13, 'Amit', 'Physics', 'Mumbai', 55, 11000, 3, 22),
(14, 'Neha', 'Chemistry', 'Rajkot', 79, 9500, 4, 20),
(15, 'Rahul', 'Business', 'Delhi', 81, 15000, 5, 21),
(16, 'Sneha', 'Computer Science', 'Surat', 89, 12000, 1, 19),
(17, 'Vikas', 'Mathematics', 'Ahmedabad', 91, 10000, 2, 20),
(18, 'Priya', 'Physics', 'Vadodara', 32, 11000, 3, 21),
(19, 'Ajay', 'Chemistry', 'Pune', 68, 9500, 4, 18),
(20, 'Kavita', 'Business', 'Vadodara', 77, 15000, 5, 22);

-- 35 Insert a record into the Student table without providing a value for the city column, to check the DEFAULT constraint.
INSERT INTO Student (roll_no, name, course, marks, fees, dept_id, age) 
VALUES (21, 'Alok', 'Computer Science', 80, 12000, 1, 20);

-- 36. Insert a record into the Student table without providing a value for the fee column, to check the DEFAULT constraint.
INSERT INTO Student (roll_no, name, course, city, marks, dept_id, age) 
VALUES (22, 'Tina', 'Mathematics', 'Vadodara', 85, 2, 19);

-- 37.Update the marks of a student whose roll number is a specific value, increasing it by
UPDATE Student SET marks = marks + 5 WHERE roll_no = 1;

-- 38.Update the fee amount of all students belonging to a particular course.
UPDATE Student SET fees = 13000 WHERE course = 'Computer Science';

-- 39.Update the city of a student from one city to another.
UPDATE Student SET city = 'Mumbai' WHERE roll_no = 2;

-- 40. Update student department:

UPDATE Student SET dept_id = 2 WHERE roll_no = 3;

-- 41.Delete the record of a student with a specific roll number.

DELETE FROM Student WHERE roll_no = 20;

-- 42.Delete all students whose marks are less than 35.

DELETE FROM Student WHERE marks < 35;

-- 43.Delete all students belonging to a particular city.

DELETE FROM Student WHERE city = 'Surat';

-- 44. Check NOT NULL on name:

INSERT INTO Student (roll_no, course, city, marks, fees, dept_id, age) 
VALUES (23, 'Physics', 'Vadodara', 70, 11000, 3, 20);

-- 45. Check UNIQUE on roll number

INSERT INTO Student (roll_no, name, course, city, marks, fees, dept_id, age) 
VALUES (1, 'Duplicate User', 'Physics', 'Vadodara', 70, 11000, 3, 20);

-- 46. Check minimum age constraint

INSERT INTO Student (roll_no, name, course, city, marks, fees, dept_id, age) 
VALUES (24, 'Baby', 'Physics', 'Vadodara', 70, 11000, 3, 15);

-- 47. Check maximum marks constraint (> 100)

UPDATE Student SET marks = 105 WHERE roll_no = 1;

Section 4: Operators (Q48–Q62)
 
-- 48.Display all students whose marks are greater than 75. 
SELECT * FROM students WHERE marks > 75;

-- 49.Display all students whose fee is less than or equal to 20,000.
SELECT * FROM students WHERE fee <= 20000;

-- 50.Display all students whose age is not equal to 18.
SELECT * FROM students WHERE age <> 18; (or age != 18)

-- 51.Display all students belonging to the 'Computer Science' course AND having marks greater than 60.
SELECT * FROM students WHERE course = 'Computer Science' AND marks > 60;

-- 52.Display all students belonging to the 'Computer Science' course OR the 'Commerce' course. 
SELECT * FROM students WHERE course = 'Computer Science' OR course = 'Commerce';

-- 53.Display all students whose marks are BETWEEN 50 and 90. 
SELECT * FROM students WHERE marks BETWEEN 50 AND 90;

-- 54.Display all students whose fee is BETWEEN 10,000 and 30,000.
SELECT * FROM students WHERE fee BETWEEN 10000 AND 30000;

-- 55.Display all students whose city is IN ('Delhi', 'Jaipur', 'Ahmedabad'). 
SELECT * FROM students WHERE city IN ('Delhi', 'Jaipur', 'Ahmedabad');

-- 56.Display all students whose course is NOT IN ('Arts', 'Commerce'). 
SELECT * FROM students WHERE course NOT IN ('Arts', 'Commerce');

-- 57.Display all students whose name starts with the letter 'S' using the LIKE operator.
SELECT * FROM students 
WHERE name LIKE 'S%';

-- 58.Display all students whose name ends with the letter 'n' using the LIKE operator.
SELECT * FROM students 
WHERE name LIKE '%n';

-- 59.Display all students whose name contains the substring 'an' anywhere in it.
SELECT * FROM students 
WHERE name LIKE '%an%';

-- 60.Display all students whose gender is 'F' and marks are greater than 80.
SELECT * FROM students 
WHERE gender = 'F' AND marks > 80;

-- 61.Display all students whose department value IS NULL (if any).
SELECT * FROM students 
WHERE department IS NULL;

-- 62.Display all students whose department value IS NOT NULL.
SELECT * FROM students 
WHERE department IS NOT NULL;


-- 63.Total number of students
SELECT COUNT(*) AS total_students 
FROM students;


-- 64.Total number of students in 'Computer Science'
SELECT COUNT(*) AS cs_students 
FROM students 
WHERE course = 'Computer Science';

-- 65.Total fee collected from all students
SELECT SUM(fee) AS total_fees 
FROM students;

-- 66.Total fee collected from a specific course
SELECT SUM(fee) AS course_total_fees 
FROM students 
WHERE course = 'Specific Course';

-- 67.Average marks of all students 
SELECT AVG(marks) AS average_marks 
FROM students;

-- 68.Average fee paid by students from a specific city
SELECT AVG(fee) AS average_city_fee 
FROM students 
WHERE city = 'Specific City';

-- 69.Highest marks scored by any student
SELECT MAX(marks) AS highest_marks 
FROM students;


-- 70.Lowest marks scored by any student
SELECT MIN(marks) AS lowest_marks 
FROM students;

-- 71.Highest fee paid by any student
SELECT MAX(fee) AS highest_fee 
FROM students;

-- 72.Lowest fee paid by any student
SELECT MIN(fee) AS lowest_fee 
FROM students;

-- 73.Average age of all students
SELECT AVG(age) AS average_age 
FROM students;

-- 74.Total number of distinct courses offered
SELECT COUNT(DISTINCT course) AS unique_courses 
FROM students;

-- 75.Total number of distinct cities
SELECT COUNT(DISTINCT city) AS unique_cities 
FROM students;

-- 76.Maximum age among all students
SELECT MAX(age) AS max_age 
FROM students;

-- 77.Minimum age among all students
SELECT MIN(age) AS min_age 
FROM students;

-- 78.Sum of marks of all students combined
SELECT SUM(marks) AS total_marks 
FROM students;

-- 79.Average marks of only female students
SELECT AVG(marks) AS female_average_marks 
FROM students 
WHERE gender = 'Female';

-- 80.Count of students who scored more than 90 marks
SELECT COUNT(*) AS high_scorers 
FROM students 
WHERE marks > 90;

--81. Display the total number of students in each course, using GROUP BY. 
SELECT course, COUNT(*) AS total_students 
FROM students 
GROUP BY course;

--82. Display the average marks of students, grouped by course.
SELECT course, AVG(marks) AS average_marks 
FROM students 
GROUP BY course;

--83. Display the total fee collected, grouped by department.
SELECT department, SUM(fee) AS total_fee_collected 
FROM students 
GROUP BY department;

--84. Display the maximum marks scored, grouped by city.
SELECT city, MAX(marks) AS max_marks 
FROM students 
GROUP BY city;

--85. Display the minimum age, grouped by gender.
SELECT gender, MIN(age) AS min_age 
FROM students 
GROUP BY gender;

--86. Display the count of students, grouped by city.
SELECT city, COUNT(*) AS student_count 
FROM students 
GROUP BY city;

--87. Display the average fee, grouped by course and city together.
SELECT course, city, AVG(fee) AS average_fee 
FROM students 
GROUP BY course, city;

--88. Display the sum of marks, grouped by department.
SELECT department, SUM(marks) AS total_marks 
FROM students 
GROUP BY department;

--89. Display courses having more than 5 students enrolled, using HAVING.
SELECT course, COUNT(*) AS student_count 
FROM students 
GROUP BY course 
HAVING COUNT(*) > 5;

--90. Display cities having an average fee greater than 15,000, using HAVING.
SELECT city, AVG(fee) AS average_fee 
FROM students 
GROUP BY city 
HAVING AVG(fee) > 15000;

--91. Display departments having a total student count greater than 3, using HAVING.
SELECT department, COUNT(*) AS student_count 
FROM students 
GROUP BY department 
HAVING COUNT(*) > 3;

--92. Display courses having an average marks greater than 70, using HAVING.
SELECT course, AVG(marks) AS average_marks 
FROM students 
GROUP BY course 
HAVING AVG(marks) > 70;

--93. Display genders having a maximum marks value greater than 95, using HAVING.
SELECT gender, MAX(marks) AS max_marks 
FROM students 
GROUP BY gender 
HAVING MAX(marks) > 95;

--94. Display all student records sorted by marks in descending order, using ORDER BY.
SELECT * FROM students 
ORDER BY marks DESC;

--95. Display all student records sorted by fee in ascending order.
SELECT * FROM students 
ORDER BY fee ASC;

--96. Display all student records sorted by course (ascending) and then marks (descending).
SELECT * FROM students 
ORDER BY course ASC, marks DESC;

--97. Display all student records sorted by admission date, showing the most recently admitted students first.
SELECT * FROM students 
ORDER BY admission_date DESC;

--98. Display the top 10 students with the highest marks, using ORDER BY along with a row-limiting clause.
SELECT * FROM students 
ORDER BY marks DESC 
LIMIT 10;

--99. Display all distinct courses sorted alphabetically.
SELECT DISTINCT course 
FROM students 
ORDER BY course ASC;

--100. Display department-wise student count sorted from highest to lowest count, combining GROUP BY and ORDER BY.
SELECT department, COUNT(*) AS student_count 
FROM students 
GROUP BY department 
ORDER BY student_count DESC;