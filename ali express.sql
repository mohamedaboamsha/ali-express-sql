use master
go
create database ali_express
go
use ali_express
go

create table catagory(
ctatagory_name nvarchar(50),
catagory_id int primary key identity(1,1)
)

create table sup_catagory(
sup_ctatagory_name nvarchar(50),
sup_catagory_id int primary key ,
catagory_id int foreign key references catagory
)

create table users(
user_id1 int primary key ,
user_name1 nvarchar(50),
email nvarchar(50),
password1 binary(64),
user_address nvarchar(200)
)

create table stores(
store_id int primary key ,
store_name nvarchar(100),
manger_id int foreign key references users
)

create table pay_methods(
pay_method_id int primary key,
pay_method_name nvarchar(100)
)

create table products(
product_id int primary key identity(1000,1),
product_name nvarchar(50),
sup_catagory_id int foreign key references sup_catagory,
price float,
store_id int foreign key references stores,
preife_description nvarchar(300)
)

--price in usd



create table offers(
offer_id int primary key ,
product_id int foreign key references products,
persntage float
)

create table colors(
coloring_id int primary key,
the_color nvarchar(200),
product_id int foreign key references products
)


create table sizes(
size_id int primary key,
the_size float,
product_id int foreign key references products
)
create table images(
image_id int primary key,
the_image image,
product_id int foreign key references products

)

create table coupons(
coupon_id int primary key,
coupon_type nvarchar(100),
user_id1 int  foreign key references users 

create table orders(
order_id int primary key ,
user_id1 int foreign key references users,
product_id int foreign key references products,
amount int,
store_id int foreign key references stores,
payment_method_id int foreign key references pay_methods,
color_id int foreign key references colors,
size_id int foreign key references sizes,
coupon_id int unique foreign key references coupons unique
)
--the copouon can only be used once so its unique
)

create table cart(
user_id1 int  foreign key references users,
product_id int foreign key references products
)

create table wish_list(
user_id1 int  foreign key references users,
product_id int foreign key references products
)

create table favorite_stores(
user_id1 int  foreign key references users,
store_id int foreign key references stores
)



create table comments(
comment_id int primary key,
the_comment nvarchar(1000),
product_id int foreign key references products,
rate_out_of_5 float
)




create table header(
head nvarchar(1000)
)

create table tailer(
tail nvarchar(1000)
)


drop table header

drop table tailer

drop table images

alter table users 
alter column password1 nvarchar(64);



--inser values into catagory

insert into catagory (ctatagory_name)
values ('clothes')

insert into catagory (ctatagory_name)
values ('eloctronics')

insert into catagory (ctatagory_name)
values ('jowlery')

insert into catagory (ctatagory_name)
values ('bags')

insert into catagory (ctatagory_name)
values ('shoes')

insert into catagory (ctatagory_name)
values ('house needs')

insert into catagory (ctatagory_name)
values ('games')

--inser values into sup catagory 

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (10,'dresses',1)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (11,'shirts',1)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (12,'tshirt',1)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (13,'phones',2)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (14,'pc',2)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (15,'diamonds',3)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (16,'modern jowleryies',3)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (17,'men bags',4)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (18,'wemen bags',4)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (19,'men shoes',5)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (20,'wemen shoes',5)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (21,'arts',6)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (22,'decores',6)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (23,'kids',7)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (24,'men',7)

insert into sup_catagory (sup_catagory_id,sup_ctatagory_name,catagory_id)
values (25,'build toys',7)


--inser values into users

insert into users 
values(120190878,'khaled rabah elshorafa','khaledopp2@gmail.com','Khaledopp121','gaza')

insert into users 
values(120190765,'majd abu alqombos','amjdaldeen121@gmail.com','majd121','gaza')

insert into users 
values(120190876,'yousef khalaf','yousef2@gmail.com','yousef121','briej')

insert into users 
values(120190970,'hosam abu helal','hosam@gmail.com','hosam121','rafah')

insert into users 
values(120192288,'naser abu zpeda','naser@gmail.com','naser121','rafah')

insert into users 
values(120192262,'mohamed abu amsha','mohamed@gmail.com','mohamed121','bet hanon')

insert into users 
values(120190888,'jehad saleh','jehad@gmail.com','jehad121','gaza')

insert into users 
values(120197844,'khaled elyazji','khaled121@gmail.com','khaled121','rafa')

insert into users 
values(120198987,'ahmed salah','ahmed @gmail.com','ahmed121','gaza')


insert into users
values(120199898,'khaled alswada','khaledsawa@gmail.com','khaledsawa121','briej')



--insert values into stores

insert into stores
values(2323,'khaled products',120190878)

insert into stores
values(2324,'phones',120198987)

insert into stores
values(2325,'pces',120190888)

insert into stores
values(2326,'games store',120199898)

-- insert values in pay methods table

insert into pay_methods 
values (50,'paypal')

