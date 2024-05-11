use h1;
drop table if exists Departments;
create table Departments(Dept_ID int, Dept_Name varchar(25),Student_name varchar(25),Joinig_date date);
select * from Departments;
desc Departments;
insert into Departments values(1,"Electrical","Sarthak","2023-04-08");
insert into Departments values(2,"Electrical","chetana","2023-06-08");
insert into Departments values(3,"Mechanical","Sahil","2023-09-06");
insert into Departments values(4,"Computer","Sayli","2023-08-08");
insert into Departments values(1,"Electrical","Sarthak",null);

alter table Departments 
add column city varchar(25) not null;    /* not null constraist */

insert into Departments values(1,"Electronics","Priyanks",null,"Ratnagiri");
insert into Departments values(5,"computer","Trupti",null,null);
select * from departments;

alter table departments 
modify column dept_id int unique; /*unique constraint*/
drop table departments;


drop table if exists person;
create table person(ID int auto_increment primary key,lastname varchar(25) not null,firstname varchar(25) unique);
select * from person;
alter table person
add column age int check (age>=18);  /* check constraint*/
insert into person values(1,"vasave","chetana",54);
insert into person values(3,"jaiswal","sarthak",17);
insert into person values(4,"shahu","sejal",18);

drop table if exists person;
create table person(ID int auto_increment primary key, lastname varchar(25) not null,firstname varchar(25) unique,age int,city varchar(25),
constraint check_person check(age>=18 and city="pune"));
insert into person values(2,"vasave","sahil",21,"pune");
insert into person values(3,"jaiwal","sarthak",45,"mumbai");
insert into person values(9,"iuildlk","sjhhgs",75,null);
insert into person values(10,"iuilsu","vbsdbh",14,"Pune");
insert into person values(22,"zade","harshada",20,"pune");
select * from person;


drop table if exists person;
create table person(ID int auto_increment primary key,lastname varchar(25) not null,firstname varchar(25) unique,age int,city varchar(25)default "PUNE"); 
insert into person values(2,"vasave","sahil",21,"pune");
insert into person values(3,"jaiwal","sarthak",45,"mumbai");
insert into person values(9,"iuildlk","sjhhgs",75,null);
insert into person values(22,"zade","harshada",20,"pune");
insert into person (ID,lastname,firstname) values(11,"ssa","cs");
insert into person(ID,lastname,firstname,age) values(14,"jgfg","rty",45);
insert into person(lastname,firstname,age) values("dg","hg",23);
select * from person;

/* index constraint is used to retrive data from database fasteer than any other way */
select * from person;
create index index1
on person(ID,lastname,firstname,city);
show indexes from person;

select * from departments;
create index ABC
on departments (Dept_ID,Dept_Name);
show indexes from departments ;

drop index ABC on departments;

/**Autoincrement*/
drop table person;
create table person(Person_ID int not null auto_increment,lastname varchar(25),primary key (Person_ID));
select * from person;
insert into person(lastname) values("shahu");
insert into person(lastname) values("zade");
insert into person values(4,"vasave");
insert into person(lastname) values("upase");

 /*view*/
 select * from departments;
 create view ABC as
 select Dept_ID,student_name from departments;
 select * from ABC;
 
 
 select * from ABC where dept_id=3;
 
 drop view ABC;
 

