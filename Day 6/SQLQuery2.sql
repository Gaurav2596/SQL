select * from Employee2

--To find out the gender wise employee
select gender,count(eid) as empcount from Employee2
group by gender

--To find out the department wise average salary
select dname,avg(salary) as avgsal from Employee2
group by dname

--Find out the department name where maximum employees are working
select dname, count(*) as maxemp from Employee2 
group by dname

--Find out department name in which more than one employee are working
select dname from Employee2 
group by dname having count(*)>1

--Find out address where only one employee to live
select eaddress from Employee2
group by eaddress having count(*)=1