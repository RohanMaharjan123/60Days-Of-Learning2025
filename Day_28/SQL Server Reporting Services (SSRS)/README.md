# 📘 Day 28 of #60DaysOfLearning2025

## Topic: SQL Server Reporting Services (SSRS)

Today, I explored **SSRS**, learning to **create, deploy, and manage mobile and paginated reports** to deliver actionable insights within an organization.

---

## 🔗 Resource

- [Microsoft Learn – Create, deploy, and manage mobile and paginated reports (SSRS)](https://learn.microsoft.com/en-us/sql/reporting-services/create-deploy-and-manage-mobile-and-paginated-reports-ssrs)

---

## 🧠 What I Learned

### 📊 What is SSRS?

**SQL Server Reporting Services (SSRS)** is a server-based report generating software system from Microsoft that enables:
✅ Report creation  
✅ Deployment to a report server/web portal  
✅ Management and scheduling of reports  
✅ Delivery in multiple formats (Excel, PDF, Web)

---

### 🗂️ Types of Reports

| Report Type         | Description                                           |
|---------------------|-------------------------------------------------------|
| Paginated Reports   | Pixel-perfect reports with detailed layouts for printing |
| Mobile Reports      | Responsive reports optimized for tablets/phones       |

---

## ⚙️ Workflow Overview

1️⃣ **Create**:
- Use **Report Builder** (paginated reports) or **Mobile Report Publisher** (mobile reports).
- Connect to data sources (SQL, Oracle, OLE DB, etc.).
- Design layouts with tables, charts, matrices.

2️⃣ **Deploy**:
- Publish to SSRS Web Portal.
- Set up data source connections and credentials.

3️⃣ **Manage**:
- Set permissions and roles for access control.
- Configure **subscriptions** for automated report delivery.
- Schedule report generation and delivery (daily, weekly, etc.).

---

## 🧪 Practice Plan

Although full practice requires a SQL Server and SSRS environment, conceptually:

✅ Create a **paginated report** to display `Product Sales by Region`.  
✅ Add a chart for visual insights.  
✅ Deploy it to your local SSRS server/web portal.  
✅ Configure a **subscription** to email the report as a PDF every Monday to your stakeholders.

---

## 💡 Benefits of SSRS

- Centralized reporting platform for consistent delivery.
- Supports scheduled and on-demand reporting.
- Export reports in multiple formats (PDF, Excel, CSV).
- Easily accessible via browser or mobile.

---

## 🧪 Practice Commands

While SSRS is GUI-based, I noted:

- Using **ReportServer database** to query report execution logs:

```sql
SELECT TOP 10
    UserName,
    ExecutionTime,
    ReportPath,
    Status,
    TimeDataRetrieval,
    TimeProcessing,
    TimeRendering
FROM ExecutionLog3
ORDER BY ExecutionTime DESC;
```

`60DaysOfLearning` `LearningWithLeapfrog` `sql` `Day28` `SQL` `SSRS`
