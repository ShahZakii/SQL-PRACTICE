-- LEFT JOIN
-- It returns all records from the left table, and the matched records from the right table.

-- Basic Syntax:-
SELECT * 
FROM table1
LEFT JOIN table2
ON table1.col_name = table2.col_name;

-- Example:- 
SELECT * 
FROM student as s
LEFT JOIN course as c 
ON s.id = c.id;
