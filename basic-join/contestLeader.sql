-- Contest Leaderboard
WITH MAX_SCORE AS (
    SELECT 
        MAX(SCORE) AS MSCORE,
        CHALLENGE_ID,
        HACKER_ID
    FROM SUBMISSIONS
    GROUP BY CHALLENGE_ID, HACKER_ID
)

SELECT 
    H.HACKER_ID,
    H.NAME,
    SUM(MS.MSCORE)
FROM HACKERS H
LEFT JOIN MAX_SCORE MS ON MS.HACKER_ID = H.HACKER_ID
GROUP BY H.HACKER_ID, H.NAME
HAVING SUM(MS.MSCORE) > 0
ORDER BY SUM(MS.MSCORE) DESC, H.HACKER_ID ASC;