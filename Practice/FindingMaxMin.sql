


SELECT department_id, MAX(annual_salary) max_sal, MIN(annual_salary) min_sal
FROM employee
GROUP BY department_id;


