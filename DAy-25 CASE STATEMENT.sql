SELECT * FROM PRODUCTS;
/* 1.CASE FUNCTION - CATEGORIZING BASE CONDITIONS
WE WILL CATEGORIZE PRODUCTS INTO PRICE RANGES;

 EXPENSIVE IF THE PRICE IS GREATER THAN OR EQUAL TO 50,000
Moderate if the price is between 10,000 and 49999.
Affordable if the price is less than 10,000.
*/

SELECT product_name,price,
   CASE 
      WHEN price>=50000 THEN 'Expensive'
	  WHEN price>=10000 AND price<=49999 THEN 'Moderate'
	  ELSE 'Affordable'
	END AS price_category
FROM products;