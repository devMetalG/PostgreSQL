SELECT
    *
FROM
    employees
WHERE
    hire_date > '1998-02-05'
ORDER BY
    hire_date ASC;

SELECT
    MAX(hire_date) AS mas_nuevo,
    MIN(hire_date) AS primer_empleado
FROM
    employees;

SELECT
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1998-01-01' AND '1999-01-01'
ORDER BY
    hire_date ASC;