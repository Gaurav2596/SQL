create table Book
(id int primary key,
Bookname varchar(40) not null,
author varchar(20) not null,
price int not null
)

sp_help Book

create table Dept
(
did int primary key,
dname varchar(30) not null
)

create table Emp
(
empid int primary key,
ename varchar(40) not null,
did int,
constraint fk_dept_emp foreign key(did) references Dept(did)
)

sp_help Emp

----Assesment 

create table users
(userid int primary key,
username varchar(30)
)

create table Product
(
pid int primary key,
pname varchar(40)
)

create table Orders
(
or_id int primary key,
userid int,
pid int,
constraint fk_users_order foreign key(userid) references users(userid),
constraint fk_product_order foreign key(pid) references Product(pid)
)

sp_help Orders
sp_help Product
sp_help users
