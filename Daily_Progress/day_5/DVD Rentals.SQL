/* Find customers who rented the same film more than once */
SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    f.film_id,
    f.title,
    COUNT(*) AS times_rented
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN customer c ON r.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, f.film_id, f.title
HAVING COUNT(*) > 1
ORDER BY times_rented DESC;



/* Calculate average rental duration per film */
SELECT 
    f.film_id,
    f.title,
    ROUND(AVG(EXTRACT(EPOCH FROM r.return_date - r.rental_date) / 86400), 2) AS avg_rental_days
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
WHERE r.return_date IS NOT NULL
GROUP BY f.film_id, f.title
ORDER BY avg_rental_days DESC;

