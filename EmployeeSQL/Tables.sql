-- Data Engineering 
-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Made mistakes so dropped tables to redo them
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Department_employees;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Dept_manager;
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


CREATE TABLE Dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL
);

SELECT * FROM Dept_manager;


