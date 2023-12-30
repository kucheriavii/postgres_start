
-- SELECT * FROM salaries LIMIT 20;

SELECT *
FROM salaries
WHERE year IS NOT NULL
    -- AND job_title LIKE('Da_a_A%')
LIMIT 20

-- SELECT *
-- FROM salaries
-- WHERE 1=1
--     AND job_title LIKE('%Data%')
-- LIMIT 20

-- SELECT *
-- FROM salaries
-- WHERE 1=1
--     AND job_title LIKE('Da_a_A%')
-- LIMIT 20

-- SELECT *
-- FROM salaries
-- WHERE 1=1
--     AND job_title iLIKE('da_a_A%')
-- LIMIT 20

-- SELECT *
-- FROM salaries
-- WHERE
--     year != 2023
-- LIMIT 20;

-- SELECT *
-- FROM salaries
-- WHERE
--     exp_level = 'MI'
--     AND exp_level != 'MI'
--     OR exp_level = 'SE'
-- LIMIT 20;

-- SELECT DISTINCT year
-- FROM salaries
-- WHERE 1=1
--     AND year BETWEEN 2020 AND 2023
-- LIMIT 20

-- SELECT DISTINCT year
-- FROM salaries
-- WHERE 1=1
--     AND year IN (2020,2021)
-- LIMIT 20

-- SELECT *
-- FROM salaries
-- WHERE 1=1
--     AND job_title IN ('Data Analyst','Data Scientist')
-- LIMIT 20


