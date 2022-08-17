
SELECT first_name
FROM exercise1.employee
WHERE date_of_joining = (SELECT MAX(date_of_joining)
FROM exercise1.employee);