create database practical_2;
use practical_2;

drop table customers;
create table customers (
    customer_id int primary key,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    email varchar(40) unique not null,
    registration_date date not null
);

insert into customers 
(customer_id, first_name, last_name, email, registration_date) 
values
(1, "Brijesh", "Ranpariya", "brij@gmail.com", '2026-01-13'),
(2, "raj", "soni", "raj@gmail.com", '2026-02-01'),
(3, "Ramesh", "patel", "ramesh@gmail.com", '2026-03-23');

create table orders(
order_id int primary key,
customer_id int 
foreign key(customer_id) references customers(customer_id) on delete cascade, 
order_date date NOT NULL,
total_amount int not null
);

create table test (
    tst_id int primary key,
    OrderNumber int not null,
    PersonID int,
    order_id int ,
    foreign key(order_id) references orders(order_id)
);

insert into orders (order_id ,customer_id, order_date, total_amount) 
values
(1, 1, '2026-02-27',500),
(2, 2, '2026-02-3',800),
(3, 3, '2026-03-23',1200);

create table employees(
employee_id int primary key,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
department varchar(15) not null,
hire_date date not null,
salary int not null
);


insert into employees (employee_id,first_name,last_name,department,hire_date,salary)
values 
(1, "Mark","Johnson","Sales",'2020-01-15',50000),
(2, "Susan","Lee","HR",'2021-03-20',55000);

#1
select * from customers as c inner join orders as o on o.customer_id = c.customer_id;

insert into customers 
(customer_id, first_name, last_name, email, registration_date) 
values
(4, "Prem", "Rangani", "prem@gmail.com", '2025-05-30');

#2
select * from customers as c left join orders as o on o.customer_id = c.customer_id;

#3
select * from customers as c right join orders as o on o.customer_id = c.customer_id;

#4 
select * from customers
left join orders on customers.customer_id= orders.customer_id
union
select * from customers
right join orders on customers.customer_id= orders.customer_id;


#5
select * from customers inner join orders on customers.customer_id = orders.customer_id where total_amount > (select avg(total_amount) as avg_total_amount from orders) ;

#6 
select * from employees where salary > (select avg(salary) from employees);

#7
select year(order_date) as order_year, month(order_date) as order_month from orders;

#8 
select curdate()-order_date as difference from orders;

#9
select date_format(order_date,'%d-%m-%Y') as formatted_date from orders;

#10
select concat(first_name," ",last_name) as full_name from customers;

#11
select replace(last_name,'John','Jonathan') as correct_last_name from employees;

#12
select upper(first_name)as first_name,lower(last_name) as last_name from employees;

#13
select trim(email) as email from customers;

#14
select  sum(total_amount) over(rows between unbounded preceding and current row) from orders;

#15
select total_amount, rank() over(order by total_amount) as ranking_position from orders;

#16
SET SQL_SAFE_UPDATES = 0;
update orders set 
total_amount = total_amount - 
case 
	when total_amount > 1000 then 10
    when total_amount > 500 then 5
    else 5
end;

#17
select 
    employee_id,
    salary,
    case
        when salary >= 80000 then 'High'
        when salary >= 50000 then 'Medium'
        else 'Low'
    end as salary_grade
from employees;
