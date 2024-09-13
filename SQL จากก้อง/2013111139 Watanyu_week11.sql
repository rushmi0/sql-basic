--practice 11
--1
create view EMPLOYEES_VU
 ("EMPLOYEE_ID","EMPLOYEE","DEPARTMENT_ID")
as select employee_id,last_name,department_id
   from employees;
--2
create view DEPT50
 ("EMPNO","EMPLOYEE","DEPTNO")
as select employee_id,last_name,department_id
   from employees
   where department_id = 50;
--3
CREATE SEQUENCE dept_id_seq
                INCREMENT BY 10
                START WITH 200
                MAXVALUE 1000
                NOCACHE
                NOCYCLE;
--4
create table DEPT
(dept_id number(3) primary key,
 dept_name varchar2(20));
insert into DEPT
values (dept_id_seq.nextval,'Education');
insert into DEPT
values (dept_id_seq.nextval,'Administration');
--5
create view VE1
 ("JOB_ID","FREQUENCY")
as select e.job_id,count(*)
   from jobs j join employees e
   on j.job_id = e.job_id
   group by e.job_id
   order by 2;
--6
create view VE2
 ("LAST_NAME","HIRE_DATE")
as select last_name,hire_date
   from employees
   where to_char(hire_date) < '16%';