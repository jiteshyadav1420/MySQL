 -- creating a data base of hospital
create database hospital;

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







