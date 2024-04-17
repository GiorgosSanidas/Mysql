select sum(quantityInStock),customerNumber
from products,customers
where productCode in (select productCode from orderdetails)
group by customerNumber;

