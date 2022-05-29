SELECT W.id, P.age, W.coins_needed, W.power
FROM WANDS  W
    INNER JOIN WANDS_PROPERTY  P
    ON W.code = P.code
WHERE P.is_evil = 0 AND W.coins_needed = 
    (SELECT MIN(coins_needed)
     FROM WANDS  W1
        INNER JOIN WANDS_PROPERTY  P1 
     ON W1.code = P1.code
     WHERE W1.power = W.power AND P1.age = P.age)
ORDER BY W.power DESC, P.age DESC