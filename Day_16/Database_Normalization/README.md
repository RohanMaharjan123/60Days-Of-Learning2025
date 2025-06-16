#  Day 16: Database Normalization

## 📘 What I Learned

Database normalization is a technique to design relational database schemas efficiently by minimizing redundancy and dependency. It involves organizing data into multiple related tables.

## 🧱 Normal Forms Overview

| Normal Form | Rule                                                                 | Example Fix                                                             |
|-------------|----------------------------------------------------------------------|--------------------------------------------------------------------------|
| 1NF         | Eliminate repeating groups; use atomic (indivisible) values         | Split comma-separated columns into separate rows                        |
| 2NF         | Be in 1NF + remove partial dependencies (only applies to composite PKs) | Separate out data only dependent on part of composite key               |
| 3NF         | Be in 2NF + remove transitive dependencies                          | Move derived or dependent data to a separate table                      |
| BCNF        | Stronger version of 3NF                                              | Every determinant is a candidate key                                   |

## 🛠 Practice Exercises

### ❓ Scenario

You have the following unnormalized table:

| OrderID | CustomerName | Product     | Quantity |
|---------|--------------|-------------|----------|
| 1       | Alice        | Apple       | 2        |
| 1       | Alice        | Banana      | 1        |
| 2       | Bob          | Carrot      | 4        |

### ✅ Normalize to 1NF

Split multiple product entries:

| OrderID | CustomerName | Product     | Quantity |
|---------|--------------|-------------|----------|
| 1       | Alice        | Apple       | 2        |
| 1       | Alice        | Banana      | 1        |
| 2       | Bob          | Carrot      | 4        |

### ✅ Then to 2NF

Separate customer info:

### Orders Table

| OrderID | CustomerID |
|---------|------------|
| 1       | C01        |
| 2       | C02        |

### Customers Table

| CustomerID | CustomerName |
|------------|--------------|
| C01        | Alice        |
| C02        | Bob          |

### OrderDetails Table

| OrderID | Product | Quantity |
|---------|---------|----------|
| 1       | Apple   | 2        |
| 1       | Banana  | 1        |
| 2       | Carrot  | 4        |

---

## 📚 Resource

- [Database Normalization – DatabaseStar](https://www.databasestar.com/database-normalization/)

## 💻 SQL Normalization Practice

### Create Unnormalized Table

```sql
CREATE TABLE UnnormalizedOrders (
    OrderID INT,
    CustomerName VARCHAR(100),
    Products VARCHAR(255), -- "Apple,Banana"
    Quantities VARCHAR(100) -- "2,1"
);
```

```sql
CREATE TABLE Orders1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100),
    Quantity INT
);

-- Insert normalized rows
INSERT INTO Orders1NF VALUES (1, 'Alice', 'Apple', 2);
INSERT INTO Orders1NF VALUES (1, 'Alice', 'Banana', 1);
INSERT INTO Orders1NF VALUES (2, 'Bob', 'Carrot', 4);
```

```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
```

`60DaysOfLearning` `LearningWithLeapfrog` `sql`  `Query`  `Day16` `normalization`
