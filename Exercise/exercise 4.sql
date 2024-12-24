/* Pick the Database: MNC

-You are the Database Manager of a MNC.
 Design a database system to organize and manage information efficiently.
 
-Create 5 Tables with at least 5 Attributes Each
 
-Insert at least 10 Records in Each Table & Show Data 
 
-Write proper conditional queries for topics : 
    Select Query, truncate, drop, Rename, Update, Alter, Delete, SQL_SAFE_UPDATES
*/


-- CREATE THE MNC (MULTI NATIONAL COMPANY) DATABASE
CREATE DATABASE MNC;

-- use your database  
use mnc;

drop database mnc;


-- table 1 (companies)
CREATE TABLE COMPANIES(COMPANY_ID INT auto_increment primary KEY,
COMPANY_NAME  VARCHAR(100) NOT NULL,
HEADQUARTERS_LOCATION VARCHAR(100),
ESTABLISHED_DATE DATE,
INDUSTRY VARCHAR(100) ,
REVENUE DECIMAL (15, 2) CHECK (REVENUE >=0), -- REVENUE MUST BE  NON_NEGATIVE
EMPLOYEE_COUNT INT default 0  CHECK (EMPLOYEE_COUNT >= 0),-- EMPLOYEE COUNT MUST BE NON_NEGATIVE
WEBSITE VARCHAR(255) UNIQUE, -- UNIQUE WEBSITE URL FOR THE COMPPANY
CREATED_AT timestamp default current_timestamp, --
UPDATED_AT timestamp default current_timestamp ON UPDATE current_timestamp,
UNIQUE (COMPANY_NAME)
);

DROP TABLE COMPANIES ; 

-- INSERT VALUE IN TABLE 
-- insert 10 records

INSERT INTO Companies (company_name, headquarters_location, established_date, industry, revenue, 
employee_count, website)
VALUES 
    ('Tata Consultancy Services', 'Mumbai, Maharashtra', '1968-04-01', 'Information Technology', 
    20000000000.00, 500000, 'https://www.tcs.com'),
    ('Reliance Industries Limited', 'Mumbai, Maharashtra', '1960-05-08', 'Conglomerate', 80000000000.00, 200000, 'https://www.ril.com'),
    ('Infosys', 'Bengaluru, Karnataka', '1981-07-02', 'Information Technology', 13000000000.00, 250000, 'https://www.infosys.com'),
    ('Wipro', 'Bengaluru, Karnataka', '1945-12-29', 'Information Technology', 8000000000.00, 200000, 'https://www.wipro.com'),
    ('HDFC Bank', 'Mumbai, Maharashtra', '1994-08-01', 'Banking', 15000000000.00, 120000, 'https://www.hdfcbank.com'),
    ('ICICI Bank', 'Mumbai, Maharashtra', '1994-01-05', 'Banking', 12000000000.00, 100000, 'https://www.icicibank.com'),
    ('Bharti Airtel', 'New Delhi', '1995-07-07', 'Telecommunications', 15000000000.00, 30000, 'https://www.airtel.in'),
    ('State Bank of India', 'Mumbai, Maharashtra', '1955-01-01', 'Banking', 20000000000.00, 250000, 'https://www.sbi.co.in'),
    ('Hindustan Unilever Limited', 'Mumbai, Maharashtra', '1933-10-17', 'Consumer Goods', 6000000000.00, 40000, 'https://www.hul.co.in'),
    ('Larsen & Toubro', 'Mumbai, Maharashtra', '1938-02-07', 'Engineering & Construction', 15000000000.00, 50000, 'https://www.larsentoubro.com');

TRUNCATE TABLE COMPANIES;
-- 1 SELECT QUERIES 

-- SELECT ALL RECORD 
SELECT * FROM COMPANIES ;

-- 1 SELECT SPECIFIC COLUMN 
SELECT industry FROM COMPANIES ;

-- 2 SELECT COMPANIES IN A SPECIFIC INDUSTRY 
SELECT * FROM COMPANIES WHERE INDUSTRY = 'INFORMATION TECHNOLOGY';

