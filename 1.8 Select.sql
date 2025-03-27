/*
used to select any data from the database

Basic Syntax
SELECT col1, col2 FROM table_name;

To Select ALL
SELECT * FROM table_name;
*/
CREATE DATABASE UNIVERSITY;
USE UNIVERSITY;

CREATE TABLE StudentInfo(
RollNo INT PRIMARY KEY,
Name VARCHAR(50),
Marks INT NOT NULL,
Grade VARCHAR(10),
City VARCHAR(50)
);
-- ALTER TABLE StudnetInfo RENAME TO StudentInfo; 
-- is used to rename a table in a database. In this case, it corrects a spelling mistake 
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

/* Select */
SELECT Name ,Grade, Marks FROM StudnetInfo;

SELECT * FROM StudnetInfo;

SELECT City FROM StudnetInfo;

SELECT DISTIINCT City FROM StudentInfo;  --DISTIINCT -> unique

-- next  'Where Clause'