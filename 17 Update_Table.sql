/*
Update (to update existing rows)

UPDATE table_name
SET col1 = val1, col2 = val2
WHERE condition;
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


/* UPDATE */
SET SQL_SAFE_UPDATES = 0; --SAFE LOCK UNLOCK , 1->LOCK
UPDATE StudentInfo SET Grade = "0" WHERE Grade ="A";
UPDATE StudentInfo SET Marks =92 WHERE rollNo = 104;

UPDATE StudentInfo SET Grade ="B"
WHERE Marks BETWEEN 80 AND 89;

UPDATE StudentInfo SET Marks = Marks + 1;

SELECT * FROM StudentInfo;

-- Next 'DELETE'

