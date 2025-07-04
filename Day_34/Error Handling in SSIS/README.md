# 📘 Day 34 of #60DaysOfLearning2025

## Topic: Error Handling in SSIS

Today, I learned how to **implement error handling in SSIS (SQL Server Integration Services)** to ensure **robust, traceable, and reliable ETL pipelines**.

---

## 🔗 Resource

- [MSSQLTips – Handling Errors in SSIS](https://www.mssqltips.com/sqlservertip/3536/handling-errors-in-ssis/)

---

## 🧠 What I Learned

### 🚨 Why Error Handling is Important

✅ Prevents **pipeline crashes** during ETL due to data or connection issues.  
✅ Provides **traceability** for debugging data failures.  
✅ Allows handling **bad data separately** for later review.  
✅ Ensures **smooth, reliable ETL pipeline execution** in production.

---

### ⚙️ Methods of Error Handling in SSIS

#### 1️⃣ Event Handlers

- Use the **Event Handlers** tab in SSIS to capture:
  - `OnError`, `OnWarning`, `OnTaskFailed`, etc.
- Configure actions like logging, notifications, or custom logic when failures occur.

---

#### 2️⃣ Precedence Constraints

- Use **Success, Failure, Completion** constraints to control flow based on task results.
- Example:
  - If `Data Flow Task` fails → send an email notification.
  - On success → continue to the next ETL step.

---

#### 3️⃣ Error Outputs in Data Flow

- Most Data Flow components (e.g., Flat File Source, OLE DB Destination) support **redirecting error rows**.
- Configure error output to capture:
  - **Truncation errors**
  - **Data conversion errors**
  - **Constraint violations**
- Redirect failed rows to a **flat file or error table** for inspection.

---

### 🛠️ Practical Exercise

✅ Added **error output** to a Data Flow Task:

- Redirected rows with data type mismatches to `ErrorRows.csv`.
- Loaded valid data to the `SalesData` table.

✅ Configured **Event Handlers**:

- Used `OnError` to log error messages to a `SSIS_Logs` table.
- Added **email notification** on failure using `Send Mail Task`.

✅ Practiced using **precedence constraints** to handle failure vs. success paths cleanly.

---

## 💡 Key Takeaways

✅ Error handling is **non-negotiable in production ETL pipelines**.  
✅ Using **event handlers + error redirection** ensures failures are traceable.  
✅ Helps isolate bad data without stopping the pipeline.  
✅ Improves **data quality control** and operational reliability.

---

`60DaysOfLearning` `LearningWithLeapfrog` `sql` `Day34` `SSIS` `DataFlow` `ETL` `DataWarehouse` `DataCleansing` `DataTransformation` `DataLoading` `ErrorHandling` `EventHandlers` `PrecedenceConstraints` `ErrorOutputs` `DataFlowTask` `EmailNotification` `SSISLogs` `DataQualityControl` `OperationalReliability`
