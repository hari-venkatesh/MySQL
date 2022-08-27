
SELECT student.roll_number
      ,student.name
      ,student.gender
      ,student.dob
      ,student.email
      ,student.phone
      ,student.address
      ,college.name college_name
      ,department.dept_name department_name
  FROM exercise3.student
  LEFT JOIN exercise3.college
    ON student.college_id = college.id
  LEFT JOIN exercise3.department 
    ON dept_code IN 
       (SELECT college_department.udept_code 
          FROM exercise3.college_department
         WHERE student.cdept_id = college_department.cdept_id) 
  LEFT JOIN exercise3.university
    ON college.univ_code = university.univ_code 
 WHERE academic_year = YEAR(NOW()) - 3 
   AND college.city IN ('chennai', 'coimbatore') 
   AND university.university_name = ('anna university');