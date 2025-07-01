# 📘 Day 30 of #60DaysOfLearning2025

## Topic: Deploying SSRS Reports on Server

Today, I learned how to **deploy SSRS reports to a Report Server**, enabling centralized access, scheduled delivery, and managed security for business reporting.

---

## 🔗 Resource

- [C# Corner – How to Deploy SSRS Report on Server](https://www.c-sharpcorner.com/article/how-to-deploy-ssrs-report-on-server/)

---

## 🧠 What I Learned

### 🚀 Why Deploy SSRS Reports?

✅ Centralized reporting for teams and stakeholders.  
✅ Enables scheduling and subscriptions for automated report delivery.  
✅ Secures reports using SSRS role-based security.  
✅ Integrates seamlessly with web portals, Power BI, and dashboards.

---

### ⚙️ Deployment Steps

 **1️⃣ Prepare the Report**  

- Finalize and test in **Report Builder** or **Visual Studio SSDT**.

 **2️⃣ Configure Data Sources**  

- Ensure the report uses shared data sources for easier management.
- Test connections with correct credentials (Windows Auth or SQL Auth).

 **3️⃣ Open Report Server URL**  

- Usually: `http://<servername>/Reports` for the web portal.
- `http://<servername>/ReportServer` for the backend.

 **4️⃣ Deploy Using Visual Studio SSDT**:

- Set **TargetServerURL** (e.g., `http://localhost/ReportServer`).
- Right-click project → Deploy.

 **5️⃣ Deploy Using Web Portal**:

- Go to the folder where you want to upload the report.
- Use **Upload** to add `.rdl` files.
- Configure data source references post-upload.

---

### 🛠️ Post Deployment Actions

- Test report rendering on the server.  
- Configure **subscriptions and schedules** for automated delivery.  
- Set **security permissions**:
- Assign `Browser` role for viewers.
- Use `Content Manager` for admin control.
- Use folder structures to organize reports:
- `/Finance/MonthlyReports/`
- `/Sales/DashboardReports/`

---

## 🧪 Practice Plan

- Deploy a `Sales Summary` report to your local SSRS server.  
- Test with different user accounts to validate access.  
- Set a weekly subscription to email reports to your email.

---

## 💡 Key Takeaways

- **Deployment makes reports accessible to all users in your org.**
- **Security and folder organization are key to maintain clarity and control.**
- **Subscriptions automate your reporting workflows, saving time.**

---

`60DaysOfLearning` `LearningWithLeapfrog` `sql` `Day30` `SQL` `SSRS` `Reporting` `Deployment` `ReportingServices`
