create table Employee2
(eid int primary key,
ename varchar(30),
salary numeric(16,2),
dname varchar(15),
eaddress varchar(50),
designation varchar(20),
gender varchar(10)
)

insert into Employee2 values (1,'Jayesh',30000,'Finance','Panvel','Financial Analyst','Male')
insert into Employee2 values (2,'Gaurav',50000,'Marketing','Dombivali','Marketing Analyst','Male')
insert into Employee2 values (3,'Pratik',25000,'Finance','Pune','Accountant','Male')
insert into Employee2 values (4,'Pravin',40000,'IT','Nashik','Develpoer','Male')
insert into Employee2 values (5,'Nilesh',35000,'HR','Panvel','HR Coordinator','Male')
insert into Employee2 values(6,'Yojana',40000,'IT','Mumbai','Developer','Female')


select * from Employee2

--1)Display employee name,salary,designation
select ename,salary,designation from Employee2 

--2)Delete all the employee whose salary is less than 30000 and address is pune
Delete from Employee2 where salary<30000 and eaddress='pune'

--3)update the address of employee whose designation is Marketing Analyst
update Employee2 set eaddress='Mumbai' where designation='Marketing Analyst'

--4)Display all the female employee
select * from Employee2 where gender='female'

--5)Dispaly all the emp from panvel location
select * from Employee2 where eaddress='panvel'

--6)Display all the emp from HR dept whose location is panvel
select * from Employee2 where dname='HR' and eaddress='panvel'

--7)Delete emp from finance department and salary is more than 20000
delete from Employee2 where dname='finance' and salary>20000

--8)update the salary by 10% of emp who is from mumbai city
update Employee2 set salary=salary+(salary*10/100) where eaddress='Mumbai'