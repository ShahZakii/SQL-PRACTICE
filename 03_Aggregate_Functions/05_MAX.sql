-- Definition:-

-- MAX() is an SQL aggregate function that returns the largest value from a column.

-- It is useful for finding:

-- 1 .Highest salary
-- 2 .Highest marks
-- 3. Most expensive product
-- 4. Latest date
-- 5. Maximum quantity sold

--  Syntax:
-- SELECT MAX(column_name)
-- FROM table_name;

-- ============================================
--  Examples
-- ============================================

-- 1. Find maximum salary
SELECT MAX(salary)
FROM employees;

-- 2. Find maximum age
SELECT MAX(age)
FROM employees;

-- 3. Using WHERE condition
SELECT MAX(salary)
FROM employees
WHERE department = 'IT';

-- ============================================
--  Using MAX() with GROUP BY
-- ============================================

-- Find highest salary in each department
SELECT department, MAX(salary)
FROM employees
GROUP BY department;

-- ============================================
--  Using MAX() with HAVING
-- ============================================

-- Show departments where max salary > 50000
SELECT department, MAX(salary)
FROM employees
GROUP BY department
HAVING MAX(salary) > 50000;

-- ============================================
--  Key Points
-- ============================================

-- 1. MAX() ignores NULL values
-- 2. Works with numbers, dates, and text
-- 3. Returns a single value
-- 4. Often used with GROUP BY

-- ============================================
--  Real-Life Use Cases
-- ============================================

-- 1. Highest salary in company
-- 2. Latest order date
-- 3. Most expensive product

-- Example:
SELECT MAX(price)
FROM products;
