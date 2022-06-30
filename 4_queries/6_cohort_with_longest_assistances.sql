SELECT cohorts.name, avg(completed_at - started_at) as duration
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON student_id = students.id
GROUP BY cohorts.name
ORDER BY duration DESC
LIMIT 1;