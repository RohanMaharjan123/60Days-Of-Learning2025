# Day 15 of 60DaysOfLearning2025

## ✅ What I Did

- Started learning **SQL (Structured Query Language)**.
- Understood and revised the basic syntax, structure, and key operations used to interact with relational databases.
- Practiced key commands to create, retrieve, and manipulate data in tables.

### 📘 Key SQL Concepts & Commands

| Command                          | Description                                           |
|----------------------------------|-------------------------------------------------------|
| `CREATE TABLE`                   | Defines a new table in the database                  |
| `INSERT INTO`                    | Adds data to a table                                 |
| `SELECT`                         | Retrieves data from a table                          |
| `WHERE`                          | Filters records based on condition                   |
| `UPDATE`                         | Modifies existing data in a table                    |
| `DELETE`                         | Removes data from a table                            |
| `DROP TABLE`                     | Deletes a table and all its data                     |
| `ALTER TABLE`                    | Modifies a table's structure (add/remove columns)    |
| `ORDER BY`                       | Sorts result set based on one or more columns        |
| `GROUP BY`                       | Groups result set rows that have the same values     |

### 🧠 Learning Summary

- SQL is essential for querying and managing data stored in **relational databases**.
- Commands like `SELECT`, `INSERT`, `UPDATE`, and `DELETE` form the CRUD foundation.
- Learned about constraints, keys (primary/foreign), and table relationships.

```sql
-- ✅ Create a table
CREATE DATABASE mydatabase;

use mydatabase;

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10,2)
);

--  Insert data
INSERT INTO Employees (id, name, position, salary)
VALUES (1, 'John Doe', 'Manager', 60000.00);

-- Display all records
SELECT * FROM Employees;

-- Filter with WHERE
SELECT * FROM Employees
WHERE salary > 50000;

--  Update a record
UPDATE Employees
SET salary = 65000
WHERE id = 1;

--  Delete a record
DELETE FROM Employees
WHERE id = 1;

--  Count rows
SELECT COUNT(*) FROM Employees;

--  Sort data
SELECT * FROM Employees
ORDER BY salary DESC;

--  Add new column
ALTER TABLE Employees
ADD department VARCHAR(50);

--  Drop table
DROP TABLE Employees;
```

### 📚 Resource

- [GeeksforGeeks – SQL Tutorial](https://www.geeksforgeeks.org/sql-tutorial/)  
  [Citation: geeksforgeeks.org](https://www.geeksforgeeks.org/sql-tutorial/)

`60DaysOfLearning` `LearningWithLeapfrog` `RDBMS`  `Query`  `Day15` `SQL`
