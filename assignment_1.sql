-- Pick 30 real-world databases.
-- For each database, design 5 tables with at least 5 attributes each.
-- Attributes must represent meaningful and relevant information.
-- Populate each of the 5 tables with at least 10 records.

-- 30 real-world databases.

-- 1. airline
-- 2. hospital
-- 3. gym
-- 4. accurate company
-- 5. burger king
-- 6. real estate
-- 7. institute of denver
-- 8. store
-- 9. hotel
-- 10. upgrade courses
-- 11. myntra
-- 12. cricket club
-- 13. travel agency  
-- 14. wankhede stadium
-- 15. saloon and spa
-- 16. TMT bus 
-- 17. mall
-- 18. hp brand
-- 19. hostel
-- 20. kumar collection 
-- 21. netflix 
-- 22. kabaddi club
-- 23. vehicle_management
-- 24. banking
-- 25. instagram
-- 26. Inventory Management
-- 27. Real Estate Management
-- 28. Library Management
-- 29. Online Auction System
-- 30. Event Management 

-- create database airline
create database airline;

-- use your database
use airline;
 
 
-- create table  passenger (1)
create table passenger(id int Primary Key,
first_name VARCHAR(100),
last_name VARCHAR(100),
dob  DATE,
gender VARCHAR (100),
email VARCHAR (100),
phone_number VARCHAR (100),
ticket_number VARCHAR (100),
flight_id int);


-- display your table
select *from passenger;

INSERT INTO passenger (id, first_name, last_name, dob, gender, email, phone_number, ticket_number, flight_id)
VALUES
(1, 'John', 'Doe', '1985-04-15', 'Male', 'john.doe@example.com', '1234567890', 'A12345', 101),
(2, 'Jane', 'Smith', '1990-03-20', 'Female', 'jane.smith@example.com', '2345678901', 'A12346', 102),
(3, 'Emily', 'Jones', '1987-07-30', 'Female', 'emily.jones@example.com', '3456789012', 'A12347', 103),
(4, 'Michael', 'Brown', '1980-11-05', 'Male', 'michael.brown@example.com', '4567890123', 'A12348', 104),
(5, 'Chris', 'Taylor', '1992-09-18', 'Male', 'chris.taylor@example.com', '5678901234', 'A12349', 105),
(6, 'Olivia', 'White', '1988-01-22', 'Female', 'olivia.white@example.com', '6789012345', 'A12350', 106),
(7, 'Sophia', 'Harris', '1995-06-10', 'Female', 'sophia.harris@example.com', '7890123456', 'A12351', 107),
(8, 'James', 'Martin', '1983-12-15', 'Male', 'james.martin@example.com', '8901234567', 'A12352', 108),
(9, 'Liam', 'Davis', '1991-02-08', 'Male', 'liam.davis@example.com', '9012345678', 'A12353', 109),
(10, 'Mia', 'Garcia', '1994-05-12', 'Female', 'mia.garcia@example.com', '1230984567', 'A12354', 110);

-- create table flight(2)

create table flight (
flight_id int Primary Key,
flight_number VARCHAR(100),
departure_date DATE,
departure_time TIME,
arrival_date DATE,
arrival_time TIME,
departure_airport VARCHAR(100),
arrival_airport VARCHAR(100),
airline VARCHAR(100),
status VARCHAR(100));


select * from flight;

INSERT INTO flight VALUES
(101, 'AA101', '2024-12-20', '06:00:00', '2024-12-20', '08:30:00', 'JFK', 'LAX', 'American Airlines', 'On Time'),
(102, 'DL102', '2024-12-21', '09:30:00', '2024-12-21', '12:00:00', 'LAX', 'ORD', 'Delta Airlines', 'Delayed'),
(103, 'UA103', '2024-12-22', '12:15:00', '2024-12-22', '15:30:00', 'ORD', 'SFO', 'United Airlines', 'On Time'),
(104, 'SW104', '2024-12-23', '07:45:00', '2024-12-23', '10:00:00', 'SFO', 'SEA', 'Southwest Airlines', 'Cancelled'),
(105, 'AF105', '2024-12-24', '14:30:00', '2024-12-24', '18:00:00', 'SEA', 'CDG', 'Air France', 'On Time'),
(106, 'BA106', '2024-12-25', '16:00:00', '2024-12-25', '18:45:00', 'LHR', 'JFK', 'British Airways', 'Delayed'),
(107, 'EK107', '2024-12-26', '22:00:00', '2024-12-27', '04:00:00', 'DXB', 'JFK', 'Emirates', 'On Time'),
(108, 'LH108', '2024-12-27', '11:00:00', '2024-12-27', '13:45:00', 'FRA', 'ORD', 'Lufthansa', 'Delayed'),
(109, 'QR109', '2024-12-28', '05:30:00', '2024-12-28', '08:00:00', 'DOH', 'LAX', 'Qatar Airways', 'On Time'),
(110, 'AI110', '2024-12-29', '19:00:00', '2024-12-29', '23:30:00', 'DEL', 'LHR', 'Air India', 'On Time');

-- create table airline_staff (3)


CREATE TABLE airline_staff (
    staff_id INT PRIMARY KEY auto_increment,  
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    position VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(20),
    airline VARCHAR(50) NOT NULL
);
 
 
 drop table airline_staff ;
 
 select*from airline_staff;


INSERT INTO airline_staff (first_name, last_name, dob, gender, position, hire_date, email, phone_number, airline)
VALUES
('John', 'Doe', '1985-04-15', 'Male', 'Pilot', '2010-06-01', 'john.doe@airline.com', '1234567890', 'American Airlines'),
('Jane', 'Smith', '1990-03-20', 'Female', 'Cabin Crew', '2015-09-12', 'jane.smith@airline.com', '2345678901', 'Delta Airlines'),
('Emily', 'Johnson', '1987-07-30', 'Female', 'Ground Staff', '2018-01-14', 'emily.johnson@airline.com', '3456789012', 'United Airlines'),
('Michael', 'Brown', '1980-11-05', 'Male', 'Pilot', '2008-11-23', 'michael.brown@airline.com', '4567890123', 'Southwest Airlines'),
('Chris', 'Taylor', '1992-09-18', 'Male', 'Cabin Crew', '2017-02-25', 'chris.taylor@airline.com', '5678901234', 'Jet Airways'),
('Olivia', 'White', '1988-01-22', 'Female', 'Flight Attendant', '2019-06-30', 'olivia.white@airline.com', '6789012345', 'British Airways'),
('Sophia', 'Harris', '1995-06-10', 'Female', 'Ground Staff', '2021-03-11', 'sophia.harris@airline.com', '7890123456', 'Qatar Airways'),
('James', 'Martin', '1983-12-15', 'Male', 'Pilot', '2005-05-20', 'james.martin@airline.com', '8901234567', 'Emirates'),
('Liam', 'Davis', '1991-02-08', 'Male', 'Cabin Crew', '2016-08-18', 'liam.davis@airline.com', '9012345678', 'Air France'),
('Mia', 'Garcia', '1994-05-12', 'Female', 'Flight Attendant', '2018-10-22', 'mia.garcia@airline.com', '1230984567', 'Lufthansa');



-- CREATING TABLE OF AIRLINE_CAFE (4)
CREATE TABLE AIRLINE_CAFE(CAFE_ID INT PRIMARY KEY, 
CAFE_NAME VARCHAR (100) NOT NULL,
LOCATION VARCHAR (100) NOT NULL,
MENU_DESCRIPTION VARCHAR(100) NOT NULL,
OPENING_HOURS TIME NOT NULL,
CLOSING_HOURS TIME NOT NULL);

drop table AIRLINE_CAFE;

-- display your table
select *from AIRLINE_CAFE;

-- INSERT VALUE into tables
insert INTO AIRLINE_CAFE(CAFE_ID,CAFE_NAME,LOCATION,MENU_DESCRIPTION,OPENING_HOURS,CLOSING_HOURS) value
(1,'STARBUCKS','THANE','COFFIE','09:00:00','10:00:00'),
(2,'JUMBO KING','MUMBAI','BURGER','08:00:00','11:30:00'),
(3,'BURGER KING','GRANT ROAD','BURGER','10:00:00','10:00:00'),
(4,'MAC DOWELLS','VASAI','HOT MEAL','07:00:00','11:30:00'),
(5,'SNACKS AND SWEETS','VIRAR','SNACKS','09:00:00','11:00:00'),
(6,'KRISHNA SWEETS','MIRA ROAD','SWEETS','09:00:00','12:00:00'),
(7,'DOMINOS','SION','PIZZA','08:00:00','12:00:00'),
(8,'PIZZA MANIA','THANE','PIZZA','09:00:00','11:00:00'),
(9,'DOMINOS','THANE','PIZZA','08:00:00','12:00:00'),
(10,'BURGER KING','MATUNGA','BURGER','08:00:00','12:00:00');


 -- creating a data base of hospital (2)
create database hospital;

-- drop database hospital
drop database hospital;
-- use your data base
use hospital;

-- creating a table of employee(1)
create table employee( name varchar(100),
salary int,
location varchar(100),
branch varchar(100),
date_of_joining date);

-- display your table 
select * from employee;

-- insert value into table (employee)
insert into employee(name,salary,location,branch,date_of_joining) value
('jitesh',13000,'thane','kalher','2023-03-11'),
('riya',14000,'nahur','nahur','2022-03-11'),
('raju',15000,'sion','nahur','2023-03-14'),
('ram',16000,'kalwa','nahur','2023-03-21'),
('raja',17000,'mira road','kalher','2023-04-11'),
('matty',14000,'dadar','kalher','2023-07-24'),
('nilesh',10000,'thane','nahur','2023-01-12'),
('rajesh',12000,'thane','kalher','2023-06-05'),
('vishal',15000,'dadar','kalher','2023-06-06'),
('aniket',18000,'kalher','nahur','2023-09-08');

-- creating a table of patient(2)
create table patient( sr_no int primary key,
patient_name varchar(100),
disese varchar(100),
mediclaim varchar(100),
bill_amount int);
      
-- display your table
 select * from patient;
 
 -- insert value into table (patient)
 insert into patient (sr_no,patient_name,disese,mediclaim,bill_amount) value
 (1,'tara','high fever','yes',20000),
 (2,'jitesh','daingue','no',55000),
 (3,'rajan','kidney stone','yes',60000),
 (4,'raju','malaria','no',52000),
 (5,'mohan','cough','yes',12000),
 (6,'ramesh','high fever','yes',30000),
 (7,'sohail','fever','no',10000),
 (8,'rohail','weakness','no',20000),
 (9,'ashu','infection','no',40000),
 (10,'aniket','kidney stone','yes',27000);


-- creating table of DOCTOR (3)
CREATE TABLE DOCTOR(NAME varchar(100),
QUALIFICATION VARCHAR (100),
SPECIALIST varchar (100),
SALARY INT NOT NULL,
BRANCH varchar(100));



-- DISPLAY YOUR TABLE
select * FROM DOCTOR;

-- INSERT VALUES INTO DOCTOR TABLE
insert INTO DOCTOR (NAME,QUALIFICATION,SPECIALIST,SALARY,BRANCH) value
('JITESH YADAV','GNM','BONE',200000,'MATUNGA'),
('NEHA YADAV','BSC NURSING','HEART',300000,'THANE'),
('NITESH PATEL','MBBS','BRAIN',97000,'THANE'),
('RITESH SINGH','POST GRADUATE','SKIN',100000,'SION'),
('ANIKET ROY','MBBS','EYE',300000,'MIRA ROAD'),
('SATYAM SHINDE','P.H.D','EAR',500000,'THANE'),
('SHUBHAM SHINDE','BSC NURSING','BONE',400000,'GRANT ROAD'),
('VISHAL KEVAL','DIPLOMA','HAIR',200000,'PANVEL'),
('SUMIT YADAV','MBBS','BONE',200000,'VIKROLI'),
('GANESH MATE','P.H.D','BRAIN',90000,'PANVEL');



-- CREATING TABLE OF MEDICINE (4)
create table medicine (sr_no int primary key,
medicine_name varchar (100),
patient_register varchar(100),
doctor varchar (100),
dosage varchar (100));

-- display your data base
select * from medicine;
-- DROP IS USED TO EDIT THE TABLE OR TO MAKE SOME CHANGES

DROP TABLE MEDICINE ;


-- insert value in medicine table 
insert into medicine(sr_no,medicine_name,patient_register,doctor,dosage) value
(1,'DOLO 650','ROHAN','DR RAGHAV','2 MG'),
(2,'ANALEGESIC','SOHAIL','DR JITESH','1.5 MG'),
(3,'KEFLIX','RAJU','DR ROHAN','2.5 MG'),
(4,'BRUFEN','ROHAN','DR MATTY','2 MG'),
(5,'ZESTRIL','ABHAY','DR NEHA','1 MG'),
(6,'VALIUM','ANSHIKA','DR RAHUL','3 MG'),
(7,'BACTRIAM','RAHAN','DR NEHA','2 MG'),
(8,'ASPIRIN','ANJALI','DR KAJAL','4.5 MG'),
(9,'AMOXIL','AAKIB','DR NIRAJ','2 MG'),
(10,'PROZAC','ANNANYA','DR VISHAL','1 MG');


-- CREATE TABLE OF EQUIPMENTS (5)

CREATE TABLE EQUIPMENTS(NAME_ VARCHAR (100),
DEPARTMENT VARCHAR (100),
REQUIRMENT INT,
AVAILABLE INT ,
USAGE_FOR  VARCHAR (100));


-- DIAPLAY YOUR TABLE 
select * from equipments;

-- insert value into equipment 
insert into EQUIPMENTS (NAME_,DEPARTMENT,REQUIRMENT,AVAILABLE,USAGE_FOR) values
('scissors','icu',9,5,'doctor'),
('bed shit','ot',8,7,'patient'),
('bed shit','icu',9,5,'patient'),
('gloves','ot',8,6,'doctor'),
('cane','icu',8,0,'patient'),
('wheel chair','icu',5,5,'patient'),
('pipette','icu',8,3,'patient'),
('syringe','icu',9,5,'doctor'),
('walker','icu',3,0,'patient'),
('scissors','ot',5,7,'doctor');


 -- creating a data base of my_gym (3)
 create database my_gym;
 use my_gym;
 
CREATE TABLE employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,  
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    shift_timing VARCHAR(50) NOT NULL,
    attendance VARCHAR(20) NOT NULL,  
    shift VARCHAR(20) NOT NULL        
);

select *from employee;
drop table  employee;


INSERT INTO employee (first_name, last_name, shift_timing, attendance, shift)
VALUES
('John', 'Doe', '9:00 AM - 5:00 PM', 'Present', 'Morning'),
('Jane', 'Smith', '9:00 AM - 5:00 PM', 'Absent', 'Morning'),
('Emily', 'Johnson', '10:00 AM - 6:00 PM', 'Present', 'Evening'),
('Michael', 'Brown', '11:00 AM - 7:00 PM', 'Late', 'Evening'),
('Chris', 'Taylor', '8:00 AM - 4:00 PM', 'Present', 'Morning'),
('Olivia', 'White', '2:00 PM - 10:00 PM', 'Present', 'Night'),
('Sophia', 'Harris', '6:00 AM - 2:00 PM', 'Absent', 'Morning'),
('James', 'Martin', '3:00 PM - 11:00 PM', 'Present', 'Night'),
('Liam', 'Davis', '9:00 AM - 5:00 PM', 'Late', 'Morning'),
('Mia', 'Garcia', '12:00 PM - 8:00 PM', 'Present', 'Evening');


-- create table trainer
CREATE TABLE trainer (
    trainer_id INT AUTO_INCREMENT PRIMARY KEY,  
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    body_weight int NOT NULL, 
    shift VARCHAR(20) NOT NULL,          
    no_of_clients INT NOT NULL           
);

drop table trainer;
-- display your table 
select *from trainer;

INSERT INTO trainer (name, age, body_weight, shift, no_of_clients)
VALUES
('John Doe', 32, 75, 'Morning', 20),
('Jane Smith', 28, 60, 'Afternoon', 15),
('Emily Johnson', 35, 68, 'Evening', 25),
('Michael Brown', 40, 80, 'Morning', 30),
('Chris Taylor', 26, 72, 'Afternoon', 18),
('Olivia White', 31, 58, 'Evening', 22),
('Sophia Harris', 29, 65, 'Morning', 20),
('James Martin', 34, 77, 'Evening', 28),
('Liam Davis', 27, 70, 'Afternoon', 23),
('Mia Garcia', 33, 62, 'Morning', 19);


-- create table cleaner
CREATE TABLE cleaner (
    cleaner_id INT AUTO_INCREMENT PRIMARY KEY,  
    shift_timing VARCHAR(50) NOT NULL,
    salary int NOT NULL,             
    weekoff VARCHAR(20) NOT NULL,               
    extra_pay int,     
    bonus int         
);
-- display your table
select	 *from cleaner;
 
 INSERT INTO cleaner (shift_timing, salary, weekoff, extra_pay, bonus)
VALUES
('9:00 AM - 5:00 PM', 2000.00, 'Sunday', 150.00, 300.00),
('8:00 AM - 4:00 PM', 2200.00, 'Monday', 100.00, 250.00),
('10:00 AM - 6:00 PM', 1800.00, 'Tuesday', 120.00, 200.00),
('7:00 AM - 3:00 PM', 2100.00, 'Saturday', 180.00, 350.00),
('9:00 AM - 5:00 PM', 2500.00, 'Wednesday', 200.00, 500.00),
('6:00 AM - 2:00 PM', 1900.00, 'Friday', 130.00, 150.00),
('2:00 PM - 10:00 PM', 2000.00, 'Thursday', 160.00, 300.00),
('8:30 AM - 4:30 PM', 2300.00, 'Sunday', 140.00, 400.00),
('10:00 AM - 6:00 PM', 2400.00, 'Monday', 190.00, 450.00),
('9:00 AM - 5:00 PM', 2200.00, 'Saturday', 110.00, 350.00);


-- create table clients
CREATE TABLE clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,  
    name VARCHAR(100) NOT NULL,
    membership VARCHAR(50) NOT NULL,           
    cardio  varchar(100) NOT NULL,                   
    age INT NOT NULL,                          
    personal_trainer VARCHAR(100) NOT NULL     
);
 -- display yoour table
 select * from clients;
 
 INSERT INTO clients (name, membership, cardio, age, personal_trainer)
VALUES
('John Doe', 'Premium', 'yes', 28, 'Jane Smith'),
('Alice Brown', 'Basic', 'no', 34, 'John Doe'),
('Bob Johnson', 'VIP', 'yes', 25, 'Emily White'),
('Michael Green', 'Basic', 'no', 45, 'Sophia Harris'),
('Sarah Clark', 'Premium', 'yes', 39, 'James Martin'),
('Chris Taylor', 'VIP', 'no', 32, 'Olivia White'),
('Olivia Harris', 'Premium', 'yes', 29, 'Liam Davis'),
('Sophia Williams', 'Basic', 'no', 50, 'Chris Taylor'),
('David Miller', 'VIP', 'yes', 40, 'John Smith'),
('Laura Wilson', 'Basic', 'no', 36, 'Mia Garcia');

-- create table visitor
CREATE TABLE visitors (
    visitor_id INT AUTO_INCREMENT PRIMARY KEY,  
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    contact_no VARCHAR(15) NOT NULL,           
    joining_date DATE NOT NULL,                
    reference VARCHAR(100) NOT NULL            
);

-- display your table
select * from visitors;
  
  INSERT INTO visitors (name, location, contact_no, joining_date, reference)
VALUES
('John Doe', 'New York, NY', '123-456-7890', '2024-12-01', 'Friend'),
('Jane Smith', 'Los Angeles, CA', '234-567-8901', '2024-12-05', 'Advertisement'),
('Emily Johnson', 'Chicago, IL', '345-678-9012', '2024-12-07', 'Website'),
('Michael Brown', 'Houston, TX', '456-789-0123', '2024-12-09', 'Social Media'),
('Chris Taylor', 'Phoenix, AZ', '567-890-1234', '2024-12-11', 'Friend'),
('Olivia White', 'San Francisco, CA', '678-901-2345', '2024-12-13', 'Advertisement'),
('Sophia Harris', 'Dallas, TX', '789-012-3456', '2024-12-15', 'Flyer'),
('James Martin', 'Austin, TX', '890-123-4567', '2024-12-17', 'Social Media'),
('Liam Davis', 'Miami, FL', '901-234-5678', '2024-12-19', 'Referral'),
('Mia Garcia', 'Atlanta, GA', '123-987-6543', '2024-12-21', 'Word of Mouth');


-- create database company (4)
create database company;
use company;

-- create table employees
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,  
    name VARCHAR(100) NOT NULL,
    shift VARCHAR(50) NOT NULL,                  
    punch_in TIME NOT NULL,                      
    punch_out TIME NOT NULL,                     
    salary int NOT NULL               
);
-- display your table 
select * from employees;

INSERT INTO employees (name, shift, punch_in, punch_out, salary)
VALUES
('John Doe', 'Morning', '09:00:00', '17:00:00', 3000.00),
('Jane Smith', 'Evening', '14:00:00', '22:00:00', 3200.00),
('Emily Johnson', 'Morning', '08:30:00', '16:30:00', 2800.00),
('Michael Brown', 'Night', '22:00:00', '06:00:00', 3500.00),
('Chris Taylor', 'Morning', '09:00:00', '17:00:00', 2900.00),
('Olivia White', 'Evening', '13:00:00', '21:00:00', 3100.00),
('Sophia Harris', 'Morning', '07:30:00', '15:30:00', 3000.00),
('James Martin', 'Night', '23:00:00', '07:00:00', 3400.00),
('Liam Davis', 'Morning', '09:00:00', '17:00:00', 3200.00),
('Mia Garcia', 'Evening', '16:00:00', '00:00:00', 3300.00);

-- create table olympiad game
CREATE TABLE olympiad_game (
    game_id INT AUTO_INCREMENT PRIMARY KEY,  
    game VARCHAR(100) NOT NULL,              
    first_price int NOT NULL,     
    second_price int NOT NULL,    
    entry_fee int NOT NULL        
);
 -- display your table
select * from olympiad_game;

INSERT INTO olympiad_game (game, first_price, second_price, entry_fee)
VALUES
('Chess', 5000.00, 3000.00, 50.00),
('Math Olympiad', 7000.00, 4000.00, 75.00),
('Physics Quiz', 6000.00, 3500.00, 60.00),
('Programming Contest', 10000.00, 6000.00, 100.00),
('History Challenge', 4500.00, 2500.00, 40.00),
('Geography Bee', 4000.00, 2500.00, 30.00),
('English Spelling Bee', 3000.00, 1500.00, 25.00),
('Robotics Competition', 12000.00, 8000.00, 120.00),
('Art Olympiad', 2000.00, 1000.00, 50.00),
('Music Competition', 5500.00, 3000.00, 70.00);

