select *
from customers
where creditLimit between 50000 and 100000 and city in ('NYC', 'Madrid', 'London', 'Paris');