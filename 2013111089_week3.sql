-- 1
select last_name,salary
from employees
where salary >= &employee_num;


-- 2
select last_name,salary,COMMISSION_PCT
from employees
where COMMISSION_PCT != 0
order by 2 desc;


-- 3
select  MANAGER_ID,employee_id, Last_name ,salary,DEPARTMENT_ID
from employees
where MANAGER_ID = &employee_id
order by &column;


-- 4
select last_name 
from employees
where last_name like '__a%';


-- 5
select last_name,job_id,salary
from employees
where (job_id like 'ST_CLERK'
or job_id like 'SA_REP')
and not salary in (2500,3500,7000);


-- 6
select last_name,salary,COMMISSION_PCT
from employees
where COMMISSION_PCT =0.2;


-- 7
select last_name,job_id
from employees
where DEPARTMENT_ID is null;