/* List the staff members who have processed more than 1000 payments.
Scenario: The owner wants to reward the most active staff members.
Task: Identify staff with over 1000 payments processed. */
SELECT s.staff_id, s.first_name, s.last_name, COUNT(p.payment_id) AS total_payments
FROM payment p
JOIN staff s ON p.staff_id = s.staff_id
GROUP BY s.staff_id, s.first_name, s.last_name
HAVING COUNT(p.payment_id) > 1000;


/* Find films that are available (in inventory) but have never been rented.
Scenario: The store wants to promote unrented films.
Task: List films in inventory but with zero rentals. */
SELECT f.title
FROM film f
WHERE EXISTS (
    SELECT 1
    FROM inventory i
    WHERE i.film_id = f.film_id
)
AND NOT EXISTS (
    SELECT 1
    FROM inventory i
    JOIN rental r ON i.inventory_id = r.inventory_id
    WHERE i.film_id = f.film_id
);


/* Calculate the total payment amount per country.
Scenario: The business team wants to know revenue by country.
Task: Sum payments grouped by customer country. */
select co.country, sum(p.amount) from payment p 
join customer c on p.customer_id = c.customer_id
join address a on c.address_id = a.address_id
join city ci on a.city_id = ci.city_id
join country co on ci.country_id = co.country_id
group by co.country
order by 2 desc;
