create table patients
(
patient_id int primary key,
first_name varchar(30),
last_name varchar(30),
gender char(1),
birth_date date,
city varchar(30),
province_id char(2),
allergies varchar(80),
height decimal(3,0),
weight decimal(4,0)
)
insert into patients values(1,'Gaurav','Mahajan','M','10-10-1995','Dombivali','IN','Dust mites',175,72)
insert into patients values(2,'Ganesh','Patil','M','8-8-2000','Nashik','NA','Animal Fur',168,65)
insert into patients values(3,'Gaurav','Mahajan','M','10-10-1995','Dombivali','IN','Dust mites',175,72)
insert into patients values(4,'Gaurav','Mahajan','M','10-10-1995','Dombivali','IN','Dust mites',175,72)
insert into patients values(5,'Gaurav','Mahajan','M','10-10-1995','Dombivali','IN','Dust mites',175,72)
insert into patients values(6,'Gaurav','Mahajan','M','10-10-1995','Dombivali','IN','Dust mites',175,72)






