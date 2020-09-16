-- -- Create a new table
-- CREATE TABLE departments (
--   dept_no VARCHAR NOT NULL,
--   dept_name VARCHAR NOT NULL
-- );

-- -- Create a new table
-- CREATE TABLE dept_emp (
-- 	emp_no INT,
-- 	dept_no VARCHAR NOT NULL
-- );


-- -- Create a new table
-- CREATE TABLE dept_manager (
--	dept_no VARCHAR NOT NULL,
-- 	emp_no INT
-- );


-- -- Create a new table
-- CREATE TABLE employees (
--  emp_no INT,
-- 	emp_title_id VARCHAR NOT NULL,
-- 	birth_date DATE,
-- 	first_name VARCHAR NOT NULL,
-- 	last_name VARCHAR NOT NULL,
-- 	sex VARCHAR NOT NULL,
-- 	hire_date DATE
-- );


-- -- Create a new table
-- CREATE TABLE salaries (
-- 	emp_no INT,
-- 	salary INT
-- );


-- -- Create a new table
-- CREATE TABLE titles (
-- 	title_id VARCHAR NOT NULL,
-- 	title VARCHAR NOT NULL
-- );

-- SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
-- FROM employees e
-- JOIN salaries s
-- ON (e.emp_no = s.emp_no)

-- SELECT first_name, last_name, hire_date 
-- FROM employees
-- WHERE hire_date between '1986-01-01' and '1986-12-31'

-- SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
-- FROM dept_manager dm
-- INNER JOIN departments d
-- ON (dm.dept_no = d.dept_no)
-- INNER JOIN employees e
-- ON (dm.emp_no = e.emp_no)

-- SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
-- FROM employees e
-- INNER JOIN dept_emp de
-- ON (e.emp_no = de.emp_no)
-- INNER JOIN departments d
-- ON (de.dept_no = d.dept_no)

-- SELECT first_name, last_name, sex 
-- FROM employees
-- WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
-- FROM employees e
-- INNER JOIN dept_emp de
-- ON (e.emp_no = de.emp_no)
-- INNER JOIN departments d
-- ON (de.dept_no = d.dept_no)
-- WHERE d.dept_name = 'Sales'

-- SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
-- FROM employees e
-- INNER JOIN dept_emp de
-- ON (e.emp_no = de.emp_no)
-- INNER JOIN departments d
-- ON (de.dept_no = d.dept_no)
-- WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'

-- SELECT last_name, COUNT(last_name)
-- FROM employees 
-- GROUP BY last_name 
-- ORDER BY COUNT(last_name) desc
