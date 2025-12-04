<p align="center">
  <!-- Title Badge -->
  <img src="https://img.shields.io/badge/Database%20Basics-Chapter%202-blue?style=for-the-badge">

  <!-- Technology Badges -->
  <img src="https://img.shields.io/badge/SQL-Query%20Language-orange?style=for-the-badge&logo=sqlite">
  <img src="https://img.shields.io/badge/SELECT-FROM-green?style=for-the-badge&logo=databricks">
  <img src="https://img.shields.io/badge/Views-Aliasing-purple?style=for-the-badge&logo=googleforms">

  <!-- Status Badges -->
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge">
  <img src="https://img.shields.io/badge/Maintained-Yes-brightgreen?style=for-the-badge">

  <!-- Author Badge With GitHub Link -->
  <a href="https://github.com/FarhadNuri">
    <img src="https://img.shields.io/badge/Author-Farhad%20Nuri-lightgrey?style=for-the-badge&logo=github">
  </a>
</p>

# 📘 Chapter 2: SQL Queries

This chapter covers SQL keyword usage, SELECT statements, aliasing, retrieving unique values, and working with views.

---

## 🏷️ SQL Keywords

SQL keywords are **reserved words** that specify what operation you want to perform.

| Keyword | Purpose |
|---------|----------|
| **SELECT** | Specifies which fields/columns to retrieve |
| **FROM** | Specifies the table where the fields are located |

---

## 🔍 SELECT Keyword

The `SELECT` statement controls what data you retrieve.

### ✔ Select a single field:

SELECT 
    name 
FROM table_name;


### ✔ Select multiple fields:

SELECT 
    name, 
    age 
FROM table_name;

### ✔ Select all fields:

SELECT * FROM table_name;

📌 * means return everything from the table.

---

## 📝 Aliasing (AS Keyword)

Aliasing allows you to rename columns for clarity or convenience.

Example:

Your table has a field named name, but you want to treat it as first_name.

✔ SELECT name AS first_name 
FROM employees;

📌 Aliases do not change stored data — they only rename data in the query output.

---

## 🔁 Unique Field Values (DISTINCT)

By default, SQL returns all values including duplicates.

Example returning duplicates:

✔ SELECT year_hired FROM employees;

To retrieve only unique values:

✔ SELECT DISTINCT year_hired 
FROM employees;

📌 DISTINCT filters out duplicates automatically.

---

## 👁️ Views in SQL

A View is a saved SQL query.

✔ Important Facts

- Views do not store data

- Views store the query itself

- They behave like virtual tables

- Useful for reusing complicated queries

### Create a View:

✔ CREATE VIEW employee_hired_years AS
SELECT id, name, year_hired 
FROM employees;

📌 Creating a view does not show results — it only saves the query.

### Use the View:

✔ SELECT id, name 
FROM employee_hired_years;

---

## 📚 Example: Library Authors View

### Create a view of unique book authors:

✔ CREATE VIEW library_authors AS
SELECT DISTINCT author AS unique_author 
FROM books;

✔ Select all data from the view:
SELECT * 
FROM library_authors;

## ✅ Summary

### Chapter 2 teaches you:

- What SQL keywords do

- How to write SELECT queries

- Using aliases to rename columns

- Retrieving unique values with DISTINCT

- Creating and querying SQL Views

These concepts form the foundation of writing clean, powerful SQL queries.
