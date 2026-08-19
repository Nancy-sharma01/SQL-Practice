use college;

-- TABLE RELATED QUERIES:
-- Update:

update student 
set grade='O'
where grade='A'; 

update student 
set marks= 82
where roll_no= 105;

update student
set grade='B'
where marks between 80 and 90;

update student 
set marks= marks+1;

update student 
set marks=12
where roll_no=105;

-- Delete

delete from student   -- if we write only this line, it can delete the data of the whole table
where marks<33;

select * from student;

-- FOREIGN KEY CONCEPT

create table dept (
	id int primary key,
    name varchar(50)
    );

-- Also apply cascading concept here:
create table teacher (
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key (dept_id) references dept (id)
    on update cascade
    on delete cascade
    ); 

-- Let's check the cascading concept

insert into dept
values 
(101,'English'),
(102,'IT');

insert into teacher
values 
(101,'Adam',101),
(102,'Eve',102);

update dept 
set id=103
where id=102;
 
select * from dept;
select * from teacher;
