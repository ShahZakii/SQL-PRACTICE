-- SQL HAVING Clause

-- Definition:
-- The HAVING clause is used to filter grouped data after applying the GROUP BY clause.

-- It works with aggregate functions like COUNT, SUM, AVG, etc.

-- Syntax:
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;

-- Example:
SELECT city, COUNT(*)
FROM students
GROUP BY city
HAVING COUNT(*) > 2;

-- Returns cities having more than 2 students

-- Example with SUM:
SELECT department, SUM(salary)
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;

-- Departments with total salary > 100000

-- Using WHERE + HAVING Together
SELECT city, COUNT(*)
FROM students
WHERE age > 18
GROUP BY city
HAVING COUNT(*) > 2;

-- Multiple Conditions:
SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000 AND COUNT(*) > 5;

