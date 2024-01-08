SELECT * FROM city;

SELECT
    COUNT(*) AS total,
    b.name AS country
FROM
    city a
    INNER JOIN country b ON a.countrycode = b.code  
GROUP BY
    b.name
ORDER BY
	COUNT(*) DESC
LIMIT 1;