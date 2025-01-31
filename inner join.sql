use college;

create table student(
student_id int primary key,
name varchar(50)
);

insert into student
(student_id, name)
values
(101, "adam"),
(102, "bob"),
(103, "casey");

select * from student;

create table course(
student_id int primary key,
course varchar(20)
);

insert into course
(student_id, course)
values
(102, "english"),
(105, "maths"),
(103, "science"),
(107, "CS");
select * from course;

select *
from student as s
inner join course as c
on s.student_id = c.student_id;












