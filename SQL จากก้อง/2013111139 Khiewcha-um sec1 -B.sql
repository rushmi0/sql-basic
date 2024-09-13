--2013111139 Khiewcha-um sec1. -B
--1
create table customer_info
(customer_id number(6) primary key,
 last_name varchar(20),
 first_name varchar(15),
 address varchar(30),
 city varchar(20)
);
create table order_info
(order_id number(5) primary key,
 customer_id number(6),
 book_id number(8),
 order_date date
);
create table books
(book_id number(8),
 title varchar(30),
 author varchar(20),
 price number(6,2) check(price > 0)
);
--2
create sequence cus_id_seq
                increment by 8
                start with 600501
                maxvalue 999999
                nocache
                nocycle;
create sequence ord_id_seq
                increment by 2
                start with 30021
                maxvalue 99999
                nocache
                nocycle;
create sequence book_id_seq
                increment by 10
                start with 90012071
                maxvalue 99999999
                nocache
                nocycle;
--3
begin
 insert into customer_info
 values(cus_id_seq.nextval,'Colmenares','Karen','2017 Shinjuku?ku','Tokyo');
 insert into customer_info
 values(cus_id_seq.nextval,'Russell','John','824 Ladprao Rd',' ');
 insert into customer_info
 values(cus_id_seq.nextval,'Partners','Fox','147 Spadina Ave','Sydney');
 insert into customer_info
 values(cus_id_seq.nextval,'Gates','Adam','6092 Boxwood St','Singapore');
 insert into customer_info
 values(cus_id_seq.nextval,'Hutton','Neena','304 Arthur St','Toronto');
 end;
 /
begin
 insert into books
 values(book_id_seq.nextval,'Art of Public Speaking','St. Lucas',1373);
 insert into books
 values(book_id_seq.nextval,'Database concept','Au. David',980);
 insert into books
 values(book_id_seq.nextval,'Machine Learning','Litchfield',540.50);
 insert into books
 values(book_id_seq.nextval,'Organic Chemistry','R. Klein',720);
 insert into books
 values(book_id_seq.nextval,'Testing Business Ideas','J. Bland',890.50);
 end;
 /
begin
 insert into order_info
 values(ord_id_seq.nextval,600509,90012081,'15?Jul?20');
 insert into order_info
 values(ord_id_seq.nextval,600533,90012101,'22?Sep?19');
 insert into order_info
 values(ord_id_seq.nextval,600517,90012091,'2?May?21');
 insert into order_info
 values(ord_id_seq.nextval,600501,90012071,'');
 insert into order_info
 values(ord_id_seq.nextval,600525,90012111,'17?Jun?20');
 insert into order_info
 values(ord_id_seq.nextval,600501,90012081,'29?Aug?19');
 end;
 /
 select * from customer_info;
 select * from books;
 select * from order_info;
--4
select first_name || ' ' || last_name as cus_name
from customer_info;
--5
--5.1
alter table customer_info
modify (address varchar(50));
desc customer_info;
--5.2
alter table order_info
add(quantity number(2) check(quantity < 99));
--6
create view book_cust_order
as select title || ' _bought by_ ' || first_name as "Books bought by cust",order_date as "Order date",price,city
from books b join order_info o
on b.order_date = o.order_date
where b.order_date = '%Thursday';
--7
--7.1
declare
 insert_or_update_or_delete varchar(30) := ('&insert_or_update_or_delete');
 begin
  case insert_or_update_or_delete
   when 'insert' then
    insert into order_into
    values(&customer_id,&book_id,&quantity);
    declare
    cus_id customer_info.customer_id%type;
    boo_id books.book_id%type;
    qty order_info.quantity%type;
    ord_date order_info.order_date%type;
    DMBS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' row Instered.');
    DMBS_OUTPUT.PUT_LINE('Order id = ' ||ord_id_seq.nextval);
    DMBS_OUTPUT.PUT_LINE('customer ID = ' ||cus_id);
    DMBS_OUTPUT.PUT_LINE('Book ID = ' ||boo_id);
    DMBS_OUTPUT.PUT_LINE('order date = ' ||ord_date || ' , ' || 'qty = ' || qty);
   when 'update' then
    update books
    set price = &price
    where book_id = 90012081;
  end;
  /
--7.2
declare
 insert_or_update_or_delete varchar(30) := ('&insert_or_update_or_delete');
 begin
  case insert_or_update_or_delete
   when 'insert' then
   declare
   cus_id customer_info.customer_id%type;
   boo_id books.book_id%type;
   qty order_info.quantity%type;
    insert into order_into
    values(&customer_id,&book_id,&quantity);
    DMBS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' row Instered.');
    DMBS_OUTPUT.PUT_LINE('Order id = ' ||ord_id_seq.nextval);
    DMBS_OUTPUT.PUT_LINE('customer ID = ' ||cus_id);
    DMBS_OUTPUT.PUT_LINE('Book ID = ' ||boo_id);
    DMBS_OUTPUT.PUT_LINE('order date = ' ||ord_date || ' , ' || 'qty = ' || qty);
   when 'update' then
    update books
    set price = &price
    where book_id = 90012081;
  end;
  /
--7.3
declare
 insert_or_update_or_delete varchar(30) := ('&insert_or_update_or_delete');
 begin
  case insert_or_update_or_delete
   when 'insert' then
   declare
   cus_id customer_info.customer_id%type;
   boo_id books.book_id%type;
   qty order_info.quantity%type;
    insert into order_into
    values(&customer_id,&book_id,&quantity);
    DMBS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' row Instered.');
    DMBS_OUTPUT.PUT_LINE('Order id = ' ||ord_id_seq.nextval);
    DMBS_OUTPUT.PUT_LINE('customer ID = ' ||cus_id);
    DMBS_OUTPUT.PUT_LINE('Book ID = ' ||boo_id);
    DMBS_OUTPUT.PUT_LINE('order date = ' ||ord_date || ' , ' || 'qty = ' || qty);
   when 'update' then
    update books
    set price = &price
    where book_id = 90012081;
  end;
  /