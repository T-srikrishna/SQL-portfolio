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




-- School Database SQL Queries
/* 3.	Scenario: The teacher wants the average grade per subject.
Task: Calculate the average grade for each subject. */
select s.subject_name, avg(g.grade_value) as "Average grade"  from subjects s
left join classes c on s.subject_id = c.subject_id 
left join enrollments e on c.class_id = e.class_id
left join grades g on e.enrollment_id = g.enrollment_id
group by s.subject_name;


/* 4.	Scenario: The school board wants to know the total number of students enrolled.
Task: Count the total number of students. */
select count(enrollment_id) as "Count of Enrolled Students" from enrollments;