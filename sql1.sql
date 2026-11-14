
create database jay;
create database mysql;
create database mysql1;
-- how to drop the db
drop database mysql1;
--  /utlize
use dm;
create database DM;

-- create thhe table
-- employee
-- id int ,emp_name varchar(10),salary decimal(10,2)
create table emplo(
id int,
emp_name varchar (10),
salary decimal (10,2));
select * FROM EMPLO;
-- crate the table give the name school
-- id ,stu_name,stu_score,stu_grade




create database school;
create table student(
id int,
stu_name varchar(10),
stu_score decimal(10,2),
stu_grade varchar(5));
select * from student;



use school;
insert into 
emplo(id,emp_name,salary)
values(1,'a',60),
(7,'b',7);

USE school;

CREATE TABLE emplo(
    id INT,
    emp_name VARCHAR(20),
    salary INT
);


INSERT INTO emplo(id, emp_name, salary)
VALUES
(1,'a',60),
(7,'b',7);
SELECT * FROM emplo;
USE school;

INSERT INTO empl3(id,name)
VALUES(0,'hj');

SELECT * FROM empl3;

create table emp5(
id int unique,
name varchar(30));
INSERT INTO emp5(id,name)
VALUES(0,'hj'),(5,'HJ');

SELECT * FROM emp5;

create table emp50(
id int primary key,
name varchar(30));
INSERT INTO emp5(id,name)
VALUES(0,'hj'),(null,'HJ');

SELECT * FROM emp50;


create table emp501(
id int primary key auto_increment,
age int check (age>12),
nmae varchar(30));
INSERT INTO emp5(age,name)
VALUES(0,'hj'),(5,'HJ');
select * from emp501;


use dm;
-- create table name should be emp
-- emp_id
-- emp_name
-- emp_designation default data analyst 
-- emp_age 20
CREATE TABLE emp (
    emp_id INT primary key auto_increment,
    emp_name VARCHAR(20),
    emp_designation VARCHAR(50) DEFAULT 'Data Analyst',
    emp_age INT DEFAULT 20);
    
    INSERT INTO emp (emp_id, emp_name, emp_designation, emp_age)
    VALUES
	(2, 'Rahul', 'Developer', 22),
    (3, 'Amit', 'Tester', 23),
    (4, 'Sonal', 'Data Analyst', 20);
    
select * from emp;

-- emp_age 20 to 28 where emp_id is 2

UPDATE emp
SET emp_age = 28
WHERE emp_id = 2;
select * from emp;

-- update emp_designation and emp_age where emp_id is 5
UPDATE emp
SET emp_designation = 'Data Scientist',
    emp_age = 12
WHERE emp_id = 3;

select * from emp;


-- delete entire information regarding emp_id 21
delete from emp where emp_id = 21;

-- delete the iformation where emp_age id 28
delete from emp where emp_age = 28;
select * from emp;


-- i want to delete emp age and emp age and emp name where emp id is 2
update emp set emp_name = null, emp_age = Null where emp_id =3;

select * from emp;

-- Alter table <table name>add<column name><data Type>
-- emp_exp
alter table emp add emp_exp decimal(10,2);
select * from emp;

-- just add one emp_exp
update emp set emp_exp=2.7 where emp_age =20;
select * from emp;


-- add two more column
-- emp_salary
-- emp dept
ALTER TABLE emp
ADD emp_salary INT,
ADD emp_dept VARCHAR(50);

select * from emp;


-- how to drop column
alter table emp drop column emp_salary, drop column emp_dept;
select * from emp;

alter table emp modify emp_designation varchar(60);

alter table emp modify emp_age decimal(10,2);

alter table emp rename column emp_designation to emp_ds;
select * from emp;

alter table emp rename emp90;

-- truncate delete the entire row and drop delete the table permanently from db

use dm;
select * from sales;

-- order id order date order id and country

select orderid,orderdate,country from sales;

select distinct category from sales;

-- extract unique region

select distinct region from sales;


select orderid as id from sales;

-- extract the data releated to technology,
-- extract the data related to east region

select * from sales where category ="Technology";

select * from sales where region ="east";


select * from sales where subcategory="art";

-- extract the data where quantity is greater than 2
select * from sales where quantity>2;

select * from sales where sales <= 10;