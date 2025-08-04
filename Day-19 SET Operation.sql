DROP TABLE IF EXISTS students_2023;
CREATE TABLE students_2023(
student_id INT PRIMARY KEY,
student_name VARCHAR(100),
course VARCHAR(50)
);

INSERT INTO students_2023(student_id,student_name,course) VALUES
(1,'Aarav Sharma','CSE'),
(2,'Rima','Mechanical'),
(3,'Dipsikha','PIE'),
(4,'Rahul' ,'Civil');
SELECT * FROM students_2023

DROP TABLE IF EXISTS students_2024;
CREATE TABLE students_2024(
student_id INT PRIMARY KEY,
student_name VARCHAR(100),
course VARCHAR(50)
);

INSERT INTO students_2024(student_id,student_name,course) VALUES
(5,'Aarr Sarma','ECE'),
(6,'Anaya','MCA'),
(7,'Dipu','EE'),
(8,'Dipsikha','PIE'),
(9,'Rahul' ,'Civil');
SELECT * FROM students_2024

--UNION -- Combine result ,remove duplicate
SELECT student_name , course
FROM students_2023
UNION 
SELECT student_name , course
FROM students_2024;

--UNION ALL -- Combine result ,remove duplicate
SELECT student_name , course
FROM students_2023
UNION ALL
SELECT student_name , course
FROM students_2024;

--INTERSECT -- Combine result ,remove duplicate
SELECT student_name , course
FROM students_2023
INTERSECT 
SELECT student_name , course
FROM students_2024;

--EXCEPT -- Combine result ,remove duplicate
SELECT student_name , course
FROM students_2023
EXCEPT 
SELECT student_name , course
FROM students_2024;
