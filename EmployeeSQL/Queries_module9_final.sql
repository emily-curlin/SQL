--querying the database tables that were created
--List the employee number, last name, first name, sex, and salary of each employee
Select employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salary.salary
	from employees as employees 
	left join salary as salary
	on (employees.emp_no = salary.emp_no)
order by employees.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
Select emp_no,first_name,last_name,hire_date 
from employees 
where hire_date between '1986-01-01' and '1986-12-31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select emp.first_name,
	emp.last_name,
	dm.dept_no,
	dm.emp_no,
	dept.dept_name
	from dept_manager as dm
	inner join departments as dept
	on (dept.dept_no = dm.dept_no)
	inner join employees as emp
	on (emp.emp_no= dm.emp_no)
	order by dept.dept_name;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select ed.dept_no, 
		ed.emp_no, 
		emp.first_name,
		emp.last_name,
		dep.dept_name
		from employee_dept as ed
		inner join employees as emp
		on (ed.emp_no = emp.emp_no)
		inner join departments as dep
		on (ed.dept_no = dep.dept_no);


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
Select emp.first_name,
	emp.last_name,
	emp.sex
	from employees as emp
	where emp.first_name = 'Hercules'
	and emp.last_name like 'B%';


--List each employee in the Sales department, including their employee number, last name, and first name.
Select dept.dept_name,
	ed.emp_no,
	emp.last_name,
	emp.first_name
	from employees as emp 
	inner join employee_dept as ed
	on (emp.emp_no = ed.emp_no)
	inner join departments as dept 
	on (dept.dept_no = ed.dept_no)
	where dept_name = 'Sales';
	
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select dept.dept_name,
	ed.emp_no,
	emp.last_name,
	emp.first_name
	from employees as emp 
	inner join employee_dept as ed
	on (emp.emp_no = ed.emp_no)
	inner join departments as dept 
	on (dept.dept_no = ed.dept_no)
	where dept_name in ('Sales', 'Development')
	order by dept.dept_name;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select emp.last_name, count (last_name)
	from employees as emp
	group by last_name
	order by count (last_name) desc;
	

