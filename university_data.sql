-- create a database for university
create database university;

-- use the university database
use university;

-- create a table named as student
create table student (
std_id int primary key not null,
fname varchar(50),
lname varchar(50),
email varchar(30),
age int,
);

-- retrive data from student table
select * from student;

-- alter the table by adding another column
alter table student
add father_name varchar(50);

alter table student
add dob varchar(20);

-- drop dob from students
alter table student
drop column dob;

alter table student
add dob varchar(20);

alter table student
alter column dob int;

select * from student;

alter table student
drop column father_name;

--insert some data into students
insert into student
values(3, 'munner', 'abbas', 'munner2gmail.com', 23);

--update data in students
update student
set fname = 'aryan', lname = 'Shah'
where std_id = 1;

--delete a record from student
delete from student
where std_id = 3;

insert into student
values
(4, 'zakir', 'hussain', 'zakir@gmail.com', 34),
(5, 'shakoor', 'baig', 'shakoor@gmail.com', 56),
(6, 'kamil', 'hussain', 'kamil@gmail.com', 70);

select * from student;

-- aggregate functions
select sum(age) as sum_age
from student;

select count(age) as count_age
from student
where age > 30;

select avg(age) as average_age
from student
where age >= 23;

select min(age) as minimum_age
from student;

select max(age) as maximum_age
from student
where lname = 'hussain';

select * from student;

-- order by function usage
select *
from student
order by fname desc;

-- limit function usage
select top 3 *
from student
where age >= 23
order by age desc;

