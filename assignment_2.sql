/* Create a Database:

- Name your database Healthcare_System.
- Design 10 Tables with Attributes:
- Each table must have at least 5 attributes with appropriate data types.
- Include 10 records in each table.

Implement Database Operations:

A. Basic Commands:
B. Queries:
C. Constraints & Clauses:
D. SQL_SAFE_UPDATES

*/

-- create database  Healthcare_System
create database Healthcare_System;

-- use your database  
use Healthcare_System;


-- table (patients) 1

CREATE TABLE Patients (
    Patient_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender CHAR(1),
    Contact VARCHAR(15),
    Address VARCHAR(255)
);


INSERT INTO Patients (Patient_ID, Name, Age, Gender, Contact, Address)
VALUES
(1, 'Alice Smith', 34, 'F', '1234567890', '123 Main St'),
(2, 'Bob Jones', 45, 'M', '2345678901', '456 Elm St'),
(3, 'Charlie Brown', 28, 'M', '3456789012', '789 Oak St'),
(4, 'Daisy Johnson', 39, 'F', '4567890123', '321 Pine St'),
(5, 'Eve Black', 50, 'F', '5678901234', '654 Maple St'),
(6, 'Frank White', 29, 'M', '6789012345', '987 Cedar St'),
(7, 'Grace Green', 40, 'F', '7890123456', '852 Walnut St'),
(8, 'Henry Adams', 33, 'M', '8901234567', '963 Birch St'),
(9, 'Isabel Blue', 36, 'F', '9012345678', '741 Cherry St'),
(10, 'Jack Grey', 42, 'M', '0123456789', '159 Spruce St');


-- drop your table 
drop table patients;


-- use truncate 
truncate table Patients;

-- Select queries

-- 1. Retrieve all records
SELECT * FROM Patients;

-- 2. Retrieve only Name and Age columns
SELECT Name, Age FROM Patients;

-- 3. Retrieve records where Age is greater than 40
SELECT * FROM Patients
WHERE Age > 40;

-- 4. Retrieve all female patients
SELECT * FROM Patients
WHERE Gender = 'F';

-- 5. Retrieve patients whose Contact ends with '3456'
SELECT * FROM Patients
WHERE Contact LIKE '%3456';


-- Rename queries

-- 1. Rename the table Patients to ClinicPatients
ALTER TABLE ClinicPatients 
RENAME TO Patients;

-- 2. Rename the column Address to Residence
ALTER TABLE ClinicPatients 
RENAME COLUMN Address TO Residence;

-- 3. Rename the column Contact to PhoneNumber
ALTER TABLE ClinicPatients
RENAME COLUMN Contact TO PhoneNumber;

-- 4. Rename the column Name to FullName
ALTER TABLE ClinicPatients 
RENAME COLUMN Name TO FullName;

-- 5. Rename the table back to Patients
ALTER TABLE Patients 
RENAME TO clinicPatients;

-- Alter queries

-- 1. Add a column Email to the table
ALTER TABLE Patients
ADD Email VARCHAR(100);

-- 2. Add a column Blood_Type to store blood types
ALTER TABLE Patients
ADD Blood_Type VARCHAR(3);

-- 3. Modify the Age column to allow NULL values
ALTER TABLE Patients
MODIFY Age INT NULL;

-- 4. Drop the column Email
ALTER TABLE Patients
drop COLUMN Email ;

-- 5. Add a unique constraint to the Contact column
ALTER TABLE Patients
ADD CONSTRAINT Unique_phonenumber UNIQUE (phonenumber);

select* from Patients;

-- Delete queries

set sql_safe_updates = 0;
set sql_safe_updates = 1; -- RE-ENABLE SAFE UPDATES


-- 1. Delete a specific patient by Patient_ID
DELETE FROM Patients
WHERE Patient_ID = 3;

-- 2. Delete all patients older than 45
DELETE FROM Patients
WHERE Age > 45;

-- 3. Delete all male patients
DELETE FROM Patients
WHERE Gender = 'M';

-- 4. Delete patients whose Address contains 'Main St'
DELETE FROM Patients
WHERE residence LIKE '%Main St%';

-- 5. Delete all records from the table
DELETE FROM Patients;


-- table doctors (2)

CREATE TABLE Doctors (
    Doctor_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Specialty VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(100)
);


INSERT INTO Doctors (Doctor_ID, Name, Specialty, Phone, Email)
VALUES
(1, 'Dr. Alice Brown', 'Cardiology', '1234567890', 'alice.brown@example.com'),
(2, 'Dr. Bob Smith', 'Neurology', '2345678901', 'bob.smith@example.com'),
(3, 'Dr. Charlie Johnson', 'Orthopedics', '3456789012', 'charlie.johnson@example.com'),
(4, 'Dr. Daisy Williams', 'Pediatrics', '4567890123', 'daisy.williams@example.com'),
(5, 'Dr. Evan Davis', 'Dermatology', '5678901234', 'evan.davis@example.com'),
(6, 'Dr. Fiona Wilson', 'Oncology', '6789012345', 'fiona.wilson@example.com'),
(7, 'Dr. George White', 'General Surgery', '7890123456', 'george.white@example.com'),
(8, 'Dr. Hannah Green', 'Psychiatry', '8901234567', 'hannah.green@example.com'),
(9, 'Dr. Ian Adams', 'Gastroenterology', '9012345678', 'ian.adams@example.com'),
(10, 'Dr. Jane Clark', 'Endocrinology', '0123456789', 'jane.clark@example.com');

-- drop your table 
drop table Doctors;


-- use truncate 
truncate table Doctors;


-- Select queries

-- 1. Retrieve all records
SELECT * FROM Doctors;

-- 2. Retrieve only Name and Specialty columns
SELECT Name, Specialty FROM Doctors;

