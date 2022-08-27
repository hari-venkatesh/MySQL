
SELECT employee.id
      ,employee.name
      ,employee.dob
      ,employee.email
      ,employee.phone
      ,college.name college_name
      ,college.city college_location
      ,department.dept_name department_name
      ,designation.rank
  FROM exercise3.employee
  LEFT JOIN exercise3.college 
    ON employee.college_id = college.id
      
  LEFT JOIN exercise3.university
    ON college.univ_code = university.univ_code 
  LEFT JOIN exercise3.designation
    ON employee.desig_id = designation.id
  LEFT JOIN exercise3.department 
    ON dept_code IN 
       (SELECT college_department.udept_code 
          FROM exercise3.college_department
         WHERE employee.cdept_id = college_department.cdept_id) 
        
 WHERE college.city IN ('chennai', 'coimbatore') 
   AND university.university_name = ('anna university') 
 ORDER BY college.name, designation.rank; 