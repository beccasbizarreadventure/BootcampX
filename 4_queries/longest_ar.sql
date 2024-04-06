SELECT cohorts.name as name, AVG(assistance_requests.completed_at-assistance_requests.started_at) as average_assistance_time
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.id
ORDER BY average_assistance_time DESC
LIMIT 1;