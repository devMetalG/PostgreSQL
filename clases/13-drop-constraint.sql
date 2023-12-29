SELECT
    *
FROM
    country;

ALTER TABLE country ADD CHECK(
	surfacearea >= 0
);

SELECT
    DISTINCT continent
from
    country;

ALTER TABLE
    country
ADD CHECK (
	continent IN (
		'Asia',
		'Europe',
		'North America',
		'South America',
		'Central America',
		'Africa',
		'Oceania',
		'Antarctica'
	)
);

-- Belize="BLZ", Costa Rica="CRI", El Salvador="SLV", Guatemala="GTM", Honduras="HND", Nicaragua="NIC", Panama="PAN"

SELECT
    *
FROM
    country
WHERE
    name = 'Panama';

UPDATE
    country
SET
    continent = 'Central America'
WHERE
    code = 'PAN';

-- Borrar constraint

ALTER table
    country DROP CONSTRAINT "country_continent_check";

