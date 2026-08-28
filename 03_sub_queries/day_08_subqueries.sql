use college;

-- SUBQUERIES:

select * from student;

-- Find average marks of the student table
select avg(marks) from student;
-- Result: 84.5000

-- Now, Find the names of the students with marks greater than average
select name, marks from student where marks> 84.5000;

-- We can't always use the constant value when the data is very large so we have to use dynamic thinking

select name, marks 
from student 
where marks > (select avg(marks) from student);

-- Next query

-- Find the even roll numbers
select roll_no from student where roll_no %2 =0;

-- Find the name of students with even roll numbers.
select name, roll_no from student where roll_no in (102,104,106);

-- Better subquery way:
select name, roll_no from student 
where roll_no in(
	select roll_no 
    from student 
    where roll_no % 2=0
	);
    
-- Next question

-- Find the students of Delhi
select * from student 
where city= 'Delhi';

-- Find their max_marks using the sublist in step 1

select max(marks)
from ( select * from student where city= 'Delhi') as temp;
