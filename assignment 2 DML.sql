use entri_d42;
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_Name VARCHAR(50),
    DOB DATE,
    Age INT CHECK (Age >= 18 AND Age <= 65),
    Last_update DATE,
    Gender VARCHAR(10),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO Managers (Manager_Id, First_name, Last_Name, DOB, Age, Last_update, Gender, Department, Salary) VALUES
(1, 'John', 'Doe', '1980-01-15', 44, '2024-11-16', 'Male', 'Sales', 40000.00),
(2, 'Jane', 'Smith', '1975-03-22', 49, '2024-11-16', 'Female', 'Marketing', 35000.00),
(3, 'Mike', 'Brown', '1982-07-18', 42, '2024-11-16', 'Male', 'IT', 30000.00),
(4, 'Emma', 'Wilson', '1990-05-30', 34, '2024-11-16', 'Female', 'HR', 28000.00),
(5, 'Liam', 'Taylor', '1985-09-09', 39, '2024-11-16', 'Male', 'Finance', 32000.00),
(6, 'Olivia', 'White', '1988-11-23', 35, '2024-11-16', 'Female', 'IT', 29000.00),
(7, 'Ava', 'Thomas', '1992-04-14', 32, '2024-11-16', 'Female', 'Legal', 27000.00),
(8, 'William', 'Lee', '1979-08-07', 45, '2024-11-16', 'Male', 'Sales', 41000.00),
(9, 'Sophia', 'Green', '1983-12-12', 40, '2024-11-16', 'Female', 'Marketing', 36000.00),
(10, 'James', 'Clark', '1986-06-16', 38, '2024-11-16', 'Male', 'IT', 31000.00);

select * from Managers;

SELECT First_name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;

SELECT Manager_Id, First_name, Last_Name, Salary * 12 AS Annual_Income
FROM Managers;

SELECT *
FROM Managers
WHERE First_name != 'Aaliya';

SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;

