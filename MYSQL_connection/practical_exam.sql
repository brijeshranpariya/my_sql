create database practical_exam;
use practical_exam;


create table categories(
category_id int primary key,
category_name varchar(30)
);
insert into categories(category_id,category_name) values 
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home & Kitchen'),
(4, 'Books'),
(5, 'Sports & Fitness'),
(6, 'Beauty & Personal Care'),
(7, 'Automotive'),
(8, 'Grocery'),
(9, 'Programming'),
(10, 'Data Science'),
(11, 'Web Development'),
(12, 'Artificial Intelligence'),
(13, 'Cybersecurity'),
(14, 'Cloud Computing'),
(15, 'Database Management');

create table products(
product_id int primary key,
name varchar(30) not null,
category_id int,
foreign key(category_id) references categories(category_id),
price int not null default 0,
stock_quantity int not null default 0,
added_date date not null
);
insert into products(product_id, name, category_id, price, stock_quantity, added_date) values 
(1, 'Laptop', 1, 55000, 10, '2026-04-01'),
(2, 'Smartphone', 1, 20000, 25, '2026-04-02'),
(3, 'Headphones', 1, 1500, 40, '2026-04-03'),
(4, 'T-Shirt', 2, 500, 50, '2026-04-01'),
(5, 'Jeans', 2, 1200, 30, '2026-04-02'),
(6, 'Jacket', 2, 2500, 20, '2026-04-03'),
(7, 'Mixer Grinder', 3, 3000, 15, '2026-04-04'),
(8, 'Pressure Cooker', 3, 2000, 18, '2026-04-05'),
(9, 'Dining Table', 3, 15000, 5, '2026-04-06'),
(10, 'Java Book', 4, 800, 20, '2026-04-02'),
(11, 'Python Book', 4, 900, 22, '2026-04-03'),
(12, 'SQL Guide', 4, 700, 25, '2026-04-04'),
(13, 'Dumbbells', 5, 2500, 12, '2026-04-05'),
(14, 'Yoga Mat', 5, 800, 35, '2026-04-06'),
(15, 'Treadmill', 5, 30000, 3, '2026-04-07'),
(16, 'Face Cream', 6, 350, 30, '2026-04-01'),
(17, 'Shampoo', 6, 250, 45, '2026-04-02'),
(18, 'Perfume', 6, 1500, 18, '2026-04-03'),
(19, 'Car Vacuum', 7, 1500, 8, '2026-04-04'),
(20, 'Bike Helmet', 7, 1200, 16, '2026-04-05');

create table customers(
customer_id int primary key,
name varchar(40) not null,
email varchar(50) unique not null,
phone_number varchar(20) unique not null,
address varchar(70) not null,
registration_date date not null
);