-- create table vacancy
CREATE TABLE vacancy (
    vacancy_id INT AUTO_INCREMENT PRIMARY KEY,  
    job_role VARCHAR(100) NOT NULL,             
    highest_qualification VARCHAR(100) NOT NULL,
    skills VARCHAR(255) NOT NULL,               
    experience INT NOT NULL,                    
    date_of_joining DATE NOT NULL               
);

-- display your table
select * from vacancy;

INSERT INTO vacancy (job_role, highest_qualification, skills, experience, date_of_joining)
VALUES
('Software Engineer', 'B.Tech', 'Java, SQL, Problem Solving', 3, '2024-01-15'),
('Data Analyst', 'M.Sc. in Statistics', 'Excel, Python, Data Visualization', 2, '2024-02-01'),
('HR Manager', 'MBA', 'Recruitment, Communication, Employee Relations', 5, '2024-03-01'),
('Marketing Manager', 'MBA', 'SEO, SEM, Content Marketing', 4, '2024-04-01'),
('Graphic Designer', 'BFA', 'Photoshop, Illustrator, Creativity', 3, '2024-05-01'),
('Product Manager', 'MBA', 'Product Development, Market Research, Agile', 6, '2024-06-01'),
('Software Tester', 'B.Tech', 'Manual Testing, Automation, Python', 2, '2024-07-01'),
('Sales Executive', 'Any Graduate', 'Communication, Negotiation, CRM', 1, '2024-08-01'),
('Financial Analyst', 'M.Com', 'Excel, Financial Modelling, Accounting', 3, '2024-09-01'),
('UI/UX Designer', 'B.Des', 'Wireframing, Adobe XD, Figma', 2, '2024-10-01');

-- create table projects
CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,  
    project_name VARCHAR(100) NOT NULL,          
    department VARCHAR(50) NOT NULL,             
    manager VARCHAR(100) NOT NULL,               
    end_date DATE NOT NULL,                      
    total_employee INT NOT NULL,                 
    team VARCHAR(255) NOT NULL                   
);

-- display your table 
select * from projects;

INSERT INTO projects (project_name, department, manager, end_date, total_employee, team)
VALUES
('AI Research', 'IT', 'John Doe', '2024-12-31', 8, 'John, Emily, Mike, Sarah, David'),
('Website Redesign', 'Marketing', 'Emily Smith', '2024-08-15', 6, 'Emily, Tom, Alice, John, Mia'),
('Employee Onboarding', 'HR', 'Sophia White', '2024-06-30', 4, 'Sophia, Mark, Lily, James'),
('Cloud Migration', 'IT', 'Michael Brown', '2025-02-28', 12, 'Michael, Sarah, Ethan, Rachel, Lisa, Henry'),
('Branding Campaign', 'Marketing', 'James Martin', '2024-07-20', 7, 'James, Alice, Mia, Olivia, Luke'),
('Product Launch', 'Product Management', 'Olivia White', '2024-11-30', 5, 'Olivia, Brian, Mark, Ethan'),
('Mobile App Development', 'IT', 'Chris Taylor', '2025-01-10', 10, 'Chris, John, Emma, David, Liam'),
('Market Research', 'Marketing', 'Sarah Clark', '2024-09-25', 4, 'Sarah, Tom, Alice, John'),
('Sales Strategy', 'Sales', 'David Miller', '2024-10-15', 6, 'David, Olivia, Lily, Grace, Mark'),
('Internal Training Program', 'HR', 'Rachel Adams', '2024-12-10', 8, 'Rachel, James, Sarah, Sophia, Mike, Alice, Liam, Henry');

-- create table insurance
CREATE TABLE insurance (
    insurance_id INT AUTO_INCREMENT PRIMARY KEY,  
    employee_name VARCHAR(100) NOT NULL,           
    insurance_no VARCHAR(50) NOT NULL,             
    insurance_type VARCHAR(50) NOT NULL,           
    hospital VARCHAR(100) NOT NULL,                
    bill int  NOT NULL                   
);


truncate table insurance;
-- display your table
select* from insurance;

INSERT INTO insurance (employee_name, insurance_no, insurance_type, hospital, bill)
VALUES
('John Doe', 'INS123456', 'Health', 'City Hospital', 1500.00),
('Jane Smith', 'INS123457', 'Health', 'Sunshine Clinic', 1200.00),
('Emily Johnson', 'INS123458', 'Accident', 'Green Valley Hospital', 5000.00),
('Michael Brown', 'INS123459', 'Life', 'N/A', 20000.00),
('Chris Taylor', 'INS123460', 'Health', 'Eastside Medical Center', 1800.00),
('Olivia White', 'INS123461', 'Health', 'Bright Care Hospital', 2500.00),
('Sophia Harris', 'INS123462', 'Accident', 'Riverdale Hospital', 3500.00),
('James Martin', 'INS123463', 'Health', 'City Hospital', 2200.00),
('Liam Davis', 'INS123464', 'Health', 'Lakeside Clinic', 1600.00),
('Mia Garcia', 'INS123465', 'Life', 'N/A', 25000.00);

-- create database of burger king (5)
create database burger_king;
use  burger_king;

-- create table order
CREATE TABLE ORDERS(
    order_id INT AUTO_INCREMENT PRIMARY KEY,      
    order_no VARCHAR(50) NOT NULL,                
    client_name VARCHAR(100) NOT NULL,            
    food VARCHAR(255) NOT NULL,                   
    place VARCHAR(100) NOT NULL,                  
    contact_no VARCHAR(15) NOT NULL               
);

-- display your table 
select * FROM ORDERS;

INSERT INTO orders (order_no, client_name, food, place, contact_no)
VALUES
('ORD12345', 'John Doe', 'Pizza, Pasta', 'New York', '555-1234'),
('ORD12346', 'Jane Smith', 'Burger, Fries', 'Los Angeles', '555-2345'),
('ORD12347', 'Emily Johnson', 'Sushi, Miso Soup', 'Chicago', '555-3456'),
('ORD12348', 'Michael Brown', 'Steak, Mashed Potatoes', 'Miami', '555-4567'),
('ORD12349', 'Chris Taylor', 'Spaghetti, Garlic Bread', 'San Francisco', '555-5678'),
('ORD12350', 'Olivia White', 'Salad, Smoothie', 'Boston', '555-6789'),
('ORD12351', 'Sophia Harris', 'Tacos, Nachos', 'Dallas', '555-7890'),
('ORD12352', 'James Martin', 'Fried Chicken, Fries', 'Houston', '555-8901'),
('ORD12353', 'Liam Davis', 'Grilled Fish, Rice', 'Seattle', '555-9012'),
('ORD12354', 'Mia Garcia', 'Chicken Wings, Fries', 'San Diego', '555-0123');


-- create table staff
CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,    
    staff_name VARCHAR(100) NOT NULL,           
    joining_date DATE NOT NULL,                 
    experience INT NOT NULL,                    
    salary int NOT NULL,             
    place VARCHAR(100) NOT NULL                 
);

-- display your table
select * from staff;
 
 INSERT INTO staff (staff_name, joining_date, experience, salary, place)
VALUES
('John Doe', '2023-01-01', 5, 50000.00, 'New York'),
('Jane Smith', '2022-05-15', 3, 45000.00, 'Los Angeles'),
('Michael Brown', '2021-10-10', 7, 60000.00, 'Chicago'),
('Emily Johnson', '2020-06-20', 4, 48000.00, 'San Francisco'),
('Chris Taylor', '2021-03-05', 6, 55000.00, 'Miami'),
('Olivia White', '2022-08-10', 2, 42000.00, 'Boston'),
('Sophia Harris', '2019-11-25', 8, 65000.00, 'Dallas'),
('James Martin', '2020-12-15', 4, 47000.00, 'Houston'),
('Liam Davis', '2023-02-28', 3, 49000.00, 'Seattle'),
('Mia Garcia', '2018-07-30', 10, 70000.00, 'San Diego');

-- create table branch
CREATE TABLE branch (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,    
    branch_name VARCHAR(100) NOT NULL,           
    contact VARCHAR(15) NOT NULL,                
    manager VARCHAR(100) NOT NULL,               
    no_of_staffs INT NOT NULL,                   
    sales DECIMAL(10, 2) NOT NULL                
);

-- display your table
select * from branch ;

INSERT INTO branch (branch_name, contact, manager, no_of_staffs, sales)
VALUES
('New York Branch', '555-1234', 'John Doe', 20, 150000.00),
('Los Angeles Branch', '555-2345', 'Jane Smith', 15, 120000.00),
('Chicago Branch', '555-3456', 'Michael Brown', 25, 180000.00),
('San Francisco Branch', '555-4567', 'Emily Johnson', 18, 160000.00),
('Miami Branch', '555-5678', 'Chris Taylor', 22, 170000.00),
('Boston Branch', '555-6789', 'Olivia White', 12, 110000.00),
('Dallas Branch', '555-7890', 'Sophia Harris', 30, 200000.00),
('Houston Branch', '555-8901', 'James Martin', 17, 130000.00),
('Seattle Branch', '555-9012', 'Liam Davis', 19, 140000.00),
('San Diego Branch', '555-0123', 'Mia Garcia', 14, 125000.00);

-- create table feedback
CREATE TABLE feedback (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,   
    name VARCHAR(100) NOT NULL,                   
    gmail VARCHAR(100) NOT NULL,                   
    food VARCHAR(100) NOT NULL,                   
    rating INT NOT NULL,                           
    branch VARCHAR(100) NOT NULL                   
);

-- display your table
select * from feedback;


INSERT INTO feedback (name, gmail, food, rating, branch)
VALUES
('John Doe', 'john.doe@gmail.com', 'Pizza', 5, 'New York Branch'),
('Jane Smith', 'jane.smith@gmail.com', 'Burger', 4, 'Los Angeles Branch'),
('Michael Brown', 'michael.brown@gmail.com', 'Pasta', 3, 'Chicago Branch'),
('Emily Johnson', 'emily.johnson@gmail.com', 'Sushi', 5, 'San Francisco Branch'),
('Chris Taylor', 'chris.taylor@gmail.com', 'Steak', 4, 'Miami Branch'),
('Olivia White', 'olivia.white@gmail.com', 'Salad', 2, 'Boston Branch'),
('Sophia Harris', 'sophia.harris@gmail.com', 'Tacos', 4, 'Dallas Branch'),
('James Martin', 'james.martin@gmail.com', 'Fried Chicken', 5, 'Houston Branch'),
('Liam Davis', 'liam.davis@gmail.com', 'Grilled Fish', 3, 'Seattle Branch'),
('Mia Garcia', 'mia.garcia@gmail.com', 'Chicken Wings', 4, 'San Diego Branch');


-- create table sales
CREATE TABLE sales (
    sales_id INT AUTO_INCREMENT PRIMARY KEY,    
    day DATE NOT NULL,                          
    branch VARCHAR(100) NOT NULL,               
    sales int NOT NULL,              
    target int NOT NULL,              
    incentives int NOT NULL           
);
    
-- display your table
select * from sales;
    
    INSERT INTO sales (day, branch, sales, target, incentives)
VALUES
('2024-12-01', 'New York Branch', 1500.00, 2000.00, 100.00),
('2024-12-01', 'Los Angeles Branch', 1200.00, 1800.00, 80.00),
('2024-12-01', 'Chicago Branch', 1800.00, 1700.00, 90.00),
('2024-12-02', 'San Francisco Branch', 2000.00, 2500.00, 150.00),
('2024-12-02', 'Miami Branch', 2200.00, 2100.00, 120.00),
('2024-12-02', 'Boston Branch', 1600.00, 2000.00, 100.00),
('2024-12-03', 'Dallas Branch', 1900.00, 2100.00, 110.00),
('2024-12-03', 'Houston Branch', 1700.00, 2000.00, 90.00),
('2024-12-03', 'Seattle Branch', 1400.00, 1800.00, 70.00),
('2024-12-04', 'San Diego Branch', 2300.00, 2400.00, 140.00);

    
   -- create database real estate (6)
create database real_estate;
use real_estate;

-- create table  agents

CREATE TABLE agents (
    agent_id INT AUTO_INCREMENT PRIMARY KEY,    
    name VARCHAR(100) NOT NULL,                 
    salary int NOT NULL,             
    location VARCHAR(100) NOT NULL,             
    contact VARCHAR(15) NOT NULL,               
    date_of_joining DATE NOT NULL                
);

-- display your table
select * from agents;

-- insert values into table 

INSERT INTO agents (name, salary, location, contact, date_of_joining)
VALUES
('John Doe', 50000.00, 'New York', '555-1234', '2023-01-10'),
('Jane Smith', 55000.00, 'Los Angeles', '555-2345', '2022-08-15'),
('Michael Brown', 60000.00, 'Chicago', '555-3456', '2021-10-20'),
('Emily Johnson', 48000.00, 'San Francisco', '555-4567', '2023-04-05'),
('Chris Taylor', 52000.00, 'Miami', '555-5678', '2021-12-01'),
('Olivia White', 47000.00, 'Boston', '555-6789', '2023-07-25'),
('Sophia Harris', 56000.00, 'Dallas', '555-7890', '2020-06-30'),
('James Martin', 53000.00, 'Houston', '555-8901', '2022-11-10'),
('Liam Davis', 49000.00, 'Seattle', '555-9012', '2023-03-18'),
('Mia Garcia', 51000.00, 'San Diego', '555-0123', '2021-09-23');


-- create table sales

CREATE TABLE sales (
    day DATE NOT NULL,                          
    branch VARCHAR(100) NOT NULL,               
    sales varchar (100),
    target  int ,              
    incentives int         
);

    drop table sales;    
    
-- display your table
select * from sales;
    
    INSERT INTO sales (day, branch, sales, target, incentives)
VALUES
('2024-12-01', 'New York Branch', 1500.00, 2000.00, 100.00),
('2024-12-01', 'Los Angeles Branch', 1200.00, 1800.00, 80.00),
('2024-12-01', 'Chicago Branch', 1800.00, 1700.00, 90.00),
('2024-12-02', 'San Francisco Branch', 2000.00, 2500.00, 150.00),
('2024-12-02', 'Miami Branch', 2200.00, 2100.00, 120.00),
('2024-12-02', 'Boston Branch', 1600.00, 2000.00, 100.00),
('2024-12-03', 'Dallas Branch', 1900.00, 2100.00, 110.00),
('2024-12-03', 'Houston Branch', 1700.00, 2000.00, 90.00),
('2024-12-03', 'Seattle Branch', 1400.00, 1800.00, 70.00),
('2024-12-04', 'San Diego Branch', 2300.00, 2400.00, 140.00);


-- create table client
CREATE TABLE client (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    contact VARCHAR(15),
    gmail VARCHAR(255),
    area VARCHAR(255),
    budget int
);

-- display your table
select * from client;

INSERT INTO client (name, contact, gmail, area, budget) 
VALUES
('John Doe', '1234567890', 'john.doe@gmail.com', 'New York', 5000.00),
('Jane Smith', '9876543210', 'jane.smith@gmail.com', 'Los Angeles', 7500.00),
('Alice Brown', '5551234567', 'alice.brown@gmail.com', 'Chicago', 6000.00),
('Mike Johnson', '4448887777', 'mike.johnson@gmail.com', 'Houston', 4500.00),
('Emily Davis', '2223334444', 'emily.davis@gmail.com', 'Miami', 5200.00),
('Robert Wilson', '6669998888', 'robert.wilson@gmail.com', 'Seattle', 4800.00),
('Sophia Martinez', '1112223333', 'sophia.martinez@gmail.com', 'Denver', 5300.00),
('Liam Garcia', '3334445555', 'liam.garcia@gmail.com', 'Atlanta', 6100.00),
('Emma Taylor', '7776665555', 'emma.taylor@gmail.com', 'Boston', 7000.00),
('Noah Anderson', '9998887777', 'noah.anderson@gmail.com', 'San Francisco', 8200.00);


-- create table booking
CREATE TABLE booking (
    booking_id INT PRIMARY KEY,
    booking_date DATE,
    agents VARCHAR(255),
    house VARCHAR(255),
    area VARCHAR(255)
);

-- display your table
select * from booking;

INSERT INTO booking (booking_id, booking_date, agents, house, area) 
VALUES 
(1, '2024-12-01', 'Agent A', 'House 101', 'New York'),
(2, '2024-12-02', 'Agent B', 'House 102', 'Los Angeles'),
(3, '2024-12-03', 'Agent C', 'House 103', 'Chicago'),
(4, '2024-12-04', 'Agent D', 'House 104', 'Houston'),
(5, '2024-12-05', 'Agent E', 'House 105', 'Miami'),
(6, '2024-12-06', 'Agent F', 'House 106', 'Seattle'),
(7, '2024-12-07', 'Agent G', 'House 107', 'Denver'),
(8, '2024-12-08', 'Agent H', 'House 108', 'Atlanta'),
(9, '2024-12-09', 'Agent I', 'House 109', 'Boston'),
(10, '2024-12-10', 'Agent J', 'House 110', 'San Francisco');

-- create table cancellation
 
 CREATE TABLE cancellation (
    cancellation_id INT PRIMARY KEY,
    cancellation_date DATE,
    reason VARCHAR(255),
    area VARCHAR(255),
    client_name VARCHAR(255)
);

 -- display your table
select * from cancellation;

INSERT INTO cancellation (cancellation_id, cancellation_date, reason, area, client_name) 
VALUES
(1, '2024-12-01', 'Client changed plans', 'New York', 'John Doe'),
(2, '2024-12-02', 'Found another house', 'Los Angeles', 'Jane Smith'),
(3, '2024-12-03', 'Financial issues', 'Chicago', 'Alice Brown'),
(4, '2024-12-04', 'Relocation to another city', 'Houston', 'Mike Johnson'),
(5, '2024-12-05', 'No longer needed', 'Miami', 'Emily Davis'),
(6, '2024-12-06', 'Delayed move', 'Seattle', 'Robert Wilson'),
(7, '2024-12-07', 'Family emergency', 'Denver', 'Sophia Martinez'),
(8, '2024-12-08', 'Unsatisfied with terms', 'Atlanta', 'Liam Garcia'),
(9, '2024-12-09', 'Better deal elsewhere', 'Boston', 'Emma Taylor'),
(10, '2024-12-10', 'Change in budget', 'San Francisco', 'Noah Anderson');

-- create database institute of denver(7) 
create database denver_institute;
-- use your database 
use denver_institute;

CREATE TABLE teacher (
    name VARCHAR(255),
    salary int,
    qualification VARCHAR(255),
    experience INT,
    location VARCHAR(255)
);

-- display your database
select * from teacher;

-- insert values into teacher
INSERT INTO teacher (name, salary, qualification, experience, location) 
VALUES
('John Smith', 50000, 'Master\'s in Education', 10, 'New York'),
('Emily Johnson', 55000, 'PhD in Mathematics', 12, 'Los Angeles'),
('Michael Brown', 45000, 'Bachelor\'s in Science', 5, 'Chicago'),
('Sarah Davis', 48000, 'Master\'s in English', 8, 'Houston'),
('David Wilson', 60000, 'PhD in Physics', 15, 'Seattle'),
('Sophia Garcia', 52000, 'Master\'s in Biology', 9, 'Miami'),
('James Martinez', 47000, 'Bachelor\'s in History', 7, 'Denver'),
('Olivia Anderson', 53000, 'PhD in Chemistry', 11, 'Boston'),
('Liam Thomas', 49000, 'Master\'s in Computer Science', 6, 'San Francisco'),
('Isabella Taylor', 51000, 'Master\'s in Arts', 8, 'georgia');

-- use truncate 
truncate table teacher;


-- create table students
CREATE TABLE students (
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    division varchar(10),
    roll_no INT,
    standard INT
);

-- display your table
select * from students;

-- insert values in students table

INSERT INTO students (first_name, last_name, division, roll_no, standard) 
VALUES
('John', 'Doe', 'A', 1, 10),
('Emily', 'Smith', 'B', 2, 9),
('Michael', 'Brown', 'A', 3, 10),
('Sarah', 'Davis', 'C', 4, 8),
('David', 'Wilson', 'B', 5, 9),
('Sophia', 'Garcia', 'A', 6, 10),
('James', 'Martinez', 'C', 7, 8),
('Olivia', 'Anderson', 'B', 8, 9),
('Liam', 'Thomas', 'A', 9, 10),
('Isabella', 'Taylor', 'C', 10, 8);

-- create table subjects

CREATE TABLE subjects (
    subject_code VARCHAR(10),
    period_no INT,
    teacher VARCHAR(255),
    duration varchar(50),
    division varchar(50),
    standard INT
);

drop table subjects;


-- display your table
select * from subjects;

-- insert values into table

INSERT INTO subjects (subject_code, period_no, teacher, duration, division, standard) 
VALUES
('MATH101', 1, 'John Smith', '45 mins', 'A', 10),
('ENG202', 2, 'Emily Johnson', '30 mins', 'B', 9),
('SCI303', 3, 'Michael Brown', '45 mins', 'A', 10),
('HIST404', 4, 'Sarah Davis', '50 mins', 'C', 8),
('PHY505', 5, 'David Wilson', '50 mins', 'B', 10),
('CHEM606', 6, 'Sophia Garcia', '30 mins', 'A', 9),
('BIO707', 7, 'James Martinez', '25 mins', 'C', 8),
('COMP808', 8, 'Olivia Anderson', '45 mins', 'B', 10),
('ART909', 9, 'Liam Thomas', '30 mins', 'A', 9),
('PE1010', 10, 'Isabella Taylor', '35 mins', 'C', 8);

-- create table results

CREATE TABLE results (
    student_name VARCHAR(255),
    roll_no INT,
    subjects VARCHAR(255),
    marks INT,
    result VARCHAR(10)
);

-- display your table
select * from results;

-- insert values into tables

INSERT INTO results (student_name, roll_no, subjects, marks, result) 
VALUES
('John Doe', 1, 'Mathematics', 85, 'Pass'),
('Emily Smith', 2, 'Science', 78, 'Pass'),
('Michael Brown', 3, 'English', 65, 'Pass'),
('Sarah Davis', 4, 'History', 92, 'Pass'),
('David Wilson', 5, 'Physics', 58, 'Pass'),
('Sophia Garcia', 6, 'Chemistry', 49, 'Fail'),
('James Martinez', 7, 'Biology', 74, 'Pass'),
('Olivia Anderson', 8, 'Computer Science', 89, 'Pass'),
('Liam Thomas', 9, 'Art', 95, 'Pass'),
('Isabella Taylor', 10, 'Physical Education', 60, 'Pass');


-- create table games

CREATE TABLE games (
    game_name VARCHAR(255),
    student VARCHAR(255),
    class INT,
    ranks INT,
    prize VARCHAR(255)
);

-- display your table
select * from games;

