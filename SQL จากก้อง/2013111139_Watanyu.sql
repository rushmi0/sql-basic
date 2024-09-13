--practice1
--1
SELECT *
FROM employees;
--2
SELECT *
FROM countries;
--3
SELECT employee_id,first_name|| ' ' ||last_name AS "EMPLOYEE_NAME",salary
FROM employees;
--4
SELECT 'Emp Id: '||employee_id||' get salary '||salary||' per month x 12 = '||salary * 12 AS "EMPLOYEE_SALARY" 
FROM employees;
--5
SELECT job_id||' job''s title is '|| job_title AS "JOBS_TITLE"
FROM jobs;
--6
SELECT distinct department_id
FROM employees
order by 1;