insert into customers (customer_id, name, email, phone_number, address, registration_date) values
(1, 'Amit Sharma', 'amit1@gmail.com', '9876543210', 'Rajkot, Gujarat', '2026-03-01'),
(2, 'Rahul Patel', 'rahul2@gmail.com', '9876543211', 'Ahmedabad, Gujarat', '2026-03-02'),
(3, 'Sneha Mehta', 'sneha3@gmail.com', '9876543212', 'Surat, Gujarat', '2026-03-03'),
(4, 'Priya Shah', 'priya4@gmail.com', '9876543213', 'Vadodara, Gujarat', '2026-03-04'),
(5, 'Karan Verma', 'karan5@gmail.com', '9876543214', 'Rajkot, Gujarat', '2026-03-05'),
(6, 'Neha Joshi', 'neha6@gmail.com', '9876543215', 'Mumbai, Maharashtra', '2026-03-06'),
(7, 'Rohit Singh', 'rohit7@gmail.com', '9876543216', 'Delhi', '2026-03-07'),
(8, 'Anjali Desai', 'anjali8@gmail.com', '9876543217', 'Ahmedabad, Gujarat', '2026-03-08'),
(9, 'Vikram Rao', 'vikram9@gmail.com', '9876543218', 'Bangalore, Karnataka', '2026-03-09'),
(10, 'Pooja Nair', 'pooja10@gmail.com', '9876543219', 'Kochi, Kerala', '2026-03-10'),
(11, 'Arjun Kapoor', 'arjun11@gmail.com', '9876543220', 'Delhi', '2026-03-11'),
(12, 'Meera Iyer', 'meera12@gmail.com', '9876543221', 'Chennai, Tamil Nadu', '2026-03-12'),
(13, 'Suresh Kumar', 'suresh13@gmail.com', '9876543222', 'Hyderabad, Telangana', '2026-03-13'),
(14, 'Kavita Singh', 'kavita14@gmail.com', '9876543223', 'Lucknow, Uttar Pradesh', '2026-03-14'),
(15, 'Manish Gupta', 'manish15@gmail.com', '9876543224', 'Jaipur, Rajasthan', '2026-03-15'),
(16, 'Ritika Jain', 'ritika16@gmail.com', '9876543225', 'Indore, Madhya Pradesh', '2026-03-16'),
(17, 'Deepak Yadav', 'deepak17@gmail.com', '9876543226', 'Patna, Bihar', '2026-03-17'),
(18, 'Nisha Arora', 'nisha18@gmail.com', '9876543227', 'Chandigarh', '2026-03-18'),
(19, 'Aditya Roy', 'aditya19@gmail.com', '9876543228', 'Kolkata, West Bengal', '2026-03-19'),
(20, 'Simran Kaur', 'simran20@gmail.com', '9876543229', 'Amritsar, Punjab', '2026-03-20'),
(21, 'Yash Thakkar', 'yash21@gmail.com', '9876543230', 'Rajkot, Gujarat', '2026-03-21'),
(22, 'Harsh Vyas', 'harsh22@gmail.com', '9876543231', 'Bhavnagar, Gujarat', '2026-03-22'),
(23, 'Tina Modi', 'tina23@gmail.com', '9876543232', 'Surat, Gujarat', '2026-03-23'),
(24, 'Raj Malhotra', 'raj24@gmail.com', '9876543233', 'Delhi', '2026-03-24'),
(25, 'Sonal Agarwal', 'sonal25@gmail.com', '9876543234', 'Pune, Maharashtra', '2026-03-25'),
(26, 'Nitin Bansal', 'nitin26@gmail.com', '9876543235', 'Noida, Uttar Pradesh', '2026-03-26'),
(27, 'Ayesha Khan', 'ayesha27@gmail.com', '9876543236', 'Bhopal, Madhya Pradesh', '2026-03-27'),
(28, 'Kunal Shah', 'kunal28@gmail.com', '9876543237', 'Ahmedabad, Gujarat', '2026-03-28'),
(29, 'Divya Reddy', 'divya29@gmail.com', '9876543238', 'Hyderabad, Telangana', '2026-03-29'),
(30, 'Ramesh Patel', 'ramesh30@gmail.com', '9876543239', 'Rajkot, Gujarat', '2026-03-30');


create table orders(
order_id int primary key,
customer_id int,
foreign key(customer_id) references customers(customer_id),
order_date date not null,
total_amount int not null default 0,
status enum('Pending','Shipped','Delivered','Cancelled') not null default 'Pending'
);

