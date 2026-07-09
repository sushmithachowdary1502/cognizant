

CREATE DATABASE HospitalDB;
GO

USE HospitalDB;
GO

CREATE TABLE Patients
(
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Disease VARCHAR(50),
    BillAmount DECIMAL(10,2)
);

INSERT INTO Patients VALUES
(101,'Ramesh','Fever',2500),
(102,'Sita','Diabetes',4800),
(103,'Arjun','Fracture',7200),
(104,'Priya','Asthma',3600),
(105,'Kavya','Migraine',5500);
GO

CREATE FUNCTION GetPatientsByDisease
(
    @Disease VARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM Patients
    WHERE Disease = @Disease
);
GO

SELECT *
FROM GetPatientsByDisease('Fever');