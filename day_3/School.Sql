/* 
Scenario: The counselor wants to list students enrolled in multiple classes within the same semester.
Task: Identify students with more than one enrollment in the same semester. 
*/

SELECT 
    CONCAT(s.first_name, ' ', s.last_name) AS "Student Name",
    COUNT(e.enrollment_id) AS "Number of Subjects Taken",
    c.semester AS "Semester"
FROM 
    students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
LEFT JOIN classes c ON e.class_id = c.class_id
GROUP BY 
    CONCAT(s.first_name, ' ', s.last_name), c.semester
HAVING 
    COUNT(e.enrollment_id) > 1
ORDER BY 
    "Number of Subjects Taken" DESC;
