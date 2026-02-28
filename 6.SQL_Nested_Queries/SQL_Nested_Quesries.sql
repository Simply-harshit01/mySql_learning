USE company;
SELECT * FROM employee;

-- emp salary > min_salary
SELECT name,salary
FROM employee
WHERE salary>(SELECT MIN(salary)
FROM employee);



-- min age
SELECT MIN(age)
FROM employee;

-- emp with min age
SELECT name ,age
FROM employee
WHERE age= (SELECT MIN(age)
FROM employee);
 
 

 SELECT MIN(age)AS im FROM employee;
 
  -- emp with age > min age
 SELECT name,age
 FROM employee emp,(SELECT MIN(age)AS min_age FROM employee) AS min_age_qry
 WHERE emp.age>min_age_qry.min_age;
 
 -- emp age and avg age
 SELECT age,(SELECT AVG(age)  FROM employee)AS avg_age FROM employee;
 
 
 
-- Nth Highest Salary here 3rd
SELECT distinct salary
FROM employee
ORDER BY salary DESC
LIMIT 2,1;               -- write N-1,1 means N-1 skip krne ke baad 1 lo


-- VIEW -> virtual table for data security,data abstraction
USE company;
CREATE VIEW employeeView AS
SELECT id,name,city FROM employee;

SELECT id FROM employeeView;
