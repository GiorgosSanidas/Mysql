SELECT  distinct sum(buyPrice), customerNumber
from products,customers
group by productCode,customerNumber;