-- insert values into tables

INSERT INTO games (game_name, student, class, ranks, prize) 
VALUES
('Football', 'John Doe', 10, 1, 'Gold Medal'),
('Basketball', 'Emily Smith', 9, 2, 'Silver Medal'),
('Cricket', 'Michael Brown', 10, 3, 'Bronze Medal'),
('Badminton', 'Sarah Davis', 8, 1, 'Gold Medal'),
('Table Tennis', 'David Wilson', 9, 2, 'Silver Medal'),
('Chess', 'Sophia Garcia', 10, 1, 'Gold Medal'),
('Volleyball', 'James Martinez', 8, 3, 'Bronze Medal'),
('Swimming', 'Olivia Anderson', 9, 1, 'Gold Medal'),
('Athletics', 'Liam Thomas', 10, 2, 'Silver Medal'),
('Hockey', 'Isabella Taylor', 8, 3, 'Bronze Medal');

-- create database of store(8)

create database store ;
use store;

-- create table employees
CREATE TABLE employees (
    name VARCHAR(255),
    shift VARCHAR(50),
    joining_date DATE,
    location VARCHAR(255),
    salary int
);

-- display your table
select * from employees;

-- insert values into tables 

INSERT INTO employees (name, shift, joining_date, location, salary) 
VALUES
('John Smith', 'Morning', '2020-05-01', 'New York', 50000),
('Emily Johnson', 'Evening', '2019-03-15', 'Los Angeles', 55000),
('Michael Brown', 'Night', '2021-07-20', 'Chicago', 45000),
('Sarah Davis', 'Morning', '2020-10-11', 'Houston', 48000),
('David Wilson', 'Evening', '2018-12-05', 'Miami', 60000),
('Sophia Garcia', 'Night', '2022-01-10', 'Seattle', 52000),
('James Martinez', 'Morning', '2021-09-25', 'Denver', 47000),
('Olivia Anderson', 'Evening', '2019-11-30', 'Boston', 53000),
('Liam Thomas', 'Night', '2020-06-18', 'San Francisco', 49000),
('Isabella Taylor', 'Morning', '2021-04-05', 'Atlanta', 51000);

-- create table product

CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    in_stock INT,
    requirement INT,
    today_sales INT
);
-- display your table
select * from product;

-- insert values into table
INSERT INTO product (product_id, product_name, in_stock, requirement, today_sales) 
VALUES
(1, 'Laptop', 50, 20, 15),
(2, 'Smartphone', 100, 50, 45),
(3, 'Headphones', 75, 30, 25),
(4, 'Keyboard', 40, 15, 10),
(5, 'Mouse', 60, 20, 18),
(6, 'Monitor', 30, 10, 8),
(7, 'Tablet', 25, 10, 7),
(8, 'Printer', 20, 5, 4),
(9, 'Webcam', 35, 12, 9),
(10, 'Router', 45, 18, 14);

-- create table sales
CREATE TABLE sales (
    day DATE,
    branch VARCHAR(255),
    sales int,
    target int,
    incentives int
);

-- display your table
select * from sales;

-- insert values into tables

INSERT INTO sales (day, branch, sales, target, incentives) 
VALUES
('2024-12-10', 'New York', 5000, 6000, 200),
('2024-12-10', 'Los Angeles', 4500, 5500, 150),
('2024-12-10', 'Chicago', 4800, 5000, 180),
('2024-12-10', 'Houston', 5200, 6000, 220),
('2024-12-10', 'Miami', 4700, 5000, 190),
('2024-12-10', 'Seattle', 4900, 5500, 170),
('2024-12-10', 'Denver', 5100, 6000, 210),
('2024-12-10', 'Boston', 4600, 5000, 160),
('2024-12-10', 'San Francisco', 5300, 6500, 230),
('2024-12-10', 'Atlanta', 4800, 5500, 180);


-- create table orders
CREATE TABLE orders (
    order_no INT PRIMARY KEY,
    client_name VARCHAR(255),
    product VARCHAR(255),
    amount int,
    contact_no VARCHAR(15)
);


-- display your table
select * from orders;

-- insert values into  tables
INSERT INTO orders (order_no, client_name, product, amount, contact_no) 
VALUES
(1, 'John Doe', 'Laptop', 1200, '1234567890'),
(2, 'Emily Smith', 'Smartphone', 800, '9876543210'),
(3, 'Michael Brown', 'Headphones', 150, '4567891230'),
(4, 'Sarah Davis', 'Keyboard', 100, '7891234560'),
(5, 'David Wilson', 'Monitor', 300, '3216549870'),
(6, 'Sophia Garcia', 'Tablet', 500, '6549873210'),
(7, 'James Martinez', 'Printer', 250, '5678901234'),
(8, 'Olivia Anderson', 'Mouse', 50, '8765432109'),
(9, 'Liam Thomas', 'Webcam', 70, '2345678901'),
(10, 'Isabella Taylor', 'Router', 90, '3456789012');


-- create table customer
CREATE TABLE customer (
    name VARCHAR(255),
    contact VARCHAR(15),
    product VARCHAR(255),
    bill int,
    mode_of_tranction VARCHAR(50)
);

-- display your table
select * from customer;

-- insert values into table 
INSERT INTO customer (name, contact, product, bill, mode_of_tranction) 
VALUES
('John Doe', '1234567890', 'Laptop', 12000, 'Credit Card'),
('Emily Smith', '9876543210', 'Smartphone', 80000, 'Cash'),
('Michael Brown', '4567891230', 'Headphones', 15000, 'Debit Card'),
('Sarah Davis', '7891234560', 'Keyboard', 10000, 'UPI'),
('David Wilson', '3216549870', 'Monitor', 30000, 'Net Banking'),
('Sophia Garcia', '6549873210', 'Tablet', 50000, 'Cash'),
('James Martinez', '5678901234', 'Printer', 25000, 'Credit Card'),
('Olivia Anderson', '8765432109', 'Mouse', 5000, 'UPI'),
('Liam Thomas', '2345678901', 'Webcam', 70000, 'Debit Card'),
('Isabella Taylor', '3456789012', 'Router', 9000, 'Net Banking');

truncate table customer;


-- create database of hotel(9)
create database hotel;
use hotel;

-- create table employee

CREATE TABLE employee (
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    shift VARCHAR(50),
    gmail VARCHAR(255),
    phone_no VARCHAR(15),
    salary int
);

-- display your table
select * from employee;


-- insert values into tables
INSERT INTO employee (first_name, last_name, shift, gmail, phone_no, salary) 
VALUES
('John', 'Doe', 'Morning', 'john.doe@gmail.com', '1234567890', 50000),
('Emily', 'Smith', 'Evening', 'emily.smith@gmail.com', '9876543210', 55000),
('Michael', 'Brown', 'Night', 'michael.brown@gmail.com', '4567891230', 45000),
('Sarah', 'Davis', 'Morning', 'sarah.davis@gmail.com', '7891234560', 48000),
('David', 'Wilson', 'Evening', 'david.wilson@gmail.com', '3216549870', 60000),
('Sophia', 'Garcia', 'Night', 'sophia.garcia@gmail.com', '6549873210', 52000),
('James', 'Martinez', 'Morning', 'james.martinez@gmail.com', '5678901234', 47000),
('Olivia', 'Anderson', 'Evening', 'olivia.anderson@gmail.com', '8765432109', 53000),
('Liam', 'Thomas', 'Night', 'liam.thomas@gmail.com', '2345678901', 49000),
('Isabella', 'Taylor', 'Morning', 'isabella.taylor@gmail.com', '3456789012', 51000);


-- create table guest

CREATE TABLE guest (
    room_no INT,
    no_of_person INT,
    check_in DATE,
    check_out DATE,
    food_order VARCHAR(3)
);

-- display your table
select * from guest;

-- insert values into tables

INSERT INTO guest (room_no, no_of_person, check_in, check_out, food_order) 
VALUES
(101, 2, '2024-12-15', '2024-12-20', 'Yes'),
(102, 1, '2024-12-16', '2024-12-18', 'No'),
(103, 4, '2024-12-14', '2024-12-19', 'Yes'),
(104, 3, '2024-12-13', '2024-12-15', 'Yes'),
(105, 2, '2024-12-15', '2024-12-17', 'No'),
(106, 1, '2024-12-16', '2024-12-18', 'Yes'),
(107, 5, '2024-12-12', '2024-12-16', 'Yes'),
(108, 2, '2024-12-15', '2024-12-21', 'No'),
(109, 3, '2024-12-14', '2024-12-18', 'Yes'),
(110, 1, '2024-12-16', '2024-12-17', 'No');


-- create table booking
CREATE TABLE booking (
    name VARCHAR(255),
    phone_no VARCHAR(15),
    status VARCHAR(50),
    aadhar_no VARCHAR(20),
    mode_of_payment VARCHAR(50)
);

-- display your table
select * from booking;


-- insert values into tables
INSERT INTO booking (name, phone_no, status, aadhar_no, mode_of_payment) 
VALUES
('John Doe', '1234567890', 'Confirmed', '1234-5678-9012', 'Credit Card'),
('Emily Smith', '9876543210', 'Pending', '2345-6789-0123', 'Cash'),
('Michael Brown', '4567891230', 'Cancelled', '3456-7890-1234', 'UPI'),
('Sarah Davis', '7891234560', 'Confirmed', '4567-8901-2345', 'Net Banking'),
('David Wilson', '3216549870', 'Pending', '5678-9012-3456', 'Debit Card'),
('Sophia Garcia', '6549873210', 'Confirmed', '6789-0123-4567', 'Credit Card'),
('James Martinez', '5678901234', 'Cancelled', '7890-1234-5678', 'Cash'),
('Olivia Anderson', '8765432109', 'Confirmed', '8901-2345-6789', 'UPI'),
('Liam Thomas', '2345678901', 'Pending', '9012-3456-7890', 'Net Banking'),
('Isabella Taylor', '3456789012', 'Confirmed', '0123-4567-8901', 'Debit Card');


-- create table payment
CREATE TABLE payment (
    payment_id INT PRIMARY KEY,
    room_no INT,
    payment_time DATETIME,
    transaction_mode VARCHAR(50),
    out_time DATETIME
);


-- display your table
select * from payment;

-- insert values into tables

INSERT INTO payment (payment_id, room_no, payment_time, transaction_mode, out_time) 
VALUES
(1, 101, '2024-12-15 12:30:00', 'Credit Card', '2024-12-20 11:00:00'),
(2, 102, '2024-12-16 09:00:00', 'Cash', '2024-12-18 10:00:00'),
(3, 103, '2024-12-14 14:15:00', 'Debit Card', '2024-12-19 11:30:00'),
(4, 104, '2024-12-13 16:45:00', 'UPI', '2024-12-15 12:00:00'),
(5, 105, '2024-12-15 10:00:00', 'Net Banking', '2024-12-17 09:30:00'),
(6, 106, '2024-12-16 11:45:00', 'Cash', '2024-12-18 10:00:00'),
(7, 107, '2024-12-12 13:30:00', 'UPI', '2024-12-16 12:00:00'),
(8, 108, '2024-12-15 15:00:00', 'Credit Card', '2024-12-21 11:00:00'),
(9, 109, '2024-12-14 18:30:00', 'Debit Card', '2024-12-18 12:00:00'),
(10, 110, '2024-12-16 08:00:00', 'Net Banking', '2024-12-17 09:00:00');



-- create table cancellation

CREATE TABLE cancellation (
    cancellation_id INT PRIMARY KEY,
    customer_id INT,
    book_time DATETIME,
    cancel_time DATETIME,
    status VARCHAR(50)
);

-- display your table
select * from cancellation;


-- insert values into tables

INSERT INTO cancellation (cancellation_id, customer_id, book_time, cancel_time, status) 
VALUES
(1, 101, '2024-12-10 10:00:00', '2024-12-11 15:00:00', 'Cancelled'),
(2, 102, '2024-12-09 09:30:00', '2024-12-10 11:00:00', 'Cancelled'),
(3, 103, '2024-12-08 12:45:00', '2024-12-09 14:15:00', 'Cancelled'),
(4, 104, '2024-12-07 14:00:00', '2024-12-08 16:30:00', 'Cancelled'),
(5, 105, '2024-12-10 08:00:00', '2024-12-10 18:00:00', 'Cancelled'),
(6, 106, '2024-12-11 09:15:00', '2024-12-11 12:00:00', 'Cancelled'),
(7, 107, '2024-12-09 10:30:00', '2024-12-10 14:45:00', 'Cancelled'),
(8, 108, '2024-12-08 11:00:00', '2024-12-09 16:00:00', 'Cancelled'),
(9, 109, '2024-12-10 13:00:00', '2024-12-10 19:00:00', 'Cancelled'),
(10, 110, '2024-12-09 14:00:00', '2024-12-10 17:30:00', 'Cancelled');

-- create database of upgrade courses (10)

create database upgrade_course;

-- use your database
use upgrade_course;

-- create table of courses
create table courses(course_name varchar (100),
duration varchar (100),
fees int ,
starting_date varchar (100),
tutor varchar (100));

-- display your table
select *from courses;

-- insert values in table 
INSERT INTO courses (course_name, duration, fees, starting_date, tutor) 
VALUES 
('Python Programming', '3 months', 500, '2024-01-15', 'John Doe'),
('Web Development', '4 months', 800, '2024-02-01', 'Jane Smith'),
('Data Science', '6 months', 1200, '2024-03-01', 'Alice Brown'),
('Graphic Design', '2 months', 400, '2024-01-20', 'Mike Johnson'),
('Digital Marketing', '3 months', 600, '2024-02-15', 'Emma Davis'),
('Machine Learning', '5 months', 1500, '2024-03-10', 'Liam Wilson'),
('Cloud Computing', '4 months', 1000, '2024-04-01', 'Sophia Lee'),
('Cybersecurity', '6 months', 1400, '2024-05-01', 'Chris Green'),
('UI/UX Design', '3 months', 700, '2024-01-25', 'Olivia Taylor'),
('Mobile App Development', '4 months', 900, '2024-02-10', 'Ethan Brown');

-- create table students
CREATE TABLE students (
    phone_no VARCHAR(15) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gmail VARCHAR(100) UNIQUE NOT NULL,
    course VARCHAR(100) NOT NULL,
    date_of_joining DATE NOT NULL,
    fees int NOT NULL
);

-- display your table
select * from students;

-- insert values into tables
INSERT INTO students (phone_no, name, gmail, course, date_of_joining, fees) 
VALUES 
('9876543210', 'Alice Johnson', 'alice.j@gmail.com', 'Python Programming', '2024-01-16', 500),
('8765432109', 'Bob Smith', 'bob.s@gmail.com', 'Web Development', '2024-02-02', 800),
('7654321098', 'Carol Davis', 'carol.d@gmail.com', 'Data Science', '2024-03-02', 1200),
('6543210987', 'David Brown', 'david.b@gmail.com', 'Graphic Design', '2024-01-21', 400),
('5432109876', 'Eve Taylor', 'eve.t@gmail.com', 'Digital Marketing', '2024-02-16', 600),
('4321098765', 'Frank Wilson', 'frank.w@gmail.com', 'Machine Learning', '2024-03-11', 1500),
('3210987654', 'Grace Lee', 'grace.l@gmail.com', 'Cloud Computing', '2024-04-02', 1000),
('2109876543', 'Henry Green', 'henry.g@gmail.com', 'Cybersecurity', '2024-05-02', 1400),
('1098765432', 'Isabel White', 'isabel.w@gmail.com', 'UI/UX Design', '2024-01-26', 700),
('1987654321', 'Jack Moore', 'jack.m@gmail.com', 'Mobile App Development', '2024-02-11', 900);


-- create table placements
CREATE TABLE placements (
    student_name VARCHAR(100) NOT NULL,
    placed  varchar(100),
    package int,
    courses VARCHAR(100) NOT NULL,
    post VARCHAR(100) NOT NULL
);

-- display your table
select * from placements;

-- insert values into tables

INSERT INTO placements (student_name, placed, package, courses, post) 
VALUES 
('Alice Johnson', 'yes', 75000, 'Python Programming', 'Software Developer'),
('Bob Smith', 'yes', 90000, 'Web Development', 'Frontend Developer'),
('Carol Davis', 'yes', 120000, 'Data Science', 'Data Scientist'),
('David Brown', 'yes', 100000, 'Graphic Design', 'Designer'),
('Eve Taylor', 'yes', 85000, 'Digital Marketing', 'Digital Marketing Specialist'),
('Frank Wilson', 'yes', 130000, 'Machine Learning', 'Machine Learning Engineer'),
('Grace Lee', 'yes', 95000, 'Cloud Computing', 'Cloud Engineer'),
('Henry Green', 'yes', 110000, 'Cybersecurity', 'Cybersecurity Analyst'),
('Isabel White', 'yes', 98000, 'UI/UX Design', 'UI/UX Designer'),
('Jack Moore', 'yes', 100000, 'Mobile App Development', 'Mobile App Developer');


-- create table tutors
CREATE TABLE tutors (
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    qualification VARCHAR(100) NOT NULL,
    experience varchar(100),
    gender VARCHAR(10) NOT NULL
);

-- display your table
select * from tutors;

drop table tutors;


-- insert values into tables
INSERT INTO tutors (first_name, last_name, qualification, experience, gender) 
VALUES 
('John', 'Doe', 'Master of Computer Applications','1 years', 'Male'),
('Jane', 'Smith', 'PhD in Computer Science', '9 years', 'Female'),
('Alice', 'Brown', 'BSc in Design', '2 years', 'Female'),
('Mike', 'Johnson', 'MBA in Marketing', '2 years', 'Male'),
('Emma', 'Davis', 'M.Tech in Data Science', '6 years', 'Female'),
('Liam', 'Wilson', 'MSc in Artificial Intelligence', '5 years', 'Male'),
('Sophia', 'Lee', 'B.Tech in Cloud Computing', '2 years', 'Female'),
('Chris', 'Green', 'M.Tech in Cybersecurity', '4 years', 'Male'),
('Olivia', 'Taylor', 'BFA in Graphic Design', '2 years', 'Female'),
('Ethan', 'Brown', 'M.Tech in Mobile Computing', '3 years', 'Male');

-- create table enquiry
CREATE TABLE enquiry (
    gmail VARCHAR(100) NOT NULL,
    contact VARCHAR(15) NOT NULL,
    location VARCHAR(100) NOT NULL,
    course VARCHAR(100) NOT NULL,
    status VARCHAR(20) NOT NULL
);

-- display your table
select * from enquiry;

-- insert values into tables
INSERT INTO enquiry (gmail, contact, location, course, status) 
VALUES 
('john.doe@gmail.com', '9876543210', 'New York', 'Python Programming', 'Pending'),
('jane.smith@gmail.com', '8765432109', 'California', 'Web Development', 'Completed'),
('alice.brown@gmail.com', '7654321098', 'Texas', 'Data Science', 'In Progress'),
('mike.johnson@gmail.com', '6543210987', 'Florida', 'Graphic Design', 'Pending'),
('emma.davis@gmail.com', '5432109876', 'Washington', 'Digital Marketing', 'Completed'),
('liam.wilson@gmail.com', '4321098765', 'Nevada', 'Machine Learning', 'In Progress'),
('sophia.lee@gmail.com', '3210987654', 'Illinois', 'Cloud Computing', 'Pending'),
('chris.green@gmail.com', '2109876543', 'Arizona', 'Cybersecurity', 'Completed'),
('olivia.taylor@gmail.com', '1098765432', 'Ohio', 'UI/UX Design', 'In Progress'),
('ethan.brown@gmail.com', '1987654321', 'Georgia', 'Mobile App Development', 'Pending');


-- create database myntra_app (11)

create database myntra_app;

-- use your database
use myntra_app;

-- create table order
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    brand_name VARCHAR(100) NOT NULL,
    order_time DATETIME NOT NULL
);

-- display your table
select * from orders;

-- insert values into tables

INSERT INTO orders (order_id, product, quantity, brand_name, order_time) 
VALUES 
(1, 'Laptop', 2, 'Dell', '2024-12-01 10:30:00'),
(2, 'Smartphone', 1, 'Apple', '2024-12-02 14:20:00'),
(3, 'Headphones', 3, 'Sony', '2024-12-03 09:45:00'),
(4, 'Smartwatch', 2, 'Samsung', '2024-12-04 16:00:00'),
(5, 'Gaming Console', 1, 'Microsoft', '2024-12-05 18:30:00'),
(6, 'Tablet', 1, 'Lenovo', '2024-12-06 12:15:00'),
(7, 'Camera', 1, 'Canon', '2024-12-07 13:50:00'),
(8, 'Printer', 4, 'HP', '2024-12-08 11:10:00'),
(9, 'Monitor', 2, 'LG', '2024-12-09 15:25:00'),
(10, 'Keyboard', 5, 'Logitech', '2024-12-10 08:40:00');


-- create table cancellation
CREATE TABLE cancellation (
    product_name VARCHAR(100) NOT NULL,
    product_id INT PRIMARY KEY,
    cancellation_time DATETIME NOT NULL,
    reason VARCHAR(255) NOT NULL,
    status VARCHAR(20) NOT NULL
);

-- display your table
select * from cancellation;

-- insert values into tables
INSERT INTO cancellation (product_name, product_id, cancellation_time, reason, status) 
VALUES 
('Laptop', 101, '2024-12-02 11:30:00', 'Customer changed mind', 'Cancelled'),
('Smartphone', 102, '2024-12-03 14:00:00', 'Damaged during delivery', 'Refunded'),
('Headphones', 103, '2024-12-04 09:00:00', 'Product was defective', 'Cancelled'),
('Smartwatch', 104, '2024-12-05 17:00:00', 'Wrong product delivered', 'Refunded'),
('Gaming Console', 105, '2024-12-06 13:00:00', 'Customer found better deal', 'Cancelled'),
('Tablet', 106, '2024-12-07 12:15:00', 'Product did not meet expectations', 'Cancelled'),
('Camera', 107, '2024-12-08 10:00:00', 'Customer changed mind', 'Refunded'),
('Printer', 108, '2024-12-09 16:30:00', 'Faulty product', 'Cancelled'),
('Monitor', 109, '2024-12-10 08:45:00', 'Product was too large', 'Refunded'),
('Keyboard', 110, '2024-12-11 15:00:00', 'Customer no longer needed', 'Cancelled');


-- create table return
CREATE TABLE returns (
    product_name VARCHAR(100) NOT NULL,
    pick_up_location VARCHAR(100) NOT NULL,
    phone_no VARCHAR(15) NOT NULL,
    client_name VARCHAR(100) NOT NULL,
    reason VARCHAR(255) NOT NULL
);

-- display your table
select * from returns;

-- insert values into tables

