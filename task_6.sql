SELECT DISTINCT product.maker, laptop.speed
FROM Product 
JOIN laptop ON product.model = laptop.model
WHERE type = 'laptop' AND laptop.hd >= 10;