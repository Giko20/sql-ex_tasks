SELECT pro.maker FROM product pro
INNER JOIN pc ON pro.model = pc.model
WHERE pc.speed >= 750
INTERSECT
SELECT pro.maker FROM product pro
INNER JOIN laptop ON pro.model = laptop.model
WHERE laptop.speed >= 750;