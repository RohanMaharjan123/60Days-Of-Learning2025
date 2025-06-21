# 📘 Day 21 of #60DaysOfLearning2025

## Topic: Managing SQL Server User Permissions

Today I learned how to create SQL Server users and grant, deny, or revoke their permissions to control access to databases securely.

---

## 🔗 Resource

- [SQLShack – How to Manage SQL Server User Permissions](https://www.sqlshack.com/how-to-manage-sql-server-user-permissions/)

---

## 🧠 What I Learned

### 🔐 Key Concepts

| Command                  | Purpose                                          |
|--------------------------|--------------------------------------------------|
| `CREATE LOGIN`           | Creates a server-level login                    |
| `CREATE USER`            | Creates a database-level user                   |
| `GRANT`                  | Gives a user specific permissions               |
| `DENY`                   | Prevents user from performing certain actions   |
| `REVOKE`                 | Removes previously granted or denied permissions|

---

## 🧪 Practice SQL Commands

```sql
-- Create a SQL Server login
CREATE LOGIN CUser WITH PASSWORD = 'StrongPass123!';

-- Create a user for that login in a specific database
USE TestDB;
CREATE USER CUser FOR LOGIN CUser;

-- Grant SELECT permission on a table
GRANT SELECT ON dbo.Customers TO CUser;

-- Deny DELETE permission
DENY DELETE ON dbo.Customers TO CUser;

-- Revoke SELECT permission
REVOKE SELECT ON dbo.Customers FROM CUser;
```
