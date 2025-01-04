CREATE DATABASE XYZCOLLEGE;

drop database XYZCOLLEGE;

USE XYZCOLLEGE;

-- Table-1

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,                
    -- Unique identifier for each department
    DepartmentName VARCHAR(100) NOT NULL,        
    -- Name of the department, cannot be NULL
    DepartmentHead VARCHAR(100),                
    -- Head of the department (optional)
    CreationDate DATE NOT NULL,                  
    -- Date the department was created, cannot be NULL
    Budget DECIMAL(15, 2) CHECK (Budget >= 0),  
    -- Budget for the department, must be non-negative
    Location VARCHAR(100),                      
    -- Location of the department (optional)
    PhoneNumber VARCHAR(15),                    
    -- Contact phone number for the department (optional)
    Email VARCHAR(100) UNIQUE,                  
    -- Email address for the department, must be unique
    Status ENUM('Active', 'Inactive') DEFAULT 'Active'
    -- Status of the department (default is 'Active')
);


drop table Departments;

-- insert values into Departments

INSERT INTO Departments (DepartmentID, DepartmentName, DepartmentHead, CreationDate, Budget, Location, PhoneNumber, Email, Status) VALUES
(1, 'Computer Science', 'Dr. Aditi Joshi', '2015-08-01', 600000.00, 'Main Campus', '022-12345678', 'cs@mumbaiuniversity.edu', 'Active'),
(2, 'Mechanical Engineering', 'Dr. Rohan Mehta', '2016-07-15', 550000.00, 'Engineering Block', '022-23456789', 'mech@mumbaiuniversity.edu', 'Active'),
(3, 'Civil Engineering', 'Dr. Priya Sharma', '2017-09-10', 500000.00, 'Engineering Block', '022-34567890', 'civil@mumbaiuniversity.edu', 'Active'),
(4, 'Electrical Engineering', 'Dr. Vikram Singh', '2018-01-20', 520000.00, 'Engineering Block', '022-45678901', 'electrical@mumbaiuniversity.edu', 'Inactive'),
(5, 'Information Technology', 'Dr. Neha Gupta', '2019-03-05', 480000.00, 'IT Building', '022-56789012', 'it@mumbaiuniversity.edu', 'Active'),
(6, 'Business Administration', 'Dr. Sanjay Rao', '2014-11-11', 700000.00, 'Management Building', '022-67890123', 'business@mumbaiuniversity.edu', 'Active'),
(7, 'Psychology', 'Dr. Anjali Verma', '2020-02-25', 300000.00, 'Arts Block', '022-78901234', 'psychology@mumbaiuniversity.edu', 'Active'),
(8, 'Economics', 'Dr. Karan Desai', '2018-06-30', 350000.00, 'Social Sciences Building', '022-89012345', 'economics@mumbaiuniversity.edu', 'Inactive'),
(9, 'Mathematics', 'Dr. Sneha Patil', '2016-04-15', 400000.00, 'Science Block', '022-90123456', 'maths@mumbaiuniversity.edu', 'Active'),
(10, 'History', 'Dr. Amit Bhatia', '2015-12-01', 250000.00, 'Arts Block', '022-01234567', 'history@mumbaiuniversity.edu', 'Active');


-- SELECT Queries
-- 1. Retrieve all department details.
SELECT * FROM Departments;

-- 2. Retrieve the names and budgets of departments with a budget greater than 500000.
SELECT DepartmentName, Budget 
FROM Departments 
WHERE Budget > 500000;

-- 3. Retrieve all active departments along with their creation dates.
SELECT DepartmentName, CreationDate 
FROM Departments 
WHERE Status = 'Active';

-- 4. Retrieve the name and email of departments where the head is not specified.
SELECT DepartmentName, Email 
FROM Departments 
WHERE DepartmentHead IS NULL;

-- 5. Retrieve departments located in the 'Engineering Block'.
SELECT DepartmentName, Location 
FROM Departments 
WHERE Location = 'Engineering Block';

