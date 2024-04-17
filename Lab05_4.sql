select customerNumber 
from customers 
where creditLimit = any (select creditLimit 
						 from customers
                         where city='London' or city='Paris');
