 

CREATE DATABASE HospitalDB;
USE HospitalDB;

CREATE TABLE Patient(
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Disease VARCHAR(50),
    BillAmount DECIMAL(10,2)
);

INSERT INTO Patient VALUES
(101,'Ramesh','Fever',2500.00),
(102,'Sita','Diabetes',4800.00),
(103,'Arjun','Fracture',7200.00),
(104,'Priya','Asthma',3600.00),
(105,'Kavya','Migraine',5500.00);

DELIMITER $$

CREATE PROCEDURE GetPatientDetails(IN pid INT)
BEGIN
    SELECT *
    FROM Patient
    WHERE PatientID = pid;
END $$

DELIMITER ;

CALL GetPatientDetails(103);