-- 3 SELECT COMPANIES WITH REVENUE GREATER THAN CERTAIN AMOUNT 
SELECT * FROM COMPANIES WHERE REVENUE > 10000000000.00;

-- 4 SELECT COMPANIES ESTABLISH IN A SPECIFIC YEAR 
SELECT * FROM COMPANIES WHERE YEAR (ESTABLISHED_DATE )= 1994;

-- 5 SELECT COMPANIES ORDERED BY REVENUE IN DECENDING ORDER 
 SELECT * FROM COMPANIES ORDER BY REVENUE DESC;

-- 6 SELECT COMPANIES WITH A SPECIFIC HEADQUARTERS LOCATION 
SELECT * FROM Companies WHERE headquarters_location = 'Mumbai, Maharashtra';

 -- 7. Select Companies with Employee Count Greater Than a Certain Number
 SELECT * FROM COMPANIES WHERE EMPLOYEE_COUNT > 100000;

-- 8. Select Companies Established After a Certain Date
SELECT * FROM Companies WHERE established_date < '2000-01-01';

-- 9. Select Companies with a Revenue Between Two Values
select * from companies where revenue between 5000000000.00 AND 20000000000.00;

-- 10. Count the Number of Companies in Each Industry
select industry ,count(*) company_count from companies group by industry;

select HEADQUARTERS_LOCATION , count(*)  company_count from companies group by HEADQUARTERS_LOCATION;


-- DISPLAY SAFE UPDATE MODE TEMPORARILY
 SET SQL_SAFE_UPDATES = 0; 

SET SQL_SAFE_UPDATES = 1; -- RE-ENABLE SAFE UPDATES

-- ALTER QUERIES
-- 1. Add a New Column
ALTER TABLE Companies 
ADD column stock_symbol VARCHAR(10);

-- 2. Modify an Existing Column
ALTER TABLE Companies 
modify revenue DECIMAL(20, 2) CHECK (revenue >= 0);

-- 3 DROP A COLUMN 
ALTER TABLE COMPANIES
DROP COLUMN STOCK_SYMBOL;

-- 4 RENAME A COLUMN 
ALTER TABLE COMPANIES
CHANGE COLUMN HEADQUARTERS_LOCATION  LOCATION VARCHAR(100);

-- 5. Add a Default Value to an Existing Column
ALTER TABLE Companies 
ALTER COLUMN employee_count SET DEFAULT 1;

-- 6 ADD A NEW COLUMN WITH A  DEFAULT VALUE 
ALTER TABLE COMPANIES 
ADD COLUMN COUNTRY VARCHAR(50) DEFAULT 'INDIA';

SELECT * FROM COMPANIES;

-- 7 DROP A COLUMN IF IT EXIST 
ALTER TABLE COMPANIES 
DROP COLUMN IF EXISTS COUNTRY;
  
-- 8. Add a Unique Constraint
ALTER TABLE Companies 
ADD CONSTRAINT unique_website UNIQUE (website);  

-- 9. Change the Data Type of a Column
ALTER TABLE Companies 
MODIFY COLUMN established_date DATETIME;

-- 10. Add a Foreign Key Constraint
ALTER TABLE Companies 
ADD CONSTRAINT fk_industry FOREIGN KEY (industry) REFERENCES Industries(industry_name);

-- DELETE QUERIES 
-- 1 DELETE A SPECIFIC RECORD 
DELETE FROM COMPANIES 
WHERE COMPANY_NAME = 'WIPRO';


SELECT * FROM COMPANIES;

-- 2 DELETE RECORDS BASED ON A CONDITION 
DELETE FROM COMPANIES 
WHERE INDUSTRY = 'BANKING';

-- 3. Delete Records with Revenue Below a Certain Amount
DELETE FROM Companies 
WHERE revenue < 5000000000.00;

-- 4. Delete Records Established Before a Certain Date
DELETE FROM Companies 
WHERE established_date < '2000-01-01';

