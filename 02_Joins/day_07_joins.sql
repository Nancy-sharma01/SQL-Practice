-- JOINS

use college;
create table stu (
	id int primary key,
    name varchar(20)
    );
create table course(
	id int primary key,
    course varchar(50)
    );

insert into stu (id,name)
values
(101,'Adam'),
(102,'Bob'),
(103,'Casey');

insert into course (id,course)
values
(102,'English'),
(105,'Maths'),
(103,'Sciene'),
(107,'Computer Science');

select * from stu;
select * from course;

-- INNER JOIN 

select * 
from stu
inner join course
on stu.id=course.id;

  -- Use alias for time save and increase efficiency

select * 
from stu as s
inner join course as c
on s.id=c.id;

-- LEFT JOIN 

select * 
from stu
left join course
on stu.id=course.id;

-- RIGHT JOIN 

select * 
from stu
right join course
on stu.id=course.id;

-- UNION OR FULL JOIN/ FULL OUTER JOIN

Select * from stu as s
left join course as c
on s.id=c.id
UNION
select * from stu as s
right join course as c
on s.id=c.id;

-- LEFT EXCLUSIVE JOIN:

select * from stu as a
left join course as b
on a.id= b.id
where b.id is null;

-- RIGHT EXCLUSIVE JOIN:

select * 
from stu as s
right join course as c
on s.id= c.id
where s.id is null;

create table employee(
	id int primary key,
    name varchar(20),
    manager_id int);
    
insert into employee (id,name,manager_id)
values
(101,'Adam',103),
(102,'Bob',104),
(103,'Casey',null),
(104,'Donald',103);

-- SELF JOIN

select a.name as manager_name,b.name
from employee as a
join employee as b
on a.id= b.manager_id;
