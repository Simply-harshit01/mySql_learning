USE  company;

-- limit clause  RETURN top n rows/records

SELECT *  FROM employee
LIMIT 3 ;

-- order by clause BY DEFAULT ITS ASCENDING
SELECT * FROM employee
order by salary  ;

SELECT * FROM employee
order by salary DESC ;

-- PRACTICE QUESTION 

-- 1. employees id=1
SELECT * FROM employee
WHERE id=1;

-- 2. employee id=1 and city =mumabai
SELECT * FROM employee
WHERE id=1 AND city="Mumbai";

-- 3. employee salary>1200 and city= Mumbai
SELECT * FROM employee
WHERE salary>1200 AND city="Mumbai";

-- 4. employyes not from mumbai
SELECT * FROM employee
WHERE city NOT IN ("Mumbai");

-- 5. employees with max salary
SELECT * FROM employee
ORDER BY salary DESC LIMIT 1;

-- 6. 2 employess having max salary
SELECT * FROM employee
ORDER BY salary DESC LIMIT 2;



-- AGGREGATED FUNCTIONS



-- COUNT()
SELECT COUNT(salary) FROM employee;
SELECT COUNT(distinct salary) FROM employee;
SELECT COUNT(*) FROM employee;  
SELECT COUNT(*) AS A1,COUNT(salary) AS A2,COUNT(DISTINCT salary) AS A3 FROM employee;                 -- total records


-- SUM()
SELECT SUM(salary) FROM employee;
SELECT SUM( DISTINCT salary) FROM employee;

-- MIN AND MAX ()

SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;


-- group by ()

SELECT department ,count(*) A1,COUNT(salary) AS A2 , AVG(salary) AS A3    
FROM employee
GROUP BY department;

-- HAVING by()    checks condn for each group
SELECT department
FROM employee
GROUP BY department
HAVING AVG(salary)>1500;   -- having clause condn must be on aggregate function



-- PRACTICE QUESTION

-- 1. TOTAL NO OF EMPLOYEES IN EACH CITY
SELECT city ,COUNT(*) A1
FROM employee
GROUP BY city;

-- 2. MAX SALARY OF EMPLOYEE IN EACH CITY IN DESC ORDER
SELECT city , MAX(salary) AS A1
FROM employee
GROUP BY city
ORDER BY A1 DESC ;

-- 3. 
SELECT department, COUNT(name) AS A1
FROM employee
GROUP BY department
ORDER BY A1 DESC;

-- 4.
SELECT department ,AVG(salary) AS A1
FROM employee
GROUP BY department
HAVING A1>1200;
