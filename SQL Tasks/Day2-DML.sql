-- Task1
create database college_db;
use college_db;
create table students(student_id int,name varchar(20),age int,email varchar(50),course varchar(25),fees int,admission_date date);
rename table students TO student_details;
alter table student_details add column mobile_number int;

-- Task2
create table employees(employee_ID int primary key auto_increment,name varchar(50),salary int,department varchar(50),joining date,city varchar(50));
alter table employees rename column name to employee_name;
alter table employees modify salary decimal(12,2);
alter table employees add column email varchar(50);

-- Task3
create table products(product_id int primary key auto_increment,name varchar(50) unique,price int,category varchar(40),stock int check(stock>-1),manufacturing_date date default(curdate()));
rename table products to products_details;
alter table products_details rename column price to product_price;
alter table products_details drop column manufacturing_date;

-- Task4
create table patients(Id int primary key not null,name varchar(50),age int check(age>17),gender varchar(10),disease varchar(50),admission_date date,doctor_name varchar(50));
alter table patients rename column disease to diagnosis;
alter table patients add column contact_number int;
alter table patients modify column name varchar(150);
rename table patients to patient_records;

-- Task5
create table courses(ID int primary key,name varchar(50),duration time,fees int,trainer_name varchar(50),start_date date);
alter  table courses modify column duration time default(3) check(duration>0);
alter table courses add column course_status varchar(50);
alter table courses	rename column trainer_name to instructor_name;
alter table courses drop column start_date;

-- Task6
create table customers(id int primary key auto_increment,name varchar(50) not null,email varchar(50),city varchar(50),age int check(age>=18),registration_date date);
insert into customers values (1,"ramu","gmail","Chennai",19,current_date()),
 (2,"ramu","gmail","Chennai",19,current_date()), (3,"ramu","gmail","Chennai",19,current_date()), (4,"ramu","gmail","Chennai",19,current_date()),
  (5,"ramu","gmail","Chennai",19,current_date()), (6,"ramu","gmail","Chennai",19,current_date()), (7,"ramu","gmail","Chennai",19,current_date()),
 (8,"ramu","gmail","Chennai",19,current_date()), (9,"ramu","gmail","Chennai",19,current_date()), (10,"ramu","gmail","Chennai",19,current_date());
 insert into customers values (11,"ramu","gmail","Chennai",19,current_date());
insert into customers(name,age,registration_date) values ("sai",20,current_date()),("tej",25,current_date());
 
 -- Task7
CREATE TABLE staff (staff_id INT PRIMARY KEY,name VARCHAR(100),department VARCHAR(50),salary DECIMAL(10,2),city VARCHAR(50));
INSERT INTO staff(staff_id, name, department, salary, city)VALUES(1, 'Rahul', 'IT', 45000, 'Hyderabad'),
(2, 'Priya', 'HR', 35000, 'Chennai'),
(3, 'Arjun', 'Finance', 50000, 'Bangalore'),
(4, 'Sneha', 'Marketing', 40000, 'Mumbai'),
(5, 'Kiran', 'IT', 55000, 'Delhi'),
(6, 'Anjali', 'Sales', 30000, 'Pune'),
(7, 'Vijay', 'HR', 38000, 'Kolkata'),
(8, 'Divya', 'Finance', 48000, 'Vizag');
update staff as s  set s.salary=45000 where s.staff_id=3;
update staff as s  set s.department="IT" where s.staff_id=5;
update staff as s set s.salary=s.salary+5000 where s.department="HR";
update staff set city="Chennai" where salary>30000;

-- Task8

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE
);
INSERT INTO orders(order_id, customer_name, product_name, quantity, price, order_date)VALUES
(1, 'Rahul', 'Laptop', 1, 55000, '2025-01-10'),
(2, 'Priya', 'Mobile', 2, 20000, '2025-01-15'),
(3, 'Arjun', 'Keyboard', 1, 1500, '2025-02-05'),
(4, 'Sneha', 'Mouse', 2, 800, '2025-02-12'),
(5, 'Kiran', 'Monitor', 1, 12000, '2025-03-01'),
(6, 'Anjali', 'Headphones', 2, 2500, '2025-03-10'),
(7, 'Vijay', 'Tablet', 1, 30000, '2025-04-05'),
(8, 'Divya', 'Printer', 1, 8500, '2025-04-15'),
(9, 'Rohit', 'Smart Watch', 2, 5000, '2025-05-01'),
(10, 'Pooja', 'USB Drive', 3, 600, '2025-05-10');
delete from orders where order_id=4;
delete from orders where quantity<2;
delete from orders where price<500 and quantity<5;
select * from orders;

-- Task9
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    book_name VARCHAR(100),
    author VARCHAR(100),
    price DECIMAL(10,2),
    published_date DATE
);
INSERT INTO books(book_id, book_name, author, price, published_date)VALUES
(1, 'Wings of Fire', 'A.P.J. Abdul Kalam', 350, '1999-01-01'),
(2, 'The Alchemist', 'Paulo Coelho', 450, '1988-01-01'),
(3, 'Atomic Habits', 'James Clear', 550, '2018-10-16'),
(4, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 400, '1997-04-01'),
(5, 'The Power of Habit', 'Charles Duhigg', 500, '2012-02-28');
SELECT * FROM books;
truncate table books;
desc table books;

-- Task 10
show tables;
drop table employees;
drop database college_db;
show tables;