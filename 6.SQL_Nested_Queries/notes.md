# 📘 SQL Nested Queries (Subqueries)

## 🔹 What is a Nested Query?

A **Nested Query** (also called a **Subquery**) is a query written **inside another SQL query**.

The inner query executes first, and its result is used by the outer query.

👉 Used when a query depends on the result of another query.

---

## 🔹 Why Use Nested Queries?

Nested queries help:

* Break complex problems into smaller parts
* Perform filtering based on calculated results
* Compare values with results from another table
* Avoid writing multiple separate queries

---

# ✅ Basic Syntax

```sql id="exv1w9"
SELECT column_name
FROM table_name
WHERE column_name OPERATOR (
    SELECT column_name
    FROM another_table
);
```

Inner query → runs first
Outer query → uses its result

---

# ✅ Types of Nested Queries

## 🔹 1. Subquery in WHERE Clause

Used to filter rows based on another query result.

**Example:**
Find students whose age is greater than the average age.

```sql id="r5b1lq"
SELECT name, age
FROM Students
WHERE age > (
    SELECT AVG(age) FROM Students
);
```

📌 Inner query calculates average age → outer query compares.

---

## 🔹 2. Subquery with IN Operator

Used when inner query returns multiple values.

**Example:**
Find students enrolled in courses listed in another table.

```sql id="sl3g8r"
SELECT name
FROM Students
WHERE id IN (
    SELECT student_id FROM Courses
);
```

📌 Returns students who exist in the Courses table.

---

## 🔹 3. Subquery with EXISTS

Checks whether the subquery returns any rows.

**Example:**
Find customers who have placed orders.

```sql id="f24n6m"
SELECT name
FROM Customers C
WHERE EXISTS (
    SELECT *
    FROM Orders O
    WHERE C.id = O.customer_id
);
```

📌 Returns TRUE if matching rows exist.

---

## 🔹 4. Subquery in SELECT Clause

Used to display calculated value alongside each row.

**Example:**
Show each student's age along with average age.

```sql id="c0s16b"
SELECT name,
       age,
       (SELECT AVG(age) FROM Students) AS average_age
FROM Students;
```

📌 Same average shown for each row.

---

## 🔹 5. Subquery in FROM Clause (Derived Table)

The subquery acts like a temporary table.

**Example:**
Find average marks from a filtered result.

```sql id="0un3qk"
SELECT AVG(marks)
FROM (
    SELECT marks FROM Students WHERE course = 'CSE'
) AS temp_table;
```

📌 Inner query forms a virtual table.

---

# ✅ Types of Subqueries Based on Result

| Type                    | Description            |
| ----------------------- | ---------------------- |
| Single-row Subquery     | Returns only one value |
| Multiple-row Subquery   | Returns many values    |
| Correlated Subquery     | Depends on outer query |
| Non-Correlated Subquery | Runs independently     |

---

## 🔹 Correlated Subquery

Runs once for each row of the outer query.

**Example:**
Find students whose marks are higher than the average of their course.

```sql id="i2m8hu"
SELECT name, course, marks
FROM Students S1
WHERE marks > (
    SELECT AVG(marks)
    FROM Students S2
    WHERE S1.course = S2.course
);
```

📌 Inner query depends on outer query values.

---

# ✅ Subquery vs JOIN

| Feature     | Subquery                       | JOIN                        |
| ----------- | ------------------------------ | --------------------------- |
| Readability | Easier for logic-based queries | Better for combining tables |
| Performance | Sometimes slower               | Usually faster              |
| Usage       | Filtering / calculations       | Combining data              |

---

# ✅ Execution Order

1️⃣ Inner Query Executes
2️⃣ Result Passed to Outer Query
3️⃣ Outer Query Produces Final Output

---

# 📌 Real-World Uses of Nested Queries

✔ Finding employees earning above average salary
✔ Identifying customers who made purchases
✔ Comparing grouped values
✔ Filtering data dynamically
✔ Analytics and reporting queries

---

# 🔹 Example Combining Everything

```sql id="0qs91v"
SELECT name
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);
```

📌 Finds employees earning more than company average.

---

# ✅ Key Takeaways

✔ A Nested Query is a query inside another query.
✔ Helps solve complex filtering and comparison problems.
✔ Inner query runs first, outer query uses its result.
✔ Can be used with WHERE, SELECT, FROM, EXISTS, IN, etc.
✔ Essential for advanced SQL problem solving.

---

✔ Nested queries are a powerful alternative to JOINs when logic-based filtering is required.
