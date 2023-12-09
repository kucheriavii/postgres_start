-- SELECT * FROM salaries;

-- SELECT year
-- , exp_level
-- , emp_type
-- FROM salaries
-- LIMIT 10;

SELECT DISTINCT emp_type,
CASE emp_type
    WHEN 'PT' then 'FITTU'
END
FROM salaries;