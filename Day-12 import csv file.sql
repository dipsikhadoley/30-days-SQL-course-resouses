
DROP TABLE IF EXISTS employees2;

CREATE TABLE employees2 (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    department VARCHAR(20),
    salary NUMERIC(10,2),
    joining_date DATE,
    age INT 
);
SELECT * FROM employees2;

COPY
employees2(employee_id, first_name, last_name, department, salary, joining_date, age)
FROM 'C:\Users\dipsikha doley\Downloads\employee_data.csv'
DELIMITER ','
CSV HEADER;
