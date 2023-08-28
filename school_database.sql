--create a database named as school
create database school;

--use the school database
use school;

--create table inside school database
create table students(
s_id int primary key not null,
fname varchar(20) not null,
lname varchar(20) not null,
age int not null,
gender varchar(20) not null
);


--put values inside students table
insert into students
values
(1, 'Arfan', 'Shah', 23, 'male'),
(2, 'Adiba', 'Kiran', 22, 'female'),
(3, 'Tajwar', 'Ali', 23, 'male'),
(4, 'Sakina', 'Bano', 22, 'female'),
(5, 'Kiran', 'Jan', 22, 'female');


select * from students;

--create another table as courses
create table courses(
c_id varchar(20) primary key not null,
c_name varchar(20) not null,
s_id int foreign key references students(s_id)
);

--insert values into courses table
insert into courses
values
('c1', 'calculus 1', 1),
('c2', 'statistics 1', 4),
('c3', 'statistics 2', 3),
('c4', 'sociology', 5);

select * from courses;

--create third table
create table instructors(
i_id int primary key not null,
i_name varchar(20) not null,
c_id varchar(20) foreign key references courses(c_id),
s_id int foreign key references students(s_id)
);

--insert values into instructors
insert into instructors
values
(101, 'muso', 'c1', 1),
(102, 'dr. azmat', 'c2', 4),
(103, 'dr. azmat', 'c4', 5),
(104, 'madina', 'c3', 3);

select * from instructors;

select students.fname, students.lname, courses.c_name, instructors.i_name
from students
inner join courses
on students.s_id = courses.s_id
inner join instructors
on students.s_id = instructors.s_id

