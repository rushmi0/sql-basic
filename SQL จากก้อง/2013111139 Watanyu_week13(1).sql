--practice 13
--1
 declare
  cou_id countries.country_id%type;
  cou_name countries.country_name%type;
  begin
   select country_id,country_name
   into cou_id,cou_name
   from countries
   where country_id = 'JP';
   DBMS_OUTPUT.PUT_LINE ('COUNTRY ID = '||cou_id);
   DBMS_OUTPUT.PUT_LINE ('COUNTRY NAME = '||cou_name);
   end;
   /
--2
create table customer
(customer_id varchar2(5) primary key,
 customer_name varchar2(30) not null,
 income number(6) not null
);
--3
begin
  insert into customer
  values('C1001','Suttipong Ratijan',25000);
  insert into customer
  values('C1002','Nisachon Chidchon',50000);
  insert into customer
  values('C1003','Pawarit Puchay',75000);
 end;
/
--4
 declare
  cus_id customer.customer_id%type;
  cus_name customer.customer_name%type;
  inc customer.income%type;
  begin
   select customer_id,customer_name,income
   into cus_id,cus_name,inc
   from customer
   where customer_id = 'C1001';
   DBMS_OUTPUT.PUT_LINE ('CUSTOMER ID = '||cus_id);
   DBMS_OUTPUT.PUT_LINE ('NAME   = '||cus_name);
   DBMS_OUTPUT.PUT_LINE ('INCOME = '||inc);
   end;
   / 
--5
begin
 delete from customer
 where customer_id = 'C1003';
 DBMS_OUTPUT.PUT_LINE ('Delete already...');
 end;
/