select distinct o.orderNumber, o.orderDate 
from orders o, orderdetails od      
where o.orderNumber = od.orderNumber and od.quantityOrdered between 50 and 150; 
