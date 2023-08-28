create database school;

--create a table
create table students(std_id int, f_name char(50), l_name char(50), age int, grade int, gender char(20));

--insert values into the table

insert into students(std_id, f_name, l_name, age, grade, gender) values(1, 'Arfan', 'Shah', 23, 10, 'male');

--now print the table
select * from students;