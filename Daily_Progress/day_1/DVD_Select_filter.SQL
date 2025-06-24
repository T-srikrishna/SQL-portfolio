/* Scenario: Customer requests 'Action' films for a family movie night.
Task: Retrieve the titles of all films rated 'Actions'. */
 -- category >> film_category >> film

 select f.title as "Movie Name", c.name as "Movie Type" from film f
 left join film_category fc on f.film_id = fc.film_id
 left join category c on fc.category_id = c.category_id
 where c.name = 'Action';
