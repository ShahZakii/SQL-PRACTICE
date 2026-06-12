-- JOINS.
-- Join is used to combine rows from two or more tables
-- It combine rows based on a related column between them.

-- 1. INNER JOIN.
-- It return records that have matching values in both tables.

-- Syntax:- 
SELECT *
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

Example:- 

SELECT *
FROM student as s
INNER JOIN course as c
ON s.id = c.id;
