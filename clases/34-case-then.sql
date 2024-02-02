SELECT
	first_name,
	last_name,
    hire_date,
    CASE
    	WHEN hire_date > (now() - INTERVAL '1 year') THEN '0 - 1 año'
    	WHEN hire_date > (now() - INTERVAL '3 year') THEN '1 - 3 años'
    	WHEN hire_date > (now() - INTERVAL '6 year') THEN '3 - 6 años'
    	ELSE '+6 años'
    END AS rango_antiguedad
FROM
    employees
ORDER BY hire_date DESC;