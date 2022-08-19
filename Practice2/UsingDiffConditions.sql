
SELECT first_name
	,no_of_purchase
FROM exercise2.customer
ORDER BY no_of_purchase DESC LIMIT 3 ;  

-------------------------------------------------------------------------

SELECT first_name
	,dob
FROM exercise2.customer
WHERE first_name LIKE '_a%' 
	AND first_name LIKE '___m%' ;
    
-------------------------------------------------------------------------

