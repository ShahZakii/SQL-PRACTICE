-- What are Data Types in SQL?
-- Data types define the type of data that can be stored in a column.

-- Categories of SQL Data Types:

-- 1. Numeric Data Types
-- Used to store numbers.

-- Data Type	Description:

-- 1. INT / INTEGER	Whole numbers
-- 2. SMALLINT	Smaller range of integers
-- 3. BIGINT	Large range integers
-- 4. DECIMAL(p,s)	Exact decimal values
-- 6. NUMERIC(p,s)	Same as DECIMAL
-- 7. FLOAT	Approximate decimal numbers
-- 8. DOUBLE	High precision floating point

-- Example:
salary DECIMAL(10,2),
age INT
  
-- 2. String (Character) Data Types
-- Used to store text.

-- Data Type	Description:
  
-- 1. CHAR(n)	Fixed-length string
-- 2. VARCHAR(n)	Variable-length string
-- 3. TEXT	Large text data

-- Exampls:
name VARCHAR(50),
gender CHAR(1)
  
-- 3. Date & Time Data Types
-- Used to store date and time values.

-- Data Type	Description:
  
-- 1. DATE	Stores date (YYYY-MM-DD)
-- 2. TIME	Stores time (HH:MM:SS)
-- 3. DATETIME	Date + time
-- 4. TIMESTAMP	Auto-updated date & time

-- Example:
-- YEAR	Stores year
-- dob DATE,
-- created_at TIMESTAMP
  
-- 4. Boolean Data Type
-- Used to store TRUE/FALSE values.

-- Data Type	Description:
  
-- 1. BOOLEAN / BOOL	True or False (1 or 0)

-- Example:  
-- is_active BOOLEAN
  
-- 5. Binary Data Types
-- Used to store binary data (files, images).

-- Data Type	Description:
  
-- 1. BLOB	Binary Large Object
-- 2. BINARY	Fixed-length binary
-- 3. VARBINARY	Variable-length binary

-- Example Table Using Data Types:
  
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    is_active BOOLEAN,
    created_at TIMESTAMP
);
