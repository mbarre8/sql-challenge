-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
From employees as e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no;


-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date >= '1986-01-01'
	and hire_date <= '1986-12-31'
	
-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select t.title_id, d.dept_no, f.dept_name, e.emp_no, e.last_name, e.first_name 
From titles as t
Inner JOIN employees as e ON
t.title_id = e.emp_title_id
INNER JOIN dept_emp as d ON
e.emp_no = d.emp_no
INNER JOIN departments as f ON
d.dept_no = f.dept_no
Where t.title_id = 'm0001';

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select f.dept_no, e.emp_no, e.last_name, e.first_name, f.dept_name
From employees as e
INNER JOIN dept_emp as d ON
e.emp_no = d.emp_no
INNER JOIN departments as f ON
d.dept_no = f.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules'
 and last_name like 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name
From departments as f
INNER JOIN dept_emp as d ON
f.dept_no = d.dept_no
INNER JOIN employees as e ON
d.emp_no= e.emp_no
WHERE f.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, f.dept_name
FROM departments as f
INNER JOIN dept_emp as d ON
f.dept_no = d.dept_no
INNER JOIN employees as e ON
d.emp_no= e.emp_no
WHERE f.dept_name = 'Sales'
	OR f.dept_name = 'Development'; 

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT COUNT(last_name) AS "Employee With Same Last Name Count", last_name
FROM employees
GROUP BY last_name 
ORDER BY "Employee With Same Last Name Count" DESC;
