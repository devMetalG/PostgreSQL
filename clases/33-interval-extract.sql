SELECT
    hire_date,
    MAKE_INTERVAL(years := 2024 - EXTRACT(years FROM hire_date)::INTEGER) AS manual,
    MAKE_INTERVAL(years := date_part('years', CURRENT_DATE)::INTEGER - EXTRACT(years FROM hire_date)::INTEGER) AS computed
FROM
    employees
    ORDER BY hire_date ASC;


SELECT
	hire_date,
	hire_date + INTERVAL '24 years'
FROM
    employees
    ORDER BY hire_date DESC;

UPDATE
    employees
SET
    hire_date = hire_date + INTERVAL '24 years';