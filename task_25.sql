WITH max_speed AS(
    SELECT MAX(speed) AS 'speed'
    FROM pc
    WHERE ram IN (SELECT MIN(ram) FROM pc)
)
SELECT DISTINCT pro.maker
FROM pc
INNER JOIN product pro ON pc.model = pro.model
WHERE speed IN (SELECT speed FROM max_speed)
AND ram IN (SELECT MIN(ram) FROM pc)
INTERSECT
SELECT maker
FROM product
WHERE type = 'Printer';