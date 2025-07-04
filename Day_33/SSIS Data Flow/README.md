# 📘 Day 33 of #60DaysOfLearning2025

## Topic: SSIS Data Flow

Today, I explored **SSIS Data Flow**, understanding how it enables **data extraction, transformation, and loading (ETL)** in structured pipelines within the **MSBI ecosystem**.

---

## 🔗 Resource

- [SQLShack – SQL Server Integration Services (SSIS) Data Flow](https://www.sqlshack.com/sql-server-integration-services-ssis-data-flow/)

---

## 🧠 What I Learned

### 🚀 What is the Data Flow Task in SSIS?

The **Data Flow Task** is the **core of ETL in SSIS**, allowing data to flow from source(s) → transformations → destination(s).

---

### ⚙️ Core Components of Data Flow

| Component Type      | Examples / Purpose                                      |
|---------------------|----------------------------------------------------------|
| **Data Sources**    | OLE DB Source, Flat File Source, Excel Source          |
| **Transformations** | Data Conversion, Conditional Split, Merge, Derived Column |
| **Data Destinations** | OLE DB Destination, Flat File Destination, Excel Destination |

---

### 🗂️ How SSIS Data Flow Works

✅ **Extraction:** Connects to data sources like SQL Server, CSV, Excel, APIs to fetch data.  
✅ **Transformation:** Applies operations such as:

- Data cleansing and validation
- Splitting and merging datasets
- Type conversion
- Calculated columns using Derived Column transformation

✅ **Loading:** Inserts processed data into target destinations (Data Warehouse, tables, flat files).

---

## 🛠️ Practice Plan

✅ Create a **sample SSIS Data Flow:**

1️⃣ Use **Flat File Source** to read a `sales_data.csv`.  
2️⃣ Apply **Data Conversion** to ensure data type consistency.  
3️⃣ Use **Derived Column** to calculate `TotalPrice = Quantity * UnitPrice`.  
4️⃣ Load data into a SQL Server table `dbo.SalesData` using **OLE DB Destination**.

✅ Add **Data Viewer** in the pipeline to monitor data as it flows through the transformations.

---

## 💡 Key Takeaways

✅ **Data Flow Task is the backbone of ETL in SSIS.**  
✅ Modular design allows complex pipelines with minimal code.  
✅ Real-time data monitoring helps debug and optimize pipelines.  
✅ A well-designed data flow ensures **clean, reliable data in the warehouse**.

---

`60DaysOfLearning` `LearningWithLeapfrog` `sql` `Day33` `SSIS` `DataFlow` `ETL` `DataWarehouse` `DataCleansing` `DataTransformation` `DataLoading`
