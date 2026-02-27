# 📘 SQL Summary Notes

## 🔹 Foreign Key in SQL

A **Foreign Key** is a column (or group of columns) used to create a link between two tables.
It enforces **referential integrity**, meaning values must exist in the referenced table.

✅ Prevents invalid data entry.
✅ Connects related tables.

**Example:**

```sql
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
```

---

## 🔹 UPDATE Command in SQL

The `UPDATE` command is used to **modify existing records** in a table.

**Syntax:**

```sql
UPDATE table_name
SET column = value
WHERE condition;
```

**Example:**

```sql
UPDATE Students
SET course = 'IT'
WHERE id = 1;
```

⚠️ Without `WHERE`, all rows will be updated.

---

## 🔹 DELETE Command in SQL

The `DELETE` command removes records from a table.

**Syntax:**

```sql
DELETE FROM table_name
WHERE condition;
```

**Example:**

```sql
DELETE FROM Students WHERE id = 2;
```

⚠️ Without `WHERE`, all records will be deleted (table remains).

---

## 🔹 SELECT Command in SQL

The `SELECT` command retrieves data from a table.

**Syntax:**

```sql
SELECT column1, column2 FROM table_name;
```

**Example:**

```sql
SELECT * FROM Students;
```

`*` means fetch all columns.

---

## 🔹 WHERE Clause in SQL

The `WHERE` clause filters records based on a condition.

**Syntax:**

```sql
SELECT * FROM table_name WHERE condition;
```

**Example:**

```sql
SELECT * FROM Students WHERE age > 20;
```

Used with:

* SELECT
* UPDATE
* DELETE

---

## 🔹 ALTER Command in SQL

The `ALTER` command modifies the structure of an existing table.

Used to:

* Add column
* Modify column
* Drop column

**Example (Add Column):**

```sql
ALTER TABLE Students ADD email VARCHAR(100);
```

---

## 🔹 RENAME Command in SQL

The `RENAME` command changes the name of a table.

**Syntax:**

```sql
RENAME TABLE old_name TO new_name;
```

**Example:**

```sql
RENAME TABLE Students TO College_Students;
```

---

## 🔹 TRUNCATE Command in SQL

The `TRUNCATE` command removes **all records** from a table instantly.

**Syntax:**

```sql
TRUNCATE TABLE table_name;
```

✅ Faster than DELETE
✅ Cannot be rolled back (in most DBMS)
✅ Resets AUTO_INCREMENT

---

## 🔹 Difference Between TRUNCATE, DELETE & DROP

| Feature                    | DELETE | TRUNCATE     | DROP      |
| -------------------------- | ------ | ------------ | --------- |
| Removes Data               | Yes    | Yes          | Yes       |
| Removes Table Structure    | No     | No           | Yes       |
| WHERE Clause Allowed       | Yes    | No           | No        |
| Speed                      | Slow   | Fast         | Very Fast |
| Rollback Possible          | Yes    | No (usually) | No        |
| Auto Increment Reset       | No     | Yes          | Yes       |
| Table Exists After Command | Yes    | Yes          | No        |

---

## 🔹 DISTINCT Keyword in SQL

`DISTINCT` removes duplicate values from query results.

**Syntax:**

```sql
SELECT DISTINCT column FROM table_name;
```

**Example:**

```sql
SELECT DISTINCT course FROM Students;
```

Returns only unique course names.

---

# ✅ Key Takeaway

These commands help you:

* Maintain relationships → `FOREIGN KEY`
* Modify data → `UPDATE`
* Remove data → `DELETE`, `TRUNCATE`
* Retrieve data → `SELECT`
* Filter results → `WHERE`
* Change structure → `ALTER`, `RENAME`
* Remove duplicates → `DISTINCT`
