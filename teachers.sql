--create a another table named as teachers
create table teachers(teacher_id int, f_name char(50), l_name char(50), subjects char(50), age int, gender char(50));

--insert into the table teachers
insert into teachers(teacher_id, f_name, l_name, subjects, age, gender)
values(1, 'Siraj', 'Uddin', 'Chemistry', 30, 'male');
insert into teachers(teacher_id, f_name, l_name, subjects, age, gender)
values(2, 'Sirat', 'Shah', 'Mathematics', 29, 'male');
insert into teachers(teacher_id, f_name, l_name, subjects, age, gender)
values(3, 'Dilshad', 'Bano', 'Biology', 28, 'female');
insert into teachers(teacher_id, f_name, l_name, subjects, age, gender)
values(4, 'Arshad', 'Ali', 'English', 30, 'male');
insert into teachers(teacher_id, f_name, l_name, subjects, age, gender)
values(5, 'Saira', 'Bano', 'Pak Studies', 29, 'female');
insert into teachers(teacher_id, f_name, l_name, subjects, age, gender)
values(6, 'Aqeel', 'ALi', 'Urdu', 33, 'male');

select * from teachers;