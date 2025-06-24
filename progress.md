# 📘 SQL Practice Progress

---

## 📅 Day 1  
🎬 **DVD Rentals**  
✅ Completed 2 Easy queries:  
- SELECT all films  
- Filter films in the 'Action' category  
📁 See: [Day 1](Daily_Progress
/day_1)

---

## 📅 Day 2  
🎬 **DVD Rentals**  
✅ Count number of films in 'Action' category (JOIN + GROUP BY)  
✅ Retrieve films with rental rate of 4.99  
📁 See: [Day 2](/Daily_Progress/day_2)

---

## 📅 Day 3  
🎬 **DVD Rentals**  
✅ Top 5 customers by number of rentals (JOIN + COUNT + ORDER BY + LIMIT)  
📁 See: [Day 3](Daily_Progress/day_3)

---

## 📅 Day 4  
🎬 **DVD Rentals**  
✅ Total rental revenue per film (LEFT JOIN + SUM + GROUP BY + HAVING + ORDER BY)  
✅ Actors with more than 10 films (JOIN + COUNT + GROUP BY + HAVING + ORDER BY)  
📁 See: [Day 4](Daily_Progress/day_4)

---

## 📅 Day 5  
🎬 **DVD Rentals**  
✅ Customers who rented the same film more than once (JOIN + COUNT + GROUP BY + HAVING)  
✅ Average rental duration per film (JOIN + DATE DIFF + EXTRACT EPOCH + AVG + ROUND)  
📁 See: [Day 5](Daily_Progress/day_5)

---

## 📅 Day 6  
🎬 **DVD Rentals**  
✅ Films rented more than the average (JOIN + GROUP BY + HAVING + Subquery and CTE versions)  
📁 See: [Day 6](Daily_Progress/day_6)

---

## 📅 Day 7  
🎬 **DVD Rentals**  
✅ Top 3 most profitable film categories (LEFT JOIN + SUM + GROUP BY + ORDER BY + LIMIT)  
✅ Customers with unpaid rentals (JOIN + LEFT JOIN + NULL filtering + DISTINCT)  
📁 See: [Day 7](Daily_Progress/day_7)

---

## 📅 Day 8  
🎬 **DVD Rentals**  
✅ Films with perfect return records (EXISTS + NOT EXISTS + Subqueries + Date difference filtering)  
- Identified films that were rented at least once and never returned late  
- Practiced filtering binary conditions using EXISTS/NOT EXISTS  
- Applied date arithmetic to compare rental duration and actual return time  
📁 See: [Day 8](Daily_Progress/day_8)

---

## 📅 Day 9  
📊 **Rental Trends & Customer Demographics**  
✅ Calculated total rentals per month for 2005 (Aggregation + Date functions + Grouping)  
✅ Identified the city with the highest number of customers (Joins + Grouping + Ordering + LIMIT)  
- Used `EXTRACT` and `TO_CHAR` to handle dates and group by month  
- Joined `city`, `address`, and `customer` tables to aggregate customer counts by city  
- Practiced top-N queries with `ORDER BY` and `LIMIT`  
📁 See: [Day 9](Daily_Progress/day_9)

---

## 📅 Day 10  
🎬 **DVD Rentals**  
✅ Found customers with rentals in multiple cities (JOINs + GROUP BY + COUNT DISTINCT + HAVING)  
✅ Calculated longest rental period per customer (JOIN + DATE difference + MAX + GROUP BY)  
✅ Identified films rented but never returned (CTE + EXISTS + NULL filtering + JOINs)  
- Used `COUNT(DISTINCT city_id)` and `HAVING > 1` to find customers renting from multiple cities  
- Calculated maximum rental duration by subtracting rental and return dates  
- Used `return_date IS NULL` and `EXISTS` in a CTE to find films currently out on rental  
- Joined `rental → inventory → film` to retrieve distinct film titles  
📁 See: [Day 10](Daily_Progress/day_10)

---

## 📅 Day 11  
🔍 Real-World Business Insights with SQL  
✅ Listed staff members who processed over 1000 payments (JOIN + COUNT + GROUP BY + HAVING)  
✅ Found films available in inventory but never rented (EXISTS + NOT EXISTS + Subqueries)  
✅ Calculated total payment amounts grouped by customer country (Multi-level JOIN + SUM + GROUP BY + ORDER BY)  
- Identified top-performing staff by payment count for rewards  
- Extracted films in stock with zero rental history to promote  
- Summarized revenue by country using joined geographic tables  
📁 See: [Day 11](Daily_Progress/day_11)

---

## 📅 Day 12  
🔍 Customer Rental & Payment Rankings Analysis with SQL Window Functions  
✅ Calculated average number of films rented per customer (CTE + COUNT + AVG)  
✅ Ranked customers by total payment amount using `DENSE_RANK()` window function  
- Practiced Common Table Expressions (CTEs) for modular queries  
- Used aggregation and window functions together for ranking  
- Learned difference between ranking methods and practical use cases  
📁 See: [Day 12](Daily_Progress/day_12)

---

## 📅 Day 13  
📈 **Revenue Trends and Film Performance Analysis Using Window Functions**  
✅ Calculated cumulative rental revenue by month (DATE_TRUNC + SUM + WINDOW FUNCTION)  
✅ Identified top 3 films per category by total rental revenue (CTE + RANK() + PARTITION BY)  
- Practiced financial time-series aggregation using `SUM()` and `OVER()`  
- Used `RANK()` window function to rank films within each category  
- Filtered top-N ranked rows using `WHERE revenue_rank <= 3`  
- Joined payment, rental, inventory, film, and category-related tables  
📁 See: [Day 13](Daily_Progress/day_13)

---

## 📅 Day 14  
🔍 **Advanced SQL Practice: Window Functions on Payment Data**

Today's session focused on mastering a variety of **SQL window functions** using the `payment` table. The goal was to explore analytical patterns such as row-based calculations, cumulative summaries, and ranking.

✅ Practiced concepts:  
- Row numbering with `RANK()`  
- Calculating difference with `LAG()`  
- Customer-wise averages with `AVG()`  
- Top-N payments per customer using `RANK()` + CTE  
- Percentile ranking with `PERCENT_RANK()`  
- Moving averages with window frames  
- First and last values with `FIRST_VALUE()` and `LAST_VALUE()`  
- Cumulative sum, average, count, max, and min  
- Window frame clauses and partitioning  

📁 See: [Day 14](Daily_Progress/day_14_Window_Functions/)

