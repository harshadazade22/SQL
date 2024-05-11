show databases;
create database harshada;
use harshada;
create table student_details(ID int,name char(20),Dept char(10));
select * from student_details;
insert into student_details values(1,"HARSHADA","BCA"),(2,"SEJAL","BCA"),(3,"KEETKI","BSC"),(4,"ANUJA","BCA"),(5,"PRACHI","IT");
select * from student_details;

/*alter works on column*/
alter table student_details
rename column name to student_name;
select * from student_details;

alter table student_details
add column roll_no char(5);
insert into student_details (roll_no) values(5);
update student_details
set roll_no=5 where ID=1;
update student_details
set roll_no=1 where ID=2;

update student_details
set roll_no=10 where roll_no is null;

desc student_details;      /*decs:decribe*/
alter table student_details
modify column ID char(20);

/*update works on row*/
update student_details
set student_name="KETKI"
where student_name="KEETKI";
select * from student_details;

update student_details
set student_name="EKTA"
where student_name="PRACHI";
select * from student_details;

alter table student_details/* modify datatypes*/
modify column dept char (20);

update student_details
set dept="IT"
where dept="BSC";

delete from student_details/*it will delete whole row if where condition satisfies*/
where ID="5";
select * from student_details;
delete from student_details
where roll_no="1";
