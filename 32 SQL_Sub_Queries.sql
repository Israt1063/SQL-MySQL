/*
SQL Sub Queries

A Subquery or Inner query or a Nested query is a query within another SQL query.


It involves 2 select statements.

Syntax

SELECT column(s)
FROM table_name
WHERE col_name operator
(subquery);
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


/*
Example

Get names of all students who scored more than class average.

Step 1. Find the avg of class —
Step 2. Find the names of students with marks > avg

*/

SELECT * FROM StudentInfo;

SELECT AVG(Marks) FROM StudnetInfo;

SELECT name,Marks
FROM StudentInfo
WHERE Marks > 90;


/*SQL Sub Queries */

SELECT name,Marks
FROM StudentInfo
WHERE Marks > (SELECT AVG(Marks) FROM StudentInfo);


/*
Example
Find the names of all students with even roll numbers.

Step 1. Find the even roll numbers
Step 2. Find the names of students with even roll no
*/

SELECT * 
FROM StudentInfo
WHERE RollNo % 2 =0;
/* SQL Sub Queries */
SELECT name,RollNo
FROM StudentInfo 
WHERE RollNo IN(
     SELECT StudentInfo
     WHERE RollNo % 2 = 0;
);

/*
Example with FROM
Find the max marks from the students of Dhaka

Step 1. Find the students of Dhaka
Step 2. Find their max marks using the sublist in step 1
*/

SELECT * FROM StudentInfo
WHERE City ="Dhaka";
/* SQL Sub Queries */
SELECT MAX(Marks)
FROM (SELECT * FROM StudentInfo
WHERE City ="Dhaka") AS Temp;

-- Example with SELECT (sub queue)
SELECT (SELECT MAX(Marks) FROM StudentInfo),name
FROM StudentInfo;


-- Next " MySQL Views "



