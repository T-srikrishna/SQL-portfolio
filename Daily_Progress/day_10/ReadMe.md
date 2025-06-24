## 📅 Day 10  
🔍 Advanced Rental Insights

Today’s focus was on multi-table joins, aggregation, and filtering logic to uncover deeper insights from the DVD rental database. Practiced using DISTINCT, HAVING, and CTEs for better control over query logic and results.

---

### 🌍 Customers with Rentals in Multiple Cities  
**Scenario:**  
The manager wants to identify customers who rent from different cities.

**Task:**  
List customers who have rentals linked to addresses in more than one city.

**What I Used:**  
- Multi-table joins: rental → inventory → store → address → city  
- `COUNT(DISTINCT city_id)` to calculate unique cities per customer  
- `GROUP BY` on customer_id, first_name, last_name  
- `HAVING` to filter only customers renting from more than one city

**Tables Involved:**  
- rental, inventory, store, address, city, customer

**Key Concepts Practiced:**  
- Navigating relationships across multiple tables  
- Counting unique entities with `COUNT(DISTINCT ...)`  
- Filtering grouped results with `HAVING`

---

### ⏱️ Longest Rental Duration per Customer  
**Scenario:**  
The manager wants to know which customer kept a rental the longest.

**Task:**  
Find the longest rental duration for each customer.

**What I Used:**  
- `MAX(return_date - rental_date)` to compute rental period  
- JOIN between rental and customer  
- `GROUP BY` customer_id to calculate per-customer duration

**Tables Involved:**  
- rental, customer

**Key Concepts Practiced:**  
- Using date arithmetic to calculate durations  
- Grouping results to derive individual-level metrics  
- Aggregating data with `MAX`

---

### 🎥 Films Rented But Never Returned  
**Scenario:**  
The manager wants to identify films that are currently out with no return recorded.

**Task:**  
List films with rentals where `return_date IS NULL`.

**What I Used:**  
- Common Table Expression (CTE) to isolate rentals with missing return dates  
- `EXISTS` subquery to ensure the rental maps to an actual film  
- LEFT JOIN from rental → inventory → film to retrieve film titles  
- `DISTINCT` to avoid duplicate titles

**Tables Involved:**  
- rental, inventory, film

**Key Concepts Practiced:**  
- Writing and using `WITH` CTEs for logical separation  
- Filtering rentals with `IS NULL`  
- Ensuring data linkage with `EXISTS`  
- Avoiding duplicates with `DISTINCT`
