SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
employee_id,
birth_date,
age,
(age + 10) * 10
from parks_and_recreation.employee_demographics;
# PEMDAS

SELECT distinct first_name, gender
FROM parks_and_recreation.employee_demographics;




