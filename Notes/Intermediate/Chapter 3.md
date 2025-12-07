<p align="center">
  <!-- Title Badge -->
  <img src="https://img.shields.io/badge/Database%20Intermediate-Chapter%203-blue?style=for-the-badge">

  <!-- Technology Badges -->
  <img src="https://img.shields.io/badge/SQL-Aggregate%20Functions-orange?style=for-the-badge&logo=sqlite">
  <img src="https://img.shields.io/badge/Functions-SUM%20%7C%20AVG%20%7C%20MIN%20%7C%20MAX-green?style=for-the-badge&logo=postgresql">
  <img src="https://img.shields.io/badge/Operations-ROUND%20%7C%20Arithmetic-purple?style=for-the-badge&logo=googleforms">

  <!-- Status Badges -->
  <img src="https://img.shields.io/badge/Level-Intermediate-yellow?style=for-the-badge">
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge">

  <!-- Author Badge -->
  <a href="https://github.com/FarhadNuri">
    <img src="https://img.shields.io/badge/Author-Farhad%20Nuri-lightgrey?style=for-the-badge&logo=github">
  </a>
</p>

---

# 📘 Chapter 3: Aggregate Functions

Learn how to summarize data using aggregate functions (SUM, AVG, MIN, MAX, COUNT), combine them with WHERE clauses, use ROUND() for precision, and perform arithmetic operations.

---

## 📊 Summarizing Data

**Aggregate functions** perform calculations on several values and return a **single value**.

### ✅ Common Aggregate Functions

| Function | Description | Works With |
|----------|-------------|------------|
| `SUM()` | Total of all values | Numerical fields only |
| `AVG()` | Average of all values | Numerical fields only |
| `MIN()` | Minimum value | Any field type |
| `MAX()` | Maximum value | Any field type |
| `COUNT()` | Number of records | Any field type |

### 📝 MIN and MAX with Non-Numerical Data

- **Strings:** Minimum to Maximum = A to Z
- **Dates:** Lowest to Highest = 1975 to 2012

⚠️ **Best Practice:** Always use aliases when summarizing data with aggregate functions.

---

## 🔢 Basic Aggregate Function Examples

### ✅ SUM — Total Duration
```sql
SELECT SUM(duration) AS total_duration
FROM films;
```

### ✅ AVG — Average Duration
```sql
SELECT AVG(duration) AS average_duration
FROM films;
```

### ✅ MAX — Most Recent Release Year
```sql
SELECT MAX(release_year) AS latest_year
FROM films;
```

---

## 🎯 Summarizing Subsets with WHERE

Combine aggregate functions with `WHERE` to filter data before aggregation.

### ✅ Example: Average Gross for Titles Starting with 'A'
```sql
SELECT AVG(gross) AS avg_gross_A
FROM films
WHERE title LIKE 'A%';
```

### ✅ Example: Lowest Gross in 1994
```sql
SELECT MIN(gross) AS lowest_gross
FROM films
WHERE release_year = 1994;
```

### ✅ Example: Highest Gross Between 2000-2012
```sql
SELECT MAX(gross) AS highest_gross
FROM films
WHERE release_year BETWEEN 2000 AND 2012;
```

---

## 🔄 ROUND() Function

Used to round numbers to a specified decimal place.

**Syntax:**
```sql
ROUND(num_to_round, decimal_place)
```

- **Positive decimal_place:** Rounds to the right of the decimal
- **Negative decimal_place:** Rounds to the left of the decimal (thousands, ten-thousands, etc.)
- **Empty decimal_place:** Rounds to whole number

⚠️ **Note:** ROUND() can only be used with numerical fields.

### ✅ Example: Round to One Decimal Place
```sql
SELECT ROUND(AVG(facebook_likes), 1) AS avg_facebook_likes
FROM reviews;
```

### ✅ Example: Round to Nearest Thousand
```sql
SELECT ROUND(AVG(budget), -3) AS avg_budget_thousands
FROM films;
```

---

## ➗ Aliasing and Arithmetic Operations

Arithmetic operators: `+`, `-`, `*`, `/`

### 🔑 Key Difference

- **Aggregate functions:** Calculate **vertically** (top-down across a field/column)
- **Arithmetic operators:** Calculate **horizontally** (side-wise across a record/row)

### ✅ Example: Calculate Profit
```sql
SELECT (gross - budget) AS profit
FROM films;
```

### ✅ Example: Duration in Hours
```sql
SELECT 
  title,
  (duration / 60.0) AS duration_hours 
FROM films;
```

### ✅ Example: Percentage of Deceased People
```sql
SELECT COUNT(deathdate) * 100.0 / COUNT(id) AS percentage_dead
FROM people;
```

### ✅ Example: Number of Decades Covered
```sql
SELECT (MAX(release_year) - MIN(release_year)) / 10.0 AS number_of_decades
FROM films;
```

### ✅ Example: Duration in Hours (Rounded)
```sql
SELECT 
  title, 
  ROUND((duration / 60.0), 2) AS duration_hours
FROM films;
```

---

## ✅ Summary

- **Aggregate functions** return a single value from multiple records
- **SUM() and AVG()** work only with numerical fields
- **MIN(), MAX(), and COUNT()** work with any field type
- **WHERE** filters data before aggregation
- **ROUND()** controls decimal precision (positive = right, negative = left)
- **Arithmetic operators** perform row-wise calculations
- **Aggregate functions** perform column-wise calculations
- Always use **aliases** for calculated fields

---
