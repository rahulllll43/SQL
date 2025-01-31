use college;

create table student(
rollno int primary key,
name varchar(50),
marks int,
city varchar(20)
);

insert into student
(rollno, name, marks, city)
values
(101, "anil", 78, "pune"),
(102, "bhumika", 93, "mumbai"),
(103, " chetan", 85, "mumbai"),
(104, "dhruv", 96, "delhi"),
(105, "emanuel", 92, "delhi"),
(106, "farah", 82, "delhi");

select max(marks)
from (select * 
from student 
where city = "mumbai") as temp
;


select max(marks)
from student
where city = "delhi";





























