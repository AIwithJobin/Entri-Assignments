use entri_d42;

SELECT LEFT(Country_name, 3) AS FirstThreeChars FROM Country;

SELECT CONCAT(Fname, ' ', Lname) AS FullName FROM Persons;

SELECT COUNT(DISTINCT Country_name) AS UniqueCountryCount FROM Persons;

SELECT MAX(Population) AS MaxPopulation FROM Country;

SELECT MIN(Population) AS MaxPopulation FROM Country;

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(11, 'Alex', NULL, 1440000000, 3.5, 8, 'China'),
(12, 'Mia', NULL, 213000000, 4.1, 10, 'Brazil');

SELECT COUNT(Lname) AS LnameCount FROM Persons;

SELECT COUNT(*) AS RowCount FROM Persons;

SELECT Population FROM Country
LIMIT 3;

SELECT * FROM Country
ORDER BY RAND()
LIMIT 3;

SELECT * FROM Persons
ORDER BY Rating DESC;

SELECT Country_name, SUM(Population) AS TotalPopulation
FROM Persons
GROUP BY Country_name;

SELECT Country_name, SUM(Population) AS TotalPopulation
FROM Persons
GROUP BY Country_name
HAVING TotalPopulation > 50000;

SELECT Country_name, COUNT(*) AS TotalPersons, AVG(Rating) AS AverageRating
FROM Persons
GROUP BY Country_name
HAVING COUNT(*) > 2
ORDER BY AverageRating ASC;





