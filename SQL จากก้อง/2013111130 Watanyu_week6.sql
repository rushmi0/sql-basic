--practice 6
--1
select d.department_name,l.state_province,l.city
from departments d join locations l
on d.location_id = l.location_id
where l.state_province not like '%h%';
--3
select l.location_id,substr(l.street_address,1,10),c.country_name
from locations l join countries c
on c.country_id = l.country_id
where l.location_id > 2700
and l.street_address BETWEEN 'A' and 'Z';
--4
select e.first_name,e.salary,d.department_name,d.city
from employees e join departments d
on d.city = d.city
where d.salary in (12000,13000);
--5
select c.country_id || ' ' || c.country_name as COUNTRY ,r.region_name
from countries c join regions r
on r.region_name = r.region_name
where r.region_name = 'Asia';
--6
select last_name,hire_date,job_id,job_title
--7
select e.employee_id,s.start_date,end_date,department_name
from employees e join job_history s;