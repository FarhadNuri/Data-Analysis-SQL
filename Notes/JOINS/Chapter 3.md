<p align="center">
  <!-- Title Badge -->
  <img src="https://img.shields.io/badge/SQL%20JOINS-Chapter%203-blue?style=for-the-badge">

  <!-- Technology Badges -->
  <img src="https://img.shields.io/badge/SQL-Set%20Theory%20Operations-orange?style=for-the-badge&logo=sqlite">
  <img src="https://img.shields.io/badge/Operations-UNION%20%7C%20INTERSECT%20%7C%20EXCEPT-green?style=for-the-badge&logo=postgresql">
  <img src="https://img.shields.io/badge/Concepts-Vertical%20Stacking-purple?style=for-the-badge&logo=googleforms">

  <!-- Status Badges -->
  <img src="https://img.shields.io/badge/Level-Intermediate-yellow?style=for-the-badge">
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge">

  <!-- Author Badge -->
  <a href="https://github.com/FarhadNuri">
    <img src="https://img.shields.io/badge/Author-Farhad%20Nuri-lightgrey?style=for-the-badge&logo=github">
  </a>
</p>

---

# 📘 Chapter 3: Set Theory

Learn how to combine query results using set operations: UNION, UNION ALL, INTERSECT, and EXCEPT. These operations stack data vertically rather than horizontally.

---

## 🎯 Understanding Set Operations

Set operations combine results from multiple queries based on **set theory** principles.

### ✅ Key Characteristics of Set Operations

| Characteristic | Description |
|----------------|-------------|
| **No JOIN field required** | Set operations do not require a field to join on |
| **Vertical stacking** | Fields are stacked on top of one another, not left to right |
| **Data type matching** | Data types must be identical in corresponding fields |
| **Field order matters** | Fields must be in the same order in both queries |

---

## 🔗 UNION

**UNION** takes two tables as input and returns **all records** from both tables.

### ✅ Key Points

- Returns **unique records only** (removes duplicates automatically)
- If two records are identical, UNION returns them **only once**
- Fields must have the **same data type** in corresponding positions

### 📝 Basic UNION Syntax
```sql
SELECT *
FROM left_table
UNION
SELECT *
FROM right_table;
```

### 💡 UNION Example

Get all pairs of code and year from economies and populations (without duplicates):
```sql
SELECT code, year
FROM economies
UNION
SELECT country_code, year
FROM populations
ORDER BY code, year;
```

---

## 🔗 UNION ALL

**UNION ALL** is the same as UNION but **returns duplicates**.

### ✅ Key Difference

| Operation | Duplicates |
|-----------|------------|
| **UNION** | Removes duplicates |
| **UNION ALL** | Keeps all duplicates |

### 📝 UNION ALL Syntax
```sql
SELECT *
FROM left_table
UNION ALL
SELECT *
FROM right_table;
```

⚠️ **Performance Tip:** UNION ALL is faster than UNION because it doesn't need to check for duplicates.

---

## 🔄 INTERSECT

**INTERSECT** returns only records that are **present in BOTH tables**.

### ✅ Key Points

- Returns **only matching records**
- No duplicate values in the result
- When multiple fields are used, **ALL fields** must match

### 📊 Visual Representation
![image alt](https://github.com/Farhad559/Codes/blob/1863842353d81bd33f7f183abf7016983964b7c2/set1.png)

### 💡 INTERSECT Example

Return all city names that are also country names:
```sql
SELECT name
FROM cities
INTERSECT
SELECT name
FROM countries;
```

⚠️ **Important:** When two fields are used with INTERSECT, it requires data from **both values** in the left table to match the corresponding values in the right table.

---

## ❌ EXCEPT

**EXCEPT** returns records that are present in the **left table** but **NOT** in the right table.

### ✅ Key Points

- Retains records from the **left table only**
- Records must **NOT exist** in the right table
- **All fields** must match for a record to be excluded
- If 2 fields are used and only 1 matches, the record is **kept** (not excluded)

### 📊 Visual Representation
![image alt](https://github.com/Farhad559/Codes/blob/1863842353d81bd33f7f183abf7016983964b7c2/set2.png)

### 💡 EXCEPT Example

Return all cities that do **NOT** have the same name as a country:
```sql
SELECT name
FROM cities
EXCEPT
SELECT name
FROM countries
ORDER BY name;
```

---

## 📊 Set Operations Comparison

| Operation | Description | Duplicates | Example Use Case |
|-----------|-------------|------------|------------------|
| **UNION** | All records from both tables | Removed | Combine customer lists from two regions |
| **UNION ALL** | All records from both tables | Kept | Combine sales data with duplicates needed |
| **INTERSECT** | Only records in BOTH tables | Removed | Find customers who bought from both stores |
| **EXCEPT** | Records in left but NOT in right | Removed | Find customers who bought from store A but not store B |

---

## 🔑 Important Rules for Set Operations

### ✅ Rule 1: Data Types Must Match
```sql
-- ✓ CORRECT: Both queries return same data types
SELECT code, year
FROM economies
UNION
SELECT country_code, year
FROM populations;

-- ✗ INCORRECT: Different data types (text vs number)
SELECT name, population
FROM countries
UNION
SELECT code, year
FROM economies;
```

### ✅ Rule 2: Number of Fields Must Match
```sql
-- ✓ CORRECT: Both queries return 2 fields
SELECT code, year
FROM economies
UNION
SELECT country_code, year
FROM populations;

-- ✗ INCORRECT: Different number of fields
SELECT code, year, gdp
FROM economies
UNION
SELECT country_code, year
FROM populations;
```

### ✅ Rule 3: Field Order Matters
```sql
-- ✓ CORRECT: Fields in same order
SELECT code, year
FROM economies
UNION
SELECT country_code, year
FROM populations;

-- ⚠️ CAUTION: Fields in different order (will work but may cause confusion)
SELECT code, year
FROM economies
UNION
SELECT year, country_code
FROM populations;
```

---

## 💡 Practical Examples

### ✅ Example 1: Combine Different Sources

Get all years that appear in either economies or populations:
```sql
SELECT year
FROM economies
UNION
SELECT year
FROM populations
ORDER BY year;
```

### ✅ Example 2: Find Common Values

Find countries that exist in both cities and countries tables:
```sql
SELECT name
FROM cities
INTERSECT
SELECT name
FROM countries;
```

### ✅ Example 3: Find Unique Values

Find countries that have cities but are not in the countries table:
```sql
SELECT name
FROM cities
EXCEPT
SELECT name
FROM countries;
```

---

## 🔄 Set Operations vs JOINs

| Aspect | Set Operations | JOINs |
|--------|---------------|-------|
| **Direction** | Vertical (stack rows) | Horizontal (combine columns) |
| **Key requirement** | No join key needed | Requires join key/condition |
| **Data matching** | All fields must match | Only join key must match |
| **Result structure** | Same columns as input | Combined columns from both tables |

---

## ✅ Summary

- **UNION** combines records from two tables, removing duplicates
- **UNION ALL** combines records from two tables, keeping duplicates
- **INTERSECT** returns only records present in BOTH tables
- **EXCEPT** returns records in left table but NOT in right table
- Set operations **stack data vertically**, not horizontally
- **No join field required** for set operations
- **Data types must match** in corresponding fields
- **Number of fields** must be the same in both queries
- Set operations are **different from JOINs** (vertical vs horizontal)

---
