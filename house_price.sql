-- create a database for house price
create database house_price;

-- use the newly created database
use house_price;

--retrieve all data
select * from dbo.house_price;

-- now create a view to group all according to floors
create view first_floor
as
select * 
from dbo.house_price
where floor = 1;

-- select everything from view first_floor
select *
from first_floor;

-- make a view for ground floor
create view ground_floor
as
select *
from house_price
where floor = 0;

-- select everything from ground_floor
select *
from ground_floor;

