-- Start of Challenge Material 

SELECT * FROM employees
SELECT * FROM deliverable1_table1
SELECT * FROM deliverable1_table2

--Deliverable 1 table 1 
SELECT emp_no, first_name, last_name
INTO deliverable1_table1
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');

--Deliverable 1 table 2
SELECT title, from_date, to_date
INTO deliverable1_table2
FROM titles;

--Join table 1 with table 2 on PK
SELECT t1.emp_no, t1.first_name, t1.last_name,
titles.emp_no, titles.title, titles.from_date, titles.to_date
FROM deliverable1_table1 as t1
INNER JOIN titles
ON t1.emp_no = titles.emp_no;