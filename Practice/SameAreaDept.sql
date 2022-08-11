
SELECT e1.emp_id
      ,e1.first_name,e1.annual_salary
      ,e1.department_id
  FROM exercise1.employee e1
 WHERE e1.emp_id NOT IN
       (SELECT e2.emp_id 
          FROM exercise1.employee e2 
         GROUP BY e2.department_id, e2.annual_salary
        HAVING COUNT(e2.emp_id) = 1);
