/* 
Union:

It is used to combine the result-set of two or more SELECT statements.
Gives UNIQUE records.

To use it :
1. every SELECT should have same no. of columns
2. columns must have similar data types
3. columns in every SELECT should be in same order

Syntax
SELECT column(s) FROM tableA
UNION
SELECT column(s) FROM tableB

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


--UNION
SELECT Name FROM Employee
UNION
SELECT Name FROM Employee;

SELECT Name FROM Employee
UNION ALL
SELECT Name FROM Employee;

-- Next " SQL Sub Queries"