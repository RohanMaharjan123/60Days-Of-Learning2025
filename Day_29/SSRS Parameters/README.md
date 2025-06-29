# 📘 Day 29 of #60DaysOfLearning2025

## Topic: SSRS Parameters

Today, I learned how to use **Parameters in SSRS** to make reports **dynamic, interactive, and customizable** for end-users, allowing filtered and targeted reporting.

---

## 🔗 Resource

- [SQLShack – SQL Server Reporting Services (SSRS) Parameters](https://www.sqlshack.com/sql-server-reporting-services-ssrs-parameters/)

---

## 🧠 What I Learned

### 🎛️ What are Parameters in SSRS?

**Parameters** in SSRS enable users to filter, customize, and control report data at runtime without modifying the underlying report design.

---

### 🚀 Benefits of Using Parameters

✅ Interactive reports for end-users.  
✅ Improved performance by filtering data before rendering.  
✅ Enables **linked reports** with different parameter values.  
✅ Supports **cascading parameters** (dependent dropdowns).

---

### ⚙️ Types of Parameters

- **Single-value Parameters** – e.g., select one region.  
- **Multi-value Parameters** – e.g., select multiple product categories.  
- **Cascading Parameters** – e.g., Country → State → City.

---

## 🛠️ Practical Exercise

1️⃣ Created a paginated `Sales by Region` report.  
2️⃣ Added a **parameter** `@Region`:

- Data type: Text
- Available values: Queried from `Region` table.

3️⃣ Modified dataset query:

```sql
SELECT SalesDate, Region, Amount
FROM Sales
WHERE Region = @Region
```

`60DaysOfLearning` `LearningWithLeapfrog` `sql` `Day29` `SQL` `SSRS`
