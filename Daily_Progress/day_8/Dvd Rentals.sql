/* Find films that have been rented but never returned late.
Scenario: The manager wants to identify films with perfect return records.
Task: List films that have rentals but no late returns */

SELECT f.title
FROM film f
WHERE EXISTS (
    SELECT 1
    FROM inventory i
    JOIN rental r ON i.inventory_id = r.inventory_id
    WHERE i.film_id = f.film_id
)
AND NOT EXISTS (
    SELECT 1
    FROM inventory i
    JOIN rental r ON i.inventory_id = r.inventory_id
    WHERE i.film_id = f.film_id
      AND DATE_PART('day', r.return_date - r.rental_date) > f.rental_duration
)
order by 1;