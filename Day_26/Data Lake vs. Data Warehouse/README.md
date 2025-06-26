# 📘 Day 26 of #60DaysOfLearning2025

## Topic: Data Lake vs. Data Warehouse

Today I explored the key differences between **Data Lakes** and **Data Warehouses**, two essential components in big data and analytics infrastructure.

---

## 🔗 Resource

- [Simplilearn – Data Lake vs. Data Warehouse](https://www.simplilearn.com/tutorials/data-engineering-tutorial/data-lake-vs-data-warehouse)

---

## 🧠 What I Learned

### 🏞️ Data Lake

A **Data Lake** is a centralized storage repository that holds vast amounts of raw data in its native format — structured, semi-structured, and unstructured.

- Schema-on-read
- Stores raw data (text, images, JSON, logs, etc.)
- Low-cost storage
- Used in data science, ML, and big data applications

---

### 🏛️ Data Warehouse

A **Data Warehouse** is a structured storage system that holds processed, filtered, and transformed data — typically used for business intelligence.

- Schema-on-write
- Stores processed and curated data
- High-performance for queries
- Used in BI, reporting, and dashboarding

---

## 🔄 Comparison Table

| Feature                | Data Lake                        | Data Warehouse                      |
|------------------------|----------------------------------|-------------------------------------|
| Data Type              | Raw (structured, unstructured)   | Processed (structured only)         |
| Storage Cost           | Low                              | High                                |
| Schema                 | Schema-on-read                   | Schema-on-write                     |
| Performance            | Slower for analytics             | Fast for analytics                  |
| Use Case               | ML, data exploration, big data   | BI, reporting, OLAP                 |
| Technologies           | Hadoop, Spark, AWS S3, Azure DL  | Redshift, BigQuery, Snowflake       |

---

## 🧪 Real-World Insight

> Data Lakes are flexible and scalable for **raw data ingestion**, while Data Warehouses provide **curated, reliable analytics** with faster response time.
> Many organizations now adopt a **Lakehouse** architecture to combine the flexibility of a data lake with the performance of a warehouse.

---

`60DaysOfLearning` `LearningWithLeapfrog` `sql` `Day26` `StarSchema` `DataLake` `DataWarehouse` `Lakehouse`
