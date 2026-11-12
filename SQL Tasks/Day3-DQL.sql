create database practice;
use practice;
-- Task1

create table employees(id int primary key auto_increment,name varchar(50) not null,department varchar(50) default("IT"));
alter table employees add column salary int check(salary>0) after department;
insert into employees(name,department,salary) values("Ramu","IT",50000),("Lion","HR",1000000),("King100","Marketing",30000),("Julie","IT",25000),("Jatt","IT",30000),("Juliet","IT",50000),("Nawab","Sports",75000),("Heer","IT",50000),("Heewab","Therapy",60000);
select * from employees where department="IT" and salary>30000;

-- Task2

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Place VARCHAR(50)
);
INSERT INTO Student VALUES
(1, 'Arun', 18, 'Chennai'),
(2, 'Priya', 19, 'Bengaluru'),
(3, 'Rahul', 20, 'Hyderabad'),
(4, 'Divya', 28, 'Kochi'),
(5, 'Karthik', 21, 'Coimbatore'),
(6, 'Sneha', 19, 'Madurai'),
(7, 'Vijay', 26, 'Mysuru'),
(8, 'Ananya', 20, 'Thiruvananthapuram'),
(9, 'Suresh', 18, 'Vijayawada'),
(10, 'Meena', 21, 'Visakhapatnam');
select Name from Student where age>=18 and age<=25 and place=("Chennai" or "Madurai");

-- Task3
select department as dept,count(department) as total from employees group by department order by total;

-- Task4
create table products(product_id int primary key auto_increment,product_name varchar(50) not null,cargeory varchar(50) default("Scrap"),price int,stock int);
alter table products rename column cargeory to category;
INSERT INTO products (product_id, product_name, category, price, stock)
VALUES
(1, 'Laptop', 'Electronics', 55000, 10),
(2, 'Mouse', 'Electronics', 800, 25),
(3, 'Keyboard', 'Electronics', 1500, 15),
(4, 'T-Shirt', 'Clothing', 500, 30),
(5, 'Jeans', 'Clothing', 1200, 20),
(6, 'Jacket', 'Clothing', 2500, 12),
(7, 'Apple', 'Groceries', 100, 50),
(8, 'Milk', 'Groceries', 60, 40),
(9, 'Bread', 'Groceries', 40, 35),
(10, 'Chair', 'Furniture', 3000, 8),
(11, 'Table', 'Furniture', 5000, 5),
(12, 'Sofa', 'Furniture', 15000, 3);

select category,sum(stock) as total_stock, avg(price) as average_price from products group by category;

-- Task5
select department as dept,avg(salary) as average from employees where salary>25000 group by department having average>40000;

drop table employees;
drop database practice;