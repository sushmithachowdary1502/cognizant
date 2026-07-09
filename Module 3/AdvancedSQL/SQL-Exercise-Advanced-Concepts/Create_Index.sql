

CREATE DATABASE HospitalDB;
USE HospitalDB;

CREATE TABLE Patient(
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Disease VARCHAR(50),
    DoctorName VARCHAR(50),
    BillAmount DECIMAL(10,2)
);

INSERT INTO Patient VALUES
(101,'Ramesh','Fever','Dr. Kumar',2500.00),
(102,'Sita','Diabetes','Dr. Mehta',4800.00),
(103,'Arjun','Fracture','Dr. Rao',7200.00),
(104,'Priya','Asthma','Dr. Kumar',3600.00),
(105,'Kavya','Migraine','Dr. Mehta',5500.00);

-- Create an index on DoctorName
CREATE INDEX idx_DoctorName
ON Patient(DoctorName);

-- Check the data
SELECT * FROM Patient;

-- Search using the indexed column
SELECT * FROM Patient
WHERE DoctorName = 'Dr. Kumar';