## 📅 Day 13  
📈 **Revenue Trends and Film Performance Analysis Using Window Functions**

Today's practice focused on financial analysis and business insight generation using **advanced SQL**, including **CTEs**, **aggregation**, and **window functions**.

---

### 💰 Cumulative Rental Revenue by Month  
**Scenario:**  
The finance team wants to monitor cumulative revenue growth on a month-by-month basis to assess financial trends and performance.

**Task:**  
Calculate cumulative rental revenue by month.

**What I used:**  
- `DATE_TRUNC()` to group rental payments by month  
- Aggregation using `SUM()` to calculate monthly revenue  
- A **window function** `SUM() OVER (ORDER BY month)` to calculate running cumulative revenue  
- `ORDER BY` to ensure chronological order in the output  

**Tables Involved:**  
- `payment`  

**Key Concepts Practiced:**  
- Time-based grouping using `DATE_TRUNC()`  
- Monthly and cumulative aggregations  
- Window functions for running totals  
- Structuring queries to support financial reporting  

**Query Summary:**  
The query calculates monthly revenue by truncating payment dates to month-level, then applies a window function to compute cumulative revenue over time.

---

### 🎬 Top 3 Films per Category by Rental Revenue  
**Scenario:**  
The business team is planning a promotional campaign and wants to highlight the top-performing films in each category based on rental revenue.

**Task:**  
Use window functions to rank films by rental revenue within each category and pick the top 3.

**What I used:**  
- Joins across `payment`, `rental`, `inventory`, `film`, `film_category`, and `category` tables to trace revenue per film  
- `SUM()` to compute total rental revenue for each film  
- A Common Table Expression (CTE) to modularize the query  
- `RANK() OVER (PARTITION BY category ORDER BY total_revenue DESC)` to assign ranks within each category  
- Filtered top 3 using `WHERE revenue_rank <= 3`  

**Tables Involved:**  
- `payment`  
- `rental`  
- `inventory`  
- `film`  
- `film_category`  
- `category`  

**Key Concepts Practiced:**  
- Multi-table joins for hierarchical data  
- Aggregation of revenue  
- Window functions with `PARTITION BY` and `ORDER BY`  
- Filtering on window function results  
- Business-focused ranking insights  

**Query Summary:**  
This query computes total revenue per film, ranks films within each category, and returns the top 3 revenue-generating titles per category for targeted promotion.
