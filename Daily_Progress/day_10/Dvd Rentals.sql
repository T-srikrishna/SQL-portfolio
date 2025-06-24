/* Find customers with rentals in multiple cities.
Scenario: The manager wants to identify customers who rent from different cities.
Task: List customers who have rentals linked to addresses in more than one city. */
select r.customer_id, c.first_name, c.last_name, count(distinct cc.city_id) from rental r
join customer c on r.customer_id = c.customer_id
left join inventory i on r.inventory_id = i.inventory_id
left join store s on i.store_id = s.store_id
left join address a on s.address_id = a.address_id
left join city cc on a.city_id = cc.city_id
group by r.customer_id, c.first_name, c.last_name
having count(distinct cc.city_id) > 1;



/* Calculate the longest rental period per customer.
Scenario: The manager wants to know which customer kept a rental the longest.
Task: Find the longest rental duration for each customer. */
select c.customer_id, max(r.return_date - r.rental_date) as "Rental_Duration" from rental r
join customer c on r.customer_id = c.customer_id
group by c.customer_id;



/* Find films that have been rented at least once but never returned.
Scenario: The manager wants to identify films that are currently out with no return recorded.
Task: List films with rentals where return_date is NULL. */
with NNUll_ as 
(select * from rental r
where exists 
		(select 1 from inventory i
			join film f on i.film_id = f.film_id
			where i.inventory_id = r.inventory_id)
and r.return_date is null
)

select distinct f.title from NNUll_ n
left join inventory i on n.inventory_id = i.inventory_id
left join film f on i.film_id = f.film_id;