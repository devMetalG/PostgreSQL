(SELECT
    COUNT(*) AS total,
    b.name AS continent
FROM
    country a
    INNER JOIN continent b ON a.continent = b.code 
GROUP BY
    b.name)
UNION
(SELECT
    0 AS total,
    b.name AS continent
FROM
    country a
    RIGHT JOIN continent b ON a.continent = b.code
WHERE
    a.name IS NULL
GROUP BY
    b.name)
ORDER BY
    total ASC;