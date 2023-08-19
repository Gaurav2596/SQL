create table Employee1
(
id int primary key,
name varchar(30) not null,
email varchar(40) unique,
age int check(age>=18),
country varchar(20) default 'India'
)

insert into Employee1 values (1,'Gaurav','gaurav@gmail.com',26,'UAE')
insert into Employee1 values (2,'Jayesh','jayesh@gmail.com',21,'UAE')
insert into Employee1 (id,name,email,age) values (3,'Pratik','pratik@gmail.com',23)
insert into Employee1 (id,name,email,age) values (4,'Pankaj','pankaj@gmail.com',25)
insert into Employee1 (id,name,email,age) values (5,'Pravin','pravin@gmail.com',24)
insert into Employee1 (id,name,email,age) values (6,'Nilesh','nilesh@gmail.com',21)
insert into Employee1 (id,name,email,age) values (7,'Sanket','sanket@gmail.com',21)
insert into Employee1 (id,name,email,age) values (8,'Sagar','sagar@gmail.com',24)
insert into Employee1 (id,name,email,age) values (9,'Rahul','rahul@gmail.com',23)
insert into Employee1 (id,name,email,age) values (10,'Fahad','fahd@gmail.com',25)

select * from Employee1

update Employee1 set country='India' where id in(1,2)

update Employee1 set email='jayesh2@gmail.com',age=22 where id=2

delete from Employee1 where id = 9

delete from Employee1 where name='Fahad'

insert into Employee1 values(9,'Rahul','rahul@gmail.com',25,'UAE')
insert into Employee1 values(10,'Fahad','fahad@gmail.com',26,'Dubai')
