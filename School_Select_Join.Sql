/* Retrieve names of Science teachers
Scenario: Principal requests a list of Science teachers for a meeting.
Task: Retrieve the first and last names of teachers in the 'Science' department. */

select t.first_name, t.last_name from teachers t
left join departments d 
on t.department_id = d.department_id
where d.department_name = 'Science';