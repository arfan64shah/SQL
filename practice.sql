-- create a database named as practice
create database practice;

-- use practice database
use practice;

-- create a table for salespersons
create table salespersons(
salesperson_id int primary key,
first_name varchar(50),
last_name varchar(50)
);

select * from salespersons;

-- now insert data into salespersons
insert into salespersons
values
(1, 'Green', 'Wright'),
(2, 'Jones', 'Collins'),
(3, 'Bryant', 'Davis');

-- create another table
create table addresss(
address_id int primary key,
salesperson_id int foreign key references salespersons(salesperson_id),
city varchar(50),
state varchar(50),
country varchar(50)
);

-- enter data into addresss table
insert into addresss
values
(1, 2, 'Los Angeles', 'California', 'USA'),
(2, 3, 'Denver', 'Colorado', 'USA'),
(3, 3, 'Atlanta', 'Georgia', 'USA');

select * from addresss;

/* Question: From the above tables, write a SQL query to find the information on each salesperson of 
	ABC Company. Return name, city, country and state of each salesperson. */

select salespersons.first_name, addresss.city, addresss.country, addresss.state
from salespersons left join
addresss on salespersons.salesperson_id = addresss.salesperson_id;

-- create a table known as doctors
create table doctors(
doc_id int primary key,
name varchar(50),
speciality varchar(60),
hospital varchar(50),
city varchar(70),
consultation_fee int
);

-- insert data into doctors
insert into doctors
values
(1, 'Dr.Shashank', 'Ayurveda', 'Apollo Hospital', 'Bangalore', 2500),
(2, 'Dr.Abdul', 'Homoepathy', 'Fortis Hospital', 'Bangalore', 2000),
(3, 'Dr.Shwetha', 'Homoepathy', 'KMC Hospital', 'Manipal', 1000),
(4, 'Dr.Murphy', 'Dermatology', 'KMC Hospital', 'Manipal', 1500),
(5, 'Dr.Farhana', 'Physician', 'Gleneagles Hospital', 'Bangalore', 1700),
(6, 'Dr.Maryam', 'Physician', 'Gleneagles Hospital', 'Bangalore', 1500);

select * from doctors;

-- same hospital but different speciality
select d1.name, d1.speciality, d1.hospital 
from doctors as d1
join doctors as d2
on d1.hospital = d2.hospital and d1.speciality != d2.speciality;

--work in same hospital
select d1.name, d1.speciality, d1.hospital
from doctors as d1
join doctors as d2
on d1.hospital = d2.hospital and d1.doc_id != d2.doc_id;

--create a table named as employeeinfo
create table employeeinfo(
emp_id int primary key,
empfname varchar(50),
emplname varchar(50),
department varchar(40),
project varchar(40),
address varchar(100),
dob date,
gender varchar(20)
);

--insert data inside employee table
insert into employeeinfo
values
(1, 'sanjay', 'mehra', 'hr', 'p1', 'hyderabad', '01/12/1976', 'male'),
(2, 'ananya', 'mishra', 'admin', 'p2', 'delhi', '02/05/1968', 'female'),
(3, 'rohan', 'diwan', 'account', 'p3', 'mumbai', '01/01/1980', 'male'),
(4, 'sonia', 'kulkarni', 'hr', 'p1', 'hyderabad', '02/05/1992', 'female'),
(5, 'ankit', 'kapoor', 'admin', 'p2', 'delhi', '03/07/1994', 'male');

select * from employeeinfo;

-- create another table
create table employeeposition(
emp_id int,
emp_position varchar(50),
dateofjoining date,
salary int
);

-- insert data into employeeposition
insert into employeeposition
values
(1, 'manager', '01/05/2022', 500000),
(2, 'exective', '02/05/2022', 75000),
(3, 'manager', '01/05/2022', 90000),
(2, 'lead', '02/05/2022', 85000),
(1, 'esective', '01/05/2022', 300000);

select * from employeeinfo;

/*
	Write a query to fetch the EmpFname from the EmployeeInfo table in the upper case and use the ALIAS name as EmpName.
*/
select upper(employeeinfo.empfname) as empname
from employeeinfo;

/*
	Write a query to fetch the number of employees working in the department ‘HR’.
*/
select department, count(emp_id) as no
from employeeinfo
where department = 'hr'
group by department;

select count(*)
from employeeinfo
where department = 'hr';

/*
	Write a query to get the current date.
*/
select getdate();


/*
	Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.
*/
select substring(employeeinfo.emplname, 1, 4) as lastname
from employeeinfo;

select * from employeeinfo;
/*
Write a query to fetch only the place name(string before brackets) from the Address column of EmployeeInfo table.
*/
-- first update the columns accordingly
update employeeinfo
set address = 'mumbai(bom)'
where project = 'p3';


