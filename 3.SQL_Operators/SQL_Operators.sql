CREATE DATABASE company;
USE company;
CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
city VARCHAR(50),
salary INT);

INSERT INTO employee(id,name,age,department,city,salary)
VALUES
(1,"Rahul",25,"IT","Mumbai",1500),
(2,"Afsara",26,"HR","Pune",2000),
(3,"Abhimanyu",27,"IT","Mumbai",2500),
(4,"Aditya",25,"Marketing","Surat",2400),
(5,"Raj",25,"Finance","Indore",1500);

SELECT * FROM employee;

-- AND OPERATOR
SELECT * FROM employee
WHERE age>20 AND department="IT";

-- OR OPERATOR
SELECT * FROM employee
WHERE age>20 OR department="IT";

-- NOT Operator
SELECT * FROM employee
WHERE department NOT IN ("IT","HR");

-- IN Operator
SELECT * FROM employee
WHERE department  IN ("IT","HR");

-- IS NULL / NOT NULL Operator
SELECT * FROM employee
WHERE department IS NOT NULL;

-- Like Operator %
SELECT * FROM employee
WHERE name LIKE "A%" ;

-- Like Operator _
SELECT * FROM employee
WHERE name LIKE "_A%" ;

-- BETWEEN Operator 
SELECT * FROM employee
WHERE salary BETWEEN 1200 AND 1500 ;