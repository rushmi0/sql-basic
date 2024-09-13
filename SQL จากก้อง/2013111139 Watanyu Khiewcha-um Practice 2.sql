--practice 2
--1
select *
from employees
where job_id not in (job_id);
--2
select employee_id || ',' || first_name || ',' || last_name || ',' || email || ',' || phone_number || ',' ||job_id || ',' || salary || ',' || commission_pct || ',' || manager_id || ',' || department_id as THE_OUTPUT
from employees;
--3
select last_name,salary
from employees
where salary not in (5000,12000);
--4
select last_name,job_id,hire_date
from employees
where last_name in ('Matos','Taylor');
--5
select last_name,department_id
from employees
where department_id in (20,50)
order by 1 asc;
--6
select last_name
from employees
where last_name in ('a' , 'e');