-- 5 DELETE RECORDS WITH A SPECIFIC HEADQUARTER LOCATION 
DELETE FROM COMPANIES 
WHERE HEADQUARTERS_LOCATION = 'NEW DELHI';

-- 6. Delete Records with a Specific Employee Count
DELETE FROM Companies 
WHERE employee_count = 0;

SELECT * FROM COMPANIES;

-- 7. Delete Records with a Specific Website
DELETE FROM Companies 
WHERE website = 'https://www.hdfcbank.com';

-- 8. Delete Records Based on Multiple Conditions
DELETE FROM Companies 
WHERE industry = 'Telecommunications' AND revenue < 10000000000.00;

-- 9. Delete All Records (Use with Caution)
DELETE FROM Companies;

-- 10. Delete Records with a Specific Name Pattern
DELETE FROM Companies 
WHERE company_name LIKE 'H%';


-- 4. RENAME Query

-- 1. Rename the Database
ALTER DATABASE MNC RENAME TO MultiNationalCompanies;

-- 2. Rename the Companies Table
ALTER TABLE Companies RENAME TO MultinationalCompanies;

-- 3. Rename the company_id Column
ALTER TABLE MultiNationalCompanies RENAME COLUMN company_id TO id;

SELECT * FROM MultiNationalCompanies;

-- 4. Rename the company_name Column
ALTER TABLE MultiNationalCompanies RENAME COLUMN company_name TO name;

-- 5. Rename the headquarters_location Column
ALTER TABLE Companies RENAME COLUMN headquarters_location TO headquarters;

-- 6. Rename Multiple Columns
ALTER TABLE MultinationalCompanies
RENAME COLUMN industry TO business_sector,
RENAME COLUMN website TO company_website;

-- 5. UPDATE Query

-- 1.Update a Specific Record
UPDATE Companies 
SET revenue = 22000000000.00, employee_count = 520000 
WHERE company_name = 'Tata Consultancy Services';

SELECT* FROM Companies;

-- 2.Update Multiple Records
UPDATE Companies 
SET industry = 'Telecom' 
WHERE company_name IN ('Bharti Airtel', 'Reliance Industries Limited');

-- 3. Update Revenue for All Companies in a Specific Industry
UPDATE Companies 
SET revenue = revenue * 1.10 
WHERE industry = 'Banking';

-- 4. Update Employee Count for a Specific Company
UPDATE Companies 
SET employee_count = 210000 
WHERE company_name = 'Wipro';


-- create table of employee
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    hire_date DATE NOT NULL,
    salary DECIMAL(10, 2),
    COMPANY_ID INT,
    manager_id int ,
    FOREIGN KEY (COMPANY_ID) REFERENCES companies(COMPANY_ID)
);

drop table employees;
create database mnc ;
drop database mnc;

use mnc;
drop table employees;

-- insert values into table 
INSERT INTO Employees (employee_id, first_name, last_name, department_id, email, phone_number, hire_date, salary, company_id,manager_id)
VALUES
(1, 'John', 'Doe', 101, 'john.doe@mnc.com', '1234567890', '2020-05-15', 75000.00, NULL,2),
(2, 'Jane', 'Smith', 102, 'jane.smith@mnc.com', '1234567891', '2018-03-20', 85000.00, 1,3),
(3, 'Michael', 'Johnson', 103, 'michael.johnson@mnc.com', '1234567892', '2019-07-10', 60000.00, 1,4),
(4, 'Emily', 'Davis', 101, 'emily.davis@mnc.com', '1234567893', '2021-09-12', 55000.00, 1,5),
(5, 'Chris', 'Brown', 102, 'chris.brown@mnc.com', '1234567894', '2017-11-25', 90000.00, NULL,6),
(6, 'Sarah', 'Wilson', 104, 'sarah.wilson@mnc.com', '1234567895', '2022-01-15', 45000.00, 3,7),
(7, 'David', 'Martinez', 103, 'david.martinez@mnc.com', '1234567896', '2020-06-01', 62000.00, 2,5),
(8, 'Sophia', 'Anderson', 104, 'sophia.anderson@mnc.com', '1234567897', '2019-12-18', 58000.00, 3,6),
(9, 'James', 'Taylor', 101, 'james.taylor@mnc.com', '1234567898', '2021-08-23', 52000.00, 4,4),
(10, 'Linda', 'Lee', 102, 'linda.lee@mnc.com', '1234567899', '2023-02-10', 47000.00, 5,7);



