SELECT teachers.name as teacher, cohorts.name as cohort, count(*)
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.id, cohort
ORDER BY teacher;