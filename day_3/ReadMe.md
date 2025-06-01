# 📅 Day 3

Completed 2 SQL queries focused on **multi-table JOINs**, **aggregation**, and **filtering** using `GROUP BY`, `HAVING`, and `ORDER BY`.

**Combined File**: `day_3.sql`

---

## 🏫 DEM_School – Identify Students with Multiple Enrollments in the Same Semester

**Scenario**:  
The counselor wants to list students enrolled in multiple classes within the same semester.

**Task**:  
Identify students who have more than one enrollment in the same semester.

**Techniques Used**:
- `JOIN` across `students`, `enrollments`, and `classes` tables  
- `GROUP BY` on student name and semester  
- `HAVING` clause to filter students with more than one enrollment  
- `ORDER BY` to rank by number of subjects taken

---

## 🎬 DVD Rentals – Top 5 Customers by Rentals

**Scenario**:  
The marketing team wants to reward the top 5 customers with the most rentals.

**Task**:  
List the top 5 customers with the highest number of rentals.

**Techniques Used**:
- `JOIN` between `customer` and `rental` tables  
- Aggregation using `COUNT()` to calculate number of rentals  
- `GROUP BY` on customer name  
- `ORDER BY` and `LIMIT` to get top 5 results