SELECT * FROM PRODUCTS;
--6 DATE() -GET SPECIFIC DATE PART
--EXTRCAT DAY OF THE WEEK FROMADDED_DATE
SELECT product_name,added_date,
     DATE_PART('dow',added_date) AS DAY_OF_WEEK
FROM products;

SELECT product_name,added_date,
     DATE_PART('year',added_date) AS DAY_OF_WEEK
FROM products;

--7.DATE_TRUNC() - TRUNCATE DATE TO PRECISION
--TRUNCATE ADDED_DATE  TO THE START OF THE MONTH

SELECT product_name, added_date,
DATE_TRUNC('month',added_date) AS Month_start,
DATE_part('isodow',added_date) AS Month_start
FROM products;

--8.INTERVAL-add or subtract time intervals
--Add 6 months to the added_date.
SELECT product_name,added_date,
     added_date+ INTERVAL '6 days' AS new_day
FROM products;

--9.CURRENT_TIME()-GET CURRENT TIME
--RETRIVE ONLY THE CURRENT TIME;
SELECT CURRENT_TIME AS current_time;

--10.TO_DATE-CONVERT STRING TO DATE
--CONVERT A STRING TO A DATE FORMATE.
SELECT TO_DATE('23-4-2023','DD-MM-YYYY') AS converted_date;