-- ALTER Queries
-- 1. Add a new column for storing the department's rank.
ALTER TABLE Departments 
ADD DepartmentRank INT DEFAULT 1;

-- 2. Modify the 'Budget' column to allow up to 18 digits with 2 decimal places.
ALTER TABLE Departments 
MODIFY Budget DECIMAL(18, 2);


-- 3. Rename the 'Location' column to 'DepartmentLocation'.
ALTER TABLE Departments 
CHANGE Location DepartmentLocation VARCHAR(100);

-- 4. Drop the 'Status' column from the table.
ALTER TABLE Departments 
DROP COLUMN Status;



-- DELETE Queries

set sql_safe_updates = 0;
set sql_safe_updates = 1; 


-- 1. Delete a department where the budget is less than 300000.
DELETE FROM Departments 
WHERE Budget < 300000;

-- 2. Delete a department with the name 'Economics'.
DELETE FROM Departments 
WHERE DepartmentName = 'Economics';

-- 3. Delete all inactive departments.
DELETE FROM Departments 
WHERE Status = 'Inactive';

-- 4. Delete departments created before the year 2016.
DELETE FROM Departments 
WHERE CreationDate < '2016-01-01';

-- 5. Delete a department with a specific phone number.
DELETE FROM Departments 
WHERE PhoneNumber = '022-12345678';

delete from Departments
where DepartmentID = 1 ;

select * from Departments;

-- UPDATE Queries
-- 1. Update the budget of all active departments by increasing it by 10%.
UPDATE Departments 
SET Budget = Budget * 1.10 
WHERE Status = 'Active';

-- 2. Change the status of all departments to 'Active'.
UPDATE Departments 
SET Status = 'Active';

-- 3. Update the phone number of 'Computer Science' to a new value.
UPDATE Departments 
SET PhoneNumber = '022-99999999' 
WHERE DepartmentName = 'Computer Science';

-- 4. Update the head of 'Electrical Engineering' to 'Dr. Ankit Gupta'.
UPDATE Departments 
SET DepartmentHead = 'Dr. Ankit Gupta' 
WHERE DepartmentName = 'Electrical Engineering';

-- 5. Update the department rank for all departments located in the 'Engineering Block'.
UPDATE Departments 
SET DepartmentRank = 2 
WHERE DepartmentLocation = 'Engineering Block';


update Departments
set email = 'jitesh1234@gmail.com'
where Departmentid = 4;

update Departments
set departmentid = 11
where Departmentid = 4;


select * from departments;
select * from faculty;

-- Table-2

CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,                          
    -- Unique identifier for each faculty member
    FacultyName VARCHAR(100) NOT NULL,                  
    -- Name of the faculty member, cannot be NULL
    DepartmentID INT,                                  
    -- Department the faculty belongs to (optional)
    HireDate DATE NOT NULL,                            
    -- Date the faculty member was hired, cannot be NULL
    Email VARCHAR(100) UNIQUE NOT NULL,                
    -- Email address of the faculty member, must be unique
    PhoneNumber VARCHAR(15),                            
    -- Contact phone number for the faculty member (optional)
    -- Here Enum is a String Object
    Position ENUM('Professor', 'Associate Professor', 'Assistant Professor', 'Lecturer') NOT NULL,
    -- Position of the faculty member
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
        ON DELETE SET NULL                            
        -- If a department is deleted, set the Faculty's DepartmentID to NULL
        ON UPDATE CASCADE                              
        -- If a DepartmentID is updated, update it in Faculty
);

-- insert 10 records into faculty

