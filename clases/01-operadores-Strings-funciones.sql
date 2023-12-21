SELECT
    id,
    UPPER(NAME) AS upper_name,
    LOWER(name) AS lower_name,
    LENGTH(name) AS length_name,
    NAME,
    20 AS constante,
    concat(id, ' ', NAME),
    '*' || id || '-' || NAME || '*' AS barcode
FROM
    users;