insert into pay_methods 
values (60,'master card')

-- insert values into products 

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('Hepburn style',10,20,2323,'good looking dress that has many sizes and colors')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('milan dress',10,30,2323,'good looking dress that has many sizes and colors')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('Garphyttan Crafter',11,11,2323,'good shirts with nice marks and lots of colors and sizes')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('ANT TSHIRT',12,23,2323,'good tshirts with nice marks and lots of colors and sizes')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('COTTON T-SHIRT',12,10,2323,'good tshirts with nice marks and lots of colors and sizes')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('iphone 13',13,680,2324,'128 gb storage and 3 gb ram')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('samsong a02s',13,100,2324,'32 gb storage and 3gb ram')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('hp laptop',14,700,2325,'256 ssd and 8 gb ram core i7')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('crystal 500/100',15,40,2323,'2*6 ml')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('1ct 2ct 3ct',15,50,2323,'silver ring')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('huitan',16,44,2323,'simple and nice')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('anniyo',16,33,2323,'ethiobian')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('eather',17,77,2323,'modern and fasion')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('usp',17,13,2323,'new bags with chargers')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('cross body',18,20,2323,'black color')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('vintage',18,13,2323,'white color')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('Tenis Masculino',19,50,2323,'have sizes and colors')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('Abhoth',19,44,2323,'have sizes and colors')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('Feminino ',20,55,2323,'have sizes and colors')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('Feminino Zapatos Mujer',20,30,2323,'white only')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('Dmoley',21,9,2323,'stuff')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('aterproof Soft Bibs Cute Children',25,10,2326,'air proof')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('snow man',22,10,2323,'artiftial')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('trees',22,19,2323,'artiftial')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('controler',23,10,2326,'controler for pc5')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('pairots barrile',23,20,2326,'cute toy')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('spider man',24,12,2326,'red toy for spider man')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('hulk',24,5,2326,'green toy for hulk')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('logo',25,22,2326,'colorfull logos')

insert into products (product_name,sup_catagory_id,price,store_id,preife_description)
values('plain',25,20,2326,'build a plain')

--insert values into offers

insert into offers
values(70,1000,5)

insert into offers
values(71,1000,5)

insert into offers
values(72,1003,15)

insert into offers
values(73,1004,50)

insert into offers
values(74,1010,33)

insert into offers
values(75,1015,77)

--insert values into colors

insert into colors
values(101,'green',1000)

insert into colors
values(104,'white',1000)

insert into colors
values(102,'black',1000)

insert into colors
values(103,'green',1001)

insert into colors
values(105,'black',1001)

insert into colors
values(106,'yellow',1001)

insert into colors
values(109,'red',1001)

insert into colors
values(107,'black',1002)

insert into colors
values(108,'green',1002)

--add valuess to sizes

insert into sizes
values (201,40,1000)

insert into sizes
values (202,41,1000)

insert into sizes
values (203,42,1000)

insert into sizes
values (204,43,1000)

insert into sizes
values (205,44,1000)

insert into sizes
values (206,39,1001)

insert into sizes
values (207,38,1001)

insert into sizes
values (208,33,1001)


--add column persntage to coupons
alter table coupons
add persntage float

--add values to coupons

insert into coupons
values(300,'new user',120190876,30)


insert into coupons
values(301,'new user',120190970,30)


insert into coupons
values(302,'first perchase',120190765,77)


insert into coupons
values(303,'manger',120190878,20)


insert into coupons
values(304,'old userr',120192288,33)


insert into coupons
values(305,'new user',120192262,30)





--insert values into orders

insert into orders
values(400,120190878,1005,1,2324,50,null,null,303)

insert into orders
values(401,120190765,1002,1,2323,60,107,null,302)

insert into orders
values(402,120190876,1001,1,2323,50,101,201,300)

insert into orders
values(403,120192288,1027,1,2326,60,null,null,304)

--insert into values cart
insert into cart values(120190878,1008)

insert into cart values(120190878,1004)

insert into cart values(120190765,1002)

insert into cart values(120190876,1003)

insert into cart values(120190970,1004)

insert into cart values(120192288,1018)

insert into cart values(120192262,1000)

insert into cart values(120190878,1023)

-- insert values into wish list

insert into wish_list
values(120190878,1009)


insert into wish_list
values(120190878,1004)


insert into wish_list
values(120190970,1007)


-- insert into favort stores

insert into favorite_stores
VALUES (120190878,2323)

insert into favorite_stores
VALUES (120190765,2323)

insert into favorite_stores
VALUES (120190970,2326)

insert into favorite_stores
VALUES (120190878,2326)

insert into favorite_stores
VALUES (120190876,2325)

--add the user id to comments

alter table comments
add user_id1 int foreign key references users 
--insert some comments

insert into comments
values(600,'very nice product that sutisfyied me very much',1007,4.5,120190878)