INSERT INTO Faculty (FacultyID, FacultyName, DepartmentID, HireDate, Email, PhoneNumber, Position) VALUES
(1, 'Dr. Aditi Sharma', 1, '2015-08-01', 'aditi.sharma@mumbaiuniversity.edu.in', '9876543210', 'Professor'),
(2, 'Prof. Rajesh Mehta', 2, '2016-09-15', 'rajesh.mehta@mumbaiuniversity.edu.in', '8765432109', 'Associate Professor'),
(3, 'Dr. Neha Patil', 3, '2018-01-10', 'neha.patil@mumbaiuniversity.edu.in', '7654321098', 'Assistant Professor'),
(4, 'Mr. Amit Desai', 1, '2020-07-20', 'amit.desai@mumbaiuniversity.edu.in', '6543210987', 'Lecturer'),
(5, 'Dr. Kavita Joshi', 2, '2017-05-25', 'kavita.joshi@mumbaiuniversity.edu.in', '5432109876', 'Professor'),
(6, 'Prof. Sanjay Kulkarni', 3, '2019-11-11', 'sanjay.kulkarni@mumbaiuniversity.edu.in', '4321098765', 'Associate Professor'),
(7, 'Ms. Pooja Nair', 4, '2021-06-30', 'pooja.nair@mumbaiuniversity.edu.in', '3210987654', 'Assistant Professor'),
(8, 'Dr. Ramesh Bhat', 5, '2014-03-15', 'ramesh.bhat@mumbaiuniversity.edu.in', '2109876543', 'Professor'),
(9, 'Mr. Vikram Singh', 4, '2022-02-01', 'vikram.singh@mumbaiuniversity.edu.in', '1098765432', 'Lecturer'),
(10, 'Dr. Sneha Iyer', 5, '2020-12-12', 'sneha.iyer@mumbaiuniversity.edu.in', '0987654321', 'Associate Professor');

-- SELECT Queries

-- 1. Retrieve all faculty details.
SELECT * FROM Faculty;

-- 2. Retrieve the names and positions of all faculty members in the 'Computer Science' department.
SELECT FacultyName, Position 
FROM Faculty 
WHERE DepartmentID = 1;

-- 3. Retrieve faculty members hired after January 1, 2018.
SELECT FacultyName, HireDate 
FROM Faculty 
WHERE HireDate > '2018-01-01';

-- 4. Retrieve the email and phone number of all 'Associate Professors'.
SELECT Email, PhoneNumber 
FROM Faculty 
WHERE Position = 'Associate Professor';

-- 5. Retrieve faculty members whose email ends with 'mumbaiuniversity.edu.in'.
SELECT FacultyName, Email 
FROM Faculty 
WHERE Email LIKE '%patil%';

-- ALTER Queries
-- 1. Add a column to store the faculty member's salary with a default value of 50000.
ALTER TABLE Faculty 
ADD Salaryy INT DEFAULT 50000;

-- 2. Rename the 'PhoneNumber' column to 'ContactNumber'.
ALTER TABLE Faculty 
CHANGE PhoneNumber ContactNumber VARCHAR(15);

-- 3. Modify the 'Email' column to increase its length to 150 characters.
ALTER TABLE Faculty 
MODIFY Email VARCHAR(150);

-- 4. Add a constraint to ensure salaries are non-negative.
ALTER TABLE Faculty 
ADD CONSTRAINT salaryy CHECK (Salary >= 50000);

select * from Faculty;

-- 5. Drop the 'Salary' column.
ALTER TABLE Faculty 
DROP COLUMN Salary;

alter table faculty 
drop column salaryy;

-- DELETE Queries
-- 1. Delete a faculty member with the ID 10.
DELETE FROM Faculty 
WHERE FacultyID = 10;

select * from departments;
select * from faculty;



-- 2. Delete all faculty members in the 'Civil Engineering' department.
DELETE FROM Faculty 
WHERE DepartmentID = 3;

-- 3. Delete faculty members hired before 2015.
DELETE FROM Faculty 
WHERE HireDate < '2015-01-01';

-- 4. Delete faculty members whose position is 'Lecturer'.
DELETE FROM Faculty 
WHERE Position = 'Lecturer';

-- 5. Delete a faculty member with the email 'vikram.singh@mumbaiuniversity.edu.in'.
DELETE FROM Faculty 
WHERE Email = 'vikram.singh@mumbaiuniversity.edu.in';

