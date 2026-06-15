-- FULL JOIN
-- It return all records of the tables either it has matched records or not.

-- BASIC SYNTAX:-
SELECT * 
FROM table1 
LEFT JOIN table2
ON table.column_name = table.column_name
UNION
SELECT * 
FROM table1 
RIGHT JOIN table2
ON table.column_name = table.column_name

-- EXAMPLE:-
SELECT * 
FROM student as s 
LEFT JOIN course as c
ON s.column_name = c.column_name
UNION
SELECT * 
FROM student as s 
RIGHT JOIN course as c
ON s.column_name = c.column_name;
