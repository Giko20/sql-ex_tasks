WITH maximum_price AS(
    SELECT MAX(CTE.price) AS 'price'
    FROM (
        SELECT price FROM pc
        UNION
        SELECT price FROM laptop
        UNION
        SELECT price FROM printer
    ) AS CTE
)

SELECT CTE1.model
FROM (
    SELECT model, price
    FROM pc
    UNION
    SELECT model, price
    FROM laptop
    UNION
    SELECT model, price
    FROM printer
) CTE1
INNER JOIN maximum_price CTE2 ON CTE1.price = CTE2.price;