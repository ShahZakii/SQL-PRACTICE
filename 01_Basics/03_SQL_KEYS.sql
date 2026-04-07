-- 🔹 What are Keys?
-- Keys are used to identify records uniquely and create relationships between tables.

---

-- Types of Keys:

-- 1. PRIMARY KEY: A Primary Key is a column (or set of columns) that uniquely identifies each row in a table.
-- - Unique + Not Null  
-- - Only one per table  

```sql
id INT PRIMARY KEY
```

---

-- 2. FOREIGN KEY: A Foreign Key is a column that creates a link between two tables by referring to the Primary Key of another table.
-- - Connects two tables  
-- - Maintains relationship  

```sql
FOREIGN KEY (user_id) REFERENCES users(id)
```

---

-- 3. UNIQUE KEY: A Unique Key is a constraint that ensures all values in a column are unique (no duplicate values allowed).
-- - No duplicate values allowed  
-- - NULL allowed (usually)

```sql
email VARCHAR(100) UNIQUE
```

---

-- 4. COMPOSITE KEY: A Composite Key is a key formed by combining two or more columns to uniquely identify a row in a table.
-- - Combination of multiple columns  

```sql
PRIMARY KEY (user_id, product_id)
```

---

-- 5. CANDIDATE KEY: A Candidate Key is a column (or set of columns) that can uniquely identify each row in a table.
-- - All possible unique columns  
-- - Can become primary key  

---

-- 6. ALTERNATE KEY: An Alternate Key is a candidate key that is not selected as the Primary Key.
-- - Candidate keys not selected as primary key  

---

-- 7. SUPER KEY: A Super Key is any combination of columns that can uniquely identify a row in a table.
-- - Any column set that uniquely identifies rows  

---

-- Example:

```sql
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
```

---
