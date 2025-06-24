/* 1. Find films rented more than the average number of times.
Scenario: The inventory manager wants to know which films are rented more than the average.
Task: List films rented more times than the average number of rentals per film. */

-- Using Subqueries
SELECT f.title AS films, COUNT(r.rental_id) AS rented_count
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
HAVING COUNT(r.rental_id) > (
  SELECT AVG(rental_count)
  FROM (
    SELECT f1.film_id, COUNT(r1.rental_id) AS rental_count
    FROM film f1
    JOIN inventory i1 ON f1.film_id = i1.film_id
    JOIN rental r1 ON i1.inventory_id = r1.inventory_id
    GROUP BY f1.film_id
  ) AS sub
);

-- Using CTE
WITH avg_rentals AS (
  SELECT AVG(rental_count) AS avg_rental
  FROM (
    SELECT f1.film_id, COUNT(r1.rental_id) AS rental_count
    FROM film f1
    JOIN inventory i1 ON f1.film_id = i1.film_id
    JOIN rental r1 ON i1.inventory_id = r1.inventory_id
    GROUP BY f1.film_id
  ) AS film_rental_counts
)
SELECT f.title AS films, COUNT(r.rental_id) AS rented_count
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
HAVING COUNT(r.rental_id) > (SELECT avg_rental FROM avg_rentals);
