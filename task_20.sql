SELECT maker, COUNT(DISTINCT model)
FROM product
WHERE type = 'PC'
GROUP BY maker
HAVING COUNT(DISTINCT model) > 2;