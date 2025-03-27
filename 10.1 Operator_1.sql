CREATE DATABASE UNIVERSITY;
USE UNIVERSITY;

CREATE TABLE StudentInfo(
RollNo INT PRIMARY KEY,
Name VARCHAR(50),
Marks INT NOT NULL,
Grade VARCHAR(10),
City VARCHAR(50)
);

INSERT INTO StudentInfo
(RollNo, Name, Marks, Grade, City)
VALUES
(101, "Mahmud", 90, "A", "Chandpur"),
(102, "Un", 78, "B", "UK"),
(103, "Nabi", 90, "B", "London"),
(104, "Uthso", 68, "D", "Texas"),
(105, "Pritun", 78, "C", "Dhaka"),
(106, "Fahin", 58, "B", "France"),
(107, "Rafin", 78, "C", "Dhaka"),
(108, "Messi", 58, "C", "Dhaka"),
(109, "Ronaldo", 88, "B", "Chandpur"),
(110, "Neymar", 98, "A", "UK"),
(111, "Hamza", 98, "A", "Uk");

/* Operator */

SELECT * FROM StudentInfo WHERE Marks > 60 AND City = "Dhaka";  -- (to check for both conditions to be true)

SELECT * FROM StudentInfo WHERE Marks > 60 OR City = "Dhaka"; -- (to check for one of the conditions to be true)

SELECT * FROM StudentInfo WHERE Marks BETWEEN 70 AND 90;  -- (selects for a given range)

SELECT * FROM StudentInfo WHERE City IN ("UK", "Chandpur");  -- (matches any value in the list)

SELECT * FROM StudentInfo WHERE City NOT IN ("UK", "Dhaka");  -- NOT (to negate the given condition)

SELECT * FROM StudentInfo WHERE Marks +10 > 100;

SELECT * FROM StudentInfo WHERE Marks =90;

-- Next 'Oparator 2 '