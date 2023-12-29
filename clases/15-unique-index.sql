SELECT
    *
FROM
    city
WHERE
    name = 'Jinzhou'
    AND countrycode = 'CHN'
    AND district = 'Liaoning';

CREATE UNIQUE INDEX "unique_name_countrycode_district" ON city (
	name, countrycode, district
);

UPDATE
    city
SET
    name = 'Jinzhou Old'
WHERE
    id = 2238;

CREATE INDEX "district" ON city (
	district
);