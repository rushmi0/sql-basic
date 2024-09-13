--2013111139 Watanyu Khiewcha-um sec1.2
--1
select first_name,last_name,job_id
from employees
where first_name like 'S%' or last_name like 'S%'
and job_id not like 'SA%';
--2
select first_name,hire_date
from employees;
--3
select job_title
from jobs
where job_title not like 'Admin%';
--4
select hire_date
from employees;
--5
select job_id,manager_id
from jobs join departments;
--6
select department_id,avg(salary)
from d.departments join s.employees;
--7
select employee_id
from employees;
--8
select department_name
from departments;
--9
select department_name
from departments;
--10
select job_title
from jobs;
--11
select first_name
from employees;