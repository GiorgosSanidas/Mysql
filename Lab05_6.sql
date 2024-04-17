select distinct lastName, firstName
from employees, customers
where employees.employeeNumber = customers.salesRepEmployeeNumber;

select distinct lastName, firstName
from employees
where employees.employeeNumber = any (select distinct customers.salesRepEmployeeNumber
									  from customers);

select distinct lastName, firstName
from employees
where employees.employeeNumber in (select distinct customers.salesRepEmployeeNumber
								   from customers);
