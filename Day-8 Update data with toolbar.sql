CREATE TABLE IF NOT EXISTS users1(
  user_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE,
  age INT,
  city VARCHAR(50)
);

INSERT INTO users1 (user_id,name,email,age,city)
       VALUES (1,'John Doe','dipsikhad@gmail.com',64,'allahabad'),
              (2,'Joh Doe','disikhad@gmail.com',45,'mumba'),
             (3,'Jo Doe','dipskhad@gmail.com',54,'dehli'),

             (4,'J Doe','dipsikad@gmail.com',66,'assam');

SELECT * FROM users1;

SELECT  city FROM users1;

UPDATE users1
SET age= 25
WHERE name='Joh Doe';

SELECT * FROM users1 ORDER BY name ASC;

UPDATE users1
SET city = 'pune'
WHERE age>54;

UPDATE users1
SET age=45,city='kalkata'
WHERE name = 'J Doe';

UPDATE users1
SET age=age+1
WHERE email LIKE '%@gmail.com';

DELETE FROM users1 WHERE user_id =4;

