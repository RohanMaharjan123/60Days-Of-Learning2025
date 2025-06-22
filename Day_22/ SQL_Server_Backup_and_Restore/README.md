# 📘 Day 22 of #60DaysOfLearning2025

## Topic: SQL Server Backup and Restore

Today, I learned how to back up and restore databases in SQL Server using T-SQL commands. These are critical operations to ensure data safety, system recovery, and migration.

---

## 🔗 Resource

- [SQLShack – SQL Server Backup and Restore with Examples](https://www.sqlshack.com/sql-server-backup-and-restore-database-examples/)

---

## 🧠 What I Learned

### 📦 Backup Types in SQL Server

| Backup Type     | Description                                              |
|-----------------|----------------------------------------------------------|
| Full Backup     | Complete backup of the database                          |
| Differential    | Changes since the last full backup                       |
| Transaction Log | Backup of all changes since the last log backup          |

---

## 🧪 Practice Examples

> ✅ **FULL BACKUP**

```sql
-- Create full backup of TestDB
BACKUP DATABASE TestDB
TO DISK = 'C:\Backups\TestDB_Full.bak'
WITH FORMAT, INIT, NAME = 'Full Backup of TestDB';
```

>✅ **DIFFERENTIAL BACKUP**

```sql
-- Create differential backup
BACKUP DATABASE TestDB
TO DISK = 'C:\Backups\TestDB_Diff.bak'
WITH DIFFERENTIAL, NAME = 'Diff Backup of TestDB';
```

> ✅ **TRANSACTION LOG BACKUP**

```sql
-- Backup transaction log
BACKUP LOG TestDB
TO DISK = 'C:\Backups\TestDB_Log.trn'
WITH NOFORMAT, INIT, NAME = 'Log Backup';
```

> ⚠️ **RESTORE WITH NORECOVERY (For chaining restores)**

```sql
-- Restore for applying diff or logs after
RESTORE DATABASE TestDB
FROM DISK = 'C:\Backups\TestDB_Full.bak'
WITH NORECOVERY;
```

`60DaysOfLearning` `LearningWithLeapfrog` `sql`  `Query`  `Day22` `Backup`
