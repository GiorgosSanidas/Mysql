select count(orderNumber),customers.customerNumber
from orders,customers
where (orders.customerNumber) in (customers.customerNumber)
group by customerNumber;



