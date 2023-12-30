-- SELECT * FROM salaries LIMIT 20;

SELECT DISTINCT job_title
, ROUND(AVG(salary_in_usd*37),2) AS salary_avg
FROM salaries
WHERE year = 2023
GROUP BY job_title
HAVING COUNT(job_title) = 2
AND ROUND(AVG(salary_in_usd*37),2) > 5000000
ORDER BY 2