-- QUIZ 1
-- DATABASE- LIBRARY MANAGEMENT
-- CREATE 5 TABLE USING PROPER ATTRIBUTES DATATYPE & CONSTRAINT 
-- INSERT 5 RECORDS IN EACH
-- WRITE ALL QUERIES YOU HAVE READ TILL NOW 
-- DO PROPER DOCUMENTATION

-- CREATE DATABASE LIBRARY_MANAGEMEN
CREATE DATABASE LIBRARY_MANAGEMENT;

-- USE YOUR DATABASE 
USE LIBRARY_MANAGEMENT;

-- CREATE TABLE OF BOOKS
CREATE table BOOKS (BOOK_NAME VARCHAR (100) PRIMARY KEY,
PRICE INT NOT NULL,
AUTHOR VARCHAR (100),
PAGES  int,
PUBLISH_DATE DATE );

-- DISPLAY YOUR TABLE 
select * FROM BOOKS;

-- INSERT VALUES IN TABLES
INSERT INTO BOOKS VALUES
('THE CRAZIEST MAN',270,'JITESH YADAV',200,'2024:04:02'),
('THE INVISIBLE MAN',200,'ROHAN SINGH',154,'2023:05:02'),
('THE GHOST',150,'NIRAJ YADAV',170,'2022:06:02'),
('THE GOD ',300,'RAHUL YADAV',321,'2021:08:02'),
('WORKERS LIFE',326,'NEHA PATEL',130,'1990:05:02');

-- USE DROP 
DROP table BOOKS;
-- USE TRUNCATE
TRUNCATE TABLE BOOKS;

-- CREATE TBALE AUTHOR
CREATE TABLE AUTHOR(AUTHOR_NAME VARCHAR (100) PRIMARY KEY,
DOB DATE,
LOCATION VARCHAR (100),
BOOKS VARCHAR (100),
AGE int NOT NULL
); 

-- DISPLAY YOUR TABLE 
select * FROM AUTHOR;

-- INSERT VALUES IN TABLES
INSERT INTO AUTHOR VALUES
('ROHAN YADAV','2002:04:20','THANE','THE VILLAN',40),
('JITESH SINGH','2001:05:20','MATUNGA','THE KING',30),
('MATTY PATEL','2003:07:20','G.B ROAD','THE ENEMY',50),
('RAVI YADAV','1990:08:20','MIRA ROAD','THE LOVELY FLOWER',48),
('NEHA ROY','1995:09:20','DOMBIVALI','GOOD AND BAD BOY',55);

-- USE DROP 
DROP table AUTHOR ;

-- USE TRUNCATE
TRUNCATE TABLE AUTHOR;

-- CREATE TABLE STAFF
CREATE TABLE STAFF ( NAME VARCHAR(100),
SALARY INT,
LOCATION VARCHAR(100),
DATE_OF_JOINING DATE,
CONTACT int);

-- DISPLAY YOUR TABLE 
select * FROM STAFF;

-- INSERT VALUES IN TABLE 
INSERT INTO STAFF VALUES(
('RAJU',12000,'THANE','2023:09:12',9324694981),
('ROHAN',19000,'MATUNGA','2023:10:15',9876543217),
('TEJAS',15000,'SION','2023:02:18',7676767655),
('RAMU',19000,'MANKOLI','2023:10:19',8787989898),
('RAMESH',20000,'DADAR','2023:11:20',4534342345));


-- USE DROP 
DROP table STAFF ;

-- USE TRUNCATE
TRUNCATE TABLE STAFF;

-- CRAETE TABLE STUDENTS

CREATE TABLE STUDENTS ( FIRST_NAME VARCHAR(100),
LAST_NAME VARCHAR(100) NOT NULL,
IN_TIME time,
OUT_TIME TIME NOT NULL,
CONTACT int NOT NULL );

-- DISPLAY YOUR TABLE 
select * FROM STUDENTS;

-- INSERT VALUES IN TABLE 
INSERT INTO STUDENTS VALUES(
('RAJU','YADAV','08:03:01','09:03:03','THANE',9324694981),
('NIRAJ','SINGH','02:05:07','05:03:01','SION',9876543217),
('TEJAS','THAKUR','05:03:00','06:03:01','MATUNGA',7676767655),
('MATTY','ROY','06:03:09','08:03:01','BANDRA',8787989898),
('KHUSHBOO','PATEL','07:03:08','09:03:01','DADAR',4534342345));

-- USE DROP 
DROP table STUDENTS ;

-- USE TRUNCATE
TRUNCATE TABLE STUDENTS;


-- CREATE TABLE BRANCH
CREATE TABLE BRANCH ( BRANCH_ID int auto_increment,
HEAD INT NOT NULL,
ESTABLISH_DATE DATE ,
LOCATION VARCHAR(100) NOT NULL,
CONTACT int NOT NULL);

-- DISPLAY YOUR TABLE 
select * FROM BRANCH;

-- INSERT VALUES IN TABLE 
INSERT INTO BRANCH VALUES(
(123,'ROHAN','1999:09:11','THANE',9324694981),
(124,'RAMESH','2000:05:8','SION',9876543217),
(125,'RAJAN','1990:07:09','MATUNGA',7676767655),
(126,'MAYESH','1995:04:03','BANDRA',8787989898),
(127,'VISHAL','1999:03:07','DADAR',4534342345));

-- USE DROP 
DROP table BRANCH ;

-- USE TRUNCATE
TRUNCATE TABLE BRANCH;
