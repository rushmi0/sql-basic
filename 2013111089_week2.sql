
 -- 2013111089 Watcharapol Phongwilai

--1
SELECT DISTINCT(job_id)
from employees;

--2
SELECT EMPLOYEE_ID',' FIRST_NAME','LAST_NAME','EMAIL','PHONE_NUMBER','HIRE_DATE
','JOB_ID','SALARY','COMMISSION_PCT','MANAGER_ID','DEPARTMENT_ID "THE_OUTPUT"
from employees;

--3
SELECT last_name,salary
from employees
where salary not BETWEEN 5000 AND 12000;

--4
SELECT last_name,job_id,hire_date
from employees
where last_name in ('Matos','Taylor');

--5
SELECT last_name,DEPARTMENT_ID
from employees
where DEPARTMENT_ID in (20 ,50)
order by last_name;

--6
SELECT last_name
from employees
where last_name LIKE '%a%' and last_name like'%e%' ;