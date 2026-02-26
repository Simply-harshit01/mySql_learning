-- 1. make a database for a company xyz
CREATE DATABASE xyz;
USE xyz;

-- 2. makw an employee table in the xyz database
CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
city VARCHAR(50),
salary INT);

-- 3. Fill details in the table

INSERT INTO employee(id,name,age,department,city,salary)
VALUES
(1,"Rahul",25,"IT","Mumbai",1500),
(2,"Afsara",26,"HR","Pune",2000),
(3,"Abhimanyu",27,"IT","Mumbai",2500),
(4,"Aditya",25,"Marketing","Surat",2400),
(5,"Raj",25,"Finance","Indore",1500);

-- 4. see all the data
SELECT * FROM employee;

SET SQL_SAFE_UPDATES=0;


-- 5. Update HR dep salary == 50000
UPDATE employee
SET salary=50000
WHERE department="HR";
SELECT * FROM employee;

--  update the name of empployee from 'Raj' to 'Raaj'

UPDATE employee
SET name="Raaj"
WHERE name="Raj";
SELECT * FROM employee;


-- 6. Delete Command - all recordof employee of IT department
DELETE FROM employee
WHERE department="IT";
SELECT * FROM employee;

-- Delete record of employee name 'Raaj'
DELETE FROM employee
WHERE name="Raaj";

INSERT INTO employee(id,name,age,department,city,salary)
VALUES
(1,"Rahul",25,"IT","Mumbai",1500),
(3,"Abhimanyu",27,"IT","Mumbai",2500),
(5,"Raj",25,"Finance","Indore",1500);

-- 7. Retrieve data using SELECT COMMAND
SELECT id,department FROM employee;
SELECT * FROM employee;

-- 8. Filtering data using WHERE command
SELECT * FROM employee 
WHERE age>25;

-- 9. DDL-ALTER command

-- ADD new column 'dob'
ALTER TABLE employee
ADD dob VARCHAR(20) DEFAULT 'NP';

-- DROP COMMAND
ALTER TABLE employee
DROP COLUMN dob;

-- MODIFY COMMAND (TO CHNAGE THE  DATA TYPE OF COLUMN)
ALTER TABLE employee
MODIFY age VARCHAR(30);

-- CHANGE COMMAND (TO CHNAGE THE NAME OR DATA TYPE OF COLUMN)
ALTER TABLE employee
CHANGE age emp_age VARCHAR(30);

-- RENAME COMMAND (TO CHNAGE THE NAME OF COLUMN/TABLE/CONSTRAINTS)
ALTER TABLE employee
RENAME COLUMN emp_age TO age;

-- RENAMING table from employee to employees 
RENAME TABLE employee TO employees;
SELECT * FROM employeeS

-- RENAMING DATABASE 
RENAME DATABASE oldname TO newname; 

-- 10. DDL-TRUNCATE COMMAND
CREATE TABLE salarydetails(
salary INT,
increment INT);
INSERT INTO salarydetails(salary,increment)
VALUES
(1200,6),
(1500,4);
SELECT * FROM salarydetails;
TRUNCATE TABLE salarydetails;


-- 11. DISTINCT KEYWORD to select uniques records/rows
SELECT DISTINCT department FROM employees;
SELECT DISTINCT department,age FROM employees;
