select distinct city
from customers
where exists (select * 
			  from orders, orderdetails
              where orders.orderNumber=orderdetails.orderNumber and orderdetails.productCode='S10_1678');