------ Second file for Data Analysis 
-- Check all tables
SELECT * FROM Department_employees;
SELECT * FROM Salaries;
SELECT * FROM Dept_manager;
SELECT * FROM Titles;
SELECT * FROM Employees;
SELECT * FROM Departments;

-- Change dates so they work and are not a string anymore
SHOW datestyle;
SELECT TO_DATE(birth_date , 'MM/DD/YYYY'),
TO_DATE( hire_date , 'MM/DD/YYYY')
 FROM Employees;
 
--Data analysis 
 
--List the following details of each employee: employee number, last name, first name, sex, and salary.

SElECT e.emp_no AS "Employee number",
e.last_name AS "Last Name",
e.first_name AS "Name",
e.sex AS "Sex", 
s.salary AS "Salary"
FROM employees AS e
JOIN salaries AS s
ON s.emp_no=e.emp_no
ORDER BY e.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
-- Either convert to date or use LIKE on "string"
SELECT first_name AS "Name",
last_name AS "Last Name",
hire_date AS "Employed since" 
FROM Employees
WHERE hire_date LIKE '%1986';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SElECT dm.emp_no AS "Employee number",
dm.dept_no AS "Department Number",
d.dept_name AS "Department Name",
e.last_name AS "Last Name",
e.first_name AS "First Name"
FROM dept_manager AS dm
JOIN departments AS d
ON dm.dept_no=d.dept_no
JOIN employees AS e
ON dm.emp_no = e.emp_no
ORDER BY dm.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SElECT e.emp_no AS "Employee number",
e.last_name AS "Last Name",
e.first_name AS "First Name",
d.dept_name AS "Department Name"
FROM Employees AS e
lEFT JOIN department_employees AS de
ON e.emp_no=de.emp_no
LEFT JOIN departments AS d 
ON de.dept_no = d.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SElECT e.first_name AS "Name",
e.last_name AS "Last Name",
e.sex AS "Sex"
FROM employees AS e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY e.last_name;

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SElECT e.emp_no AS "Employee number",
e.last_name AS "Last Name",
e.first_name AS "First Name",
d.dept_name AS "Department Name"
FROM Employees AS e
LEFT JOIN department_employees AS de
ON e.emp_no=de.emp_no
LEFT JOIN departments AS d 
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
GROUP BY (e.emp_no, d.dept_name)
ORDER BY e.emp_no;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SElECT e.emp_no AS "Employee number",
e.last_name AS "Last Name",
e.first_name AS "First Name",
d.dept_name AS "Department Name"
FROM Employees AS e
lEFT JOIN department_employees AS de
ON e.emp_no=de.emp_no
LEFT JOIN departments AS d 
ON de.dept_no = d.dept_no;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT e.last_name, COUNT(last_name) AS "Last Names"
FROM Employees AS e
GROUP BY last_name
ORDER BY last_name DESC; 
