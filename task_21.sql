SELECT pro.maker, MAX(pc.price) AS Max_price
FROM product pro
INNER JOIN pc
ON pro.model = pc.model
WHERE pro.type = 'PC'
GROUP BY pro.maker;