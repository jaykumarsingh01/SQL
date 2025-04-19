create database sonal;

use sonal;

create table payment(
customer_id int primary key,
customer_name varchar(50),
method varchar(50),
city varchar(50)
);

insert into payment
(customer_id , customer_name , method , city)
values
(101,"olivia Barrett","Netbanking","Portland"),
(102,"Ethan Sinlair","Credit Card","Miami"),
(103,"Maya Hernandez","Credit card","Seattle"),
(104,"Liam Donovan","Netbanking","denver"),
(105,"Sophia Nguyen","Credit card","New orleans"),
(106,"caleb Foster","Debit Card","Minneapolis"),
(107,"Ava Patel","Debit card","Phoenix"),
(108,"Lucas Carter","Netbanking","Bostan"),
(109,"Isabella Martinez","Netbanking","Nashville"),
(110,"Jackson Brooks","Creadit card","Boston");


select method, count(customer_name) 
from payment
group by method;

