-- SELECT * FROM salaries;

-- SELECT year
-- , exp_level
-- , emp_type
-- FROM salaries
-- WHERE year != 2022
-- AND exp_level = 'SE'
-- ORDER BY year ASC

-- LIMIT 20;

-- SELECT DISTINCT exp_level,
-- CASE exp_level
--     WHEN 'EN' then 'Enterienes'
--     WHEN 'EX' then 'Extrainee'
--     WHEN 'MI' then 'Middle'
--     WHEN 'SE' then 'Senior'
-- END
-- FROM salaries;

-- top salaries 2023
SELECT 
    year
    , job_title
    , salary_in_usd
FROM salaries
WHERE 
    year = 2023
    AND job_title = 'Data Scientist'
ORDER BY salary_in_usd DESC
LIMIT 5;