
SELECT semester_fee.semester 
      ,SUM(IF(semester_fee.paid_status = 'paid', semester_fee.amount, 0)) Collected_amount 
      ,SUM(IF(semester_fee.paid_status = 'unpaid', semester_fee.amount, 0)) Uncollected_amount
      ,college.name college_name
      ,university.university_name
  FROM exercise3.semester_fee
  LEFT JOIN exercise3.student 
    ON semester_fee.stud_id = student.id
  LEFT JOIN exercise3.college 
    ON college.id = student.college_id 
  LEFT JOIN exercise3.university
    ON university.univ_code = college.univ_code
 WHERE semester_fee.paid_year IN ('2019', '2018','2020')
 GROUP BY college.name;
 
---------------------------------------------------------------------------------
 
 SELECT SUM(IF(semester_fee.paid_status = 'paid', semester_fee.amount, 0)) Collected_amount
      ,university.university_name
  FROM exercise3.semester_fee
  LEFT JOIN exercise3.student 
    ON semester_fee.stud_id = student.id
  LEFT JOIN exercise3.college 
    ON college.id = student.college_id 
  LEFT JOIN exercise3.university
    ON university.univ_code = college.univ_code
 WHERE semester_fee.paid_year IN ('2019', '2018','2020')
 GROUP BY university.university_name;
 
----------------------------------------------------------------------------------------------------------

-- Whenever You find the word "EACH" in question,
                           -- It's Time for GROUP BY Clause. 




