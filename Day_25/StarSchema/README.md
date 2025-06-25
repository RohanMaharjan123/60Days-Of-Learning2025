# 📘 Day 25 of #60DaysOfLearning2025

## Topic: Star Schema in Data Warehouse Model

Today I explored the **Star Schema** — a fundamental data warehouse modeling approach that simplifies complex queries and improves performance in analytical databases.

---

## 🔗 Resource

- [GeeksforGeeks – Star Schema in Data Warehouse Model](https://www.geeksforgeeks.org/star-schema-in-data-warehouse-model/)

---

## 🧠 What I Learned

### 🌟 What is a Star Schema?

A **Star Schema** is a **dimensional modeling technique** where a central **Fact Table** is connected to multiple **Dimension Tables** — resembling a star.

- **Fact Table**: Contains quantitative data for analysis (e.g., Sales, Revenue).
- **Dimension Tables**: Contain descriptive attributes (e.g., Date, Product, Customer).

---

## 📐 Schema Structure

---

## 🧪 Practice Tables

```sql
-- Fact Table
CREATE TABLE SalesFact (
    SaleID INT PRIMARY KEY,
    DateID INT,
    CustomerID INT,
    ProductID INT,
    StoreID INT,
    SalesAmount DECIMAL(10,2)
);

-- Dimension Tables
CREATE TABLE DateDim (
    DateID INT PRIMARY KEY,
    Date DATE,
    Month VARCHAR(20),
    Year INT
);

CREATE TABLE CustomerDim (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(100)
);

CREATE TABLE ProductDim (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(100)
);

CREATE TABLE StoreDim (
    StoreID INT PRIMARY KEY,
    StoreName VARCHAR(100),
    Region VARCHAR(100)
);
```

`60DaysOfLearning` `LearningWithLeapfrog` `sql`  `Query`  `Day25` `StarSchema`
