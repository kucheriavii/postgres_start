-- SELECT * FROM salaries LIMIT 10;

-- salaries ML Engineers 2023, sorted by ASC
-- *************************************************
-- SELECT salary_in_usd, year, job_title
-- FROM salaries
-- WHERE 
--     year = 2023
--     AND job_title ='ML Engineer'
-- ORDER BY salary_in_usd ASC

-- country with the lowest salary for person
-- *************************************************
SELECT company_location 
FROM salaries
WHERE salary_in_usd = (SELECT MIN(salary_in_usd) FROM salaries);

SELECT company_location
FROM salaries
ORDER BY salary_in_usd ASC
LIMIT 1