insert into orders (order_id, customer_id, order_date, total_amount, status) values
(1, 1, '2026-04-01', 1200, 'Delivered'),
(2, 2, '2026-04-01', 2500, 'Shipped'),
(3, 3, '2026-04-02', 800, 'Pending'),
(4, 4, '2026-04-02', 1500, 'Delivered'),
(5, 5, '2026-04-03', 3000, 'Cancelled'),
(6, 6, '2026-04-03', 2200, 'Delivered'),
(7, 7, '2026-04-04', 1800, 'Shipped'),
(8, 8, '2026-04-04', 2700, 'Delivered'),
(9, 9, '2026-04-05', 3500, 'Pending'),
(10, 10, '2026-04-05', 4000, 'Delivered'),
(11, 11, '2026-04-06', 900, 'Delivered'),
(12, 12, '2026-04-06', 1600, 'Shipped'),
(13, 13, '2026-04-07', 2100, 'Pending'),
(14, 14, '2026-04-07', 3200, 'Delivered'),
(15, 15, '2026-04-08', 2800, 'Cancelled'),
(16, 16, '2026-04-08', 1400, 'Delivered'),
(17, 17, '2026-04-09', 1900, 'Shipped'),
(18, 18, '2026-04-09', 2600, 'Delivered'),
(19, 19, '2026-04-10', 3100, 'Pending'),
(20, 20, '2026-04-10', 4200, 'Delivered'),
(21, 21, '2026-04-11', 1700, 'Delivered'),
(22, 22, '2026-04-11', 2300, 'Shipped'),
(23, 23, '2026-04-12', 2900, 'Pending'),
(24, 24, '2026-04-12', 3600, 'Delivered'),
(25, 25, '2026-04-13', 4100, 'Cancelled'),
(26, 26, '2026-04-13', 1500, 'Delivered'),
(27, 27, '2026-04-14', 2000, 'Shipped'),
(28, 28, '2026-04-14', 3300, 'Delivered'),
(29, 29, '2026-04-15', 2700, 'Pending'),
(30, 30, '2026-04-15', 3900, 'Delivered'),
(31, 1, '2026-04-16', 2200, 'Delivered'),
(32, 2, '2026-04-16', 3100, 'Shipped'),
(33, 3, '2026-04-17', 1800, 'Pending'),
(34, 4, '2026-04-17', 2600, 'Delivered'),
(35, 5, '2026-04-18', 3400, 'Cancelled'),
(36, 6, '2026-04-18', 2100, 'Delivered'),
(37, 7, '2026-04-19', 2800, 'Shipped'),
(38, 8, '2026-04-19', 3700, 'Delivered'),
(39, 9, '2026-04-20', 4500, 'Pending'),
(40, 10, '2026-04-20', 5000, 'Delivered');

create table order_items(
order_item_id int primary key,
order_id int,
foreign key(order_id) references orders(order_id),
product_id int,
foreign key(product_id) references products(product_id),
quantity int not null default 0,
subtotal int not null default 0
);

insert into order_items (order_item_id,order_id,product_id,quantity,subtotal) values
(1,1,1,1,1200),
(2,2,2,1,2500),
(3,3,3,1,800),
(4,4,4,1,1500),
(5,5,5,1,3000),
(6,6,6,1,2200),
(7,7,7,1,1800),
(8,8,8,1,2700),
(9,9,9,1,3500),
(10,10,10,1,4000),
(11,11,11,1,900),
(12,12,12,1,1600),
(13,13,13,1,2100),
(14,14,14,1,3200),
(15,15,15,1,2800),
(16,16,16,1,1400),
(17,17,17,1,1900),
(18,18,18,1,2600),
(19,19,19,1,3100),
(20,20,20,1,4200),
(21,21,1,1,1700),
(22,22,2,1,2300),
(23,23,3,1,2900),
(24,24,4,1,3600),
(25,25,5,1,4100),
(26,26,6,1,1500),
(27,27,7,1,2000),
(28,28,8,1,3300),
(29,29,9,1,2700),
(30,30,10,1,3900),
(31,31,11,1,2200),
(32,32,12,1,3100),
(33,33,13,1,1800),
(34,34,14,1,2600),
(35,35,15,1,3400),
(36,36,16,1,2100),
(37,37,17,1,2800),
(38,38,18,1,3700),
(39,39,19,1,4500),
(40,40,20,1,5000);

create table payments(
payment_id int primary key,
order_id int,
foreign key(order_id) references orders(order_id),
payment_date date not null,
payment_method enum('Credit Card','PayPal','UPI') not null,
payment_status enum('Paid','Pending','Failed') not null
);

create table shipping(
shipping_id int primary key,
order_id int,
foreign key(order_id) references orders(order_id),
shipping_date date not null,
delivery_date date not null,
shipping_status enum('Dispatched','In Transit','Delivered') not null
);

