/*
 Task 1 : 

Create a new database name “university ”
 1.	Create a new table in the university database name “teacher”
 2.	The schema is ( Teacher_ID int , Name varchar ,Designation varchar, Departnebt varchar ,
 Credit_load int)
 3.	Insert 10 random value in the teacher table .
 4.	Average credit load of the teacher.

 5. Create a new table in the university database name “Student”.
 6. The schema is ( Student_ID int , Student_Name varchar ,Mobile_NO int,Semester int, cgpa double  ,
 Address varcha, Due double).
 7. Insert 20 random value in the Student table .

 8.	Find out the average due of the student.
 9.	Sorting the student table based on the CGPA.
 10.Add all student address "Mirpur"
*/

CREATE DATABASE UNIVERSITY;
USE UNIVERSITY;

CREATE TABLE teacher(Teacher_Id int, Name varchar(32), Designation varchar(32) ,
Department varchar(32),Credit_load int) ;

INSERT INTO teacher (`Teacher_Id`, `Name`, `Designation`, `Department`, `Credit_load`) VALUES
(1000201, 'Abul Khair MD. Bahauddin', 'Professor', 'Mathematics', 14),
(1000202, 'Abdullah Al Mashud', 'Associate Professor', 'Physics', 12),
(1000203, 'Maksudur Rhaman', 'Assistant Professor', 'Chemistry', 15),
(1000204, 'Pervin Akter', 'Lecturer', 'Biology', 13),
(1000205, 'Mahmud Un Nabi', 'Senior Lecturer', 'Computer Science', 16),
(1000206, 'Walid Bin Sadik', 'Professor', 'Economics', 12),
(1000207, 'Lio Messi', 'Assistant Professor', 'History', 14),
(1000208, 'C. Ronaldo', 'Associate Professor', 'Philosophy', 15),
(1000209, 'Neymar Jr', 'Lecturer', 'Sociology', 13),
(1000210, 'Lamine Yamal', 'Lecturer', 'Psychology', 16);

SELECT * FROM Teacher;

SELECT AVG(Credit_load) FROM teacher;



CREATE TABLE Student(
Student_ID INT PRIMARY KEY,
Student_Name VARCHAR(50),Mobile_No int,
Semester int, cgpa double  ,
 Address VARCHAR(50), Due double
);

INSERT INTO Student
(Student_ID, Student_Name, Mobile_No , Semester,cgpa,Address,Due)
VALUES
(101, "Mahmud", 01701102547, 4, 3.61,"Chandpur",9000),
(102, "Nakib", 0174672547, 4, 3.41,"Matlab",1000),
(103, "Mahi", 01701568907, 4, 3.33,"Dhaka",2000),
(104, "Jahid", 0145790312, 4, 3.6,"Chandpur",4000),
(105, "Nabil", 0157890237, 4, 3.21,"London",0),
(106, "Rakib", 0175689098, 4, 3.9,"Paris",400),
(107, "Nahib", 0134123478, 4, 3.21,"London",4000),
(108, "Osman", 0170890345, 4, 3.75,"Dhaka",29000),
(109, "Pritun", 0198543535, 4, 3.97,"Dubai",8000),
(110, "Masum", 0170657787, 4, 3.45,"Paris",4000),
(111, "Rafi", 01701764147, 4, 3.66,"Madrid",2000),
(112, "Anik", 0145678123, 4, 3.67,"Dhaka",0),
(113, "Ashraful", 0186753456, 4, 3.55,"London",9000),
(114, "Moshiur", 01345789642, 4, 3.35,"Chandpur",6000),
(115, "Jhiad", 018904567, 4, 3.25,"Matlab",9000),
(116, "Abir", 0190456678, 4, 3.15,"Dhaka",10000),
(117, "Rashed", 0198234567, 4, 3.45,"Paris",500);

SELECT * FROM Student;

SELECT AVG(due) FROM student;

SELECT * FROM student ORDER BY CGPA DESC;

SET SQL_SAFE_UPDATES = 0;  -- SAFE LOCK UNLOCK , 1-> LOCK

UPDATE student SET Address = 'Mirpur';

SELECT * FROM Student;