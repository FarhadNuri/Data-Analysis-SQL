# 📘 Chapter 1: Querying a Database

Learn how to count records, combine COUNT with DISTINCT, understand SQL execution order, and format SQL queries properly.

---

## 🔢 COUNT() — Counting Records in a Table

### ✅ Basic COUNT()
Returns the number of records with a **non-null value** in a field:

```sql
SELECT COUNT(birthdate) AS count_birthdate
FROM people;
