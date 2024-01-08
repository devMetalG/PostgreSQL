-- Cúal es el idioma (y código del idioma) oficial más hablado por diferentes países de europa

SELECT * FROM countrylanguage WHERE isofficial = true;

SELECT * FROM country;

SELECT * FROM continent;

SELECT * FROM "language";

SELECT COUNT(*), b."language", b.languagecode FROM country a
INNER JOIN countrylanguage b ON a.code = b.countrycode
WHERE a.continent = 5 AND b.isofficial = true
GROUP BY b."language", b.languagecode
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Listado de todos los países cuyo idioma oficial es el más hablado de Europa
-- (no hacer subquery)

SELECT * FROM country a
INNER JOIN countrylanguage b ON a.code = b.countrycode
WHERE a.continent = 5 AND b.isofficial = true AND b.languagecode = 135;