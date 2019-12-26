select
max (last_name)
from customers;

select 
avg (monthly_payment)
from packages;

select
min (last_name)
from customers;

select
count (pack_id)
from packages;

select
count (customer_id)
from customers;

select
count (distinct state)
from customers;

select
count (distinct speed)
from packages;

select
count (fax)
from customers;

select
count(*) - count (fax)
from customers;

select
max (monthly_discount),
min (monthly_discount),
avg (monthly_discount)
From customers;

select
state,
count(customer_id)
from customers
group by state;

select
speed,
avg(monthly_payment)
from packages
group by speed;

select
state,
count(distinct city)
from customers
group by state;

select
sector_id,
max(monthly_payment)
from packages
group by sector_id;

select
pack_id,
avg(monthly_payment)
from packages
group by pack_id;

select
pack_id,
avg(monthly_payment)
from packages
having pack_id in (13,22)
group by pack_id;

select
max (monthly_payment),
min (monthly_payment),
avg (monthly_payment)
From packages
group by speed;

select
pack_id,
count(customer_id)
from customers
group by pack_id;

select
pack_id,
count(customer_id)
from customers
where monthly_discount > 20
group by pack_id;


select
pack_id,
count(customer_id)
from customers
having count(customer_id) > 100
group by pack_id;

select
state, city, count(customer_id)
from customers
group by state, city;


select
city,
avg(monthly_discount)
from customers
group by city;

select
city,
avg(monthly_discount)
from customers
where monthly_discount > 20
group by city;

select
state,
min(monthly_discount)
from customers
group by state;

select
state,
min(monthly_discount)
from customers
having min(monthly_discount)>10
group by state;

select
speed,
count(pack_id)
from packages
having count(pack_id)> 8
group by speed;

