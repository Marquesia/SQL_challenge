--1
select e.emp_no,last_name,first_name,sex,salary 
from employees as e, salaries as s
where e.emp_no = s.emp_no
order by emp_no;

--2
select first_name, last_name,hire_date 
from employees
where hire_date between '1986-01-01' and '1986-12-31';

--3
select m.dept_no,dept_name,m.emp_no,last_name,first_name
from dept_manager as m, departments as d, employees as e
where e.emp_no = m.emp_no and d.dept_no = m.dept_no;

--4
select
	de.emp_no as employee_number,
	e.last_name,
	e.first_name,
	d.dept_name as department_name
from dept_emp as de
join employees as e
	on de.emp_no = e.emp_no
join departments as d
	on de.dept_no = d.dept_no

--5
select
	first_name,
	last_name,
	sex
from employees
where 	
	first_name = 'Hercules' and 
	last_name LIKE 'B%

--6
select e.emp_no,last_name,first_name
from employees as e, departments as d, dept_emp as x
where d.dept_name = 'Sales' and e.emp_no = x.emp_no and x.dept_no = d.dept_no;

--7
select e.emp_no,last_name,first_name,dept_name
from departments as d, employees as e, dept_emp as x
where (d.dept_name = 'Sales' or d.dept_name = 'Development') and e.emp_no = x.emp_no and x.dept_no = d.dept_no;

--8
select last_name,count(last_name) as "Last name frequency"
from employees as e
group by last_name
order by "Last name frequency" desc;