/* Retrieve the top 3 categories by total rental revenue.
Scenario: The business team wants to identify the most profitable film categories.
Task: List the top 3 categories ranked by total rental revenue. */

select c.name as "film_categories", sum(p.amount) as "Revenue Generated" from category c
left join film_category fc on c.category_id = fc.category_id
left join film f on fc.film_id = f.film_id
left join inventory i on f.film_id = i.film_id
left join rental r on i.inventory_id = r.inventory_id
left join payment p on r.rental_id = p.rental_id
group by c.name
order by 2 desc
limit 3;


/* 
Find customers who rented films but never made a payment.
Scenario: The accounting department needs to identify customers with unpaid rentals.
Task: List customers who rented films but never made a payment.
*/

SELECT DISTINCT c.first_name, c.last_name, c.email, c.address_id
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
LEFT JOIN payment p ON r.rental_id = p.rental_id
WHERE p.payment_id IS NULL;

