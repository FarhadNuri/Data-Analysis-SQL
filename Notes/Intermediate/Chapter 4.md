<p align="center">
  <!-- Title Badge -->
  <img src="https://img.shields.io/badge/Database%20Intermediate-Chapter%204-blue?style=for-the-badge">

  <!-- Technology Badges -->
  <img src="https://img.shields.io/badge/SQL-Sorting%20%26%20Grouping-orange?style=for-the-badge&logo=sqlite">
  <img src="https://img.shields.io/badge/Clauses-ORDER%20BY%20%7C%20GROUP%20BY-green?style=for-the-badge&logo=postgresql">
  <img src="https://img.shields.io/badge/Filtering-HAVING%20%7C%20Aggregates-purple?style=for-the-badge&logo=googleforms">

  <!-- Status Badges -->
  <img src="https://img.shields.io/badge/Level-Intermediate-yellow?style=for-the-badge">
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge">

  <!-- Author Badge -->
  <a href="https://github.com/FarhadNuri">
    <img src="https://img.shields.io/badge/Author-Farhad%20Nuri-lightgrey?style=for-the-badge&logo=github">
  </a>
</p>

---

# 📘 Chapter 4: Sorting & Grouping

Learn how to sort results with ORDER BY, group data with GROUP BY, combine sorting and grouping, and filter grouped data using HAVING.

---

## 📊 Sorting Results: ORDER BY

`ORDER BY` is used to sort query results.

### ✅ Key Points

- Written **after** the `FROM` statement
- Works in **ascending order** by default
- Use `DESC` for **descending order**
- Fields don't need to be in `SELECT` to sort by them (but it's best practice to include them)

### 📝 Basic Sorting Example
```sql
SELECT title, duration
FROM films
ORDER BY duration DESC;
```

---

## 🔢 ORDER BY Multiple Fields

Sort by multiple fields — the second field acts as a **tie-breaker**.

**Syntax:**
```sql
ORDER BY field_one, field_two
```

### ✅ Example: Sort by Birthdate, then Name
```sql
SELECT
  birthdate,
  name
FROM people
ORDER BY birthdate, name DESC;
```

### ✅ Example: Films by Release Year and Duration
```sql
SELECT
  release_year,
  duration,
  title
FROM films
ORDER BY release_year, duration;
```

### ✅ Example: Certification (Alphabetically) and Release Year (Descending)
```sql
SELECT 
  certification,
  release_year,
  title
FROM films 
ORDER BY certification, release_year DESC;
```

---

## ⚙️ ORDER BY Execution Order
```
FROM → WHERE → SELECT (Aliases defined) → ORDER BY → LIMIT
```

⚠️ **Important:** Aliases are defined in `SELECT`, so you can use them in `ORDER BY`.

---

## 📦 Grouping Data: GROUP BY

`GROUP BY` is used to summarize data for groups of results.

### ✅ Key Points

- Used with **aggregate functions** to provide summaries
- Can group by **multiple fields**
- Can be combined with `ORDER BY` (which always comes **after** `GROUP BY`)

### 📝 Basic Grouping Example

Count of films released each year:
```sql
SELECT
  release_year,
  COUNT(title) AS film_count
FROM films
GROUP BY release_year;
```

### ✅ Example: Average Duration by Year
```sql
SELECT 
  release_year,
  AVG(duration) AS avg_duration
FROM films
GROUP BY release_year;
```

### ✅ Example: GROUP BY Multiple Fields with ORDER BY
```sql
SELECT 
  release_year,
  country,
  MAX(budget) AS max_budget
FROM films
GROUP BY release_year, country
ORDER BY release_year, country;
```

---

## ⚙️ GROUP BY Execution Order
```
FROM → WHERE → GROUP BY → SELECT (Aliases) → ORDER BY → LIMIT
```

---

## 🎯 Filtering Grouped Data: HAVING

In SQL, you **cannot** filter aggregate functions with `WHERE`.  
Use `HAVING` to filter based on aggregate function results.

### 🔑 Key Difference

- **WHERE** — Filters **individual records** (before grouping)
- **HAVING** — Filters **grouped records** (after grouping)

### 📝 HAVING Placement
```
FROM → WHERE → GROUP BY → HAVING → SELECT (Aliases) → ORDER BY → LIMIT
```

---

## 💡 HAVING Examples

### ✅ Example: Years with Average Duration Over 2 Hours
```sql
SELECT release_year
FROM films
GROUP BY release_year
HAVING AVG(duration) > 120;
```

### ✅ Example: Countries with 10+ Distinct Certifications
```sql
SELECT 
  country,
  COUNT(DISTINCT certification) AS certification_count
FROM films
GROUP BY country
HAVING COUNT(DISTINCT certification) > 10;
```

### ✅ Example: Countries with Average Budget Over 1 Billion
```sql
SELECT 
  country,
  ROUND(AVG(budget), 2) AS average_budget
FROM films
GROUP BY country
HAVING AVG(budget) > 1000000000
ORDER BY average_budget DESC;
```

---

## 🔗 Combining WHERE and HAVING

`WHERE` filters **before** grouping, `HAVING` filters **after** grouping.

### ✅ Example: Release Years After 1990

**Using HAVING (incorrect approach):**
```sql
SELECT release_year
FROM films
GROUP BY release_year
HAVING release_year > 1990;
```

**Using WHERE (correct approach):**
```sql
SELECT 
  release_year,
  AVG(budget) AS avg_budget,
  AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;
```

### ✅ Example: Complex Query with WHERE and HAVING

Filter years after 1990 with average budget over 60 million:
```sql
SELECT 
  release_year, 
  AVG(budget) AS avg_budget, 
  AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000;
```

### ✅ Example: Complete Query with Sorting and LIMIT

Find the year with highest average gross:
```sql
SELECT 
  release_year, 
  AVG(budget) AS avg_budget, 
  AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
ORDER BY avg_gross DESC
LIMIT 1;
```

---

## ⚙️ Complete SQL Execution Order
```
FROM → WHERE → GROUP BY → HAVING → SELECT (Aliases) → ORDER BY → LIMIT
```

---

## ✅ Summary

- **ORDER BY** sorts results (default: ascending, use `DESC` for descending)
- **ORDER BY** can sort by multiple fields (second field is tie-breaker)
- **GROUP BY** summarizes data into groups
- **GROUP BY** is used with aggregate functions
- **WHERE** filters individual records (before grouping)
- **HAVING** filters grouped records (after grouping)
- **WHERE** cannot filter aggregate functions — use **HAVING** instead
- **Complete order:** FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT

---
