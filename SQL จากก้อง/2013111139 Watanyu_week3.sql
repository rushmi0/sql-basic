--practice3
--1
select last_name,&emp_salary
from employees;
--2
select last_name,salary,commission_pct
from employees
where commission_pct is not null;
--3
select manager_id,employee_id,last_name,salary,department_id
from employees
where manager_id = &manager_id
order by &order_column;
--4
select last_name
from employees
where last_name like '%';
--5
select last_name,job_id,salary
from employees
WHERE salary NOT IN (2500,3500,7000);
--6
select last_name,salary,commission_pct
from employees
where commission_pct = 20;
--7
select last_name,job_id
from employees;