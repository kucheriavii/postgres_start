--with cte as (select 
--	job_title 
--	, salary_in_usd 
--	, sum(salary_in_usd) over(partition by job_title order by salary_in_usd) as sum_salary 
--from salaries s 
--where year = 2023)
--
--select *
----, salary_in_usd::float/10 as ratio_max
--from cte


--task over

--вивести працівників середя зп яких вища за сер зп професії де вони працюють

with sal as (select 
	job_title,
	avg(salary_in_usd) 
from salaries  
group by 1)
