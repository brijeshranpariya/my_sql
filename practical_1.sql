CREATE DATABASE PRACTICAL_1;
USE PRACTICAL_1;

CREATE TABLE CUSTOMERS(
customer_id int primary key,
name varchar(25) not null,
email varchar(30) unique,
address varchar(60) not null
);

insert into customers (customer_id, name ,email, address) values 
(1,'brijesh','brijesh@gmail.com','om nagar-1, rajkot'),
(2,'raj`','raj@gmail.com','raj nagar-1, rajkot'),
(3,'pritesh`','pritesh@gmail.com','vrundavan nagar-1, rajkot'),
(4,'prem`','prem@gmail.com','andaman nagar-1, rajkot'),
(5,'darshil`','darshil@gmail.com','dongari nagar-1, mumbai');

select * from customers;

update customers set email = 'premanand@gmail.com' where  customer_id=4;

delete from  customers where customer_id = 4;

select * from customers where name  = "darshil";

create table orders(
order_id int primary key,
customer_id int references customers(customer_id) on delete cascade,
order_date timestamp default current_timestamp,
total_amount int not null
);

insert into orders (order_id,customer_id, order_date, total_amount) values 
(1, 1, '2026-03-26 10:30:00', 100),
(2, 2, '2026-03-22 09:30:00', 200),
(3, 3, '2026-03-21 10:40:00', 300),
(4, 4, '2026-03-26 10:00:00', 400),
(5, 3, CURRENT_TIMESTAMP, 105);

select * from orders where customer_id = 3;

update  orders set total_amount = 1999 where order_id = 4;

delete from orders where order_id = 1;

SELECT * 
FROM orders 
WHERE order_date = CURRENT_TIMESTAMP - INTERVAL 30 DAY;

select avg(total_amount),max(total_amount),min(total_amount) from orders;

create table products 
(
product_id int primary key,
product_name varchar(20) not null,
price int not null default 0,
stock int not null default 0
);

insert into products (product_id,product_name,price,stock) values
(1,'TV',12000,12),
(2,'Laptop',57000,7),
(3,'Phone',34000,3),
(4,'Headphones',4000,5),
(5,'Smartwatch',6000,4);

select * from products order by price desc;

update products set price = 3500 where product_id = 4;
SET SQL_SAFE_UPDATES = 0;

delete from products where stock = 0 ;

select * from products where price > 100 and price<2000;

select * from (select * from products order by price desc limit 1) as t1 union (select * from products order by price limit 1) ;

create table order_details(
order_detail_id int primary key,
order_id int references orders(order_id) on delete cascade,
product_id int references products(product_id) on delete cascade,
quantity int not null default 0,
subtotal int not null default 0
);

insert into order_details (order_detail_id, order_id, product_id, quantity, subtotal) values
(1, 1, 1, 1, 12000),
(2, 2, 2, 1, 57000),
(3, 3, 3, 2, 68000),
(4, 4, 4, 3, 12000),
(5, 5, 5, 1, 6000);

select * from order_details where order_id = 4;

select sum(subtotal) from order_details;

select product_id	 as frequency from order_details group by product_id order by frequency desc limit 3;

select count(*),product_id	 as frequency from order_details group by product_id;

