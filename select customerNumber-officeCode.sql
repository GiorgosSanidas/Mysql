select  count(customerNumber),officeCode
from customers,offices
where customers.city = any ( select city from offices)
group by officeCode;


