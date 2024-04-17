select *
from customers
where creditLimit <= all (select creditLimit 
                          from customers
                          where city='London');