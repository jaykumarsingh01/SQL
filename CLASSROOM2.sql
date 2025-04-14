CREATE DATABASE college;

USE college;

create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student
(rollno , name , marks , grade , city)
values
(1 , "jay kumar singh" , 90 , "A" , "ballia"),
(2 , "sonal singh" , 97 , "O" , "varanasi"),
(3 , "varoon singh" , 45 , "C" , "charouan"),
(4 , "vijay kumar singh" , 89 , "A" , "up"),
(5 , "sunil singh" , 99 , "O" , "kanpur"),
(6 , "anjali singh" , 75 , "B" , "ballia");

select * from student;