INSERT INTO returns (product_name, pick_up_location, phone_no, client_name, reason) 
VALUES 
('Laptop', 'New York', '9876543210', 'John Doe', 'Product not as described'),
('Smartphone', 'California', '8765432109', 'Jane Smith', 'Defective screen'),
('Headphones', 'Texas', '7654321098', 'Alice Brown', 'No longer needed'),
('Smartwatch', 'Florida', '6543210987', 'Mike Johnson', 'Found better deal'),
('Gaming Console', 'Washington', '5432109876', 'Emma Davis', 'Changed mind'),
('Tablet', 'Nevada', '4321098765', 'Liam Wilson', 'Received wrong model'),
('Camera', 'Illinois', '3210987654', 'Sophia Lee', 'Faulty product'),
('Printer', 'Arizona', '2109876543', 'Chris Green', 'Product was too large'),
('Monitor', 'Ohio', '1098765432', 'Olivia Taylor', 'Did not meet expectations'),
('Keyboard', 'Georgia', '1987654321', 'Ethan Brown', 'No longer needed');

-- create table products

CREATE TABLE products (
    product VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL,
    instock INT NOT NULL,
    branch VARCHAR(100) NOT NULL,
    product_id INT PRIMARY KEY
);


-- display your table
select * from products;

-- insert values into tables

INSERT INTO products (product, manufacturer, instock, branch, product_id) 
VALUES 
('Laptop', 'Dell', 50, 'New York', 101),
('Smartphone', 'Apple', 30, 'California', 102),
('Headphones', 'Sony', 100, 'Texas', 103),
('Smartwatch', 'Samsung', 75, 'Florida', 104),
('Gaming Console', 'Microsoft', 40, 'Washington', 105),
('Tablet', 'Lenovo', 60, 'Nevada', 106),
('Camera', 'Canon', 20, 'Illinois', 107),
('Printer', 'HP', 80, 'Arizona', 108),
('Monitor', 'LG', 90, 'Ohio', 109),
('Keyboard', 'Logitech', 150, 'Georgia', 110);


-- create table brands

CREATE TABLE brands (
    brand_name VARCHAR(100) NOT NULL,
    category VARCHAR(100) NOT NULL,
    supplier VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL,
    contract VARCHAR(100) NOT NULL
);

-- display your table
select * from brands;

-- insert values into tables

INSERT INTO brands (brand_name, category, supplier, manufacturer, contract) 
VALUES 
('Dell', 'Electronics', 'Tech Supplies Inc.', 'Dell Technologies', '2 Years'),
('Apple', 'Electronics', 'GlobalTech Supplies', 'Apple Inc.', '1 Year'),
('Sony', 'Audio', 'AudioConnect', 'Sony Corporation', '3 Years'),
('Samsung', 'Electronics', 'SmartWorld Distributors', 'Samsung Electronics', '5 Years'),
('Microsoft', 'Gaming', 'GameZone Suppliers', 'Microsoft Corporation', '4 Years'),
('Lenovo', 'Computing', 'CompTech Solutions', 'Lenovo Group', '2 Years'),
('Canon', 'Imaging', 'PhotoTech Supplies', 'Canon Inc.', '3 Years'),
('HP', 'Electronics', 'OfficePlus Supplies', 'Hewlett-Packard', '1 Year'),
('LG', 'Electronics', 'TechWorld Distributors', 'LG Electronics', '2 Years'),
('Logitech', 'Peripherals', 'TechGear Inc.', 'Logitech International', '3 Years');


-- create datebase of cricket club (12)
create database cricket_club; 

-- use your database
use cricket_club; 

-- create table coach

CREATE TABLE coach (
    name VARCHAR(100) NOT NULL,
    contact VARCHAR(15) NOT NULL,
    age INT NOT NULL,
    experience INT NOT NULL,
    joining_date DATE NOT NULL
);

-- display your table
select * from coach;

-- insert values into tables

INSERT INTO coach (name, contact, age, experience, joining_date) 
VALUES 
('John Doe', '9876543210', 35, 10, '2015-06-10'),
('Jane Smith', '8765432109', 40, 12, '2014-09-15'),
('Mike Johnson', '7654321098', 30, 8, '2017-03-20'),
('Alice Brown', '6543210987', 45, 20, '2012-01-25'),
('Emma Davis', '5432109876', 38, 15, '2016-07-11'),
('Liam Wilson', '4321098765', 33, 10, '2018-04-15'),
('Sophia Lee', '3210987654', 29, 6, '2020-05-05'),
('Chris Green', '2109876543', 50, 25, '2008-11-30'),
('Olivia Taylor', '1098765432', 27, 5, '2021-09-01'),
('Ethan Brown', '1987654321', 37, 13, '2014-12-22');


-- create table players

