select distinct c.customerName
from customers c, orders o, orderdetails od, products p      
where c.customerNumber = o.customerNumber and 
      o.orderNumber = od.orderNumber and 
      od.productCode = p.productCode and 
      p.quantityInStock < 50; 
