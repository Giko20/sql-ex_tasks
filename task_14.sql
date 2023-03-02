SELECT Classes.class, Ships.name, Classes.country 
FROM Classes 
JOIN Ships ON Classes.class = Ships.class
WHERE numGuns >= 10;