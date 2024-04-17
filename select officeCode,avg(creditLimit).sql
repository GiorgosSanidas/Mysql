select officeCode,avg(creditLimit) 
from offices,customers
group by officeCode;
