-- Self Join
-- It is a regular join but the table is joined with itself.

-- Syntax:- 
SELECT a.name as manager_name, b.name
FROM table_name as a
JOIN table_name as b
ON a.id = b.manager_id;

-- Example:-
CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT 
);

INSERT INTO employee
(id,name,manager_id)
VALUES
(101, 'ADAM', 103),
(102, 'BOB', 104),
(103, 'CASEY', NULL),
(104, 'DONALD', 103);

SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

-- OUTPUT:-

-- Manager_name    Name
-- CASEY           ADAM
-- DONALD          BOB
-- CASEY           DONALD
