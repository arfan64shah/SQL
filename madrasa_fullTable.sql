/*
go into master and delete madrasa database
*/
use master;

-- drop existing database named as madrasa
drop database madrasa;

-- now create a database named as madrasa
create database madrasa;

-- now use madrasa database
use madrasa;

-- create table named as students
create table students(
s_id int primary key,
f_name varchar(50),
l_name varchar(50),
age int,
gender varchar(30)
);

-- populate table students with data
insert into students
values
(1, 'arfan', 'shah', 25, 'male'),
(2, 'zulfiqar', 'azam', 24, 'male'),
(3, 'saima', 'rani', 23, 'female'),
(4, 'adiba', 'kiran', 23, 'female'),
(5, 'munir', 'abbas', 25, 'male');

select * from students;

-- create another table named as course
create table courses(
c_id int primary key,
c_name varchar(50),
s_id int foreign key references students(s_id),
);

-- populate data into courses
insert into courses
values
(101, 'biology', 2),
(102, 'statistics', 5),
(103, 'calculus', 2),
(104, 'chemistry', 3),
(105, 'physics', 4);

select * from courses;

-- create another table named as instructor
create table instructor(
i_id int primary key,
i_name varchar(50),
c_id int foreign key references courses(c_id)
);

-- populate data into instructor
insert into instructor
values
(10, 'dilshad', 101),
(11, 'azmat', 103),
(12, 'siraj', 104),
(13, 'ramzan', 102),
(14, 'yaqoob', 105);

select * from instructor;

-- alter instructor table and make c_id as foreign key
alter table instructor
add constraint FK_c_id
foreign key references courses(c_id);

-- drop instructor table
drop table instructor;

-- select all tables
select * from students;
select * from courses;
select * from instructor;

-- order students by age
select * from students
order by age desc, f_name;

-- group students based on gender
select gender, count(gender) as number from students
group by gender;

