SELECT * FROM emplyee;

--AND
SELECT * FROM emplyee
WHERE age>=40 AND SALARY>=50000;

--OR
SELECT * FROM emplyee
WHERE age>=45 OR salary>=85000;

--Not
SELECT * FROM emplyee
WHERE NOT (department='IT') ;