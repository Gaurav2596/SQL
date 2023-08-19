create table Employee
(id int,
Empname varchar(25),
salary numeric(12,2)
)
--schema
sp_help Employee

--alter is used to modify the schema of table
-- add--> for add new column
alter table Employee add qualification varchar(10)

--modify the datatype or size
alter table Employee alter column qualification varchar(15)

--drop the column from table
alter table Employee drop column qualification

--rename the column in sql server
sp_rename 'Employee.salary','Empsalary'

alter table Employee alter column id int not null

alter table Employee alter column Empname varchar(25) not null
 
alter table Employee alter column Empsalary numeric(12,2) not null

alter table Employee add email varchar(40) not null unique
alter table Employee add constraint un_emp unique (email)

alter table Employee add constraint un_emp unique(id,email)

alter table Employee drop constraint un_emp

alter table Employee add constraint pk_emp primary key(id)

 alter table Employee drop constraint pk_emp





