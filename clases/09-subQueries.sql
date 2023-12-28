SELECT
    SUM(total)
FROM
    (
        SELECT
            COUNT(*) AS total,
            SUBSTRING(email, POSITION('@' IN email) + 1) AS domain,
            'Guillermo' AS name,
            25 as age
        FROM
            users
        GROUP BY
            SUBSTRING(email, POSITION('@' IN email) + 1)
        HAVING
            COUNT(*) > 1
        ORDER BY
            COUNT(*) DESC
	) AS email_domains;