-- SELECT ALL RECORD 
SELECT * FROM Employees ; 

-- 1 SELECT SPECIFIC COLUMN 
SELECT last_name  FROM Employees ;

-- 2 SELECT company_id IN A SPECIFIC employees 
SELECT * FROM Employees WHERE company_id = 1;

-- 3 SELECT employees WITH REVENUE GREATER THAN CERTAIN AMOUNT 
SELECT * FROM employees WHERE salary > 50000;

-- 4 SELECT employees join in  A SPECIFIC YEAR 
SELECT * FROM employees WHERE YEAR (hire_date)= 2020;

-- 5 SELECT employees ORDERED BY salary  IN DECENDING ORDER 
 SELECT * FROM employees ORDER BY salary DESC;

-- 6 SELECT employees WITH A SPECIFIC department_id
SELECT * FROM employees WHERE department_id = 102 ;

 -- 7. Select employees where hire date before Than a 2024
 SELECT * FROM employees WHERE year (hire_date) < 2022; 

-- 8. Select employees joined After a Certain Date
select * from employees where year (hire_date) > 2020;

-- 9. Select employees with a salary Between Two Values
select * from employees where salary between 20000  and 30000;

-- 10. Count the Number of employees in Each department
select department_id ,count(*) '3' from employees group by department_id;


-- DISPLAY SAFE UPDATE MODE TEMPORARILY
 SET SQL_SAFE_UPDATES = 0; 

SET SQL_SAFE_UPDATES = 1; -- RE-ENABLE SAFE UPDATES

-- ALTER QUERIES
-- 1. Add a New Column
ALTER TABLE employees 
ADD column stock_symbol VARCHAR(10);

-- 2. Modify an Existing Column
ALTER TABLE employees 
modify salary DECIMAL(25, 3) CHECK (salary >= 0);

-- 3 DROP A COLUMN 
ALTER TABLE employees
DROP COLUMN STOCK_SYMBOL;

-- 4 RENAME A COLUMN 
ALTER TABLE employees
CHANGE COLUMN email  email_id VARCHAR(100);

-- 5. Add a Default Value to an Existing Column
ALTER TABLE employees 
ALTER COLUMN salary SET DEFAULT 1;

select* from employees;

-- 6 ADD A NEW COLUMN WITH A  DEFAULT VALUE 
ALTER TABLE employees 
ADD COLUMN COUNTRY VARCHAR(50) DEFAULT 'INDIA';


-- 7 DROP A COLUMN IF IT EXIST 
ALTER TABLE employees 
DROP COLUMN if  EXISTS COUNTRY;
  
-- 8. Add a Unique Constraint
ALTER TABLE employees 
ADD CONSTRAINT unique_email UNIQUE (email_id);  

-- 9. Change the Data Type of a Column
ALTER TABLE employees 
MODIFY COLUMN hire_date DATETIME;

-- 10. Add a Foreign Key Constraint
ALTER TABLE employees 
ADD CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES departments(department_name);


-- DELETE QUERIES 

-- 1 DELETE A SPECIFIC RECORD 
DELETE FROM employees 
WHERE salary = 20000;


SELECT * FROM employees;

-- 2 DELETE RECORDS BASED ON A CONDITION 
DELETE FROM employees 
WHERE manager_id = 3;

-- 3. Delete Records with salary Below a Certain Amount
DELETE FROM employees 
WHERE salary < 20000;

-- 4. Delete Records hire_date Before a Certain Date
DELETE FROM employees 
WHERE hire_date < '2024-01-01';

