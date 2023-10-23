-- Occupations --USING PIVOT -- ORACLE

--1
SELECT DOCTOR, PROFESSOR, SINGER, ACTOR 
FROM
--2
(SELECT NAME, OCCUPATION, ROW_NUMBER() 
OVER (PARTITION BY OCCUPATION ORDER BY NAME)
AS ROW_NUM FROM OCCUPATIONS) 

-- Eve Actor 1
-- Jennifer Actor 2
-- Ketty Actor 3
-- Samantha Actor 4
-- Aamina Doctor 1
-- Julia Doctor 2
-- Priya Doctor 3
-- Ashley Professor 1
-- Belvet Professor 2
-- Britney Professor 3
-- Maria Professor 4
-- Meera Professor 5
-- Naomi Professor 6
-- Priyanka Professor 7
-- Christeen Singer 1
-- Jane Singer 2
-- Jenny Singer 3
-- Kristeen Singer 4

PIVOT
(MIN(NAME) FOR OCCUPATION IN ('Doctor' as DOCTOR, 'Professor' as PROFESSOR,
'Singer' as SINGER, 'Actor' as ACTOR))
ORDER BY ROW_NUM;
