/* Calculate cumulative rental revenue over time.
Scenario: The finance team wants to see cumulative revenue growth month-by-month.
Task: Calculate cumulative rental revenue by month. */

SELECT 
    DATE_TRUNC('month', p.payment_date) AS month,
    SUM(p.amount) AS monthly_revenue,
    SUM(SUM(p.amount)) OVER (ORDER BY DATE_TRUNC('month', p.payment_date)) AS cumulative_revenue
FROM 
    payment p
GROUP BY 
    DATE_TRUNC('month', p.payment_date)
ORDER BY 
    month;

/* 
This query calculates the monthly rental revenue and the cumulative revenue over time.
It groups the payments by month, sums the amounts for each month, and then calculates the cumulative revenue using a window function.
The results are ordered by month to show the progression of revenue over time.
The output will show each month with its corresponding monthly revenue and cumulative revenue.
The DATE_TRUNC function is used to truncate the rental date to the first day of the month, ensuring that all rentals within the same month are aggregated together.
The SUM function is used to calculate the total revenue for each month.
The window function SUM(monthly_revenue) OVER (ORDER BY month) calculates the cumulative revenue by summing the monthly revenues in chronological order.
The ORDER BY clause ensures that the results are presented in chronological order, making it easy to track revenue growth over time.
The output includes three columns: month, monthly_revenue, and cumulative_revenue.
*/



/* Find the top 3 films per category by total rental revenue.
Scenario: The business team wants to promote top-performing films by category.
Task: Use window functions to rank films by rental revenue within each category and pick top 3. */
/* 
This query finds the top 3 revenue-generating films in each category.
It aggregates total rental revenue per film, groups them by category,
ranks them using the RANK() window function, and returns only the top 3 per category.
*/

WITH film_revenue AS (
    SELECT 
        c.name AS category,
        f.title,
        SUM(p.amount) AS total_revenue
    FROM 
        payment p
    JOIN rental r ON p.rental_id = r.rental_id
    JOIN inventory i ON r.inventory_id = i.inventory_id
    JOIN film f ON i.film_id = f.film_id
    JOIN film_category fc ON f.film_id = fc.film_id
    JOIN category c ON fc.category_id = c.category_id
    GROUP BY 
        c.name, f.title
),
ranked_films AS (
    SELECT 
        category,
        title,
        total_revenue,
        RANK() OVER (PARTITION BY category ORDER BY total_revenue DESC) AS revenue_rank
    FROM 
        film_revenue
)
SELECT 
    category,
    title,
    total_revenue
FROM 
    ranked_films
WHERE 
    revenue_rank <= 3
ORDER BY 
    category,
    revenue_rank;

/*
This query first calculates the total revenue for each film by joining the payment, rental, inventory,    
film, film_category, and category tables.
It groups the results by category and film title to get the total revenue per film. 
Then, it ranks the films within each category based on their total revenue using the RANK() window function.
Finally, it filters the results to include only the top 3 films per category and orders them by category and rank.  
The output will show the category, film title, and total revenue for the top 3 films in each category.
*/
