SELECT * FROM PRODUCTS;


/* 1. CASE Function – Categorizing Based on Conditions
 We will categorize products into price ranges:
In stock if quantity is 10 or more
Limited stock if quantity is between 5 or 9
Out of stock soon if quantity is less than 5.

*/

SELECT product_name , quantity,
   CASE 
       WHEN quantity>=10  THEN 'in stock'
	   WHEN quantity BETWEEN 6 AND 9 THEN 'Limited stock'
	   ELSE 'Out of stock'
	END AS quantity_measure
FROM products;

/* 3. CASE with LIKE Operator – Category Classification
Check if the category name contains "Electronics" or "Furniture" using LIKE.
*/

SELECT product_name,category,
   CASE
      WHEN category LIKE 'Electronics' THEN 'electronic item'
	  WHEN category LIKE 'Accessories' THEN 'Accessories item'
	  ELSE 'Furniture item'
   END AS category_status
FROM products;

   