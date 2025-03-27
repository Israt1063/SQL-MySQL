-- Join is used to combine rows from two or more tables, based on a related column between them.
--Inner Join
--Left Join
--Right Join
--Full Join

/* 	Inner Join 
Return records that have matching values in both the tables.

Syntax
SELECT column(s)
FROM tableA
INNER JOIN tableB
ON tableA.col_name = tableB.col_name;
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

/* Joins */

CREATE TABLE Student2(
    Id INT PRIMARY KEY,
    Course VARCHAR(100)
);

CREATE TABLE Course(
    Id INT PRIMARY KEY,
    Course VARCHAR(100)
);

INSERT INTO Student2(Id, Name)
VALUES
(101, "Adam"),
(102, "Bob"),
(103, "Casey");

INSERT INTO Course(Id, Course)
VALUES
(102, "English"),
(105, "Math"),
(103, "IT"),
(104, "Science");

SELECT * FROM Student2;

SELECT * FROM Course;

----Inner Join
SELECT*
FROM Student2
INNER JOIN Course
ON Student2.Id=Course.Id;

/* Alias -> big name use for small name */

SELECT *
FROM Student2 as s
 INNER JOIN Course as c
ON s.Id = c.Id;

--Next " Left Join "