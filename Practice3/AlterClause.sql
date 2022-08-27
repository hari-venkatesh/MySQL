
INSERT INTO exercise3.semester_fees (cdept_id, stud_id, amount, paid_status)
	VALUES (23, 1233, 40000, 'Paid');
    

INSERT INTO exercise3.semester_fees (cdept_id, stud_id, amount, paid_year)
	VALUES (33, 2233, 40000, '2022');
    

INSERT INTO exercise3.semester_fees (cdept_id, stud_id, paid_status)
	VALUES (22, 1223, 'Paid');

----------------------------------------------------------------------------

ALTER TABLE exercise3.semester_fees
	MODIFY semester TINYINT NULL ;
    
ALTER TABLE exercise3.semester_fees
 ALTER COLUMN amount 
   SET DEFAULT 80000;

 ALTER TABLE exercise3.semester_fees
 ALTER COLUMN paid_status 
   SET DEFAULT 'unpaid';

 ALTER TABLE exercise3.semester_fees
MODIFY cdept_id INT NOT NULL;

 ALTER TABLE exercise3.semester_fees
MODIFY stud_id INT NOT NULL;
