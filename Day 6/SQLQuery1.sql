create table regions
(
Regeion_id int primary key, 
Regeion_name varchar(30)
)

insert into regions values(101,'Mumbai')
insert into regions values(102,'Pune')
insert into regions values(103,'Nagpur')
insert into regions values(104,'Nashik')
insert into regions values(105,'Pune')


create table countries
(
country_id varchar(20) primary key,
country_name varchar(30),
region_id int 
)



