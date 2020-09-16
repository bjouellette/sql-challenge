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


