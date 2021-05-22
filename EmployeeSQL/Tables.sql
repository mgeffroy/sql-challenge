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
    birth_date DATE   NOT NULL,
    first_name VARCHAR(30)   NOT NULL,
    last_name VARCHAR(30)   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

SELECT * FROM Departments;

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


ALTER TABLE Departments ADD CONSTRAINT fk_Departments_dept_no FOREIGN KEY(dept_no)
REFERENCES Department_employees (dept_no);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_no FOREIGN KEY(emp_no)
REFERENCES Salaries (emp_no);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);

ALTER TABLE Department_employees ADD CONSTRAINT fk_Department_employees_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Employer_manager ADD CONSTRAINT fk_Employer_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Employer_manager ADD CONSTRAINT fk_Employer_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);