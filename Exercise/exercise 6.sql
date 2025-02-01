/*
- Clauses {Where, Distinct, From, Order By, Group By, Having,limit,into,case Clause}

- AS(alias) Clause
The AS clause is used to provide an alias (temporary name) for columns or tables, 
improving query readability.*/

-- creat database passengers_info

create database passengers_info;

use passengers_info;


-- Create Passengers table
CREATE TABLE Passengers (
  Passenger_ID INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for each passenger (Primary Key, Auto Increment)
  First_Name VARCHAR(50) NOT NULL, -- Passenger's first name (Not Null)
  Last_Name VARCHAR(50) NOT NULL, -- Passenger's last name (Not Null)
  Email VARCHAR(100) UNIQUE NOT NULL, -- Passenger's email address (Not Null, must be unique)
  Phone_Number VARCHAR(15), -- Passenger's phone number (Optional)
  Date_of_Birth DATE NOT NULL, -- Passenger's date of birth (Not Null)
  Frequent_Flyer_Number VARCHAR(20) UNIQUE, -- Frequent flyer number (Optional, must be unique)
  Nationality VARCHAR(50) NOT NULL -- Nationality of the passenger (Not Null)
);


-- Insert Records into Passengers Table
INSERT INTO Passengers (First_Name, Last_Name, Email, Phone_Number, Date_of_Birth, Frequent_Flyer_Number, Nationality)
VALUES 
('Rahul', 'Sharma', 'rahul.sharma@example.com', '9876543210', '1990-01-15', 'FF001', 'India'),
('Priya', 'Verma', 'priya.verma@example.com', '8765432109', '1992-02-20', 'FF002', 'India'),
('Amit', 'Kumar', 'amit.kumar@example.com', '7654321098', '1988-03-25', 'FF003', 'India'),
('Sneha', 'Reddy', 'sneha.reddy@example.com', '6543210987', '1995-04-30', 'FF004', 'India'),
('Vikram', 'Singh', 'vikram.singh@example.com', '5432109876', '1985-05-05', 'FF005', 'India'),
('Neha', 'Gupta', 'neha.gupta@example.com', '4321098765', '1993-06-10', 'FF006', 'India'),
('Ravi', 'Patel', 'ravi.patel@example.com', '3210987654', '1987-07-15', 'FF007', 'India'),
('Anjali', 'Mehta', 'anjali.mehta@example.com', '2109876543', '1991-08-20', 'FF008', 'India'),
('Karan', 'Bansal', 'karan.bansal@example.com', '1098765432', '1989-09-25', 'FF009', 'India'),
('Pooja', 'Joshi', 'pooja.joshi@example.com', '0987654321', '1994-10-30', 'FF010', 'India'),
('Suresh', 'Nair', 'suresh.nair@example.com', '9876543210', '1986-11-05', 'FF011', 'India'),
('Tina', 'Chopra', 'tina.chopra@example.com', '8765432109', '1992-12-10', 'FF012', 'India'),
('Mohit', 'Agarwal', 'mohit.agarwal@example.com', '7654321098', '1988-01-15', 'FF013', 'India'),
('Ritika', 'Sethi', 'ritika.sethi@example.com', '6543210987', '1995-02-20', 'FF014', 'India'),
('Deepak', 'Kohli', 'deepak.kohli@example.com', '5432109876', '1985-03-25', 'FF015', 'India');

-- where clause
-- Passengers born after 1990
SELECT * FROM Passengers WHERE Date_of_Birth > '1990-01-01';

-- Passengers with "India" nationality
SELECT * FROM Passengers WHERE Nationality = 'India';

-- Passengers whose last name is "Sharma"
SELECT * FROM Passengers WHERE Last_Name = 'Sharma';

-- Passengers whose phone number starts with '987'
SELECT * FROM Passengers WHERE Phone_Number LIKE '987%';

-- Passengers without a frequent flyer number
SELECT * FROM Passengers WHERE Frequent_Flyer_Number IS NULL;

-- Passengers born in 1992
SELECT * FROM Passengers WHERE YEAR(Date_of_Birth) = 1992;


-- Distinct
-- Unique nationalities
SELECT DISTINCT Nationality FROM Passengers;

-- Unique years of birth
SELECT DISTINCT YEAR(Date_of_Birth) FROM Passengers;

-- Unique phone numbers
SELECT DISTINCT Phone_Number FROM Passengers;

-- Unique first names
SELECT DISTINCT First_Name FROM Passengers;

-- Unique frequent flyer numbers
SELECT DISTINCT Frequent_Flyer_Number FROM Passengers;

-- Unique email domains
SELECT DISTINCT email AS unique_email FROM Passengers;

-- from clause
-- Select all passengers
SELECT * FROM Passengers;

-- Select only the first names from the Passengers table
SELECT First_Name FROM Passengers;


-- Select columns
SELECT First_Name, Last_Name FROM Passengers ;

-- Select passengers with specific conditions
SELECT * FROM Passengers WHERE Nationality = 'India';

-- Use with alias for better readability
SELECT p.First_Name, p.Last_Name FROM Passengers as p;

-- order by clause
-- Order by first name ascending
SELECT * FROM Passengers ORDER BY First_Name ASC;

-- Order by last name descending
SELECT * FROM Passengers ORDER BY Last_Name DESC;

-- Order by date of birth oldest to youngest
SELECT * FROM Passengers ORDER BY Date_of_Birth ASC;

-- Order by nationality and first name
SELECT * FROM Passengers ORDER BY Nationality, First_Name;

