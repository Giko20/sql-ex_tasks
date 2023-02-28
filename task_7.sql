SELECT PC.model, PC.price
FROM PC JOIN product ON product.model = PC.model WHERE product.maker = 'B'
UNION
SELECT laptop.model, laptop.price
FROM laptop JOIN product ON product.model = laptop.model
WHERE product.maker = 'B'
UNION
SELECT printer.model, printer.price
FROM printer JOIN product ON product.model = printer.model
WHERE product.maker = 'B';