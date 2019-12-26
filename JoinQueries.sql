select
c.first_name, c.last_name, p.pack_id, p.speed 
from customers c inner join packages p
on c.pack_id = p.pack_id;

select
c.first_name, c.last_name, p.pack_id, p.speed 
from customers c inner join packages p
on c.pack_id = p.pack_id
where c.pack_id in (22,27)
order by c.last_name;

select
p.pack_id, p.speed, p.monthly_payment, s.sector_name 
from sectors s inner join packages p
on s.sector_id = p.sector_id;

select
c.first_name| |c.last_name as customer_name, p.pack_id, p.speed, p.monthly_payment, s.sector_name 
from customers c, sectors s, packages p
where s.sector_id = p.sector_id and c.pack_id=p.pack_id;


select
c.first_name| |c.last_name as customer_name, p.pack_id, p.speed, p.monthly_payment, s.sector_name 
from customers c, sectors s, packages p
where s.sector_id = p.sector_id and c.pack_id=p.pack_id 
and s.sector_name = 'Business';

select
c.last_name, c.first_name, c.join_date,
p.pack_id, p.speed, s.sector_name
from customers c, sectors s, packages p
where s.sector_id = p.sector_id and c.pack_id=p.pack_id
and s.sector_name = 'Private' and extract(year from c.join_date) = '2006';

select
p.pack_id, p.speed, p.monthly_payment,
g.grade_name
from packages p, pack_grades g;

select
c.first_name,c.last_name, 
p.speed, p.monthly_payment 
from customers c, packages p
where c.pack_id=p.pack_id;

select
c.first_name,c.last_name,
p.speed, p.monthly_payment 
from customers c left outer join packages p
on c.pack_id=p.pack_id;

select
c.first_name,c.last_name, 
p.speed, p.monthly_payment 
from customers c right outer join packages p
on c.pack_id=p.pack_id;

select
c.first_name,c.last_name, 
p.speed, p.monthly_payment 
from customers c full join packages p
on c.pack_id=p.pack_id;

select
c.last_name, c.first_name, c.pack_id
from customers c, customers cu 
where cu.first_name = 'Amado' and cu.last_name = 'Taylor'
and c.pack_id=cu.pack_id;

select
c.last_name, c.first_name, c.monthly_discount
from customers c, customers cu 
where cu.customer_id = 103 
and c.monthly_discount < cu.monthly_discount 
and c.pack_id=cu.pack_id;

select
p.pack_id, p.speed
from packages p, packages pu
where pu.pack_id = 10 
and p.speed = pu.speed; 
