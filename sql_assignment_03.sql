# Assignment 03
use ineuron;
create table skill_info(
id int,
technology varchar(30) not null
);

insert into skill_info values
(1,"DS"), (1,"Python"),(1,"Maths"),(1,"SQL"),(1,"Tablue"),
(2,"Python"),(2,"SQL"),(2,"Maths"),(2,"Tablue"),(2,"Physics"),
(3,"DS"),(3,"Python"),(3,"SQL"),(3,"Maths"),(3,"Tablue"),
(4,"Physics"),(4,"Python"),(4,"SQL"),(4,"Maths"),(4,"Tablue"),
(5,"Python"),(5,"SQL"),(5,"DS"),(5,"Tablue"),(5,"Physics");


select * from skill_info;

# query : List the candidate id who posses all the required skills ( DS, Python , SQL, Tablue)

select id 
from skill_info 
where technology = "DS" and id in 
(select id from skill_info where technology="Python" and id in
( select id from skill_info where technology="SQl"));


create table product_info(prod_id int, prod_name varchar(30));
insert into product_info values
(101, "Blog"),(102,"Youtube"),(103,"Education");
select * from product_info;
select * from product_info_likes;
drop table product_info_likes;

create table product_info_likes(
user_id int,
prod_id int, 
no_of_likes int,
date_of_like date);

insert into product_info_likes values
(1,101,100,"2023-08-01"),(2,102,110,"2023-08-02"),(3,103,0,"2023-08-03");

select * from product_info_likes;

# Query : return id from product info that has 0 likes.

select prod_id from product_info_likes where no_of_likes=0;
select prod_id, user_id from product_info_likes where no_of_likes=0;