-- 5 DELETE RECORDS WITH A SPECIFIC department_id
DELETE FROM employees 
WHERE department_id = 6;

-- 6. Delete Records with a Specific manager count
DELETE FROM employees 
WHERE manager_id = 1;

SELECT * FROM employees;

-- 7. Delete Records with a Specific email
DELETE FROM employees 
WHERE email_id = 'john.doe@mnc.com';

-- 8. Delete Records Based on Multiple Conditions
DELETE FROM employees 
WHERE employee_id = 1 AND salary < 200000;

-- 9. Delete All Records (Use with Caution)
DELETE FROM employees;

-- 10. Delete Records with a Specific Name Pattern
DELETE FROM employees 
WHERE first_name LIKE 'H%';


-- 4. RENAME Query

-- 1. Rename the Database
ALTER DATABASE MNC RENAME TO MultiNationalCompanies;

-- 2. Rename the employees Table
ALTER TABLE employees RENAME TO MultinationalCompanies;

-- 3. Rename the company_id Column
ALTER TABLE MultiNationalCompanies RENAME COLUMN company_id TO id;

SELECT * FROM MultiNationalCompanies;

-- 4. Rename the first_name Column
ALTER TABLE MultiNationalCompanies RENAME COLUMN first_name TO name;

-- 5. Rename the last_name Column
ALTER TABLE MultiNationalCompanies
RENAME COLUMN last_name TO lasts_name;

-- 6. Rename Multiple Columns
ALTER TABLE MultinationalCompanies
RENAME COLUMN phone_number TO number,
RENAME COLUMN email_id TO email;

-- table 3 departments

-- 2. Departments Table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    manager_id INT,
    company_id int not null,
    FOREIGN KEY (company_id) REFERENCES Employees(company_id)
);

-- insert values into the tables

INSERT INTO Departments (department_id, department_name, manager_id, company_id)
VALUES
(1, 'Human Resources', 1, 1),
(2, 'Finance', 2, 1),
(3, 'Engineering', 3, 1),
(4, 'Marketing', NULL, 1),
(5, 'Sales', NULL, 1),
(6, 'Research and Development', 3, 2),
(7, 'Customer Support', NULL, 2),
(8, 'Operations', NULL, 2),
(9, 'IT', 2, 1),
(10, 'Legal', NULL, 2);

truncate table departments;

-- 1. SELECT ALL RECORDS
SELECT * FROM Departments;

-- 2. SELECT SPECIFIC COLUMN
SELECT department_name FROM Departments;

-- 3. SELECT DEPARTMENTS IN A SPECIFIC COMPANY
SELECT * FROM Departments WHERE company_id = 1;

-- 4. SELECT DEPARTMENTS MANAGED BY A SPECIFIC EMPLOYEE
SELECT * FROM Departments WHERE manager_id = 3;

-- 5. SELECT DEPARTMENTS ORDERED BY NAME IN DESCENDING ORDER
SELECT * FROM Departments ORDER BY company_id DESC;

-- 6. SELECT DEPARTMENTS WITH A SPECIFIC NAME
SELECT * FROM Departments WHERE department_name = 'Engineering';

-- 7. COUNT THE NUMBER OF DEPARTMENTS IN EACH COMPANY
SELECT company_id, COUNT(*) AS department_count FROM Departments GROUP BY company_id;

-- ALTER Queries

-- 1. Add a New Column
ALTER TABLE Departments
ADD COLUMN location VARCHAR(100);

-- 2. Modify an Existing Column
ALTER TABLE Departments
MODIFY location VARCHAR(200);

-- 3. Drop a Column
ALTER TABLE Departments
DROP COLUMN location;

-- 4. Rename a Column
ALTER TABLE Departments
CHANGE COLUMN department_name dept_name VARCHAR(100);

-- 5. Add a Default Value to an Existing Column
ALTER TABLE Departments
ALTER COLUMN manager_id SET DEFAULT 1;

