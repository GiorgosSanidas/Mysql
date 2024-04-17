select customerName,creditLimit
from customers
where city = any (select city from offices where city='Boston')
order by creditLimit desc ;

