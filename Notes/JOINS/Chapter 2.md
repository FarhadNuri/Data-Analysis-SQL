<p align="center">
  <!-- Title Badge -->
  <img src="https://img.shields.io/badge/SQL%20JOINS-Chapter%202-blue?style=for-the-badge">

  <!-- Technology Badges -->
  <img src="https://img.shields.io/badge/SQL-LEFT%20%7C%20RIGHT%20%7C%20FULL%20JOIN-orange?style=for-the-badge&logo=sqlite">
  <img src="https://img.shields.io/badge/Advanced-CROSS%20JOIN%20%7C%20SELF%20JOIN-green?style=for-the-badge&logo=postgresql">
  <img src="https://img.shields.io/badge/Concepts-Outer%20Joins-purple?style=for-the-badge&logo=googleforms">

  <!-- Status Badges -->
  <img src="https://img.shields.io/badge/Level-Intermediate-yellow?style=for-the-badge">
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge">

  <!-- Author Badge -->
  <a href="https://github.com/FarhadNuri">
    <img src="https://img.shields.io/badge/Author-Farhad%20Nuri-lightgrey?style=for-the-badge&logo=github">
  </a>
</p>

---

# 📘 Chapter 2: LEFT, RIGHT, FULL & CROSS JOIN

Learn about outer joins (LEFT, RIGHT, FULL) that can obtain records even when matches aren't found, CROSS JOIN for all possible combinations, and SELF JOIN for comparing parts of the same table.

---

## 🔄 Understanding Outer Joins

**Outer joins** can obtain records from tables even if matches are **not found** on the field being joined.

---

## ⬅️ LEFT JOIN

**LEFT JOIN** returns **all records** from the left table and **matching records** from the right table.

### ✅ Key Points

- Keeps **all values** from the left table
- Returns **NULL values** for the right table when there's no match
- Can also be written as `LEFT OUTER JOIN`

### 📊 Visual Representation