-- 3. Retrieve records where Specialty is 'Cardiology'
SELECT * FROM Doctors
WHERE Specialty = 'Cardiology';

-- 4. Retrieve all doctors whose Phone number starts with '9'
SELECT * FROM Doctors
WHERE Phone LIKE '9%';

-- 5. Retrieve records where Email ends with 'example.com'
SELECT * FROM Doctors
WHERE Email LIKE '%example.com';

-- 6. Retrieve doctors whose Name starts with 'Dr. H'
SELECT * FROM Doctors
WHERE Name LIKE 'Dr. H%';

-- Rename queries 

-- 1. Rename the table Doctors to HospitalDoctors
ALTER TABLE Doctors RENAME TO HospitalDoctors;

-- 2. Rename the column Phone to Contact
ALTER TABLE HospitalDoctors 
RENAME COLUMN Phone TO Contact;

-- 3. Rename the column Specialty to Expertise
ALTER TABLE HospitalDoctors
RENAME COLUMN Specialty TO Expertise;

-- 4. Rename the column Email to EmailAddress
ALTER TABLE HospitalDoctors 
RENAME COLUMN Email TO EmailAddress;

-- 5. Rename the column Name to FullName
ALTER TABLE HospitalDoctors 
RENAME COLUMN Name TO FullName;

-- 6. Rename the table back to Doctors
ALTER TABLE HospitalDoctors
RENAME TO Doctors;

-- Alter queries 

-- 1. Add a new column Address
ALTER TABLE Doctors
ADD COLUMN Address VARCHAR(255);

SELECT * FROM Doctors;

-- 2. Add a new column Years_Experience
ALTER TABLE Doctors
ADD Years_Experience INT;

-- 3. Modify the column Phone to allow only 10 characters
ALTER TABLE Doctors
MODIFY CONTACT VARCHAR(10);

-- 4. Drop the column Address
ALTER TABLE Doctors
DROP COLUMN Address;

-- 5. Add a unique constraint to the Email column
ALTER TABLE Doctors
ADD CONSTRAINT Unique_EmailADDRESS UNIQUE (EmailADDRESS);

-- 6. Add a default value for Years_Experience
ALTER TABLE Doctors
ALTER COLUMN Years_Experience SET DEFAULT 0;


-- Delete queries

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;  -- RE-ENABLE SAFE UPDATES

-- 1. Delete a specific appointment by Appointment_ID
DELETE FROM Appointments
WHERE Appointment_ID = 4;

-- 2. Delete all appointments where the Status is 'Cancelled'
DELETE FROM Appointments
WHERE Status = 'Cancelled';

-- 3. Delete all appointments scheduled on a specific date ('2024-01-06')
DELETE FROM Appointments
WHERE Date = '2024-01-06';

-- 4. Delete all appointments for a specific patient (Patient_ID = 5)
DELETE FROM Appointments
WHERE Patient_ID = 5;

-- 5. Delete all appointments for a specific doctor (Doctor_ID = 8)
DELETE FROM Appointments
WHERE Doctor_ID = 8;

-- 6. Delete all appointments from the table
DELETE FROM Appointments;



-- TABLE (APPOINTMETNT) 3

CREATE TABLE Appointments (
    Appointment_ID INT PRIMARY KEY,
    Patient_ID INT,
    Doctor_ID INT,
    Date DATE,
    Time TIME,
    Status VARCHAR(50),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID),
   FOREIGN KEY (doctor_id) REFERENCES doctors (doctor_id)
);

drop table Appointments;

INSERT INTO Appointments (Appointment_ID, Patient_ID, Doctor_ID, Date, Time, Status)
VALUES
(1, 1, 1, '2024-01-01', '10:00:00', 'Scheduled'),
(2, 2, 3, '2024-01-02', '11:00:00', 'Completed'),
(3, 3, 2, '2024-01-03', '12:30:00', 'Cancelled'),
(4, 4, 4, '2024-01-04', '14:00:00', 'Scheduled'),
(5, 5, 5, '2024-01-05', '09:30:00', 'Scheduled'),
(6, 6, 6, '2024-01-06', '15:00:00', 'Completed'),
(7, 7, 7, '2024-01-07', '16:30:00', 'Scheduled'),
(8, 8, 8, '2024-01-08', '08:00:00', 'Scheduled'),
(9, 9, 9, '2024-01-09', '10:30:00', 'Cancelled'),
(10, 10, 10, '2024-01-10', '13:00:00', 'Completed');



-- drop your table 
drop table Appointments;


-- use truncate 
truncate table Appointments;


-- SELECT QUERIES

-- 1. Retrieve all appointment records
SELECT * FROM Appointments;

-- 2. Retrieve Appointment_ID, Patient_ID, and Status columns
SELECT Appointment_ID,
Patient_ID, Status FROM Appointments;

-- 3. Retrieve appointments where the Status is 'Scheduled'
SELECT * FROM Appointments
WHERE Status = 'Scheduled';

-- 4. Retrieve appointments scheduled after '2024-01-05'
SELECT * FROM Appointments
WHERE Date > '2024-01-05';

-- 5. Retrieve all appointments for a specific doctor (Doctor_ID = 3)
SELECT * FROM Appointments
WHERE Doctor_ID = 3;

-- 6. Retrieve all appointments for a specific patient (Patient_ID = 7)
SELECT * FROM Appointments
WHERE Patient_ID = 7;

-- RENAME QUERIES

-- 1. Rename the table Appointments to MedicalAppointments
ALTER TABLE Appointments 
RENAME TO MedicalAppointments;

-- 2. Rename the column Date to AppointmentDate
ALTER TABLE MedicalAppointments 
RENAME COLUMN Date TO AppointmentDate;

