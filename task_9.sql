SELECT DISTINCT maker FROM product 
JOIN PC ON product.model = PC.model
WHERE PC.speed >= 450;