insert into comments
values(601,'very nice product that sutisfyied me very much',1007,4,120190876)

insert into comments
values(602,'very nice product that sutisfyied me very much',1007,5,120190765)

insert into comments
values(603,'very nice product that sutisfyied me very much',1008,3.5,120192288)

insert into comments
values(604,'very nice product that sutisfyied me very much',1008,4.2,120190970)

insert into comments
values(605,'very nice product that sutisfyied me very much',1008,4.5,120192262)




--change some columns
alter table comments
alter column the_comment nvarchar(300)

--add a column

alter table comments
add the_com12nt nvarchar(300)

--drop a column

alter table comments
drop column the_com12nt





--get all the products info

select *
from products

--get the products at khaled products

select *
from products
where store_id=2323

--get evrey product and its price

select product_name , price
from products

--distinct

select distinct user_id1
from favorite_stores



select distinct user_address
from users


--and or not

select * 
from users
where user_id1>120190800 and user_id1<120190900


select * 
from users
where user_id1<120190800 or user_id1>120190900


select * 
from users
where not user_id1 <120190800 

--order by

select *
from products
order by price asc

--not writing asc or desc result the same as asc

select *
from products
order by price desc

--update 

update stores
set manger_id=120190888
where store_id=2326

update users
set user_name1= 'khaled ihab'
where user_id1=120199898

--delete

delete from offers
where offer_id=75

--top

select top 1*
from products

select top 3 user_name1
from users

--min and max 

select min(price)
from products
where price > 500

select max(price)
from products
where price < 500

  -- count ,sum avg

  select store_id, count(*)
  from products
  group by store_id

  select product_id, avg(rate_out_of_5) 
  from comments
  group by product_id

  
insert into orders
values(404,120190878,1019,5,2323,50,null,null,null)

  select user_id1, sum(amount)
  from orders
  group by user_id1


  --like

  --have khaled in his name

  select *
  from users
  where user_name1 like '%khaled%'

  --starts with an a

  select *
  from users
  where user_name1 like 'a%'

  --ends with an a
  
  select *
  from users
  where user_name1 like '%a'


  --between

  select *
  from users
  where user_id1 between 120190800 and 120190900

  --alias name

  select product_id, avg(rate_out_of_5) [product rate]
  from comments
  group by product_id

  --we can not use as
  
  select product_id, avg(rate_out_of_5) as [product rate]
  from comments
  group by product_id


  --joins
  
  
  select p.product_id,p.product_name,o.order_id,(p.price*o.amount) as [total price]
  from products p , orders o
  where p.[product_id]=o.product_id

  --inner join or normal join

  select p.product_id,p.product_name,o.order_id,(p.price*o.amount) as [total price]
  from products p join  /*or inner join there is no diffrence*/ orders o 
  on p.product_id= o.product_id

  --left outer join

    select p.product_id,p.product_name,o.order_id,(p.price*o.amount) as [total price]
  from products p left outer join   orders o 
  on p.product_id= o.product_id

 --right outer join

  
  select p.product_id,p.product_name,o.order_id,(p.price*o.amount) as [total price]
  from products p right outer join   orders o 
  on p.product_id= o.product_id


   --wont appear what it does becouse of refrintal error integrity

   --full outer join

   
  select p.product_id,p.product_name,o.order_id,(p.price*o.amount) as [total price]
  from products p full outer  join   orders o 
  on p.product_id= o.product_id

  --we can wrigt conditions

  
  select p.product_id,p.product_name,o.order_id,(p.price*o.amount) as [total price]
  from products p  join   orders o 
  on p.product_id= o.product_id
  where o.user_id1=120190878


  --union
  
  select *
  from products 
  where store_id=2325
  union
  select *
  from products 
  where store_id=2326

  --intersect

  
  select o.user_id1, user_name1
  from orders o  left outer join users u
  on o.user_id1=u.user_id1
  intersect
  select o.user_id1, user_name1
  from orders o  left outer join users u
  on o.user_id1=u.user_id1
  where payment_method_id=50



  -- having

  --put agrigate condition in haing

  select store_id ,count(*)
  from products
  group by store_id
  having count(*)>4

  --stored procdure
  go
  CREATE PROCEDURE Allusers
  ASSELECT * FROM users
  
  exec Allusers

  go
  -----------------------------------------------

  CREATE PROCEDURE select_users_by_city @City nvarchar(30)
AS
SELECT * FROM users WHERE user_address = @City

exec select_users_by_city @City=gaza
go

exec select_users_by_city @City=rafah
go

--view

--comment rate out of 5 avg



create view product_rate
as 
select c.product_id, p.product_name, avg(rate_out_of_5) as product_rate
from comments c join products p
on c.product_id=p.product_id
group by c.product_id , p.product_name


select *
from product_rate

backup database ali_express
to disk = 'C:\Users\pcc\Desktop\DB lab/ali_express.bak'
