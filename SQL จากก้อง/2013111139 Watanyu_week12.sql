--practice 12
--1
declare
 jo_id     jobs.job_id%type;
 jo_title  jobs.job_title%type;
 mi_salary jobs.min_salary%type;
 ma_salary jobs.max_salary%type;
 begin
  select job_id,job_title,min_salary,max_salary
  into jo_id,jo_title,mi_salary,ma_salary
  from jobs
  where job_id = 'IT_PROG';
  DBMS_OUTPUT.PUT_LINE ('JOB ID     = '|| jo_id);
  DBMS_OUTPUT.PUT_LINE ('JOB TITLE  = '|| jo_title);
  DBMS_OUTPUT.PUT_LINE ('MIN SALARY = '|| mi_salary);
  DBMS_OUTPUT.PUT_LINE ('MAX SALARY = '|| ma_salary);
  end;
  /
--2
declare
 cust_name varchar2(40) := '&cust_name';
 price number(3) := 399;
 service_charge number(4,2) := price*0.03;
 vat number(4,2) := price*0.07;
 net_price number(9,2) := price+service_charge+vat; 
 begin
 DBMS_OUTPUT.PUT_LINE('Customer : '||cust_name);
 DBMS_OUTPUT.PUT_LINE('Price of food   : '||price);
 DBMS_OUTPUT.PUT_LINE('Service Charage : '||service_charge);
 DBMS_OUTPUT.PUT_LINE('Vat (7%)        : '||vat);
 DBMS_OUTPUT.PUT_LINE('Net Price       : '||to_char(net_price,'9,999.99'));
 end;
 /