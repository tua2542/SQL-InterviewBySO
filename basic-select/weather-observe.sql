-- Weather Observation Station 1
SELECT CITY, STATE FROM STATION;

-- Weather Observation Station 3
SELECT DISTINCT CITY FROM STATION
WHERE MOD(ID, 2) = 0;

-- Weather Observation Station 4
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

-- Weather Observation Station 5
SELECT  CITY, LENGTH(CITY) AS MAX_LENGTH FROM STATION
ORDER BY MAX_LENGTH DESC, CITY ASC 
LIMIT 1; 

SELECT  CITY, LENGTH(CITY) AS MIN_LENGTH FROM STATION
ORDER BY MIN_LENGTH ASC, CITY ASC
LIMIT 1; 

-- Weather Observation Station 6
SELECT DISTINCT CITY FROM STATION
WHERE 
CITY LIKE 'a%'
OR
CITY LIKE 'e%'
OR
CITY LIKE 'i%'
OR
CITY LIKE 'o%'
OR
CITY LIKE 'u%';

-- Weather Observation Station 7
SELECT DISTINCT CITY FROM STATION
WHERE 
CITY LIKE '%a'
OR
CITY LIKE '%e'
OR
CITY LIKE '%i'
OR
CITY LIKE '%o'
OR
CITY LIKE '%u';

-- Weather Observation Station 9
SELECT DISTINCT CITY FROM STATION
WHERE
(
LEFT(CITY, 1) LIKE '%a'
OR
LEFT(CITY, 1) LIKE '%e'
OR
LEFT(CITY, 1) LIKE '%i'
OR
LEFT(CITY, 1) LIKE '%o'
OR
LEFT(CITY, 1) LIKE '%u'
)
AND
(
RIGHT(CITY, 1) LIKE 'a%'
OR
RIGHT(CITY, 1) LIKE 'e%'
OR
RIGHT(CITY, 1) LIKE 'i%'
OR
RIGHT(CITY, 1) LIKE 'o%'
OR
RIGHT(CITY, 1) LIKE 'u%'
);

-- Weather Observation Station 9
SELECT DISTINCT CITY FROM STATION
WHERE 
CITY NOT LIKE 'a%'
AND
CITY NOT LIKE 'e%'
AND
CITY NOT LIKE 'i%'
AND
CITY NOT LIKE 'o%'
AND
CITY NOT LIKE 'u%';

-- Weather Observation Station 10
SELECT DISTINCT CITY FROM STATION
WHERE 
CITY NOT LIKE '%a'
AND
CITY NOT LIKE '%e'
AND
CITY NOT LIKE '%i'
AND
CITY NOT LIKE '%o'
AND
CITY NOT LIKE '%u';

-- Weather Observation Station 11
SELECT DISTINCT CITY FROM STATION
WHERE
(
LEFT(CITY, 1) NOT LIKE '%a'
AND
LEFT(CITY, 1) NOT LIKE '%e'
AND
LEFT(CITY, 1) NOT LIKE '%i'
AND
LEFT(CITY, 1) NOT LIKE '%o'
AND
LEFT(CITY, 1) NOT LIKE '%u'
)
OR
(
RIGHT(CITY, 1) NOT LIKE 'a%'
AND
RIGHT(CITY, 1) NOT LIKE 'e%'
AND
RIGHT(CITY, 1) NOT LIKE 'i%'
AND
RIGHT(CITY, 1) NOT LIKE 'o%'
AND
RIGHT(CITY, 1) NOT LIKE 'u%'
);

-- Weather Observation Station 12
SELECT DISTINCT CITY FROM STATION
WHERE
(
LEFT(CITY, 1) NOT LIKE '%a'
AND
LEFT(CITY, 1) NOT LIKE '%e'
AND
LEFT(CITY, 1) NOT LIKE '%i'
AND
LEFT(CITY, 1) NOT LIKE '%o'
AND
LEFT(CITY, 1) NOT LIKE '%u'
)
AND
(
RIGHT(CITY, 1) NOT LIKE 'a%'
AND
RIGHT(CITY, 1) NOT LIKE 'e%'
AND
RIGHT(CITY, 1) NOT LIKE 'i%'
AND
RIGHT(CITY, 1) NOT LIKE 'o%'
AND
RIGHT(CITY, 1) NOT LIKE 'u%'
);