![LEFT JOIN Diagram](https://github.com/FarhadNuri/Data-Analysis-SQL/blob/32a7901b4b3230934066ba47d230f59c3217b039/Notes/JOINS/left.png)



**Result:** All records from left table + matching records from right table (NULL where no match exists)

---

## 💡 LEFT JOIN Examples

### ✅ Example 1: Cities and Countries

Compare INNER JOIN vs LEFT JOIN:

**INNER JOIN:**
```sql
SELECT 
  c1.name AS city,
  code,
  c2.name AS country,
  region,
  city_proper_pop
FROM cities AS c1
INNER JOIN countries AS c2
ON c1.country_code = c2.code
ORDER BY code DESC;
```

**LEFT JOIN:**
```sql
SELECT 
  c1.name AS city,
  code,
  c2.name AS country,
  region,
  city_proper_pop
FROM cities AS c1
LEFT JOIN countries AS c2
ON c1.country_code = c2.code
ORDER BY code DESC;
```

### ✅ Example 2: Countries and Economies
```sql
SELECT name, region, gdp_percapita
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010;
```

### ✅ Example 3: Calculate Average GDP by Region
```sql
SELECT 
  region, 
  AVG(gdp_percapita) AS avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
GROUP BY region;
```

### ✅ Example 4: Top 10 Regions by GDP
```sql
SELECT 
  region, 
  AVG(gdp_percapita) AS avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
GROUP BY region
ORDER BY avg_gdp DESC
LIMIT 10;
```

---

## ➡️ RIGHT JOIN

**RIGHT JOIN** is the reverse of LEFT JOIN.

### ✅ Key Points

- Returns **all records** from the right table
- Returns **matching records** from the left table
- Can also be written as `RIGHT OUTER JOIN`

⚠️ **Note:** RIGHT JOIN is less commonly used; most developers prefer LEFT JOIN by switching table order.

---

## 🔄 FULL JOIN

**FULL JOIN** combines LEFT JOIN and RIGHT JOIN.

### ✅ Key Points

- Returns **all records** from **both** tables
- Shows **NULL** where there's no match in either direction

### 📊 Visual Representation

![FULL JOIN Diagram](https://github.com/FarhadNuri/Data-Analysis-SQL/blob/a702e4e55ce26a79ed4297fbeb3e9696494b7806/Notes/JOINS/Full.png)

**Result:** All records from both tables (NULL where no match exists on either side)

---

## 💡 FULL JOIN Examples

### ✅ Example 1: Countries and Currencies
```sql
SELECT 
  name AS country, 
  code, 
  region, 
  basic_unit
FROM countries
FULL JOIN currencies
USING(code)
WHERE region = 'North America' OR name IS NULL
ORDER BY region;
```

### ✅ Example 2: Chain Multiple FULL JOINs
```sql
SELECT 
  c1.name AS country, 
  region, 
  l.name AS language,
  basic_unit, 
  frac_unit
FROM countries AS c1 
FULL JOIN languages AS l
USING(code)
FULL JOIN currencies AS c2
USING(code)
WHERE region LIKE 'M%esia';
```

### ✅ Example 3: Countries and Life Expectancy
```sql
SELECT 
  c.name AS country,
  region,
  life_expectancy AS life_exp
FROM countries AS c
FULL JOIN populations AS p
ON c.code = p.country_code
WHERE year = 2010
ORDER BY life_exp
LIMIT 5;
```

---

## ❌ CROSS JOIN

**CROSS JOIN** creates **all possible combinations** from two tables.

### ✅ Key Points

- No `ON` or `USING` clause needed
- Results in a **Cartesian product**
- If table1 has 3 rows and table2 has 3 rows, result has 9 rows (3 × 3)

### 📊 Visual Representation

![CROSS JOIN Diagram](https://github.com/FarhadNuri/Data-Analysis-SQL/blob/971221ef19a51ba58c6fec09f467aa15ab22a67d/Notes/JOINS/Cross.png)

**Result:** Every row from table1 paired with every row from table2

---

## 💡 CROSS JOIN Example

### ✅ Example: Languages in Pakistan and India
```sql
SELECT 
  c.name AS country, 
  l.name AS language
FROM countries AS c
INNER JOIN languages AS l
USING(code)
WHERE c.code IN ('PAK', 'IND')
  AND l.code IN ('PAK', 'IND');
```

---

## 🔁 SELF JOIN

**SELF JOIN** is when a table is joined with **itself**.

### ✅ Key Points

- Used to **compare parts** of the same table
- Requires **different aliases** for the same table
- Useful for comparing records across different time periods or categories

---

## 💡 SELF JOIN Examples

### ✅ Example 1: Compare Population Sizes

Compare population sizes from 2010 and 2015:
```sql
SELECT 
  p1.country_code,
  p1.size AS size2010,
  p2.size AS size2015
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code = p2.country_code;
```

### ✅ Example 2: Filter Specific Years
```sql
SELECT 
  p1.country_code, 
  p1.size AS size2010, 
  p2.size AS size2015
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code = p2.country_code
WHERE p1.year = p2.year - 5;
```

⚠️ **Note:** The `WHERE p1.year = p2.year - 5` ensures we're comparing 2010 with 2015 (5 years apart).

---

## 📊 JOIN Comparison Table

| JOIN Type | Returns | NULL Handling |
|-----------|---------|---------------|
| **INNER JOIN** | Only matching records from both tables | No NULLs |
| **LEFT JOIN** | All from left + matching from right | NULLs in right when no match |
| **RIGHT JOIN** | All from right + matching from left | NULLs in left when no match |
| **FULL JOIN** | All records from both tables | NULLs on both sides when no match |
| **CROSS JOIN** | All possible combinations | No NULLs (Cartesian product) |
| **SELF JOIN** | Table joined with itself | Depends on join type used |

---

## ✅ Summary

- **LEFT JOIN** returns all records from left table + matching records from right
- **RIGHT JOIN** returns all records from right table + matching records from left
- **FULL JOIN** combines LEFT and RIGHT JOIN (all records from both tables)
- **CROSS JOIN** creates all possible combinations (Cartesian product)
- **SELF JOIN** joins a table with itself for comparisons
- **Outer joins** can use `NULL` to indicate missing matches
- **LEFT/RIGHT/FULL** can be written as `LEFT OUTER JOIN`, `RIGHT OUTER JOIN`, `FULL OUTER JOIN`
- Use **different aliases** when performing SELF JOINs

---
