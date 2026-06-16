-- LEFT EXCLUSIVE JOIN

-- A LEFT EXCLUSIVE JOIN returns only those records from the left table that do NOT have matching records from the right table.

-- Syntax:-
SELECT *
FROM table1 as t1
LEFT JOIN table2 as t2
ON t1.column_name = t2.column_name
WHERE t2.column_name IS NULL;

-- Example:
-- Table1 (Students)
id	name
1    A
2 	 B
3 	 C

-- Table2 (Marks)
id	marks
1	   90
2	   80

-- Query:
SELECT *
FROM Students s
LEFT JOIN Marks m
ON s.id = m.id
WHERE m.id IS NULL;

-- Output:
id	name
3	   C

-- Key Points:
-- 1. Uses LEFT JOIN + WHERE right_table.column IS NULL
-- 2. Returns non-matching rows from left table only
-- 3. Useful for:
-- * Finding missing data
-- * Identifying unmatched records
