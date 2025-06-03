# 📅 Day 3

Completed SQL queries focused on **multi-table JOINs**, **aggregation**, and **filtering** using `GROUP BY`, `HAVING`, and `ORDER BY`.

## 🎬 DVD Rentals – Top 5 Customers by Rentals

**Scenario**:  
The marketing team wants to reward the top 5 customers with the most rentals.

**Task**:  
List the top 5 customers with the highest number of rentals.

**Techniques Used**:
- `JOIN` between `customer` and `rental` tables  
- Aggregation using `COUNT()` to calculate number of rentals  
- `GROUP BY` on customer name  
- `ORDER BY` and `LIMIT` to get top 5 results
