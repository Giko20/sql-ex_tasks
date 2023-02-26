SELECT PC.model, PC.speed, PC.hd 
FROM PC 
WHERE PC.price < 600 AND PC.cd IN ('12x', '24x');