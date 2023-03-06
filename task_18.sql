SELECT DISTINCT product.maker, printer.price
FROM product
INNER JOIN printer ON product.model = printer.model
WHERE color='y' AND printer.price = (SELECT MIN(price) FROM printer WHERE color='y');
