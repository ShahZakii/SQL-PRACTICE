-- SQL GROUP BY Clause:

-- Definition:
-- The GROUP BY clause is used to group rows that have the same values in specified columns into summary rows.

-- Mostly used with aggregate functions.

-- Syntax:
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;

-- Example:
SELECT city, COUNT(*)
FROM students
GROUP BY city;

-- Groups students by city and counts them

-- Common Aggregate Functions

COUNT() → counts rows  
SUM()   → total value  
AVG()   → average value  
MAX()   → highest value  
MIN()   → lowest value  

-- Example with SUM:
SELECT department, SUM(salary)
FROM employees
GROUP BY department;

-- Total salary per department

-- Example with AVG:
SELECT city, AVG(age)
FROM students
GROUP BY city;

-- Average age per city

-- Important Rules:
-- 1. All non-aggregated columns must be in GROUP BY  
-- 2. Used after FROM and WHERE  
-- 3. Used before HAVING and ORDER BY  

-- GROUP BY with WHERE:
SELECT city, COUNT(*)
FROM students
WHERE age > 18
GROUP BY city;

-- GROUP BY with HAVING:
SELECT city, COUNT(*)
FROM students
GROUP BY city
HAVING COUNT(*) > 2;

-- Filters grouped data

-- GROUP BY with ORDER BY:
SELECT city, COUNT(*)
FROM students
GROUP BY city
ORDER BY COUNT(*) DESC;

-- Multiple Columns:
SELECT city, gender, COUNT(*)
FROM students
GROUP BY city, gender;
