--practice 9
--1
create table dept2
(id number(7),
 name varchar2(25)
);
desc dept2;
--2
insert into dept2
select department_id, department_name
from departments;
select * from dept2;
--3
create table emp2
(id number(7),
 last_name varchar2(25),
 first_name varchar2(25),
 dept_id number(7));
desc emp2;
--4
desc emp2;
alter table emp2
modify(last_name varchar2(40));
--5
ALTER TABLE emp2
ADD CONSTRAINT my_emp_id_pk
PRIMARY KEY(id);
--6
ALTER TABLE dept2
ADD CONSTRAINT my_emp_id_pk
PRIMARY KEY(id);
--7
ALTER TABLE emp2
ADD CONSTRAINT emp_dept_id_fk
FOREIGN KEY(id) REFERENCES depts(dept_id);
--8
desc emp2;
alter table emp2
modify(last_name varchar2(0));