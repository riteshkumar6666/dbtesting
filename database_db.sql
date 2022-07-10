  -- show database query
  show databases; 
  -- create database query(create database database_name)
  create database dbtesting;
  -- delete database query(drop database database_name)
  drop database brp;
  -- use database query(use database_name)
  use dbtesting;
  -- show table query(show tables) 
  show tables;
  -- create table query(create table table_name(colm def1,colm def2..))
  create table fruit(
  id int not null auto_increment,
  name varchar(50) not null,
  city varchar(50) not null,
  phone varchar(50) not null,
  primary key(id));
  -- insert in table query
  insert into fruit(id,name,city,phone)
  values(4,"ajay","goa","9858788676");
  -- describe table query( desc table_name) 
  desc fruit;
  desc fruitseller;
  -- alter table query(altr table table_name)
  alter table fruitseller
  drop column phone;
 alter table  fruitseller
 add mob int unique;
  alter table  fruitseller
rename  column mob to  phone;
alter table fruitseller
add email varchar(50) not null;
desc fruitseller;
alter table fruitseller
modify email varchar(45);
desc fruitseller;
drop table fruitseller;
show tables;
-- enum query 
CREATE TABLE size1 (  
    id INT PRIMARY KEY AUTO_INCREMENT,   
    name VARCHAR(35),   
    size ENUM('small', 'medium', 'large', 'x-large')  
);

-- creating enum columns
CREATE TABLE myshirts (
    name VARCHAR(40),
    size ENUM('x-small', 'small', 'medium', 'large', 'x-large')
);
 INSERT INTO myshirts (name, size) VALUES ('dress shirt','large'), ('t-shirt','medium'),
  ('polo shirt','small');
desc myshirts;
SELECT name, size FROM myshirts WHERE size = 'medium';

-- select query
  select * from fruit;
  select id,name,phone from fruit;
  select id,name from fruit;
  --  WHERE clause (SELECT field1, field2,...fieldN table_name1, table_name2...
-- [WHERE condition1 [AND [OR]] condition2.....)
 
 select * from fruit
 where city="noida";
 
 select * from fruit
 where name="rahul";
 
 -- select data with AND & OR operators
 
 CREATE TABLE engineer (
    id int not null,
    Name varchar(255) not null,
    Address varchar(255) not null,
    City varchar(255) not null,
    age varchar(5) not null,
    primary key(id)
);
CREATE TABLE SCHOOL (  
ID INT   NOT NULL,  
NAME varchar(20) NOT NULL,  
AGE INT  NOT NULL,  
city varchar(25),  
PRIMARY KEY (ID)  
);  
desc SCHOOL
 INSERT into SCHOOL(ID,NAME,AGE,city)
  values(1,"ajay","22","mumbai");
  select * from fruit
  where city !="goa";  
  
  select * from fruit
  where city ="goa";
  
  select * from fruit
  where city="mumbai" OR city="goa";
  
  select * from fruit
  order by name desc;
  
  desc engineer;
  alter  table engineer
  drop column Name;
  desc engineer;
  truncate table engineer;
  desc engineer;
  CREATE TABLE Companies (
  id int not null,
  name varchar(50) not null,
  city varchar(50) not null,
  gender varchar(50) not null,
  age varchar(50) not null,
  phone varchar(10) not null,
  primary key(id)
);
desc companies;
insert into companies(id,name,city,gender,age,phone)
values(4,"akash","punjab","M","38","7887098879");
desc companies;

-- SELECT WITH WHERE CLAUSE QUERY
select * from companies;
SELECT id,name
from companies;
select id,phone from companies;
select name from companies;
select * from companies
where name="rehan";

update companies set name="sagar" where id =1;
desc companies;
select * from companies;
select * from companies
where id=2;



create table july(
id int not null,
name varchar(50),
city varchar(50),
phone varchar(50),
primary key(id)
); 
desc july;
show databases;
use dbtesting;
create table vote(
id int not null unique,
name varchar(50) not null,
age int not null check(age>=18),
gender varchar(6) not null,
phone varchar(15) not null unique,
city varchar(40) not null
); 
desc vote;
insert into vote(id,name,age,gender,phone,city)
values(4,"mukesh","44","M","8568956754","gujrat");
desc vote;
select id,name from vote;
select id,name,phone from vote;
select * from vote
where id=1;

select * from vote
where id=1 AND gender="M" ;

select * from vote
where age>24;














 
  


