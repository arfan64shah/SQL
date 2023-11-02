--create a database named as worker
create database worker;

--use worker database
use worker;

-- create a table named as worker in worker database
create table worker(
worker_id int primary key,
first_name varchar(50),
last_name varchar(50),
salary int,
joining_date datetime,
department varchar(50)
);

-- populate the data inside worker
insert into worker
values
(001, 'Monika', 'Arora', 100000, '21-02-20 09:00:00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '21-06-11 09:00:00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '21-02-20 09:00:00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '21-02-20 09:00:00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '21-06-11 09:00:00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '21-06-11 09:00:00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '21-01-20 09:00:00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '21-04-11 09:00:00', 'Admin');

/* we got an error in date and datetime in table worker
	now we need to alter table and change it into datetime
*/
alter table worker
alter column joining_date datetime;

select * from worker;

-- find info about table
exec sp_help worker;

-- lets drop worker table
drop table worker;