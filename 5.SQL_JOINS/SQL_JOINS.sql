CREATE DATABASE ecom;
USE ecom;

CREATE TABLE customer(
id INT,
name VARCHAR(50)
);

-- FILL DETAILS
INSERT INTO customer(id,name)
VALUES
(1,"Rahul"),
(2,"Afsara"),
(3,"Abhimanyu"),
(4,"Aditya"),
(5,"Raj");

SELECT * FROM customer;

USE ecomm;

CREATE TABLE orders(
id INT PRIMARY KEY,
ordername VARCHAR(50));

INSERT INTO orders(id,ordername)
VALUES
(2,"Fruit"),
(3,"Ball"),
(4,"Utensil");

SELECT * FROM orders;

-- INNER JOIN

SELECT * 
FROM customer
INNER JOIN orders
ON customer.id=orders.id;

-- left outer join
SELECT *
FROM customer
LEFT JOIN orders
ON customer.id=orders.id;

-- RIGHT OUTER JOIN
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id=orders.id;

-- full join/full outer join
SELECT *
FROM customer
LEFT JOIN orders
ON customer.id=orders.id
UNION
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id=orders.id;

-- CROSS JOIN (LIKE CROSS PRODUCT)
SELECT *
FROM customer
CROSS JOIN orders; 


-- SELF JOIN
CREATE DATABASE School2;
USE school2;

CREATE TABLE Student(
s_id INT,
name VARCHAR(50),
mentor_id int);

INSERT INTO Student(s_id,name,mentor_id)
VALUES
(1,"RAM",NULL),
(2,"RAHUL",1),
(3,"RITI",1),
(4,"RIYA",3);

SELECT * FROM student;
-- self join
SELECT S1.name as mentor_id,S2.name as student_name
FROM Student as S1
JOIN Student as S2
WHERE S1.s_id=S2.mentor_id;

-- EXCLUSIVE JOIN
USE ecom;
-- LEFT EXCL JOIN
SELECT *
FROM customer
LEFT JOIN orders
ON customer.id=orders.id
WHERE orders.id IS NULL;

-- RIGHT EXCL JOIN
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id=orders.id
WHERE customer.id IS NULL;

-- FULL EXCL JOIN
SELECT *
FROM customer
LEFT JOIN orders
ON customer.id=orders.id
WHERE orders.id IS NULL
UNION
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id=orders.id
WHERE customer.id IS NULL;


-- UNION    (COMBINE + REMOVE DUPLICATES)
SELECT id FROM customer
UNION
SELECT id FROM orders;

-- UNION ALL  (INCLUDES DUPLICATES)
SELECT id FROM customer
UNION ALL
SELECT id FROM orders;