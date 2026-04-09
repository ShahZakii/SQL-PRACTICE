-- SQL WHERE Clause (Notes)

-- Definition:
-- The WHERE clause is used to filter records and retrieve only those rows that satisfy a specified condition.

---

-- Syntax:
SELECT column1, column2
FROM table_name
WHERE condition;
---

-- Example:
SELECT * FROM students
WHERE age > 18;

-- Returns students whose age is greater than 18

---

-- Using Operators:

-- Comparison Operators:

-- =    (equal)
-- !=   (not equal)
-- >    (greater than)
-- <    (less than)
-- >=   (greater than or equal)
-- <=   (less than or equal)

SELECT * FROM employees
WHERE salary >= 50000;

---

-- Logical Operators:

-- AND   (all conditions must be true)
-- OR    (any condition can be true)
-- NOT   (negates condition)

SELECT * FROM students
WHERE age > 18 AND city = 'Delhi';

---

-- IN Operator:

SELECT * FROM students
WHERE city IN ('Delhi', 'Mumbai');

---

-- BETWEEN Operator:

SELECT * FROM employees
WHERE salary BETWEEN 30000 AND 60000;

---

-- LIKE Operator (Pattern Matching):

SELECT * FROM users
WHERE name LIKE 'A%';

-- Names starting with 'A'

---

-- IS NULL:

SELECT * FROM users
WHERE email IS NULL;

---

-- IS NOT NULL:

SELECT * FROM users
WHERE email IS NOT NULL;

---

-- Important Points:
-- 1. WHERE filters rows before result is returned  
-- 2. Cannot be used with aggregate functions (use HAVING instead)  
-- 3. Works with SELECT, UPDATE, DELETE  

---

-- WHERE with UPDATE:

UPDATE students
SET age = 20
WHERE id = 1;

---

-- WHERE with DELETE:

DELETE FROM students
WHERE id = 1;

---
