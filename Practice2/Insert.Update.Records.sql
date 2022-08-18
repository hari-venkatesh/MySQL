
INSERT INTO exercise2.customer (cus_id, first_name, last_nmae, prod_id, email_id, no_of_purchase, dob, age)
VALUES (1234, 'Laddu', 'Venkatesh', 1357, 'laddu@gmai..com', 4, '2000-04-13', 22);

INSERT INTO exercise2.customer (cus_id, first_name, last_nmae, prod_id, email_id, no_of_purchase, dob, age)
VALUES (1235, 'Hari', 'Venkatesh', 1357, 'hariladdu@gmai..com', 04, '2000-04-04', 22);

INSERT INTO exercise2.customer (cus_id, first_name, last_nmae, prod_id, email_id, no_of_purchase, dob, age)
VALUES (1236, 'HariLaddu', 'Venkatesh', 2357, 'laddu123@gmai..com', 8, '2000-04-04', 22);

INSERT INTO exercise2.customer (cus_id, first_name, last_nmae, prod_id, email_id, no_of_purchase, dob, age)
VALUES (1237, 'AH', 'Venkatesh', 3357, 'hladdu@gmai..com', 9, '2001-04-04', 21);

INSERT INTO exercise2.customer (cus_id, first_name, last_nmae, prod_id, email_id, no_of_purchase, dob, age)
VALUES (1238, 'Hammu', 'Venkatesh', 1357, 'haladdu@gmai..com', 8, '2000-05-05', 21);

INSERT INTO exercise2.customer (cus_id, first_name, last_nmae, prod_id, email_id, no_of_purchase, dob, age)
VALUES (1239, 'Haritha', 'Venkatesh', 1357, 'haritha@gmai..com', 04, '2001-04-12', 22);

INSERT INTO exercise2.customer (cus_id, first_name, last_nmae, prod_id, email_id, no_of_purchase, dob, age)
VALUES (1231, 'Laddumaa', 'Venkatesh', 4357, 'laddumaa@gmai..com', 4, '2000-04-13', 21);

---------------------------------------------------------------------------

INSERT INTO exercise2.product (prod_id, prod_name, prod_price)
VALUES (1357, 'Trimmer', 5000);

INSERT INTO exercise2.product (prod_id, prod_name, prod_price)
VALUES (2357, 'Shirt', 500);

INSERT INTO exercise2.product (prod_id, prod_name, prod_price)
VALUES (3357, 'Ball', 2000);

INSERT INTO exercise2.product (prod_id, prod_name, prod_price)
VALUES (4357, 'Car', 500000);

INSERT INTO exercise2.product (prod_id, prod_name, prod_price)
VALUES (5357, 'Choco', 1);

----------------------------------------------------------------------------

UPDATE exercise2.customer
	SET age = 10;
		-- This will set all the Records Value to 0
        
UPDATE exercise2.customer
	Set age = 20
WHERE prod_id = 2357;
		-- This will Do Desired Job.