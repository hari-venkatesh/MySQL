
USE  exercise1;

UPDATE employee 
SET annual_salary = annual_salary + (annual_salary * 10/100)
WHERE annual_salary > 0;


