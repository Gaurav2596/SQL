select * from Employee1
--Top statement

select top 3 * from Employee1

select top 3 * from Employee1
order by salary desc

select top 2 percent * from Employee1

select top 2 with ties * from Employee1
order by salary desc

--Offset and fetch

Select * from Employee1
order by salary desc
offset 3 rows
fetch next 5 rows only

select * from Employee1
order by salary desc
offset 1 rows
fetch next 2 rows only



-----JOINS----------------------
select * from Dept
select * from Employee1

insert into Dept values(1,'HR')
insert into Dept values(2,'Sales')
insert into Dept values(3,'Admin')
insert into Dept values(4,'Devlopment')
insert into Dept values(5,'Testing')

alter table Employee1 add did int
alter table Employee1 add constraint fk_dept_employee foreign key(did) references Dept(did)

update Employee1 set did=1 where id in(1,10)
update Employee1 set did=2 where id in(2,9)
update Employee1 set did=3 where id in(3,8)
update Employee1 set did=4 where id in(4,6)
update Employee1 set did=5 where id in(5,7)

--inner join
select e1.*,d1.dname
from Employee1 e1
inner join Dept d1 on d1.did=e1.did


create table Customers
(
customerid int primary key,
customername varchar(30),
age int,
city varchar(20),
state varchar(20),
dob date)

insert into Customers values(1,'Pratik',22,'Pune','Maharashtra','2-5-1995')
insert into Customers values(2,'Pankaj',21,'Pune','Maharashtra','3-6-1994')
insert into Customers values(3,'Anjali',23,'Nashik','Maharashtra','4-8-1997')
insert into Customers values(4,'Kishor',21,'Surat','Gaujrat','1-1-1996')
insert into Customers values(5,'Parth',30,'Noida','UP','1-1-1998')
insert into Customers values(6,'Gaurav',26,'Mumbai','Maharashtra','1-3-1995')
insert into Customers values(7,'Jayesh',24,'Panvel','Maharashtra','1-1-1998')
insert into Customers values(8,'Benzeer',25,'Noida','UP','1-1-1995')
insert into Customers values(9,'Sagar',24,'Nashik','Maharashtra','1-1-1995')
insert into Customers values(10,'Ganesh',25,'Noida','UP','1-1-1995')

create table Orderstatus(
statusid int primary key,
statusname varchar(20)
)

insert into Orderstatus values(1,'Order')
insert into Orderstatus values(2,'Shipped')
insert into Orderstatus values(3,'Delivered')

create table Orders
(
orderid int primary key,
customerid int,
statusid int,
orderdate date,
shippeddate date,
deliverydate date
)
insert into Orders values(101,1,1,'8-6-2023',null,null)
insert into Orders values(102,2,2,'8-6-2023','9-6-2023',null)
insert into Orders values(103,3,3,'1-7-2023','3-7-2023','4-7-2023')
insert into Orders values(104,1,1,'4-5-2023',null,null)
insert into Orders values(105,5,2,'2-6-2023','4-6-2023',null)
insert into Orders values(106,6,3,'1-8-2023','3-5-2023','5-5-2023')
insert into Orders values(107,8,1,'4-7-2023',null,null)
insert into Orders values(108,9,2,'8-6-2023','9-6-2023',null)

select * from customers
select * from Orderstatus
select * from Orders

select c1.*,o1.*,s1.statusname
from Customers c1
inner join Orders o1  on o1.customerid=c1.customerid
inner join Orderstatus s1 on s1.statusid=o1.statusid


select c1.*,o1.*,s1.statusname
from Customers c1
left join Orders o1  on o1.customerid=c1.customerid
left join Orderstatus s1 on s1.statusid=o1.statusid



select c1.*,o1.*,s1.statusname
from Customers c1
right join Orders o1  on o1.customerid=c1.customerid
right join Orderstatus s1 on s1.statusid=o1.statusid






