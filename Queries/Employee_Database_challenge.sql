-- Steps from 1 to 7
-- Retrieve employees' info for the ones born between 1952 and 1955
-- Retrieve title and window of employment as well
SELECT e.emp_no, e.first_name, e.last_name,
		t.title, t.from_date, t.to_date
INTO retirement_titles	
FROM employees e LEFT JOIN titles t ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;
-- 133776 records

-- Steps 8 to 15
-- Previous query filtered by active employees only
-- The order by to_date does not make sense because we are already using DISTINCT ON
SELECT DISTINCT ON (r.emp_no)
		r.emp_no, r.first_name, r.last_name, r.title
INTO unique_titles	
FROM retirement_titles r
WHERE r.to_date = '9999-01-01'
ORDER BY r.emp_no, r.to_date desc
-- 72458 records
-- 90398 without the date condition


-- Steps 16 to 21
-- counting retiring people by each title
SELECT count(*) as total, title
INTO retiring_titles
FROM unique_titles ut
GROUP BY title
ORDER BY 1 DESC


select * from retiring_titles



-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;


