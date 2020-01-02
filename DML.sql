CREATE TABLE MY_EMPLOYEE(
ID NUMBER(4) NOT NULL,
LAST_NAME VARCHAR2(25),
FIRST_NAME VARCHAR2(25),
USERID VARCHAR2(8),
SALARY NUMBER (9,2));

DESC MY_EMPLOYEE;

INSERT INTO MY_EMPLOYEE
Values (1,'Patel', 'Ralph', 'rpatel', 895);

INSERT INTO MY_EMPLOYEE
(ID, LAST_NAME, FIRST_NAME, USERID, SALARY)
VALUES (&ID, '&LAST_NAME','&FIRST_NAME', &USERID, &SALARY);

SELECT * FROM MY_EMPLOYEE;

INSERT INTO MY_EMPLOYEE
Values (3,'Biri', 'Ben', 'bbiri', 1100);
INSERT INTO MY_EMPLOYEE
Values (4,'Newman', 'Chad', 'cnewman', 750);
--INSERT INTO MY_EMPLOYEE
--Values (5,'Ropeburn', 'Audrey', 'aropebur', 1550);


select * from my_employee;
commit;

update my_employee set last_name = 'Drexler' where id=3;

update my_employee set salary = 1000 where salary<900;

select* from my_employee;

Delete from my_employee where first_name='Betty';
select* from my_employee;

commit;
savepoint myemp;
delete from my_employee;
select * from my_employee;
rollback myemp;
select * from my_employee;

commit;

INSERT INTO MY_EMPLOYEE
(ID, LAST_NAME, FIRST_NAME, 
USERID, SALARY)
VALUES (&ID, '&&LAST_NAME','&&FIRST_NAME',LOWER(substr('&first_name',1,1)|| substr('&last_name',1,7)), &SALARY);

select * from my_employee;

