select
first_name, salary
from tblemployees
where salary >
(select salary
from tblemployees
where employee_id=103);

select
department_id, department_name
from tbldepartments where location_id in
(select location_id from tbldepartments
where department_id=90);

select
last_name, hire_date
from tblemployees where hire_date >
(select hire_date from tblemployees
where employee_id = 101);

select
first_name, last_name, department_id
from tblemployees 
where department_id in
(select department_id from tbldepartments
where department_name = 'Sales');

select
department_id,department_name 
from tbldepartments
where location_id in
(select location_id from tbllocations
where city = 'Toronto');

select
first_name, salary, department_id
from tblemployees
where department_id in
(select department_id
from tblemployees
where manager_id=124 or employee_id= 124);

select
first_name, salary, department_id
from tblemployees
where employee_id in
(select employee_id
from tblemployees
where salary >
(select avg(salary) from tblemployees));

select
first_name, salary, department_id
from tblemployees
where employee_id in
(select employee_id
from tblemployees
where salary >
(select max(salary) from tblemployees 
where department_id = 50));

select
first_name, salary, department_id
from tblemployees
where employee_id in
(select employee_id
from tblemployees
where salary >
(select min(salary) from tblemployees 
where department_id = 60));

select
first_name, salary, department_id
from tblemployees
where employee_id in
(select employee_id
from tblemployees
where salary <
(select min(salary) from tblemployees 
where department_id = 90));

select
first_name, salary, department_id
from tblemployees
where department_id in
(select department_id from tbldepartments
where location_id in
(select location_id from tbllocations
where city = 'Seattle'));

select
first_name, salary, department_id
from tblemployees
where employee_id in
(select employee_id
from tblemployees
where salary <
(select avg(salary) from tblemployees 
where department_id in
(select department_id from tbldepartments
where first_name = 'Kevin')));