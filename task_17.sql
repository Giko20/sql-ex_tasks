SELECT DISTINCT p.type, l.model, l.speed
FROM laptop l
INNER JOIN product p ON l.model = p.model
WHERE l.speed < all(SELECT speed FROM pc);