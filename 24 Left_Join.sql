/*
Returns all records from the left table, and the matched records from
the right table

Syntax
SELECT column(s)
FROM tableA
LEFT JOIN tableB
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
Name VARCHAR(50)
);

CREATE TABLE Course(
Id INT PRIMARY KEY,
Course VARCHAR(50)
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

--LEFT JOIN
SELECT * 
FROM Student2
LEFT JOIN Course
ON Student2.Id = Course.Id;


-- Next " Right join"