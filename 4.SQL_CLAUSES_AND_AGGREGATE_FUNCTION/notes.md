# 📘 SQL Clauses & Aggregate Functions

## 🔹 What are SQL Clauses?

SQL Clauses are keywords used with SQL statements (mainly `SELECT`) to filter, sort, group, and limit data.

They control **how data is retrieved** from the database.

---

# ✅ Common SQL Clauses

## 🔹 1. SELECT Clause

Used to specify which columns to retrieve.

**Example:**

```sql id="g8eahf"
SELECT name, age FROM Students;
```

---

## 🔹 2. FROM Clause

Specifies the table from which data is taken.

**Example:**

```sql id="w2xxh5"
SELECT * FROM Students;
```

---

## 🔹 3. WHERE Clause

Filters rows based on conditions.

**Example:**

```sql id="8jdz5o"
SELECT * FROM Students
WHERE age > 20;
```

---

## 🔹 4. ORDER BY Clause

Sorts the result set (Ascending by default).

| Keyword | Meaning             |
| ------- | ------------------- |
| ASC     | Ascending (default) |
| DESC    | Descending          |

**Example:**

```sql id="kp4xlp"
SELECT * FROM Students
ORDER BY age DESC;
```

---

## 🔹 5. GROUP BY Clause

Groups rows that have the same values into summary rows.

Used with aggregate functions.

**Example:**

```sql id="d9ddqq"
SELECT course, COUNT(*) 
FROM Students
GROUP BY course;
```

---

## 🔹 6. HAVING Clause

Filters grouped data (used after GROUP BY).

**Example:**

```sql id="24r57m"
SELECT course, COUNT(*) 
FROM Students
GROUP BY course
HAVING COUNT(*) > 2;
```

Difference:

* `WHERE` → filters rows before grouping
* `HAVING` → filters groups after grouping

---

## 🔹 7. LIMIT Clause (MySQL)

Restricts number of rows returned.

**Example:**

```sql id="8yixk0"
SELECT * FROM Students
LIMIT 5;
```

---

# ✅ Aggregate Functions in SQL

Aggregate functions perform calculations on multiple rows and return a **single result**.

---

## 🔹 1. COUNT()

Counts number of rows.

**Example:**

```sql id="d12iv1"
SELECT COUNT(*) FROM Students;
```

Counts total students.

---

## 🔹 2. SUM()

Calculates total value of a column.

**Example:**

```sql id="54bgf0"
SELECT SUM(salary) FROM Employees;
```

---

## 🔹 3. AVG()

Calculates average value.

**Example:**

```sql id="9me2ad"
SELECT AVG(age) FROM Students;
```

---

## 🔹 4. MAX()

Finds highest value.

**Example:**

```sql id="2i0r19"
SELECT MAX(marks) FROM Students;
```

---

## 🔹 5. MIN()

Finds lowest value.

**Example:**

```sql id="npz7h4"
SELECT MIN(marks) FROM Students;
```

---

# ✅ Using Aggregate Functions with GROUP BY

This is the most important real-world usage.

**Example:**

```sql id="lsr3y0"
SELECT course, AVG(age)
FROM Students
GROUP BY course;
```

Finds average age per course.

---

# ✅ Example Combining Multiple Clauses

```sql id="v2e87i"
SELECT course, COUNT(*) AS total_students
FROM Students
WHERE age > 18
GROUP BY course
HAVING COUNT(*) > 1
ORDER BY total_students DESC;
```

Execution Order (Important Concept):
1️⃣ FROM
2️⃣ WHERE
3️⃣ GROUP BY
4️⃣ HAVING
5️⃣ SELECT
6️⃣ ORDER BY
7️⃣ LIMIT

---

# 📊 Difference Between WHERE and HAVING

| Feature           | WHERE           | HAVING   |
| ----------------- | --------------- | -------- |
| Filters           | Individual rows | Groups   |
| Used With         | SELECT          | GROUP BY |
| Aggregate Allowed | ❌ No            | ✅ Yes    |

---

# ✅ Key Takeaways

* Clauses control **how data is selected and displayed**.
* Aggregate functions perform **calculations on grouped data**.
* `GROUP BY + Aggregate` is heavily used in analytics and reporting.
* Understanding execution order helps write correct queries.

---

✔ These concepts are fundamental for writing real-world SQL queries and data analysis tasks.
