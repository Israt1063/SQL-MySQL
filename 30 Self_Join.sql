/*
It is a regular join but the table is joined with itself.

Syntax

SELECT column(s)
FROM table as a
JOIN table as b
ON a.col_name = b.col_name;
*/


CREATE DATABASE UNIVERSITY;
USE UNIVERSITY;

CREATE TABLE Employee(
Id INT PRIMARY KEY,
Name VARCHAR(50),
ManagerId INT
);

INSERT INTO Employee(Id, Name, ManagerId)
VALUES
(101, "Mahi", 103),
(102, "Mon", 104),
(103, "Monan", NULL),
(104, "Messi", 103);

SELECT * FROM Employee;

-- self join
SELECT a.Name as Managername, b.name
FROM Employee as a 
JOIN Employee as b 
ON a.Id = b.ManagerId;

-- Next "Union"