-- UPDATE Queries
-- 1. Update the position of 'Mr. Amit Desai' to 'Assistant Professor'.
UPDATE Faculty 
SET Position = 'Assistant Professor' 
WHERE FacultyName = 'Mr. Amit Desai';

-- 2. Update the department of all 'Associate Professors' to 'Mechanical Engineering' (DepartmentID 2).
UPDATE Faculty 
SET DepartmentID = 2 
WHERE Position = 'Associate Professor';

-- 3. Increase the salary of all 'Professors' by 10%.
UPDATE Faculty 
SET Salary = Salary * 1.10 
WHERE Position = 'Professor';

-- 4. Update the contact number of 'Dr. Neha Patil' to '9998887776'.
UPDATE Faculty 
SET ContactNumber = '9998887776' 
WHERE FacultyName = 'Dr. Neha Patil';

-- 5. Update the hire date of all faculty members in the 'Information Technology' department (DepartmentID 5) to '2022-01-01'.
UPDATE Faculty 
SET HireDate = '2022-01-01' 
WHERE DepartmentID = 5;


-- Table-3
-- Table: Students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,                        
    -- Unique identifier for each student (Primary Key)
   
    StudentName VARCHAR(100) NOT NULL,                  
    -- Name of the student, cannot be NULL
    -- This field stores the full name of the student.
   
    DepartmentID INT,                                  
    -- Department the student belongs to (optional)
    -- This field links to the Departments table to indicate the student's department.
   
    EnrollmentDate DATE NOT NULL,                      
    -- Date the student was enrolled, cannot be NULL
    -- This field records the date the student enrolled in the university.
   
    Email VARCHAR(100) UNIQUE NOT NULL,                
    -- Email address of the student, must be unique
    -- This field stores the student's email address and must be unique across all students.
   
    PhoneNumber VARCHAR(15),                            
    -- Contact phone number for the student (optional)
    -- This field is optional and stores the student's contact number.
   
    DateOfBirth DATE,                                  
    -- Date of birth of the student (optional)
    -- This field stores the date of birth of the student for age verification and record-keeping.
   
    Address VARCHAR(255),                              
    -- Residential address of the student (optional)
    -- This field stores the student's residential address.
   
    -- Check constraint for validating email format (basic validation)
    CONSTRAINT chk_EmailFormat CHECK (Email LIKE '%_@__%.__%'),
    -- This ensures that the email address contains at least one character before the '@',
    -- at least two characters after '@', and at least one '.' after the '@'.
   
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
        ON DELETE SET NULL                          
        -- If a department is deleted, set the Student's DepartmentID to NULL
        ON UPDATE CASCADE                            
        -- If a DepartmentID is updated, update it in Students
);

-- insert 10 records
INSERT INTO Students (StudentID, StudentName, DepartmentID, EnrollmentDate, Email, PhoneNumber, DateOfBirth, Address) VALUES
(1, 'Aditi Sharma', 1, '2023-08-01', 'aditi.sharma@example.com', '9876543210', '2005-06-15', '123, Marine Drive, Mumbai'),
(2, 'Rahul Desai', 2, '2023-08-01', 'rahul.desai@example.com', '9876543211', '2004-05-20', '456, Juhu Beach, Mumbai'),
(3, 'Sneha Patil', 1, '2023-08-01', 'sneha.patil@example.com', '9876543212', '2005-07-30', '789, Bandra, Mumbai'),
(4, 'Vikram Joshi', 3, '2023-08-01', 'vikram.joshi@example.com', '9876543213', '2004-02-10', '321, Andheri, Mumbai'),
(5, 'Priya Iyer', 2, '2023-08-01', 'priya.iyer@example.com', '9876543214', '2005-04-25', '654, Powai, Mumbai'),
(6, 'Rohit Mehta', 3, '2023-08-01', 'rohit.mehta@example.com', '9876543215', '2004-11-11', '987, Thane, Mumbai'),
(7, 'Neha Gupta', 1, '2023-08-01', 'neha.gupta@example.com', '9876543216', '2005-12-01', '159, Dadar, Mumbai'),
(8, 'Karan Singh', 2, '2023-08-01', 'karan.singh@example.com', '9876543217', '2004-09-15', '753, Malad, Mumbai'),
(9, 'Anjali Verma', 3, '2023-08-01', 'anjali.verma@example.com', '9876543218', '2005-03-05', '852, Borivali, Mumbai'),
(10, 'Siddharth Rao', 1, '2023-08-01', 'siddharth.rao@example.com', '9876543219', '2004-01-20', '963, Ghatkopar, Mumbai');

