select * from Employee2
insert into Employee2(eid,ename,salary,dname,eaddress,designation,gender)values(1,'Jayesh',25000,'HR','Pune','Admin','Male')

--Find emp whose salary is more than 30000 and less than 80000
select * from Employee2 where salary>30000 and salary<80000

--to find the maximum salary
select max(salary)as 'Max salary' from Employee2

--Find the total number of employee
select count(*) as 'count' from Employee2

--find emp whose salary is less than 50000 and designation is admin
select * from Employee2 where salary<50000 and designation='admin'

--To arrange the salary of employee in descending order
select * from Employee2
order by salary desc

--To display employee whose salary is not in range of 20000 to 30000
select * from Employee2 where salary not between 20000 and 30000

--To display name and designation of employee who is from pune and mumbai
select ename,designation from Employee2 where eaddress in('mumbai','pune')

--To display all the employee whose designation contain 'e' charachter
select * from Employee2 where designation like '%e%'