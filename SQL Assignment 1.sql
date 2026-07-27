use newjuly2026

create table rise
(EID INT,
Ename Varchar(255),
Eage INT,
Esalary money,
DOJ date)

select * from rise;

insert into rise values
(102,'Mahesh',21,21000,'2011-02-19'),
(103,'Naresh',22,22000,'2012-03-19'),
(104,'Ramesh',23,23000,'2013-04-19'),
(105,'Jayesh',24,24000,'2014-05-19')

select * from rise
where Esalary between 21000 AND 23000;

select * from rise
where (Eage = 21 AND Esalary = 21000) OR DOJ > '2013-01-01';

select * from rise
where Eage = 21 OR (Esalary = 22000 AND DOJ < '2012-03-19');


select * from rise
where Eage = 21 OR Esalary = 23000;


select * from rise
where Eage IN (21,22)

update rise
set Esalary = 30000
where Eage IN (21,22)

update rise
set Esalary = 40000
where Eage = 21 AND DOJ > '2012-01-01'

select * from rise;





