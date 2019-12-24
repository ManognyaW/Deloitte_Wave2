Select first_name, last_name, pack_id from Customers where last_name = 'King';

SELECT * FROM packages where speed = '5Mbps';

Select first_name, last_name, pack_id, monthly_discount from Customers Where monthly_discount < '30';

Select * from Customers where join_date < '01-Jan-07';

Select customer_id, first_name, state, city, pack_id from customers where pack_id = '21' or pack_id = '28' or pack_id = '14';

Select customer_id, first_name, state, city, pack_id from customers where pack_id != '27' or pack_id != '10' or pack_id != '3';

Select last_name, main_phone_num, monthly_discount, pack_id from customers where customer_id = '703' or customer_id = '314' or customer_id = '560';

Select first_name, monthly_discount from customers where first_name like '%e';

Select last_name, pack_id from customers where last_name like '_d%';

Select * from customers where last_name like '%l%' or last_name like '%j%' or last_name like '%h%';

Select first_name, join_date, monthly_discount, pack_id 
from customers 
Where last_name != '%a%' order by pack_id;

Select *
from customers
Where pack_id is Null;

Select first_name||' '||Last_name "full_name", monthly_discount
from customers where monthly_discount 
Not between 20 and 30 
order by "full_name" ;

Select first_name ||' '|| last_name "full_name", main_phone_num||' '||street "contacts", monthly_discount "DC"
from customers
where monthly_discount between 11 and 27;

Select *
from customers
where city='New York' and monthly_discount 
between 30 and 40
or
pack_id != (8,19,30) and join_date < '01-Jan-07';

