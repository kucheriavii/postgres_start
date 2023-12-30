-- SELECT * FROM salaries LIMIT 10;

-- salaries ML Engineers 2023, sorted by ASC
-- *************************************************
-- SELECT salary_in_usd, year, job_title
-- FROM salaries
-- WHERE 
--     year = 2023
--     AND job_title ='ML Engineer'
-- ORDER BY salary_in_usd ASC

-- country with the lowest salary for person in Data Scientisy in 2023
-- *************************************************
SELECT company_location 
FROM salaries
WHERE job_title = 'Data Scientist' 
AND salary_in_usd = (SELECT MIN(salary_in_usd) 
                        FROM salaries 
                        WHERE job_title = 'Data Scientist' 
                        AND year = 2023) ;


SELECT company_location
FROM salaries
WHERE 
    job_title = 'Data Scientist'
    AND year = 2023
ORDER BY salary_in_usd ASC
LIMIT 1;

