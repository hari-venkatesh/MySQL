
SELECT first_name
	,no_of_purchase
    ,dob
FROM exercise2.customer
WHERE prod_id = ( SELECT prod_id
				  FROM exercise2.product
                  WHERE prod_name = 'Trimmer') ;