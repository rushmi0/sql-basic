--practice 10
--1
--Customer
create table customer
(cust_id varchar2(5) primary key,
 name varchar2(25) not null,
 surname varchar2(25),
 address varchar2(30),
 province varchar2(20)
);
insert into customer
values ( 'C1001','Sireporn' , 'Chojai' , '111/3 Kannayao' , 'Bangkok' );
insert into customer
values ( 'C1002','Chanon' , 'Ratcharean' , '77 M 8' , 'Phitsanulok' );
insert into customer
values ( 'C1003','Rattaya' , 'Tipjan' , '677 Ratchapisek' , 'Bangkok' );
insert into customer
values ( 'C1004','Sukchart' , 'Onna' , '90/344 M 1' , 'Changmai' );
insert into customer
values ( 'C1005','Kittichay' , 'Moona' , '566' , 'Changrai' );
--Product
create table product
(pro_id varchar2(4) primary key,
 name varchar2(15) not null,
 stock number(6) not null,
 unitPrice number(8,2) not null
);
insert into product
values ( 'P001','Paper A4' , 2200,80);
insert into product
values ( 'P002','Pencil' , 1000,5);
insert into product
values ( 'P003','Chair' , 500,150);
insert into product
values ( 'P004','Drawing Table' , 450,240);
insert into product
values ( 'P005','Ruler' , 1500,9);
--Orders
create table orders
(cust_id varchar2(5) references customer(cust_id),
 pro_id varchar2(4) references product(pro_id),
 primary key (cust_id,pro_id),
 date_order date,
 num_order number(6) not null
);
--2
INSERT INTO orders
            (cust_id,pro_id,date_order,num_order)
VALUES ('&customer_id','&product_id','&date_order',&number_order);
--3
update product
set stock = stock+100;
--4
create table product_new 
as select pro_id,name,stock,unitprice*1.10 as new_price
from product
where pro_id in ('P002','P003','P004');
--5
select cust_id,pro_id,date_order,num_order
from product
where pro_id = 'P004';
--6
select cust_id,o.name,date_order,num_order
from orders o join product p
on o.name = p.name
where o.cust_id in ('C1001','C1004','C1005');