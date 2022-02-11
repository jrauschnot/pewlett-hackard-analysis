--Deliverable 1 - The Number of Retiring Employees by Title
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (r.emp_no) 
r.emp_no, r.first_name, r.last_name, r.title
INTO unique_titles
FROM retirement_titles as r
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

SELECT * FROM unique_titles

--Determine the number of employees who are about to retire by job title
SELECT COUNT(title), title
INTO no_retiring_titles
FROM unique_titles 
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM no_retiring_titles

--Determine number of employees to retire by job title
SELECT COUNT(title), title
INTO no_retiring_titles
FROM unique_titles 
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM no_retiring_titles

--Deliverable 2: Employees eligible for Mentorship Program
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, 
de.from_date, de.to_date, t.title
INTO ment_elig
FROM employees as e
JOIN dept_emp as de ON (e.emp_no = de.emp_no)
JOIN titles as t ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') 
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')

SELECT * FROM ment_elig