select * from students;

--  1 Retrieve all students from the Students table
SELECT * FROM Students;

--  2 Retrieve names and emails of students born after 2005
SELECT StudentName, Email 
FROM Students 
WHERE DateOfBirth > '2005-01-01';

--  3 Retrieve the count of students in each department
SELECT DepartmentID, COUNT(*) AS StudentCount 
FROM Students 
GROUP BY DepartmentID;

-- 4 Retrieve students with unique phone numbers
SELECT DISTINCT PhoneNumber 
FROM Students 
WHERE PhoneNumber IS NOT NULL;

-- 5 Retrieve students enrolled on or after 2023-08-01
SELECT StudentID, StudentName 
FROM Students 
WHERE EnrollmentDate >= '2023-08-01';

-- ALTER Query
--  1 Add a column for the nationality of the student
ALTER TABLE Students 
ADD Nationality VARCHAR(50);

-- 2 Modify the Address column to increase its length
ALTER TABLE Students 
MODIFY Address VARCHAR(500);

-- 3 Add a default value for DepartmentID
ALTER TABLE Students 
MODIFY DepartmentID INT DEFAULT 1;

select * from Students;

-- 4 Drop the DateOfBirth column
ALTER TABLE Students 
DROP COLUMN DateOfBirth;

-- 5 Rename the table from Students to UniversityStudents
ALTER TABLE Students 
RENAME TO UniversityStudents;

-- 1 Update the address of a student with ID 3
UPDATE Students 
SET Address = '1234, New Bandra, Mumbai' 
WHERE StudentID = 3;

-- 2 Set DepartmentID to NULL for students in Department 2
UPDATE Students 
SET DepartmentID = NULL 
WHERE DepartmentID = 2;

set sql_safe_updates = 0;

-- 3 Update phone numbers 
UPDATE Students 
SET PhoneNumber = 9324694982 
WHERE PhoneNumber IS NOT NULL;

select * from students;

-- 4 Change the enrollment date for a specific student
UPDATE Students 
SET EnrollmentDate = '2023-09-01' 
WHERE StudentID = 6;

-- 5 Update the phone number 
UPDATE Students 
SET phonenumber = 9324694983
where email = 'aditi.sharma@example.com';

-- DELETE Query
-- 1 Delete the record of a student with ID 5
DELETE FROM Students 
WHERE StudentID = 5;

-- 2 Remove all students who have no phone number
DELETE FROM Students 
WHERE PhoneNumber IS NULL;


-- 3 Remove students who enrolled before 2023
DELETE FROM Students 
WHERE EnrollmentDate < '2023-01-01';

-- 4 Delete records where the email is invalid
DELETE FROM Students 
WHERE Email NOT LIKE '%@%.%';

-- 5 Remove all records where DepartmentID is NULL
DELETE FROM Students 
WHERE DepartmentID IS NULL;

-- 6 cascade examples on delete

 delete from students
 where departmentid = 2 ;

select * from students;
select * from departments;

delete from departments
 where departmentid = 3 ;

