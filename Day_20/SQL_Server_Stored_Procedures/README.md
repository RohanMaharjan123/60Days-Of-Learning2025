# 📘 Day 20 of #60DaysOfLearning2025

## Topic: SQL Server Stored Procedures

Today I explored **Stored Procedures** in SQL Server, which are precompiled collections of one or more SQL statements. They help improve performance, reuse logic, and add a layer of abstraction.

---

## 🔗 Resource

- [SQL Server Tutorial – Stored Procedures](https://www.sqlservertutorial.net/sql-server-stored-procedures/)

---

## 🧠 What I Learned

### 📌 Key Concepts

| Concept           | Description                                                                            |
|-------------------|----------------------------------------------------------------------------------------|
| Stored Procedure  | A saved SQL script that can be reused by calling its name.                            |
| `CREATE PROCEDURE`| SQL keyword to define a new stored procedure.                                         |
| `EXEC`            | Executes a stored procedure.                                                          |
| Parameters        | Procedures can accept input parameters to work with dynamic data.                     |

---

## 🧪 Practice Examples

```sql
-- 1. Create a Simple Stored Procedure
CREATE PROCEDURE GetAllCustomers
AS
BEGIN
    SELECT * FROM Customers;
END;
```

```sql
EXEC GetAllCustomers;
```

```sql
CREATE PROCEDURE GetCustomerByID
    @CustomerID INT
AS
BEGIN
    SELECT * FROM Customers WHERE CustomerID = @CustomerID;
END;
```

```sql
EXEC GetCustomerByID @CustomerID = 1;
```
