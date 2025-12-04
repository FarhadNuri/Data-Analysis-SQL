<p align="center">
  <!-- Title Badge -->
  <img src="https://img.shields.io/badge/Database%20Intermediate-Chapter%201-blue?style=for-the-badge">

  <!-- Technology Badges -->
  <img src="https://img.shields.io/badge/SQL-Querying%20%26%20Aggregation-orange?style=for-the-badge&logo=sqlite">
  <img src="https://img.shields.io/badge/COUNT()-%20DISTINCT%20%7C%20Execution%20Order-green?style=for-the-badge&logo=postgresql">
  <img src="https://img.shields.io/badge/Formatting-Best%20Practices-purple?style=for-the-badge&logo=googleforms">

  <!-- Status Badges -->
  <img src="https://img.shields.io/badge/Level-Intermediate-yellow?style=for-the-badge">
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge">

  <!-- Author Badge -->
  <a href="https://github.com/FarhadNuri">
    <img src="https://img.shields.io/badge/Author-Farhad%20Nuri-lightgrey?style=for-the-badge&logo=github">
  </a>
</p>


# 📘 Chapter 1: Querying a Database

Learn how to count records, combine COUNT with DISTINCT, understand SQL execution order, and format SQL queries properly.

---

## 🔢 COUNT() — Counting Records in a Table

### ✅ Basic COUNT()
Returns the number of records with a **non-null value** in a field:

```sql
SELECT COUNT(birthdate) AS count_birthdate
FROM people;
```
### ✅ Counting Multiple Fields

Each field must be counted separately:
```sql
SELECT 
  COUNT(name) AS count_names,
  COUNT(birthdate) AS count_birthdate
FROM people;
```

### 📝 Example: Films Table

Count languages and countries in the films table:
```sql
SELECT 
  COUNT(language) AS count_languages,
  COUNT(country) AS count_countries
FROM films;
```
--- 

## 🧮 COUNT() + DISTINCT — Counting Unique Values

Used when you want unique values only.

Example:
```sql
SELECT COUNT(DISTINCT birthdate)
AS count_distinct_birthdates
FROM people;
```

Films Example:

Return the number of unique countries in the films table:
```sql
SELECT COUNT(DISTINCT country)
AS count_distinct_countries
FROM films;
```
---
## ⚙️ SQL Code Execution Order

### SQL does not run in the same order that you write it.

How SQL Executes:
| Step | Clause | Purpose |
|------|-------------|-----|
| **1** | FROM | Find the table that contains the data |
| **2** | SELECT | Choose the fields to retrieve |
| **3** | LIMIT / COUNT / DISTINCT | Refine, filter, or reduce results |

## Understanding execution order is important for:

- Debugging SQL queries
- Working with aliasing
- Avoiding logical mistakes
---

## ✨ SQL Formatting Best Practices

Formatting increases readability and is preferred by professionals.

👍 Standard Formatting:
```sql
SELECT name, id
FROM people;
```
👍 One Field Per Line (Preferred in big queries):
```sql
SELECT
    name,
    birth_date
FROM people
LIMIT 3;
```
✔️ Tips

- Capitalize SQL keywords
- Use new lines for readability
- Always end queries with a semicolon ;
- There is no official formatting rule — the goal is clarity and consistency.
---
## ✅ Summary

- COUNT( ) returns the number of non-null values
- COUNT(*) returns total rows
- COUNT(DISTINCT field) counts unique entries
- SQL executes in the order: FROM → SELECT → FILTERING
- Formatting improves readability and reduces errors

---
