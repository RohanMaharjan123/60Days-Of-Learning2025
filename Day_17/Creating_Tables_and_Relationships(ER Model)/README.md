# 📘 Day 17 of #60DaysOfLearning2025

## Topic: SQL – Creating Tables

Today’s focus was learning how to create tables in SQL using `CREATE TABLE` along with common constraints like `PRIMARY KEY`, `NOT NULL`, `AUTO_INCREMENT`, and `FOREIGN KEY`.

---

## 🔗 Resource

- [W3Schools – SQL CREATE TABLE](https://www.w3schools.com/sql/sql_create_table.asp)

---

## 🧠 What I Learned

- Basic syntax for creating a table in SQL.
- Defining column data types: `INT`, `VARCHAR`, `DATE`, `DECIMAL`.
- Applying constraints like:
  - `PRIMARY KEY`
  - `NOT NULL`
  - `AUTO_INCREMENT`
  - `FOREIGN KEY`

---

## 🧪 Practice Code

```sql
-- Create a Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    ContactName VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50)
);
```

```sql
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100),
    SupplierID INT,
    CategoryID INT,
    Unit VARCHAR(50),
    Price DECIMAL(10, 2)
);
```

```sql
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
```

`60DaysOfLearning` `LearningWithLeapfrog` `sql`  `Query`  `Day17`
