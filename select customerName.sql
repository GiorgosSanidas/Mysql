select customerName, @min:=min(buyPrice)
from products,customers
union
select customerName,buyPrice
from products,customers
where buyPrice=@min;

