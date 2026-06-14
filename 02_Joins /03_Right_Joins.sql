-- RIGHT JOINS
-- It returns record of the right table and matched records from the left table.

-- Basic Syntax:-
SELECT * 
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

-- Example:-
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;
