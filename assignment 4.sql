use entri_d42;

CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area INT
);

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 2),
    Country_Id INT,
    Country_name VARCHAR(50),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9834000),
(2, 'Canada', 38000000, 9985000),
(3, 'UK', 68000000, 243610),
(4, 'Australia', 25000000, 7692000),
(5, 'India', 1380000000, 3287000),
(6, 'Germany', 83000000, 357386),
(7, 'France', 67000000, 551695),
(8, 'China', 1440000000, 9597000),
(9, 'Japan', 126000000, 377975),
(10, 'Brazil', 213000000, 8516000);

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.2, 1, 'USA'),
(2, 'Jane', 'Smith', 38000000, 4.5, 2, 'Canada'),
(3, 'William', 'Lee', 68000000, 4.8, 3, 'UK'),
(4, 'Emma', 'Johnson', 25000000, 3.9, 4, 'Australia'),
(5, 'Liam', 'Brown', 1380000000, 4.1, 5, 'India'),
(6, 'Olivia', 'Wilson', 83000000, 3.7, 6, 'Germany'),
(7, 'Noah', 'White', 67000000, 4.3, 7, 'France'),
(8, 'Sophia', 'Thomas', 1440000000, 4.9, 8, 'China'),
(9, 'James', 'Clark', 126000000, 3.8, 9, 'Japan'),
(10, 'Isabella', 'Martinez', 213000000, 4.0, 10, 'Brazil');


SELECT DISTINCT Country_name FROM Persons;


SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;

SELECT * FROM Persons WHERE Rating > 4.0;

SELECT * FROM Country WHERE Population > 1000000;

SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;

SELECT * FROM Persons WHERE Country_name IS NULL;

SELECT * FROM Persons WHERE Country_name IS NULL;

SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');

SELECT * FROM Country WHERE Population BETWEEN 500000 AND 2000000;

SELECT * FROM Country WHERE Country_name NOT LIKE 'C%';


