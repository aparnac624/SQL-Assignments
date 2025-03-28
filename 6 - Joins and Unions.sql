use country_person_details;
select * from Country;
select * from Persons;

SET SQL_SAFE_UPDATES = 0;
delete from Persons where Id=11;
delete from Persons where Id=12;
delete from Persons where Id=5;
delete from Persons where Id=6;

-- Questions------------------------------------------------------------------------------------
-- (1) Perform inner join, Left join, and Right join on the tables. 
-- Inner Join
select Country.Id, Persons.Fname, Persons.Lname, Persons.Country_name, Persons.Rating from 
Persons inner join Country
on Country.Id = Persons.Country_Id;

-- Left Join
select Country.Id, Persons.Fname, Persons.Lname, Persons.Country_name, Persons.Rating from 
Persons left join Country
on Country.Id = Persons.Country_Id;

-- Right Join
select Country.Id, Persons.Fname, Persons.Lname, Persons.Country_name, Persons.Rating from 
Persons right join Country
on Country.Id = Persons.Country_Id;

-- (2) List all distinct country names from both the Country and Persons tables. 
select Country_name from Country
UNION
select Country_name from Persons;


-- (3) List all country names from both the Country and Persons tables, including duplicates.
select Country_name from Country
UNION ALL
select Country_name from Persons; 


-- (4) Round the ratings of all persons to the nearest integer in the Persons table.
select Id, Fname, Lname, Country_name, Rating, round(Rating) as Rounded_Rating from Persons;
