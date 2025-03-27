/*

Table related Queries

Alter (to change the schema)

ADD Column
ALTER TABLE table_name
ADD COLUMN column_name datatype constraint;

DROP Column

ALTER TABLE table_name
DROP COLUMN column_name;

RENAME Table

ALTER TABLE table_ name
RENAME TO new_table_name;

CHANGE Column (rename)

ALTER TABLE table_name
CHANGE COLUMN old_name new_name new_datatype new_constraint;

MODIFY Column (modify datatype/ constraint)

ALTER TABLE table_name
MODIFY col_name new_datatype new_constraint;
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

ALTER TABLE StudentInfo ADD Age INT;

ALTER TABLE StudentInfo ADD PhoneNumber INT;

ALTER TABLE StudentInfo DROP Age;

ALTER TABLE StudentInfo DROP PhoneNumber;

ALTER TABLE StudentInfo ADD COLUMN Age INT NOT NULL DEFAULT 19;  -- ADD Column

ALTER TABLE StudentInfo MODIFY COLUMN Age VARCHAR(2);  -- MODIFY Column

INSERT INTO StudentInfo VALUES(120, "Gargi", 88, "C", "Patna", 100);

ALTER TABLE StudentInfo CHANGE Age SAge INT;  -- CHANGE Column (rename)

-- ALTER TABLE StudentInfo REMANE T0 Student ;  -- RENAME Table

 ALTER TABLE StudentInfo DROP COLUMN age; -- DROP Column


-- Next "Table related Queries 2 "