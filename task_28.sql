SELECT COUNT(maker) 
FROM (
    SELECT maker FROM product
    GROUP BY maker
    HAVING COUNT(model) = 1
) AS sub_query;
