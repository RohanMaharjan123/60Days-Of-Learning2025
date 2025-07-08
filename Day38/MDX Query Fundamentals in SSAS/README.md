# 📘 Day 38 of #60DaysOfLearning2025

## Topic: MDX Query Fundamentals in SSAS

Today, I explored **MDX (Multidimensional Expressions) query fundamentals** to extract and analyze data from **SSAS OLAP cubes** effectively.

---

## 🔗 Resource

- [Microsoft Learn – MDX Query Fundamentals](https://learn.microsoft.com/en-us/analysis-services/multidimensional-models/mdx/mdx-query-fundamentals)

---

## 🧠 What I Learned

### 🚀 What is MDX?

✅ MDX (Multidimensional Expressions) is a **query language for OLAP databases**.  
✅ Similar to SQL but designed to **query multidimensional structures** like cubes.  
✅ Retrieves data using **dimensions, hierarchies, measures, and members**.

---

### 🗂️ Basic MDX Structure

```sql
SELECT 
  <columns_axis> ON COLUMNS,
  <rows_axis> ON ROWS
FROM [CubeName]
WHERE <slicer>
```

Basic MDX Query Example

```sql
SELECT 
  [Measures].[Sales Amount] ON COLUMNS,
  [Date].[Calendar Year].MEMBERS ON ROWS
FROM [Sales]
WHERE ([Geography].[Country].[United States])
```

Another Example with Multiple Measures

```sql
SELECT 
  {[Measures].[Sales Amount], [Measures].[Profit]} ON COLUMNS,
  [Product].[Category].MEMBERS ON ROWS
FROM [Sales]
```

Functions in MDX

- MEMBERS: All members of a dimension or hierarchy.
- CURRENTMEMBER: Reference the current context member.
- FILTER: Filter sets based on conditions.
- ORDER: Sort results.
