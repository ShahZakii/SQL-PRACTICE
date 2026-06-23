-- Definition
--SQL aggregate functions are functions that perform a calculation on a set of rows and return one summarized value.

-- For example, instead of viewing every product price, you can calculate the total, average, lowest, or highest price.

-- Common types:

-- 1. COUNT() — counts rows or values
-- 2. SUM() — adds numeric values
-- 3. AVG() — finds the average of numeric values
-- 4. MIN() — finds the smallest value
-- 5. MAX() — finds the largest value

-- Syntax:- 
SELECT AGGERATE FUNCTOIN(column_name)
FROM table_name;

-- COUNT() Function Examples

-- 1. Total number of rows
SELECT COUNT(*) 
FROM employees;

-- 2. Count of non-null values
SELECT COUNT(salary) 
FROM employees;

-- 3. Count distinct values
SELECT COUNT(DISTINCT department) 
FROM employees;

-- DISTINCT is used to remove duplicates from the table

-- 4. Using COUNT with condition
SELECT COUNT(*) 
FROM employees
WHERE salary > 50000;
