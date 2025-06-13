/* Calculate the total number of rentals per month for 2005.
Scenario: The business analyst wants monthly rental trends for 2005.
Task: Count rentals per month in 2005. */

SELECT 
    TO_CHAR(r.rental_date, 'Month') AS month,
    COUNT(*) AS rental_count
FROM 
    rental r
WHERE 
    EXTRACT(YEAR FROM r.rental_date) = 2005
GROUP BY 
    TO_CHAR(r.rental_date, 'Month'),
    EXTRACT(MONTH FROM r.rental_date)
ORDER BY 
    EXTRACT(MONTH FROM r.rental_date);


/* Identify the city with the highest number of customers.
Scenario: Marketing wants to focus on the city with the most customers.
Task: Find the city with the highest customer count. */

SELECT c.city, COUNT(cu.customer_id) AS customer_count
FROM city c
JOIN address a ON c.city_id = a.city_id
JOIN customer cu ON a.address_id = cu.address_id
GROUP BY c.city
ORDER BY customer_count DESC
LIMIT 1;
