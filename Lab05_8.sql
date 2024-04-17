select *
from customers
where salesRepEmployeeNumber not in (select employees.employeeNumber
									 from employees, offices
                                     where employees.officeCode=offices.officeCode and offices.city='London');