-- Creating database organisation
create database organisation;

-- creating table Managers
use organisation;
create table Managers (
Manager_Id int PRIMARY KEY,
First_name varchar(25) NOT NULL,
Last_name varchar(25) NOT NULL, 
DOB DATE NOT NULL,
Age int CHECK (Age >= 18),
Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
Gender varchar(10),
Department varchar(50),
Salary DECIMAL(10,2) NOT NULL
);

select * from Managers;

-- Questions ------------------------------------
-- 1) Insert 10 rows
insert into Managers ( Manager_Id, First_name, Last_name, DOB, Age, Gender, Department, Salary )
values
(1, "Anupama", "Natesan", "1990-05-04", 35, "Female", "Marketing", 25000 ),
(2, "Saranya", "Satheesh", "1997-03-04", 28, "Female", "IT", 50000 ),
(3, "Aaliya", "Thomas", "1998-05-12", 26, "Female", "Finance", 45000 ),
(4, "Tissa", "Sunny", "1990-05-16", 35, "Female", "HR", 30000 ),
(5, "Fathima", "Nazriya", "1990-05-14", 35, "Female", "Marketing", 25000 ),
(6, "Athira", "Mohan", "1990-05-09", 35, "Female", "Sales", 25000 ),
(7, "Janaki", "Easwar", "1999-08-22", 26, "Female", "IT", 60000 ),
(8, "Arunkumar", "S", "1991-04-04", 34, "Male", "Finance", 30000 ),
(9, "Akhil", "Chandran", "2000-01-02", 25, "Male", "Sales", 15000 ),
(10, "Sidharth", "Satheesh", "1996-04-27", 28, "Male", "IT", 25000 );

-- view the table
select * from Managers;

-- 2) Write a query that retrieves the name and date of birth of the manager with Manager_Id 1.
select First_name, Last_name, DOB from Managers where Manager_Id = 1;


-- 3) Write a query to display the annual income of all managers. 
select First_name, Last_name, Salary, (Salary*12) as "Annual Income" from Managers;

-- 4) Write a query to display records of all managers except ‘Aaliya’.
select * from Managers where First_name!="Aaliya";

-- 5) Write a query to display details of managers whose department is IT and earns more than 25000 per month.
select * from Managers where Department = "IT" and Salary > 25000;

-- 6) Write a query to display details of managers whose salary is between 10000 and 35000.
select * from Managers where Salary between 10000 and 35000;

