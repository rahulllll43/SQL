create database college;
use college;

create table student (
rollno int primary key,
name  varchar(50),
marks int
);
select * from student;

insert into student
(rollno, name, marks)
values
(101, "rahul", 90),
(102, "faiz", 72),
(103, "tushar", 12),
(104, "gautam", 88);

delete from student
where marks < 80;

alter table student
drop column marks;

SET SQL_SAFE_UPDATES = 0;



