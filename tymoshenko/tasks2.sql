-- SELECT * FROM salaries;



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