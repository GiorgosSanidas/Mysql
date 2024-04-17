select * 
from customers
where city = any (select city from offices);