-- SELECT
--     1 AS nmb_1
--     , 2 AS nmb_2
--     , 5*55 as nmb_3

-- SELECT 
--     count(*) as cnt_all
--     , count(exp_level) as cnt_level
--     , count(DISTINCT exp_level)
-- FROM salaries
-- LIMIT 10

-- SELECT
--     ROUND(AVG(salary_in_usd),0) as salary_avg
--     , MIN(salary_in_usd) as salary_min
--     , MAX(salary_in_usd) as salary_max
-- FROM salaries
-- WHERE year = 2023
-- LIMIT 10
    
SELECT
    year
    , exp_level
    , salary_in_usd
    , salary_in_usd*38 as salary_in_uah
    , CASE 
        WHEN exp_level = 'SE'
        THEN 'senior'
        WHEN exp_level = 'MI'
        THEN 'middle'
        ELSE 'others'
    END as fill_level
FROM salaries
LIMIT 100