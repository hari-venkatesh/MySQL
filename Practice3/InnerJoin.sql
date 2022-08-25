
SELECT student.roll_number
      ,student.name
      ,student.dob
      ,student.gender
      ,student.email
      ,student.phone
      ,student.address
      ,student.academic_year
      ,CASE WHEN grade='a+' THEN 10
            WHEN grade='a'  THEN 9
            WHEN grade='b+' THEN 8
            WHEN grade='b'  THEN 7
            WHEN grade='c+' THEN 6
            WHEN grade='c'  THEN 5
            WHEN grade='f'  THEN 4
            WHEN grade='u'  THEN 0
        END gpa
  FROM exercise3.student
 INNER JOIN exercise3.semester_result
    ON semester_result.stud_id = student.id
 WHERE semester_result.semester = 8
   AND grade IN ('a+', 'a');
   
-----------------------------------------------------------------------------
   
   SELECT student.roll_number
      ,student.name
      ,student.dob
      ,student.gender
      ,student.email
      ,student.phone
      ,student.address
      ,student.academic_year 
      ,CASE WHEN grade='a+' THEN 10
            WHEN grade='a'  THEN 9
            WHEN grade='b+' THEN 8
            WHEN grade='b'  THEN 7
            WHEN grade='c+' THEN 6
            WHEN grade='c'  THEN 5
            WHEN grade='f'  THEN 4
            WHEN grade='u'  THEN 0
       END gpa
  FROM exercise3.student
 INNER JOIN exercise3.semester_result
    ON semester_result.stud_id = student.id
 WHERE semester_result.semester = 6
   AND semester_result.grade NOT IN ('c', 'f', 'u');
   