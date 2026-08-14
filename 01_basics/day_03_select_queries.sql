create database college;

use college;
create table student(
	roll_no int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
    );
    
insert into student
	(roll_no, name, marks, grade, city)
    values
    (101,'Anil',78,'C','Pune'),
    (102,'Bhumika',93,'A','Mumbai'),
    (103,'Chetan',85,'B','Mumbai'),
    (104,'Dhruv',96,'A','Delhi'),
    (105,'Emanuel',12,'F','Delhi'),
    (106,'Farah',82,'B','Delhi');

/* select */

select name,marks from student;
select * from student;
select city from student;
select distinct city from student;

/* Where clause */

select * from student where marks>80;
select * from student where city = 'Mumbai';
select * from student where marks>80 and city ='Mumbai';

/* operators in where: */

select * from student where marks+10>100;
select * from student where marks=93;
select * from student where marks>90;
select * from student where marks>90 and city='Mumbai';
select * from student where marks>90 or city='Mumbai';
select * from student where marks between 80 and 90;
select * from student where city in ('Delhi','Mumbai','Gurugram');
select * from student where city not in ('Delhi','Mumbai');

/* Limit clause */

select * from student Limit 3;
select * from student where marks>75 limit 3; 

/* Order by clause */

select * from student order by city asc;
select * from student order by marks asc;

select * from student order by marks desc limit 3;