-- Table-4
-- Table: Marks
CREATE TABLE Marks (
    MarkID INT PRIMARY KEY,                              
    -- Unique identifier for each mark record (Primary Key)
   
    StudentID INT,                                      
    -- Student who received the marks
    -- This field links to the Students table to indicate which student received the marks.
   
    FacultyID INT,                                      
    -- Faculty who graded the marks
    -- This field links to the Faculty table to indicate which faculty member graded the marks.
   
    Subject VARCHAR(100) NOT NULL,                      
    -- Subject for which the marks are awarded
    -- This field stores the name of the subject for which the marks are awarded; cannot be NULL.
   
    MarksObtained INT CHECK (MarksObtained >= 0 AND MarksObtained <= 100),
    -- Ensuring marks are within 0-100
    -- This field records the marks obtained by the student; must be between 0 and 100.
   
    ExamDate DATE NOT NULL,                            
    -- Date of the exam
    -- This field records the date on which the exam was conducted; cannot be NULL.
   
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
        ON DELETE CASCADE                              
        -- If a student is deleted, their marks will also be deleted
        ON UPDATE CASCADE,                              
        -- If a StudentID is updated, update it in Marks
       
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
        ON DELETE SET NULL                            
        -- If a faculty member is deleted, set the FacultyID in Marks to NULL
        ON UPDATE CASCADE                              
        -- If a FacultyID is updated, update it in Marks
);


-- insert 10 records
INSERT INTO Marks (MarkID, StudentID, FacultyID, Subject, MarksObtained, ExamDate) VALUES
 (1, 1, 1, 'Mathematics', 85, '2023-05-15'),   -- Student 1
 (2, 2, 2, 'Physics', 78, '2023-05-16'),        -- Student 2
 (3, 3, 3, 'Chemistry', 92, '2023-05-17'),      -- Student 3
 (4, 4, 4, 'Biology', 88, '2023-05-18'),        -- Student 4
 (5, 5, 5, 'Computer Science', 95, '2023-05-19'), -- Student 5
 (6, 6, 6, 'English', 76, '2023-05-20'),        -- Student 6
 (7, 7, 7, 'History', 84, '2023-05-21'),        -- Student 7
 (8, 8, 8, 'Geography', 90, '2023-05-22'),      -- Student 8
 (9, 9, 9, 'Economics', 70, '2023-05-23'),      -- Student 9
 (10, 10, 10, 'Political Science', 82, '2023-05-24'); -- Student 10



-- SELECT Query 1: Retrieve all records from the Marks table
SELECT * FROM Marks;

-- SELECT Query 2: Retrieve student IDs and marks obtained in Mathematics
SELECT StudentID, MarksObtained 
FROM Marks 
WHERE Subject = 'Mathematics';

-- SELECT Query 3: Retrieve the average marks for each subject
SELECT Subject, AVG(MarksObtained) 
FROM Marks 
GROUP BY Subject;

-- SELECT Query 4: Retrieve the records of students who scored more than 90
SELECT * 
FROM Marks 
WHERE MarksObtained > 90;

-- SELECT Query 5: Retrieve the details of exams conducted after '2023-05-20'
SELECT MarkID, Subject, ExamDate 
FROM Marks 
WHERE ExamDate > '2023-05-20';

-- ALTER Query 1: Add a new column for remarks
ALTER TABLE Marks 
ADD Remarks VARCHAR(255) default 'no remark' ;

select * from marks;

-- ALTER Query 2: Modify MarksObtained to be DECIMAL(5,2) instead of INT
ALTER TABLE Marks 
MODIFY MarksObtained DECIMAL(5,2);

-- ALTER Query 3: Add a default value for Remarks column
ALTER TABLE Marks 
MODIFY Remarks VARCHAR(250)  ;

-- ALTER Query 4: Drop the FacultyID column
ALTER TABLE Marks 
DROP COLUMN FacultyID;

-- ALTER Query 5: Rename the Marks table to ExamMarks
ALTER TABLE Marks 
RENAME TO ExamMarks;

-- UPDATE Query 1: Update marks to add 5 bonus points to all students who scored less than 80
UPDATE Marks 
SET MarksObtained = MarksObtained + 5 
WHERE MarksObtained < 80;

select * from marks;

