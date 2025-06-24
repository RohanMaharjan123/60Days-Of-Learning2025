# 📘 Day 24 of #60DaysOfLearning2025

## Topic: ETL Process in Data Warehousing

Today I learned about the **ETL (Extract, Transform, Load)** process — a vital pipeline for moving data from various sources into a data warehouse for analytics and business intelligence.

---

## 🔗 Resource

- [GeeksforGeeks – ETL Process in Data Warehouse](https://www.geeksforgeeks.org/etl-process-in-data-warehouse/)

---

## 🧠 What I Learned

### 🔄 What is ETL?

ETL is a three-phase process used to extract data from source systems, transform it into a consistent format, and load it into a data warehouse.

| Phase     | Description                                                                 |
|-----------|-----------------------------------------------------------------------------|
| Extract   | Pulling data from multiple heterogeneous sources (databases, APIs, files)   |
| Transform | Cleaning, converting, deduplicating, and applying business rules to data    |
| Load      | Inserting the transformed data into the target data warehouse system        |

---

### 🧩 Components & Tools

- **Data Sources:** SQL/NoSQL DBs, flat files, web APIs, ERP/CRM systems
- **ETL Tools:**  
  - Open-source: Apache NiFi, Talend, Airbyte  
  - Enterprise: SSIS (SQL Server Integration Services), Informatica, AWS Glue

---

## 🧪 Practice/Conceptual Flow

Here’s a simplified mockup of the ETL process:

```pseudo
Step 1: Extract
  Connect to SQL database
  Run SELECT queries
  Export to CSV

Step 2: Transform
  Clean missing values
  Standardize date formats
  Normalize country/state names

Step 3: Load
  Insert cleaned data into fact and dimension tables
```

```sql
-- Example: Extract
SELECT CustomerID, CustomerName, CreatedAt FROM CRM_Customers;

-- Transform (Example with CASE & formatting)
SELECT 
  CustomerID, 
  UPPER(CustomerName) AS CleanName,
  FORMAT(CreatedAt, 'yyyy-MM-dd') AS CleanDate
FROM CRM_Customers;

-- Load into warehouse
INSERT INTO DW_Customers (ID, Name, JoinDate)
VALUES (CustomerID, CleanName, CleanDate);
```
