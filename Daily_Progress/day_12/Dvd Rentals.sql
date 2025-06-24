/* Find the average number of films rented per customer.
Scenario: The manager wants to understand average customer rental behavior.
Task: Calculate the average number of films rented per customer. */ 
-- CTE to count number of rentals per customer
WITH count_ AS (
  SELECT 
    c.customer_id,
    COUNT(r.rental_id) AS total_rentals
  FROM rental r
  JOIN customer c ON r.customer_id = c.customer_id
  JOIN inventory i ON r.inventory_id = i.inventory_id
  JOIN film f ON i.film_id = f.film_id
  GROUP BY c.customer_id
)

SELECT AVG(total_rentals) AS avg_rentals_per_customer
FROM count_;




/* Find the rank of customers by total payments using window functions.
Scenario: The marketing team wants a ranked list of customers by total payments.
Task: Use window functions to rank customers by total payment amount. */
select c.customer_id, sum(p.amount) as "Total Amount",
DENSE_rank () over(order by sum(p.amount) desc) as "Rank"
from customer c
join payment p on  p.customer_id = c.customer_id
group by c.customer_id
order by 2 desc;

