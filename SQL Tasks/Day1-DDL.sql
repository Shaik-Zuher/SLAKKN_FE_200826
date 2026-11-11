create database SLAKKN_FE_200826;
use SLAKKN_FE_200826;

-- Task1
create table students(student_id int primary key auto_increment,student_name varchar(100) not null,age int check(age>=18),email varchar(100) unique,city varchar(50) default("Chennai"),admission_date date);
desc students;

-- Task2
create table employees(emp_id int primary key auto_increment,emp_name varchar(100) not null,email varchar(100) unique,salary decimal(10,2) check(salary>1000),department varchar(50) default("IT"),joining_date date not null,status varchar(20) default("Active"),created_at timestamp default(current_timestamp()));
desc employees;

-- Task3
create table products(product_id int primary key auto_increment,product_name varchar(150) not null,product_code varchar(30) not null,category varchar(50) not null,price decimal(10,2) check(price>0),stock int default(0),brand varchar(50) default("Generic"),manufacture_date date,expiry_date date,is_available boolean default(true),created_at timestamp default(current_timestamp()));

-- Task4
alter table students add column fees int check(fees>0);
alter table students add column mobile_number int after email;
select * from students; 