-- declare and make a database named as company
create database company;

-- use this database
use company;

-- create a table named as employees
create table employees(
emp_id int not null primary key,
emp_name varchar(50),
dep_id int,
salary int,
mgr_id int
)

-- insert data into empoyees
insert into employees
values
(1, 'arfan', 101, 90000, 4),
(2, 'shah', 102, 60000, 1),
(3, 'zulfi', 103, 70000, 2),
(4, 'azam', 104, 50000, 3);

-- select whole data
select * from employees;

--make a self join
select emp.emp_name as emp_name, mgr.emp_name as mgr_name
from employees as emp
inner join employees as mgr
on emp.mgr_id = mgr.emp_id;