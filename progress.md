# 📘 SQL Practice Progress

---

## 📅 Day 1  
🎬 **DVD Rentals**  
✅ Completed 2 Easy queries:  
- SELECT all films  
- Filter films in the 'Action' category  
📁 See: [Day 1](/day_1)

---

## 📅 Day 2  
🎬 **DVD Rentals**  
✅ Count number of films in 'Action' category (JOIN + GROUP BY)  
✅ Retrieve films with rental rate of 4.99  
📁 See: [Day 2](/day_2)

---

## 📅 Day 3  
🎬 **DVD Rentals**  
✅ Top 5 customers by number of rentals (JOIN + COUNT + ORDER BY + LIMIT)  
📁 See: [Day 3](/day_3)

---

## 📅 Day 4  
🎬 **DVD Rentals**  
✅ Total rental revenue per film (LEFT JOIN + SUM + GROUP BY + HAVING + ORDER BY)  
✅ Actors with more than 10 films (JOIN + COUNT + GROUP BY + HAVING + ORDER BY)  
📁 See: [Day 4](/day_4)

---

## 📅 Day 5  
🎬 **DVD Rentals**  
✅ Customers who rented the same film more than once (JOIN + COUNT + GROUP BY + HAVING)  
✅ Average rental duration per film (JOIN + DATE DIFF + EXTRACT EPOCH + AVG + ROUND)  
📁 See: [Day 5](/day_5)

---

## 📅 Day 6  
🎬 **DVD Rentals**  
✅ Films rented more than the average (JOIN + GROUP BY + HAVING + Subquery and CTE versions)  
📁 See: [Day 6](/day_6)

---

## 📅 Day 7  
🎬 **DVD Rentals**  
✅ Top 3 most profitable film categories (LEFT JOIN + SUM + GROUP BY + ORDER BY + LIMIT)  
✅ Customers with unpaid rentals (JOIN + LEFT JOIN + NULL filtering + DISTINCT)  
📁 See: [Day 7](/day_7)

---

## 📅 Day 8  
🎬 **DVD Rentals**  
✅ Films with perfect return records (EXISTS + NOT EXISTS + Subqueries + Date difference filtering)  
- Identified films that were rented at least once and never returned late  
- Practiced filtering binary conditions using EXISTS/NOT EXISTS  
- Applied date arithmetic to compare rental duration and actual return time  
📁 See: [Day 8](/day_8)

---

## 📅 Day 9  
📊 **Rental Trends & Customer Demographics**  
✅ Calculated total rentals per month for 2005 (Aggregation + Date functions + Grouping)  
✅ Identified the city with the highest number of customers (Joins + Grouping + Ordering + LIMIT)  
- Used `EXTRACT` and `TO_CHAR` to handle dates and group by month  
- Joined `city`, `address`, and `customer` tables to aggregate customer counts by city  
- Practiced top-N queries with `ORDER BY` and `LIMIT`  
📁 See: [Day 9](/day_9)

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
📁 See: [Day 10](/day_10)

---

## 📅 Day 11  
🔍 Real-World Business Insights with SQL  
✅ Listed staff members who processed over 1000 payments (JOIN + COUNT + GROUP BY + HAVING)  
✅ Found films available in inventory but never rented (EXISTS + NOT EXISTS + Subqueries)  
✅ Calculated total payment amounts grouped by customer country (Multi-level JOIN + SUM + GROUP BY + ORDER BY)  
- Identified top-performing staff by payment count for rewards  
- Extracted films in stock with zero rental history to promote  
- Summarized revenue by country using joined geographic tables  
📁 See: [Day 11](/day_11)
