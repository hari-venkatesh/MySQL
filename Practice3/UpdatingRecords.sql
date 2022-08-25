
UPDATE exercise3.semester_fee sf
  LEFT JOIN exercise3.student s
    ON sf.stud_id = s.id
   SET sf.paid_year = YEAR(NOW()), 
       sf.paid_status = 'paid'
 WHERE s.roll_number = '18cs005';
 
 -----------------------------------------------------------------------

UPDATE exercise3.semester_fee sf
  LEFT JOIN exercise3.student s
    ON sf.stud_id = s.id
   SET sf.paid_year = YEAR(NOW()), 
       sf.paid_status = 'paid'
 WHERE s.roll_number IN ('18cs041', '18cs004', '18cs31');