## 📅 Day 9  
Explored aggregation and grouping in SQL to analyze rental trends and customer demographics. Focused on summarizing data by time and geography to support business insights. Practiced using date functions and joins to produce meaningful reports for marketing and analytics teams.

---

### 📊 Monthly Rental Trends in 2005  
**Scenario:**  
The business analyst needs to understand rental activity patterns throughout 2005 to identify seasonal trends or shifts in demand.

**Task:**  
Calculate the total number of rentals for each month in 2005.

**What I used:**  
- `EXTRACT(YEAR FROM rental_date)` to filter rentals in 2005  
- `TO_CHAR(rental_date, 'Month')` to group results by month name  
- `GROUP BY` and `ORDER BY` with `EXTRACT(MONTH FROM rental_date)` for correct month ordering  
- `COUNT(*)` to tally rentals per month  

**Tables Involved:**  
- `rental`

**Key Concepts Practiced:**  
- Using date/time functions to extract and format date parts  
- Grouping and ordering data for accurate time series analysis  
- Handling textual month names alongside numeric ordering  

---

### 🌆 City with the Highest Number of Customers  
**Scenario:**  
Marketing wants to target promotions and campaigns in the city with the largest customer base.

**Task:**  
Identify the city with the highest count of customers.

**What I used:**  
- Joining `city`, `address`, and `customer` tables to connect customers to cities  
- `COUNT(customer_id)` grouped by city to find customer volume  
- `ORDER BY` and `LIMIT 1` to select the city with the maximum customers  

**Tables Involved:**  
- `city`  
- `address`  
- `customer`

**Key Concepts Practiced:**  
- Multi-table joins to aggregate data across relationships  
- Filtering and ordering with `GROUP BY` for top-N queries  
- Understanding hierarchical relationships (city → address → customer)  
