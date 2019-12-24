select
customer_id, lower (first_name), upper (last_name)
from customers
where customer_id between 80 and 150;

select
last_name, first_name, 
Concat(concat (substr(first_name,1,1), substr(Last_name,1,3)), '@mymail.com') as "Email_Address"
from customers;

select
last_name, first_name, 
Concat(concat (substr(first_name,1,1), substr(Last_name,-3,3)), '@mymail.com') as "Email_Address"
from customers;

select
last_name, Length(last_name) 
from customers
where Length(last_name)>9;

select
first_name, last_name, main_phone_num, 
Replace( main_phone_num, 515, '$$$') "New_phone_Num"
from customers;

select
first_name, last_name, main_phone_num, 
Replace(substr(main_phone_num,1,3), 515, '$$$') || substr(main_phone_num,4) "New_phone_Num"
From customers;

select
first_name, monthly_discount, 
monthly_discount*1.197, 
round (monthly_discount*1.197), 
Floor (monthly_discount*1.197),
Ceil (monthly_discount*1.197)
from customers;


select
first_name,
join_date, join_date-10, add_months(join_date, 1),
trunc (sysdate - join_date) as date_diff_in_days
from customers;

select
first_name, birth_date, 
extract(year from sysdate) - extract(year from birth_date) "age"
from customers
where extract(year from sysdate) - extract(year from birth_date)>50 ;

select *
from customers
where extract(day from sysdate)=extract(day from birth_date) 
and extract(month from sysdate)=extract(month from birth_date);

select
first_name,
join_date,
trunc (sysdate - join_date) as date_diff_in_days
from customers
where extract(year from sysdate)-extract(year from join_date)=;


select
first_name||join_date, last_name||monthly_discount
from customers;

select
last_name, upper (state)||customer_id,
join_date||birth_date
from customers
where substr(last_name,1,1)='D' or substr(last_name,1,1)= 'K';

select 
first_name, 
last_name, 
birth_date, 
NVL(main_phone_num, 'N/A'),
NVL(secondary_phone_num, 'N/A')
from customers 
where pack_id = 27;

select 
first_name, 
last_name, 
birth_date, 
NVL(main_phone_num, 'N/A'),
NVL(secondary_phone_num, 'N/A')
from customers 
where extract(year from birth_date) = 1972;

select
first_name, last_name, monthly_discount,
case
when monthly_discount between 0 and 10 then  'A'
when monthly_discount between 11 and 20 then 'B'
when monthly_discount between 21 and 30 then 'C'
Else 'D'
End discount_grade_level
From customers;