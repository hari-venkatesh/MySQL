
SELECT college.code
      ,college.name college_name
      ,university.university_name
      ,college.city
      ,college.state
      ,college.year_opened
      ,department.dept_name
      ,employee.name hod
  FROM exercise3.college
  LEFT JOIN exercise3.university
    ON university.univ_code = college.univ_code
  LEFT JOIN exercise3.department
    ON department.dept_code IN 
       (SELECT college_department.udept_code 
          FROM exercise3.college_department
         WHERE college_department.college_id = college.id)
  LEFT JOIN exercise3.employee
    ON employee.college_id = college.id
       AND employee.desig_id IN 
       (SELECT designation.id
          FROM exercise3.designation
         WHERE designation.name = 'hod')
 WHERE department.dept_name IN ('CSE', 'IT');