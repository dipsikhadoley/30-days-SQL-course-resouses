SELECT * FROM emplyee;

--Find emplyee where the email column is NULL
SELECT first_name,last_name,email
FROM emplyee
WHERE email IS NULL;

--LIST EMPLYEE SORTED BY SALARY IN DESCENDING ORDER
SELECT first_name,last_name,salary
FROM emplyee
ORDER BY salary DESC;

--RETRIEVE THE TOP 5 HIGHEST-PAID EMPLYEE
SELECT first_name,last_name,salary
FROM emplyee
ORDER BY salary DESC
LIMIT 5;

--RETRIVE A LIST OF UNIQUE DEPARTMENT
SELECT DISTINCT department
FROM emplyee;