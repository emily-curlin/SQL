DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employee_dept;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;	
DROP TABLE IF EXISTS salary;
DROP TABLE IF EXISTS title;

--Create table: dept_no, dept_name
create table departments (
  dept_no varchar not null primary key,
	dept_name varchar not null);

--Create table: emp_no, dept_no
create table employee_dept(
	emp_no int not null,
	dept_no varchar not null, 
	primary key (emp_no, dept_no));

--Create table: dept_no, emp_no
create table dept_manager(
	dept_no varchar not null,
	emp_no int not null,
	primary key (dept_no, emp_no));
	
--Create table: dept_no, emp_no
create table employees(
	emp_no int not null primary key,
	emp_title_id varchar not null,
	birth_date varchar not null,
	first_name varchar not null, 
	last_name varchar not null,
	sex varchar not null,
	hire_date varchar not null
	);
	
--Create table: emp_no, salary
create table salary (
	emp_no int not null,
	salary varchar not null,
	primary key (emp_no, salary));

-- Create table: title_id,title
Create table title(
	title_id varchar not null primary key,
	title varchar not null);

--after creating tables, import corresponding CSV files.



