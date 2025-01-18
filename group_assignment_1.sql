-- practice database (company)
-- table employee , department , project , task 
-- proper documentation 
-- use all concepts,studied till now
-- implementation it properly and generate
-- REAL SITUATION BASED QUERIES


create database companyy;
use companyy;

drop database companyy;

-- TABLE 1
-- create table employee
create table employee(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Age INT,
Gender VARCHAR(10),
JobTitle VARCHAR(50) not null,
Department_id int not null,
Salary DECIMAL(10, 2),
HireDate DATE,
manager_id int

);


-- insert value into employee

-- Insert 10 records into the Employee table
INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Gender, JobTitle, Department_id, Salary, HireDate, Manager_id) VALUES
(1, 'John', 'Doe', 30, 'Male', 'Software Engineer', 101, 75000.00, '2020-06-15', 201),
(2, 'Jane', 'Smith', 28, 'Female', 'Data Analyst', 101, 68000.00, '2019-03-12', 202),
(3, 'Michael', 'Brown', 45, 'Male', 'Project Manager', 102, 90000.00, '2015-08-01', 203),
(4, 'Emily', 'Davis', 35, 'Female', 'HR Specialist', 103, 60000.00, '2018-11-20', 204),
(5, 'Chris', 'Wilson', 40, 'Male', 'Sales Manager', 104, 85000.00, '2016-07-30', 205),
(6, 'Sarah', 'Taylor', 32, 'Female', 'Marketing Manager', 105, 78000.00, '2021-01-10', 206),
(7, 'David', 'Clark', 29, 'Male', 'Graphic Designer', 106, 55000.00, '2020-04-05', 207),
(8, 'Emma', 'Thomas', 27, 'Female', 'Accountant', 107, 62000.00, '2022-09-15', 208),
(9, 'James', 'Moore', 50, 'Male', 'Senior Developer', 101, 95000.00, '2010-03-25', 201),
(10, 'Olivia', 'Martin', 26, 'Female', 'Content Writer', 105, 52000.00, '2021-10-01', 206);

-- queries

-- update employee name
update employee
set FirstName = 'Johny'
where JobTitle = 'Software Engineer';

-- count the total employee
select count(*) from employee;

-- employee with age between 30 to 40
select *from employee
where age between 30 and 40;

-- salary greater than  50000 latest 2
select *from employee
where salary > 50000
limit 2;


-- joint the tables with common attributes
select * 
from employee as a
inner join department as b
on a.department_id = b.department_id;

select a.firstname, b.DepartmentName
from employee as a
inner join department as b
on a.department_id = b.department_id
 ;

set sql_safe_updates=0;
set sql_safe_updates=1;


-- modify the attributes datatypes
alter table employee
modify column Department_id int;


alter table employee
add constraint fk_manager foreign key
(manager_id) references manager(manager_id)
ON DELETE set null
ON UPDATE CASCADE;

-- delete gender column
alter table employee
drop column gender;

-- display value who have "il" in their name
select * from employee
where firstname like  '%il%';

update employee set salary =
case
when age in (30,35) then 300000.00
when age in (45,40) then 39000.00
else 50000
end;

select* from employee;

set sql_safe_updates=0;

-- total salary received by employee
select sum(Salary) from employee;

-- deduct 20000 salary from Chris
select salary-20000 as update_salary
from employee
where firstname='Chris';

-- TABLE 2

-- Create the Department table
CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL,
    Manager_ID INT NOT NULL,
    Location VARCHAR(50),
    Budget DECIMAL(12, 2),
    EstablishedYear INT
);

drop table Department;

-- Insert 10 records into the Department table
INSERT INTO Department (Department_ID, DepartmentName, Manager_ID, Location, Budget, EstablishedYear) VALUES
(101, 'IT', 201, 'New York', 1500000.00, 2010),
(102, 'Operations', 202, 'San Francisco', 1200000.00, 2008),
(103, 'Human Resources', 203, 'Chicago', 800000.00, 2012),
(104, 'Sales', 204, 'Dallas', 1800000.00, 2015),
(105, 'Marketing', 205, 'Los Angeles', 1100000.00, 2013),
(106, 'Design', 206, 'Seattle', 950000.00, 2016),
(107, 'Finance', 207, 'Boston', 1700000.00, 2009),
(108, 'Legal', 208, 'Washington DC', 1300000.00, 2014),
(109, 'Customer Support', 209, 'Austin', 750000.00, 2017),
(110, 'Research and Development', 210, 'Denver', 2000000.00, 2005);

-- QUERIES

update department
set Location = 'chicago'
where location = 'los angeles';

-- show budgets in desc order of departments
select * from department
order by budget desc;

-- show how many states exist
select distinct location 
from department;

-- show how many employee live in particular location
select location ,count(*)
from department
group by location;

-- display average budget in state in desc order

select location ,max(budget)
from department
group by location
having max(budget) > 1500000
order by location desc;

select * from department;

alter table manager 
add constraint fk_dept
foreign key (Department_ID) references  department (Department_ID)
on delete set null 
on update cascade;

alter table manager
drop foreign key fk_dept;

-- show the location in capital
select upper(location)
from department;


-- TABLE 3 
-- Create the Manager table
CREATE TABLE Manager (
    Manager_ID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Department_ID INT NOT NULL,
    Email VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15)
);

alter table manager 
modify Department_ID int;

-- Insert 10 records into the Manager table
INSERT INTO Manager (Manager_ID, FirstName, LastName, Department_ID, Email, PhoneNumber) VALUES
(201, 'John', 'Doe', 101, 'john.doe@company.com', '123-456-7890'),
(202, 'Jane', 'Smith', 102, 'jane.smith@company.com', '987-654-3210'),
(203, 'Michael', 'Brown', 103, 'michael.brown@company.com', '555-678-1234'),
(204, 'Emily', 'Davis', 104, 'emily.davis@company.com', '222-333-4444'),
(205, 'Chris', 'Wilson', 105, 'chris.wilson@company.com', '111-222-3333'),
(206, 'Sarah', 'Taylor', 106, 'sarah.taylor@company.com', '444-555-6666'),
(207, 'David', 'Clark', 107, 'david.clark@company.com', '777-888-9999'),
(208, 'Emma', 'Thomas', 108, 'emma.thomas@company.com', '888-999-0000'),
(209, 'James', 'Moore', 109, 'james.moore@company.com', '999-000-1111'),
(210, 'Olivia', 'Martin', 110, 'olivia.martin@company.com', '123-321-4567');

-- queries
alter table employee
add constraint fk_manager foreign key
(manager_id) references manager(manager_id)
ON DELETE set null
ON UPDATE CASCADE;

-- update the values in both tables
update manager 
set manager_id= 1000
where manager_id = 201;

select * from employee;
select * from manager;

-- change the manager_id of John Doe
update manager
set manager_id = 101 
where manager_id = 202;

-- show manager firstname and last name together 
select concat(firstname,lastname) as full_name
from manager;
