--practice 6
--1
select last_name,salary
from employees
where salary in (select salary
                from employees);
--2
select department_id,last_name,job_id
from employees
where department_id in (select department_id
                        from employees);
--3
select last_name
from employees
where salary > any (select salary
                 from employees
                 where department_id = 60);
--4
select employee_id,last_name,salary
from employees
where salary >= all (select avg(salary)
                     from employees)
and last_name like '%u%';
--5
select last_name,hire_date,&&column_name
from employees
where last_name in (select &&column_name
                    from employees);