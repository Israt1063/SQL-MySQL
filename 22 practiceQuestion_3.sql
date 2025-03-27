/*
Practice Qs 

Qs: In the student table :
a. Change the name of column "ame to “full_name”. ——”
b. Delete all the students who scored marks less than 80.
c. Delete the column for grades.

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

SELECT * FROM StudentInfo;

ALTER TABLE StudentInfo CHANGE Name FullName VARCHAR(100);

SELECT * FROM StudentInfo;

DELETE FROM StudentInfo WHERE Marks < 80;

SET SQL_SAFE_UPDATES = 0;

ALTER TABLE StudentInfo DROP COLUMN Grade;



-- Next "joins in sql"