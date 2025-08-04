CREATE TABLE employee2(
    employee_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	position VARCHAR(50),
	department VARCHAR(50),
	join_date DATE,
	salary NUMERIC(10,2)
);

SELECT * FROM employee2;

INSERT INTO employee2(employee_id,name, position, department, join_date, salary)
		VALUES (01,'Ajit Sharma', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
			(02,'Priya Desai','Software Engineer', 'IT', '2021-09-20',75000.00),
			(03,'Rajesh Kumar', 'HR Manager', 'Human Resources', '2019-03-10', 82000.00),
			(04,'Sneha Patel', 'Marketing Specialist', 'Marketing', '2020-11-25', 58000.00),
			(05,'Vikram Singh', 'Sales Executive', 'Sales', '2023-02-12', 62000.00);
DELETE FROM employee2
WHERE employee_id=05;

ALTER TABLE employee2
DROP COLUMN join_date;