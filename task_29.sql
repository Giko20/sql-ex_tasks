SELECT inc.point, inc.date, inc.inc, out.out
FROM income_o inc
LEFT JOIN outcome_o out ON inc.point = out.point AND inc.date = out.date
UNION
SELECT out.point, out.date, inc.inc, out.out
FROM outcome_o out
LEFT JOIN income_o inc ON out.point = inc.point AND out.date = inc.date;