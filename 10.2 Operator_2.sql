/*
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
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

/* Like Operator and Wildcard(_,[],%,^,-,{}) */

SELECT * FROM StudentInfo WHERE name LIKE 'n%';   -- name start -> 'n'

SELECT * FROM StudentInfo WHERE name LIKE '%n';   -- name end -> 'n'

SELECT * FROM StudentInfo WHERE name LIKE '%n%';   -- name contain 'n'

SELECT * FROM StudentInfo  WHERE name LIKE '_ahmud'; 
SELECT * FROM StudentInfo  WHERE name LIKE 'm____d';

SELECT * FROM StudentInfo  WHERE name LIKE '[mah]%';  -- Return all StudentInfo starting with either "m", "a", or "h"

SELECT * FROM StudentInfo  WHERE name LIKE '[a-m]%';  -- Return all StudentInfostarting with "a to m"

SELECT * FROM StudentInfo  WHERE name LIKE 'n__%';  -- "n" and are at least 3 characters in length

SELECT * FROM StudentInfo WHERE name LIKE '_a%';  -- "a" in the second position

SELECT * FROM StudentInfo WHERE name LIKE 'mahmud';  

-- Next 'Limit '