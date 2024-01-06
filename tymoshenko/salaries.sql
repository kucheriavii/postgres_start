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

--with av_sal as (
--select 
--	job_title,
--	avg(salary_in_usd) as averege
--from salaries  
--where year = 2023
--group by 1)
--
--select s.job_title , s.salary_in_usd, a.averege  
--from salaries s
--left join av_sal a on s.job_title = a.job_title
--where s.salary_in_usd > a.averege and year = 2023 

with cte as (
	select
		job_title
		,salary_in_usd		
		,AVG(salary_in_usd) over(partition by job_title) as avg_salary
	from  salaries s 
	where year = 2023
)

select  * 
from cte
where salary_in_usd > avg_salary