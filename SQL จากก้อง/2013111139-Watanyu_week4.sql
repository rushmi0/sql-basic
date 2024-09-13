--practice 4
--1
select employee_id,hire_date,
to_char(add_months(hire_date,6))
"6th Month Review",
to_char(next_day(hire_date,6))
"Next Friday",
to_char(last_day(hire_date))
"Last day",
round(MONTHS_BETWEEN(SYSDATE,hire_date)) "Month work"
from employees
where MONTHS_BETWEEN(sysdate,hire_date) > 200;
--2
select last_name, length(last_name) "Length"
from employees
where last_name like 'A%';
--3
select employee_id,last_name,salary,salary+(salary*15.5/100) "New Salary"
from employees;
--4
select hire_date
from employees;
--5
select last_name
from employees;