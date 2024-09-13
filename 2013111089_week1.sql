
 -- 2013111089 Watcharapol Phongwilai
 
 -- 1
 select *
 from employees;
 
 -- 2
 select *
 from countries;
 
 -- 3
 select employee_id, first_name, last_name, salary
 frome employees;
 
 -- 4
 select 'Emp Id: ' || employee_id || ' get salaly ' || salary ' per month x 12 = ' || salary*12 "EMPLOYEE_SALARY"
 frome employees;
 
 -- 5
 select job_id || ' job''s title is ' || job "JOBS_TITLE"
 frome jobs;
 
 -- 6
 select distinct department_id
 from employees;
