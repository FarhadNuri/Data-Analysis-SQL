<p align="center">
  <!-- Title Badge -->
  <img src="https://img.shields.io/badge/Database%20Intermediate-Chapter%202-blue?style=for-the-badge">

  <!-- Technology Badges -->
  <img src="https://img.shields.io/badge/SQL-Filtering%20%26%20Conditions-orange?style=for-the-badge&logo=sqlite">
  <img src="https://img.shields.io/badge/WHERE-OR%20%7C%20AND%20%7C%20BETWEEN-green?style=for-the-badge&logo=postgresql">
  <img src="https://img.shields.io/badge/Pattern%20Matching-LIKE%20%7C%20IN%20%7C%20NULL-purple?style=for-the-badge&logo=googleforms">

  <!-- Status Badges -->
  <img src="https://img.shields.io/badge/Level-Intermediate-yellow?style=for-the-badge">
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge">

  <!-- Author Badge -->
  <a href="https://github.com/FarhadNuri">
    <img src="https://img.shields.io/badge/Author-Farhad%20Nuri-lightgrey?style=for-the-badge&logo=github">
  </a>
</p>

# 📘 Chapter 2: Filtering Data

Learn how to filter records using WHERE, comparison operators, multiple criteria (OR, AND, BETWEEN), pattern matching (LIKE), and handle NULL values.

---

## 🔍 Filtering Clause: WHERE

The `WHERE` clause filters records based on specific conditions.

### ✅ Comparison Operators with WHERE
```sql
WHERE age > 20
WHERE year = 2023
WHERE year <> 2025  -- not equal to
```

### 📊 Comparison Operators with Numbers

| Operator | Meaning |
|----------|---------|
| `>` | Greater than |
| `<` | Less than |
| `=` | Equal to |
| `<>` | Not equal to |
| `>=` | Greater than or equal to |
| `<=` | Less than or equal to |

### 📝 WHERE with Strings

Use **single quotes** for string values:
```sql
WHERE country = 'Japan'
```

---

## ⚙️ Order of Execution for WHERE

SQL executes in this order:
```
FROM → WHERE → SELECT → LIMIT
```

**Example:**
```sql
SELECT item
FROM coats
WHERE color = 'green'
LIMIT 5;
```

**Execution:** Find the coats table → Filter green coats → Select item field → Limit to 5 results

---

## 🔗 Multiple Criteria: OR, AND, BETWEEN

### ✅ OR — At Least One Condition Must Be True
```sql
WHERE release_year = 2023 OR release_year = 2028
```

⚠️ **Important:** You must specify the field on both sides of the OR condition.

### ✅ AND — All Conditions Must Be True
```sql
WHERE release_year > 2023 AND release_year < 2028
```

### ✅ Combining AND & OR

Use parentheses to group conditions:
```sql
SELECT title
FROM films
WHERE (year = 1995 OR year = 1996)
  AND (certification = 'PG' OR certification = 'R');
```

---

## 📏 BETWEEN Keyword

Provides a shortcut for checking ranges (inclusive of start and end values).

### Without BETWEEN:
```sql
SELECT title
FROM films
WHERE release_year >= 1994
  AND release_year <= 2000;
```

### With BETWEEN:
```sql
SELECT title
FROM films
WHERE release_year BETWEEN 1994 AND 2000;
```

### ✅ Combining BETWEEN with AND

**Example 1: Year and Budget**
```sql
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
  AND budget > 100000000;
```

**Example 2: Year, Budget, and Language**
```sql
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
  AND budget > 100000000
  AND language = 'Spanish';
```

---

## 🔤 Filtering Text: LIKE, NOT LIKE, IN

### ✅ LIKE — Pattern Matching

Used to search for patterns in text fields.

**Wildcards:**
- `%` — Matches 0, 1, or many characters
- `_` — Matches exactly one character

**Examples:**
```sql
-- Names starting with "Far"
SELECT name 
FROM people
WHERE name LIKE 'Far%';

-- Names where first 2 characters are "Fa"
SELECT name 
FROM people
WHERE name LIKE 'Fa_';

-- Names ending with "r"
WHERE name LIKE '%r'

-- Names where 3rd character is "t"
WHERE name LIKE '__t%'
```

### ✅ NOT LIKE — Exclude Patterns
```sql
-- Names that do NOT start with "Fa"
SELECT name 
FROM people
WHERE name NOT LIKE 'Fa%';
```

---

## 📋 IN — Multiple Values

Allows you to specify multiple values in a WHERE clause.

### Without IN (using multiple OR):
```sql
SELECT title
FROM films
WHERE release_year = 2020
   OR release_year = 2023
   OR release_year = 2025;
```

### With IN:
```sql
SELECT title
FROM films
WHERE release_year IN (2020, 2023, 2025);
```

### 📝 Example: Combining IN with AND

Select films released in 1990 or 2000 that were longer than two hours:
```sql
SELECT 
  title, 
  release_year
FROM films
WHERE release_year IN (1990, 2000)
  AND duration > 120;
```

---

## ❓ Filtering NULL Values

**NULL** = missing or unknown value

- `IS NULL` — Returns records that are NULL
- `IS NOT NULL` — Returns records that are NOT NULL

### ✅ Counting Records with NULL Values
```sql
SELECT COUNT(*) AS no_birthdates
FROM people
WHERE birthdate IS NULL;
```

### ✅ Counting Records WITHOUT NULL Values
```sql
SELECT COUNT(*) AS count_birthdates
FROM people
WHERE birthdate IS NOT NULL;
```

---

## ✅ Summary

- **WHERE** filters records based on conditions
- **Comparison operators:** `>`, `<`, `=`, `<>`, `>=`, `<=`
- **OR** — at least one condition must be true
- **AND** — all conditions must be true
- **BETWEEN** — inclusive range filtering
- **LIKE** — pattern matching with `%` and `_` wildcards
- **NOT LIKE** — excludes patterns
- **IN** — specifies multiple values
- **IS NULL / IS NOT NULL** — filters missing values
- **Execution order:** FROM → WHERE → SELECT → LIMIT

---