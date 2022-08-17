CREATE DATABASE exercise2;


CREATE TABLE exercise2.customer (
	cus_id INT(10)
	,first_name VARCHAR(20) NOT NULL
	,last_nmae VARCHAR(20)
	,prod_id INT(10)
	,CONSTRAINT prod_id_check
		CHECK(LENGTH(prod_id)=4)
	,CONSTRAINT prime_c
		PRIMARY KEY(cus_id)
	,CONSTRAINT forn_k
		FOREIGN KEY(prod_id)
			REFERENCES exercise2.product(prod_id)
			ON DELETE CASCADE
);



CREATE TABLE exercise2.product (
	prod_id INT(10)
	,prod_name VARCHAR(20) NOT NULL
	,prod_price INT(20)
	,CONSTRAINT prime_p
	PRIMARY KEY (prod_id)
);