CREATE TABLE players (
    players_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    gmail VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

-- display your table
select * from players;

-- insert values into tables

INSERT INTO players (players_name, age, gender, gmail, location) 
VALUES 
('John Doe', 25, 'Male', 'johndoe@example.com', 'New York'),
('Jane Smith', 28, 'Female', 'janesmith@example.com', 'California'),
('Mike Johnson', 22, 'Male', 'mikejohnson@example.com', 'Texas'),
('Alice Brown', 30, 'Female', 'alicebrown@example.com', 'Florida'),
('Emma Davis', 24, 'Female', 'emmadavis@example.com', 'Nevada'),
('Liam Wilson', 27, 'Male', 'liamwilson@example.com', 'Illinois'),
('Sophia Lee', 21, 'Female', 'sophialee@example.com', 'Arizona'),
('Chris Green', 26, 'Male', 'chrisgreen@example.com', 'Ohio'),
('Olivia Taylor', 23, 'Female', 'oliviataylor@example.com', 'Georgia'),
('Ethan Brown', 29, 'Male', 'ethanbrown@example.com', 'Michigan');


-- create table batsman

CREATE TABLE batsman (
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    matches INT NOT NULL,
    strike_rate int NOT NULL,
    best_score INT NOT NULL
);

-- display your table
select * from batsman ;

-- insert values into tables

INSERT INTO batsman (first_name, last_name, matches, strike_rate, best_score) 
VALUES 
('Virat', 'Kohli', 254, 130, 122),
('Rohit', 'Sharma', 227, 136, 264),
('Shikhar', 'Dhawan', 190, 126, 143),
('MS', 'Dhoni', 350, 87, 183),
('Chris', 'Gayle', 300, 138, 175),
('AB', 'de Villiers', 229, 101, 162),
('David', 'Warner', 150, 141, 169),
('Kane', 'Williamson', 142, 74, 135),
('Joe', 'Root', 155, 90, 133),
('Steve', 'Smith', 150, 84, 154);

-- create table baller

CREATE TABLE baller (
    players_name VARCHAR(100) NOT NULL,
    matches INT NOT NULL,
    wickets INT NOT NULL,
    average int NOT NULL,
    age INT NOT NULL
);

-- display your table
select * from baller;

-- insert values into tables

INSERT INTO baller (players_name, matches, wickets, average, age) 
VALUES 
('Jasprit Bumrah', 92, 120, 24, 30),
('Mitchell Starc', 98, 180, 26, 33),
('Rashid Khan', 56, 120, 21, 25),
('Shaheen Shah Afridi', 55, 95, 27, 23),
('Trent Boult', 100, 250, 27, 34),
('Moeen Ali', 60, 100, 36, 37),
('Yuzvendra Chahal', 70, 130, 25, 33),
('Dale Steyn', 93, 400, 22, 40),
('Kagiso Rabada', 60, 150, 26, 29),
('James Anderson', 170, 650, 27, 41);


-- create table all_rounder

CREATE TABLE all_rounder (
    players_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    matches INT NOT NULL,
    strike_rate int NOT NULL,
    wickets INT NOT NULL,
    best_score INT NOT NULL,
    average int NOT NULL
);

-- display your table
select * from all_rounder;

-- insert values into tables

INSERT INTO all_rounder (players_name, age, matches, strike_rate, wickets, best_score, average) 
VALUES 
('Ben Stokes', 32, 100, 89, 175, 258, 35),
('Shakib Al Hasan', 37, 218, 78, 275, 124, 33),
('Hardik Pandya', 30, 70, 142, 90, 91, 29),
('Ravindra Jadeja', 35, 171, 79, 250, 87, 31),
('Chris Woakes', 35, 118, 85, 150, 105, 33),
('Mohammad Nabi', 39, 110, 75, 150, 89, 35),
('Dwayne Bravo', 40, 150, 120, 250, 86, 30),
('Jack Leach', 32, 50, 65, 30, 48, 29),
('Kieron Pollard', 36, 170, 145, 190, 87, 32),
('Marcus Stoinis', 34, 75, 128, 100, 84, 31);

-- to make changes in table trunacate is used
truncate table all_rounder;


-- create database travel agency (13)
create database travel_gency;

--  use your database 
use travel_agency;

-- create table staff

CREATE TABLE staff (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    location VARCHAR(100) NOT NULL,
    salary int NOT NULL
);

-- display your table
select * from staff;

-- insert values into tables
INSERT INTO staff (name, age, gender, location, salary) 
VALUES 
('John Doe', 40, 'Male', 'New York', 75000),
('Jane Smith', 35, 'Female', 'California', 80000),
('Michael Johnson', 45, 'Male', 'Texas', 95000),
('Emily Davis', 30, 'Female', 'Florida', 70000),
('David Wilson', 50, 'Male', 'Illinois', 105000),
('Sophia Lee', 38, 'Female', 'Nevada', 90000),
('Liam Brown', 28, 'Male', 'Ohio', 65000),
('Olivia Taylor', 33, 'Female', 'Georgia', 85000),
('James Anderson', 47, 'Male', 'Michigan', 110000),
('Charlotte Harris', 42, 'Female', 'Arizona', 95000);


-- create table branch

CREATE TABLE branch (
    branch_id INT PRIMARY KEY,
    location VARCHAR(100) NOT NULL,
    no_of_staff INT NOT NULL,
    manager VARCHAR(100) NOT NULL,
    contact VARCHAR(15) NOT NULL
);

-- display your table
select * from branch;

-- insert values into tables-- insert values into tables

INSERT INTO branch (branch_id, location, no_of_staff, manager, contact) 
VALUES 
(1, 'New York', 50, 'John Doe', '123-456-7890'),
(2, 'California', 40, 'Jane Smith', '234-567-8901'),
(3, 'Texas', 45, 'Michael Johnson', '345-678-9012'),
(4, 'Florida', 35, 'Emily Davis', '456-789-0123'),
(5, 'Illinois', 60, 'David Wilson', '567-890-1234'),
(6, 'Nevada', 30, 'Sophia Lee', '678-901-2345'),
(7, 'Ohio', 25, 'Liam Brown', '789-012-3456'),
(8, 'Georgia', 55, 'Olivia Taylor', '890-123-4567'),
(9, 'Michigan', 50, 'James Anderson', '901-234-5678'),
(10, 'Arizona', 40, 'Charlotte Harris', '012-345-6789');


-- create table client

CREATE TABLE client (
    name VARCHAR(100) NOT NULL,
    no_of_person INT NOT NULL,
    charges int NOT NULL,
    destination VARCHAR(100) NOT NULL,
    contact VARCHAR(15) NOT NULL
);

-- display your table
select * from client;

-- insert values into tables

INSERT INTO client (name, no_of_person, charges, destination, contact) 
VALUES 
('Alice Johnson', 4, 5000.00, 'Paris', '123-456-7890'),
('Bob Williams', 2, 3000.00, 'New York', '234-567-8901'),
('Charlie Brown', 5, 7000.00, 'London', '345-678-9012'),
('David Smith', 3, 4500.00, 'Tokyo', '456-789-0123'),
('Eve Davis', 6, 9000.00, 'Dubai', '567-890-1234'),
('Frank Miller', 2, 3500.00, 'Rome', '678-901-2345'),
('Grace Wilson', 4, 5500.00, 'Sydney', '789-012-3456'),
('Hannah Moore', 3, 4000.00, 'Barcelona', '890-123-4567'),
('Ivy Lee', 1, 2000.00, 'Amsterdam', '901-234-5678'),
('Jack Taylor', 7, 10000.00, 'Cape Town', '012-345-6789');


-- create table traveler

CREATE TABLE traveler (
    traveler_no INT PRIMARY KEY,
    purchase_date DATE NOT NULL,
    purchase_price int NOT NULL,
    insurance VARCHAR(50) NOT NULL,
    insurance_renewal DATE
);

-- display your table
select * from traveler;

-- insert values into tables

INSERT INTO traveler (traveler_no, purchase_date, purchase_price, insurance, insurance_renewal) 
VALUES 
(1, '2023-06-15', 1500.00, 'Full Coverage', '2024-06-15'),
(2, '2023-07-20', 1200.00, 'Basic Coverage', '2024-07-20'),
(3, '2023-08-10', 2000.00, 'Full Coverage', '2024-08-10'),
(4, '2023-09-05', 1700.00, 'Full Coverage', '2024-09-05'),
(5, '2023-10-12', 900.00, 'No Insurance', NULL),
(6, '2023-11-18', 1300.00, 'Basic Coverage', '2024-11-18'),
(7, '2023-12-01', 1800.00, 'Full Coverage', '2024-12-01'),
(8, '2024-01-22', 1100.00, 'Basic Coverage', '2025-01-22'),
(9, '2024-02-14', 1600.00, 'Full Coverage', '2025-02-14'),
(10, '2024-03-08', 1400.00, 'No Insurance', NULL);


-- create table route

CREATE TABLE route (
    route_id INT PRIMARY KEY,
    traveler_no INT NOT NULL,
    pick_up VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    stops VARCHAR(255)
);

-- display your table
select * from route ;

-- insert values into tables

INSERT INTO route (route_id, traveler_no, pick_up, destination, stops) 
VALUES 
(1, 1, 'New York', 'Paris', 'London, Amsterdam'),
(2, 2, 'Los Angeles', 'Tokyo', 'Dubai, Singapore'),
(3, 3, 'Chicago', 'London', 'Paris, Zurich'),
(4, 4, 'Miami', 'Dubai', 'Athens, Cairo'),
(5, 5, 'San Francisco', 'Rome', 'Barcelona'),
(6, 6, 'Boston', 'Sydney', 'Singapore, Hong Kong'),
(7, 7, 'Dallas', 'Cape Town', 'Nairobi, Johannesburg'),
(8, 8, 'Atlanta', 'Barcelona', 'Paris, Madrid'),
(9, 9, 'Seattle', 'Amsterdam', 'Brussels, Berlin'),
(10, 10, 'Chicago', 'Tokyo', 'Seoul, Hong Kong');


-- create data base of wankhede stadium
create database wankhede_stadium;

-- use your data base 
use wankhede_stadium;


-- create table of matches

CREATE TABLE matches (
    date DATE NOT NULL,
    timing TIME NOT NULL,
    tickets_sold INT NOT NULL,
    vs VARCHAR(50) NOT NULL,  
    seats_available INT NOT NULL
);

-- display your table
select * from matches ;

-- insert values into tables

INSERT INTO matches (date, timing, tickets_sold, vs, seats_available) 
VALUES 
('2024-12-20', '14:30:00', 2000, 'Team A vs Team B', 3000),
('2024-12-21', '18:00:00', 1500, 'Team C vs Team D', 3500),
('2024-12-22', '15:00:00', 2500, 'Team E vs Team F', 2500),
('2024-12-23', '17:30:00', 2200, 'Team G vs Team H', 2800),
('2024-12-24', '13:00:00', 1800, 'Team I vs Team J', 3200),
('2024-12-25', '16:00:00', 2100, 'Team K vs Team L', 2900),
('2024-12-26', '19:30:00', 2700, 'Team M vs Team N', 2300),
('2024-12-27', '14:00:00', 1600, 'Team O vs Team P', 3400),
('2024-12-28', '16:30:00', 1900, 'Team Q vs Team R', 3100),
('2024-12-29', '12:30:00', 2300, 'Team S vs Team T', 2700);


-- create table staff
CREATE TABLE staff (
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    age INT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    location VARCHAR(100) NOT NULL,
    shift VARCHAR(50) NOT NULL,
    post VARCHAR(50) NOT NULL
);

drop  table staff;


-- display your table
select * from staff;

-- insert values into tables

INSERT INTO staff (name, gender, age, salary, location, shift, post) 
VALUES 
('John Doe', 'Male', 30, 45000.00, 'New York', 'Morning', 'Manager'),
('Jane Smith', 'Female', 28, 38000.00, 'California', 'Evening', 'Supervisor'),
('Robert Johnson', 'Male', 35, 50000.00, 'Texas', 'Night', 'Team Lead'),
('Emily Davis', 'Female', 40, 55000.00, 'Florida', 'Morning', 'Senior Manager'),
('Michael Brown', 'Male', 32, 43000.00, 'Illinois', 'Evening', 'Coordinator'),
('Sophia Wilson', 'Female', 29, 39000.00, 'Nevada',  'Morning', 'Assistant'),
('James Taylor', 'Male', 45, 60000.00, 'Ohio',  'Night', 'Director'),
('Olivia Martinez', 'Female', 27, 35000.00, 'Georgia',  'Evening', 'Team Lead'),
('Liam Garcia', 'Male', 38, 47000.00, 'Michigan', 'Morning', 'Supervisor'),
('Charlotte Harris', 'Female', 33, 42000.00, 'Arizona', 'Night', 'Manager');


-- create table ticket

CREATE TABLE ticket (
    ticket_id INT PRIMARY KEY,
    ticket_price DECIMAL(10, 2) NOT NULL,
    matches VARCHAR(50) NOT NULL,  
    no_of_tickets INT NOT NULL,  
    seat_type VARCHAR(50) NOT NULL  
);

-- display your table
select * from ticket;

-- insert values into tables

INSERT INTO ticket (ticket_id, ticket_price, matches, no_of_tickets, seat_type) 
VALUES 
(1, 50.00, 'Team A vs Team B', 3000, 'VIP'),
(2, 30.00, 'Team C vs Team D', 3500, 'Regular'),
(3, 45.00, 'Team E vs Team F', 2500, 'Balcony'),
(4, 60.00, 'Team G vs Team H', 2800, 'VIP'),
(5, 40.00, 'Team I vs Team J', 3200, 'Regular'),
(6, 35.00, 'Team K vs Team L', 2900, 'Balcony'),
(7, 55.00, 'Team M vs Team N', 2300, 'VIP'),
(8, 25.00, 'Team O vs Team P', 3400, 'Regular'),
(9, 50.00, 'Team Q vs Team R', 3100, 'Balcony'),
(10, 45.00, 'Team S vs Team T', 2700, 'VIP');


-- create table of fans

CREATE TABLE fans (
    name VARCHAR(100) NOT NULL,
    no_of_tickets INT NOT NULL,
    seat VARCHAR(50) NOT NULL,  
    contact VARCHAR(15) NOT NULL,
    gmail VARCHAR(100) NOT NULL
);

-- display your table
select * from fans;

-- insert values into tables

INSERT INTO fans (name, no_of_tickets, seat, contact, gmail) 
VALUES 
('Alice Johnson', 2, 'VIP', '1234567890', 'alice.johnson@example.com'),
('Bob Smith', 4, 'Regular', '9876543210', 'bob.smith@example.com'),
('Charlie Brown', 1, 'Balcony', '1122334455', 'charlie.brown@example.com'),
('David Williams', 3, 'VIP', '2233445566', 'david.williams@example.com'),
('Eva Davis', 2, 'Regular', '3344556677', 'eva.davis@example.com'),
('Frank Wilson', 5, 'Balcony', '4455667788', 'frank.wilson@example.com'),
('Grace Taylor', 2, 'VIP', '5566778899', 'grace.taylor@example.com'),
('Henry Martinez', 4, 'Regular', '6677889900', 'henry.martinez@example.com'),
('Isla Lee', 3, 'Balcony', '7788990011', 'isla.lee@example.com'),
('Jack Scott', 1, 'VIP', '8899001122', 'jack.scott@example.com');


-- create table of celebrities

CREATE TABLE celebrities (
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    teams VARCHAR(100) NOT NULL,  
    in_time TIME NOT NULL,        
    out_time TIME NOT NULL        
);

-- display your table
select * from celebrities;

-- insert values into tables

INSERT INTO celebrities (first_name, last_name, teams, in_time, out_time) 
VALUES 
('Will', 'Smith', 'Team A', '14:30:00', '16:30:00'),
('Scarlett', 'Johansson', 'Team B', '13:00:00', '15:00:00'),
('Chris', 'Hemsworth', 'Team C', '11:30:00', '13:30:00'),
('Zendaya', 'Coleman', 'Team D', '12:00:00', '14:00:00'),
('Dwayne', 'Johnson', 'Team E', '14:00:00', '16:00:00'),
('Tom', 'Holland', 'Team F', '10:00:00', '12:00:00'),
('Emma', 'Stone', 'Team G', '09:30:00', '11:30:00'),
('Ryan', 'Reynolds', 'Team H', '16:00:00', '18:00:00'),
('Jennifer', 'Lawrence', 'Team I', '17:30:00', '19:30:00'),
('Keanu', 'Reeves', 'Team J', '15:30:00', '17:30:00');

-- create database saloon and spa
create database saloon_and_spa;

-- use your database saloon_and_spa
use saloon_and_spa;

-- create table of branch

CREATE TABLE branch (
    branch_id INT PRIMARY KEY,
    location VARCHAR(100) NOT NULL,
    no_of_employee INT NOT NULL,  
    new_joiner INT NOT NULL,      
    manager VARCHAR(100) NOT NULL 
);

-- display your table
select * from branch;

-- insert values into tables

INSERT INTO branch (branch_id, location, no_of_employee, new_joiner, manager) 
VALUES 
(1, 'New York', 50, 5, 'John Doe'),
(2, 'Los Angeles', 60, 8, 'Jane Smith'),
(3, 'Chicago', 45, 3, 'David Williams'),
(4, 'Houston', 70, 10, 'Emily Davis'),
(5, 'Phoenix', 40, 4, 'Michael Brown'),
(6, 'Dallas', 55, 6, 'Sophia Wilson'),
(7, 'San Francisco', 65, 7, 'James Taylor'),
(8, 'Miami', 35, 2, 'Olivia Martinez'),
(9, 'Boston', 50, 5, 'Liam Garcia'),
(10, 'Seattle', 60, 9, 'Charlotte Harris');


-- create table staff

CREATE TABLE staff (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    specialist VARCHAR(50) NOT NULL,  
    experience INT NOT NULL,          
    gender VARCHAR(10) NOT NULL       
);

-- display your table
select * from staff;

-- insert values into tables

INSERT INTO staff (name, age, specialist, experience, gender) 
VALUES 
('Alice Johnson', 28, 'Hair Stylist', 5, 'Female'),
('Bob Smith', 35, 'Barber', 10, 'Male'),
('Cathy Brown', 30, 'Nail Technician', 7, 'Female'),
('David Clark', 40, 'Massage Therapist', 15, 'Male'),
('Eva Davis', 25, 'Hair Stylist', 3, 'Female'),
('Frank Wilson', 38, 'Hair Stylist', 12, 'Male'),
('Grace Taylor', 32, 'Makeup Artist', 6, 'Female'),
('Henry Martinez', 45, 'Barber', 20, 'Male'),
('Isla Lee', 27, 'Nail Technician', 4, 'Female'),
('Jack Scott', 33, 'Massage Therapist', 9, 'Male');


-- create table client

CREATE TABLE  client (
    name VARCHAR(100) NOT NULL,
    service VARCHAR(100) NOT NULL,  
    amount int NOT NULL, 
    transaction_mode VARCHAR(50) NOT NULL,  
    feedback varchar (100)
);

-- display your table
select * from client;

-- insert values into tables

INSERT INTO client (name, service, amount, transaction_mode, feedback) 
VALUES 
('Alice Johnson', 'Hair Cut', 30.00, 'Credit Card', 'Excellent service, very professional!'),
('Bob Smith', 'Facial', 50.00, 'Cash', 'Good experience, will come again.'),
('Cathy Brown', 'Massage', 40.00, 'Debit Card', 'Relaxing massage, highly recommend!'),
('David Clark', 'Hair Cut', 35.00, 'Cash', 'Great haircut, friendly staff.'),
('Eva Davis', 'Nail Art', 25.00, 'Credit Card', 'Beautiful nails, loved the design!'),
('Frank Wilson', 'Hair Cut', 45.00, 'Debit Card', 'Quick service, very happy with the results.'),
('Grace Taylor', 'Facial', 60.00, 'Credit Card', 'Very soothing facial, would visit again.'),
('Henry Martinez', 'Massage', 55.00, 'Cash', 'Best massage I’ve had in years!'),
('Isla Lee', 'Hair Cut', 40.00, 'Credit Card', 'Nice haircut, but a bit expensive.'),
('Jack Scott', 'Nail Art', 30.00, 'Debit Card', 'Love my nails, friendly staff!');


-- create table of services
CREATE TABLE services (
    name VARCHAR(100) NOT NULL,         
    charges int NOT NULL,    
    special_offer VARCHAR(100),         
    start_from DATE NOT NULL,           
    ending DATE NOT NULL                
);


-- display your table
select * from services;

-- insert values into tables

INSERT INTO services (name, charges, special_offer, start_from, ending) 
VALUES 
('Hair Cut', 30.00, '20% off on first visit', '2024-12-01', '2024-12-31'),
('Facial', 50.00, 'Buy one get one free', '2024-12-10', '2024-12-25'),
('Massage', 40.00, '10% off for students', '2024-12-05', '2024-12-20'),
('Nail Art', 25.00, 'Free nail polish with every service', '2024-12-01', '2024-12-31'),
('Pedicure', 35.00, '15% off for seniors', '2024-12-15', '2024-12-31'),
('Hair Coloring', 60.00, 'Free consultation', '2024-12-10', '2024-12-20'),
('Waxing', 20.00, '30% off for new clients', '2024-12-01', '2024-12-15'),
('Bridal Makeup', 100.00, 'Free trial makeup', '2024-12-01', '2024-12-10'),
('Men’s Grooming', 45.00, 'Free beard trim with haircut', '2024-12-01', '2024-12-31'),
('Skin Treatment', 70.00, '10% off on package deals', '2024-12-05', '2024-12-25');


-- create table of enquiry

CREATE TABLE enquiry (
    name VARCHAR(100) NOT NULL,           
    gender VARCHAR(10) NOT NULL,        
    service VARCHAR(100) NOT NULL,       
    calling_time time NOT NULL,     
    call_end TIME NOT NULL          
);

drop table enquiry;

-- display your table
select * from enquiry;

-- insert values into tables

INSERT INTO enquiry (name, gender, service, calling_time, call_end) 
VALUES 
('Alice Johnson', 'Female', 'Hair Cut', '09:15:00', '09:30:00'),
('Bob Smith', 'Male', 'Facial', '10:00:00', '10:15:00'),
('Cathy Brown', 'Female', 'Massage', '11:05:00', '11:25:00'),
('David Clark', 'Male', 'Nail Art', '12:10:00', '12:25:00'),
('Eva Davis', 'Female', 'Hair Coloring', '13:00:00', '13:20:00'),
('Frank Wilson', 'Male', 'Pedicure', '14:10:00', '14:30:00'),
('Grace Taylor', 'Female', 'Bridal Makeup', '15:15:00', '15:35:00'),
('Henry Martinez', 'Male', 'Massage', '16:00:00', '16:20:00'),
('Isla Lee', 'Female', 'Hair Cut', '17:30:00', '17:50:00'),
('Jack Scott', 'Male', 'Skin Treatment', '18:00:00', '18:25:00');

-- create datbase of TMT BUs
create database tmt_bus;

-- use your database tmt_bus;
use tmt_bus;

-- create table route

CREATE TABLE route (
    route_id INT PRIMARY KEY,          
    starting_point VARCHAR(100) NOT NULL,  
    destination VARCHAR(100) NOT NULL,     
    driver_name VARCHAR(100) NOT NULL,     
    stops INT NOT NULL                     
);

-- display your table 
select * from route;

-- insert values into tables
INSERT INTO route (route_id, starting_point, destination, driver_name, stops) 
VALUES 
(1, 'New York', 'Washington, D.C.', 'John Doe', 5),
(2, 'Los Angeles', 'San Francisco', 'Jane Smith', 3),
(3, 'Houston', 'Dallas', 'Michael Brown', 4),
(4, 'Chicago', 'Detroit', 'Emily Johnson', 6),
(5, 'Miami', 'Orlando', 'Chris Davis', 2),
(6, 'Seattle', 'Portland', 'Anna Wilson', 3),
(7, 'Denver', 'Salt Lake City', 'Robert Martinez', 4),
(8, 'Atlanta', 'Charlotte', 'Patricia Lee', 3),
(9, 'Boston', 'Philadelphia', 'David Clark', 5),
(10, 'Phoenix', 'Las Vegas', 'Laura Taylor', 2);

-- create table passenger
CREATE TABLE passenger (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    ticket_price int NOT NULL
);
-- display your table
select * from passenger;

-- insert values into tables

INSERT INTO passenger (name, age, gender, destination, ticket_price) 
VALUES 
('Alice Johnson', 25, 'Female', 'New York', 50.00),
('Bob Smith', 30, 'Male', 'Washington, D.C.', 45.00),
('Cathy Brown', 22, 'Female', 'Los Angeles', 60.00),
('David Clark', 35, 'Male', 'San Francisco', 55.00),
('Eva Davis', 28, 'Female', 'Miami', 40.00),
('Frank Wilson', 40, 'Male', 'Orlando', 35.00),
('Grace Taylor', 33, 'Female', 'Chicago', 70.00),
('Henry Martinez', 45, 'Male', 'Dallas', 65.00),
('Isla Lee', 29, 'Female', 'Seattle', 50.00),
('Jack Scott', 38, 'Male', 'Las Vegas', 80.00);


-- create table ticket
CREATE TABLE ticket (
    ticket_type VARCHAR(50) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    no_of_tickets INT NOT NULL,
    transaction_mode VARCHAR(50) NOT NULL,
    booking_time datetime NOT NULL
);
  
  -- display your table
select * from ticket ;

INSERT INTO ticket (ticket_type, destination, no_of_tickets, transaction_mode, booking_time) 
VALUES 
('Economy', 'New York', 2, 'Credit Card', '2024-12-19 10:15:00'),
('Business', 'Los Angeles', 1, 'Debit Card', '2024-12-19 11:00:00'),
('Economy', 'Miami', 3, 'Cash', '2024-12-19 12:30:00'),
('First Class', 'San Francisco', 1, 'UPI', '2024-12-19 13:45:00'),
('Economy', 'Chicago', 4, 'Net Banking', '2024-12-19 14:20:00'),
('Business', 'Dallas', 2, 'Credit Card', '2024-12-19 15:10:00'),
('First Class', 'Seattle', 1, 'Debit Card', '2024-12-19 16:00:00'),
('Economy', 'Las Vegas', 3, 'Cash', '2024-12-19 17:25:00'),
('Business', 'Washington, D.C.', 2, 'UPI', '2024-12-19 18:40:00'),
('Economy', 'Orlando', 5, 'Net Banking', '2024-12-19 19:30:00');


 -- create table driver

CREATE TABLE driver (
    name VARCHAR(100) NOT NULL,
    salary int NOT NULL,
    experience varchar (100),
    age INT NOT NULL,
    contact VARCHAR(15) NOT NULL
);

-- display your table
select * from driver ;

drop table driver;

truncate table driver;

-- insert values into tables

INSERT INTO driver (name, salary, experience, age, contact) 
VALUES 
('John Doe', 45000.00, '10 years', 40, '9876543210'),
('Jane Smith', 50000.00, '10 years', 40, '9876543211'),
('Michael Brown', 42000.00, '10 years', 30, '9876543212'),
('Emily Johnson', 48000.00, '10 years', 38, '9876543213'),
('Chris Davis', 46000.00, '10 years', 34, '9876543214'),
('Anna Wilson', 47000.00, '10 years', 36, '9876543215'),
('Robert Martinez', 52000.00, '10 years', 42, '9876543216'),
('Patricia Lee', 43000.00, '10 years', 29, '9876543217'),
('David Clark', 49000.00, '10 years', 39, '9876543218'),
('Laura Taylor', 51000.00, '10 years', 41, '9876543219');

-- create table of cancellation
CREATE TABLE cancellation (
    name VARCHAR(100) NOT NULL,
    cancellation_time datetime NOT NULL,
    ticket_price int NOT NULL,
    no_of_tickets INT NOT NULL,
    status VARCHAR(50) NOT NULL
);

-- display your table
select * from cancellation;

-- insert values into tables

INSERT INTO cancellation (name, cancellation_time, ticket_price, no_of_tickets, status) 
VALUES 
('Alice Johnson', '2024-12-19 09:30:00', 50.00, 2, 'Confirmed'),
('Bob Smith', '2024-12-19 10:00:00', 45.00, 1, 'Pending'),
('Cathy Brown', '2024-12-19 11:15:00', 60.00, 3, 'Confirmed'),
('David Clark', '2024-12-19 12:45:00', 55.00, 1, 'Refunded'),
('Eva Davis', '2024-12-19 13:30:00', 40.00, 2, 'Confirmed'),
('Frank Wilson', '2024-12-19 14:10:00', 35.00, 1, 'Pending'),
('Grace Taylor', '2024-12-19 15:20:00', 70.00, 4, 'Refunded'),
('Henry Martinez', '2024-12-19 16:05:00', 65.00, 2, 'Confirmed'),
('Isla Lee', '2024-12-19 17:40:00', 50.00, 3, 'Pending'),
('Jack Scott', '2024-12-19 18:25:00', 80.00, 1, 'Refunded');


-- create database of Rmall
create database r_mall;

-- use your database r_mall
use r_mall;

-- create table of shops
create table shops(
    shop_no INT PRIMARY KEY,
    floor_no INT NOT NULL,
    rent int NOT NULL,
    open_time TIME NOT NULL,
    closing_time TIME NOT NULL
);

-- display your table
select * from shops ;

-- insert values into tables
INSERT INTO shops (shop_no, floor_no, rent, open_time, closing_time) 
VALUES 
(101, 1, 15000.00, '09:00:00', '21:00:00'),
(102, 1, 18000.00, '10:00:00', '22:00:00'),
(201, 2, 20000.00, '09:30:00', '21:30:00'),
(202, 2, 22000.00, '10:00:00', '22:00:00'),
(301, 3, 25000.00, '08:00:00', '20:00:00'),
(302, 3, 26000.00, '09:00:00', '21:00:00'),
(401, 4, 30000.00, '10:00:00', '22:00:00'),
(402, 4, 32000.00, '11:00:00', '23:00:00'),
(501, 5, 35000.00, '09:00:00', '20:00:00'),
(502, 5, 37000.00, '10:00:00', '22:00:00');


-- create table festival_seasons 

CREATE TABLE festival_seasons (
    product_name VARCHAR(100) NOT NULL,
    discount varchar(100),
    start_from DATE NOT NULL,
    ending_date DATE NOT NULL,
    product_id INT PRIMARY KEY
);
drop table festival_seasons;


-- display your table
select * from festival_seasons ;

-- insert values into tables


INSERT INTO festival_seasons (product_name, discount, start_from, ending_date, product_id) 
VALUES 
('Smartphone', '15 %', '2024-12-20', '2024-12-31', 101),
('Laptop', '35 %', '2024-12-20', '2024-12-31', 102),
('Washing Machine', '30 %', '2024-12-20', '2024-12-31', 103),
('Refrigerator','15 %', '2024-12-20', '2024-12-31', 104),
('Microwave Oven', '15 %', '2024-12-20', '2024-12-31', 105),
('Television', '25 %', '2024-12-20', '2024-12-31', 106),
('Air Conditioner', '15 %', '2024-12-20', '2024-12-31', 107),
('Vacuum Cleaner', '40 %', '2024-12-20', '2024-12-31', 108),
('Camera', '20 %', '2024-12-20', '2024-12-31', 109),
('Headphones', '15 %', '2024-12-20', '2024-12-31', 110);

-- create table of cafe

CREATE TABLE cafe (
    cafe_name VARCHAR(100) NOT NULL,
    contact VARCHAR(15) NOT NULL,
    floor INT NOT NULL,
    branch VARCHAR(100) NOT NULL,
    manager VARCHAR(100) NOT NULL
);

-- display your table
select * from cafe ;

-- insert values into tables

INSERT INTO cafe (cafe_name, contact, floor, branch, manager) 
VALUES 
('Starbucks', '9876543210', 1, 'Downtown', 'Alice Johnson'),
('Costa Coffee', '9876543211', 2, 'Uptown', 'Bob Smith'),
('Cafe Nero', '9876543212', 3, 'City Center', 'Cathy Brown'),
('Gloria Jeans', '9876543213', 1, 'Suburb', 'David Clark'),
('Tim Hortons', '9876543214', 4, 'Midtown', 'Eva Davis'),
('Dunkin Donuts', '9876543215', 2, 'Downtown', 'Frank Wilson'),
('Blue Bottle', '9876543216', 3, 'West End', 'Grace Taylor'),
('Peet\'s Coffee', '9876543217', 1, 'East Side', 'Henry Martinez'),
('Java House', '9876543218', 4, 'North End', 'Isla Lee'),
('Pret A Manger', '9876543219', 2, 'South Side', 'Jack Scott');



-- create table of puma_brand

CREATE TABLE puma_brand (
    opening_time TIME NOT NULL,
    closing_time TIME NOT NULL,
    recent_offers VARCHAR(255),
    products VARCHAR(255) NOT NULL,
    rent int NOT NULL,
    contact VARCHAR(15) NOT NULL
);

-- display your table
select * from puma_brand ;

-- insert values into tables


INSERT INTO puma_brand (opening_time, closing_time, recent_offers, products, rent, contact) 
VALUES 
('09:00:00', '21:00:00', 'Buy 1 Get 1 Free on Shoes', 'Shoes', 20000.00, '9876543210'),
('10:00:00', '22:00:00', 'Flat 30% off on Apparel', 'Clothing', 25000.00, '9876543211'),
('09:30:00', '21:30:00', '20% off on Accessories', 'Bags', 15000.00, '9876543212'),
('10:00:00', '22:00:00', 'Up to 40% off on Sportswear', 'Sportswear', 30000.00, '9876543213'),
('08:00:00', '20:00:00', '10% cashback on Footwear', 'Footwear', 18000.00, '9876543214'),
('09:00:00', '21:00:00', 'Special Combo Offers', 'Clothing and Shoes', 22000.00, '9876543215'),
('10:00:00', '22:00:00', 'Clearance Sale: Up to 50%', 'Apparel', 26000.00, '9876543216'),
('11:00:00', '23:00:00', 'Exclusive Offer: Free Accessories', 'Accessories', 28000.00, '9876543217'),
('09:00:00', '20:00:00', 'Limited Time Offer: 15% Off', 'Shoes and Bags', 24000.00, '9876543218'),
('10:00:00', '22:00:00', 'Flat 25% Off Storewide', 'All Products', 27000.00, '9876543219');


-- create table of beauty_products

CREATE TABLE beauty_products (
    name VARCHAR(100) NOT NULL,
    price int NOT NULL,
    category VARCHAR(100) NOT NULL,
    product VARCHAR(100) NOT NULL,
    contract VARCHAR(255)
);

-- display your table
select * from beauty_products;

-- insert values into tables

INSERT INTO beauty_products (name, price, category, product, contract) 
VALUES 
('L’Oreal Paris', 25.00, 'Hair Care', 'Shampoo', '6-month supply contract'),
('Maybelline', 15.00, 'Makeup', 'Lipstick', 'Yearly distribution contract'),
('Neutrogena', 20.00, 'Skincare', 'Face Wash', 'Exclusive retail agreement'),
('MAC Cosmetics', 50.00, 'Makeup', 'Foundation', 'Partnership for promotions'),
('Dove', 18.00, 'Body Care', 'Body Lotion', 'Standard retail contract'),
('Clinique', 40.00, 'Skincare', 'Moisturizer', 'Exclusive salon contract'),
('Pantene', 22.00, 'Hair Care', 'Conditioner', '6-month bulk purchase contract'),
('Revlon', 30.00, 'Makeup', 'Eyeliner', 'Seasonal discount contract'),
('Olay', 35.00, 'Skincare', 'Anti-aging Cream', 'Premium retail partnership'),
('Nivea', 12.00, 'Body Care', 'Deodorant', 'Standard retail contract');



-- create database HP_BRAND
create database HP_BRAND;

-- use your database
use HP_BRAND;

-- create table of employee
CREATE TABLE employee (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gmail VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    contact VARCHAR(15) NOT NULL,
    department VARCHAR(100) NOT NULL
);

-- display your table
select * from employee;

-- insert values into tables

INSERT INTO employee (name, age, gmail, location, contact, department) 
VALUES 
('John Doe', 28, 'john.doe@example.com', 'New York', '9876543210', 'Sales'),
('Jane Smith', 35, 'jane.smith@example.com', 'Los Angeles', '9876543211', 'Marketing'),
('David Clark', 42, 'david.clark@example.com', 'Chicago', '9876543212', 'HR'),
('Emily Johnson', 30, 'emily.johnson@example.com', 'Miami', '9876543213', 'Finance'),
('Michael Brown', 38, 'michael.brown@example.com', 'San Francisco', '9876543214', 'Operations'),
('Grace Taylor', 27, 'grace.taylor@example.com', 'Dallas', '9876543215', 'Customer Support'),
('Anna Wilson', 33, 'anna.wilson@example.com', 'Seattle', '9876543216', 'Product Development'),
('Robert Martinez', 40, 'robert.martinez@example.com', 'Boston', '9876543217', 'Legal'),
('Laura Lee', 29, 'laura.lee@example.com', 'Denver', '9876543218', 'IT'),
('Patricia Scott', 45, 'patricia.scott@example.com', 'Austin', '9876543219', 'Logistics');


-- create table of customer_care

CREATE TABLE customer_care (
    name VARCHAR(100) NOT NULL,
    product VARCHAR(100) NOT NULL,
    purchase_date DATE NOT NULL,
    issue VARCHAR(255) NOT NULL,
    status VARCHAR(50) NOT NULL
);

-- display your table
select * from customer_care;

-- insert values into tables

INSERT INTO customer_care (name, product, purchase_date, issue, status) 
VALUES 
('Alice Johnson', 'Smartphone', '2024-11-10', 'Screen not responding', 'Pending'),
('Bob Smith', 'Laptop', '2024-11-15', 'Battery draining quickly', 'Resolved'),
('Cathy Brown', 'Washing Machine', '2024-10-25', 'Water leakage', 'Pending'),
('David Clark', 'Refrigerator', '2024-12-01', 'Not cooling properly', 'Pending'),
('Eva Davis', 'Microwave Oven', '2024-11-20', 'Door not closing properly', 'Resolved'),
('Frank Wilson', 'Television', '2024-09-10', 'Screen flickering', 'Pending'),
('Grace Taylor', 'Air Conditioner', '2024-08-05', 'Not turning on', 'Resolved'),
('Henry Martinez', 'Vacuum Cleaner', '2024-11-30', 'Power issue', 'Pending'),
('Isla Lee', 'Camera', '2024-12-05', 'Lens not focusing', 'Resolved'),
('Jack Scott', 'Headphones', '2024-12-01', 'Audio distortion', 'Pending');


-- create table of offers

CREATE TABLE offers (
    products VARCHAR(100) NOT NULL,
    discount int NOT NULL,
    products_id INT PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);

-- display your table
select * from offers ;

-- insert values into tables

INSERT INTO offers (products, discount, products_id, start_date, end_date) 
VALUES 
('Smartphone', 10.00, 101, '2024-12-20', '2024-12-31'),
('Laptop', 15.00, 102, '2024-12-20', '2024-12-31'),
('Washing Machine', 20.00, 103, '2024-12-20', '2024-12-31'),
('Refrigerator', 25.00, 104, '2024-12-20', '2024-12-31'),
('Microwave Oven', 12.00, 105, '2024-12-20', '2024-12-31'),
('Television', 18.00, 106, '2024-12-20', '2024-12-31'),
('Air Conditioner', 22.00, 107, '2024-12-20', '2024-12-31'),
('Vacuum Cleaner', 15.00, 108, '2024-12-20', '2024-12-31'),
('Camera', 30.00, 109, '2024-12-20', '2024-12-31'),
('Headphones', 25.00, 110, '2024-12-20', '2024-12-31');


-- create table of products


CREATE TABLE products (
    products_name VARCHAR(100) NOT NULL,
    product_id INT PRIMARY KEY,
    manufacturer VARCHAR(100) NOT NULL,
    in_stock INT NOT NULL,
    supplier VARCHAR(100) NOT NULL
);

-- display your table
select * from products ;

-- insert values into tables

INSERT INTO products (products_name, product_id, manufacturer, in_stock, supplier) 
VALUES 
('Smartphone', 101, 'Samsung', 150, 'ABC Electronics'),
('Laptop', 102, 'Dell', 80, 'XYZ Supplies'),
('Washing Machine', 103, 'LG', 50, 'Home Appliances Ltd'),
('Refrigerator', 104, 'Whirlpool', 60, 'ElectroTech Suppliers'),
('Microwave Oven', 105, 'Panasonic', 120, 'Global Electronics'),
('Television', 106, 'Sony', 100, 'Digital World Ltd'),
('Air Conditioner', 107, 'Daikin', 40, 'CoolTech Suppliers'),
('Vacuum Cleaner', 108, 'Dyson', 200, 'CleanTech Solutions'),
('Camera', 109, 'Canon', 90, 'PhotoTech Distributors'),
('Headphones', 110, 'Bose', 250, 'AudioWorld Supplies');

-- create table of client

CREATE TABLE client (
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    contact VARCHAR(15) NOT NULL,
    gmail VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL
);
-- display your table
select * from client ;

-- insert values into tables


INSERT INTO client (name, gender, contact, gmail, address) 
VALUES 
('Alice Johnson', 'Female', '9876543210', 'alice.johnson@example.com', '123 Main St, New York'),
('Bob Smith', 'Male', '9876543211', 'bob.smith@example.com', '456 Oak Ave, Los Angeles'),
('Cathy Brown', 'Female', '9876543212', 'cathy.brown@example.com', '789 Pine Rd, Chicago'),
('David Clark', 'Male', '9876543213', 'david.clark@example.com', '101 Maple Dr, Miami'),
('Eva Davis', 'Female', '9876543214', 'eva.davis@example.com', '202 Birch Ln, Dallas'),
('Frank Wilson', 'Male', '9876543215', 'frank.wilson@example.com', '303 Cedar Blvd, Seattle'),
('Grace Taylor', 'Female', '9876543216', 'grace.taylor@example.com', '404 Elm St, Boston'),
('Henry Martinez', 'Male', '9876543217', 'henry.martinez@example.com', '505 Oakwood Ave, San Francisco'),
('Isla Lee', 'Female', '9876543218', 'isla.lee@example.com', '606 Willow Dr, Denver'),
('Jack Scott', 'Male', '9876543219', 'jack.scott@example.com', '707 Fir St, Austin');

-- create database of hostel
create database hostel;

-- use your daatabase
use hostel;

-- create table students

CREATE TABLE students (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    contact VARCHAR(15) NOT NULL,
    gmail VARCHAR(100) NOT NULL
);
-- display your table
select * from students;

-- insert values into tables

INSERT INTO students (name, age, gender, contact, gmail) 
VALUES 
('Emily Johnson', 20, 'Female', '9876543210', 'emily.johnson@example.com'),
('Michael Brown', 22, 'Male', '9876543211', 'michael.brown@example.com'),
('Sarah Lee', 19, 'Female', '9876543212', 'sarah.lee@example.com'),
('David Wilson', 21, 'Male', '9876543213', 'david.wilson@example.com'),
('Sophia Taylor', 23, 'Female', '9876543214', 'sophia.taylor@example.com'),
('James Martinez', 20, 'Male', '9876543215', 'james.martinez@example.com'),
('Olivia Scott', 18, 'Female', '9876543216', 'olivia.scott@example.com'),
('Daniel Clark', 24, 'Male', '9876543217', 'daniel.clark@example.com'),
('Isabella Davis', 19, 'Female', '9876543218', 'isabella.davis@example.com'),
('Ethan Moore', 22, 'Male', '9876543219', 'ethan.moore@example.com');

-- Create the room table 

CREATE TABLE room (
    room_no INT PRIMARY KEY,
    capacity INT NOT NULL,
    floor INT NOT NULL,
    building_no INT NOT NULL,
    students INT NOT NULL
);

-- display your table
select * from room;

-- insert values into tables
INSERT INTO room (room_no, capacity, floor, building_no, students) 
VALUES 
(101, 4, 1, 1, 3),
(102, 6, 1, 1, 5),
(201, 3, 2, 1, 2),
(202, 5, 2, 1, 4),
(301, 2, 3, 2, 1),
(302, 8, 3, 2, 6),
(401, 7, 4, 2, 5),
(402, 10, 4, 2, 8),
(501, 12, 5, 3, 9),
(502, 9, 5, 3, 7);


-- Create the library table and insert values
CREATE TABLE library (
    book_name VARCHAR(255) NOT NULL,
    students_name VARCHAR(255) NOT NULL,
    purchased_date DATE NOT NULL,
    signature VARCHAR(255) NOT NULL
);
-- display your table
select * from library;

-- insert values into tables

INSERT INTO library (book_name, students_name, purchased_date, signature) 
VALUES 
('Introduction to Algorithms', 'Emily Johnson', '2024-12-01', 'EJ001'),
('Python Programming', 'Michael Brown', '2024-11-25', 'MB002'),
('Data Science Handbook', 'Sarah Lee', '2024-12-03', 'SL003'),
('Machine Learning Basics', 'David Wilson', '2024-11-29', 'DW004'),
('Artificial Intelligence', 'Sophia Taylor', '2024-12-05', 'ST005'),
('Database Management', 'James Martinez', '2024-11-27', 'JM006'),
('Operating Systems', 'Olivia Scott', '2024-12-02', 'OS007'),
('Computer Networks', 'Daniel Clark', '2024-12-04', 'DC008'),
('Software Engineering', 'Isabella Davis', '2024-11-30', 'ID009'),
('Cybersecurity Essentials', 'Ethan Moore', '2024-12-06', 'EM010');

-- Create the games table and insert values
CREATE TABLE games (
    games_name VARCHAR(100) NOT NULL,
    starting_DATE  date NOT NULL,
    ending_DATE date NOT NULL,
    students VARCHAR(255) NOT NULL,
    ranks INT NOT NULL,
    prize VARCHAR(100) NOT NULL
);
-- display your table
select * from games ;

-- insert values into tables

INSERT INTO games (games_name, starting_DATE, ending_DATE, students, ranks, prize) 
VALUES 
('Football', '2024-12-01', '2024-12-05', 'Michael Brown', 1, 'Gold Medal'),
('Basketball', '2024-12-06', '2024-12-10', 'Emily Johnson', 2, 'Silver Medal'),
('Cricket', '2024-12-11', '2024-12-15', 'David Wilson', 3, 'Bronze Medal'),
('Table Tennis', '2024-12-16', '2024-12-18', 'Sarah Lee', 1, 'Gift Voucher'),
('Badminton', '2024-12-19', '2024-12-21', 'Sophia Taylor', 2, 'Silver Medal'),
('Chess', '2024-12-22', '2024-12-23', 'James Martinez', 1, 'Cash Prize'),
('Volleyball', '2024-12-24', '2024-12-26', 'Olivia Scott', 3, 'Certificate'),
('Swimming', '2024-12-27', '2024-12-28', 'Daniel Clark', 1, 'Trophy'),
('Athletics', '2024-12-29', '2024-12-30', 'Isabella Davis', 2, 'Medal'),
('Hockey', '2024-12-31', '2025-01-02', 'Ethan Moore', 1, 'Cash Prize');

-- Create the exams table and insert values
CREATE TABLE exams (
    exam_name VARCHAR(100) NOT NULL,
    exam_date DATE NOT NULL,
    timing TIME NOT NULL,
    passing_marks INT NOT NULL,
    invigilator VARCHAR(100) NOT NULL
);

-- display your table
select * from exams ;

-- insert values into tables

INSERT INTO exams (exam_name, exam_date, timing, passing_marks, invigilator) 
VALUES 
('Mathematics', '2024-12-10', '10:00:00', 35, 'Mr. John Smith'),
('Physics', '2024-12-12', '11:00:00', 40, 'Ms. Jane Doe'),
('Chemistry', '2024-12-14', '09:30:00', 38, 'Dr. Alice Johnson'),
('Biology', '2024-12-16', '12:00:00', 36, 'Dr. Robert Brown'),
('English', '2024-12-18', '10:30:00', 30, 'Ms. Emily Davis'),
('History', '2024-12-20', '11:15:00', 32, 'Mr. Michael Taylor'),
('Geography', '2024-12-22', '09:45:00', 34, 'Ms. Olivia Scott'),
('Computer Science', '2024-12-24', '10:00:00', 40, 'Dr. Ethan Clark'),
('Economics', '2024-12-26', '12:15:00', 35, 'Mr. Daniel White'),
('Political Science', '2024-12-28', '11:00:00', 33, 'Ms. Sophia Green');

-- create database of kumar_collection 
create database kumar_collection;

 -- use your database kumar_collection
use kumar_collection;

-- create table staff

CREATE TABLE staff (
    name VARCHAR(100) NOT NULL,
    salary int NOT NULL,
    location VARCHAR(100) NOT NULL,
    branch VARCHAR(100) NOT NULL,
    contact VARCHAR(15) NOT NULL
);

-- display your table
select * from staff;

-- insert values into tables

INSERT INTO staff (name, salary, location, branch, contact) 
VALUES 
('Alice Johnson', 50000.00, 'New York', 'Main', '9876543210'),
('Bob Smith', 45000.00, 'Los Angeles', 'West', '9876543211'),
('Cathy Brown', 48000.00, 'Chicago', 'North', '9876543212'),
('David Clark', 47000.00, 'Miami', 'South', '9876543213'),
('Eva Davis', 52000.00, 'Dallas', 'East', '9876543214'),
('Frank Wilson', 49000.00, 'Seattle', 'Northwest', '9876543215'),
('Grace Taylor', 46000.00, 'Boston', 'Northeast', '9876543216'),
('Henry Martinez', 53000.00, 'San Francisco', 'West', '9876543217'),
('Isla Lee', 51000.00, 'Denver', 'Central', '9876543218'),
('Jack Scott', 54000.00, 'Austin', 'South', '9876543219');

-- create table sales

CREATE TABLE sales (
    product_name VARCHAR(100) NOT NULL,
    product_id INT PRIMARY KEY,
    quantity INT NOT NULL,
    mrp int NOT NULL,
    profit int NOT NULL
);
-- display your table
select * from sales;

-- insert values into tables


INSERT INTO sales (product_name, product_id, quantity, mrp, profit) 
VALUES 
('Laptop', 101, 50, 70000.00, 5000.00),
('Smartphone', 102, 100, 30000.00, 2000.00),
('Refrigerator', 103, 30, 40000.00, 3000.00),
('Television', 104, 40, 50000.00, 4000.00),
('Washing Machine', 105, 25, 35000.00, 2500.00),
('Microwave', 106, 20, 15000.00, 1000.00),
('Vacuum Cleaner', 107, 15, 10000.00, 800.00),
('Air Conditioner', 108, 10, 45000.00, 3500.00),
('Water Purifier', 109, 12, 12000.00, 900.00),
('Gaming Console', 110, 18, 35000.00, 2500.00);

-- create table of kids_wear

CREATE TABLE kids_wear (
    product VARCHAR(100) NOT NULL,
    size VARCHAR(50) NOT NULL,
    type VARCHAR(50) NOT NULL,
    price int NOT NULL,
    discount varchar(100) NOT NULL
);

drop  table kids_wear;

-- display your table
select * from kids_wear;

-- insert values into tables

INSERT INTO kids_wear (product, size, type, price, discount) 
VALUES 
('T-shirt', 'Small', 'Casual', 500.00, '10 %'),
('Shorts', 'Medium', 'Sports', 600.00, '25 %'),
('Dress', 'Large', 'Party', 1200.00, '30 %'),
('Jacket', 'Small', 'Winter', 1500.00, '15 %'),
('Shoes', 'Medium', 'Casual', 800.00,'50 %'),
('Cap', 'Small', 'Summer', 300.00, '40 %'),
('Sweater', 'Large', 'Winter', 1000.00, '50 %'),
('Pants', 'Medium', 'Casual', 700.00, '15 %'),
('Gloves', 'Small', 'Winter', 200.00,'25 %'),
('Scarf', 'Large', 'Winter', 400.00, '20 %');

-- create table of mens_wear

CREATE TABLE mens_wear (
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    size VARCHAR(50) NOT NULL,
    offer VARCHAR(100) NOT NULL
);

-- display your table
select * from mens_wear;

-- insert values into tables

INSERT INTO mens_wear (product_name, quantity, size, offer) 
VALUES 
('Formal Shirt', 50, 'Medium', '10% off'),
('Jeans', 40, 'Large', '15% off'),
('Blazer', 30, 'Small', '20% off'),
('Sneakers', 60, 'Medium', 'Buy 1 Get 1'),
('Trousers', 45, 'Large', 'Flat $20 off'),
('Casual Shirt', 55, 'Medium', 'Buy 2 Get 1'),
('Sweatshirt', 35, 'Large', '15% off'),
('Coat', 25, 'Small', '20% off'),
('Boots', 50, 'Medium', '10% off'),
('Jacket', 40, 'Large', 'Flat $30 off');

-- create table of offers

CREATE TABLE offer (
    day VARCHAR(50) NOT NULL,
    product VARCHAR(100) NOT NULL,
    product_id INT NOT NULL,
    discount int NOT NULL,
    min_shopping int NOT NULL
);


-- display your table
select * from offer ;

-- insert values into tables
INSERT INTO offer (day, product, product_id, discount, min_shopping) 
VALUES 
('Monday', 'Smartphone', 102, 10.00, 20000.00),
('Tuesday', 'Laptop', 101, 12.00, 50000.00),
('Wednesday', 'Refrigerator', 103, 15.00, 30000.00),
('Thursday', 'Television', 104, 20.00, 40000.00),
('Friday', 'Washing Machine', 105, 18.00, 35000.00),
('Saturday', 'Microwave', 106, 10.00, 15000.00),
('Sunday', 'Vacuum Cleaner', 107, 8.00, 10000.00),
('Monday', 'Air Conditioner', 108, 12.00, 45000.00),
('Tuesday', 'Water Purifier', 109, 10.00, 12000.00),
('Wednesday', 'Gaming Console', 110, 15.00, 35000.00);


-- create database netflix
create database netflix;

-- use your database
use netflix;

-- create table of netflix

CREATE TABLE user (
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL,
    last_login_at DATETIME
);

-- display your table
select * from user ;

-- insert values into tables

INSERT INTO user (name, email, password, created_at, last_login_at) 
VALUES 
('Alice Johnson', 'alice@example.com', 'password123', '2023-12-01 12:00:00', '2023-12-19 10:30:00'),
('Bob Smith', 'bob@example.com', 'securepass', '2023-12-02 14:00:00', '2023-12-19 09:00:00'),
('Cathy Brown', 'cathy@example.com', 'mypassword', '2023-12-03 15:30:00', '2023-12-19 08:45:00'),
('David Clark', 'david@example.com', 'david2023', '2023-12-04 10:00:00', '2023-12-19 07:20:00'),
('Eva Davis', 'eva@example.com', 'evapass', '2023-12-05 16:15:00', '2023-12-19 11:10:00'),
('Frank Wilson', 'frank@example.com', 'wilson2023', '2023-12-06 09:00:00', '2023-12-19 13:45:00'),
('Grace Taylor', 'grace@example.com', 'gracetaylor', '2023-12-07 13:50:00', '2023-12-19 15:30:00'),
('Henry Martinez', 'henry@example.com', 'martinezhenry', '2023-12-08 17:30:00', '2023-12-19 14:10:00'),
('Isla Lee', 'isla@example.com', 'islalee2023', '2023-12-09 11:00:00', '2023-12-19 12:45:00'),
('Jack Scott', 'jack@example.com', 'jackscott', '2023-12-10 14:45:00', '2023-12-19 13:50:00');

-- create table of movies

CREATE TABLE movies (
    movies_name VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    duration INT NOT NULL,
    rating int NOT NULL,
    collection int NOT NULL
);

-- display your table
select * from movies;

-- insert values into tables

INSERT INTO movies (movies_name, release_date, duration, rating, collection) 
VALUES 
('Avatar 2', '2023-01-15', 180, 8.7, 2500000000.00),
('Inception', '2010-07-16', 148, 8.8, 850000000.00),
('Interstellar', '2014-11-07', 169, 8.6, 677000000.00),
('The Dark Knight', '2008-07-18', 152, 9.0, 1000000000.00),
('Titanic', '1997-12-19', 195, 7.8, 2200000000.00),
('Joker', '2019-10-04', 122, 8.4, 1074000000.00),
('Avengers: Endgame', '2019-04-26', 181, 8.4, 2798000000.00),
('The Lion King', '1994-06-24', 88, 8.5, 968000000.00),
('Frozen II', '2019-11-22', 103, 6.8, 1450000000.00),
('Spider-Man: No Way Home', '2021-12-17', 148, 8.3, 1920000000.00);

-- craeate table web_series

CREATE TABLE web_series (
    name VARCHAR(100) NOT NULL,
    seasons INT NOT NULL,
    release_date DATE NOT NULL,
    episodes INT NOT NULL,
    rating int NOT NULL
);

-- display your table
select * from web_series;

-- insert values into tables

INSERT INTO web_series (name, seasons, release_date, episodes, rating) 
VALUES 
('Stranger Things', 4, '2016-07-15', 34, 8.7),
('Breaking Bad', 5, '2008-01-20', 62, 9.5),
('The Crown', 5, '2016-11-04', 50, 8.6),
('The Witcher', 2, '2019-12-20', 16, 8.1),
('Game of Thrones', 8, '2011-04-17', 73, 9.3),
('The Mandalorian', 3, '2019-11-12', 24, 8.7),
('Money Heist', 5, '2017-05-02', 41, 8.2),
('The Boys', 3, '2019-07-26', 24, 8.7),
('The Office', 9, '2005-03-24', 201, 8.9),
('Loki', 1, '2021-06-09', 6, 8.3);


-- create table of subscription

CREATE TABLE subscription (
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    created_at DATE NOT NULL,
    subscription_end DATE NOT NULL,
    fee int NOT NULL
);
-- display your table
select * from subscription;

-- insert values into tables


INSERT INTO subscription (first_name, last_name, created_at, subscription_end, fee) 
VALUES 
('Alice', 'Johnson', '2023-01-01', '2023-12-31', 120.00),
('Bob', 'Smith', '2023-02-01', '2024-01-31', 150.00),
('Cathy', 'Brown', '2023-03-01', '2024-02-29', 100.00),
('David', 'Clark', '2023-04-01', '2024-03-31', 200.00),
('Eva', 'Davis', '2023-05-01', '2024-04-30', 180.00),
('Frank', 'Wilson', '2023-06-01', '2024-05-31', 150.00),
('Grace', 'Taylor', '2023-07-01', '2024-06-30', 170.00),
('Henry', 'Martinez', '2023-08-01', '2024-07-31', 130.00),
('Isla', 'Lee', '2023-09-01', '2024-08-31', 110.00),
('Jack', 'Scott', '2023-10-01', '2024-09-30', 160.00);

-- create table of top_rated_movies

CREATE TABLE top_rated_movies (
    movies_name VARCHAR(100) NOT NULL,
    duration INT NOT NULL,
    actor VARCHAR(100) NOT NULL,
    director VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL
);


-- display your table
select * from top_rated_movies ;

-- insert values into tables
INSERT INTO top_rated_movies (movies_name, duration, actor, director, type) 
VALUES 
('Inception', 148, 'Leonardo DiCaprio', 'Christopher Nolan', 'Sci-Fi'),
('The Dark Knight', 152, 'Christian Bale', 'Christopher Nolan', 'Action'),
('Interstellar', 169, 'Matthew McConaughey', 'Christopher Nolan', 'Sci-Fi'),
('Avengers: Endgame', 181, 'Robert Downey Jr.', 'Russo Brothers', 'Action'),
('Titanic', 195, 'Leonardo DiCaprio', 'James Cameron', 'Romance'),
('Joker', 122, 'Joaquin Phoenix', 'Todd Phillips', 'Drama'),
('Avatar 2', 180, 'Sam Worthington', 'James Cameron', 'Sci-Fi'),
('The Lion King', 88, 'Matthew Broderick', 'Roger Allers', 'Animation'),
('Spider-Man: No Way Home', 148, 'Tom Holland', 'Jon Watts', 'Action'),
('Game of Thrones', 73, 'Emilia Clarke', 'Multiple', 'Fantasy');


-- create database of kabaddi club
create database kabaddi_club;

-- use your database 
use kabaddi_club;

-- Creating tables of players

CREATE TABLE players (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    location VARCHAR(100) NOT NULL,
    contact VARCHAR(15) NOT NULL
);

-- display your table
select * from players;

-- insert values into tables

INSERT INTO players (name, age, gender, location, contact) 
VALUES
('Ramesh Kumar', 25, 'Male', 'Mumbai', '9876543210'),
('Suresh Yadav', 23, 'Male', 'Delhi', '8765432109'),
('Pooja Sharma', 21, 'Female', 'Pune', '7654321098'),
('Nisha Verma', 22, 'Female', 'Hyderabad', '6543210987'),
('Vikram Singh', 28, 'Male', 'Bangalore', '5432109876'),
('Rohit Mehta', 26, 'Male', 'Chennai', '4321098765'),
('Anjali Jain', 24, 'Female', 'Kolkata', '3210987654'),
('Karan Patel', 29, 'Male', 'Ahmedabad', '2109876543'),
('Divya Nair', 22, 'Female', 'Cochin', '1098765432'),
('Aman Gupta', 27, 'Male', 'Jaipur', '1987654321');

-- Creating tables of coach

CREATE TABLE coach (
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    experience varchar(100) NOT NULL,
    salary int NOT NULL,
    shift VARCHAR(50) NOT NULL
);

-- display your table
select * from coach;

drop table coach;

-- insert values into tables

INSERT INTO coach (name, gender, experience, salary, shift) 
VALUES
('Rajesh Khanna', 'Male', '10 years', 75000.00, 'Morning'),
('Anita Desai', 'Female', '1 years', 65000.00, 'Evening'),
('Manoj Tiwari', 'Male', '11 years', 80000.00, 'Morning'),
('Kavita Reddy', 'Female', '4 years', 60000.00, 'Evening'),
('Ravi Patel', 'Male', '6 years', 55000.00, 'Night'),
('Meena Shah', 'Female', '17 years', 70000.00, 'Morning'),
('Rahul Varma', 'Male', '5 years', 58000.00, 'Night'),
('Priya Sinha', 'Female', '10 years', 64000.00, 'Evening'),
('Arjun Malhotra', 'Male', '9 years', 78000.00, 'Morning'),
('Neha Kapoor', 'Female', '12 years', 61000.00, 'Evening');

-- create table of match_

CREATE TABLE match_(
    match_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    price int NOT NULL,
    best_raider VARCHAR(100) NOT NULL,
    best_defender VARCHAR(100) NOT NULL
);


-- display your table
select * from match_;

-- insert values into tables
INSERT INTO match_ (match_name, location, price, best_raider, best_defender) 
VALUES
('Pro League 2023', 'Mumbai', 500.00, 'Ramesh Kumar', 'Nisha Verma'),
('State Championship', 'Delhi', 300.00, 'Suresh Yadav', 'Pooja Sharma'),
('National Finals', 'Bangalore', 800.00, 'Vikram Singh', 'Ramesh Kumar'),
('Inter-State Cup', 'Hyderabad', 400.00, 'Nisha Verma', 'Suresh Yadav'),
('Kabaddi Masters', 'Pune', 600.00, 'Pooja Sharma', 'Vikram Singh'),
('City Knockout', 'Chennai', 450.00, 'Rohit Mehta', 'Divya Nair'),
('Regional League', 'Kolkata', 350.00, 'Karan Patel', 'Anjali Jain'),
('District Cup', 'Ahmedabad', 300.00, 'Aman Gupta', 'Kavita Reddy'),
('All-India Trophy', 'Cochin', 700.00, 'Ravi Patel', 'Rajesh Khanna'),
('Nationals Qualifier', 'Jaipur', 650.00, 'Manoj Tiwari', 'Rahul Varma');

-- CREATE TABLE of raider 

CREATE TABLE raider (
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    weight_in_kg int  NOT NULL
);

-- display your table
select * from raider;

-- insert values into tables

INSERT INTO raider (first_name, last_name, age, gender, weight_in_kg) 
VALUES
('Ramesh', 'Kumar', 25, 'Male', 75.50),
('Suresh', 'Yadav', 23, 'Male', 72.00),
('Pooja', 'Sharma', 21, 'Female', 60.30),
('Nisha', 'Verma', 22, 'Female', 58.70),
('Vikram', 'Singh', 28, 'Male', 78.20),
('Rohit', 'Mehta', 26, 'Male', 74.00),
('Anjali', 'Jain', 24, 'Female', 61.50),
('Karan', 'Patel', 29, 'Male', 79.80),
('Divya', 'Nair', 22, 'Female', 59.40),
('Aman', 'Gupta', 27, 'Male', 76.00);

-- create table of defender

CREATE TABLE defender (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    height int NOT NULL,
    weight_in_kg int  NOT NULL
);
-- display your table
select * from defender ;

-- insert values into tables


INSERT INTO defender (name, age, gender, height, weight_in_kg) 
VALUES
('Ramesh Kumar', 25, 'Male', 170, 75.50),
('Suresh Yadav', 23, 'Male', 160, 72.00),
('Pooja Sharma', 21, 'Female', 170, 60.30),
('Nisha Verma', 22, 'Female', 175, 58.70),
('Vikram Singh', 28, 'Male', 170, 78.20),
('Rohit Mehta', 26, 'Male', 165, 74.00),
('Anjali Jain', 24, 'Female', 159, 61.50),
('Karan Patel', 29, 'Male', 167, 79.80),
('Divya Nair', 22, 'Female', 177, 59.40),
('Aman Gupta', 27, 'Male', 172, 76.00);

-- use truncate to make changes in table 
truncate table defender;


-- create database of Vehicle Rental System
create database Vehicle_Rental_system;

-- use your databasee
use  Vehicle_Rental_system;

-- create table vehicles

CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY,
    vehicle_type VARCHAR(50),
    model VARCHAR(100),
    price  int,
    availability_status VARCHAR(20)
);

