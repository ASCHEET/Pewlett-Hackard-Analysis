DROP TABLE retirement_titles;
SELECT e.emp_no, e.first_name, e.last_name, titles.title, titles.from_date, titles.to_date
INTO retirement_titles
FROM titles as titles
INNER JOIN employees as e
ON (titles.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
DROP TABLE unique_titles;
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

DROP TABLE retiring_titles;
SELECT COUNT(unique_titles.title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC;

SELECT * FROM retiring_titles;

--Deliverable 2: Mentorship eligibility
DROP TABLE mentorship_eligibility;
SELECT DISTINCT ON (emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, titles.title 
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
INNER JOIN titles AS titles
	ON (titles.emp_no = e.emp_no)
WHERE de.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;


SELECT * FROM mentorship_eligibility;

--Total current employee count by department number
SELECT COUNT(e.emp_no), de.dept_no
	FROM employees as e
JOIN dept_emp as de
	ON e.emp_no = de.emp_no
WHERE de.to_date = '9999-01-01'
GROUP BY de.dept_no
ORDER BY de.dept_no;


--Retirement eligible by dept
SELECT COUNT(e.emp_no), de.dept_no
FROM employees as e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
WHERE de.to_date = '9999-01-01' AND (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
GROUP BY de.dept_no
ORDER BY de.dept_no;





