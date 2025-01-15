-- WHERE Clause

SELECT *
FROM employee_salary
WHERE salary <=50000
;


-- LIKE STATEMENT --
-- % and _
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__%'
;

SELECT * 
FROM employee_demographics
WHERE gender = 'Female'
AND age > 30
;

-- AND OR NOT -- Logical Operators


