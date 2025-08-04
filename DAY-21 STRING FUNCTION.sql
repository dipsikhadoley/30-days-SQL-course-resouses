SELECT * FROM products;

--get all the categories in uppercase
SELECT UPPER(category) AS Category_capital
FROM products;

--get all the categories in lowercase
SELECT LOWER(category) AS Category_capital
FROM products

--join product_name and category text with hypen
SELECT CONCAT(product_name,'-',category) AS Product_details
FROM products;

--extract the first five characters from products_name
SELECT SUBSTRING(product_name,1,5) AS shorts_name
FROM products;

--count length
SELECT product_name, LENGTH(product_name) AS count_of_char
FROM products;
--remove leading and trailing spaces from string
SELECT  LENGTH(TRIM('  Monitor  ')) AS TRIM_TEXT;

--REPLACE THE WORLD "PHONE" WITH 'DEVICE' IN PRODUCT NAMES
SELECT REPLACE(product_name,'phone','device') AS updated
FROM products;

--get the 3 first character from category
SELECT LEFT(category,3) AS Category_capital
FROM products;
--get the 3 first character from category
SELECT RIGHT(category,3) AS Category_capital
FROM products;
