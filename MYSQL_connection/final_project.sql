create database uni_course_mgt;
use uni_course_mgt;

create table students(
student_id int primary key,
first_name varchar(15) not null,
last_name varchar(15) not null,
email varchar(30) unique not null,
birth_date date not null,
enrollment_date date not null
);
insert into students (student_id,first_name,last_name,email,birth_date,enrollment_date)
values
(1,'John','Doe','john.doe@gmail.com','2000-01-15','2022-08-01'),
(2,'Jane','Smith','jane.smith@gmail.com','1999-05-25','2021-08-01');

create table departments (
department_id int primary key,
department_name varchar(20) not null
);

insert into departments (department_id ,department_name) values
(1, 'Computer Science'),
(2,'Mathemetics');


create table courses(
course_id int primary key,
course_name varchar(20) not null,
department_id int,
foreign key(department_id) references departments(department_id),
credits int not null default 1
);

insert into courses (course_id ,course_name,department_id,credits) values 
(101,'Introduction to SQL',1,3),
(102,'Data structures',2,4);

create table instructors(
instructor_id int primary key,
first_name varchar(15) not null,
last_name varchar(15) not null,
email varchar(30) unique not null,
department_id int,
foreign key(department_id) references departments(department_id)
);
insert into instructors (instructor_id, first_name ,last_name, email, department_id) values
(1,'Alice','Johnson','alice.johnson@gmail.com',1),
(2,'Bob','Lee	','bob.lee@gmail.com',1);

create table enrollments (
enrollment_id int primary key,
student_id int,
foreign key(student_id) references students(student_id),
course_id int,
foreign key(course_id) references courses(course_id),
enrollment_date date not null
);
insert into enrollments (enrollment_id, student_id, course_id, enrollment_date) values
(1,1,101,'2022-08-01'),
(2,2,102,'2021-08-01');

#1
#CREATE
insert into students (student_id,first_name,last_name,email,birth_date,enrollment_date)
values
(3,'Brij','Ranpariya','brij.ranpariya@gmail.com','2002-05-25','2025-08-01'),
(4,'Raj','Soni','raj.soni@gmail.com','2001-11-12','2025-08-01'),
(5,'Ramesh','Patel','ramesh.patel@gmail.com','2002-03-18','2025-08-01'),
(6,'Neha','Shah','neha.shah@gmail.com','2003-07-22','2025-08-01'),
(7,'Amit','Joshi','amit.joshi@gmail.com','2001-09-10','2025-08-01'),
(8,'Kiran','Patel','kiran.patel@gmail.com','2002-01-15','2025-08-01'),
(9,'Pooja','Desai','pooja.desai@gmail.com','2003-04-20','2025-08-01'),
(10,'Rahul','Trivedi','rahul.trivedi@gmail.com','2001-12-05','2025-08-01'),
(11,'Snehal','Dave','snehal.dave@gmail.com','2002-06-30','2025-08-01'),
(12,'Vikas','Bhatt','vikas.bhatt@gmail.com','2003-02-14','2025-08-01'),
(13,'Anjali','Pandya','anjali.pandya@gmail.com','2002-09-09','2025-08-01'),
(14,'Deep','Kapadia','deep.kapadia@gmail.com','2001-08-25','2025-08-01'),
(15,'Mehul','Gandhi','mehul.gandhi@gmail.com','2002-10-11','2025-08-01'),
(16,'Nisha','Modi','nisha.modi@gmail.com','2003-05-17','2025-08-01'),
(17,'Yash','Chauhan','yash.chauhan@gmail.com','2001-07-07','2025-08-01'),
(18,'Harsh','Patel','harsh.patel@gmail.com','2002-03-12','2025-08-01'),
(19,'Krupa','Shah','krupa.shah@gmail.com','2003-06-25','2025-08-01'),
(20,'Jay','Mehta','jay.mehta@gmail.com','2001-11-19','2025-08-01'),
(21,'Heena','Trivedi','heena.trivedi@gmail.com','2002-08-14','2025-08-01'),
(22,'Manish','Joshi','manish.joshi@gmail.com','2003-01-30','2025-08-01'),
(23,'Ritu','Desai','ritu.desai@gmail.com','2002-05-05','2025-08-01'),
(24,'Sagar','Pandya','sagar.pandya@gmail.com','2001-09-22','2025-08-01'),
(25,'Komal','Bhatt','komal.bhatt@gmail.com','2003-07-11','2025-08-01'),
(26,'Tushar','Gandhi','tushar.gandhi@gmail.com','2002-12-02','2025-08-01'),
(27,'Divya','Kapadia','divya.kapadia@gmail.com','2001-10-18','2025-08-01'),
(28,'Nirav','Modi','nirav.modi@gmail.com','2002-04-27','2025-08-01'),
(29,'Bhavna','Chauhan','bhavna.chauhan@gmail.com','2003-03-09','2025-08-01'),
(30,'Parth','Soni','parth.soni@gmail.com','2001-06-21','2025-08-01'),
(31,'Isha','Patel','isha.patel@gmail.com','2002-02-13','2025-08-01'),
(32,'Rohit','Dave','rohit.dave@gmail.com','2003-08-29','2025-08-01'),
(33,'Mansi','Trivedi','mansi.trivedi@gmail.com','2001-12-07','2025-08-01'),
(34,'Kishan','Shah','kishan.shah@gmail.com','2002-07-16','2025-08-01'),
(35,'Pinal','Mehta','pinal.mehta@gmail.com','2003-09-03','2025-08-01'),
(36,'Hardik','Joshi','hardik.joshi@gmail.com','2001-05-26','2025-08-01'),
(37,'Sejal','Desai','sejal.desai@gmail.com','2002-11-08','2025-08-01'),
(38,'Sejal','Patel','sejal.patel@gmail.com','2002-11-08','2025-08-01');
insert into departments (department_id ,department_name) values
(3,'Information Technology'),
(4,'Computer Science'),
(5,'Mechanical Engineering'),
(6,'Civil Engineering');
insert into courses (course_id ,course_name,department_id,credits) values 
(104,'Java',3,4),
(105,'Data Structures',4,4),
(106,'Thermodynamics',5,3),
(107,'Structural design',6,3);
insert into instructors (instructor_id, first_name ,last_name, email, department_id) values
(3,'Harsh','Mehta','harsh.mehta@gmail.com',3),
(4,'Priya','Sharma','priya.sharma@gmail.com',4),
(5,'Kunal','Verma','kunal.verma@gmail.com',5),
(6,'Sneha','Iyer','sneha.iyer@gmail.com',6);
insert into enrollments (enrollment_id, student_id, course_id, enrollment_date) values
(38,38,103,'2025-08-01'),
(39,38,103,'2025-08-01'),
(3,3,103,'2025-08-01'),
(4,4,104,'2025-08-02'),
(5,5,105,'2025-08-02'),
(6,6,106,'2025-08-03'),
(7,7,107,'2025-08-03'),
(8,3,105,'2025-08-04'),
(9,18,103,'2025-08-05'),
(10,19,104,'2025-08-05'),
(11,20,105,'2025-08-05'),
(12,21,106,'2025-08-06'),
(13,22,107,'2025-08-06'),
(14,23,103,'2025-08-06'),
(15,24,104,'2025-08-07'),
(16,25,105,'2025-08-07'),
(17,26,106,'2025-08-07'),
(18,27,107,'2025-08-08'),

