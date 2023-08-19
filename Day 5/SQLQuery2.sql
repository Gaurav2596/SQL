create table Students
(
SID int primary key,
Name varchar(30),
City varchar(30)
)

insert into Students values(1,'Ram','Pune')
insert into Students values(2,'Sham','Mumbai')
insert into Students values(3,'Sita','Pune')
insert into Students values(4,'Gita','Nashik')



create table Subjects
(
Subid int primary key,
Subname varchar(30),
Maxmarks int,
Passing int
)

insert into Subjects Values (1,'Maths',100,40)
insert into Subjects Values (2,'English',100,40)
insert into Subjects Values (3,'Marathi',50,15)
insert into Subjects Values (4,'Hindi',50,15)


create table Exam
(
SID int,
Subid int,
Marks int
)

insert into Exam values(1,1,100)
insert into Exam values(1,2,85)
insert into Exam values(1,3,40)
insert into Exam values(1,4,45)
insert into Exam values(2,1,35)
insert into Exam values(2,2,55)
insert into Exam values(2,3,25)
insert into Exam values(3,1,95)
insert into Exam values(3,2,87)
insert into Exam values(3,3,45)
insert into Exam values(3,4,42)

select * from Students
select * from Subjects
select * from Exam

alter table Exam add constraint fk_stud_exam foreign key(SID) references Students(SID)
alter table Exam add constraint fk_subj_exam foreign key(Subid) references Subjects(Subid)

sp_help exam

--insert new student
insert into Students values(5,'Ramesh','Hyderabad')

--change city of sid=4 to sangali
update Students set city='Sangli' where sid=4

--return list of all students with column sid,name,city
select * from Students

select s1.SID,s1.Name,sub.Subname,sub.Maxmarks,e1.Marks
from Exam e1
join students s1 on s1.SID =  e1.SID
join Subjects sub on sub.Subid = e1.Subid




