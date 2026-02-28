# 📘 SQL JOINS – Notes

## 🔹 What is a JOIN in SQL?

A **JOIN** is used to combine data from two or more tables based on a related column between them.

It helps retrieve meaningful information stored across multiple tables.

👉 Usually, tables are connected using **Primary Key** and **Foreign Key**.

---

## 🔹 Why Do We Use JOINS?

In real databases, data is normalized (split into multiple tables).

Example:

* `Students` table → student info
* `Courses` table → course info

To see which student is enrolled in which course → we use JOIN.

---

# ✅ Types of SQL JOINS

## 🔹 1. INNER JOIN

Returns only the rows where there is a match in both tables.

**Syntax:**

```sql id="q3t7mk"
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;
```

**Example:**

```sql id="s8yz2k"
SELECT Students.name, Courses.course_name
FROM Students
INNER JOIN Courses
ON Students.id = Courses.student_id;
```

📌 Shows only students who are enrolled in courses.

---

## 🔹 2. LEFT JOIN (LEFT OUTER JOIN)

Returns all records from the **left table**, and matching records from the right table.
If no match → NULL values are shown.

**Syntax:**

```sql id="n8r82z"
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.column = table2.column;
```

**Example:**

```sql id="4uxff5"
SELECT Students.name, Courses.course_name
FROM Students
LEFT JOIN Courses
ON Students.id = Courses.student_id;
```

📌 Shows all students, even if they are not enrolled.

---

## 🔹 3. RIGHT JOIN (RIGHT OUTER JOIN)

Returns all records from the **right table**, and matching ones from the left table.

**Example:**

```sql id="lp6kz3"
SELECT Students.name, Courses.course_name
FROM Students
RIGHT JOIN Courses
ON Students.id = Courses.student_id;
```

📌 Shows all courses, even if no student is enrolled.

---

## 🔹 4. FULL JOIN (FULL OUTER JOIN)

Returns all records when there is a match in either table.

(MySQL doesn’t support FULL JOIN directly — use UNION.)

**Example (MySQL workaround):**

```sql id="bhf2sh"
SELECT * FROM Students
LEFT JOIN Courses ON Students.id = Courses.student_id
UNION
SELECT * FROM Students
RIGHT JOIN Courses ON Students.id = Courses.student_id;
```

📌 Shows everything from both tables.

---

## 🔹 5. CROSS JOIN

Returns Cartesian product (every row of first table × every row of second table).

**Example:**

```sql id="ntflp2"
SELECT Students.name, Courses.course_name
FROM Students
CROSS JOIN Courses;
```

📌 If 3 students and 4 courses → 12 rows returned.

Used rarely, mainly for combinations.

---

## 🔹 6. SELF JOIN

A table joined with itself (used for hierarchical relationships).

**Example:**
Employee–Manager relationship:

```sql id="svipf6"
SELECT A.name AS Employee, B.name AS Manager
FROM Employees A
JOIN Employees B
ON A.manager_id = B.id;
```

📌 Used when data exists within the same table.

---

# 📊 Visual Understanding of Joins

| JOIN Type  | Returns                   |
| ---------- | ------------------------- |
| INNER JOIN | Only matching rows        |
| LEFT JOIN  | All left + matched right  |
| RIGHT JOIN | All right + matched left  |
| FULL JOIN  | All rows from both tables |
| CROSS JOIN | All possible combinations |
| SELF JOIN  | Table joined to itself    |

---

# ✅ Example Tables

**Students Table**

| id | name    |
| -- | ------- |
| 1  | Harshit |
| 2  | Amit    |
| 3  | Neha    |

**Courses Table**

| student_id | course_name |
| ---------- | ----------- |
| 1          | CSE         |
| 2          | ECE         |

---

**INNER JOIN Result**

| name    | course |
| ------- | ------ |
| Harshit | CSE    |
| Amit    | ECE    |

**LEFT JOIN Result**

| name    | course |
| ------- | ------ |
| Harshit | CSE    |
| Amit    | ECE    |
| Neha    | NULL   |

---

# 🔹 Key Points to Remember

✔ JOIN combines related tables.
✔ Always use `ON` to specify matching condition.
✔ INNER JOIN is most commonly used.
✔ LEFT JOIN helps find missing relationships.
✔ JOINS are essential in real-world databases.

---

# ✅ General Syntax Pattern to Remember

```sql id="ol9er7"
SELECT columns
FROM table1
JOIN table2
ON table1.common_column = table2.common_column;
```

---

# 📌 Real-World Usage

JOINS are used in:

* E-commerce (Customers + Orders)
* College systems (Students + Courses)
* Banking (Accounts + Transactions)
* Any relational database system.

---

✔ Understanding JOINS is one of the most important SQL skills for backend development and data analysis.
