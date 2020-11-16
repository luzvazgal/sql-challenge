select *
from salaries

select * from titles

-- Query to get average salary by title
select t.title, ceil(avg(s.salary))
from titles as t 
left join salaries as s
on t.emp_no = s.emp_no
group by t.title

--Searching self's Employee ID number
select * from employee where emp_no = 499942

