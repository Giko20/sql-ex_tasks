SELECT AVG(pc.speed) 
FROM pc 
JOIN product ON PC.model = product.model 
WHERE product.maker = 'A';