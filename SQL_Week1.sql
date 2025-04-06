CREATE DATABASE MYSQL_Practice;
Use MYSQL_Practice;

-- CREATING A TABLE--
CREATE TABLE USER_TABLE(
ID INT,
Name VARCHAR(50),
Email VARCHAR(50),
Age INT,
Date DATE);

-- BASIC QUERIES--
-- Retrieve all user records
Select * from USER_TABLE;

-- Select only the name and email
SELECT Name, Email from USER_TABLE; 

-- User with ID 50
SELECT *  FROM user_table
WHERE ID = 50;

SELECT Name from USER_TABLE
WHERE DATE > '2022-01-01';

-- Filtering and Conditions --
-- Retrieving all users who are older than 40--

SELECT * from user_table
WHERE Age > 40;

-- users whose emails contain user10--
SELECT * from user_table
WHERE Email like '%user10%';

-- users created in 2021--
SELECT * from user_table
WHERE Date = 2021;

SELECT * FROM user_table WHERE DATE(created_at) = 2021;


DESC user_table;
Show Tables;

-- Users between the ages of 25 and 35
SELECT * from user_table
WHERE Age BETWEEN 24 and 36;

-- AGGREGATION & SORTING
-- Counting total number of users in the database.
SELECT COUNT(*) from user_table;
SELECT COUNT(NAME) from user_table;

-- Finding the average Age of all users
SELECT AVG(Age) from user_table;

-- identify the youngest and oldest users
SELECT MAX(AGE) AS OLDEST from user_table;
SELECT MIN(AGE) AS YOUNGEST from user_table;

-- Selecting the five most recently created users.
SELECT * from user_table
ORDER BY Date DESC
LIMIT 5; 

-- Selecting the five oldest created users.
SELECT * from user_table
ORDER BY Date ASC
LIMIT 10;

-- DATA MANIPULATION
-- UPDATE table_name
-- SET column1 = value1, column2 = value2
-- WHERE condition;--

-- Upating email 
UPDATE user_table
SET email = 'newemail@example.com'
WHERE ID = 75
LIMIT 1;

-- Increasing the age of all users by 1 year 
UPDATE user_table
SET AGE = AGE + 1
LIMIT 1;

-- DELETE SYNTAX
-- DELETE FROM table_name WHERE condition;
DELETE FROM user_table
WHERE AGE < 20
LIMIT 1;

-- Adding a new column
ALTER TABLE user_table ADD COLUMN Phone_Number VARCHAR(40);

-- ADVANCED QUERIES
-- Finding the top 5 oldest users in the database.
SELECT * from user_table
ORDER BY Date DESC
LIMIT 5;

SELECT * from user_table
ORDER BY AGE DESC
LIMIT 5;

SELECT * from user_table
ORDER BY DATE ASC
LIMIT 5;

SELECT * from user_table
ORDER BY AGE ASC
LIMIT 5;

-- Retrieve Users whose name starts with User_5
SELECT * FROM user_table
WHERE Email like 'User_5%';

-- How many users were created each Year
SELECT YEAR(created_at) AS year,
COUNT(*) AS total_users
FROM users GROUP BY YEAR(created_at);

-- Get the total number of users in each age group
SELECT age, COUNT(*) AS total_users 
FROM user_table 
GROUP BY age ORDER BY age;






