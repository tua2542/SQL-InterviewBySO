-- Weather Observation Station 2
SELECT ROUND(SUM(LAT_N),2) AS LAT,  
ROUND(SUM(LONG_W),2) AS LON
FROM STATION;

-- Weather Observation Station 13
SELECT ROUND(SUM(LAT_N), 4) AS SUM_LATN FROM STATION
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

-- Weather Observation Station 14
SELECT ROUND(MAX(LAT_N),4) FROM STATION
WHERE LAT_N < 137.2345;

-- Weather Observation Station 15
SELECT ROUND(LONG_W, 4) FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC 
LIMIT 1;

-- Weather Observation Station 16
SELECT ROUND(MIN(LAT_N), 4) FROM STATION
WHERE LAT_N > 38.7780;

-- Weather Observation Station 17
SELECT ROUND(LONG_W, 4) FROM STATION
WHERE LAT_N IN (SELECT MIN(LAT_N) FROM STATION
                          WHERE LAT_N > 38.7780);

-- Weather Observation Station 18
SELECT ROUND(ABS((MIN(LAT_N)-MAX(LAT_N))
                 +(MIN(LONG_W)-MAX(LONG_W))),4) 
FROM STATION

-- Weather Observation Station 19
SELECT ROUND( SQRT(POWER((MIN(LAT_N)-MAX(LAT_N)),2) 
             + POWER((MIN(LONG_W)-MAX(LONG_W)),2)),4) 
FROM STATION

-- Weather Observation Station 20
WITH RankedStations AS (
  SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) AS RNK
  FROM STATION
)

SELECT ROUND(AVG(LAT_N), 4)
FROM RankedStations
WHERE RNK IN (
  (SELECT CEIL(COUNT(*) / 2.0) FROM RankedStations),
  (SELECT CEIL((COUNT(*) / 2.0) + 0.1) FROM RankedStations)
);