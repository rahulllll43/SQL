create database college;
use college;

create table student (
 rollno int primary key,
 name varchar(50),
 marks int not null,
 grade varchar(1),
 city varchar(20)
);

insert into student
(rollno, name, marks, grade, city)
values
(101, "anil", 78, "C", "pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "delhi"),
(105, "emanuel", 12, "F", "delhi"),
(106, "farah", 82, "B", "delhi");


select * from student where marks > 90;






use college;




Use college;

create database faiz;
use faiz;
create table empploye
(
id int primary key,
name varchar(50),
age int not null,
city varchar(20) default "noida",
performance varchar(10),
salary int default 150000
);
insert into empploye
(id, name, age, city, performance, salary)
values 
(1, "faiz", 12, "ghaziabad", "great", 20000),
(2, "faizzzz", 123, "great");

select * from empploye;

drop table empploye;

create table employee (
id int primary key,
name varchar(50),
age int not null,
city varchar(20) default "noida",
performance varchar(10),
salary int default 150000
);



insert into employee
(id, name, age, city, performance, salary)
values 
(1, "faiz", 12, "ghaziabad", "great", 20000),
(2, "faizzzz", 123, default, "great", default);

select * from employee;


drop table employee;

create table employeee (
id int primary key,
name varchar(50),
age int not null,
city varchar(20) default "noida",
performance varchar(10),
salary int default 150000

);

insert into employeee
(id, name, age, city, performance, salary)
values 
(1, "faiz", 12, "ghaziabad", "great", 20000),
(2, "faizzzz", 123, default, "great", default);

select *from employeee;


use college;

create table student (
 rollno int primary key,
 name varchar(50),
 marks int not null,
 grade varchar(1),
 city varchar(20)
);

insert into student
(rollno, name, marks, grade, city)
values
(101, "anil", 78, "C", "pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "delhi"),
(105, "emanuel", 12, "F", "delhi"),
(106, "farah", 82, "B", "delhi");

select * from student;

alter table student
modify column age varchar (2);

alter table student
change age stud_age int;



insert into student
(rollno, name, marks, stud_age) 
values
(107, "bob", 68, 100);

insert into student
(rollno, name, marks, stud_age) 
values
(108, "bob", 68, 100);


alter table student
drop column stud_age;


alter table stud_age
rename to student;

select * from student;


create database college2;
use college2;

create table student2 (
rollno int primary key,
name varchar(52),
city varchar(20),
marks int
);

insert into student2
(rollno, name, city, marks)
values
(101, "rahul", "noida", 99),
(102, "gautam", "arthala", 79),
(103, "faiz", "modinagar", 82);


delete from student2
where marks < 80;

select * from student2;

















