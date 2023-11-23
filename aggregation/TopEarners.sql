-- Top Earners
SELECT
(SELECT MAX(SALARY * MONTHS) AS EARNINGS),
COUNT(*)
FROM EMPLOYEE
WHERE (MONTHS * SALARY) = (SELECT MAX(SALARY * MONTHS) FROM EMPLOYEE);