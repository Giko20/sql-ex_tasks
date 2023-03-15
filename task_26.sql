SELECT AVG(price) AVG_price FROM
(
    SELECT pro.maker, pc.price FROM product pro
    INNER JOIN pc 
    ON pro.model=pc.model
    WHERE pro.maker = 'A'
    UNION ALL
    SELECT pro.maker, lap.price FROM product pro
    INNER JOIN laptop lap
    ON pro.model=lap.model
    WHERE pro.maker = 'A'
) AS main_table;