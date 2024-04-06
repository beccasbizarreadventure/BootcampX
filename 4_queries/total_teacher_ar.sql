SELECT count(assistance_requests.id) as total_assistances, name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
GROUP BY name
HAVING name LIKE 'Waylon Boehm';