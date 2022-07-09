-- Use Dictinct with Orderby to remove duplicate rows
DROP TABLE if exists retirement_titles;

-- SELECT DISTINCT ON (t.title) e.emp_no,
-- e.first_name,
-- e.last_name,
-- t.title, 
-- t.from_date, 
-- t.end_date
-- INTO retirement_titles
-- FROM employees as e
-- INNER JOIN titles as t 
-- ON (e.emp_no = t.emp_no)
-- WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-01-01') 
-- ORDER BY t.title, e.emp_no DESC;

SELECT e.emp_no, e.first_name, e.last_name,
t.title, t.from_date, t.end_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no) 
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
ORDER BY emp_no ASC;

-- SELECT * FROM employees ORDER BY emp_no

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE end_date = '9999-01-01'
ORDER BY emp_no ASC, end_date DESC;

SELECT COUNT(title) as num, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY num DESC;