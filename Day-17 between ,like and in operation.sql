SELECT * FROM emplyee;

--1
SELECT first_name , last_name, salary
FROM emplyee
WHERE salary BETWEEN 40000 AND 60000;

--2
SELECT first_name , last_name, salary
FROM emplyee
WHERE email LIKE '%@gmail.com';


SELECT first_name 
FROM emplyee
WHERE first_name LIKE '%a';

--3
SELECT first_name , last_name, department
FROM emplyee
WHERE department IN ('Finance','Marketing');

