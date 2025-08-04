-- Drop the table if it already exists
DROP TABLE IF EXISTS employees1;
-- Create the employees table
CREATE TABLE employees1 (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT 
);

SELECT * FROM employees1;

-- Insert data into employees table
INSERT INTO employees1 (first_name, last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);

--1
SELECT first_name,department FROM employees1;
--2
UPDATE employees1
SET salary=salary+salary*.1
WHERE department ='IT';
--3
DELETE FROM employees1 WHERE age>34;

--4
ALTER TABLE  employees1
ADD COLUMN email VARCHAR(100);

--5
ALTER TABLE employees1
RENAME COLUMN department TO dept_name;

--6
SELECT first_name,last_name,joining_date FROM employees1
WHERE joining_date >'2021-01-01' ;

--7
ALTER TABLE employees1
ALTER COLUMN salary TYPE int;

--8
SELECT first_name,age,salary FROM employees1 ORDER BY 
 salary DESC;

 --9
 UPDATE employees1
 SET age=age+1;
