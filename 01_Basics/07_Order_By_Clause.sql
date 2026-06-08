-- ORDER BY CLAUSE
-- In SQL Order By clause helps to sort the query in ascending or descending order.
-- BY default:- Order by sort the query in ascending order (ASC).

-- Syntax:-
SELECT column1, column2
FROM table_name
ORDER BY column_name;

-- Sorting in ascending order (ASC)
SELECT name, marks
FROM student
ORDER BY marks ASC;

-- Sorting in descending order (DESC)
SELECT name, marks
FROM student
ORDER BY marks DESC;

-- Using ORDER BY with WHERE
SELECT name, marks
FROM student
WHERE marks > 80
ORDER BY marks DESC;

-- Using ORDER BY with LIMIT
SELECT name, marks
FROM student
ORDER BY DESC
LIMIT 3;

-- ORDERING BY Column position
SELECT name, marks
FROM student
ORDER BY 3 DESC;

-- ORDER BY with text data
SELECT name
FROM student
ORDER BY name;

-- Ordering by calculated values
SELECT name, marks, marks + 5 as updated_marks
FROM student
ORDER BY updated_marks DESC;

-- Example
-- id    name    marks
-- 101   Karan   85
-- 102   Arjun   75
-- 103   Juliet  99

-- Query 
SELECT * 
FROM student
ORDER BY marks DESC;
