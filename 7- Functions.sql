use country_person_details;
select * from Country;
select * from Persons;

-- Questions ------------------------------------------------------------------
-- 1. Add a new column called DOB in Persons table with data type as Date. 
alter table Persons add column DOB Date;
select * from Persons;

update Persons
set DOB='1990-05-15'
where Id=1;

update Persons
set DOB='1985-02-20'
where Id=2;

update Persons
set DOB='1992-07-25'
where Id=3;

update Persons
set DOB='1988-03-30'
where Id=4;

update Persons
set DOB='1998-12-01'
where Id=7;

update Persons
set DOB='1982-04-18'
where Id=8;

update Persons
set DOB='1994-06-05'
where Id=9;

update Persons
set DOB='1991-03-12'
where Id=10;

-- 2. Write a user-defined function to calculate age using DOB.
delimiter $$
create function calculateage (DOB Date)
returns int 
deterministic
begin
	declare age int;
	set age = timestampdiff(YEAR, DOB, CURDATE());
    return age;
end $$
delimiter ;

select calculateage('1994-12-16') as 'Calculated Age';


-- 3. Write a select query to fetch the Age of all persons using the function that has been created. 
select Id, Fname, Lname, Rating, Country_name, DOB, calculateage(DOB) as 'Age' from Persons;


-- 4. Find the length of each country name in the Country table. 
select Country_name, length(Country_name) as 'Length of Country name' from Country;


-- 5. Extract the first three characters of each country's name in the Country table. 
select Country_name, left(Country_name, 3) as 'First 3 characters' from Country;
 

-- 6. Convert all country names to uppercase and lowercase in the Country table.
select Country_name, upper(Country_name) as 'Uppercase', lower(Country_name) as 'Lowercase' from Country;