-- display your table
select * from vehicles;

-- insert values into tables

INSERT INTO vehicles (vehicle_id, vehicle_type, model, price, availability_status)
VALUES
(1, 'Sedan', 'Honda Civic', 25000, 'Available'),
(2, 'SUV', 'Toyota Highlander', 35000, 'Not Available'),
(3, 'Truck', 'Ford F-150', 40000, 'Available'),
(4, 'SUV', 'BMW X5', 60000, 'Available'),
(5, 'Sedan', 'Toyota Corolla', 20000, 'Not Available'),
(6, 'Coupe', 'Audi A5', 55000, 'Available'),
(7, 'Convertible', 'Chevrolet Camaro', 45000, 'Available'),
(8, 'Minivan', 'Honda Odyssey', 38000, 'Not Available'),
(9, 'Sedan', 'Mercedes-Benz E-Class', 70000, 'Available'),
(10, 'Truck', 'Ram 1500', 42000, 'Not Available');



-- create table customers

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255)
);

-- display your table
select * from customers;

-- insert values into tables

INSERT INTO customers (customer_id, name, contact, email, address)
VALUES
(1, 'John Doe', '1234567890', 'johndoe@example.com', '123 Main St, Springfield, IL'),
(2, 'Jane Smith', '2345678901', 'janesmith@example.com', '456 Oak St, Springfield, IL'),
(3, 'Michael Johnson', '3456789012', 'michaelj@example.com', '789 Pine St, Springfield, IL'),
(4, 'Emily Davis', '4567890123', 'emilydavis@example.com', '101 Maple St, Springfield, IL'),
(5, 'David Wilson', '5678901234', 'davidwilson@example.com', '202 Birch St, Springfield, IL'),
(6, 'Sarah Brown', '6789012345', 'sarahbrown@example.com', '303 Cedar St, Springfield, IL'),
(7, 'William Lee', '7890123456', 'williamlee@example.com', '404 Elm St, Springfield, IL'),
(8, 'Olivia Harris', '8901234567', 'oliviaharris@example.com', '505 Redwood St, Springfield, IL'),
(9, 'James Martinez', '9012345678', 'jamesmartinez@example.com', '606 Cherry St, Springfield, IL'),
(10, 'Sophia Clark', '0123456789', 'sophiaclark@example.com', '707 Willow St, Springfield, IL');