-- UPDATE Query 2: Change the subject for MarkID 3 to 'Organic Chemistry'
UPDATE Marks 
SET Subject = 'Organic Chemistry' 
WHERE MarkID = 3;

-- UPDATE Query 3: Update remarks for students scoring more than 90
UPDATE Marks 
SET Remarks = 'Excellent performance' 
WHERE MarksObtained > 90;

-- UPDATE Query 4: Set MarksObtained to 0 for students who missed the exam
UPDATE Marks 
SET MarksObtained = 0 
WHERE MarksObtained IS NULL;

-- UPDATE Query 5: Update the ExamDate for MarkID 10
UPDATE Marks 
SET ExamDate = '2023-06-01' 
WHERE MarkID = 10;

-- DELETE Query 1: Delete records where MarksObtained is less than 50
DELETE FROM Marks 
WHERE MarksObtained < 50;

select * from marks;
select * from faculty;
select * from students;

delete from faculty
where facultyid = 3;

delete from students
where studentid = 4;

update faculty
set facultyid = 44
where facultyid = 1;

-- DELETE Query 2: Remove all records for the subject 'History'
DELETE FROM Marks 
WHERE Subject = 'History';

-- DELETE Query 3: Delete records for exams conducted before '2023-05-18'
DELETE FROM Marks 
WHERE ExamDate < '2023-05-18';

-- DELETE Query 4: Remove records where remarks are NULL
DELETE FROM Marks 
WHERE Remarks IS NULL;

-- DELETE Query 5: Delete the record of the student with MarkID 7
DELETE FROM Marks 
WHERE MarkID = 7;


-- Table-5
-- Table: Salary
CREATE TABLE Salary (
    SalaryID INT PRIMARY KEY,                          
    -- Unique identifier for each salary record (Primary Key)
   
    FacultyID INT,                                      
    -- Faculty member whose salary is recorded
    -- This field links to the Faculty table to indicate which faculty member the salary belongs to.
   
    SalaryAmount DECIMAL(10, 2) CHECK (SalaryAmount >= 0),
    -- Ensuring salary is non-negative
    -- This field records the amount of salary paid to the faculty member; must be non-negative.
   
    PaymentDate DATE NOT NULL,                          
    -- Date of salary payment
    -- This field records the date on which the salary was paid; cannot be NULL.
   
    PaymentMethod VARCHAR(50) NOT NULL,                
    -- Method of payment (e.g., bank transfer, cash)
    -- This field indicates the method used for salary payment; cannot be NULL.
   
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
        ON DELETE CASCADE                              
        -- If a faculty member is deleted, their salary record will also be deleted
        ON UPDATE CASCADE                              
        -- If a FacultyID is updated, update it in Salary
);

-- insert 10 records
-- Inserting records into the Salary table
INSERT INTO Salary (SalaryID, FacultyID, SalaryAmount, PaymentDate, PaymentMethod) VALUES
(1, 1, 50000.00, '2023-06-30', 'Bank Transfer'),    
-- Faculty 201
(2, 2, 55000.00, '2023-06-30', 'Cash'),              
-- Faculty 202
(3, 3, 60000.00, '2023-06-30', 'Bank Transfer'),    
-- Faculty 203
(4, 4, 52000.00, '2023-06-30', 'Cheque'),            
-- Faculty 204
(5, 5, 51000.00, '2023-07-30', 'Bank Transfer'),    
-- Faculty 201
(6, 2, 53000.00, '2023-07-30', 'Cash'),              
-- Faculty 202
(7, 3, 59000.00, '2023-07-30', 'Bank Transfer'),    
-- Faculty 203
(8, 4, 54000.00, '2023-07-30', 'Cheque'),            
-- Faculty 204
(9, 1, 52000.00, '2023-08-30', 'Bank Transfer'),    
-- Faculty 201
(10, 2, 55000.00, '2023-08-30', 'Cash');              
-- Faculty 202

select * from salary;

-- SELECT Query 1: Retrieve all records from the Salary table
SELECT * FROM Salary;

