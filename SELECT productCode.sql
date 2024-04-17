SELECT productCode, @max := max(buyPrice),firstName,lastName
FROM products,employees
UNION
SELECT productCode,buyPrice,firstName,lastName
FROM products,employees
WHERE buyPrice = @max;

