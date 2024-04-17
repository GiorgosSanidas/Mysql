select orders.orderNumber, orders.status
from orders
where exists (select *
              from orderdetails
              where orders.orderNumber=orderdetails.orderNumber and productCode='S12_1108');
              
select orders.orderNumber, orders.status
from orders, orderdetails
where orders.orderNumber=orderdetails.orderNumber and productCode='S12_1108';