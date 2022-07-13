SELECT COUNT(first_name) as "Number of Eligible Mentors"
FROM mentorship_eligibility

SELECT title, COUNT(first_name) as "Number of Eligible Mentors"
FROM mentorship_eligibility
GROUP BY title
ORDER BY "Number of Eligible Mentors" DESC;