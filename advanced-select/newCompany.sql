-- New Companies

-- write a query to print the company_code, founder name, 
-- total number of lead managers, total number of senior managers, 
-- total number of managers, and total number of employees. 
-- Order your output by ascending company_code.

-- LONG QUERY

SELECT C.COMPANY_CODE, C.FOUNDER,
COUNT(DISTINCT E.LEAD_MANAGER_CODE), 
COUNT(DISTINCT E.SENIOR_MANAGER_CODE), 
COUNT(DISTINCT E.MANAGER_CODE),
COUNT(DISTINCT E.EMPLOYEE_CODE) 
FROM COMPANY C

JOIN LEAD_MANAGER LM
ON C.COMPANY_CODE = LM.COMPANY_CODE

JOIN SENIOR_MANAGER SM
ON LM.COMPANY_CODE = SM.COMPANY_CODE

JOIN MANAGER M
ON SM.COMPANY_CODE = M.COMPANY_CODE

JOIN EMPLOYEE E
ON M.COMPANY_CODE = E.COMPANY_CODE

GROUP BY C.COMPANY_CODE, C.FOUNDER
ORDER BY COMPANY_CODE ASC;


--- SHORT QUERY

SELECT C.COMPANY_CODE, C.FOUNDER,
COUNT(DISTINCT E.LEAD_MANAGER_CODE), 
COUNT(DISTINCT E.SENIOR_MANAGER_CODE), 
COUNT(DISTINCT E.MANAGER_CODE),
COUNT(DISTINCT E.EMPLOYEE_CODE) 
FROM COMPANY C

JOIN EMPLOYEE E
ON C.COMPANY_CODE = E.COMPANY_CODE

GROUP BY C.COMPANY_CODE, C.FOUNDER
ORDER BY COMPANY_CODE ASC;