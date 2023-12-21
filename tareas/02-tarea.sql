SELECT
    *
FROM
    users;

SELECT
   NAME,
	SUBSTRING(name, 0, POSITION(' ' IN NAME)) AS first_name,
	SUBSTRING(name, POSITION(' ' IN NAME) + 1) AS last_name,
-- 	TRIM(SUBSTRING(name, POSITION(' ' IN NAME))) AS trimmed_last_name
FROM
    users;

UPDATE
    users
SET
    first_name = SUBSTRING(name, 0, POSITION(' ' IN NAME)),
    last_name = SUBSTRING(name, POSITION(' ' IN NAME) + 1)