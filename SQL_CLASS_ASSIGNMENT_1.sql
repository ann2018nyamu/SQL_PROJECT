-- DATABASE CREATION --
CREATE DATABASE CompanyDB;

-- Switch to the Database--
USE CompanyDB;


-- TABLE CREATION WITH CONSTRAINTS --
-- CREATE TABLE DEPARTMENTS
CREATE TABLE Department(
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

DROP TABLE Department;

CREATE TABLE Departments(
DepartmentID INT PRIMARY KEY,                      --Primary Key
DepartmentName VARCHAR(100) NOT NULL UNIQUE        --Must be Unique and not null
);

-- RETRIEVING ALL DATA FROM THE Departments TABLE.
SELECT * from Departments;

-- CREATE TABLE Departments --
CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,       -- Primary Key to ensure uniqueness
FirstName VARCHAR(50) Not NULL,   -- First name must not be NULL
LastName VARCHAR(50) Not Null,    -- Last Name must not be NULL
Email VARCHAR(50) UNIQUE,         -- Email must be unique
Salary DECIMAL(10,2) CHECK (Salary > 0),     -- Use CHECK Constraint and salary must be greater than 0
DepartmentID INT,                 -- FOREIGN KEY reference
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)  -- Establishes relationship with Departments Table
);

-- RETRIEVING ALL DATA FROM THE Employees TABLE.
SELECT * From Employees;

-- INSERTING RECORDS TO Departments TABLE
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(1, 'Research & Development' ),
(2, 'EBU' ),
(3, 'Microsoft' ),
(4, 'InfoSec' ),
(5, 'Projects' ),
(6, 'Customer Support' ),
(7, 'Human Resource' ),
(8, 'Payments' ),
(9, 'Business Development' ),
(10, 'IT' );

SELECT * FROM Departments;

-- INSERTING RECORDS TO Employees TABLE
INSERT INTO Employees(EmployeeID, FirstName, LastName, Email, Salary, DepartmentID)
VALUES
(100, 'Ann', 'Nyamu', 'nyamu201@gmail.com', 2000, 1),
(101, 'Felix', 'Nduta', 'felix21@gmail.com', 6000, 1),
(102, 'Christine', 'Kathambi', 'christine2019@gmail.com', 9000, 1),
(103, 'Michael', 'Mwangi', 'mike43@gmail.com', 7000, 1),
(104, 'Dan', 'Musee', 'danmusee@gmail.com', 3000, 1),
(105, 'Valentine', 'Mwende', 'val2030@gmail.com', 3000, 1),
(106, 'Joshua', 'Odhiambo', 'josh190@gmail.com', 10000, 1),
(107, 'Clifford', 'Otieno', 'cliff@gmail.com', 12000, 1),
(108, 'Ruth', 'Chebet', 'ruth37@gmail.com', 5000, 1),
(109, 'Rhoda', 'Mwangi', 'rmwangi@gmail.com', 9000, 1),
(110, 'Benson', 'Maingi', 'ben4@gmail.com', 7000, 1);


SELECT * FROM Employees;

-- TEST CONSTRAINTS--
-- Attempt to insert an employee with a duplicate EmployeeID. What error do you get?--
-- THE ERROR; Violation of PRIMARY KEY constraint 'PK__Employee__7AD04FF10474076E'.
-- Cannot insert duplicate key in object 'dbo.Employees'. The duplicate key value is (100).
-- Violation of UNIQUE KEY constraint 'UQ__Employee__A9D10534279006AA'. Cannot insert duplicate key in object 'dbo.Employees'. The duplicate key value is (nyamu201@gmail.com).






