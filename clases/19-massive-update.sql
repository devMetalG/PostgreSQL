
SELECT
    a.name,
    a.continent,
    (SELECT code FROM continent b WHERE b.name = a.continent) AS continent_b_ID,
    (SELECT name FROM continent b WHERE b.name = a.continent) AS continent_b_name
FROM
    country a;

UPDATE
    country a
SET
    continent = (
        SELECT
            code
        FROM
            continent b
        WHERE
            b.name = a.continent
    );