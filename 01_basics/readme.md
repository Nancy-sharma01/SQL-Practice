# SQL Practice

A structured journey to learn and practice SQL from the basics to advanced concepts, with a focus on **placements, interviews, and real-world data handling**.

---

## 📅 Day 01 — SQL Basics

**Date:** August 11, 2026

### 📚 Topics Covered

* Creating databases using `CREATE DATABASE`
* Deleting databases using `DROP DATABASE`
* Selecting a database using `USE`
* Viewing available databases using `SHOW DATABASES`
* Creating tables using `CREATE TABLE`
* Deleting tables using `DROP TABLE`
* Viewing tables using `SHOW TABLES`
* SQL data types:

  * `INT`
  * `VARCHAR`
* Basic constraints:

  * `PRIMARY KEY`
  * `NOT NULL`
* Inserting data using `INSERT INTO`
* Inserting multiple rows
* Retrieving data using `SELECT *`

### 💻 Commands Practiced

```sql
CREATE DATABASE college;

USE college;

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student (id, name, age)
VALUES
(1, 'Aman', 26),
(2, 'Raj', 28);

SELECT * FROM student;

SHOW DATABASES;
SHOW TABLES;

DROP TABLE student;
```

### 🧠 Key Learnings

* A **database** can contain multiple tables.
* A **table** consists of rows and columns.
* `PRIMARY KEY` uniquely identifies each row.
* `NOT NULL` prevents a column from storing `NULL` values.
* `INSERT INTO` is used to add data to a table.
* `SELECT` is used to retrieve data.

### 🎯 Practice

Created and manipulated a `student` table with student records to practice database, table, and basic data operations.

---

### 📌 Progress

**Day 01 / SQL Learning Journey**

* [x] Database creation & deletion
* [x] Table creation & deletion
* [x] Basic data types
* [x] Basic constraints
* [x] Insert data
* [x] Retrieve data

**Next:** `SELECT` queries, `WHERE`, filtering, comparison operators, `ORDER BY`, and `LIMIT`.