-- 6. Add a New Column with a Default Value
ALTER TABLE Departments
ADD COLUMN country VARCHAR(50) DEFAULT 'India';


-- DELETE QUERIES 

-- 1 DELETE A SPECIFIC RECORD 
DELETE FROM Departments 
WHERE department_name = 'Finance';

-- DISPLAY SAFE UPDATE MODE TEMPORARILY
 SET SQL_SAFE_UPDATES = 0; 

SET SQL_SAFE_UPDATES = 1; -- RE-ENABLE SAFE UPDATES


SELECT * FROM departments;

-- 2 DELETE RECORDS BASED ON A CONDITION 
DELETE FROM Departments 
WHERE dept_name = 'Operations';

-- 3. Delete Records with Revenue Below a Certain Amount
DELETE FROM Departments 
WHERE manager_id < 2;

-- 4. Delete Records Established Before a Certain Date
DELETE FROM Departments 
WHERE company_id < 2 ;

-- 5 DELETE RECORDS WITH A SPECIFIC company_id
DELETE FROM Departments 
WHERE dept_name = 'it';

-- 6. Delete Records with a Specific manger_id count
DELETE FROM Departments 
WHERE manager_id = 3;

SELECT * FROM Departments;

-- 7. Delete Records with a Specific Website
DELETE FROM Departments 
WHERE department_id = 1;

-- 8. Delete Records Based on Multiple Conditions
DELETE FROM Departments 
WHERE department_id = 1 AND company_id < 1;

-- 9. Delete All Records (Use with Caution)
DELETE FROM Departments;

-- 10. Delete Records with a Specific Name Pattern
DELETE FROM Departments 
WHERE dept_name LIKE 'H%';

-- rename query

-- Renaming the Departments table to "DepartmentDetails"
ALTER TABLE Departments RENAME TO DepartmentDetails;

-- Renaming the column "department_name" to "dept_name"
ALTER TABLE DepartmentDetails RENAME COLUMN department_name TO dept_name;

-- Renaming "manager_id" to "dept_manager" and "company_id" to "org_id"
ALTER TABLE DepartmentDetails
RENAME COLUMN manager_id TO dept_manager,
RENAME COLUMN company_id TO org_id;

-- table 3

-- 3. Projects Table
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    budget DECIMAL(15, 2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);


INSERT INTO Projects (project_id, project_name, department_id, start_date, end_date, budget)
VALUES
(1, 'Employee Onboarding System', 1, '2023-01-01', '2023-06-30', 200000.00),
(2, 'Financial Audit Automation', 2, '2023-03-01', '2023-09-30', 150000.00),
(3, 'AI Product Development', 3, '2023-04-01', NULL, 500000.00),
(4, 'Social Media Campaign', 4, '2023-05-15', '2023-08-15', 100000.00),
(5, 'Sales Strategy Optimization', 5, '2023-02-01', '2023-11-30', 250000.00),
(6, 'New Product Launch', 6, '2023-01-15', '2023-07-31', 300000.00),
(7, 'Customer Support Portal', 7, '2023-06-01', NULL, 180000.00),
(8, 'Logistics Process Improvement', 8, '2023-07-01', '2023-12-31', 220000.00),
(9, 'IT Infrastructure Upgrade', 9, '2023-03-01', '2023-10-31', 400000.00),
(10, 'Legal Compliance Review', 10, '2023-04-01', '2023-09-15', 120000.00);

truncate table Projects;

SELECT * FROM Projects;

--  Select projects with budget greater than 200,000:
SELECT * FROM Projects WHERE budget > 200000;

-- Select projects in a specific date range
SELECT * FROM Projects WHERE start_date > '2023-03-01';

-- Select projects by department 
SELECT * FROM Projects WHERE department_id = 3;

-- Add a new column
ALTER TABLE Projects
ADD COLUMN project_status VARCHAR(50);

-- Modify the budget column to allow up to 20 digits with 2 decimals:
ALTER TABLE Projects
MODIFY COLUMN budget DECIMAL(20, 2);