-- create table rentals

CREATE TABLE rentals (
    rental_id INT PRIMARY KEY,
    vehicle_id INT,
    customer_id INT,
    rental_start_date DATE,
    rental_end_date DATE
);

-- display your table
select * from rentals;

-- insert values into tables

INSERT INTO rentals (rental_id, vehicle_id, customer_id, rental_start_date, rental_end_date)
VALUES
(1, 1, 2, '2024-01-10', '2024-01-15'),
(2, 3, 5, '2024-02-05', '2024-02-10'),
(3, 4, 3, '2024-03-01', '2024-03-10'),
(4, 2, 7, '2024-03-15', '2024-03-20'),
(5, 6, 8, '2024-04-01', '2024-04-10'),
(6, 5, 1, '2024-04-10', '2024-04-15'),
(7, 7, 9, '2024-05-05', '2024-05-10'),
(8, 8, 10, '2024-06-01', '2024-06-10'),
(9, 3, 6, '2024-06-15', '2024-06-20'),
(10, 9, 4, '2024-07-01', '2024-07-05');


-- create table payments

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    rental_id INT,
    amount int,
    payment_date DATE,
    status VARCHAR(20)

);
-- display your table
select * from payments;

-- insert values into tables
INSERT INTO payments (payment_id, rental_id, amount, payment_date, status)
VALUES
(1, 1, 150, '2024-01-11', 'Paid'),
(2, 2, 200, '2024-02-06', 'Paid'),
(3, 3, 300, '2024-03-02', 'Pending'),
(4, 4, 175, '2024-03-16', 'Paid'),
(5, 5, 400, '2024-04-02', 'Paid'),
(6, 6, 250, '2024-04-11', 'Paid'),
(7, 7, 350, '2024-05-06', 'Pending'),
(8, 8, 450, '2024-06-02', 'Paid'),
(9, 9, 275, '2024-06-16', 'Paid'),
(10, 10, 225, '2024-07-02', 'Paid');


-- create table vehicles_service

CREATE TABLE vehicles_service (
    service_id INT PRIMARY KEY,
    vehicle_id INT,
    service_date DATE,
    service_description TEXT,
    cost int
);

-- display your table
select * from vehicles_service;

-- insert values into tables

INSERT INTO services (service_id, vehicle_id, service_date, service_description, cost)
VALUES
(1, 1, '2024-01-12', 'Oil change and tire rotation', 120),
(2, 2, '2024-02-07', 'Brake pad replacement and fluid check', 250),
(3, 3, '2024-03-03', 'Engine tuning and transmission fluid change', 350),
(4, 4, '2024-03-17', 'Battery check and air filter replacement', 150),
(5, 5, '2024-04-03', 'Full vehicle inspection and coolant flush', 200),
(6, 6, '2024-04-12', 'Tire change and wheel alignment', 180),
(7, 7, '2024-05-07', 'Timing belt replacement and fluid flush', 450),
(8, 8, '2024-06-03', 'Transmission service and fluid change', 400),
(9, 9, '2024-06-17', 'Suspension repair and brake check', 300),
(10, 10, '2024-07-03', 'AC repair and refrigerant refill', 220);


-- create database of Banking
create database Banking;

-- use your database 
use banking;

-- create table of Customers
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255)
);
-- display your table
select * from Customers;

-- insert values into tables
INSERT INTO Customers (customer_id, name, contact, email, address)
VALUES
(1, 'John Doe', '1234567890', 'john.doe@example.com', '123 Main St, Springfield'),
(2, 'Jane Smith', '2345678901', 'jane.smith@example.com', '456 Oak St, Rivertown'),
(3, 'Robert Brown', '3456789012', 'robert.brown@example.com', '789 Pine St, Laketown'),
(4, 'Emily Johnson', '4567890123', 'emily.johnson@example.com', '101 Maple St, Hilltop'),
(5, 'Michael Lee', '5678901234', 'michael.lee@example.com', '202 Birch St, Westville'),
(6, 'Sarah Taylor', '6789012345', 'sarah.taylor@example.com', '303 Cedar St, Eastwood'),
(7, 'David Miller', '7890123456', 'david.miller@example.com', '404 Elm St, Downtown'),
(8, 'Olivia Davis', '8901234567', 'olivia.davis@example.com', '505 Redwood St, Midtown'),
(9, 'William Wilson', '9012345678', 'william.wilson@example.com', '606 Willow St, Greenfield'),
(10, 'Sophia Anderson', '0123456789', 'sophia.anderson@example.com', '707 Pinewood St, Riverview');


-- create table of Accounts
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(50),
    balance int,
    opening_date DATE);


-- display your table
select * from Accounts;

-- insert values into tables

INSERT INTO Accounts (account_id, customer_id, account_type, balance, opening_date)
VALUES
(1, 1, 'Savings', 1500.00, '2022-01-15'),
(2, 2, 'Checking', 2000.50, '2023-02-20'),
(3, 3, 'Savings', 3500.75, '2021-03-10'),
(4, 4, 'Checking', 1000.00, '2022-07-25'),
(5, 5, 'Savings', 8000.00, '2020-11-12'),
(6, 6, 'Checking', 500.45, '2023-01-05'),
(7, 7, 'Savings', 2000.00, '2021-05-30'),
(8, 8, 'Checking', 1200.00, '2023-06-15'),
(9, 9, 'Savings', 4500.25, '2022-09-05'),
(10, 10, 'Checking', 3000.00, '2021-12-10');

-- create table of Transactions

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATE,
    amount int,
    type VARCHAR(20)
);

-- display your table
select * from Transactions;

-- insert values into tables

INSERT INTO Transactions (transaction_id, account_id, transaction_date, amount, type)
VALUES
(1, 1, '2023-01-20', 500.00, 'Deposit'),
(2, 2, '2023-02-25', 200.50, 'Withdrawal'),
(3, 3, '2023-03-15', 300.00, 'Deposit'),
(4, 4, '2023-04-10', 150.00, 'Withdrawal'),
(5, 5, '2023-05-05', 1200.00, 'Deposit'),
(6, 6, '2023-06-01', 150.45, 'Withdrawal'),
(7, 7, '2023-07-20', 250.00, 'Deposit'),
(8, 8, '2023-08-30', 100.00, 'Withdrawal'),
(9, 9, '2023-09-15', 700.00, 'Deposit'),
(10, 10, '2023-10-10', 1000.00, 'Withdrawal');

-- create table of Loans

CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_amount int,
    loan_date DATE,
    interest_rate int
);

-- display your table
select * from Loans;

-- insert values into tables

INSERT INTO Loans (loan_id, customer_id, loan_amount, loan_date, interest_rate)
VALUES
(1, 1, 5000.00, '2023-01-15', 5.50),
(2, 2, 10000.00, '2023-02-10', 4.75),
(3, 3, 15000.00, '2023-03-20', 6.00),
(4, 4, 20000.00, '2023-04-05', 5.25),
(5, 5, 30000.00, '2023-05-15', 4.90),
(6, 6, 25000.00, '2023-06-25', 5.00),
(7, 7, 40000.00, '2023-07-30', 5.10),
(8, 8, 12000.00, '2023-08-18', 5.75),
(9, 9, 18000.00, '2023-09-10', 4.85),
(10, 10, 22000.00, '2023-10-05', 5.40);

-- create table of Branches

CREATE TABLE Branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100),
    location VARCHAR(100),
    manager_id INT,
    contact VARCHAR(15)
);

-- display your table
select * from Branches ;

-- insert values into tables

INSERT INTO Branches (branch_id, branch_name, location, manager_id, contact)
VALUES
(1, 'Main Branch', 'New York', 101, '123-456-7890'),
(2, 'Downtown Branch', 'Los Angeles', 102, '234-567-8901'),
(3, 'Uptown Branch', 'Chicago', 103, '345-678-9012'),
(4, 'Suburban Branch', 'San Francisco', 104, '456-789-0123'),
(5, 'City Center Branch', 'Houston', 105, '567-890-1234'),
(6, 'East Side Branch', 'Miami', 106, '678-901-2345'),
(7, 'West End Branch', 'Seattle', 107, '789-012-3456'),
(8, 'North Gate Branch', 'Boston', 108, '890-123-4567'),
(9, 'South Park Branch', 'Denver', 109, '901-234-5678'),
(10, 'Central Branch', 'Dallas', 110, '012-345-6789');


-- create database of instagram
create database instagram;

-- use your database
use instagram;

-- create table Users

-- Create Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100),
    contact VARCHAR(15)
);

-- display your table
select * from Users;

-- Insert 10 values into Users table
INSERT INTO Users (user_id, name, email, password, contact)
VALUES
(1, 'John Doe', 'john.doe@example.com', 'password123', '123-456-7890'),
(2, 'Jane Smith', 'jane.smith@example.com', 'password456', '234-567-8901'),
(3, 'Robert Brown', 'robert.brown@example.com', 'password789', '345-678-9012'),
(4, 'Emily Johnson', 'emily.johnson@example.com', 'password321', '456-789-0123'),
(5, 'Michael Lee', 'michael.lee@example.com', 'password654', '567-890-1234'),
(6, 'Sophia Clark', 'sophia.clark@example.com', 'password852', '678-901-2345'),
(7, 'David Miller', 'david.miller@example.com', 'password963', '789-012-3456'),
(8, 'Olivia White', 'olivia.white@example.com', 'password741', '890-123-4567'),
(9, 'James Harris', 'james.harris@example.com', 'password852', '901-234-5678'),
(10, 'Ava Lewis', 'ava.lewis@example.com', 'password159', '012-345-6789');

-- Create Posts table
CREATE TABLE Posts (
    post_id INT PRIMARY KEY,
    user_id INT,
    content varchar(100),
    post_date DATE,
    likes INT
);

-- display your table
select * from Posts ;


-- Insert 10 values into Posts table
INSERT INTO Posts (post_id, user_id, content, post_date, likes)
VALUES
(1, 1, 'Enjoying a great day at the park!', '2024-01-15', 100),
(2, 2, 'Just finished reading a new book, highly recommend it!', '2024-01-16', 75),
(3, 3, 'Had a wonderful time with family today.', '2024-01-17', 120),
(4, 4, 'Looking forward to the weekend trip!', '2024-01-18', 90),
(5, 5, 'Started a new project at work, feeling excited!', '2024-01-19', 50),
(6, 6, 'Working on a new painting today.', '2024-01-20', 85),
(7, 7, 'Just got back from a long hike, feeling great!', '2024-01-21', 110),
(8, 8, 'Planning a surprise for my friend’s birthday!', '2024-01-22', 60),
(9, 9, 'Excited for the upcoming concert this weekend!', '2024-01-23', 140),
(10, 10, 'Finally completed the home renovation project!', '2024-01-24', 95);

-- Create Comments table
CREATE TABLE Comments (
    comment_id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
    comment_date DATE,
    content varchar(100)
);

-- display your table
select * from Comments;


-- Insert 10 values into Comments table
INSERT INTO Comments (comment_id, post_id, user_id, comment_date, content)
VALUES
(1, 1, 2, '2024-01-15', 'Sounds like fun!'),
(2, 2, 1, '2024-01-16', 'I must check it out!'),
(3, 3, 4, '2024-01-17', 'So glad you had a great time!'),
(4, 4, 5, '2024-01-18', 'I hope you have an amazing time!'),
(5, 5, 3, '2024-01-19', 'Best of luck with the project!'),
(6, 6, 7, '2024-01-20', 'Your painting skills are impressive!'),
(7, 7, 8, '2024-01-21', 'I hope you enjoyed the hike!'),
(8, 8, 9, '2024-01-22', 'That’s so sweet, I’m sure your friend will love it!'),
(9, 9, 10, '2024-01-23', 'Can’t wait for the concert!'),
(10, 10, 1, '2024-01-24', 'The renovation looks amazing, congrats!');

-- Create Friends table
CREATE TABLE Friends (
    user_id INT,
    friend_id INT,
    friendship_date DATE,
    status VARCHAR(20),
    relationship_type VARCHAR(50),
    PRIMARY KEY (user_id, friend_id)
);

-- display your table
select * from Friends;


-- Insert 10 values into Friends table
INSERT INTO Friends (user_id, friend_id, friendship_date, status, relationship_type)
VALUES
(1, 2, '2020-05-10', 'Active', 'Best Friends'),
(1, 3, '2021-03-15', 'Active', 'College Friends'),
(2, 4, '2022-07-20', 'Active', 'Work Friends'),
(3, 5, '2023-11-12', 'Active', 'Neighbors'),
(4, 5, '2022-01-25', 'Inactive', 'Old Friends'),
(5, 6, '2021-06-10', 'Active', 'Gym Buddies'),
(6, 7, '2020-08-30', 'Active', 'Family Friends'),
(7, 8, '2021-05-17', 'Active', 'Travel Friends'),
(8, 9, '2023-01-18', 'Active', 'Long-time Friends'),
(9, 10, '2022-09-05', 'Active', 'Work Friends');

-- Create Messages table
CREATE TABLE Messages (
    message_id INT PRIMARY KEY,
    sender_id INT,
    receiver_id INT,
    message_date DATE,
    content varchar(100)	
);

-- display your table
select * from Messages;


-- Insert 10 values into Messages table
INSERT INTO Messages (message_id, sender_id, receiver_id, message_date, content)
VALUES
(1, 1, 2, '2024-01-15', 'Hey, how are you doing?'),
(2, 2, 1, '2024-01-16', 'I am doing great, thanks for asking!'),
(3, 3, 4, '2024-01-17', 'Let\'s catch up soon, it\'s been a while!'),
(4, 4, 5, '2024-01-18', 'Are you available this weekend for a meeting?'),
(5, 5, 1, '2024-01-19', 'Just wanted to say good luck with your project!'),
(6, 6, 7, '2024-01-20', 'Hope you are doing well, let’s meet soon!'),
(7, 7, 8, '2024-01-21', 'I had a great time hiking, would love to do it again soon!'),
(8, 8, 9, '2024-01-22', 'Can’t wait to see you on the weekend!'),
(9, 9, 10, '2024-01-23', 'Let’s make plans for the concert this weekend!'),
(10, 10, 1, '2024-01-24', 'The renovation looks amazing, well done!');


-- create database of Inventory Management
create database Inventory_Management;

-- use your database 
use Inventory_Management;

-- Create Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price int,
    stock_quantity INT
);

-- display your table
select * from Products;

-- Insert 10 values into Products table
INSERT INTO Products (product_id, name, category, price, stock_quantity)
VALUES
(1, 'Laptop', 'Electronics', 800.00, 50),
(2, 'Smartphone', 'Electronics', 500.00, 100),
(3, 'Desk Chair', 'Furniture', 150.00, 40),
(4, 'Headphones', 'Accessories', 50.00, 200),
(5, 'Coffee Maker', 'Appliances', 70.00, 30),
(6, 'Gaming Console', 'Electronics', 300.00, 20),
(7, 'Table Lamp', 'Lighting', 25.00, 60),
(8, 'Backpack', 'Accessories', 40.00, 150),
(9, 'Smartwatch', 'Electronics', 200.00, 80),
(10, 'Refrigerator', 'Appliances', 1000.00, 10);

-- Create Suppliers table
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact VARCHAR(15),
    address VARCHAR(255),
    email VARCHAR(100)
);

-- display your table
select * from Suppliers;


-- Insert 10 values into Suppliers table
INSERT INTO Suppliers (supplier_id, name, contact, address, email)
VALUES
(1, 'Tech Supplies Inc.', '123-456-7890', '123 Tech Street', 'contact@techsupplies.com'),
(2, 'Furniture Depot', '234-567-8901', '456 Furniture Road', 'support@furnituredepot.com'),
(3, 'Gadget World', '345-678-9012', '789 Gadget Avenue', 'info@gadgetworld.com'),
(4, 'Appliance Experts', '456-789-0123', '101 Appliance Blvd', 'sales@applianceexperts.com'),
(5, 'Light & Style', '567-890-1234', '202 Lighting Lane', 'help@lightstyle.com'),
(6, 'Backpack Co.', '678-901-2345', '303 Backpack Drive', 'service@backpackco.com'),
(7, 'Smart Tech', '789-012-3456', '404 Smartway', 'contact@smarttech.com'),
(8, 'Gaming Supplies', '890-123-4567', '505 Gaming Road', 'sales@gamingsupplies.com'),
(9, 'Appliance World', '901-234-5678', '606 Appliance Park', 'info@applianceworld.com'),
(10, 'Home Comforts', '012-345-6789', '707 Home Blvd', 'support@homecomforts.com');

-- Create Purchases table
CREATE TABLE Purchases (
    purchase_id INT PRIMARY KEY,
    product_id INT,
    supplier_id INT,
    purchase_date DATE,
    quantity INT
);

-- display your table
select * from Purchases;


-- Insert 10 values into Purchases table
INSERT INTO Purchases (purchase_id, product_id, supplier_id, purchase_date, quantity)
VALUES
(1, 1, 1, '2024-01-10', 20),
(2, 2, 1, '2024-01-12', 50),
(3, 3, 2, '2024-01-15', 30),
(4, 4, 3, '2024-01-18', 100),
(5, 5, 4, '2024-01-20', 10),
(6, 6, 8, '2024-01-22', 15),
(7, 7, 5, '2024-01-25', 25),
(8, 8, 6, '2024-01-28', 60),
(9, 9, 7, '2024-01-30', 40),
(10, 10, 9, '2024-02-01', 5);

-- Create Sales table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    sale_date DATE,
    quantity INT
);

-- display your table
select * from Sales;

-- Insert 10 values into Sales table
INSERT INTO Sales (sale_id, product_id, customer_id, sale_date, quantity)
VALUES
(1, 1, 101, '2024-02-10', 2),
(2, 2, 102, '2024-02-12', 1),
(3, 3, 103, '2024-02-15', 4),
(4, 4, 104, '2024-02-18', 3),
(5, 5, 105, '2024-02-20', 1),
(6, 6, 106, '2024-02-22', 1),
(7, 7, 107, '2024-02-25', 5),
(8, 8, 108, '2024-02-28', 2),
(9, 9, 109, '2024-03-01', 3),
(10, 10, 110, '2024-03-05', 1);

