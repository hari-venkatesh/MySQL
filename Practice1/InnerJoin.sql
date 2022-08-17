
SELECT first_name, department_name
FROM exercise1.employee, exercise1.department
WHERE employee.department_id = department.id;