-- 3. Rename the column Time to AppointmentTime
ALTER TABLE MedicalAppointments 
RENAME COLUMN Time TO AppointmentTime;

-- 4. Rename the column Status to AppointmentStatus
ALTER TABLE MedicalAppointments 
RENAME COLUMN Status TO AppointmentStatus;

-- 5. Rename the column Appointment_ID to Appt_ID
ALTER TABLE MedicalAppointments 
RENAME COLUMN Appointment_ID TO Appt_ID;

-- 6. Rename the table back to Appointments
ALTER TABLE MedicalAppointments 
RENAME TO Appointments;


-- ALTER QUERIES

-- 1. Add a new column Notes to store additional information
ALTER TABLE Appointments
ADD Notes VARCHAR(255);

-- 2. Add a column Priority to indicate urgency of the appointment
ALTER TABLE Appointments
ADD Priority VARCHAR(20);

-- 3. Modify the column Status to allow NULL values
ALTER TABLE Appointments
MODIFY Status VARCHAR(50) NULL;

-- 4. Drop the column Notes
ALTER TABLE Appointments
DROP COLUMN Notes;

-- 5. Add a default value 'Normal' to the Priority column
ALTER TABLE Appointments
ALTER COLUMN Priority SET DEFAULT 'Normal';

-- 6. Add a unique constraint to ensure unique Patient_ID and Date combinations
ALTER TABLE Appointments
ADD CONSTRAINT Unique_PatientDate UNIQUE (Patient_ID, Date);


-- DELETE QUERIES

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;  -- RE-ENABLE SAFE UPDATES

-- 1. Delete a specific appointment by Appointment_ID
DELETE FROM Appointments
WHERE Appointment_ID = 4;

-- 2. Delete all appointments where the Status is 'Cancelled'
DELETE FROM Appointments
WHERE Status = 'Cancelled';

-- 3. Delete all appointments scheduled on a specific date ('2024-01-06')
DELETE FROM Appointments
WHERE Date = '2024-01-06';

-- 4. Delete all appointments for a specific patient (Patient_ID = 5)
DELETE FROM Appointments
WHERE Patient_ID = 5;

-- 5. Delete all appointments for a specific doctor (Doctor_ID = 8)
DELETE FROM Appointments
WHERE Doctor_ID = 8;

-- 6. Delete all appointments from the table
DELETE FROM Appointments;

-- TABLE (Medical_History) 4

CREATE TABLE Medical_History (
    History_ID INT PRIMARY KEY,
    Patient_ID INT,
    Diagnosis VARCHAR(255),
    Treatment VARCHAR(255),
    Notes TEXT,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);

INSERT INTO Medical_History (History_ID, Patient_ID, Diagnosis, Treatment, Notes)
VALUES
(1, 1, 'Hypertension', 'Medication', 'Regular monitoring required'),
(2, 2, 'Diabetes', 'Insulin therapy', 'Maintain blood sugar levels'),
(3, 3, 'Fracture', 'Cast application', 'Follow up in 4 weeks'),
(4, 4, 'Asthma', 'Inhaler', 'Avoid allergens'),
(5, 5, 'Skin Rash', 'Topical cream', 'Caused by an allergic reaction'),
(6, 6, 'Migraine', 'Painkillers', 'Triggers include stress and lack of sleep'),
(7, 7, 'Anemia', 'Iron supplements', 'Monitor hemoglobin levels'),
(8, 8, 'Arthritis', 'Physical therapy', 'Maintain joint mobility'),
(9, 9, 'Allergy', 'Antihistamines', 'Seasonal allergy symptoms'),
(10, 10, 'High Cholesterol', 'Statins', 'Dietary changes recommended');


-- drop your table 
drop table Medical_History ;


-- use truncate 
truncate table Medical_History ;

-- SELECT QUERIES

-- 1. Retrieve all records
SELECT * FROM Medical_History;

-- 2. Retrieve Diagnosis and Treatment columns
SELECT Diagnosis, Treatment FROM Medical_History;

-- 3. Retrieve records where the Diagnosis is 'Diabetes'
SELECT * FROM Medical_History
WHERE Diagnosis = 'Diabetes';

-- 4. Retrieve medical histories for a specific Patient_ID (e.g., Patient_ID = 6)
SELECT * FROM Medical_History
WHERE Patient_ID = 6;

-- 5. Retrieve histories with a Treatment involving 'therapy'
SELECT * FROM Medical_History
WHERE Treatment LIKE '%therapy%';

-- 6. Retrieve all records with Notes containing 'monitoring'
SELECT * FROM Medical_History
WHERE Notes LIKE '%monitoring%';


-- RENAME QUERIES

-- 1. Rename the table Medical_History to Patient_History
ALTER TABLE Medical_History RENAME TO Patient_History;

-- 2. Rename the column Diagnosis to MedicalCondition
ALTER TABLE Patient_History RENAME COLUMN Diagnosis TO MedicalCondition;

-- 3. Rename the column Treatment to TreatmentPlan
ALTER TABLE Patient_History RENAME COLUMN Treatment TO TreatmentPlan;

-- 4. Rename the column Notes to AdditionalNotes
ALTER TABLE Patient_History RENAME COLUMN Notes TO AdditionalNotes;

-- 5. Rename the column History_ID to Record_ID
ALTER TABLE Patient_History RENAME COLUMN History_ID TO Record_ID;

-- 6. Rename the table back to Medical_History
ALTER TABLE Patient_History RENAME TO Medical_History;


-- ALTER QUERIES

-- 1. Add a column Last_Updated to store the date of the last update
ALTER TABLE Medical_History
ADD Last_Updated DATE;

