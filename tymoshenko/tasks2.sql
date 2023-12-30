-- SELECT * FROM salaries;
-- SELECT *
-- FROM (SELECT *
--     FROM salaries
--     ORDER BY salary_in_usd DESC
--     LIMIT 2) as t
-- ORDER BY salary_in_usd
-- LIMIT 1

SELECT *
FROM salaries
ORDER BY salary_in_usd DESC
LIMIT 1 OFFSET 1

-- SELECT job_title,
--     ROUND(AVG(salary_in_usd),0) as AVG_salary,
--     (SELECT max(salary_in_usd) from salaries) as max_salary,
--     ROUND(avg(salary_in_usd),0)-
--         (SELECT max(salary_in_usd)
--         FROM salaries)

-- FROM salaries
-- GROUP BY job_title




-- SELECT min(test.max_sal)
-- FROM(
--     SELECT company_location, MAX(salary_in_usd) as max_sal
--     FROM salaries
--     GROUP BY company_location
-- ) as test



-- SELECT *
-- FROM salaries
-- WHERE emp_location in (
--     SELECT company_location 
--     FROM salaries
--     WHERE year = 2023
--     GROUP BY company_location
--     HAVING AVG(salary_in_usd) > (
--         SELECT AVG(salary_in_usd)
--         FROM salaries
--         WHERE year = 2023)
-- )


-- All salaries above average
-- SELECT *
-- FROM salaries
-- WHERE salary_in_usd > (
--     SELECT AVG(salary_in_usd) FROM salaries
-- )