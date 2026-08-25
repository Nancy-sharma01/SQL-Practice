# 🔗 SQL Joins

This folder contains my practice and learning related to **SQL JOINs**.

JOINs are used to combine data from two or more tables based on a related column. They are an essential part of SQL and are commonly used in real-world databases, data analysis, and technical interviews.

---

## 📚 Topics Covered

### 1. INNER JOIN

Returns only the rows that have matching values in both tables.

```sql
SELECT *
FROM stu
INNER JOIN course
ON stu.id = course.id;
```

---

### 2. LEFT JOIN

Returns all rows from the left table and the matching rows from the right table.

If there is no match, the columns from the right table contain `NULL`.

```sql
SELECT *
FROM stu
LEFT JOIN course
ON stu.id = course.id;
```

---

### 3. RIGHT JOIN

Returns all rows from the right table and the matching rows from the left table.

If there is no match, the columns from the left table contain `NULL`.

```sql
SELECT *
FROM stu
RIGHT JOIN course
ON stu.id = course.id;
```

---

### 4. FULL OUTER JOIN

Returns all matching and non-matching rows from both tables.

MySQL does not directly support `FULL OUTER JOIN`, so it can be simulated using `LEFT JOIN`, `RIGHT JOIN`, and `UNION`.

```sql
SELECT *
FROM stu AS s
LEFT JOIN course AS c
ON s.id = c.id

UNION

SELECT *
FROM stu AS s
RIGHT JOIN course AS c
ON s.id = c.id;
```

---

### 5. LEFT EXCLUSIVE JOIN

Returns rows that exist in the left table but do not have a matching row in the right table.

```sql
SELECT *
FROM stu AS a
LEFT JOIN course AS b
ON a.id = b.id
WHERE b.id IS NULL;
```

---

### 6. RIGHT EXCLUSIVE JOIN

Returns rows that exist in the right table but do not have a matching row in the left table.

```sql
SELECT *
FROM stu AS s
RIGHT JOIN course AS c
ON s.id = c.id
WHERE s.id IS NULL;
```

---

### 7. SELF JOIN

A SELF JOIN is used when a table is joined with itself.

It is useful for representing relationships within the same table, such as **employees and their managers**.

```sql
SELECT a.name AS manager_name, b.name
FROM employee AS a
JOIN employee AS b
ON a.id = b.manager_id;
```

---

## 🏷️ Table Aliases

Aliases provide shorter names for tables and make queries easier to read and write.

Example:

```sql
SELECT *
FROM stu AS s
INNER JOIN course AS c
ON s.id = c.id;
```

Here:

* `s` → alias for `stu`
* `c` → alias for `course`

---

## 🗂️ Tables Practiced

### `stu`

|  id | name  |
| --: | ----- |
| 101 | Adam  |
| 102 | Bob   |
| 103 | Casey |

### `course`

|  id | course           |
| --: | ---------------- |
| 102 | English          |
| 105 | Maths            |
| 103 | Science          |
| 107 | Computer Science |

### `employee`

|  id | name   | manager_id |
| --: | ------ | ---------: |
| 101 | Adam   |        103 |
| 102 | Bob    |        104 |
| 103 | Casey  |       NULL |
| 104 | Donald |        103 |

---

## 🧠 Key Learnings

* How to combine data from multiple tables using JOINs.
* Difference between `INNER JOIN`, `LEFT JOIN`, and `RIGHT JOIN`.
* How to simulate a `FULL OUTER JOIN` in MySQL using `UNION`.
* How to find unmatched records using exclusive joins.
* How to use table aliases for cleaner and shorter queries.
* How SELF JOIN can represent relationships within the same table.
* How primary-key relationships can be used to connect tables.

---

## 📂 Practice File

* `day_07_joins.sql` — Contains all SQL queries practiced during Day 07.

---

## 🚀 Progress

**Day 07 / SQL Practice**

**Status:** ✅ Completed

Next topics: **Subqueries → CTEs → Window Functions → Views → Indexes → SQL Optimization**