-- Order by frequent flyer number descending
SELECT * FROM Passengers ORDER BY Frequent_Flyer_Number DESC;

-- Order by phone number numerically
SELECT * FROM Passengers ORDER BY phone_number desc;

-- group by clause
-- Count passengers by nationality
SELECT Nationality, COUNT(*) AS Total FROM Passengers GROUP BY Nationality;

-- Count passengers by year of birth
SELECT YEAR(Date_of_Birth) AS Year, COUNT(*) AS Total 
FROM Passengers GROUP BY Year;

-- Group by last name
SELECT Last_Name, COUNT(*) AS Count 
FROM Passengers GROUP BY Last_Name;

-- Group by nationality and count frequent flyer numbers
SELECT Nationality, COUNT(Frequent_Flyer_Number) AS Flyers 
FROM Passengers GROUP BY Nationality;



-- having clause
-- Nationalities with more than 5 passengers
SELECT Nationality, COUNT(*) AS Total 
FROM Passengers 
GROUP BY Nationality 
HAVING COUNT(*) > 5;

-- Years with more than 2 passengers born
SELECT YEAR(Date_of_Birth) AS Year, COUNT(*) AS Count 
FROM Passengers 
GROUP BY Year 
HAVING Count > 2;

-- Groups with missing frequent flyer numbers
SELECT Nationality, COUNT(*) AS Total 
FROM Passengers 
GROUP BY Nationality 
HAVING SUM(Frequent_Flyer_Number IS NULL) > 0;


-- Nationalities with fewer than 3 passengers
SELECT Nationality, COUNT(*) AS Total 
FROM Passengers 
GROUP BY Nationality 
HAVING COUNT(*) < 3;

-- Birth years with passengers totaling exactly 2
SELECT YEAR(Date_of_Birth) AS Year, COUNT(*) AS Total 
FROM Passengers 
GROUP BY Year 
HAVING Total = 2;

-- limit clause
-- Top 5 passengers
SELECT * FROM Passengers LIMIT 5;

--  the first 3 rows
SELECT * FROM Passengers LIMIT 3;

-- Retrieve only one record
SELECT * FROM Passengers LIMIT 1;

-- Fetch the latest 3 passengers based on ID
SELECT * FROM Passengers ORDER BY Passenger_ID DESC LIMIT 3;

-- Fetch 2 passengers with the youngest age
SELECT * FROM Passengers ORDER BY Date_of_Birth DESC LIMIT 2;

-- Fetch passengers starting from the 10th record
SELECT * FROM Passengers LIMIT 10 ;

-- case clause , as clause
-- Categorize passengers by age group
SELECT First_Name, Last_Name, 
CASE 
  WHEN Date_of_Birth < '1985-01-01' THEN 'Senior'
  WHEN Date_of_Birth BETWEEN '1985-01-01' AND '1995-01-01' THEN 'Middle-Aged'
  ELSE 'Young'
END AS Age_Group
FROM Passengers;

select first_name,last_name,
case
when first_name = 'ji' then 2
when last_name = 'jy' then 7
else 'ky'
end
from passengers;

select * from passengers;


-- Mark passengers as VIP based on frequent flyer number
SELECT First_Name, Last_Name, 
CASE 
  WHEN Frequent_Flyer_Number IS NOT NULL THEN 'VIP'
  ELSE 'Regular'
END AS Status
FROM Passengers;

-- Add region based on nationality
SELECT First_Name, Nationality, 
CASE Nationality
  WHEN 'India' THEN 'Asia'
  WHEN 'USA' THEN 'North America'
  ELSE 'Other'
END AS Region
FROM Passengers;

-- Calculate discounts based on age
SELECT First_Name, Date_of_Birth, 
CASE 
  WHEN YEAR(CURDATE()) - YEAR(Date_of_Birth) > 60 THEN 'Senior Discount'
  WHEN YEAR(CURDATE()) - YEAR(Date_of_Birth) < 18 THEN 'Child Discount'
  ELSE 'No Discount'
END AS Discount
FROM Passengers;

-- Flag passengers with duplicate phone numbers
SELECT First_Name, Phone_Number, 
CASE 
  WHEN Phone_Number IN (SELECT Phone_Number FROM Passengers GROUP BY Phone_Number HAVING COUNT(*) > 1) THEN 'Duplicate'
  ELSE 'Unique'
END AS Phone_Status
FROM Passengers;

-- Assign grades to passengers based on frequent flyer points
SELECT First_Name, Frequent_Flyer_Number, 
CASE 
  WHEN Frequent_Flyer_Number LIKE 'FF001%' THEN 'Gold'
  WHEN Frequent_Flyer_Number LIKE 'FF002%' THEN 'Silver'
  ELSE 'Bronze'
END AS Tier
FROM Passengers;

-- Alias for Columns

SELECT First_Name AS 'First Name', Last_Name AS 'Last Name', Email AS 'Contact Email'
FROM Passengers;

-- Alias for Tables

SELECT p.First_Name, p.Last_Name, p.Nationality
FROM Passengers AS p;

-- Combine Column and Table Aliases
SELECT p.First_Name AS 'First', p.Last_Name AS 'Last', p.Date_of_Birth AS 'DOB'
FROM Passengers as p;

-- Alias with Concatenation
SELECT CONCAT(First_Name, ' ', Last_Name) AS 'Full Name'
FROM Passengers;

-- Alias for Aggregate Functions
SELECT Nationality AS 'Country', COUNT(*) AS 'Total Passengers'
FROM Passengers
GROUP BY Nationality;











































































































































































































































