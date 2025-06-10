📅 Day 7  
Worked on two analytical queries designed to help the business and accounting teams make informed decisions. One query identified the top-performing film categories by revenue, while the other spotted customers who rented movies but never paid. Main goal was to practice JOIN logic, aggregation, filtering with `NULL`, and business insights through SQL.

Combined File: day_7_sakila_queries.sql

💰 Sakila DVD – Top 3 Most Profitable Film Categories  
Scenario:  
The business team wants to identify which film categories bring in the most money so they can focus marketing and stocking efforts there.

Task:  
List the top 3 film categories based on total rental revenue.

What I used:
- Multiple `LEFT JOIN`s across: `category`, `film_category`, `film`, `inventory`, `rental`, and `payment`
- `SUM()` aggregation to calculate total revenue per category
- `GROUP BY` on category name  
- `ORDER BY` in descending order to rank by revenue  
- `LIMIT` to fetch only the top 3  

🧾 Sakila DVD – Customers with Unpaid Rentals  
Scenario:  
The accounting department is auditing customer behavior and wants to find people who rented movies but never made a payment.

Task:  
List all customers who have rental records but no corresponding payment entries.

What I used:
- `JOIN` between `customer` and `rental`  
- `LEFT JOIN` with `payment` to check for missing transactions  
- `WHERE p.payment_id IS NULL` to filter only unpaid rentals  
- `DISTINCT` to avoid duplicate customer entries  
