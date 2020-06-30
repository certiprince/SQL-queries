-- Welcome to this SQL queries file!
-- To open this file, you will need to have sqlite3 installed on your PC
-- Then open the accompanying World Population base in sqlite3 in a terminal or command line (depending on your OS)
-- NB this can also be done in a Desktop DB Browser but I suggest running in shell
-- Enter `.schema` to see database schema
-- Proceed to query the 'population_years' table: you can open this query file here

----------------------------------

-- Check distinct years

SELECT DISTINCT year
FROM population_years;

-- Order population change in Gabon

SELECT *
FROM population_years
WHERE country = "Gabon"
ORDER BY population DESC;

-- Find 10 lowest population countries in 2005

SELECT country, population
FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;

-- Find countries with over 100mil population in 2010

SELECT DISTINCT country
FROM population_years
WHERE population > 100 AND year = 2010;

-- Find country names that contain "Islands"

SELECT DISTINCT country
FROM population_years
WHERE country LIKE "%Islands%";

-- Compare population of Indonesia in 2000 and 2010

SELECT *
FROM population_years
WHERE country = "Indonesia" AND year IN (2000, 2010);

