use college;

-- Again continue with table related queries:
-- USE OF ALTER:
-- Add new column:
alter table student
add column age int;

select * from student;

-- drop any column
alter table student 
drop column age;

-- Add new column:
alter table student
add column age int not null default 19;

-- Modify column (modefy data type/ constraints):
alter table student
modify column age varchar(2);

insert into student 
(roll_no,name,marks,age)
values
(107,'Gargi',68,100);  -- will give error

-- Change Column (Rename)
alter table student 
change age stu_age int;

insert into student 
(roll_no,name,marks,stu_age)
values
(107,'Gargi',68,100); 

select * from student;

-- Rename table
alter table student 
rename to stu;

alter table stu
rename to student;

-- use if truncate
truncate table teacher;
select * from teacher;
