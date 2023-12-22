SELECT
    COUNT(*),
    followers
FROM
    users
WHERE
    followers = 4
    OR followers = 4999
GROUP BY
    followers;

SELECT
    COUNT(*),
    followers
FROM
    users
WHERE
    followers BETWEEN 4500
    AND 4700
GROUP BY
    followers
ORDER BY
    followers ASC;