-- 2. Add a column Severity_Level to indicate the severity of the condition
ALTER TABLE Medical_History
ADD Severity_Level VARCHAR(50);

-- 3. Modify the Notes column to allow NULL values
ALTER TABLE Medical_History
MODIFY Notes TEXT NULL;

-- 4. Drop the column Last_Updated
ALTER TABLE Medical_History
DROP COLUMN Last_Updated;

-- 5. Add a default value 'Moderate' to the Severity_Level column
ALTER TABLE Medical_History
ALTER COLUMN Severity_Level SET DEFAULT 'Moderate';

-- 6. Add a unique constraint to ensure unique Patient_ID and Diagnosis combinations
ALTER TABLE Medical_History
ADD CONSTRAINT Unique_PatientDiagnosis UNIQUE (Patient_ID, Diagnosis);


-- DELETE QUERIES

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;  -- RE-ENABLE SAFE UPDATES

-- 1. Delete a specific medical history by History_ID
DELETE FROM Medical_History
WHERE History_ID = 3;

-- 2. Delete all records where the Diagnosis is 'Allergy'
DELETE FROM Medical_History
WHERE Diagnosis = 'Allergy';

-- 3. Delete all records with Treatment involving 'cream'
DELETE FROM Medical_History
WHERE Treatment LIKE '%cream%';

-- 4. Delete all medical histories for a specific Patient_ID (e.g., Patient_ID = 8)
DELETE FROM Medical_History
WHERE Patient_ID = 8;

-- 5. Delete all records where Notes contain 'stress'
DELETE FROM Medical_History
WHERE Notes LIKE '%stress%';

-- 6. Delete all records from the table
DELETE FROM Medical_History;

-- TABLE (Medications) 5

CREATE TABLE Medications (
    Medication_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Type VARCHAR(50),
    Price DECIMAL(10, 2),
    Description TEXT
);

INSERT INTO Medications (Medication_ID, Name, Type, Price, Description)
VALUES
(1, 'Paracetamol', 'Tablet', 50.00, 'Pain reliever and fever reducer'),
(2, 'Amoxicillin', 'Capsule', 120.00, 'Antibiotic for bacterial infections'),
(3, 'Cetirizine', 'Tablet', 30.00, 'Antihistamine for allergy relief'),
(4, 'Ibuprofen', 'Tablet', 80.00, 'Pain reliever and anti-inflammatory'),
(5, 'Metformin', 'Tablet', 150.00, 'Used to treat type 2 diabetes'),
(6, 'Cough Syrup', 'Liquid', 60.00, 'Relieves cough and throat irritation'),
(7, 'Insulin', 'Injection', 250.00, 'Hormone therapy for diabetes'),
(8, 'Omeprazole', 'Capsule', 90.00, 'Treats acid reflux and heartburn'),
(9, 'Saline Spray', 'Spray', 40.00, 'Clears nasal congestion'),
(10, 'Vitamin D', 'Supplement', 70.00, 'Supports bone and immune health');


-- drop your table 
drop table Medications ;


-- use truncate 
truncate table Medications ;


-- SELECT QUERIES

-- 1. Retrieve all records
SELECT * FROM Medications;

-- 2. Retrieve Name and Price of all medications
SELECT Name, Price FROM Medications;

-- 3. Retrieve medications where the Type is 'Tablet'
SELECT * FROM Medications
WHERE Type = 'Tablet';

-- 4. Retrieve medications with a Price greater than 100
SELECT * FROM Medications
WHERE Price > 100;

-- 5. Retrieve medications with Description containing 'diabetes'
SELECT * FROM Medications
WHERE Description LIKE '%diabetes%';

-- 6. Retrieve all medications with a Name starting with 'C'
SELECT * FROM Medications
WHERE Name LIKE 'C%';


-- RENAME QUERIES

-- 1. Rename the table Medications to DrugInventory
ALTER TABLE Medications RENAME TO DrugInventory;

-- 2. Rename the column Name to MedicationName
ALTER TABLE DrugInventory RENAME COLUMN Name TO MedicationName;

-- 3. Rename the column Type to MedicationType
ALTER TABLE DrugInventory RENAME COLUMN Type TO MedicationType;

-- 4. Rename the column Price to Cost
ALTER TABLE DrugInventory RENAME COLUMN Price TO Cost;

-- 5. Rename the column Description to Details
ALTER TABLE DrugInventory RENAME COLUMN Description TO Details;

-- 6. Rename the table back to Medications
ALTER TABLE DrugInventory RENAME TO Medications;


-- ALTER QUERIES

-- 1. Add a column Stock to store the number of units available
ALTER TABLE Medications
ADD Stock INT;

-- 2. Add a column Manufacturer to store the name of the manufacturer
ALTER TABLE Medications
ADD Manufacturer VARCHAR(100);

-- 3. Modify the column Price to allow NULL values
ALTER TABLE Medications
MODIFY Price DECIMAL(10, 2) NULL;

-- 4. Drop the column Stock
ALTER TABLE Medications
DROP COLUMN Stock;

-- 5. Add a default value 'Unknown' to the Manufacturer column
ALTER TABLE Medications
ALTER COLUMN Manufacturer SET DEFAULT 'Unknown';

-- 6. Add a unique constraint to ensure unique Medication Names
ALTER TABLE Medications
ADD CONSTRAINT Unique_MedicationName UNIQUE (Name);


-- DELETE QUERIES

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;  -- RE-ENABLE SAFE UPDATES

-- 1. Delete a specific medication by Medication_ID
DELETE FROM Medications
WHERE Medication_ID = 3;

-- 2. Delete all medications where the Type is 'Capsule'
DELETE FROM Medications
WHERE Type = 'Capsule';

-- 3. Delete all medications with a Price below 50
DELETE FROM Medications
WHERE Price < 50;

