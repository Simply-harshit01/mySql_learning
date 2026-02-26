# 📘 Operators in SQL

Operators in SQL are used to perform operations on data such as comparison, calculation, and logical evaluation inside queries.

---

## 🔹 1. Arithmetic Operators

Used to perform mathematical calculations on numeric values.

| Operator | Meaning             |
| -------- | ------------------- |
| `+`      | Addition            |
| `-`      | Subtraction         |
| `*`      | Multiplication      |
| `/`      | Division            |
| `%`      | Modulus (Remainder) |

**Example:**

```sql
SELECT name, salary, salary + 5000 AS increased_salary
FROM Employees;
```

Adds ₹5000 bonus to each employee’s salary.

---

## 🔹 2. Comparison (Relational) Operators

Used to compare values in conditions.

| Operator     | Meaning               |
| ------------ | --------------------- |
| `=`          | Equal to              |
| `!=` or `<>` | Not equal to          |
| `>`          | Greater than          |
| `<`          | Less than             |
| `>=`         | Greater than or equal |
| `<=`         | Less than or equal    |

**Example:**

```sql
SELECT * FROM Students
WHERE age > 20;
```

Returns students older than 20.

---

## 🔹 3. Logical Operators

Used to combine multiple conditions.

| Operator | Meaning                     |
| -------- | --------------------------- |
| `AND`    | All conditions must be true |
| `OR`     | At least one condition true |
| `NOT`    | Reverses condition          |

**Example (AND):**

```sql
SELECT * FROM Students
WHERE age > 20 AND course = 'CSE';
```

**Example (OR):**

```sql
SELECT * FROM Students
WHERE course = 'CSE' OR course = 'ECE';
```

**Example (NOT):**

```sql
SELECT * FROM Students
WHERE NOT course = 'CSE';
```

---

## 🔹 4. BETWEEN Operator

Used to filter values within a range (inclusive).

**Example:**

```sql
SELECT * FROM Students
WHERE age BETWEEN 18 AND 22;
```

Returns students whose age lies between 18 and 22.

---

## 🔹 5. IN Operator

Used to match values from a list.

**Example:**

```sql
SELECT * FROM Students
WHERE course IN ('CSE', 'IT', 'ECE');
```

Returns students enrolled in any of these courses.

---

## 🔹 6. LIKE Operator

Used for pattern matching (searching text).

| Symbol | Meaning                  |
| ------ | ------------------------ |
| `%`    | Any number of characters |
| `_`    | Single character         |

**Example:**

```sql
SELECT * FROM Students
WHERE name LIKE 'A%';
```

Returns names starting with **A**.

```sql
SELECT * FROM Students
WHERE name LIKE '_a%';
```

Second letter must be **a**.

---

## 🔹 7. IS NULL Operator

Used to check for missing (NULL) values.

**Example:**

```sql
SELECT * FROM Students
WHERE email IS NULL;
```

Finds records where email is not provided.

---

## 🔹 8. IS NOT NULL Operator

Checks for values that are present.

**Example:**

```sql
SELECT * FROM Students
WHERE email IS NOT NULL;
```

---

## 🔹 9. EXISTS Operator

Used to test whether a subquery returns any record.

**Example:**

```sql
SELECT name
FROM Customers
WHERE EXISTS (
    SELECT * FROM Orders
    WHERE Customers.id = Orders.customer_id
);
```

Returns customers who placed at least one order.

---

# ✅ Summary

SQL Operators allow you to:

* Perform calculations → Arithmetic Operators
* Compare values → Comparison Operators
* Combine conditions → Logical Operators
* Filter ranges → BETWEEN
* Match lists → IN
* Search patterns → LIKE
* Handle missing values → IS NULL
* Work with subqueries → EXISTS

They are mainly used with the `WHERE` clause to retrieve meaningful data.

---

✔ Operators make SQL powerful for querying and analyzing data efficiently.
