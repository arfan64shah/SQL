-- create a daatbase for college
create database college;

--delete whole database

--use college database
use college;

--create first table inside college database
create table students (s_id int primary key not null, fname varchar(20) not null, lname varchar(20) not null, age int not null, 
gender varchar(20));

--insert values into students table
insert into students
values
(1, 'Arfan', 'Shah', 24, 'male'),
(2, 'Sakina', 'Shah', 21, 'female'),
(3, 'Adiba', 'Kiran', 21, 'female'),
(4, 'Kiran', 'Jan', 21, 'female'),
(5, 'Munner', 'Abbas', 23, 'male'),
(6, 'Zulfiqar', 'Azam', 23, 'male'),
(7, 'Tajwar', 'Ali', 24, 'male'),
(8, 'Saima', 'Rani', 22, 'female'),
(9, 'Sittara', 'Shehzad', 23, 'female'),
(10, 'Jahangir', 'Khan', 23, 'male'),
(11, 'Shujat', 'Ali', 23, 'male'),
(12, 'Zahid', 'Ali', 23, 'male'),
(13, 'Qandeel', 'Aziz', 22, 'female'),
(14, 'Seher', 'Ibrahim', 22, 'female'),
(15, 'Zeeshan', 'Ali', 23, 'male');

--now retrive whole table students
select * from students;

--now create another table named as courses
create table courses (c_id varchar(30) primary key not null, cname varchar(30) not null, s_id int foreign key references students(s_id));

--insert values into table courses
insert into courses
values
('c1', 'calculus 1', 15),
('c2', 'calculus 2', 13),
('c3', 'geometry', 12),
('c4', 'statistics 1', 10),
('c5', 'data science', 1),
('c6', 'machine learning', 2),
('c7', 'dbms', 5),
('c8', 'python', 3),
('c9', 'artificial intelligence', 9),
('c10', 'sociology', 14);

--now display all in table courses
select * from courses;

--create third table instructors
create table instructors (i_id int primary key not null, fname varchar(20) not null, lname varchar(30) not null, 
c_id varchar(30) foreign key references courses(c_id));

--insert values into instructors
insert into instructors
values
(101, 'Muhammad', 'Muso', 'c1'),
(102, 'Azmat', 'Hussain', 'c4'),
(103, 'Muhammad', 'Fayaz', 'c6'),
(104, 'Muhammad', 'Shoab', 'c9'),
(105, 'Ramzan', 'Ali', 'c2'),
(106, 'Madina', 'Khan', 'c10'),
(107, 'Ayman', 'Ali', 'c8'),
(108, 'Doolos', 'Khan', 'c3'),
(109, 'Rumi', 'Chynara', 'c5'),
(110, 'Dymtro', 'Khan', 'c7');

--display all rows in instructors table
select * from instructors;

--remove whole table
drop table instructors;

--now do inner join for the three tables
select students.fname, students.lname, courses.cname, instructors.fname, instructors.lname
from ((students
inner join courses on students.s_id = courses.s_id)
inner join instructors on instructors.c_id = courses.c_id);

--lets now use outer join and check the results
select students.fname, students.lname, courses.cname, instructors.fname, instructors.lname
from ((courses
full outer join students on courses.s_id = students.s_id)
full outer join instructors on courses.c_id = instructors.c_id);

--write sql code for left join from students to courses
select students.fname, students.lname, courses.cname
from students left join
courses on students.s_id = courses.s_id;

--write sql code for left joiing three tables
select students.fname, courses.cname, instructors.fname
from ((courses
left join students on students.s_id = courses.s_id)
left join instructors on courses.c_id = instructors.c_id);

--write sql code for right join
select students.fname, courses.cname, instructors.fname
from courses
right join students on students.s_id = courses.s_id
right join instructors on instructors.c_id = courses.c_id;

select students.fname, students.lname, courses.cname
from courses right join students
on courses.s_id = students.s_id;

select * from students;

select top 5 *
from students
where s_id < 6

update students
set gender = 'female', fname = 'Arfana'
where s_id = 1;

update students
set fname = 'Maria', age = 20, lname = 'Kauser'
where s_id = 2;

select top 5 *
from students;

--insert one row into students
insert into students
values (16, 'Kauser', 'Firdous', 22, 'female');

select * from students;

--now delete last row
delete students
where s_id = 16;

select gender, count(gender) as number 
from students
group by gender;



