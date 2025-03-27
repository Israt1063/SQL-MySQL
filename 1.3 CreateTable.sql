/*
USE db_name;

CREATE TABLE table_name (
column_name1 datatype constraint,
column_name2 datatype constraint,
column_name2 datatype constraint
);
*/
USE SectionH;
CREATE TABLE Student(
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT NOT NULL,
    cgpa FLOAT NOT NULL
);
-- Next 'InsertIntoDastabase'