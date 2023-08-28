create database school;

--create a table
create table students(std_id int, f_name char(50), l_name char(50), age int, grade int, gender char(20));

--insert values into the table

insert into students(std_id, f_name, l_name, age, grade, gender) values(1, 'Arfan', 'Shah', 23, 10, 'male');
insert into students(std_id, f_name, l_name, age, grade, gender) values(2, 'Munner', 'Hussain', 22, 10, 'male');
insert into students(std_id, f_name, l_name, age, grade, gender) values(3, 'Tajwar', 'Ali', 24, 10, 'male');
insert into students(std_id, f_name, l_name, age, grade, gender) values(4, 'Zulfiqar', 'Azam', 22, 9, 'male');
insert into students(std_id, f_name, l_name, age, grade, gender) values(5, 'Adiba', 'Kiran', 22, 10, 'female');
insert into students(std_id, f_name, l_name, age, grade, gender) values(6, 'Saima', 'Rani', 22, 9, 'female');
insert into students(std_id, f_name, l_name, age, grade, gender) values(7, 'Kiran', 'Jan', 21, 9, 'female');

--now print the table
select * from students;