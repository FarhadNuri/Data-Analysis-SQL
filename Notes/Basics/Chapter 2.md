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
```sql
SELECT 
    name 
FROM table_name;

### ✔ Select multiple fields:
```sql 
SELECT 
    name, 
    age 
FROM table_name;