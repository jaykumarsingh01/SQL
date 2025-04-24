CREATE DATABASE havingupdate;

USE havingupdate;

create table up(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into up
(rollno , name , marks , grade , city)
values
(1 , "jay kumar singh" , 90 , "A" , "ballia"),
(2 , "sonal singh" , 97 , "O" , "varanasi"),
(3 , "varoon singh" , 45 , "C" , "charouan"),
(4 , "vijay kumar singh" , 89 , "A" , "up"),
(5 , "sunil singh" , 99 , "O" , "kanpur"),
(6 , "anjali singh" , 75 , "B" , "ballia");

set sql_safe_updates = 0;


update up
set grade="o"
where grade="a";


update up
set marks = 81
where rollno = 4;


update up
set marks = 99
where rollno = 5;

update up
set marks = marks+1;

delete from up
where marks<=33;

select * from up;