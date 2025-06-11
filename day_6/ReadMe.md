# 📅 Day 6

Wrote 2 versions of the same query to figure out **which films are rented more than the average number of times** — one using a subquery and another using a CTE. Main goal was to practice comparing aggregated values in SQL.

---

## 🎬 Sakila DVD – Films Rented More Than the Average

**Scenario**:  
The inventory manager wants to know which films are doing better than average in terms of rentals — basically, what's popular.

**Task**:  
List all the films that were rented more times than the average number of rentals across all films.

---

### 🔁 Version 1 – Using Subquery

- First, calculate the average number of rentals per film using a nested query.
- Then, in the main query, count rentals per film and filter those that beat the average.

**What I used**:
- `JOIN` between `film`, `inventory`, and `rental`
- `GROUP BY` and `COUNT`
- Subquery with `AVG` to find the average rental count
- `HAVING` to filter out below-average films

---

### 🧱 Version 2 – Using CTE (Common Table Expression)

- Used a `WITH` clause to create a named temporary table (`avg_rentals`) for the average rental count.
- Then reused it in the main query’s `HAVING` clause.

**What I used**:
- `WITH ... AS (...)` to define the CTE
- Same structure in the main query as the subquery version
- `SELECT avg_rental FROM avg_rentals` inside `HAVING` for cleaner syntax