-- Drop a column
ALTER TABLE Projects
DROP COLUMN end_date;


-- DISPLAY SAFE UPDATE MODE TEMPORARILY
 SET SQL_SAFE_UPDATES = 0; 

SET SQL_SAFE_UPDATES = 1; -- RE-ENABLE SAFE UPDATES



-- DELETE Query:
-- Delete a specific project (e.g., project_id = 1):
DELETE FROM Projects WHERE project_id = 1;

-- Delete projects with a budget below 150,000: 
DELETE FROM Projects WHERE budget < 150000;

-- Delete projects in a specific date range 
DELETE FROM Projects WHERE start_date < '2023-04-01';

-- rename query

-- Rename the Projects table to "ProjectDetails"
ALTER TABLE Projects RENAME TO ProjectDetails;

-- Rename a column
ALTER TABLE ProjectDetails RENAME COLUMN project_name TO name_of_project;


-- Rename multiple columns

ALTER TABLE ProjectDetails
RENAME COLUMN start_date TO start_date_of_project,
RENAME COLUMN budget TO project_budget;

-- table (4)

-- 4. Clients Table
CREATE TABLE Clients (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(100) NOT NULL,
    contact_person VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    address VARCHAR(255)
);

drop table Clients;

INSERT INTO Clients (client_id, client_name, contact_person, email, phone_number, address)
VALUES
(1, 'Alpha Tech Solutions', 'John Carter', 'john.carter@alphatech.com', '1234567890', '123 Elm Street, San Francisco, CA'),
(2, 'Beta Healthcare', 'Jane Smith', 'jane.smith@betahealth.com', '9876543210', '456 Oak Avenue, New York, NY'),
(3, 'Gamma Finance Group', 'Michael Brown', 'michael.brown@gammafinance.com', '1231231234', '789 Pine Road, Chicago, IL'),
(4, 'Delta Energy Corp', 'Emily Davis', 'emily.davis@deltaenergy.com', '5556667777', '321 Cedar Blvd, Houston, TX'),
(5, 'Epsilon Retail', 'Chris Johnson', 'chris.johnson@epsilonretail.com', '2223334444', '654 Maple Lane, Seattle, WA'),
(6, 'Zeta Manufacturing', 'Sarah Wilson', 'sarah.wilson@zetamfg.com', '9998887777', '987 Birch Court, Austin, TX'),
(7, 'Eta Logistics', 'David Lee', 'david.lee@etalogistics.com', '4445556666', '111 Aspen Way, Miami, FL'),
(8, 'Theta Media', 'Sophia Martinez', 'sophia.martinez@thetamedia.com', '3332221111', '555 Spruce Drive, Boston, MA'),
(9, 'Iota Software', 'James Taylor', 'james.taylor@iotasw.com', '7778889999', '222 Willow Circle, Denver, CO'),
(10, 'Kappa Enterprises', 'Linda White', 'linda.white@kappaenterprises.com', '1112223333', '444 Poplar Plaza, Phoenix, AZ');

truncate table Clients;


-- SELECT Query
SELECT * FROM Clients;

-- select  specific column
SELECT client_name, contact_person FROM Clients;

-- select a specific values 
SELECT * FROM Clients WHERE client_id = 3;

-- select a specific value	with using like
SELECT * FROM Clients WHERE address LIKE '%Seattle%';

-- ALTER Query

-- add columns
ALTER TABLE Clients ADD COLUMN website VARCHAR(100);

-- modify a specific datatypes
ALTER TABLE Clients MODIFY COLUMN phone_number VARCHAR(20);

-- drop column
ALTER TABLE Clients DROP COLUMN website;

-- rename attributes
ALTER TABLE Clients RENAME COLUMN phone_number TO contact_number;

-- DELETE Query

-- DISPLAY SAFE UPDATE MODE TEMPORARILY
 SET SQL_SAFE_UPDATES = 0; 

SET SQL_SAFE_UPDATES = 1; -- RE-ENABLE SAFE UPDATES

