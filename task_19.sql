SELECT DISTINCT product.maker, AVG(laptop.screen)
FROM product
INNER JOIN laptop
ON product.model = laptop.model
GROUP BY product.maker;