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

SElECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON s.emp_no=e.emp_no
ORDER BY emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
-- Either convert to date or use LIKE on "string"
SELECT first_name, last_name, hire_date FROM Employees
WHERE hire_date LIKE '%1986';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SElECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON s.emp_no=e.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SElECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY e.last_name;


--List all employees in the Sales department, including their employee number, last name, first name, and department name.


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

