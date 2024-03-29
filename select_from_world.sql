--SELECT from WORLD

--1
SELECT name, continent, population FROM world

--2
SELECT name FROM world
WHERE population >= 200000000
--3
SELECT name ,gdp/population  AS per_capita_GDP from world WHERE population >= 200000000
--4
SELECT name, population/1000000 AS population FROM world WHERE continent = 'South America'
--5
SELECT name, population FROM world WHERE name IN ('France', 'Germany', 'Italy')
--6
SELECT name FROM world WHERE name LIKE concat('%', 'United', '%')
--7
SELECT name, population, area FROM world WHERE area > 3000000 OR population > 250000000
--8
SELECT name, population, area FROM world WHERE area > 3000000 XOR population > 250000000
--9
SELECT name, ROUND(population/1000000, 2) AS population, ROUND(gdp/1000000000, 2) AS gdp FROM world WHERE continent = 'South America'
--10
SELECT name, ROUND(gdp/population,-3) FROM world WHERE gdp >= 1000000000000
--11
SELECT name,capital FROM world WHERE length(name) = length(capital)
--12
SELECT name, capital FROM world WHERE LEFT(name,1)  = LEFT(capital,1) AND name <> capital
--13
SELECT name
   FROM world
WHERE name NOT LIKE '% %' 
AND name LIKE '%a%' 
AND name LIKE '%e%'
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'
