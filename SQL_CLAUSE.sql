CREATE DATABASE _5pm_Class;
USE _5pm_Class;

CREATE TABLE Registration_form(
_Name varchar(50),
Age int check(age>=18),
Country varchar(50) default ('Kenya'));

insert into Registration_form 
VALUES
('John Paul', 20, 'Sudan'),
('Peter Mercy', 19,'');

SELECT * FROM Registration_form;

insert into Registration_form 
VALUES
('John Paul', 20, 'Sudan'),
('Peter Mercy', 19,'default');


insert into Registration_form values
('John Paul', 35, 'Sudan'),
('Peter Mercy', 54, 'default'),
('Mathews Luke', 45, 'default'),
('John Paul', 33, 'Uganda'),
('Peter Mercy', 19, 'Zambia'),
('Mathews Luke', 46, 'Zambia');

SELECT _Name,Country, Age from Registration_form
WHERE Country ='Kenya'
order by Age Desc;

SELECT Country, AVG(Age) AS Average_Age from Registration_form
group by Country
Having AVG(Age)>32;
