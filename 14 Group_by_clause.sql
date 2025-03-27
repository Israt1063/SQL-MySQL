/*
Groups rows that have the same values into summary rows.
It collects data from multiple records and groups the result by one or more column.

*Generally we use group by with some aggregation function.
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


/* Group by Clause */

SELECT City FROM StudnetInfo GROUP BY City;

SELECT City, COUNT(RollNo) FROM StudentInfo GROUP BY City;

SELECT City,Name,COUNT(RollNo) FROM StudentInfo GROUP BY City,name;

SELECT City,AVG(Marks) FROM StudentInfo GROUP BY City;


/* Practice Qs 
Write the Query to find avg marks in each city in ascending order.
*/
SELECT City, AVG(Marks) FROM StudentInfo Group BY City ORDER BY City;


-- Next ' practiceQuestion_2'
