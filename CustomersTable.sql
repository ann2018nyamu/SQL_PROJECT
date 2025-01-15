SELECT * 
FROM customers_database.customers_table;

SELECT *
FROM customers_database.products_table;

SELECT * 
FROM customers_database.orders_table;


 #SELECT STATEMENT
SELECT 
firstname, 
Lastname,
City
FROM Customers_table;

#USE OF WHERE
-- LIKE--
-- % --
SELECT *
FROM customers_table
WHERE firstName LIKE 'MA%';

SELECT FirstName,
LastName,
Email
FROM customers_table
WHERE FirstName LIKE '%e%';

SELECT *
FROM Customers_Table
WHERE Email LIKE '%@ya%';

SELECT *
FROM Orders_Table
WHERE OrderID < 4
AND ProductID <5;

SELECT *
FROM Employees_Table
WHERE Salary >= 1200;

SELECT *
FROM Orders_Table
WHERE OrderDate < '2025-04-02';

SELECT *
FROM Customers_Table
Where Email LIKE '%gmail.com';

SELECT Stock,
ProductName
FROM Products_Table
WHERE Stock > 20
ORDER BY Stock DESC, ProductName;


SELECT *
FROM Product_Table
WHERE Category = 'Electronics';

SELECT COUNT(*) AS TotalCustomers
FROM Customers_Table;

SELECT COUNT(*)
FROM Customers_Table;

SELECT COUNT(CustomerID)
FROM Customers_Table
WHERE CustomerID >= 5;


SELECT COUNT(Email)
FROM Customers_table
WHERE Email LIKE '%er%_';

-- USE COUNT() with GROUP BY--
-- We use COUNT() function and the GROUP BY clause, 
-- to return the number of records for each category in the 
-- Products table --

SELECT COUNT(*) AS TotalCustomers, Email
 FROM Customers_Table
 GROUP BY Email;
 
SELECT Email,FirstName
FROM Customers_Table;	
 
 
 
 
 
 
SELECT COUNT(*) AS TotalCustomers, FirstName, LastName, Email
From Customers_Table
GROUP BY FirstName, LastName, Email;

SELECT COUNT(*) AS Products,  Category
From Products_Table
GROUP BY Category, ProductID, Price;

SELECT COUNT(Category) As Products, Category
From Products_Table
GROUP BY Category, ProductID;



select *
from Customers_Table;

Select COUNT(*) Customers
From Customers_Table;

SELECT AVG(Price)
FROM Products_Table
WHERE Category = 'Electronics';

SELECT AVG(Price) AS 'Average price'
FROM Products_Table;

SELECT ProductName
FROM Products_Table
WHERE price < (SELECT AVG(Price) 
FROM Products_Table);

SELECT ProductName, Price
FROM Products_Table
WHERE Price > (SELECT AVG(Price) FROM Products_Table);

-- Use AVG() with GROUP BY
SELECT AVG(Price) As AveragePrice, ProductID
FROM Products_Table
GROUP BY ProductID;


SELECT AVG(Salary) 
FROM Employees_Table;


SELECT FirstName, Position, Salary
FROM Employees_Table
WHERE Salary <= (SELECT AVG(Salary)
FROM Employees_Table);

SELECT AVG(Salary) AS AverageSalary, FirstName, Salary
FROM Employees_Table
GROUP BY FirstName, Salary;

SELECT EmployeeID, FirstName, Position, Salary
From Employees_Table
WHERE EmployeeID > 5 
AND Salary > 5000
GROUP BY EmployeeID, FirstName, Salary, Position
ORDER BY COUNT(EmployeeID) ASC, FirstName
AND Salary DESC;

SELECT SUM(Salary)
FROM Employees_Table;

SELECT SUM(Salary)FirstName, Position, Salary
FROM Employees_Table
WHERE FirstName LIKE '%ce%' 
AND SALARY > 5000
GROUP BY FirstName, Position, Salary;


SELECT SUM(Salary)
FROM Employees_Table
WHERE EmployeeID > 10;

-- LIKE OPERATOR --
-- % Represents Zero, one, or Multiple characters.
-- The underscore sign _ represents one, single character.

SELECT FirstName, LastName, Position
FROM Employees_Table
WHERE Position LIKE '%age%'
AND FirstName LIKE '%ce%'
;

SELECT *
FROM Employees_Table
WHERE FirstName LIKE 'A%E';

-- WILDCARD CHARACTERS --
-- % Represents zero or more characters --
-- _ Represents a single character
-- [] Represents any single character within the brackets *
-- ^ Represents any character not in the brackets *
-- - Represents any single character within the specified range *
-- {} Represents any escaped character **
-- ! Represents any character not in the brackets
-- # Represents any single numeric character

SELECT *
FROM Employees_Table 
WHERE FirstName LIKE 'Al__e';

SELECT *
FROM Employees_Table
WHERE FirstName LIKE '[dcb]%';


































