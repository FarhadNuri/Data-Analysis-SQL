<p align="center">
  <!-- Title Badge -->
  <img src="https://img.shields.io/badge/Database%20Basics-Chapter%201-blue?style=for-the-badge">

  <!-- Technology Badges -->
  <img src="https://img.shields.io/badge/SQL-Structured%20Query%20Language-orange?style=for-the-badge&logo=sqlite">
  <img src="https://img.shields.io/badge/DB%20Design-Schema%20Modeling-green?style=for-the-badge&logo=databricks">
  <img src="https://img.shields.io/badge/Tables%20%26%20Fields-Naming%20Conventions-purple?style=for-the-badge&logo=googleforms">

  <!-- Status Badges -->
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge">
  <img src="https://img.shields.io/badge/Maintained-Yes-brightgreen?style=for-the-badge">

  <!-- Author Badge With GitHub Link -->
  <a href="https://github.com/FarhadNuri">
    <img src="https://img.shields.io/badge/Author-Farhad%20Nuri-lightgrey?style=for-the-badge&logo=github">
  </a>
</p>


# 📘 Chapter 1: Database Basics

A beginner-friendly guide covering table design, naming conventions, data types, and database schema fundamentals.

---

## 🧩 Table Structure & Naming Rules

### ✅ Table Names
- Should be **clear** and descriptive.
- Use **underscores (`_`)** instead of spaces.
- Avoid special characters.
- Prefer lowercase.

**Examples:**
- inventory
- books
- products
- student_records


---

## 🔢 Rows & Columns

| Term | Description | Tip |
|------|-------------|-----|
| **Row** | A single record in a table | Shortcut: **R = Record** |
| **Column** | A field that stores one type of data | Also called **Field** |

📝 *Rows move horizontally (right), columns move vertically (down)*

---

## 🏷️ Field (Column) Naming Rules

- Use **underscores**, not spaces.
- Field names should be **singular**.
- Each field stores one type of information for each record.
- No two fields in the same table can have the same name.

**Examples:**
- product_name
- price
- created_at
- student_id


---

## 🗂️ Data Types Overview

Data is stored on the **server’s hard disk**.  
Servers respond to network requests and manage database operations.

Different data requires different data types.

### 🔤 1. String Types
- `VARCHAR`
- Stores text-based values.

### 🔢 2. Whole Numbers
- `INT` (Integer)
- Range: **−2 billion to +2 billion**

### 🧮 3. Fractional Numbers
- `NUMERIC`
- Stores decimal values.
- Supports up to **38 digits** total (before + after decimal).

---

## 🗺️ Database Schema

A **schema** is the blueprint or architecture of the database.

### 📌 Schema Includes:
- All tables
- Relationships between tables
- Fields and their data types
- Full design layout of the database

### 📊 Why Schema Matters:
- Helps visualize the entire database
- Shows how tables connect
- Makes organizing and scaling data easier

---

## ✅ Summary

A good database design uses:
- Clean table & field names  
- Consistent naming conventions  
- Correct data types  
- A clear, well-structured schema  

This keeps your database clean, fast, and easy to maintain.

---

