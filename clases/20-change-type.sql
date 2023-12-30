ALTER TABLE
    country
ALTER COLUMN
    continent TYPE int4
    USING continent::integer;

CREATE UNIQUE INDEX unique_code ON continent (code);

ALTER TABLE
    country
ADD
    CONSTRAINT fk_code FOREIGN KEY(continent) REFERENCES continent (code);

SELECT * FROM country;

DROP TABLE country_bk;