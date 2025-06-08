# 📅 Day 6

Completed 1 SQL challenge focused on **identifying high-performing films** using both a **subquery** and a **CTE (Common Table Expression)**. This exercise strengthened proficiency in `JOIN`, `GROUP BY`, `HAVING`, aggregate functions, and query optimization techniques.

**Combined File**: `day_6_sakila_queries.sql`

---

## 🎥 Sakila DVD – Films Rented More Than the Average

**Scenario**:  
The inventory manager wants to identify films that are rented more often than the average, in order to prioritize stocking and promotion strategies.

**Task**:  
List films whose total rental count is above the average rental count per film.

### ✅ Approach 1: Using a Subquery

- **Subquery** calculates the average number of rentals per film.
- The main query groups rentals by film and compares each film's count to the average.
  
**Techniques Used**:
- `JOIN` across `film`, `inventory`, and `rental` tables  
- Subquery to calculate `AVG(rental_count)`  
- `GROUP BY` on `film_id` and `title`  
- `HAVING` to filter films above the average rental count  

---

### ✅ Approach 2: Using a CTE (Common Table Expression)

- `WITH` clause defines a temporary result (CTE) that calculates the average rental count per film.
- Main query references the CTE in the `HAVING` clause for comparison.

**Techniques Used**:
- `WITH ... AS (...)` CTE syntax  
- Inner aggregation within the CTE to get `rental_count` per film  
- `AVG` and aliasing inside CTE for clean referencing  
- Final query identical in structure to subquery version, but uses `(SELECT avg_rental FROM avg_rentals)` for comparison  

---

**Learning Outcome**:  
Reinforced understanding of both subqueries and CTEs for solving aggregate comparison problems. Practiced writing reusable and modular SQL blocks with clean logic separation.