insert into shipping (shipping_id,order_id,shipping_date,delivery_date,shipping_status) values
(1,1,'2026-03-02','2026-03-05','Delivered'),
(2,2,'2026-03-03','2026-03-07','Delivered'),
(3,3,'2026-03-04','2026-03-08','Delivered'),
(4,4,'2026-03-05','2026-03-09','Delivered'),
(5,5,'2026-03-06','2026-03-10','Delivered'),
(6,6,'2026-03-07','2026-03-11','Delivered'),
(7,7,'2026-03-08','2026-03-12','Delivered'),
(8,8,'2026-03-09','2026-03-13','Delivered'),
(9,9,'2026-03-10','2026-03-14','Delivered'),
(10,10,'2026-03-11','2026-03-15','Delivered'),
(11,11,'2026-03-12','2026-03-16','Delivered'),
(12,12,'2026-03-13','2026-03-17','Delivered'),
(13,13,'2026-03-14','2026-03-18','Delivered'),
(14,14,'2026-03-15','2026-03-19','Delivered'),
(15,15,'2026-03-16','2026-03-20','Delivered'),
(16,16,'2026-03-17','2026-03-21','Delivered'),
(17,17,'2026-03-18','2026-03-22','Delivered'),
(18,18,'2026-03-19','2026-03-23','Delivered'),
(19,19,'2026-03-20','2026-03-24','Delivered'),
(20,20,'2026-03-21','2026-03-25','Delivered'),
(21,21,'2026-03-22','2026-03-26','Delivered'),
(22,22,'2026-03-23','2026-03-27','Delivered'),
(23,23,'2026-03-24','2026-03-28','Delivered'),
(24,24,'2026-03-25','2026-03-29','Delivered'),
(25,25,'2026-03-26','2026-03-30','Delivered'),
(26,26,'2026-03-27','2026-03-31','Delivered'),
(27,27,'2026-03-28','2026-04-01','Delivered'),
(28,28,'2026-03-29','2026-04-02','Delivered'),
(29,29,'2026-03-30','2026-04-03','Delivered'),
(30,30,'2026-03-31','2026-04-04','Delivered'),
(31,31,'2026-04-01','2026-04-05','In Transit'),
(32,32,'2026-04-02','2026-04-06','In Transit'),
(33,33,'2026-04-03','2026-04-07','In Transit'),
(34,34,'2026-04-04','2026-04-08','In Transit'),
(35,35,'2026-04-05','2026-04-09','In Transit'),
(36,36,'2026-04-06','2026-04-10','Dispatched'),
(37,37,'2026-04-07','2026-04-11','Dispatched'),
(38,38,'2026-04-08','2026-04-12','Dispatched'),
(39,39,'2026-04-09','2026-04-13','Dispatched'),
(40,40,'2026-04-10','2026-04-14','Dispatched');

#DELETE ORDERS THAT WERE CANCELLED MORE THAN 30 DAYS AGO.
delete from orders where order_date < date_sub(curdate(),interval 30 day);

#FIND ALL ORDERS PLACED IN LAST 6 MONTHS
select * from orders where order_date > date_sub(curdate(),interval 6 month);

#GET THE TOP 5 HIGHEST PRICED PRODUCTS
select * from products order by price desc limit 5;

#FIND CUSTOMER WHO HAVE PLACED MORE THAN 3 ORDERS
select count(*) as total_orders,customer_id from orders group by customer_id having total_orders >3;

#GET ALL ORDERS WHERE STATUS IS PENIDNG OR CANCELLED
select * from orders where status ='Pending' or status='Cancelled';

#FIND THOSE PRODUCTS THAT ARE NOT OUT OF STOCK
select * from products where stock_quantity <> 0;

#RETRIEVE CUSTOMER WHO HAVE REGISTERED AFTER 2022 OR HAVE MADE PURCHASE ABOVE 10000
select * from customers as c inner join orders as o on c.customer_id = o.customer_id where total_amount > 10000 or year(registration_date) > 2022;

#LIST ALL PRODUCTS SORTED BY PRICE IN DESCENDING ORDER
select * from products order by price desc;

#DISPLAY THE NUMBER OF ORDERS PLACED BY EACH CUSTOMER
select count(*) as number_of_orders,o.customer_id,c.name from orders as o inner join customers as c on o.customer_id = c.customer_id group by o.customer_id;

#SHOW TOTAL REVENUE GENERATED PER CATEGORY
select revenue,category_name from (select sum(ot.subtotal) as revenue,category_id from order_items as ot 
inner join 
products as p on ot.product_id = p.product_id group by category_id) as t1 
inner join categories as c on t1.category_id = c.category_id;

#FIND THE TOTAL REVENUE GENERATED BY THE STORE
select sum(subtotal)as total_revenue from order_items;


