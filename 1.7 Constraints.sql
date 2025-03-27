-- unique Constraints
CREATE TABLE temp1(
    id INT UNIQUE
);
INSERT INTO temp1 VALUES(111);
-- INSERT INTO temp1 VALUES(111); --error
INSERT INTO temp1 VALUES (112);
SELECT * FROM temp1;


-- Primary Key Constraints
CREATE TABLE temp2(
    id INT,
    name VARCHAR(100),
    age INT,
    city VALUES(20),
    PRIMARY KEY(id),-- ONLY ID IS unique & not null
    PRIMARY KEY(id,name) --Combination unique & not null
);
SELECT * FROM temp2;


-- DEFAULT Constraints
CREATE TABLE cmp(
    id INT,
    salary INT DEFAULT 25000
);
INSERT INTO cmp(id)VALUES(2002);
SELECT * FROM cmp;
 