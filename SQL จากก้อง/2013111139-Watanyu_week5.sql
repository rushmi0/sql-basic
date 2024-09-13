--practice 5
--1
select last_name || ' earns ' || '$' ||to_char(salary,'999,999.99') || ' monthly but wants $' || to_char(salary*3,'999,999.99') "Dream Salaries"
from employees;
--2
select last_name,hire_date,
to_char(add_months(hire_date,6), 'fmDAY, the fmDdspth "of" fmMONTH, fmYYYY') "Review"
from employees;
--3
select job_id,
       DECODE(job_id, 'AD_PRES', 'A',
                      'ST_MAN', 'B',
                      'IT_PROG', 'C',
                      'SA_REP', 'D',
                      'ST_CLERK', 'E',
                      'O') AS Grade
from employees;
--4
select 'Dep:'||department_id||' have '
from employees;
--5
select department_id,department_name
from employees join departments
using (department_id);
--6
select last_name,job_id,department_id,department_name
from jobs join departments
using (job_id);