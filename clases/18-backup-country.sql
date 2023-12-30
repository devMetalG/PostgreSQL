CREATE TABLE "country_bk" (
	"code" CHAR(3) NOT NULL,
	"name" TEXT NOT NULL,
	"continent" TEXT NOT NULL,
	"region" TEXT NOT NULL,
	"surfacearea" REAL NOT NULL,
	"indepyear" SMALLINT NULL DEFAULT NULL,
	"population" INTEGER NOT NULL,
	"lifeexpectancy" REAL NULL DEFAULT NULL,
	"gnp" NUMERIC(10,2) NULL DEFAULT NULL,
	"gnpold" NUMERIC(10,2) NULL DEFAULT NULL,
	"localname" TEXT NOT NULL,
	"governmentform" TEXT NOT NULL,
	"headofstate" TEXT NULL DEFAULT NULL,
	"capital" INTEGER NULL DEFAULT NULL,
	"code2" CHAR(2) NOT NULL,
	PRIMARY KEY ("code"),
	CONSTRAINT "country_surfacearea_check" CHECK (((surfacearea >= (0)::double precision))),
	CONSTRAINT "country_continent_check" CHECK (((continent = ANY (ARRAY['Asia'::text, 'Europe'::text, 'North America'::text, 'South America'::text, 'Central America'::text, 'Africa'::text, 'Oceania'::text, 'Antarctica'::text]))))
);

INSERT INTO
    country_bk
SELECT
    *
FROM
    country;

SELECT
    *
FROM
    country_bk;