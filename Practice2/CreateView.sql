
CREATE VIEW exercise2.customer_product AS 
       SELECT customer.first_name
			, customer.email_id
			, customer.no_of_purchase
            , product.prod_name
			, product.prod_price
         FROM exercise2.customer
         JOIN exercise2.product
           ON customer.prod_id = product.prod_id ;
           
------------------------------------------------------------------------
           
SELECT *
FROM exercise2.customer_product

