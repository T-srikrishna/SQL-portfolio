## 📅 Day 11  
🔍 Real-World Business Insights with SQL

Today’s practice focused on practical business questions involving staff performance, film availability, and revenue analysis. Enhanced skills with aggregation, filtering using `EXISTS`/`NOT EXISTS`, and multi-level joins to generate actionable reports.

---

### 👩‍💼 Staff Members with Over 1000 Payments Processed  
**Scenario:**  
The owner wants to reward the most active staff members.

**Task:**  
Identify staff members who have processed more than 1000 payments.

**What I used:**  
- Join between `payment` and `staff` tables  
- `COUNT()` aggregation of payments per staff member  
- `GROUP BY` staff details  
- `HAVING` clause to filter those with over 1000 payments

**Tables Involved:**  
- `payment`  
- `staff`

**Key Concepts Practiced:**  
- Aggregation with `COUNT`  
- Filtering grouped data using `HAVING`  
- Joining tables on foreign keys  

---

### 🎞️ Films Available but Never Rented  
**Scenario:**  
The store wants to promote films that are in inventory but have never been rented.

**Task:**  
List film titles that exist in inventory but have zero rental records.

**What I used:**  
- `EXISTS` to check film presence in inventory  
- `NOT EXISTS` combined with a join to `rental` to exclude films that have ever been rented  
- Logical filtering using subqueries for precise inclusion/exclusion

**Tables Involved:**  
- `film`  
- `inventory`  
- `rental`

**Key Concepts Practiced:**  
- Use of correlated subqueries  
- Combining `EXISTS` and `NOT EXISTS` for inclusion/exclusion logic  
- Understanding film-to-inventory-to-rental relationships  

---

### 🌍 Total Payment Amount per Country  
**Scenario:**  
The business team wants to know revenue distribution by customer country.

**Task:**  
Calculate the total payment amount grouped by the country of each customer.

**What I used:**  
- Joins from `payment` → `customer` → `address` → `city` → `country`  
- Aggregation with `SUM()` on payment amounts  
- Grouping by country  
- Ordering results to highlight highest revenue countries

**Tables Involved:**  
- `payment`  
- `customer`  
- `address`  
- `city`  
- `country`

**Key Concepts Practiced:**  
- Multi-level joins across location hierarchy  
- Aggregation and grouping for business metrics  
- Sorting aggregated results for insights  
