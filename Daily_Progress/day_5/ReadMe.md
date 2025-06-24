# 📅 Day 5

Completed 2 SQL queries focused on **customer behavior analysis** and **rental duration metrics** using `JOIN`, `GROUP BY`, `HAVING`, date arithmetic, and `EXTRACT`.


---

## 👥 Sakila DVD – Customers Renting the Same Film More Than Once

**Scenario**:  
The manager wants insights into repeat customer behavior to understand customer loyalty and preferences.

**Task**:  
Identify customers who have rented the same film more than once.

**Techniques Used**:
- `JOIN` across `rental`, `inventory`, `film`, and `customer` tables  
- `COUNT(*)` to calculate number of times a customer rented the same film  
- `GROUP BY` on `customer_id`, customer name, and film title  
- `HAVING` clause to filter for rentals greater than one  
- `ORDER BY` to show the most frequently re-rented films

---

## ⏱️ Sakila DVD – Average Rental Duration Per Film

**Scenario**:  
The operations team is analyzing average film rental durations to identify trends and inform inventory and pricing strategies.

**Task**:  
Calculate the average rental duration for each film in days.

**Techniques Used**:
- `JOIN` across `rental`, `inventory`, and `film` tables  
- `EXTRACT(EPOCH FROM return_date - rental_date)` to calculate duration in seconds  
- Converted seconds to days by dividing by `86400`  
- `AVG` for average duration, `ROUND` to 2 decimal places  
- `GROUP BY` on `film_id` and `title`  
- `ORDER BY` to rank films by average rental duration
