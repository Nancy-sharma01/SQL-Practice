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

---

## 📅 Day 02 — SQL Constraints

**Date:** August 12, 2026

### 📚 Topics Covered

- `UNIQUE` constraint
- `PRIMARY KEY` (revision)
- `DEFAULT` constraint
- Using `SELECT` to verify inserted data

### 💻 Commands Practiced

```sql
CREATE TABLE temp(
    id INT UNIQUE
);

INSERT INTO temp VALUES (101);

CREATE TABLE temp1(
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    PRIMARY KEY(id)
);

CREATE TABLE emp(
    id INT,
    salary INT DEFAULT 25000
);

INSERT INTO emp(id)
VALUES (1);

SELECT * FROM emp;
```

### 🧠 Key Learnings

- `UNIQUE` prevents duplicate values in a column.
- `PRIMARY KEY` uniquely identifies each row and does not allow `NULL` values.
- `DEFAULT` automatically assigns a value when none is provided during insertion.

### 🎯 Practice

Created multiple tables using different constraints and observed their behavior by inserting records and retrieving data.

---

# Day 03 - SELECT Queries & Filtering 🔍

## 📚 Topics Covered

- Creating Tables
- Inserting Records
- SELECT Statement
- DISTINCT
- WHERE Clause
- Comparison Operators
- Logical Operators (AND, OR)
- Arithmetic Operators in WHERE
- BETWEEN
- IN & NOT IN
- LIMIT
- ORDER BY (ASC & DESC)

---

## 💻 Practice Queries

### Creating Table

- CREATE TABLE
- PRIMARY KEY
- NOT NULL

### Inserting Data

- INSERT INTO
- Multiple Row Insert

### SELECT

- Select specific columns
- Select all columns
- DISTINCT values

### WHERE Clause

- Filtering using comparison operators
- AND
- OR
- Arithmetic expressions
- BETWEEN
- IN
- NOT IN

### LIMIT

- Retrieve first N rows
- Combine LIMIT with WHERE

### ORDER BY

- Ascending order
- Descending order
- Top N records using ORDER BY + LIMIT

---

## ✅ Concepts Learned

- Difference between `SELECT *` and selecting specific columns.
- Using `DISTINCT` to remove duplicate values.
- Filtering records with `WHERE`.
- Combining conditions using `AND` and `OR`.
- Using `BETWEEN`, `IN`, and `NOT IN`.
- Sorting data using `ORDER BY`.
- Retrieving limited records with `LIMIT`.

---

## 🚀 Progress

- ✅ Day 01 — SQL Basics & Databases
- ✅ Day 02 — Constraints (PRIMARY KEY, UNIQUE, DEFAULT, CHECK)
- ✅ Day 03 — SELECT, WHERE, LIMIT & ORDER BY

---

# Day 04 - Aggregate Functions, GROUP BY & HAVING 📊

## 📚 Topics Covered

- Aggregate Functions
  - `MAX()`
  - `MIN()`
  - `AVG()`
  - `COUNT()`
- `GROUP BY`
- `HAVING`
- Sorting grouped data using `ORDER BY`

---

## 💻 Practice Queries

### 📊 Aggregate Functions

- Find maximum value using `MAX()`
- Find minimum value using `MIN()`
- Calculate average using `AVG()`
- Count records using `COUNT()`

### 🗂️ GROUP BY

- Group records by city
- Count students in each city
- Group by multiple columns
- Calculate average marks for each city

### 🎯 HAVING Clause

- Filter grouped results
- Use aggregate functions inside `HAVING`
- Combine `WHERE`, `GROUP BY`, `HAVING`, and `ORDER BY`

---

## 🧠 Concepts Learned

- Used aggregate functions to summarize data.
- Grouped records using `GROUP BY`.
- Calculated aggregate values for each group.
- Filtered grouped results using `HAVING`.
- Sorted grouped results using `ORDER BY`.

---

## 🚀 Progress

- ✅ Day 01 — SQL Basics
- ✅ Day 02 — Constraints
- ✅ Day 03 — SELECT, WHERE, LIMIT & ORDER BY
- ✅ Day 04 — Aggregate Functions, GROUP BY & HAVING

---

## 📅 Day 05 — UPDATE, DELETE & FOREIGN KEY

### 📚 Topics Covered

- UPDATE statement
- Updating single and multiple records
- Using WHERE with UPDATE
- Arithmetic update (`marks = marks + 1`)
- DELETE statement
- Deleting specific records using WHERE
- Foreign Key
- Parent and Child tables
- Cascading (`ON UPDATE CASCADE`, `ON DELETE CASCADE`)
- Testing cascade operations

---

### 📝 Queries Practiced

#### UPDATE

```sql
UPDATE student
SET grade='O'
WHERE grade='A';
```

```sql
UPDATE student
SET marks=82
WHERE roll_no=105;
```

```sql
UPDATE student
SET grade='B'
WHERE marks BETWEEN 80 AND 90;
```

```sql
UPDATE student
SET marks = marks + 1;
```

---

#### DELETE

```sql
DELETE FROM student
WHERE marks < 33;
```

---

#### FOREIGN KEY

Created two tables:

- `dept`
- `teacher`

Linked them using a Foreign Key.

```sql
FOREIGN KEY (dept_id)
REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE;
```

---

### 🔄 Cascade Demonstration

Updated department ID:

```sql
UPDATE dept
SET id = 103
WHERE id = 102;
```

Observed that the corresponding `dept_id` inside the **teacher** table was automatically updated because of **ON UPDATE CASCADE**.

---

### 🎯 Concepts Learned

- How UPDATE modifies existing records.
- Importance of the WHERE clause while updating or deleting.
- Difference between deleting specific rows and deleting an entire table's data.
- Relationship between Parent and Child tables.
- How Foreign Keys maintain referential integrity.
- Working of ON UPDATE CASCADE and ON DELETE CASCADE.