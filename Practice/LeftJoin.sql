
SELECT e1.emp_id
      ,e1.first_name
      ,e2.first_name lead_name
  FROM exercise1.employee e1
  LEFT JOIN exercise1.employee e2 
    ON e1.emp_id=e2.department_id  ; 