select
e.first_name, e.last_name, e.department_id, d.department_name
from tblemployees e, tbldepartments d
where e.department_id=d.department_id;

select
e.first_name, e.last_name, e.department_id, d.department_name
from tblemployees e, tbldepartments d
where e.department_id=d.department_id and e.department_id in (50,90);

Select
d.department_name, l.city, l.state_province
from tbldepartments d, tbllocations l
where d.location_id=l.location_id;

Select
e.first_name||' '||e.last_name "Full_Name", d.department_name, 
l.city, l.state_province
from tbldepartments d, tbllocations l, tblemployees e
where e.department_id=d.department_id and
d.location_id=l.location_id;

Select
e.first_name||' '|| e.last_name "Full_Name", d.department_name, 
l.city, l.state_province
from tbldepartments d, tbllocations l, tblemployees e
where e.department_id=d.department_id and
d.location_id=l.location_id and e.last_name like '%a%';

select
e.first_name, e.last_name, e.department_id, d.department_name
from tblemployees e left outer join tbldepartments d
on e.department_id=d.department_id;

select
e.first_name, e.last_name, e.department_id, d.department_name
from tblemployees e right outer join tbldepartments d
on e.department_id=d.department_id;

select
em.last_name, e.last_name as "manager" 
from tblemployees e, tblemployees em
where em.manager_id=e.employee_id;

select
em.last_name, e.last_name as "manager" 
from tblemployees e right outer join tblemployees em
on em.manager_id=e.employee_id;

select
e.first_name, e.last_name, e.department_id, em.department_id
from tblemployees e, tblemployees em
where e.department_id=em.department_id and em.last_name = 'King';

select
e.last_name, e.salary
from tblemployees e, tblemployees em
where e.salary < em.salary and em.employee_id = 103;