-- delete the specific values
DELETE FROM Clients WHERE client_id = 5;

-- delete the specific values
DELETE FROM Clients WHERE client_name = 'Gamma Finance Group';

-- delete by using like
DELETE FROM Clients WHERE address LIKE '%Houston%';

-- delete the specific values from attributes
DELETE FROM Clients WHERE contact_person = 'Sarah Wilson';


-- RENAME Query

-- rename the table
ALTER TABLE Clients RENAME TO ClientDetails;

-- chnage column name  
ALTER TABLE ClientDetails RENAME COLUMN client_name TO company_name;

-- change the column name
ALTER TABLE ClientDetails RENAME COLUMN email TO company_email;

-- table (5)

-- 5. ProjectAssignments Table
CREATE TABLE ProjectAssignments (
    assignment_id INT PRIMARY KEY,
    project_id INT NOT NULL,
    employee_id INT NOT NULL,
    role VARCHAR(50),
    start_date DATE NOT NULL,
    end_date DATE,
    FOREIGN KEY (project_id) REFERENCES Projects(project_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

INSERT INTO ProjectAssignments (assignment_id, project_id, employee_id, role, start_date, end_date)
VALUES
(1, 1, 1, 'Project Manager', '2023-01-01', '2023-06-30'),
(2, 1, 2, 'Developer', '2023-01-01', '2023-06-30'),
(3, 2, 3, 'Finance Analyst', '2023-03-01', '2023-09-30'),
(4, 3, 4, 'AI Specialist', '2023-04-01', NULL),
(5, 4, 5, 'Marketing Lead', '2023-05-15', '2023-08-15'),
(6, 5, 6, 'Sales Associate', '2023-02-01', '2023-11-30'),
(7, 6, 7, 'R&D Engineer', '2023-01-15', '2023-07-31'),
(8, 7, 8, 'Customer Support Lead', '2023-06-01', NULL),
(9, 8, 9, 'Logistics Coordinator', '2023-07-01', '2023-12-31'),
(10, 9, 10, 'IT Specialist', '2023-03-01', '2023-10-31');

truncate table ProjectAssignments;

-- SELECT Query

-- Select all project assignments
SELECT * FROM ProjectAssignments;

-- Select project assignments for a specific project_id
SELECT * FROM ProjectAssignments WHERE project_id = 1;

-- Select employees assigned to a specific role in the project
SELECT employee_id, role FROM ProjectAssignments WHERE role = 'Developer';

-- Select project assignments where end_date is NULL (ongoing projects)
SELECT * FROM ProjectAssignments WHERE end_date IS NULL;

-- ALTER Query

-- Add a new column for assignment status
ALTER TABLE ProjectAssignments ADD COLUMN assignment_status VARCHAR(50);

-- Modify the role column to allow longer roles
ALTER TABLE ProjectAssignments MODIFY COLUMN role VARCHAR(100);

-- Drop the assignment_status column
ALTER TABLE ProjectAssignments DROP COLUMN assignment_status;

-- Rename the column 'end_date' to 'completion_date'
ALTER TABLE ProjectAssignments RENAME COLUMN end_date TO completion_date;

-- DELETE Query

-- Delete a specific project assignment based on assignment_id
DELETE FROM ProjectAssignments WHERE assignment_id = 3;

-- Delete all project assignments related to a specific project
DELETE FROM ProjectAssignments WHERE project_id = 6;

-- Delete assignments that have not ended yet (end_date is NULL)
DELETE FROM ProjectAssignments WHERE completion_date IS NULL;

-- RENAME Query

-- Rename the ProjectAssignments table to 'Assignments'
ALTER TABLE ProjectAssignments RENAME TO Assignments;

-- Rename the 'role' column to 'assignment_role'
ALTER TABLE Assignments RENAME COLUMN role TO assignment_role;

-- Rename the 'start_date' column to 'assigned_on'
ALTER TABLE Assignments RENAME COLUMN start_date TO assigned_on;




































































