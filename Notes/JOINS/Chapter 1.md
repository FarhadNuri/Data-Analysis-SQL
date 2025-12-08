<p align="center">
  <!-- Title Badge -->
  <img src="https://img.shields.io/badge/SQL%20JOINS-Chapter%201-blue?style=for-the-badge">

  <!-- Technology Badges -->
  <img src="https://img.shields.io/badge/SQL-INNER%20JOIN%20%7C%20LEFT%20JOIN-orange?style=for-the-badge&logo=sqlite">
  <img src="https://img.shields.io/badge/Concepts-Keys%20%7C%20Relationships-green?style=for-the-badge&logo=postgresql">
  <img src="https://img.shields.io/badge/Advanced-Multiple%20JOINS-purple?style=for-the-badge&logo=googleforms">

  <!-- Status Badges -->
  <img src="https://img.shields.io/badge/Level-Intermediate-yellow?style=for-the-badge">
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge">

  <!-- Author Badge -->
  <a href="https://github.com/FarhadNuri">
    <img src="https://img.shields.io/badge/Author-Farhad%20Nuri-lightgrey?style=for-the-badge&logo=github">
  </a>
</p>

---

# 📘 Chapter 1: Basics of JOINS

Learn how to combine data from multiple tables using INNER JOIN, understand keys and relationships, work with aliases, and chain multiple joins together.

---

## 🔑 Understanding Keys

A **key** is a single column or group of columns that uniquely identifies a record in a table.

Keys are essential for joining tables together.

---

## 🔗 INNER JOIN

**INNER JOIN** returns only the records that match in **both** tables based on a given field.

### ✅ Join Construction Best Practice

1. Start with the **JOIN** clause first
2. Then add the **SELECT** statement

### 📝 Basic INNER JOIN Syntax
```sql
SELECT 
  prime_ministers.country,
  prime_ministers.continent,
  prime_minister,
  president
FROM presidents
INNER JOIN prime_ministers
ON presidents.country = prime_ministers.country;
```

⚠️ **Important:** When selecting columns that exist in both tables, use `table.column` notation.

---

## 🏷️ Using Aliases

Aliases make queries shorter and more readable.

### ✅ Example: Aliases with INNER JOIN
```sql
SELECT 
  p2.country,
  p2.continent,
  prime_minister,
  president
FROM presidents AS p1
INNER JOIN prime_ministers AS p2
ON p1.country = p2.country;
```

---

## 🎯 USING Clause

When joining on columns with the **same name** in both tables, use `USING()` instead of `ON`.

### ✅ Example: USING Instead of ON
```sql
-- Instead of: ON p1.country = p2.country
FROM presidents AS p1
INNER JOIN prime_ministers AS p2
USING(country);
```

---

## 💡 INNER JOIN Examples

### ✅ Example 1: Basic Join with Cities and Countries
```sql
SELECT *
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;
```

### ✅ Example 2: Join with Aliases
```sql
SELECT 
  cities.name AS city, 
  countries.name AS country, 
  countries.region
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;
```

### ✅ Example 3: Countries and Economies
```sql
SELECT 
  c.code AS country_code,
  name,
  year,
  inflation_rate
FROM countries AS c
INNER JOIN economies AS e
ON c.code = e.code;
```

---

## 🔄 Relationships Between Tables

Understanding relationships helps you design better joins.

### 📊 Types of Relationships

| Relationship | Description | Example |
|--------------|-------------|---------|
| **One-to-Many** | One entity is associated with several entities | One author can write many books |
| **One-to-One** | Unique pairing between entities | One fingerprint for one finger |
| **Many-to-Many** | Many entities associated with many entities | Many languages spoken in many countries |

### 📝 Examples

**One-to-Many:**
- One author → Many books

**One-to-One:**
- One person → One unique fingerprint

**Many-to-Many:**
- Belgium has 3 languages (German, French, Dutch)
- Dutch is also spoken in Germany and Netherlands

---

## 🔗 Multiple JOINS

You can chain multiple `INNER JOIN` statements to combine data from three or more tables.

### ✅ Example: Three Table Join

Countries with prime ministers, presidents, and start years:
```sql
SELECT 
  p2.country,
  p2.continent,
  prime_minister,
  president,
  pm_start
FROM presidents AS p1
INNER JOIN prime_ministers AS p2
USING(country)
INNER JOIN prime_ministers_terms AS p3
USING(prime_minister);
```

---

## 💡 Multiple JOIN Examples

### ✅ Example 1: Countries and Populations
```sql
SELECT 
  c.name,
  p.fertility_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code;
```

### ✅ Example 2: Chain Three Tables
```sql
SELECT 
  name, 
  e.year, 
  p.fertility_rate, 
  e.unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
INNER JOIN economies AS e
ON c.code = e.code;
```

---

## 🎯 Additional Join Conditions with AND

Sometimes you need to match on **multiple fields** to get the correct records.

### ✅ Example: Join on Multiple Conditions
```sql
SELECT 
  name, 
  e.year, 
  fertility_rate, 
  unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
INNER JOIN economies AS e
ON c.code = e.code
AND p.year = e.year;
```

⚠️ **Important:** Not every value in the join field corresponds to exactly one record in the right table. Use `AND` in the `ON` clause to limit results and ensure accurate matching.

---

## ✅ Summary

- **Keys** uniquely identify records in tables
- **INNER JOIN** returns only matching records from both tables
- Use **table.column** notation when columns exist in multiple tables
- **Aliases** (AS) make queries shorter and more readable
- **USING()** simplifies joins when column names are identical
- **Multiple JOINS** combine data from three or more tables
- Use **AND** in the ON clause to add additional join conditions
- **Relationships:** One-to-One, One-to-Many, Many-to-Many
- **Best practice:** Write JOIN clauses first, then SELECT

---