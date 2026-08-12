use college;
create table temp(
	id int unique
    );
insert into temp values (101);
insert into temp values (101);

select * from temp;

drop table temp;

create table temp1(
	id int,
    name varchar(50),
    age int,
    city varchar(20),
    primary key(id)
    );
    
create table emp(
	id int,
    salary int default 25000);
    
insert into emp (id) values (1);

select * from emp; 