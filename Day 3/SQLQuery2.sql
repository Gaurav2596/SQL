select * from Employee1
alter table Employee1 add salary int

update Employee1 set salary=25000 where id in(1,3,5,7) 
update Employee1 set salary=27000 where id in(2,6,8)
update Employee1 set salary=30000 where id in(4,9)
update Employee1 set salary=35000 where id in(10)

select * from Employee1 where name like 'p%'

select * from Employee1 where name like '%v'

select * from Employee1 where name like '%a%'

select * from Employee1 where name like '[a-k]%'

select * from Employee1 where name like '%[a-k]'

select * from Employee1 where name like '[a-k]%'

select * from Employee1 where name like '[a,b,c,d,e,f,g,k]%'

select * from Employee1 where name like '%[a,b,c,d,e,f,g,k]'

select * from Employee1 where name like 'G_____'

select * from Employee1 where name like '__y_s_'

select * from Employee1 where name not like 'a%'

select * from Employee1 where id in(1,3,5,7,9)

select * from Employee1 where id not in (1,3,5,7,9)

select * from Employee1 where salary>25000 and country='india'

select * from Employee1 where country='india' or country = 'uae'

select * from Employee1 where not country='india'

--Order by Clause

select * from Employee1
order by salary

select * from Employee1 
order by salary desc

select * from Employee1 where salary<30000
order by salary

--column alias
select name as empname from Employee1

--aggregate function

select min(salary) as Min_salary from Employee1

select max(salary) as 'Max_salary' from Employee1

select avg(salary) as avg_salary from Employee1

select sum(salary) as total_salary from Employee1

select count(country)as'count' from Employee1
select count(*) as 'total count' from Employee1
select count(distinct country) as 'count' from Employee1