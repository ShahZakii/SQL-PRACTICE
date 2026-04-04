-- =========================================
-- 📌 WHERE CLAUSE IN SQL
-- =========================================

-- 🔹 Definition:
-- WHERE clause is used to filter records (rows)
-- based on a specified condition.

-- It is used with SELECT, UPDATE, DELETE statements.

-- =========================================
-- 🔹 Basic Syntax
-- =========================================
SELECT column_name
FROM table_name
WHERE condition;

-- =========================================
-- 🔹 Example 1: Basic Condition
-- =========================================
SELECT *
FROM employees
WHERE salary > 50000;

-- 👉 Returns employees having salary greater than 50000


-- =========================================
-- 🔹 Comparison Operators
-- =========================================
-- =   (Equal)
-- >   (Greater than)
-- <   (Less than)
-- >=  (Greater than or equal)
-- <=  (Less than or equal)
-- <>  or != (Not equal)

SELECT *
FROM employees
WHERE department = 'IT';


-- =========================================
-- 🔹 Logical Operators
-- =========================================

-- AND (both conditions must be true)
SELECT *
FROM employees
WHERE department = 'IT' AND salary > 40000;

-- OR (at least one condition must be true)
SELECT *
FROM employees
WHERE department = 'HR' OR department = 'Finance';

-- NOT (negates the condition)
SELECT *
FROM employees
WHERE NOT department = 'IT';


-- =========================================
-- 🔹 BETWEEN Operator
-- =========================================
-- Used to filter values within a range (inclusive)

SELECT *
FROM employees
WHERE salary BETWEEN 30000 AND 60000;


-- =========================================
-- 🔹 IN Operator
-- =========================================
-- Used to match multiple values

SELECT *
FROM employees
WHERE department IN ('HR', 'IT', 'Finance');


-- =========================================
-- 🔹 LIKE Operator (Pattern Matching)
-- =========================================
-- %  → any number of characters
-- _  → single character

SELECT *
FROM employees
WHERE name LIKE 'A%';   -- starts with A

SELECT *
FROM employees
WHERE name LIKE '%a';   -- ends with a


-- =========================================
-- 🔹 IS NULL Operator
-- =========================================
-- Used to check NULL values

SELECT *
FROM employees
WHERE commission IS NULL;

SELECT *
FROM employees
WHERE commission IS NOT NULL;


-- =========================================
-- 🔹 WHERE with UPDATE
-- =========================================
UPDATE employees
SET salary = 60000
WHERE id = 101;

-- ⚠️ Without WHERE, all rows will be updated!


-- =========================================
-- 🔹 WHERE with DELETE
-- =========================================
DELETE FROM employees
WHERE id = 101;

-- ⚠️ Without WHERE, all records will be deleted!


-- =========================================
-- 🔹 Important Points
-- =========================================
-- 1. WHERE filters rows before result is returned
-- 2. Cannot use aggregate functions directly (use HAVING instead)
-- 3. Works with SELECT, UPDATE, DELETE
-- 4. Always be careful while using UPDATE/DELETE


-- =========================================
-- 🔹 Practice Query
-- =========================================
SELECT name, salary
FROM employees
WHERE department = 'IT'
AND salary > 50000;
