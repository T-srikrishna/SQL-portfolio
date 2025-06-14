## 📅 Day 10  
Focused on advanced filtering and business logic in SQL to answer real-world operational questions. Practiced using subqueries, `EXISTS`, `DISTINCT`, and date filtering to extract meaningful insights from rental behavior. Improved logical thinking with CTEs and multi-table joins.

---

### 🎥 Films Rented but Never Returned  
**Scenario:**  
The manager wants to identify which films are still out on rental and have not been returned by customers.

**Task:**  
List films that have been rented at least once, but for which the return date is still `NULL`.

**What I used:**  
- `return_date IS NULL` to filter rentals that haven't been returned  
- `EXISTS` subquery to ensure the rental links to a valid film through inventory  
- CTE (`WITH`) to modularize the logic  
- Joins from `rental → inventory → film` to access film titles  
- `DISTINCT` to remove duplicate film titles if rented multiple times and not returned

**Tables Involved:**  
- `rental`  
- `inventory`  
- `film`

**Key Concepts Practiced:**  
- Using `EXISTS` to check for relational integrity  
- Filtering with `NULL` values for real-world rental status  
- Leveraging CTEs for clean and readable query structure  
- Ensuring uniqueness with `DISTINCT` in the final result  