-- 4. Delete all medications with Description containing 'fever'
DELETE FROM Medications
WHERE Description LIKE '%fever%';

-- 5. Delete all medications where the Name starts with 'S'
DELETE FROM Medications
WHERE Name LIKE 'S%';

-- 6. Delete all medications from the table
DELETE FROM Medications;


-- TABLE (Prescriptions) 6

CREATE TABLE Prescriptions (
    Prescription_ID INT PRIMARY KEY,
    Patient_ID INT,
    Medication_ID INT,
    Date_Provided DATE,
    Dosage VARCHAR(100),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID),
    FOREIGN KEY (Medication_ID) REFERENCES Medications(Medication_ID)
);

INSERT INTO Prescriptions (Prescription_ID, Patient_ID, Medication_ID, Date_Provided, Dosage)
VALUES
(1, 1, 1, '2024-01-01', '500 mg twice daily'),
(2, 2, 2, '2024-01-02', '250 mg thrice daily'),
(3, 3, 3, '2024-01-03', '10 mg once daily'),
(4, 4, 4, '2024-01-04', '400 mg as needed'),
(5, 5, 5, '2024-01-05', '500 mg before meals'),
(6, 6, 6, '2024-01-06', '2 teaspoons twice daily'),
(7, 7, 7, '2024-01-07', '10 units before breakfast'),
(8, 8, 8, '2024-01-08', '20 mg once daily'),
(9, 9, 9, '2024-01-09', '2 sprays per nostril twice daily'),
(10, 10, 10, '2024-01-10', '1000 IU daily');


-- drop your table 
drop table Prescriptions;


-- use truncate 
truncate table Prescriptions;

-- SELECT QUERIES

-- 1. Retrieve all records
SELECT * FROM Prescriptions;

-- 2. Retrieve Prescription_ID, Patient_ID, and Dosage details
SELECT Prescription_ID, Patient_ID, Dosage FROM Prescriptions;

-- 3. Retrieve prescriptions where the Dosage includes 'twice daily'
SELECT * FROM Prescriptions
WHERE Dosage LIKE '%twice daily%';

-- 4. Retrieve prescriptions provided after '2024-01-05'
SELECT * FROM Prescriptions
WHERE Date_Provided > '2024-01-05';

-- 5. Retrieve all prescriptions for a specific patient (e.g., Patient_ID = 3)
SELECT * FROM Prescriptions
WHERE Patient_ID = 3;

-- 6. Retrieve all prescriptions for a specific medication (e.g., Medication_ID = 4)
SELECT * FROM Prescriptions
WHERE Medication_ID = 4;


-- RENAME QUERIES

-- 1. Rename the table Prescriptions to PatientPrescriptions
ALTER TABLE Prescriptions RENAME TO PatientPrescriptions;

-- 2. Rename the column Prescription_ID to Rx_ID
ALTER TABLE PatientPrescriptions RENAME COLUMN Prescription_ID TO Rx_ID;

-- 3. Rename the column Date_Provided to PrescriptionDate
ALTER TABLE PatientPrescriptions RENAME COLUMN Date_Provided TO PrescriptionDate;

-- 4. Rename the column Dosage to MedicationDosage
ALTER TABLE PatientPrescriptions RENAME COLUMN Dosage TO MedicationDosage;

-- 5. Rename the column Medication_ID to Drug_ID
ALTER TABLE PatientPrescriptions RENAME COLUMN Medication_ID TO Drug_ID;

-- 6. Rename the table back to Prescriptions
ALTER TABLE PatientPrescriptions RENAME TO Prescriptions;


-- ALTER QUERIES

-- 1. Add a column Notes to store additional instructions
ALTER TABLE Prescriptions
ADD Notes TEXT;

-- 2. Add a column Frequency to indicate the frequency of the medication
ALTER TABLE Prescriptions
ADD Frequency VARCHAR(50);

-- 3. Modify the Dosage column to allow NULL values
ALTER TABLE Prescriptions
MODIFY Dosage VARCHAR(100) NULL;

-- 4. Drop the column Notes
ALTER TABLE Prescriptions
DROP COLUMN Notes;

-- 5. Add a default value 'Once daily' to the Frequency column
ALTER TABLE Prescriptions
ALTER COLUMN Frequency SET DEFAULT 'Once daily';

-- 6. Add a unique constraint to ensure unique Patient_ID and Medication_ID combinations
ALTER TABLE Prescriptions
ADD CONSTRAINT Unique_PatientMedication UNIQUE (Patient_ID, Medication_ID);


-- DELETE QUERIES

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;  -- RE-ENABLE SAFE UPDATES

-- 1. Delete a specific prescription by Prescription_ID
DELETE FROM Prescriptions
WHERE Prescription_ID = 5;

-- 2. Delete all prescriptions for a specific Patient_ID (e.g., Patient_ID = 7)
DELETE FROM Prescriptions
WHERE Patient_ID = 7;

-- 3. Delete all prescriptions for a specific Medication_ID (e.g., Medication_ID = 9)
DELETE FROM Prescriptions
WHERE Medication_ID = 9;

-- 4. Delete all prescriptions where Dosage includes '10 mg'
DELETE FROM Prescriptions
WHERE Dosage LIKE '%10 mg%';

-- 5. Delete all prescriptions issued before '2024-01-05'
DELETE FROM Prescriptions
WHERE Date_Provided < '2024-01-05';

-- 6. Delete all records from the table
DELETE FROM Prescriptions;

-- TABLE (Bills)7

CREATE TABLE Bills (
    Bill_ID INT PRIMARY KEY,
    Patient_ID INT,
    Total_Amount DECIMAL(10, 2),
    Payment_Status VARCHAR(50),
    Date DATE,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);