-- SELECT Query 2: Retrieve SalaryID, FacultyID, and SalaryAmount where PaymentMethod is 'Bank Transfer'
SELECT SalaryID, FacultyID, SalaryAmount 
FROM Salary 
WHERE PaymentMethod = 'Bank Transfer';

-- SELECT Query 3: Retrieve the total salary paid to each faculty member
SELECT FacultyID, SUM(SalaryAmount) 
FROM Salary 
GROUP BY FacultyID;

-- SELECT Query 4: Retrieve records for salaries paid after '2023-07-01'
SELECT * 
FROM Salary 
WHERE PaymentDate > '2023-07-01';

-- SELECT Query 5: Retrieve the maximum salary amount paid and the associated FacultyID
SELECT FacultyID, MAX(SalaryAmount) 
FROM Salary 
GROUP BY FacultyID;

-- ALTER Query 1: Add a new column for bonus amount
ALTER TABLE Salary 
ADD BonusAmount DECIMAL(10, 2) DEFAULT 0;

-- ALTER Query 2: Modify SalaryAmount to increase precision
ALTER TABLE Salary 
MODIFY SalaryAmount DECIMAL(12, 2);

-- ALTER Query 3: Add a check constraint to ensure PaymentMethod is either 'Bank Transfer', 'Cash', or 'Cheque'
ALTER TABLE Salary 
ADD CONSTRAINT chk_PaymentMethod 
CHECK (PaymentMethod IN ('Bank Transfer', 'Cash', 'Cheque'));

-- ALTER Query 4: Drop the BonusAmount column
ALTER TABLE Salary 
DROP COLUMN BonusAmount;

-- ALTER Query 5: Rename the Salary table to FacultySalary
ALTER TABLE Salary 
RENAME TO FacultySalary;

-- UPDATE Query 1: Increase the salary by 10% for all faculty members paid by 'Cheque'
UPDATE Salary 
SET SalaryAmount = SalaryAmount - 20000
WHERE PaymentMethod = 'bank transfer';

select * from salary;


-- UPDATE Query 2: Update the PaymentMethod to 'Direct Deposit' for all records previously marked as 'Bank Transfer'
UPDATE Salary 
SET PaymentMethod = 'Direct Deposit' 
WHERE PaymentMethod = 'Bank Transfer';

-- UPDATE Query 3: Set the BonusAmount to 5000 for all faculty members earning more than 55000
UPDATE Salary 
SET BonusAmount = 5000 
WHERE SalaryAmount > 55000;

-- UPDATE Query 4: Update the PaymentDate for FacultyID 1 to '2023-09-30'
UPDATE Salary 
SET PaymentDate = '2023-09-30' 
WHERE FacultyID = 1;

-- UPDATE Query 5: Decrease the salary by 5% for all faculty members earning less than 52000
UPDATE Salary 
SET SalaryAmount = SalaryAmount * 0.95 
WHERE SalaryAmount < 52000;

-- DELETE Query 1: Delete all records where SalaryAmount is less than 50000
DELETE FROM Salary 
WHERE SalaryAmount < 50000;

-- DELETE Query 2: Remove all records for FacultyID 4
DELETE FROM Salary 
WHERE FacultyID = 4;

-- DELETE Query 3: Delete records where PaymentDate is before '2023-07-01'
DELETE FROM Salary 
WHERE PaymentDate < '2023-07-01';

-- DELETE Query 4: Remove all records where PaymentMethod is 'Cash'
DELETE FROM Salary 
WHERE PaymentMethod = 'Cash';

-- DELETE Query 5: Delete the record with SalaryID 10
DELETE FROM Salary 
WHERE SalaryID = 10;

-- on update cascade 

update faculty
set facultyid = 33
where facultyid = 5;

update salary
set facultyid = 59
where facultyid = 3 ; --  cannot update a child row


select * from faculty;
select * from salary;


-- on delete cascade
delete from faculty
where facultyid = 3;


delete from salary
where facultyid = 2;





































