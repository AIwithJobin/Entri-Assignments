use entri_d42;

ALTER TABLE Persons
ADD  DOB DATE;

DELIMITER $$
CREATE FUNCTION calculate_age(dob DATE)
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE age INT;
  SET age = TIMESTAMPDIFF(YEAR, dob, CURDATE());
  RETURN age;
END $$
DELIMITER ;

SELECT Id, Fname, Lname, DOB, calculate_age(DOB) AS Age
FROM Persons;

SELECT Country_name, LENGTH(Country_name) AS NameLength
FROM Country;

SELECT Country_name, LEFT(Country_name, 3) AS FirstThreeChars
FROM Country;

SELECT Country_name, UPPER(Country_name) AS UppercaseName, LOWER(Country_name) AS LowercaseName
FROM Country;
