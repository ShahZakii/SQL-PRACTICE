-- LIMIT_CLAUSE
-- Limit Clause is used to restrict the number of rows returned by a selected query.

-- It is commonly used when you want to:

-- a. Restrict the output to a certain limit.
-- b. Show only top N results.
-- c. Improve the performance of the query.

-- 1.Basic Syntax:
SELECT column_name
FROM table_name
LIMIT number_of_rows;

Example:-

SELECT * 
FROM student
LIMIT 3;
-- This query limit the number or rows to only 3.

-- 2. Limit with Order By Clause

-- LIMIT is generally used with Order by clause

SELECT name, marks 
FROM student
ORDER BY marks DESC
LIMIT 3;

-- 3. LIMIT with OFFSET
-- OFF SET is used to skip rows before starting LIMIT rows.

SELECT column_name
FROM student
LIMIT number_of_rows OFFSET number_of_rows_to_skip;

-- 4. Example Table

id	 name	     salary
1	   Aman	     50000
2	   Riya	     60000
3  	 Kunal	   55000
4	   Simran	   70000

-- Query

SELECT *
FROM employees
LIMIT 2;
