DROP DATABASE IF EXISTS Customers_Database;
CREATE DATABASE Customers_Database;
USE Customers_Database;


CREATE TABLE Customers_Table(
CustomerID int Primary Key,
FirstName varchar (50),
LastName varchar (50),
Email varchar (100),
City varchar (50),
Country varchar (50)
);

CREATE TABLE Products_Table (
ProductID INT PRIMARY KEY,
ProductName VARCHAR (50),
Category VARCHAR (50),
Price INT,
Stock INT NOT NULL
);

CREATE TABLE Orders_Table (
OrderID INT PRIMARY KEY,
CustomerID INT,
ProductID INT,
Quantity INT,
OrderDate DATE
);

CREATE TABLE Employees_Table(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR (50),
LastName VARCHAR (50),
Position VARCHAR (50),
Salary INT
);

INSERT INTO Customers_Table(CustomerID, FirstName, LastName, Email, City, Country) 
VALUES
(1, 'Jane', 'Doe', 'jane.doe@gmail.com', 'Nairobi', 'Kenya'),
(2, 'John', 'Smith', 'john.smith@yahoo.com', 'Kampala', 'Uganda'),
(3, 'Mary', 'Johnson', 'mary.johnson@gmail.com', 'DareSalaam', 'Tanzania'),
(4, 'Peter', 'Brown', 'peter.brown@gmail.com', 'Nairobi', 'Kenya');

INSERT INTO Customers_Table(CustomerID, FirstName, LastName, Email, City, Country) 
VALUES
(5, 'Peter', 'Brown', 'peter1.brown@gmail.com', 'Nairobi', 'Kenya'),
(6, 'Peter', 'Brown', 'peter2.brown@gmail.com', 'Nairobi', 'Kenya'),
(7, 'Peter', 'Brown', 'peter.3brown@gmail.com', 'Nairobi', 'Kenya'),
(8, 'Peter', 'Brown', 'peter3.brown@gmail.com', 'Nairobi', 'Kenya'),
(9, 'Peter', 'Brown', 'peter.4brown@gmail.com', 'Nairobi', 'Kenya'),
(10, 'Peter', 'Brown', 'peter.5brown@gmail.com', 'Nairobi', 'Kenya'),
(11, 'Peter', 'Brown', 'peter.6brown@gmail.com', 'Nairobi', 'Kenya'),
(412, 'Peter', 'Brown', 'peter.7brown@gmail.com', 'Nairobi', 'Kenya'),
(411, 'Peter', 'Brown', 'peter.8brown@gmail.com', 'Nairobi', 'Kenya'),
(476, 'Peter', 'Brown', 'peter.9brown@gmail.com', 'Nairobi', 'Kenya');

SELECT COUNT(*) As TotalCustomers
FROM Customers_Table;


INSERT INTO Products_Table (ProductID, ProductName, Category, Price, Stock)
VALUES
(1, 'Smartphone', 'Electronics', 300, 50),
(2, 'Laptop', 'Electronics', 800, 20),
(3, 'Earpods', 'Accessories', 60, 70),
(4, 'Office Chair', 'Furniture', 120, 15);

UPDATE Products_Table
SET Stock = 70, 
Price = 60,
ProductName = 'Earpods'
WHERE ProductID = 3;

INSERT INTO Orders_Table (OrderID, CustomerID, ProductID, Quantity, OrderDate)
VALUES
(1, 1, 1, 1, '2025-03-01'),
(2, 2, 2, 1, '2024-01-03'),
(3, 3, 3, 2, '2025-04-02'),
(4, 1, 3, 1, '2024-05-09');


INSERT INTO Employees_Table(EmployeeID, FirstName, LastName, Position, Salary)
VALUES
(1, 'Alice', 'Williams', 'Manager', 2000),
(2, 'Bob', 'Johnson', 'Sales Assistant', 1500),
(3, 'Carol', 'Brown', 'Cashier', '1000'),
(4, 'David', 'Smith', 'Inventory Officer', 1200)
;

INSERT INTO Employees_Table(EmployeeID, FirstName, LastName, Position, Salary)
VALUES
(5, 'Aliee', 'Williams', 'senior Manager', 2044),
(6, 'Alicde', 'Williams', 'Project Manager', 5000),
(17, 'Alicre', 'Williams', 'Product Manager', 7000),
(8, 'Alicer', 'Williams', 'Business Manager', 8000),
(9, 'Aliceu', 'Williams', 'SocialMedia Manager', 21000),
(10, 'Alicei', 'Williams', 'Education Manager', 12000),
(11, 'Aliceo', 'Williams', 'Quality Manager', 25000),
(12, 'Aliceu', 'Williams', 'Quality Engineer Manager', 2900),
(13, 'Alice', 'Williams', 'HR Manager', 2600);
