## 📅 Day 8  
Focused on deepening understanding of SQL logic—especially `EXISTS` and `NOT EXISTS`—by tackling a real-world scenario involving rental behavior. Practiced writing a query that isolates films with a **perfect return record** (never returned late). Emphasis was on correct filtering logic, subquery usage, and business value.

---

### 🎥 Sakila DVD – Films with Perfect Return Records  
**Scenario:**  
The store manager wants to recognize films that have never caused late return issues. These may reflect better customer experiences or ideal rental durations.

**Task:**  
List all films that have been rented at least once but **never returned late**.

**What I used:**
- `EXISTS` to confirm the film **has rentals**
- `NOT EXISTS` to ensure **no rental** for that film was **returned late**
- `DATE_PART('day', r.return_date - r.rental_date)` to calculate actual rental duration
- Filtered logically at the **film level**, not rental level

**Tables Involved:**
- `film`
- `inventory`
- `rental`

**Key Concepts Practiced:**
- How to correctly use `EXISTS`/`NOT EXISTS` to answer binary logic questions (did it happen or not?)
- How to **avoid false positives** by anchoring subqueries to the outer query via `film_id`
- The importance of breaking down business rules (like rental duration) into calculable SQL logic
