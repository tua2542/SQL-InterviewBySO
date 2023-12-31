-- Ollivander's Inventory
SELECT ID, AGE, COINS_NEEDED, POWER
FROM (
    SELECT
        W.ID,
        WP.AGE,
        W.COINS_NEEDED,
        W.POWER,
        COINRANKING = ROW_NUMBER() OVER (PARTITION BY W.POWER, WP.AGE
                                        ORDER BY W.COINS_NEEDED)
    FROM
        WANDS W
        INNER JOIN WANDS_PROPERTY WP ON WANDS.CODE = WP.CODE
    WHERE
        WP.IS_EVIL = 0
) AS SUBQUERY
WHERE COINRANKING = 1
ORDER BY POWER DESC, AGE DESC;

