-- SELECT
--     COUNT(*) as cnt_all
--     , COUNT(exp_level) AS cnt_level
-- FROM salaries
-- LIMIT 10;

-- SELECT
--     AVG(salary_in_usd) AS salary_avg,
--     MIN(salary_in_usd) AS salary_min,
--     MAX(salary_in_usd) AS salary_max
-- FROM salaries
-- WHERE year = '2023'
-- LIMIT 10;

SELECT year
        , exp_level
        , salary_in_usd
        , salary_in_usd * 38
        -- 'SE' - senior
        , CASE
            WHEN exp_level = 'SE' THEN 'Senior'
            WHEN exp_level = 'MI' THEN 'Middle'
            ELSE 'Others' END
FROM salaries;
