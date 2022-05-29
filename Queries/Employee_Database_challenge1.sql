<<<<<<< HEAD
-- Deliverable #1a. 
-- Create a table with emp #, first & last name, title, from date, & to date
-- This table will be a list of current employees born between 1/1/1952-12/31/1955
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
	INNER JOIN salaries as s
	ON (t.emp_no = s.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

-- Use Dictinct with Orderby to remove duplicate rows for part 2/Deliverable 1
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles AS rt
ORDER BY emp_no ASC, to_date DESC;

--part 3SELECT 
SELECT COUNT (ut.emp_no),ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;

-- Deliverable 2.
-- Create a table with emp_no, first & last name, title, from and to dates
-- where dob in 1965
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	t.from_date,
	t.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND t.to_date = '9999-01-01';
=======

>>>>>>> be32d6adaea9a158e0bbe0cde6540725e37709e8
