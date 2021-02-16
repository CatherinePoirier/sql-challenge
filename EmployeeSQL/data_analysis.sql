--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries as s
on s.emp_no=e.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986
select e.first_name, e.last_name, e.hire_date
from employees as e
where e.hire_date between '1986-01-01' and '1986-12-31';

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

select dm.dept_no as department_number, d.dept_name as manager_department, e.emp_no, e.first_name as manager_first_name, e.last_name as manager_last_name
from employees as e
	join dept_manager as dm
	on dm.emp_no=e.emp_no
	join departments as d
	on d.dept_no=dm.dept_no

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as de
	on de.employee_no=e.emp_no
	join departments as d
	on d.dept_no=de.dept_no

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select e.first_name, e.last_name,  e.sex
from employees as e
where e.first_name= 'Hercules' and e.last_name like 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
	join dept_emp as de
		on de.employee_no=e.emp_no
		join departments as d
		on d.dept_no=de.dept_no
		where d.dept_name='Sales'