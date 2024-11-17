use entri_d42;
SELECT * FROM country;
SELECT * FROM Persons;

SELECT Country_name, COUNT(*) AS PersonCount
FROM Persons
GROUP BY Country_name;

SELECT Country_name, COUNT(*) AS PersonCount
FROM Persons
GROUP BY Country_name
ORDER BY PersonCount DESC;

SELECT Country_name, AVG(Rating) AS AverageRating
FROM Persons
GROUP BY Country_name
HAVING AverageRating > 3.0;

SELECT Country_name
FROM Persons
WHERE Rating = (SELECT Rating FROM Persons WHERE Country_name = 'USA');

SELECT Country_name
FROM Country
WHERE Population > (SELECT AVG(Population) FROM Country);

CREATE DATABASE Product;

USE Product;

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Email VARCHAR(100),
    Phone_no VARCHAR(15),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Zip_code VARCHAR(10),
    Country VARCHAR(50)
);

INSERT INTO Customer (Customer_Id, First_name, Last_name, Email, Phone_no, Address, City, State, Zip_code, Country) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Maple Street', 'Springfield', 'Illinois', '62701', 'USA'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '456 Oak Street', 'Springfield', 'Illinois', '62701', 'USA'),
(3, 'William', 'Johnson', 'william.johnson@example.com', '345-678-9012', '789 Pine Street', 'Madison', 'Wisconsin', '53703', 'USA'),
(4, 'Emma', 'Brown', 'emma.brown@example.com', '456-789-0123', '101 Birch Street', 'Madison', 'Wisconsin', '53703', 'USA'),
(5, 'Liam', 'Jones', 'liam.jones@example.com', '567-890-1234', '202 Cedar Street', 'Columbus', 'Ohio', '43215', 'USA'),
(6, 'Olivia', 'Miller', 'olivia.miller@example.com', '678-901-2345', '303 Maple Street', 'Columbus', 'Ohio', '43215', 'USA'),
(7, 'Noah', 'Davis', 'noah.davis@example.com', '789-012-3456', '404 Oak Street', 'Boston', 'Massachusetts', '02108', 'USA'),
(8, 'Sophia', 'Garcia', 'sophia.garcia@example.com', '890-123-4567', '505 Pine Street', 'Boston', 'Massachusetts', '02108', 'USA'),
(9, 'James', 'Martinez', 'james.martinez@example.com', '901-234-5678', '606 Birch Street', 'Austin', 'Texas', '78701', 'USA'),
(10, 'Isabella', 'Rodriguez', 'isabella.rodriguez@example.com', '012-345-6789', '707 Cedar Street', 'Austin', 'Texas', '78701', 'USA');

CREATE VIEW customer_info AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_name, Email
FROM Customer;

SELECT * FROM customer_info;

CREATE VIEW US_Customers AS
SELECT *
FROM Customer
WHERE Country = 'US';

SELECT * FROM US_Customers;

CREATE VIEW Customer_details AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_name, Email, Phone_no, State
FROM Customer;

SELECT * FROM Customer_details;

UPDATE Customer
SET Phone_no = 'New_Phone_Number'
WHERE State = 'California';

SELECT * FROM Customer_details ;
SET SQL_SAFE_UPDATES = 0;

SELECT State, COUNT(*) AS CustomerCount
FROM Customer
GROUP BY State
HAVING CustomerCount > 5;

SELECT State, COUNT(*) AS CustomerCount
FROM Customer_details
GROUP BY State;

SELECT * FROM Customer_details
ORDER BY State ASC;

