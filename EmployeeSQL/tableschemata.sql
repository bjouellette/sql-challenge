-- -- PK AND FK CREATED VIA CONSTRAINTS & CREATE AND ADDED IN LINES PER TUTOR-- -- 

-- Create a new table
CREATE TABLE departments (
  dept_no VARCHAR NOT NULL,
  dept_name VARCHAR NOT NULL
  PRIMARY KEY (dept_no)
);

-- Create a new table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR NOT NULL
	PRIMARY KEY (emp_no,dept_no)
	FOREIGN KEY (emp_no) references employees.emp_no
	FOREIGN KEY (dept_no) references departments.dept_no	
);


-- Create a new table
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT
	PRIMARY KEY (dept_no, emp_no)
	FOREIGN KEY (emp_no) references employees.emp_no
	FOREIGN KEY (dept_no) references departments.dept_no
);


-- Create a new table
CREATE TABLE employees (
 emp_no INT,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE
	PRIMARY KEY (emp_no)
	FOREIGN KEY (emp_title_id) references titles.title_id
);


-- Create a new table
CREATE TABLE salaries (
	emp_no INT,
	salary INT
	PRIMARY KEY (emp_no)
	FOREIGN KEY (emp_no) references employees.emp_no
);


-- Create a new table
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL
	PRIMARY KEY (title_id)
);