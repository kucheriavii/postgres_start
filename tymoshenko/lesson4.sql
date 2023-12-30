-- SELECT * FROM salaries;

-- SELECT year
--     , exp_level as level
--     , emp_type  as type
-- FROM salaries
-- WHERE 
--     year != 2022
--     AND exp_level = 'SE'
-- ORDER BY year ASC
-- LIMIT 20;


-- Top 5 salaries 2023

SELECT year, exp_level, job_title, salary_in_usd
FROM salaries
WHERE year = 2023 
    AND job_title = 'Data Scientist'
ORDER BY salary_in_usd DESC
LIMIT 5
