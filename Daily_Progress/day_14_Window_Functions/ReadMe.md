## 📅 Day 14  
🔍 **Advanced SQL Practice: Window Functions on Payment Data**

Today's session focused on mastering a variety of **SQL window functions** using the `payment` table. The goal was to explore analytical patterns such as row-based calculations, cumulative summaries, and ranking.

---

### 📌 Row Numbering by Customer  
**Scenario:**  
We want to see how many times each customer has made a payment and in what sequence.

**Task:**  
Assign a row number to each payment based on the customer's payment history.

**Key Concepts Used:**  
- `RANK() OVER (PARTITION BY customer_id ORDER BY payment_date)`

---

### 🔁 Previous Payment Difference  
**Scenario:**  
We want to understand fluctuations in payment amounts.

**Task:**  
Calculate the difference in amount between the current and previous payment for each customer.

**Key Concepts Used:**  
- `LAG()` to reference the previous row in a window  
- Arithmetic operation on windowed values

---

### 📊 Customer-Wise Average  
**Scenario:**  
Customer segmentation based on average spending.

**Task:**  
Display the average payment amount per customer across all their payments.

**Key Concepts Used:**  
- `AVG() OVER (PARTITION BY customer_id)`

---

### 🥈 Top 2 Payments per Customer  
**Scenario:**  
Reward customers based on their highest payments.

**Task:**  
List the top 2 payment amounts for each customer.

**Key Concepts Used:**  
- `RANK() OVER (...)` inside a CTE  
- Filter using `WHERE Ranks <= 2`

---

### 📈 Global Percentile Ranking  
**Scenario:**  
Find how each payment ranks relative to all others.

**Task:**  
Calculate the percent rank of each payment amount across the dataset.

**Key Concepts Used:**  
- `PERCENT_RANK() OVER (ORDER BY amount)`

---

### 📉 Moving Average of Last 3 Payments  
**Scenario:**  
Detect trends in customer spending behavior.

**Task:**  
Calculate a rolling average of the last 3 payment amounts per customer.

**Key Concepts Used:**  
- `AVG() OVER (PARTITION BY customer_id ORDER BY payment_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)`

---

### ⏳ First and Last Payment Date  
**Scenario:**  
Customer lifecycle tracking.

**Task:**  
Display the first and last payment date for each customer.

**Key Concepts Used:**  
- `FIRST_VALUE()` and `LAST_VALUE()`  
- `ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING`

---

### 🧮 Cumulative Aggregations  
**Scenario:**  
Track the evolution of customer behavior over time.

**Tasks & Concepts Used:**  
- **Cumulative Sum**: `SUM() OVER (...)`  
- **Cumulative Average**: `AVG() OVER (...)`  
- **Cumulative Count**: `COUNT() OVER (...)`  
- **Cumulative Max/Min**: `MAX()` / `MIN()` with `ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW`

---

### 🗂️ Tables Involved  
- `payment` (base table for all queries)

---

### 🧠 Key SQL Techniques Practiced  
- Window functions: `RANK()`, `LAG()`, `FIRST_VALUE()`, `LAST_VALUE()`, `PERCENT_RANK()`, `ROW_NUMBER()`, etc.  
- Window frame clauses (`ROWS BETWEEN ...`)  
- Partitioning and ordering within windows  
- CTE (Common Table Expressions)  
- Filtering based on window function output

---

### ✅ Summary  
This session built a strong foundation in **analytic SQL**, focusing on window functions that are essential for reporting, ranking, time-series analysis, and behavioral insights. These patterns are highly relevant in both business intelligence and data science workflows.
