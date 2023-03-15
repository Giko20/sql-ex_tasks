SELECT pro.maker, AVG(pc.hd) AVG_hd
FROM product pro
INNER JOIN pc ON pro.model = pc.model
WHERE pro.maker 
IN (
    SELECT pro.maker FROM product pro 
    WHERE type = 'Printer'
)
GROUP BY maker;