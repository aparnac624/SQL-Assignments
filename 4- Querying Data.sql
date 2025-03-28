-- creating new database person details
create database person_details;

use person_details;

-- creating tables Country and Persons
create table Country
(
ID int PRIMARY KEY,
Country_name varchar(25),
Population int,
Area int
);

create table Persons
(
ID int PRIMARY KEY,
Fname varchar(50),
Lname varchar(50),
Population int,
Rating decimal(3,2),
Country_Id int,
Country_name varchar(50),
FOREIGN KEY (Country_Id) REFERENCES Country(ID)
); 

-- Inserting values to both the tables Country and Persons
insert into Country (ID, Country_name, Population, Area) 
VALUES
(1, 'USA', 400000000, 925566517),
(2, 'Canada', 38000000, 9976140),
(3, 'UK', 67000000, 243610),
(4, 'India', 1380004385, 3287263),
(5, 'Australia', 25600000, 7692024),
(6, NULL, 83000000, 357022),
(7, 'Canada', 67000000, 551695),
(8, 'Italy', 60000000, 301340),
(9, 'UK', 125000000, 377975),
(10, 'China', 1398000000, 9596961);

-- display all data from Country table
select * from Country;


insert into Persons (ID, Fname, Lname, Population, Rating, Country_Id, Country_name) 
VALUES
(1, 'John', 'Doe', 331000000, 4.8, 1, 'USA'),
(2, 'Jane', 'Smith', 38000000, 4.3, 2, 'Canada'),
(3, 'William', 'Brown', 67000000, 3.9, 3, 'UK'),
(4, 'Emma', 'Johnson', 1380004385, 5.0, 4, 'India'),
(5, 'Olivia', 'Williams', 25600000, 4.5, 5, 'Australia'),
(6, 'Sophia', 'Jones', 83000000, 4.2, 6, NULL),
(7, 'Liam', 'Garcia', 67000000, 4.7, 7, 'Canada'),
(8, 'Mason', 'Martinez', 60000000, 3.8, 8, 'Italy'),
(9, 'Ethan', 'Hernandez', 125000000, 4.9, 9, 'UK'),
(10, 'Ava', 'Lopez', 1398000000, 4.6, 10, 'China');

-- display all data from Persons table
select * from Persons;


-- Questions ----------------------------------------
-- 1) List the distinct country names from the Persons table
select distinct Country_name from Persons;

-- 2) Select first names and last names from the Persons table with aliases.
select Fname as 'First Name',Lname as 'Last name' from Persons;

-- 3) Find all persons with a rating greater than 4.0.
select * from Persons where Rating > 4.0;

-- 4) Find countries with a population greater than 10 lakhs.
select Country_name, Population from Country where Population > 1000000;

-- 5) Find persons who are from 'USA' or have a rating greater than 4.5. 
select * from Persons where Country_name ='USA' or Rating > 4.5;

-- 6) Find all persons where the country name is NULL.
 select * from Persons where Country_name IS NULL;
 
-- 7) Find all persons from the countries 'USA', 'Canada', and 'UK'.
select Fname, Lname, Country_name from Persons where Country_name IN ('USA','Canada', 'UK');
 
-- 8) Find all persons not from the countries 'India' and 'Australia'. 
select Fname, Lname, Country_name from Persons where Country_name NOT IN ('India','Australia');

-- 9) Find all countries with a population between 5 lakhs and 20 lakhs. 
select Country_name, Population from Country where Population between 500000 and 2000000;

-- 10) Find all countries whose names do not start with 'C'.
select Country_name from Country where Country_name NOT LIKE 'C%';

