 Function (Hospital Example)

CREATE DATABASE HospitalDB;
USE HospitalDB;

CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    BillAmount DECIMAL(10,2)
);

INSERT INTO Patient VALUES
(101,'Ramesh',2500.00),
(102,'Sita',4800.00),
(103,'Arjun',7200.00),
(104,'Priya',3600.00),
(105,'Kavya',5500.00);

DELIMITER $$

CREATE FUNCTION GetBill(pid INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE bill DECIMAL(10,2);

    SELECT BillAmount
    INTO bill
    FROM Patient
    WHERE PatientID = pid;

    RETURN bill;
END $$

DELIMITER ;

SELECT GetBill(103) AS Patient_Bill;