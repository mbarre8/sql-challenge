-- DROP TABLES
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

--CREATE TABLES FOR EACH CSV FILE
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NUll);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR NOT NUll);
	
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT);

CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR NOT NUll,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE);
	
CREATE TABLE salaries (
	emp_no INT,
	salary INT);
	
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL);
	
-- VIEW TABLE
SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles