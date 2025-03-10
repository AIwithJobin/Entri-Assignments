CREATE DATABASE library;
USE library;

CREATE TABLE Branch (
    Branch_no INT PRIMARY KEY,
    Manager_Id INT,
    Branch_address VARCHAR(255),
    Contact_no VARCHAR(15)
);

INSERT INTO Branch VALUES 
(1, 101, 'MG Road, Kochi', '9876543210'),
(2, 102, 'Brigade Road, Bangalore', '9823456789'),
(3, 103, 'Connaught Place, Delhi', '9988776655');

CREATE TABLE Employee (
    Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(100),
    Position VARCHAR(100),
    Salary DECIMAL(10,2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);

INSERT INTO Employee VALUES 
(101, 'Rajesh Kumar', 'Manager', 75000, 1),
(102, 'Anita Sharma', 'Manager', 72000, 2),
(103, 'Vikram Rao', 'Manager', 68000, 3),
(104, 'Sandeep Nair', 'Assistant Librarian', 48000, 1),
(105, 'Meera Iyer', 'Librarian', 52000, 2),
(106, 'Rohan Das', 'Assistant Librarian', 47000, 3);



CREATE TABLE Books (
    ISBN VARCHAR(20) PRIMARY KEY,
    Book_title VARCHAR(255),
    Category VARCHAR(100),
    Rental_Price DECIMAL(10,2),
    Status ENUM('Yes', 'No'),
    Author VARCHAR(255),
    Publisher VARCHAR(255)
);

INSERT INTO Books VALUES 
('978-0131103627', 'The C Programming Language', 'Programming', 30.00, 'Yes', 'Brian Kernighan, Dennis Ritchie', 'Prentice Hall'),
('978-1491950357', 'Python for Data Analysis', 'Data Science', 35.00, 'Yes', 'Wes McKinney', 'O’Reilly'),
('978-0062316097', 'Sapiens: A Brief History of Humankind', 'History', 25.00, 'No', 'Yuval Noah Harari', 'Harper'),
('978-0321356680', 'Effective Java', 'Programming', 40.00, 'Yes', 'Joshua Bloch', 'Addison-Wesley'),
('978-0385349949', 'Atomic Habits', 'Self-Help', 20.00, 'Yes', 'James Clear', 'Avery'),
('978-0140449266', 'The Art of War', 'History', 15.00, 'Yes', 'Sun Tzu', 'Penguin Classics');

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    Customer_name VARCHAR(100),
    Customer_address VARCHAR(255),
    Reg_date DATE
);

INSERT INTO Customer VALUES 
(201, 'Amit Verma', 'New Delhi', '2021-12-10'),
(202, 'Neha Singh', 'Mumbai', '2023-06-25'),
(203, 'Arun Gupta', 'Kolkata', '2022-08-15'),
(204, 'Rashmi Menon', 'Bangalore', '2020-03-18'),
(205, 'Kiran Reddy', 'Hyderabad', '2023-06-05');


CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,
    Issued_cust INT,
    Issued_book_name VARCHAR(255),
    Issue_date DATE,
    Isbn_book VARCHAR(20),
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,
    Issued_cust INT,
    Issued_book_name VARCHAR(255),
    Issue_date DATE,
    Isbn_book VARCHAR(20),
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

INSERT INTO IssueStatus VALUES 
(301, 202, 'Python for Data Analysis', '2023-06-26', '978-1491950357'),
(302, 205, 'Sapiens: A Brief History of Humankind', '2023-06-07', '978-0062316097'),
(303, 203, 'Effective Java', '2024-02-10', '978-0321356680');



CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(255),
    Return_date DATE,
    Isbn_book2 VARCHAR(20),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);

INSERT INTO ReturnStatus VALUES 
(401, 202, 'Python for Data Analysis', '2023-07-02', '978-1491950357'),
(402, 205, 'Sapiens: A Brief History of Humankind', '2023-06-15', '978-0062316097');

SELECT Book_title, Category, Rental_Price 
FROM Books 
WHERE Status = 'Yes';

SELECT Emp_name, Salary 
FROM Employee 
ORDER BY Salary DESC;

SELECT B.Book_title, C.Customer_name 
FROM IssueStatus I
JOIN Books B ON I.Isbn_book = B.ISBN
JOIN Customer C ON I.Issued_cust = C.Customer_Id;

SELECT Category, COUNT(*) AS Total_Books 
FROM Books 
GROUP BY Category;

SELECT Emp_name, Position 
FROM Employee 
WHERE Salary > 50000;

SELECT C.Customer_name 
FROM Customer C
LEFT JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust
WHERE C.Reg_date < '2022-01-01' AND I.Issue_Id IS NULL;


SELECT Branch_no, COUNT(*) AS Total_Employees 
FROM Employee 
GROUP BY Branch_no;


SELECT C.Customer_name 
FROM IssueStatus I
JOIN Customer C ON I.Issued_cust = C.Customer_Id
WHERE MONTH(Issue_date) = 6 AND YEAR(Issue_date) = 2023;


SELECT Book_title 
FROM Books 
WHERE Book_title LIKE '%history%';


SELECT Branch_no, COUNT(*) AS Employee_Count 
FROM Employee 
GROUP BY Branch_no
HAVING COUNT(*) > 5;

SELECT E.Emp_name, B.Branch_address 
FROM Employee E
JOIN Branch B ON E.Emp_Id = B.Manager_Id;

SELECT DISTINCT C.Customer_name 
FROM IssueStatus I
JOIN Books B ON I.Isbn_book = B.ISBN
JOIN Customer C ON I.Issued_cust = C.Customer_Id
WHERE B.Rental_Price > 25;