-- Create Returns table
CREATE TABLE Returns (
    return_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    return_date DATE,
    reason varchar (199)
);

-- display your table
select * from Returns;


-- Insert 10 values into Returns table
INSERT INTO Returns (return_id, product_id, customer_id, return_date, reason)
VALUES
(1, 1, 101, '2024-02-15', 'Defective product'),
(2, 2, 102, '2024-02-20', 'Wrong item delivered'),
(3, 3, 103, '2024-02-25', 'Product damaged'),
(4, 4, 104, '2024-03-01', 'Not as described'),
(5, 5, 105, '2024-03-05', 'Changed mind'),
(6, 6, 106, '2024-03-10', 'Defective product'),
(7, 7, 107, '2024-03-15', 'Not needed anymore'),
(8, 8, 108, '2024-03-20', 'Product damaged'),
(9, 9, 109, '2024-03-25', 'Wrong item delivered'),
(10, 10, 110, '2024-03-30', 'Not as described');

-- create database of Real Estate Management
create database Real_Estate_Management;

-- use your database
use Real_Estate_Management;

-- Create Properties table
CREATE TABLE Properties (
    property_id INT PRIMARY KEY,
    address VARCHAR(255),
    type VARCHAR(50),
    price int,
    area int
);
-- display your table
select * from Properties;


-- Insert 10 values into Properties table
INSERT INTO Properties (property_id, address, type, price, area)
VALUES
(1, '123 Main St', 'Residential', 250000.00, 1500.00),
(2, '456 Oak Ave', 'Commercial', 500000.00, 3000.00),
(3, '789 Pine Rd', 'Residential', 200000.00, 1200.00),
(4, '101 Elm Blvd', 'Residential', 300000.00, 1800.00),
(5, '202 Maple Ct', 'Commercial', 600000.00, 3500.00),
(6, '303 Birch Ln', 'Industrial', 750000.00, 4000.00),
(7, '404 Cedar Pl', 'Residential', 280000.00, 1600.00),
(8, '505 Willow Dr', 'Residential', 260000.00, 1400.00),
(9, '606 Cherry St', 'Commercial', 450000.00, 2800.00),
(10, '707 Ash Way', 'Industrial', 800000.00, 4200.00);

-- Create Agents table
CREATE TABLE Agents (
    agent_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact VARCHAR(15),
    agency VARCHAR(100),
    experience INT
);

-- display your table
select * from Agents;


-- Insert 10 values into Agents table
INSERT INTO Agents (agent_id, name, contact, agency, experience)
VALUES
(1, 'John Doe', '123-456-7890', 'Realty Experts', 5),
(2, 'Jane Smith', '234-567-8901', 'Home Finders', 7),
(3, 'Mike Brown', '345-678-9012', 'Dream Homes', 10),
(4, 'Emily Davis', '456-789-0123', 'Best Realty', 4),
(5, 'Chris Wilson', '567-890-1234', 'Property Pros', 6),
(6, 'Sarah Johnson', '678-901-2345', 'Elite Realty', 8),
(7, 'Tom Lee', '789-012-3456', 'Urban Estates', 9),
(8, 'Anna White', '890-123-4567', 'Premier Properties', 3),
(9, 'James Miller', '901-234-5678', 'Top Notch Realty', 2),
(10, 'Linda Green', '012-345-6789', 'Smart Realty', 5);

-- Create Clients table
CREATE TABLE Clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact VARCHAR(15),
    budget int,
    property_preference VARCHAR(50)
);

-- display your table
select * from Clients;


-- Insert 10 values into Clients table
INSERT INTO Clients (client_id, name, contact, budget, property_preference)
VALUES
(1, 'Alice Brown', '123-555-7890', 300000.00, 'Residential'),
(2, 'Bob Johnson', '234-555-8901', 600000.00, 'Commercial'),
(3, 'Carol Lee', '345-555-9012', 250000.00, 'Residential'),
(4, 'David Wilson', '456-555-0123', 700000.00, 'Industrial'),
(5, 'Ella Davis', '567-555-1234', 350000.00, 'Residential'),
(6, 'Frank White', '678-555-2345', 500000.00, 'Commercial'),
(7, 'Grace Green', '789-555-3456', 400000.00, 'Residential'),
(8, 'Henry Black', '890-555-4567', 800000.00, 'Industrial'),
(9, 'Ivy Brown', '901-555-5678', 450000.00, 'Commercial'),
(10, 'Jack Blue', '012-555-6789', 200000.00, 'Residential');

-- Create Transactions table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    property_id INT,
    client_id INT,
    sale_date DATE,
    amount int
);

-- display your table
select * from Transactions;

-- Insert 10 values into Transactions table
INSERT INTO Transactions (transaction_id, property_id, client_id, sale_date, amount)
VALUES
(1, 1, 1, '2024-01-10', 250000.00),
(2, 2, 2, '2024-01-15', 500000.00),
(3, 3, 3, '2024-01-20', 200000.00),
(4, 4, 5, '2024-01-25', 300000.00),
(5, 5, 6, '2024-01-30', 600000.00),
(6, 6, 8, '2024-02-05', 750000.00),
(7, 7, 7, '2024-02-10', 280000.00),
(8, 8, 10, '2024-02-15', 260000.00),
(9, 9, 9, '2024-02-20', 450000.00),
(10, 10, 4, '2024-02-25', 800000.00);

-- Create Rentals table
CREATE TABLE Rentals (
    rental_id INT PRIMARY KEY,
    property_id INT,
    client_id INT,
    rent_date DATE,
    rent_amount int
);

-- display your table
select * from Rentals;

-- Insert 10 values into Rentals table
INSERT INTO Rentals (rental_id, property_id, client_id, rent_date, rent_amount)
VALUES
(1, 1, 3, '2024-03-01', 1500.00),
(2, 2, 5, '2024-03-05', 3000.00),
(3, 3, 7, '2024-03-10', 1200.00),
(4, 4, 9, '2024-03-15', 1800.00),
(5, 5, 2, '2024-03-20', 3500.00),
(6, 6, 4, '2024-03-25', 4000.00),
(7, 7, 6, '2024-03-30', 1600.00),
(8, 8, 8, '2024-04-05', 1400.00),
(9, 9, 10, '2024-04-10', 2800.00),
(10, 10, 1, '2024-04-15', 4200.00);


-- create database of Library_Management
create database Library_Management;

-- use your database
use Library_Management;

-- Create Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    genre VARCHAR(50),
    availability_status VARCHAR(20)
);

-- display your table
select * from Books;

-- Insert 10 values into Books table
INSERT INTO Books (book_id, title, author, genre, availability_status)
VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 'Available'),
(2, '1984', 'George Orwell', 'Dystopian', 'Issued'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 'Available'),
(4, 'Moby Dick', 'Herman Melville', 'Adventure', 'Available'),
(5, 'Pride and Prejudice', 'Jane Austen', 'Romance', 'Issued'),
(6, 'War and Peace', 'Leo Tolstoy', 'Historical', 'Available'),
(7, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 'Available'),
(8, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 'Issued'),
(9, 'Crime and Punishment', 'Fyodor Dostoevsky', 'Classic', 'Available'),
(10, 'Brave New World', 'Aldous Huxley', 'Dystopian', 'Available');

-- Create Members table
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact VARCHAR(15),
    membership_date DATE,
    address VARCHAR(255)
);

-- display your table
select * from Members;

-- Insert 10 values into Members table
INSERT INTO Members (member_id, name, contact, membership_date, address)
VALUES
(1, 'Alice Brown', '123-456-7890', '2023-01-15', '123 Elm Street'),
(2, 'Bob Johnson', '234-567-8901', '2023-02-20', '456 Maple Avenue'),
(3, 'Carol Lee', '345-678-9012', '2023-03-25', '789 Oak Road'),
(4, 'David Wilson', '456-789-0123', '2023-04-10', '101 Pine Lane'),
(5, 'Ella Davis', '567-890-1234', '2023-05-05', '202 Cedar Drive'),
(6, 'Frank White', '678-901-2345', '2023-06-15', '303 Birch Way'),
(7, 'Grace Green', '789-012-3456', '2023-07-20', '404 Willow Court'),
(8, 'Henry Black', '890-123-4567', '2023-08-25', '505 Cherry Place'),
(9, 'Ivy Brown', '901-234-5678', '2023-09-10', '606 Ash Boulevard'),
(10, 'Jack Blue', '012-345-6789', '2023-10-05', '707 Cedar Street');

-- Create Loans table
CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    loan_date DATE,
    return_date DATE
);

-- display your table
select * from Loans;

-- Insert 10 values into Loans table
INSERT INTO Loans (loan_id, book_id, member_id, loan_date, return_date)
VALUES
(1, 1, 2, '2024-01-10', '2024-01-20'),
(2, 2, 4, '2024-01-12', '2024-01-22'),
(3, 5, 6, '2024-01-15', '2024-01-25'),
(4, 8, 7, '2024-01-18', '2024-01-28'),
(5, 9, 3, '2024-01-20', '2024-01-30'),
(6, 4, 1, '2024-01-22', '2024-02-01'),
(7, 3, 5, '2024-01-25', '2024-02-04'),
(8, 7, 9, '2024-01-27', '2024-02-06'),
(9, 6, 8, '2024-01-29', '2024-02-08'),
(10, 10, 10, '2024-01-30', '2024-02-09');

-- Create Authors table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(255),
    nationality VARCHAR(50),
    date_of_birth DATE,
    biography varchar (100)
);

-- display your table
select * from Authors;

-- Insert 10 values into Authors table
INSERT INTO Authors (author_id, name, nationality, date_of_birth, biography)
VALUES
(1, 'Harper Lee', 'American', '1926-04-28', 'Author of To Kill a Mockingbird.'),
(2, 'George Orwell', 'British', '1903-06-25', 'Known for his works 1984 and Animal Farm.'),
(3, 'F. Scott Fitzgerald', 'American', '1896-09-24', 'Famous for The Great Gatsby.'),
(4, 'Herman Melville', 'American', '1819-08-01', 'Best known for his novel Moby Dick.'),
(5, 'Jane Austen', 'British', '1775-12-16', 'Renowned for Pride and Prejudice.'),
(6, 'Leo Tolstoy', 'Russian', '1828-09-09', 'Known for War and Peace.'),
(7, 'J.D. Salinger', 'American', '1919-01-01', 'Author of The Catcher in the Rye.'),
(8, 'J.R.R. Tolkien', 'British', '1892-01-03', 'Famous for The Lord of the Rings.'),
(9, 'Fyodor Dostoevsky', 'Russian', '1821-11-11', 'Best known for Crime and Punishment.'),
(10, 'Aldous Huxley', 'British', '1894-07-26', 'Renowned for Brave New World.');

-- Create Reservations table
CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    reservation_date DATE,
    status VARCHAR(20)
);

-- display your table
select * from Reservations;

-- Insert 10 values into Reservations table
INSERT INTO Reservations (reservation_id, book_id, member_id, reservation_date, status)
VALUES
(1, 1, 1, '2024-01-05', 'Active'),
(2, 2, 3, '2024-01-07', 'Cancelled'),
(3, 5, 4, '2024-01-09', 'Active'),
(4, 7, 6, '2024-01-11', 'Completed'),
(5, 8, 2, '2024-01-13', 'Active'),
(6, 10, 5, '2024-01-15', 'Cancelled'),
(7, 3, 7, '2024-01-17', 'Active'),
(8, 6, 8, '2024-01-19', 'Completed'),
(9, 9, 9, '2024-01-21', 'Active'),
(10, 4, 10, '2024-01-23', 'Active');


-- create database of  Online_Auctions
create database  Online_Auctions;

-- use your database 
use Online_Auctions;


-- Create Items table
CREATE TABLE Items (
    item_id INT PRIMARY KEY,
    name VARCHAR(255),
    description varchar(100),
    starting_price INT,
    auction_end_date DATE
);

-- display your table
select * from Items ;

-- Insert 10 values into Items table
INSERT INTO Items (item_id, name, description, starting_price, auction_end_date)
VALUES
(1, 'Vintage Watch', 'A classic vintage wristwatch.', 5000, '2024-01-30'),
(2, 'Antique Vase', 'A rare antique porcelain vase.', 15000, '2024-02-05'),
(3, 'Artwork', 'Abstract painting by a famous artist.', 30000, '2024-02-10'),
(4, 'Collector’s Coin', 'Limited edition gold coin.', 10000, '2024-02-15'),
(5, 'Rare Book', 'First edition of a famous novel.', 25000, '2024-02-20'),
(6, 'Luxury Handbag', 'Designer handbag in pristine condition.', 20000, '2024-02-25'),
(7, 'Sports Memorabilia', 'Signed jersey of a legendary athlete.', 50000, '2024-03-01'),
(8, 'Jewelry Set', 'Gold and diamond necklace set.', 80000, '2024-03-05'),
(9, 'Classic Car', 'Fully restored vintage car.', 500000, '2024-03-10'),
(10, 'Modern Sculpture', 'Contemporary metal sculpture.', 40000, '2024-03-15');

-- Create Bidders table
CREATE TABLE Bidders (
    bidder_id INT PRIMARY KEY,
    name VARCHAR(255),
    contact VARCHAR(15),
    email VARCHAR(255),
    bid_amount INT
);

-- display your table
select * from Bidders ;

-- Insert 10 values into Bidders table
INSERT INTO Bidders (bidder_id, name, contact, email, bid_amount)
VALUES
(1, 'Alice Brown', '123-456-7890', 'alice@example.com', 5500),
(2, 'Bob Smith', '234-567-8901', 'bob@example.com', 16000),
(3, 'Charlie Johnson', '345-678-9012', 'charlie@example.com', 31000),
(4, 'David White', '456-789-0123', 'david@example.com', 11000),
(5, 'Ella Green', '567-890-1234', 'ella@example.com', 26000),
(6, 'Frank Black', '678-901-2345', 'frank@example.com', 21000),
(7, 'Grace Blue', '789-012-3456', 'grace@example.com', 51000),
(8, 'Henry Red', '890-123-4567', 'henry@example.com', 82000),
(9, 'Ivy Silver', '901-234-5678', 'ivy@example.com', 505000),
(10, 'Jack Gold', '012-345-6789', 'jack@example.com', 41000);

-- Create Bids table
CREATE TABLE Bids (
    bid_id INT PRIMARY KEY,
    item_id INT,
    bidder_id INT,
    bid_time DATETIME,
    bid_amount INT
);

-- display your table
select * from Bids;


-- Insert 10 values into Bids table
INSERT INTO Bids (bid_id, item_id, bidder_id, bid_time, bid_amount)
VALUES
(1, 1, 1, '2024-01-15 10:00:00', 5500),
(2, 2, 2, '2024-01-16 11:00:00', 16000),
(3, 3, 3, '2024-01-17 12:00:00', 31000),
(4, 4, 4, '2024-01-18 13:00:00', 11000),
(5, 5, 5, '2024-01-19 14:00:00', 26000),
(6, 6, 6, '2024-01-20 15:00:00', 21000),
(7, 7, 7, '2024-01-21 16:00:00', 51000),
(8, 8, 8, '2024-01-22 17:00:00', 82000),
(9, 9, 9, '2024-01-23 18:00:00', 505000),
(10, 10, 10, '2024-01-24 19:00:00', 41000);

-- Create Payments table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    bid_id INT,
    payment_date DATE,
    amount INT,
    status VARCHAR(20)
);

-- display your table
select * from Payments ;

-- Insert 10 values into Payments table
INSERT INTO Payments (payment_id, bid_id, payment_date, amount, status)
VALUES
(1, 1, '2024-01-25', 5500, 'Completed'),
(2, 2, '2024-01-26', 16000, 'Completed'),
(3, 3, '2024-01-27', 31000, 'Pending'),
(4, 4, '2024-01-28', 11000, 'Completed'),
(5, 5, '2024-01-29', 26000, 'Pending'),
(6, 6, '2024-01-30', 21000, 'Completed'),
(7, 7, '2024-02-01', 51000, 'Completed'),
(8, 8, '2024-02-02', 82000, 'Pending'),
(9, 9, '2024-02-03', 505000, 'Completed'),
(10, 10, '2024-02-04', 41000, 'Completed');

-- Create Winners table
CREATE TABLE Winners (
    winner_id INT PRIMARY KEY,
    item_id INT,
    bidder_id INT,
    winning_bid INT,
    date DATE
);

-- display your table
select * from Winners;

-- Insert 10 values into Winners table
INSERT INTO Winners (winner_id, item_id, bidder_id, winning_bid, date)
VALUES
(1, 1, 1, 5500, '2024-01-31'),
(2, 2, 2, 16000, '2024-02-06'),
(3, 3, 3, 31000, '2024-02-11'),
(4, 4, 4, 11000, '2024-02-16'),
(5, 5, 5, 26000, '2024-02-21'),
(6, 6, 6, 21000, '2024-02-26'),
(7, 7, 7, 51000, '2024-03-02'),
(8, 8, 8, 82000, '2024-03-06'),
(9, 9, 9, 505000, '2024-03-11'),
(10, 10, 10, 41000, '2024-03-16');


-- create database of Event_Management
create database Event_Management;

-- use your database
use Event_Management;

-- Create Events table
CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(255),
    date DATE,
    venue VARCHAR(255),
    organizer VARCHAR(255)
);

-- display your table
select * from Events;

-- Insert 10 values into Events table
INSERT INTO Events (event_id, event_name, date, venue, organizer)
VALUES
(1, 'Music Fest', '2024-03-01', 'Central Park', 'XYZ Entertainment'),
(2, 'Tech Conference', '2024-03-05', 'Convention Center', 'Tech Innovators'),
(3, 'Food Expo', '2024-03-10', 'City Hall', 'Culinary Guild'),
(4, 'Art Exhibition', '2024-03-15', 'Art Museum', 'Creative Minds'),
(5, 'Sports Meet', '2024-03-20', 'Stadium A', 'Sports Authority'),
(6, 'Film Festival', '2024-03-25', 'Cinema Plaza', 'Film Buffs Inc.'),
(7, 'Charity Gala', '2024-03-30', 'Grand Hotel', 'Helping Hands'),
(8, 'Book Fair', '2024-04-05', 'Library Square', 'Readers Club'),
(9, 'Comedy Show', '2024-04-10', 'Theater B', 'Laugh Factory'),
(10, 'Dance Competition', '2024-04-15', 'Dance Academy', 'Dance League');

-- Create Tickets table
CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY,
    event_id INT,
    price INT,
    seat_type VARCHAR(50),
    available INT
);

-- display your table
select * from Tickets;

-- Insert 10 values into Tickets table
INSERT INTO Tickets (ticket_id, event_id, price, seat_type, available)
VALUES
(1, 1, 50, 'General', 200),
(2, 1, 100, 'VIP', 50),
(3, 2, 75, 'General', 300),
(4, 2, 150, 'VIP', 100),
(5, 3, 40, 'General', 400),
(6, 3, 80, 'VIP', 100),
(7, 4, 60, 'General', 250),
(8, 4, 120, 'VIP', 80),
(9, 5, 30, 'General', 500),
(10, 5, 70, 'VIP', 150);

-- Create Attendees table
CREATE TABLE Attendees (
    attendee_id INT PRIMARY KEY,
    name VARCHAR(255),
    contact VARCHAR(15),
    email VARCHAR(255),
    event_id INT
);

-- display your table
select * from Attendees;


-- Insert 10 values into Attendees table
INSERT INTO Attendees (attendee_id, name, contact, email, event_id)
VALUES
(1, 'Alice Brown', '123-456-7890', 'alice@example.com', 1),
(2, 'Bob Smith', '234-567-8901', 'bob@example.com', 1),
(3, 'Charlie Johnson', '345-678-9012', 'charlie@example.com', 2),
(4, 'David White', '456-789-0123', 'david@example.com', 2),
(5, 'Ella Green', '567-890-1234', 'ella@example.com', 3),
(6, 'Frank Black', '678-901-2345', 'frank@example.com', 3),
(7, 'Grace Blue', '789-012-3456', 'grace@example.com', 4),
(8, 'Henry Red', '890-123-4567', 'henry@example.com', 4),
(9, 'Ivy Silver', '901-234-5678', 'ivy@example.com', 5),
(10, 'Jack Gold', '012-345-6789', 'jack@example.com', 5);

-- Create Sponsors table
CREATE TABLE Sponsors (
    sponsor_id INT PRIMARY KEY,
    name VARCHAR(255),
    event_id INT,
    contribution INT,
    contact VARCHAR(15)
);

-- display your table
select * from Sponsors;

-- Insert 10 values into Sponsors table
INSERT INTO Sponsors (sponsor_id, name, event_id, contribution, contact)
VALUES
(1, 'ABC Corp', 1, 5000, '123-456-7890'),
(2, 'TechWorld Inc.', 2, 10000, '234-567-8901'),
(3, 'Foodies Ltd.', 3, 8000, '345-678-9012'),
(4, 'ArtHouse', 4, 6000, '456-789-0123'),
(5, 'SportsCo', 5, 7000, '567-890-1234'),
(6, 'FilmFans', 6, 12000, '678-901-2345'),
(7, 'CharityPlus', 7, 15000, '789-012-3456'),
(8, 'BookWorms', 8, 3000, '890-123-4567'),
(9, 'LaughMasters', 9, 4000, '901-234-5678'),
(10, 'DanceLovers', 10, 5000, '012-345-6789');

-- Create Vendors table
CREATE TABLE Vendors (
    vendor_id INT PRIMARY KEY,
    name VARCHAR(255),
    event_id INT,
    service VARCHAR(255),
    contact VARCHAR(15)
);


-- drop the tables (to make changes in table )
drop table vendors;

-- use truncate ( to make changes in table's value)
truncate Vendors;

-- display your table
select * from Vendors;

-- Insert 10 values into Vendors table
INSERT INTO Vendors (vendor_id, name, event_id, service, contact)
VALUES
(1, 'Catering Experts', 1, 'Catering', '123-456-7890'),
(2, 'Tech Setup Co.', 2, 'Technical Support', '234-567-8901'),
(3, 'Food Trucks Inc.', 3, 'Food Stalls', '345-678-9012'),
(4, 'Decorators Hub', 4, 'Event Decoration', '456-789-0123'),
(5, 'Sports Gear Ltd.', 5, 'Equipment', '567-890-1234'),
(6, 'Film Screeners', 6, 'Projection Services', '678-901-2345'),
(7, 'Event Planners', 7, 'Planning and Management', '789-012-3456'),
(8, 'Book Stalls Inc.', 8, 'Book Displays', '890-123-4567'),
(9, 'Sound Systems', 9, 'Audio Setup', '901-234-5678'),
(10, 'Lighting Experts', 10, 'Lighting', '012-345-6789');
















