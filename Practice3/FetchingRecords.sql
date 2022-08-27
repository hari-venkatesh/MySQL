SELECT student.roll_number
      ,student.name
      ,student.gender
      ,student.dob
      ,student.email
      ,student.phone
      ,student.address
      ,college.name college_name
      ,department.dept_name department_name
      ,employee.name hod_name
  FROM exercise3.student
  LEFT JOIN exercise3.college
    ON college.id = student.college_id
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
  LEFT JOIN exercise3.university
    ON college.univ_code = university.univ_code 
 WHERE college.city IN ('chennai', 'coimbatore') 
   AND university.university_name = ('anna university') LIMIT 20;
 