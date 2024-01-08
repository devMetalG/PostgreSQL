SELECT * FROM countrylanguage WHERE isofficial = true;

SELECT * FROM country;

SELECT * FROM continent;

-- idiomas oficiales que se hablan por continente

SELECT a.language, c.name AS continent FROM countrylanguage a 
INNER JOIN country b ON a.countrycode = b.code
INNER JOIN continent c ON b.continent = c.code
WHERE isofficial = true;


SELECT d.name, c.name AS continent FROM countrylanguage a 
INNER JOIN country b ON a.countrycode = b.code
INNER JOIN continent c ON b.continent = c.code
INNER JOIN "language" d ON a.languagecode = d.code
WHERE isofficial = true;

-- cuantos idiomas oficiales se hablan por continente

SELECT COUNT(*), continent FROM
(SELECT DISTINCT a.language, c.name AS continent FROM countrylanguage a 
INNER JOIN country b ON a.countrycode = b.code
INNER JOIN continent c ON b.continent = c.code
WHERE isofficial = true) AS totales
GROUP BY continent;