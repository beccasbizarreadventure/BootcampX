SELECT count(assistance_requests.id) as total_assistances, students.name as name
FROM assistance_requests
JOIN students ON students.id = student_id
GROUP BY name
HAVING name LIKE 'Elliot Dickinson';