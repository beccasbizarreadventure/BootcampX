SELECT AVG(total_duration) as average_total_duration
FROM (
  SELECT SUM(assistance_requests.completed_at-assistance_requests.started_at) as total_duration
  FROM students
  JOIN cohorts ON students.cohort_id = cohorts.id
  JOIN assistance_requests ON assistance_requests.student_id = students.id
  GROUP BY cohorts.name) as total_duration;