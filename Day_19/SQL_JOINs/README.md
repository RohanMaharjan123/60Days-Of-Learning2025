# 📘 Day 19 of #60DaysOfLearning2025

## Topic: SQL JOINs – Combining Data from Multiple Tables

Today I explored different types of SQL JOINs which allow combining rows from two or more tables based on a related column.

---

## 🔗 Resource

- [W3Schools – SQL JOINs](https://www.w3schools.com/sql/sql_join.asp)

---

## 🧠 What I Learned

| JOIN Type        | Description                                                                 |
|------------------|-----------------------------------------------------------------------------|
| INNER JOIN       | Returns records with matching values in both tables                         |
| LEFT (OUTER) JOIN| Returns all records from the left table, and the matched ones from the right|
| RIGHT (OUTER) JOIN| Returns all records from the right table, and the matched ones from the left|
| FULL OUTER JOIN  | Returns all records when there is a match in one of the tables (not supported by all DBs)|

---

## 🧪 Practice Examples

Assume you have two tables:

```sql
-- Customers Table
CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(100)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    Product VARCHAR(100)
);
```
