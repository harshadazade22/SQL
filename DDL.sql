show databases;

create database h1;
use h1;
create table student_data(ID int, name char (20),dept char(10));
select * from student_data;
insert into student_data values(1,"HARSHADA","BCA"),(2,"SEJAL","BCA"),(3,"KETKI","BSC");
select name from student_data;
truncate table student_data;
select * from student_data;
drop table student_data;
select * from student_data;

show databases;
select * from student_data;
/*alter works on column */
alter table student_data
rename column name to student_name ;

alter table student_data
add column city char(20);

alter table student_data
drop  column city;


desc student_data;  /* decs:describe*/
alter table student_data
modify column ID char(20);

/*Update works on row */
update student_data
set student_name="CHETANA"
where student_name="HARSHADA";
select * from student_data;



alter table student_data
modify column dept char(20);

update student_data
set dept="ELECTRONICS"
where student_name="CHETANA";

delete from student_data /*it will delete entire row if where conditions satisfies*/
where dept="BSC";
delete from student_data /*it will delete entire row if where conditions satisfies*/
where ID=2;

insert into student_data values(1,123,"BCA"),(2,"SEJAL","BCA"),(3,"KETKI","BSC");

use harshada;
select * from excel1;