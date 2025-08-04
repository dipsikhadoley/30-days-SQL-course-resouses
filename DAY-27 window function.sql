SELECT * FROM products;

--ASSIGN A unique row number to each product within the same category
SELECT product_name, category,price,
   ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM products;


SELECT product_name, category,price,
   DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM products;

SELECT product_name, category,price,
   RANK() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM products;

SELECT product_name, category,price,
   SUM(price) OVER( ORDER BY price DESC) AS row_num
FROM products;