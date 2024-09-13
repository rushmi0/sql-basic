 --1
 select  employee_id, hire_date,
  add_months(hire_date, 6) "6th Month Review",
  next_day(hire_date, 'friday') "Next Friday",
  last_day(hire_date) "Last day",
  months_between(sysdate, hire_date) "Month work"

 from employees
 where months_between(sysdate, hire_date) > 200;

 --2
 Select Last_name,Length(last_name)as "Length"
 from employees
 where  last_name like 'J%' or 
        last_name like 'A%' or 
        last_name like 'M%'

 --3
 select employee_id,last_name,
 salary,round(salary*1.155)"New Salary"
 from employees;

 --4
 select  concat(substr(hire_date, 4, 3), ' ')
  || concat(substr(hire_date,1, 2), ',')
  || substr(hire_date,8) "Hire Date"
 from employees;

 --5 
 select  last_name, trunc((sysdate-hire_date)/7) tenure
 from    employees
 where   department_id = 90
 order by tenure desc;