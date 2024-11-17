create database School;
use School;

create table STUDENT(
	Roll_No int primary key ,
	Name varchar (20),
    marks int,
    grade varchar (20)
);

insert into STUDENT(Roll_No,Name,Marks,grade)
values
(1,'Jobin',95,'A'),
(2,'Josmy',85,'B'),
(3,'Jomon',75,'C'),
(4,'Jose',63,'D'),
(5,'Sissi',99,'A'),
(6,'Melani',98,'A'),
(7,'Bindhu',88,'B');

select * from STUDENT;

alter table STUDENT add column contact char(10);

alter table STUDENT drop column grade;

alter table STUDENT rename to CLASSTEN;

truncate CLASSTEN;
select * from CLASSTEN ;

drop table CLASSTEN;

