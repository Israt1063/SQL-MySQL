/*
Practice Qs
For the given table, find the total payment according to each payment method

customer_id -> customer -> mode -> city
101 Olivia Barrett Netbanking Portland
102 Ethan Sinclair Credit Card Miami
103 Maya Hernandez Credit Card Seattle
Liam Donovan Netbanking Denver
Sophia Nguyen Credit Card New Orleans
Caleb Foster Debit Card Minneapolis
Ava Patel Debit Card Phoenix
Lucas Carter Netbanking Boston
Isabella Martinez Netbanking Nashville
Jackson Brooks Credit Card Boston

*/
CREATE DATABASE Bank;
USE bank;
CREATE TABLE PaymentCount(
CustomerID INT,
CusName VARCHAR(50),
Mode VARCHAR(50),
City VARCHAR(50)
);

SELECT * FROM PaymentCount;

INSERT INTO PaymentCount (CustomerID, CusName, Mode, City)
VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Portland'),
(103, 'Maya Hernandez', 'Credit Card', 'Portland'),
(104, 'Liam Donovant', 'Netbanking', 'Portland'),
(105, 'Sophia Nguyen', 'Credit Card', 'Portland'),
(106, 'Caleb Foster', 'Debit Card', 'Portland'),
(107, 'Ava Patel', 'Debit Card', 'Portland'),
(108, 'Lucas Carter', 'Netbanking', 'Portland'),
(109, 'Isabella Martinez', 'Netbanking', 'Portland'),
(110, 'Jackson Brooks', 'Credit Card', 'Portland');

SELECT * FROM PaymentCount;

SELECT Mode,COUNT(Mode) FROM PaymentCount GROUP BY Mode;

--NEXT ' Having Clause'