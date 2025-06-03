--Dvd Rental Store SQL Queries
/* 3. Count the number of films in the 'Action' category.
Scenario: The marketing team is planning an "Action Movie Marathon" and needs to know how many action films are available.
Task: Count the number of films in the 'Action' category.*/
select c.name, count(*) as "Count of Action Movives" from film f
left join film_category fc on f.film_id = fc.film_id
left join category c on fc.category_id = c.category_id
where c.name = 'Action'
group by c.name;



/* 4.	Find films with a rental rate of 4.99.
Scenario: The pricing team is reviewing high-rental films.
Task: Retrieve the titles of films with a rental rate of 4.99. */
select title, rental_rate from film
where rental_rate = 4.99;

