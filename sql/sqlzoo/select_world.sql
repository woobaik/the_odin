SELECT name
FROM world
WHERE population > (SELECT population FROM world WHERE name ='Russia');

SELECT name
FROM world
WHERE continent = 'Europe'
AND gdp/population > (SELECT gdp/population FROM world WHERE name = 'United Kingdom')

SELECT name, continent
FROM world
WHERE continent = (SELECT continent FROM world WHERE name = 'Argentina')
OR
continent = (SELECT continent FROM world WHERE name = 'Australia')
ORDER BY name;

SELECT name, population
FROM world
WHERE population > (SELECT population FROM world WHERE name = 'Canada')
AND
population < (SELECT population FROM world WHERE name = 'Poland');

SELECT name, CONCAT(ROUND(population / 800000), '%' )
FROM world
WHERE continent = 'Europe';

SELECT name FROM world
	WHERE gdp > ALL(
		SELECT gdp FROM world
			WHERE continent = 'Europe' AND
				gdp IS NOT NULL
	);
