/*	Find the top 5 customers by total rentals.
Scenario: The marketing team wants to reward the top 5 customers with the most rentals.
Task: List the top 5 customers with the highest number of rentals. */

select 
    concat(c.first_name,' ', c.last_name) as "Customer Name",
     count(r.rental_id) as  "Movie Count"
from customer c
left join rental r on c.customer_id = r.customer_id
group by 1
order by 2 desc
limit 5;