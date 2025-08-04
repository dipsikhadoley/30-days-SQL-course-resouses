-- Create Database
CREATE DATABASE OnlineBookstore;

-- Switch to the database
\c OnlineBookstore;

-- Create Tables
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);
DROP TABLE IF EXISTS customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);
DROP TABLE IF EXISTS orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

-- Import Data into Books Table

COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock) 
FROM 'C:\Users\dipsikha doley\Downloads\Books.csv' 
CSV HEADER;

-- Import Data into Customers Table
COPY Customers(Customer_ID, Name, Email, Phone, City, Country) 
FROM '‪C:\Users\dipsikha doley\Downloads\Customers.csv' 
CSV HEADER;

-- Import Data into Orders Table
COPY Orders(Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount) 
FROM 'C:\Users\dipsikha doley\Downloads\Orders.csv' 
CSV HEADER; 

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

--1) Retrieve all books in the 'Friction' genere;
SELECT * FROM Books
WHERE genre= 'Fiction';

--2.)find books published after the year 1950
SELECT * FROM Books
WHERE  Published_Year >='1950';

--3.List all the customer from the canada
SELECT * FROM Customers
WHERE  Country='Canada';

--4)Show orders placed in November 2023;
SELECT * FROM Orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

--5) Retrive the total stock of books available
SELECT   SUM(stock) AS total_stock FROM Books;

--6) find the details of the most expensive books;
SELECT * FROM Books
ORDER BY price DESC; 
 