INSERT INTO Bills (Bill_ID, Patient_ID, Total_Amount, Payment_Status, Date)
VALUES
(1, 1, 1500.00, 'Paid', '2024-01-01'),
(2, 2, 2500.00, 'Unpaid', '2024-01-02'),
(3, 3, 3000.00, 'Paid', '2024-01-03'),
(4, 4, 1200.00, 'Unpaid', '2024-01-04'),
(5, 5, 1800.00, 'Paid', '2024-01-05'),
(6, 6, 2200.00, 'Unpaid', '2024-01-06'),
(7, 7, 3500.00, 'Paid', '2024-01-07'),
(8, 8, 4000.00, 'Paid', '2024-01-08'),
(9, 9, 2800.00, 'Unpaid', '2024-01-09'),
(10, 10, 3200.00, 'Paid', '2024-01-10');



-- drop your table 
drop table Bills;


-- use truncate 
truncate table Bills;


-- SELECT QUERIES

-- 1. Retrieve all records
SELECT * FROM Bills;

-- 2. Retrieve Bill_ID and Total_Amount of all bills
SELECT Bill_ID, Total_Amount FROM Bills;

-- 3. Retrieve bills where the Payment_Status is 'Paid'
SELECT * FROM Bills
WHERE Payment_Status = 'Paid';

-- 4. Retrieve bills with Total_Amount greater than 2000
SELECT * FROM Bills
WHERE Total_Amount > 2000;

-- 5. Retrieve all bills for a specific patient (e.g., Patient_ID = 5)
SELECT * FROM Bills
WHERE Patient_ID = 5;

-- 6. Retrieve all bills issued on or after '2024-01-05'
SELECT * FROM Bills
WHERE Date >= '2024-01-05';


-- RENAME QUERIES

-- 1. Rename the table Bills to PatientBills
ALTER TABLE Bills RENAME TO PatientBills;

-- 2. Rename the column Bill_ID to Invoice_ID
ALTER TABLE PatientBills RENAME COLUMN Bill_ID TO Invoice_ID;

-- 3. Rename the column Total_Amount to AmountDue
ALTER TABLE PatientBills RENAME COLUMN Total_Amount TO AmountDue;

-- 4. Rename the column Payment_Status to PaymentState
ALTER TABLE PatientBills RENAME COLUMN Payment_Status TO PaymentState;

-- 5. Rename the column Date to BillingDate
ALTER TABLE PatientBills RENAME COLUMN Date TO BillingDate;

-- 6. Rename the table back to Bills
ALTER TABLE PatientBills RENAME TO Bills;


-- ALTER QUERIES

-- 1. Add a column Payment_Method to store the payment method
ALTER TABLE Bills
ADD Payment_Method VARCHAR(50);

-- 2. Add a column Late_Fees to store additional fees
ALTER TABLE Bills
ADD Late_Fees DECIMAL(10, 2);

-- 3. Modify the column Payment_Status to allow NULL values
ALTER TABLE Bills
MODIFY Payment_Status VARCHAR(50) NULL;

-- 4. Drop the column Late_Fees
ALTER TABLE Bills
DROP COLUMN Late_Fees;

-- 5. Add a default value 'Not Specified' to the Payment_Method column
ALTER TABLE Bills
ALTER COLUMN Payment_Method SET DEFAULT 'Not Specified';

-- 6. Add a unique constraint to ensure unique Patient_ID and Date combinations
ALTER TABLE Bills
ADD CONSTRAINT Unique_PatientDate UNIQUE (Patient_ID, Date);


-- DELETE QUERIES

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;  -- RE-ENABLE SAFE UPDATES

-- 1. Delete a specific bill by Bill_ID
DELETE FROM Bills
WHERE Bill_ID = 3;

-- 2. Delete all bills for a specific Patient_ID (e.g., Patient_ID = 7)
DELETE FROM Bills
WHERE Patient_ID = 7;

-- 3. Delete all bills where Payment_Status is 'Unpaid'
DELETE FROM Bills
WHERE Payment_Status = 'Unpaid';

-- 4. Delete all bills with Total_Amount less than 2000
DELETE FROM Bills
WHERE Total_Amount < 2000;

-- 5. Delete all bills issued before '2024-01-05'
DELETE FROM Bills
WHERE Date < '2024-01-05';

-- 6. Delete all records from the table
DELETE FROM Bills;

-- TABLE (Staff) 8

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    Contact VARCHAR(15),
    Shift VARCHAR(50)
);


INSERT INTO Staff (Staff_ID, Name, Role, Contact, Shift)
VALUES
(1, 'John Doe', 'Nurse', '1234567890', 'Day'),
(2, 'Jane Smith', 'Doctor', '1234567891', 'Night'),
(3, 'Emily Davis', 'Receptionist', '1234567892', 'Day'),
(4, 'Michael Brown', 'Surgeon', '1234567893', 'Night'),
(5, 'Sarah Wilson', 'Technician', '1234567894', 'Day'),
(6, 'David Lee', 'Pharmacist', '1234567895', 'Night'),
(7, 'Laura Jones', 'Nurse', '1234567896', 'Day'),
(8, 'Kevin White', 'Doctor', '1234567897', 'Night'),
(9, 'Sophia Miller', 'Receptionist', '1234567898', 'Day'),
(10, 'Daniel Garcia', 'Technician', '1234567899', 'Night');


-- drop your table 
drop table Staff ;


-- use truncate 
truncate table Staff;

-- SELECT QUERIES

-- 1. Retrieve all records
SELECT * FROM Staff;

-- 2. Retrieve Staff_ID and Name of all staff
SELECT Staff_ID, Name FROM Staff;

-- 3. Retrieve staff who work the Day shift
SELECT * FROM Staff
WHERE Shift = 'Day';

