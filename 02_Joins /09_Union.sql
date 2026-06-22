-- UNION
-- It is used to combine the result set of two or more SELECT statement.
-- It gives umoqie record.

-- Key Points:

-- 1. All SELECT statements must have:
-- 2. Same number of columns
-- 3. Similar data types
-- 4. Same column order
-- 5. Removes duplicate records by default
-- To include duplicates, use UNION ALL

-- Syntax:-
SELECT * 
FROM table1
UNION
SELECT * 
FROM table2;

-- Example:
SELECT name FROM Students
UNION
SELECT name FROM Teachers;

-- 👉 This will return a list of unique names from both tables.

UNION ALL (with duplicates)
SELECT name FROM Students
UNION ALL
SELECT name FROM Teachers;
