-- Table related queries

-- Table related queries are those queries that helps us to change,modify or delete the table.
-- ALTER (to change the schema)

-- ADD column
ALTER TABLE table_name
ADD COLUMN column_name datatype constraint;

-- DROP column
ALTER TABLE table_name
DROP COLUMN column_name;

-- RENAME table
ALTER TABLE table_name
RENAME TO new_table_name;

-- CHANGE column (Rename column)
ALTER TABLE table_name
CHANGE COLUMN old_name new_name new_data_type new_constraint;

-- MODIFY column (modify datatype\constraint)
ALTER TABLE table_name
MODIFY COLUMN col_name new_data_type new_constraint;

-- TRUNCATE (to delete table data)
TRUNCATE TABLE table_name;

-- EXAMPLE:-

-- id	  name	  marks   grade
-- 1	  Aman	   78        C
-- 2	  Riya	   90        A
-- 3	  Kunal	   65        D

-- ADD COLUMN
ALTER TABLE student
ADD COLUMN age INT DEFAULT 19;

-- DROP COLUMN
ALTER TABLE student
DROP COLUMN grade;
