

SELECT e1.first_name 'Employee Name', e2.first_name 'Manager Name'
FROM exercise1.employee e1, exercise1.employee e2
WHERE e1.emp_id = e2.department_id;