-- Count Total Employees
SELECT COUNT(first_name)
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
WHERE de.to_date = '9999-01-01';

--Total current employee count by department number
SELECT COUNT(e.emp_no), d.dept_name
	FROM employees as e
INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
INNER JOIN departments as d
	ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01'
GROUP BY d.dept_name
ORDER BY d.dept_name;

--Retirement eligible by dept
SELECT COUNT(*), d.dept_name
FROM employees as e
INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
JOIN departments as d
	ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01' AND (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
GROUP BY d.dept_name
ORDER BY d.dept_name;
