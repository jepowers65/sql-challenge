-- create table schema for titles
DROP TABLE titles

CREATE TABLE titles (
  title_id VARCHAR(5) PRIMARY KEY,
  title VARCHAR(30) NOT NULL
);
-- create table schema for departments
DROP TABLE departments

CREATE TABLE departments (
  dept_no VARCHAR(5) PRIMARY KEY NOT NULL,
  dept_name VARCHAR(30) NOT NULL
);
-- create table schema for employees
DROP TABLE employees

CREATE TABLE employees (
  emp_no INT PRIMARY KEY NOT NULL,
  emp_title_id VARCHAR(5) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex CHAR(1) NOT NULL,
  hire_date DATE NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
-- create table schema for salaries
DROP TABLE salaries

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- create table schema for dept_manager
DROP TABLE dept_manager

CREATE TABLE dept_manager (
  dept_no VARCHAR(5) NOT NULL, 
  emp_no INT NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- create table schema for dept_emp
DROP TABLE dept_emp

CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(5) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);



--check the tables
SELECT * FROM titles;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM dept_manager;
SELECT * FROM dept_emp;