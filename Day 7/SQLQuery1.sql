create table Book1
(
Bookid int not null,
Bookname varchar(40) not null,
authorid int primary key,
price numeric(10,2) not null
)
insert into Book1 values(1,'History',101,500)
insert into Book1 values(2,'Math',102,400)
insert into Book1 values(3,'Marathi',103,500)
insert into Book1 values(4,'Science',104,600)
insert into Book1 values(5,'Hindi',105,300)

create table Author
(
authorid int,
authorname varchar(20)not null,
phoneno int not null,
email varchar(40) not null,
address varchar(40) not null,
city varchar(20)not null
)

insert into Author values(101,'Jayesh',92246890,'jayesh@gmail.com','Rahul nagar','Panvel')
insert into Author values(102,'Gaurav',93276891,'gaurav@gmail.com','Ganesh nagar','Mumbai')
insert into Author values(103,'Pratik',90046887,'pratik@gmail.com','Karve nagar','Pune')
insert into Author values(104,'Pravin',92546890,'pravin@gmail.com','Station road','Dhule')
insert into Author values(105,'Yash',90243899,'yash@gmail.com','Vishnu nagar','Mumbai')

create table Award
(
awardid int not null,
awardtypeid int primary key,
authorid int not null,
bookid int not null,
year1 numeric(10,2) not null
)

insert into Award values(111,201,101,1,2015)
insert into Award values(112,202,102,2,2017)
insert into Award values(113,203,103,3,2019)
insert into Award values(114,204,104,1,2016)
insert into Award values(115,205,105,2,2015)

create table Awardmaster
(
awardtypeid int,
awardname varchar(20) not null,
awardprice numeric(20,2) not null
)

insert into Awardmaster values(201,'Best book',20000)
insert into Awardmaster values(202,'National book award',50000)
insert into Awardmaster values(203,'Best critics book',50000)
insert into Awardmaster values(204,'Book Browse',40000)
insert into Awardmaster values(205,'Major book award',60000)

alter table Author add constraint fk_author foreign key(authorid) references Book1(authorid)
alter table Awardmaster add constraint fk_awdmaster foreign key(awardtypeid) references Award(awardtypeid)

sp_help awardmaster
sp_help author
select * from Book1
select * from author
select * from award
select * from Awardmaster

--find the book name which is written by author 'Gaurav'
select Bookname from Book1 where authorid=
(select authorid from author where authorname='Gaurav')



--insert into subquery
--The INSERT statement uses the data returned from the subquery to insert into another table.
create table stud1
(
rollno int,
name varchar(20)
)

insert into stud1 values(1,'yash')

create table stud2
(
id1 int,
name varchar(20)
)
insert into stud2 values(1,'Ram')

insert into stud1
select * from stud2
where name='Ram'

select * from stud1

select * from book1

create function GetBookPrice(@price int,@discount int)
returns int
as begin
declare @discountedprice int
set @discountedprice = @price-(@price*@discount/100)
return @discountedprice
end

select dbo.GetBookPrice(price,10) as 'discountedprice',price,bookname from book1


