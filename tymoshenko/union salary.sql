select 'max_salary' as type, max(salary_in_usd)
from  salaries s 
UNION
select 'min_salary' as type, min(salary_in_usd)
from  salaries s 
union
select 'delta salaty' as type, max(salary_in_usd)-(select min(salary_in_usd)
from  salaries)
from  salaries 
