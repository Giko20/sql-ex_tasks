WITH cte_out AS (
    SELECT point, date, SUM(out) AS out
    FROM outcome
    GROUP BY point, date
) , cte_inc AS (
    SELECT point, date, SUM(inc) AS inc
    FROM income
    GROUP BY point, date
)

SELECT i.point, i.date, o.out, i.inc
FROM cte_inc i
LEFT JOIN cte_out o ON i.point = o.point AND i.date = o.date
UNION
SELECT o.point, o.date, o.out, i.inc
FROM cte_out o
LEFT JOIN cte_inc i ON o.point = i.point AND o.date = i.date;