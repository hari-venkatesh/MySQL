 
 ALTER TABLE exercise2.customer 
   ADD COLUMN email           VARCHAR(30)
  ,ADD COLUMN no_of_purchase  INT(2)
  ,ADD COLUMN dob             VARCHAR(10)
  ,ADD COLUMN age       	  INT(2)
  ,ADD COLUMN purchase_id     INT(2);
  
-- modify datatype of dob in customer
 ALTER TABLE exercise2.customer
MODIFY dob DATE; 

-- drop a column from customer
 ALTER TABLE exercise2.customer
  DROP COLUMN purchase_id;

-- rename column in customer
 ALTER TABLE exercise2.customer
RENAME COLUMN email 
    TO email_id; 