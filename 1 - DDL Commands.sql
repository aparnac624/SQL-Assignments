-- Creating database School
create database School;

-- Performing DDL commands CREATE, ALTER, DROP, RENAME, TRUNCATE on table Student

-- 1. Using database School
USE School;

-- 2. Creating table Student with fields Roll_No, Name, Marks and Grade
create table STUDENT( 
Roll_No INT PRIMARY KEY,
Name VARCHAR(50),
Marks INT,
Grade CHAR(1)
); 

-- 3. ALTER command
-- adding new columns address and phone number of student 
alter table STUDENT ADD column Address varchar(50);
alter table STUDENT Add column PhoneNumber varchar(20);
-- removing an existing column Phone number 
alter table STUDENT DROP column PhoneNumber;
-- renaming the column Name to Full_Name 
alter table STUDENT CHANGE Name Full_Name varchar(25);
-- modifying the datatype of existing column grade
alter table STUDENT MODIFY Grade varchar(5);


-- 4. RENAME command
-- renaming table name student
Rename table student to Student_Details;


-- insert values to table Student_Details
insert into Student_Details (Roll_No, Full_Name, Marks, Grade, Address)
Values
(1, "Anupama K", 90, 'A', "Santhimandiram, Pattom, Trivandrum "),
(2, "Aparna Das", 95,'A', " Panicker's Lane, Mannamoola, Trivandrum "),
(3, "Arun Shankar", 100, 'A', " Love Dale, K-Street, Pongumoodu, Trivandrum "),
(4, "Aravind Sivan", 65, 'B', " Nandanam, GCN- 235, Peroorkada, Trivandrum ");

-- view table student details
select * from Student_Details;


-- 5. TRUNCATE command
truncate table Student_Details;

-- view table student details
select * from Student_Details;

-- 6. DROP command
-- dropping table Student Details 
drop table Student_Details;
-- creating new database organisation
create database organisation;
-- dropping database organisation
drop database organisation;



-- Creating table Student with fields Roll_No, Name, Marks and Grade
create table STUDENT( 
Roll_No INT PRIMARY KEY,
Name VARCHAR(50),
Marks INT,
Grade CHAR(1)
); 

-- inserting values to table student
insert into STUDENT (Roll_No, Name, Marks, Grade)
Values
(1, "Anupama K", 90, 'A'),
(2, "Aparna Das", 95,'A'),
(3, "Arun Shankar", 100, 'A'),
(4, "Aravind Sivan", 65, 'B');


-- Questions  ------------------------------------------- 
-- 1) Use the select command to display the table.
select * from Student;

-- 2) Add a column named Contact to the STUDENT table.
alter table Student add column Contact varchar(20);

-- 3) Remove the Grade column from the Student table.
alter table Student drop column Grade;

-- 4) Rename the table to CLASSTEN.
rename table Student to CLASSTEN;

-- 5) Delete all rows from the table.
truncate table CLASSTEN;
select * from CLASSTEN;

-- 6)  Remove the table from the database.
drop table CLASSTEN;

