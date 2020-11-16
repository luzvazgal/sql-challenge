select *
from salaries

select * from titles

select t.title, round(avg(s.salary),2)
from titles as t 
inner join salaries as s
on t.emp_no = s.emp_no
group by t.title


select t.title, s.salary
from titles as t 
left join salaries as s
on t.emp_no = s.emp_no
order by t.title