-- SELECT * FROM salaries LIMIT 10;

SELECT COUNT(*) - COUNT(salary_in_usd)
FROM salaries

-- all data + column exp_level_full
-- SELECT *, 
--     CASE 
--         WHEN exp_level = 'EN'
--         THEN 'Entry-level'
--         WHEN exp_level = 'MI'
--         THEN 'Mid-level'
--         WHEN exp_level = 'SE'
--         THEN 'Senior-level'
--         WHEN exp_level = 'EX'
--         THEN 'Excutive-level'
--         ELSE 'Other'
--     END AS exp_level_full
-- FROM salaries
-- **********************************


-- unique from colomn remote_ratio with two sights after the dot
-- **********************************
-- SELECT DISTINCT ROUND((remote_ratio*0.01),2)
-- FROM salaries

-- top 5 salaries in UAH for ML Engineer
-- **********************************
-- SELECT salary_in_usd*38 as salary_in_uah, year, job_title
-- FROM salaries
-- WHERE job_title = 'ML Engineer'
--         AND year = 2023
-- ORDER BY salary_in_usd DESC
-- LIMIT 5

--min-max and avarege sallary for 2023
-- **********************************
-- SELECT MIN(salary_in_usd) as min,
--         MAX(salary_in_usd) as max,
--         ROUND(AVG(salary_in_usd),0) as avg
-- FROM salaries
-- WHERE year = 2023

-- unique meaning for column
-- *****************************************
-- SELECT COUNT(DISTINCT job_title)
-- FROM salaries 

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
-- SELECT company_location 
-- FROM salaries
-- WHERE job_title = 'Data Scientist' 
-- AND salary_in_usd = (SELECT MIN(salary_in_usd) 
--                         FROM salaries 
--                         WHERE job_title = 'Data Scientist' 
--                         AND year = 2023) ;


-- SELECT company_location
-- FROM salaries
-- WHERE 
--     job_title = 'Data Scientist'
--     AND year = 2023
-- ORDER BY salary_in_usd ASC
-- LIMIT 1;

-- top 5  salaries wit remote ratio 100%
-- *****************************************
-- SELECT salary_in_usd, remote_ratio
-- FROM salaries
-- WHERE remote_ratio = 100
-- ORDER BY salary_in_usd DESC
-- LIMIT 5;


