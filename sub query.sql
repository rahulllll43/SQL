use college;

create table student(
rollno int primary key,
name varchar(50),
marks int
);

insert into student
(rollno, name, marks)
values
(101, "anil", 78),
(102, "bhumika", 93),
(103, " chetan", 85),
(104, "dhruv", 96),
(105, "emanuel", 92),
(106, "farah", 82);

select avg(marks)
from student;

select name, marks from student
where marks > 87.6667;

select name, marks from student
where marks > (select avg(marks)
from student); // main sub query