#IDENTIFY MOST PURCHASED PRODUCT
select name, (number_of_purchase) from (select count(order_id)as number_of_purchase,product_id from order_items group by product_id) as t1 
inner join 
products as p on p.product_id = t1.product_id order by number_of_purchase desc limit 1;

#CALCULATE AVERAGE ORDER values
select avg(total_amount) as avg_order_value from orders;

#ENSURE ORDERS ARE LINKED TO CUSTOMERS AND PRODUCTS
select * from orders o left join customers c on o.customer_id = c.customer_id where c.customer_id is null;

#ESTABLISH RELATIONSHIP BETWEEN PAYMENT AND ORDERS
alter table orders
modify column payment_id int,
add constraint fk_payment foreign key(payment_id) references payments(payment_id);

#RETRIEVE LIST OF PRODUCTS ALONG WITH THEIR CATEGORIES NAMES USING INNER JOIN
select name,category_name from products as p inner join categories as c on c.category_id = p.category_id;

#GET ALL ORDERS WITH CUSTOMER DETAILS USING LEFT JOIN
select * from orders as o left join customers as c on o.customer_id = c.customer_id;

#FIND ORDERS THAT HAVE NOT BEEN SHIPPED USING RIGHT JOIN
select * from orders as o where status = 'Pending';

#SHOW CUSTOMERS WHO HAVE NEVER PLACED AN ORDER USING FULL OUTER JOIN
select * from customers c
left join orders o on c.customer_id = o.customer_id where o.order_id is null
union
select * from customers c
right join orders o on c.customer_id = o.customer_id where o.order_id is null;

#FIND ORDERS PLACED BY CUSTOMERS WHO REGISTERED AFTER 2022
select * from customers as c inner join orders as o on c.customer_id = o.customer_id where year(registration_date) > 2022;

#IDENTIFY THE CUSTOMER WHO HAVE SPENT THE MOST
select sum(total_amount) as sum_of_amount,name from customers as c inner join orders as o on c.customer_id = o.customer_id group by c.customer_id order by sum_of_amount desc limit 1;

#GETS THE PRODUCT WHICH NEVER BEEN ORDERED
select * from order_items as ot right join products as p on ot.product_id = p.product_id where order_item_id is null;

#EXTRACT MONTH FROM ORDER DATE TO COUNT ORDERS PER MONTH
select count(*) as total_orders,month(order_date) as month from orders group by month(order_date);

#CALCULATE DELIVERY TIME BY FINDING THE DIFFERENCE BETWEEN SHIPPING DATE AND DELIVERY DATE
select datediff(delivery_date,shipping_date) as delivery_time from shipping;

#FORMAT ORDER_DATE AS DD-MM-YYYY
select date_format(order_date,'%d-%m-%Y') as formatted_date from orders;

#CONVERT ALL PRODUCT NAME TO UPPER CASE
select upper(name) from products;

#TRIM WHITE SPACE FROM CUSTOMER NAME
select trim(name) from customers;

#REPLACE MISSING EMAIL VALUES WITH 'NOT_PROVIDED'
update customers set email = 'Not Provided' where email is null;

#RANK CUSTOMERS BASED ON TOTAL SPENDING
select *, rank() over(order by total_amount) as total_spending_rank from orders as o inner join customers as c on c.customer_id = o.customer_id;

#SHOW CUMILATIVE TOTAL REVENUE PER MONTH
select month(order_date) as month, sum(total_amount) as monthly_revenue,sum(sum(total_amount)) 
over () as cumulative_revenue
from orders group by month;

#DISPLAY THE RUNNING TOTAL OF ORDER PLACED
select *, sum(total_amount) over(rows between unbounded preceding and current row) as running_total from orders;

#ASSIGN LOYALTY STATUS
select * ,case 
		when total_amount>50000 then 'Gold'
        when total_amount between 20000 and 50000 then 'Silver'
        else 'Bronze'
	end as loyalty_status from orders;
    
#CATEGORIZE PRODUCTS
select p.name, t1.number_of_purchase,
    case 
        when t1.number_of_purchase >= 5 then 'best seller'
        when t1.number_of_purchase >= 3 then 'popular'
        else 'regular'
    end as category
from (
    select product_id, count(*) as number_of_purchase
    from order_items
    group by product_id
) as t1 
inner join products p 
on p.product_id = t1.product_id order by t1.number_of_purchase desc;
