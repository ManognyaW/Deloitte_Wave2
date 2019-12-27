select
first_name, department_id
from tblemployees
where last_name = 'De Haan';

select *
from tbldepartments
where department_name= 'Sales';

Select 
first_name, last_name, department_id, salary
from tblemployees
where salary > 9700;

select *
from tblemployees
where hire_date < '01-JAN-92';

Select
employee_id, first_name, job_id, department_id
from tblemployees
where department_id in (20,60,80);

Select
employee_id, first_name, job_id, department_id
from tblemployees
where department_id != 20 or 
department_id !=60 or 
department_id !=80;

select 
last_name, phone_number, salary, manager_id
from tblemployees where
manager_id in (100,102,103);

select
first_name, salary from tblemployees
where first_name like '%e';

select
last_name, department_id from tblemployees
where last_name like '_i%';

select * 
from tblemployees
where last_name like '%l%' or last_name like '%j%' 
or last_name like '%h%'
order by salary desc;

