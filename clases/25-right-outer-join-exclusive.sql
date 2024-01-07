SELECT
	a.name AS country,
	a.continent AS continentCode,
	b.name AS continent
FROM
    country a
    RIGHT JOIN continent b ON a.continent = b.code
WHERE a.continent IS NULL;