-- This is the queries file
--List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employee e
left join salaries as s
on e.emp_no = s.emp_no;

--List employees who were hired in 1986.
select * from employee
where hire_date between '1986-01-01' and '1986-12-31';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select d.depto_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
from departments as d
left join dept_manager as dm on d.depto_no = dm.dept_no
left join employee as e on dm.emp_no = e.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employee as e
left join dept_emp as de on e.emp_no = de.emp_no
left join departments as d on de.dept_no = d.depto_no;

--select * from departments

--List all employees whose first name is "Hercules" and last names begin with "B."
select * from employee
where first_name = 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employee as e
left join dept_emp as de on e.emp_no = de.emp_no
left join departments as d on de.dept_no = d.depto_no
where d.dept_name = 'Sales';


--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employee as e
left join dept_emp as de on e.emp_no = de.emp_no
left join departments as d on de.dept_no = d.depto_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(*) as total_count
from employee
group by last_name
order by total_count desc;




