-- Right Exclusive Join
-- A Right exclusive join returns record only that are only in the right table.

-- Syntax:-
SELECT column_name
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name
WHERE table1.column_name IS NULL;

-- Example:
-- Table1 (Marks)
id	marks
1	   90
2	   80

-- Table2 (Students)
id	name
1    A
2 	 B
3 	 C

-- Query:
SELECT *
FROM Students AS s
RIGHT JOIN Marks AS m
ON s.id = m.id
WHERE S.id IS NULL;


-- Key Points:
-- 1. Uses RIGHT JOIN + WHERE left_table.column IS NULL
-- 2. Returns non-matching rows from right table only
-- 3. Useful for:
-- * Finding missing data
-- * Identifying unmatched records