-- 4. Retrieve all staff with the Role of 'Doctor'
SELECT * FROM Staff
WHERE Role = 'Doctor';

-- 5. Retrieve all staff where Contact starts with '1234'
SELECT * FROM Staff
WHERE Contact LIKE '1234%';

-- 6. Retrieve staff names and roles for those working the Night shift
SELECT Name, Role FROM Staff
WHERE Shift = 'Night';


-- RENAME QUERIES

-- 1. Rename the table Staff to HospitalStaff
ALTER TABLE Staff RENAME TO HospitalStaff;

-- 2. Rename the column Staff_ID to Employee_ID
ALTER TABLE HospitalStaff rename
 COLUMN Staff_ID TO Employee_ID;
 

-- 3. Rename the column Name to FullName
ALTER TABLE HospitalStaff RENAME COLUMN Name TO FullName;

-- 4. Rename the column Role to JobTitle
ALTER TABLE HospitalStaff RENAME COLUMN Role TO JobTitle;

-- 5. Rename the column Contact to PhoneNumber
ALTER TABLE HospitalStaff RENAME COLUMN Contact TO PhoneNumber;

-- 6. Rename the table back to Staff
ALTER TABLE HospitalStaff RENAME TO Staff;


-- ALTER QUERIES

-- 1. Add a column Salary to store staff salary
ALTER TABLE Staff
ADD Salary DECIMAL(10, 2);

-- 2. Add a column Department to indicate the department of the staff
ALTER TABLE Staff
ADD Department VARCHAR(50);

-- 3. Modify the column Contact to allow NULL values
ALTER TABLE Staff
MODIFY Contact VARCHAR(15) NULL;

-- 4. Drop the column Salary
ALTER TABLE Staff
DROP COLUMN Salary;

-- 5. Add a default value 'General' to the Department column
ALTER TABLE Staff
ALTER COLUMN Department SET DEFAULT 'General';

-- 6. Add a unique constraint to ensure unique Name and Shift combinations
ALTER TABLE Staff
ADD CONSTRAINT Unique_NameShift UNIQUE (Name, Shift);


-- DELETE QUERIES

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;  -- RE-ENABLE SAFE UPDATES

-- 1. Delete a specific staff member by Staff_ID
DELETE FROM Staff
WHERE Staff_ID = 3;

-- 2. Delete all staff members with the Role of 'Nurse'
DELETE FROM Staff
WHERE Role = 'Nurse';

-- 3. Delete all staff working the Night shift
DELETE FROM Staff
WHERE Shift = 'Night';

-- 4. Delete all staff where Contact starts with '1234567895'
DELETE FROM Staff
WHERE Contact = '1234567895';

-- 5. Delete all staff where the Role is 'Technician'
DELETE FROM Staff
WHERE Role = 'Technician';

-- 6. Delete all records from the table
DELETE FROM Staff;

-- TABLE (Departments)9

CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100),
    Phone VARCHAR(15)
);

INSERT INTO Departments (Department_ID, Name, Location, Phone)
VALUES
(1, 'Cardiology', 'Building A', '1234567890'),
(2, 'Neurology', 'Building B', '1234567891'),
(3, 'Pediatrics', 'Building C', '1234567892'),
(4, 'Oncology', 'Building D', '1234567893'),
(5, 'Radiology', 'Building E', '1234567894'),
(6, 'Pharmacy', 'Building F', '1234567895'),
(7, 'Orthopedics', 'Building G', '1234567896'),
(8, 'Emergency', 'Building H', '1234567897'),
(9, 'Dermatology', 'Building I', '1234567898'),
(10, 'Gynecology', 'Building J', '1234567899');

-- drop your table 
drop table Departments ;


-- use truncate 
truncate table Departments;

-- SELECT QUERIES

-- 1. Retrieve all records
SELECT * FROM Departments;

-- 2. Retrieve Department_ID and Name of all departments
SELECT Department_ID, Name FROM Departments;

-- 3. Retrieve departments located in 'Building A'
SELECT * FROM Departments
WHERE Location = 'Building A';

-- 4. Retrieve departments where the Phone number starts with '1234'
SELECT * FROM Departments
WHERE Phone LIKE '1234%';

-- 5. Retrieve the names and phone numbers of all departments
SELECT Name, Phone FROM Departments;

-- 6. Retrieve all departments with Department_ID greater than 5
SELECT * FROM Departments
WHERE Department_ID > 5;


-- RENAME QUERIES

-- 1. Rename the table Departments to HospitalDepartments
ALTER TABLE Departments RENAME TO HospitalDepartments;

-- 2. Rename the column Department_ID to Dept_ID
ALTER TABLE HospitalDepartments RENAME COLUMN Department_ID TO Dept_ID;

-- 3. Rename the column Name to DeptName
ALTER TABLE HospitalDepartments RENAME COLUMN Name TO DeptName;

-- 4. Rename the column Location to DeptLocation
ALTER TABLE HospitalDepartments RENAME COLUMN Location TO DeptLocation;

-- 5. Rename the column Phone to ContactNumber
ALTER TABLE HospitalDepartments 
RENAME COLUMN Phone TO ContactNumber ;

-- 6. Rename the table back to Departments
ALTER TABLE HospitalDepartments RENAME TO Departments;


-- ALTER QUERIES

-- 1. Add a column Head to store the head of the department
ALTER TABLE Departments
ADD Head VARCHAR(100);

-- 2. Add a column Established_Year to indicate when the department was established
ALTER TABLE Departments
ADD Established_Year INT;

-- 3. Modify the column Phone to allow NULL values
ALTER TABLE Departments
MODIFY Phone VARCHAR(15) NULL;

-- 4. Drop the column Established_Year
ALTER TABLE Departments
DROP COLUMN Established_Year;

