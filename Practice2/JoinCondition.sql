
SELECT first_name
	,last_nmae
    ,dob
    ,prod_name
FROM exercise2.customer
CROSS JOIN exercise2.product
WHERE customer.prod_id = product.prod_id;

------------------------------------------------------------------------

SELECT first_name
	,last_nmae
    ,dob
    ,prod_name
FROM exercise2.customer
INNER JOIN exercise2.product
WHERE customer.prod_id = product.prod_id;

-------------------------------------------------------------------------

SELECT first_name
	,last_nmae
    ,dob
    ,prod_name
FROM exercise2.customer
LEFT JOIN exercise2.product
ON customer.prod_id = product.prod_id;

--------------------------------------------------------------------------

SELECT first_name
	,last_nmae
    ,dob
    ,prod_name
FROM exercise2.customer
RIGHT JOIN exercise2.product
ON customer.prod_id = product.prod_id;