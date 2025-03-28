-- Creating database Sales
create database Sales;

-- Creating new table Orders in Sales database
use Sales;
create table Orders(
Order_Id int PRIMARY KEY,
Customer_name varchar(50) NOT NULL,
Product_Category varchar(50) NOT NULL,
Ordered_item varchar(50) NOT NULL,
Contact_No varchar(25) UNIQUE
);

-- Questions ---------------------
-- 1) Add a new column named “order_quantity” to the orders table.
alter table Orders add column order_quantity int NOT NULL;

-- 2) Rename the orders table to the sales_orders table.
rename table Orders to sales_orders;

-- 3) Insert 10 rows into the sales_orders table.
insert into sales_orders ( Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity )
values 
(1, "John Mathai", "Electronics","TV", "9547623432", 1),
(2, "Rachel Varghese", "Clothing", "Jeans", "9856024685", 5 ),
(3, "Anupama Sivadas", "Electronics", "Laptop", "9047623412", 1 ),
(4, "Katherine Thomas", "Furniture", "Sofa", "9678642182", 2 ),
(5, "Esther Varghese", "Clothing", "Frock", "9046798218", 3 ),
(6, "Ciba Maria", "Furniture", "Dining table", "9460978228", 1 ),
(7, "Darshana D", "Clothing", "T-shirt", "908665221", 10 ),
(8, "Aneeta Mary", "Electronics", "Computer", "9994825641", 1 ),
(9, "Adarsh S", "Grocery", "Noodles", "9497888534", 2 ),
(10, "Laya Simon", "Grocery", "Biscuits", "9098756234", 1 );

-- to view the table and its values 
select * from sales_orders;

-- 4) Retrieve customer_name and Ordered_Item from the sales_orders table.
select Customer_name, Ordered_item from sales_orders;

-- 5) Use the update command to change the name of the product for any row. 
update sales_orders set Ordered_item = "Jumpsuit" where Order_Id= 5;

-- to view the table and its values
select * from sales_orders;

-- 6) Delete the sales_orders table from the database.
drop table sales_orders;

