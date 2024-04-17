SELECT  distinct sum(buyPrice), orderNumber
from products,orders
group by productCode,orderNumber;

