 SELECT * FROM PRODUCTS;

 --1 NOW()-GET CURRENT DATE AND TIME
 SELECT NOW() AS CURRENT_DATETIME;

--2. CURRENT_DATE -GET CURRENT DATE
SELECT CURRENT_DATE AS today_DATE;

SELECT added_date,current_date,(CURRENT_DATE - added_date) AS Days_diffrence
FROM products;

--3. EXTRACT()-Extract parts of a date
--extract the year, month, and day from the added_date column,
SELECT product_name,
     EXTRACT(YEAR FROM added_date) AS year_added,
	 EXTRACT(MONTH FROM added_date) AS month_added,
	 EXTRACT(DAY FROM added_date) AS day_added
FROM products;

--4 AGE() -calculate age btwn dates
--Calculate the time diff btwn added_date and today's date
SELECT product_name,
     AGE(CURRENT_DATE, added_date) AS AGE_added
	 
FROM products;

--5 TO_CHAR() - Formate dates as strings
--formate added_date in a custom formate (DD-Mon-yyyy)
SELECT product_name,
     TO_CHAR(added_date, 'DD-MON-YYYY') AS FORMATE_DATE
	 
FROM products;

