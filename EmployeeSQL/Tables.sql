-- Data Engineering 
-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Made mistakes so dropped tables to redo them
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Department_employees;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Employer_manager;
DROP TABLE IF EXISTS Salaries;
DROP TABLE IF EXISTS Titles;

-- Create all tables 
--Import data to tables 
--Check if tables work 

CREATE TABLE Departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

SELECT * FROM Departments;

CREATE TABLE Employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR   NOT NULL,
    birth_date VARCHAR  NOT NULL,
    first_name VARCHAR(30)   NOT NULL,
    last_name VARCHAR(30)   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date VARCHAR NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

SELECT * FROM Employees;

CREATE TABLE Salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL
);

SELECT * FROM Salaries;


CREATE TABLE Titles (
    title_id VARCHAR   NOT NULL,
    title VARCHAR (20)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

SELECT * FROM Titles;

CREATE TABLE Department_employees (
    emp_no INT   NOT NULL,
    dept_no VARCHAR   NOT NULL
);

SELECT * FROM Department_employees;


CREATE TABLE Employer_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL
);

SELECT * FROM Employer_manager;

-- Change 
SHOW datestyle;
SELECT TO_DATE(birth_date , 'MM/DD/YYYY'),
TO_DATE( hire_date , 'MM/DD/YYYY')
 FROM Employees;
 
--Data analysis 
 
--List the following details of each employee: employee number, last name, first name, sex, and salary.


--List first name, last name, and hire date for employees who were hired in 1986.


--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


--List the department of each employee with the following information: employee number, last name, first name, and department name.


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


--List all employees in the Sales department, including their employee number, last name, first name, and department name.


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

