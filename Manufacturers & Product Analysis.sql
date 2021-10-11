show databases;
Query: fetch actor first_name & last_name who has taekn part in movie SANTAPARIS. 
tables: Actor , film , film_actor

#CLASS HOMEWORK
show databases;
use sakila;
show tables;
select * from actor;
select * from film;
select * from film_actor ;

# Query 

select f.title from film f join film_actor fa1 on f.film_id=fa1.film_id;

select a.first_name , a.last_name, fa1.film_id, f.title from actor a 
join film_actor fa1 on a.actor_id = fa1.actor_id 
join film f on fa1.film_id = f.film_id 
where title = 'santa paris';
#or
select a.first_name ,a.last_name from actor a join film_actor fa on a.actor_id =fa.actor_id where film_id  in (select film_id from film where title="SANTA PARIS")


#Assignment 1 SQL

show databases;
use kritikasinghal;
show tables;

create table product(
code int not null,
name varchar(100),
price int,
manufacturer int);


drop table product;
select * from product;
insert into product 
values ("1", "Hard drive","240","5"),
(2,'Memory',120,6),
(3,'ZIP drive',150,4),
(4,'Floppy disk',5,6),
(5,'Monitor',240,1),
(6,'DVD drive',180,2),
(7,'CD drive',90,2),
(8,'Printer',270,3),
(9,'Toner cartridge',66,3),
(10,'DVD burner',180,2);

create table manufacturers(
code int not null,
name varchar(50));
insert into manufacturers
values 
(1,'Sony'),
(2,'Creative Labs'),
(3,'Hewlett-Packard'),
(4,'Iomega'),
(5,'Fujitsu'),
(6,'Winchester'),
(7,'Bose');
select * from manufacturers;

#Solutions to Questions.

#Query 1
select name from product;

#Query 2
select name , price from product;

#Query 3
select name, price from product where price <=200;

#Query 4
select name,price from product where price between 60 and 120;

#Query 5
select name, price*100 from product; #select mai hum price*100 likhenge bcoz that it is the part which we want to show in output.

#Query 6
select avg(price) as Average_price from product;

#Query 7
select avg(price) as Average_price from product where manufacturer=2;

#Query 8 
select count(name) as Number_of_product from product where price >=180;

#Query 9
select name, price from product where price >=180 order by price desc, name asc;

#Query 10
select P.*,M.name from product P left join manufacturers M on P.manufacturer=M.Code;
#here the manufacturer of product table and code of manufacturers table are related 

#Query 11
select P.name, P.price,M.name from product P join manufacturers M on P.manufacturer=M.Code; 

#Query 12
select manufacturer as manufacturer_code ,avg(price) from product group by manufacturer;
#or another option
select manufacturer as manufacturer_code ,avg(price) from product group by manufacturer having avg(price);

#Query 13
select M.code, M.name as manufacturer_name , avg(price) from manufacturers M join product P on M.code=P.manufacturer group by manufacturer;
select * from Product;
select * from manufacturers;

#Query 14
select M.name, avg(price) from product P join manufacturers M on P.manufacturer=M.code group by manufacturer having (avg(price)>=150);
#or
select avg(price),M.name from Product, Manufacturer where Product.code=Manufatcurer.code group by manufacturer.name having avg(price)>=150;

#Query 15 
select name , price from product order by price limit 1;
#or
select name, price from product where price in(select min(price)from product;


#Query 16 #Under review
select M.name as manufacturer_name , P.name as product_name , max(P.price) from product P join manufacturers M on P.manufacturer=M.code group by manufacturer;
#or
select m.name,p.name,p.price from product p join manufacturers m 
on p.manufacturer= m.code
group by p.manufacturer
having max(price);

#Query 17 
insert into product values(11,"Loudspeakers",70,2);
select * from product;

#Query 18
update product 
set name="Laser Printer" where Code=8;

#Query 19
select name, price-(price*10/100) as discounted_price from product ;
#or another option 
select name , price*0.9 as discounted_price  from product ;

update product 
set price=price-(price*10/100); #bcoz they have said apply so it means permanent change 

select* from product;

#Query 20
select name , price-(price*10/100) as discounted_price from product where price >=120;

update product 
set price=price-(price*10/100) where price>=120;



