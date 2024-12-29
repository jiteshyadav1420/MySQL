-- database grocery shopping management 
-- create 3 table including proper datatypes constraints 5 min attributes 
-- write drop truncate select update delete alter and rename 
-- try to write conditional queries optional

-- create database grocery_shopping_management 

create database  grocery_shopping_management ;

DROP DATABASE grocery_shopping_management ;

-- use your database 
use  grocery_shopping_management ;

-- table 1 
create table staff(
staff_id  int primary key,
staff_name varchar (100),
salary int not null,
location varchar (100),
contact varchar (100)
);

-- insert values into tables

insert into staff values
(1,'jitu',12000,'thane','111-123-1234'),
(2,'rohan',10000,'thane','222-123-1234'),
(3,'raju',100000,'thane','333-123-1234'),
(4,'rajesh',15000,'manpada','444-123-1234'),
(5,'ramu',16000,'matunga','555-123-1234');


-- select query
select * from staff;

-- rename query
-- rename a specific column

alter  table staff
rename column contact to phone;

-- alter query
-- alter specific column

alter table staff
modify column phone varchar(150);

-- delete query
-- delete a specific record

set sql_safe_updates = 0;
set sql_safe_updates = 1; -- (for enable)

delete from staff
where phone = '111-123-1234';

-- update query

update staff
-- update a new record 

set staff_name = 'matty' , salary = 500000
where location = 'matunga';

-- table 2

create table stock(
stock_id  int primary key,
stock_name varchar (100) NOT NULL,
quntity varchar (100) not null,
branch varchar (100),
supplier_contact varchar (100),
foreign key (stock_id) references STAFF (STAFF_ID)
);

-- insert values into tables

insert into stock values

(1,'CASHEW','10KG','BHANDUP','111-123-1444'),
(2,'RAISIN','12KG','thane','222-777-5555'),
(3,'RICE','14KG','VIKROLI','333-123-1234'),
(4,'WHEAT','15KG','manpada','444-123-6666'),
(5,'SUGAR','19KG','matunga','555-987-4545');

-- select query
select * from stock;

-- rename query
-- rename a specific column
alter  table stock
rename column BRANCH to BRANCHES;

-- alter query
-- alter specific column

alter table stock
modify column BRANCHES varchar(200);

-- delete query
-- delete a specific record

set sql_safe_updates = 0;
set sql_safe_updates = 1; -- (for enable)

delete from stock
where STOCK_NAME = 'CASHEW';


-- update query
-- update a new record 

update stock
set STOCK_NAME = 'ALMOND' , supplier_contact = '999-000-1233'
where location = 'VIKROLI';

create table SALES(
SALES_ID  int primary key,
sales varchar (100) NOT NULL,
quntity_SALES varchar (100) not null,
branches varchar (100),
agent varchar (100),
foreign key (SALES_ID) references stock (stock_id)
);

-- insert values into tables

insert into SALES values

(1,'raisin','11KG','thane','ramesh'),
(2,'almond','15KG','bhandup','rajan'),
(3,'cashew','16KG','manpada','rohan'),
(4,'salt','17KG','nashik','jitesh'),
(5,'wheat','18KG','matunga','anjali');

-- select query
select * from SALES;

-- rename query
-- rename a specific column

alter  table sales
rename column agent to agents;

-- alter query
-- alter specific column

alter table sales
modify column quntity_SALES varchar(400);

-- delete query
-- delete a specific record

set sql_safe_updates = 0;
set sql_safe_updates = 1; -- (for enable)


delete from sales
where branches = 'matunga';


-- update query
-- update a new record 

update sales
set branches = 'sion' , sales = '10 kg'
where agents = 'jitesh';

















































