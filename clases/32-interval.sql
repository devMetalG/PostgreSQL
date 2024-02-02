SELECT
    --MAX (hire_date),
    --MAX (hire_date) + INTERVAL '1 day' AS days,
    --MAX (hire_date) + INTERVAL '1 month' AS months,
    --MAX (hire_date) + INTERVAL '1 year' AS years,
    --date_part('year', now()),
    --MAKE_INTERVAL( YEARS := date_part('year', now())::INTEGER),
    MAX (hire_date) + MAKE_INTERVAL( YEARS := 24)
    FROM
    employees;