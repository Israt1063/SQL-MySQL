/*
Cascading for FK

On Delete Cascade
When we create a foreign key using this option, it deletes the referencing rows in the child table
when the referenced row is deleted in the parent table which has a primary key.

On Update Cascade
When we create a foreign key using UPDATE CASCADE the referencing rows are updated in the child
table when the referenced row is updated in the parent table which has a primary key.

*/

CREATE DATABASE UNIVERSITY;
USE UNIVERSITY;

CREATE TABLE dept(
id INT PRIMARY KEY,
nmae VARCHAR(100)
);

INSERT INTO dept VALUES
(101,"english"),
(102,"bangla");

SELECT * FROM dept;

UPDATE dept
SET id = 103
WHERE ID =102;

CREATE TABLE StudentInfo(
RollNo INT PRIMARY KEY,
Name VARCHAR(100),
Marks INT NOT NULL,
Grade VARCHAR(10),
City VARCHAR(100)
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





-- Next "Table related Queries"