-- 5. Add a default value 'Not Assigned' to the Head column
ALTER TABLE Departments
ALTER COLUMN Head SET DEFAULT 'Not Assigned';

-- 6. Add a unique constraint to ensure unique Name and Location combinations
ALTER TABLE Departments
ADD CONSTRAINT Unique_NameLocation UNIQUE (Name, Location);


-- DELETE QUERIES

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;  -- RE-ENABLE SAFE UPDATES

-- 1. Delete a specific department by Department_ID
DELETE FROM Departments
WHERE Department_ID = 4;

-- 2. Delete all departments located in 'Building F'
DELETE FROM Departments
WHERE Location = 'Building F';

-- 3. Delete all departments where the Name is 'Pharmacy'
DELETE FROM Departments
WHERE Name = 'Pharmacy';

-- 4. Delete all departments where the Phone number is '1234567897'
DELETE FROM Departments
WHERE Phone = '1234567897';

-- 5. Delete all departments with Department_ID less than 3
DELETE FROM Departments
WHERE Department_ID < 3;

-- 6. Delete all records from the table
DELETE FROM Departments;



-- TABLE (Facilities)10

CREATE TABLE Facilities (
    Facility_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Type VARCHAR(50),
    Cost DECIMAL(10, 2),
    Availability_Status VARCHAR(50)
);

INSERT INTO Facilities (Facility_ID, Name, Type, Cost, Availability_Status)
VALUES
(1, 'MRI Scanner', 'Imaging', 500.00, 'Available'),
(2, 'X-Ray Machine', 'Imaging', 200.00, 'Unavailable'),
(3, 'CT Scanner', 'Imaging', 600.00, 'Available'),
(4, 'Operation Theatre', 'Surgical', 1000.00, 'Available'),
(5, 'ICU Bed', 'Critical Care', 300.00, 'Unavailable'),
(6, 'Ultrasound Machine', 'Imaging', 150.00, 'Available'),
(7, 'Dialysis Machine', 'Renal Care', 400.00, 'Unavailable'),
(8, 'Blood Bank', 'Laboratory', 100.00, 'Available'),
(9, 'Pharmacy Counter', 'Service', 50.00, 'Available'),
(10, 'Ambulance Service', 'Transport', 250.00, 'Unavailable');


-- drop your table 
drop table Facilities ;


-- use truncate 
truncate table Facilities;


-- SELECT QUERIES

-- 1. Retrieve all records
SELECT * FROM Facilities;

-- 2. Retrieve Facility_ID and Name of all facilities
SELECT Facility_ID, Name FROM Facilities;

-- 3. Retrieve facilities that are currently 'Available'
SELECT * FROM Facilities
WHERE Availability_Status = 'Available';

-- 4. Retrieve all facilities with Cost greater than 300
SELECT * FROM Facilities
WHERE Cost > 300;

-- 5. Retrieve names and types of facilities that are 'Unavailable'
SELECT Name, Type FROM Facilities
WHERE Availability_Status = 'Unavailable';

-- 6. Retrieve all facilities where the Type is 'Imaging'
SELECT * FROM Facilities
WHERE Type = 'Imaging';


-- RENAME QUERIES

-- 1. Rename the table Facilities to HospitalFacilities
ALTER TABLE Facilities RENAME TO HospitalFacilities;

-- 2. Rename the column Facility_ID to Service_ID
ALTER TABLE HospitalFacilities RENAME COLUMN Facility_ID TO Service_ID;

-- 3. Rename the column Name to FacilityName
ALTER TABLE HospitalFacilities RENAME COLUMN Name TO FacilityName;

-- 4. Rename the column Type to Category
ALTER TABLE HospitalFacilities RENAME COLUMN Type TO Category;

-- 5. Rename the column Cost to Price
ALTER TABLE HospitalFacilities RENAME COLUMN Cost TO Price;

-- 6. Rename the table back to Facilities
ALTER TABLE HospitalFacilities RENAME TO Facilities;


-- ALTER QUERIES

-- 1. Add a column Capacity to indicate the number of units available
ALTER TABLE Facilities
ADD Capacity INT;

-- 2. Add a column Maintenance_Date to track the last maintenance date
ALTER TABLE Facilities
ADD Maintenance_Date DATE;

-- 3. Modify the column Cost to increase its precision
ALTER TABLE Facilities
MODIFY Cost DECIMAL(12, 2);

-- 4. Drop the column Maintenance_Date
ALTER TABLE Facilities
DROP COLUMN Maintenance_Date;

-- 5. Add a default value 'Unknown' to the Availability_Status column
ALTER TABLE Facilities
ALTER COLUMN Availability_Status SET DEFAULT 'Unknown';

-- 6. Add a unique constraint to ensure unique Name and Type combinations
ALTER TABLE Facilities
ADD CONSTRAINT Unique_NameType UNIQUE (Name, Type);


-- DELETE QUERIES

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;  -- RE-ENABLE SAFE UPDATES

-- 1. Delete a specific facility by Facility_ID
DELETE FROM Facilities
WHERE Facility_ID = 5;

-- 2. Delete all facilities with the Type 'Service'
DELETE FROM Facilities
WHERE Type = 'Service';

-- 3. Delete all facilities where the Availability_Status is 'Unavailable'
DELETE FROM Facilities
WHERE Availability_Status = 'Unavailable';

-- 4. Delete all facilities with Cost less than 200
DELETE FROM Facilities
WHERE Cost < 200;

-- 5. Delete all facilities where the Name is 'Ultrasound Machine'
DELETE FROM Facilities
WHERE Name = 'Ultrasound Machine';

-- 6. Delete all records from the table
DELETE FROM Facilities;




























































































































































































































