(19,28,103,'2025-08-08'),
(20,29,104,'2025-08-08'),
(21,30,105,'2025-08-09'),
(22,31,106,'2025-08-09'),
(23,32,107,'2025-08-09'),
(24,33,103,'2025-08-10'),
(25,34,104,'2025-08-10'),
(26,35,105,'2025-08-10'),
(27,36,106,'2025-08-11'),
(28,37,107,'2025-08-11'),
(29,3,104,'2025-08-12'),
(30,4,105,'2025-08-12'),
(31,5,106,'2025-08-12'),
(32,6,107,'2025-08-13'),
(33,7,103,'2025-08-13'),
(34,8,104,'2025-08-13'),
(35,9,105,'2025-08-14'),
(36,10,106,'2025-08-14'),
(37,11,107,'2025-08-14');

#READ
select * from students;
select * from departments;
select * from courses;
select * from instructors;
select * from enrollments;

#UPDATE
SET SQL_SAFE_UPDATES = 0;
update students set first_name  = 'Brijesh' where student_id = 3;
update departments set department_name = 'Introduction to MySQL' where department_id = 1;
update courses set course_name = 'Python' where course_id = 103;
update instructors set first_name = 'Harshad' where instructor_id = 3;
update enrollments set enrollment_date = '2025-08-01' where enrollment_id = 3;

#DELETE
delete from students where student_id = 3;
delete from departments where department_id = 3;
delete from courses where course_id = 3;
delete from instructors where instructor_id = 3;
delete from enrollments where enrollment_id = 3;

#2
select * from students where year(enrollment_date) >'2022';

#3
select * from courses where department_id  = (select department_id from departments where department_name = 'Mathemetics') limit 5;

#4
select count(*) as total_students, course_id from enrollments group by course_id having total_students > 5;

#5
select * from students 
where student_id in (select e.student_id from enrollments e
join courses c on e.course_id = c.course_id
where c.course_name in ('Introduction to MySQL', 'Data Structures')
group by e.student_id
having count(distinct c.course_name) = 2);

#6
select * from enrollments as e 
inner join 
students as s on e.student_id = s.student_id 
where course_id in 
(select course_id from courses where course_name in ('Introduction to MySQL','Data Structures'));

#7
select avg(credits) as avg_credits from courses;

#8
select * from instructors where department_id = (select department_id from departments where department_name = 'Computer Science') order by salary desc limit 1;

#9
select count(*) as total_students_per_dept, department_id from enrollments as e join (select (c.course_id),d.department_id from courses as c join departments as d on c.department_id = d.department_id) as cd on e.course_id = cd.course_id group by department_id;

#10
(select concat(first_name," ",last_name) as full_name,course_name from students as s 
join (select course_name,student_id from courses as c 
join enrollments as e on c.course_id=e.course_id) as ce on s.student_id =ce.student_id);

#11
(select concat(first_name," ",last_name) as full_name,course_name from students as s 
left join (select course_name,student_id from courses as c 
join enrollments as e on c.course_id=e.course_id) as ce on s.student_id =ce.student_id);

#12
select * from students where student_id in (select student_id from enrollments as e  
where course_id in (select course_id from enrollments 
group by course_id having count(*) > 2));

#13
select year(enrollment_date) from students;

#14
select concat(first_name," ",last_name) from instructors;

#15
select *, sum(salary) over(rows between unbounded preceding and current row) as running_total_of_salary from instructors;

#16
select *,
case
	when year(curdate())-year(enrollment_date) > 2 then 'Senior'
    else 'Junior'
    end as seniority
from students;



