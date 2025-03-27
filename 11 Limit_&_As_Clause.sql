/*
Sets an upper limit on number of (tuples)rows to be returned

SELECT col1, col2 FROM table_name
LIMIT number;
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

/*Limit Clause */

SELECT FROM StudentInfo LIMIT 6;

SELECT * FROM StudnetInfo WHERE Marks >60 LIMIT 6;

/*
Syntax
When alias is used on column:

SELECT column_name AS alias_name
FROM table_name;

When alias is used on table:

SELECT column_name(s)
FROM table_name AS alias_name;
*/


-- Next 'Order by Clause'

