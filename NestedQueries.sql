select
first_name, last_name, city, state
from customers
where state in 
(select state
from customers 
where customer_id = 170);

select
pack_id, speed, sector_id
from packages
where sector_id in
(select sector_id
from packages
where pack_id = 10);

select
first_name, last_name, join_date
from customers
where join_date > 
(select join_date
from customers 
where customer_id = 540);

select
first_name, last_name, join_date
from customers
where 
extract (year from join_date) in 
(select 
extract (year from join_date)
from customers
where customer_id = 372)
and extract (month from join_date) in
(select 
extract (month from join_date)
from customers
where customer_id = 372);

select 
first_name,last_name,city, state, pack_id
from customers
where pack_id in
(select pack_id
from packages
where speed = '5Mbps');

select pack_id, speed,strt_date
from packages
where extract(year from strt_date) in
(select extract(year from strt_date)
from packages
where pack_id = 7);

select first_name, monthly_discount, pack_id, 
main_phone_num, secondary_phone_num
from customers
where pack_id in
(select pack_id
from packages
where sector_id in
(select sector_id
from sectors
where sector_name = 'Business'));

Select first_name, monthly_discount, pack_id
from customers
where pack_id in
(select pack_id
from packages
where monthly_payment > 
(select avg(monthly_payment)from packages));

select 
first_name, city, state, birth_date, monthly_discount
from customers
where birth_date in
(select birth_date
from customers
where customer_id = 179)
and
monthly_discount >
(select monthly_discount
from customers
where customer_id = 107);

select *
from packages 
where speed in
(select speed
from packages
where pack_id = 30)
and 
monthly_payment > 
(select monthly_payment
from packages
where pack_id = 7);

select pack_id, speed, monthly_payment
from packages
where pack_id in
(select pack_id
from packages
where monthly_payment > 
(select max(monthly_payment) 
from packages where speed = '5Mbps'));

select pack_id, speed, monthly_payment
from packages
where pack_id in
(select pack_id
from packages
where monthly_payment > 
(select min(monthly_payment) 
from packages where speed = '5Mbps'));

select pack_id, speed, monthly_payment
from packages
where pack_id in
(select pack_id
from packages
where monthly_payment < 
(select min(monthly_payment) 
from packages where speed = '5Mbps'));

select first_name, monthly_discount, pack_id
from customers
where customer_id in
(select customer_id
from customers
where monthly_discount < 
(select avg(monthly_discount) 
from customers))
and
pack_id in
(select pack_id
from customers where first_name = 'Kevin');



