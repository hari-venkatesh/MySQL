
SELECT student.id
      ,student.roll_number
      ,student.name
      ,student.gender
      ,student.dob
      ,student.email
      ,student.phone
      ,student.address
      ,college.name college_name
      ,university.university_name
      ,semester_result.grade
      ,semester_result.credits
      ,semester_result.semester
      ,CASE WHEN grade='a+' THEN 10
            WHEN grade='a'  THEN 9
            WHEN grade='b+' THEN 8
            WHEN grade='b'  THEN 7
            WHEN grade='c'  THEN 6
            WHEN grade='f'  THEN 0
       END gpa
  FROM exercise3.student
  LEFT JOIN exercise3.college 
    ON student.college_id = college.id
  LEFT JOIN exercise3.university 
    ON college.univ_code = university.univ_code
  LEFT JOIN exercise3.semester_result
    ON student.id = semester_result.stud_id 
 ORDER BY college.name, semester_result.semester
 LIMIT 10 OFFSET 0 ;