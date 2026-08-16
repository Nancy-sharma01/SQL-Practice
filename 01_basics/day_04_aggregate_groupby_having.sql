use college;
/* Aggregate functions */

/* max */
select max(marks) 
from student;
/* min */
select min(marks) from student;
/* avg */
select avg(marks) from student;
/* count */
select count(name) from student;

/* GROUP BY CLAUSE*/

select city from student 
group by city;

select city, count(roll_no)
from student group by city;

select city,name, count(roll_no)
from student group by city,name;

select city, avg(marks)
from student group by city;

-- Practice Question:
	-- Write the query to find avg marks in each city in ascending order

select city, avg(marks) from student group by city order by avg(marks) asc;
-- in descending order:
select city, avg(marks) from student group by city order by avg(marks) desc;

-- Having clause

select city, count(roll_no) 
from student 
group by city
having max(marks)>90;

select city 
from student 
where grade='A'
group by city
having max(marks)>=93
order by city desc;
