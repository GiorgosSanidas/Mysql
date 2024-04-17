select customerName
from customers
where creditLimit > (select avg(creditLimit) from customers)
order by creditLimit;

