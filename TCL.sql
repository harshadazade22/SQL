/*TCL commands
1.commit: used to save the changes permenantly
2.rollback: Used to undo one or more changes
3.savepoint: Used to save the changes temporarily so that it can be rolled back to a particular point
-DML commnads insert,delete,update this are transaction in a table: not permanant
- turn off Auto commit
*/
use h1;
drop table student_1;
create table student_1(NAME char(20),ID int,ROLL_NO int(5));
select * from student_1;
insert into student_1 values("sejal",20,123),("harshada",11,124),("ketki",2,124);
select * from student_1;

/*rollback*/
start transaction;
insert into student_1 values("shail",23,125);
select * from student_1;
rollback;

/*commit*/
start transaction;
insert into student_1 values("neha",12,126);
select * from student_1;

delete from student_1 where ID=12;

alter table student_1 add column city char(20);
select * from student_1;
commit;
rollback;

start transaction;
update student_1 set NAME="shali" where ID=124;
commit;
rollback;

/*savepoint*/
use h1;

start transaction;
savepoint s1;
insert into student_1 values("shaail",23,127);
select * from student_1;

savepoint s2;
update student_1 set name="chetna" where id=23;

rollback to s1;

use h1;
start transaction;
savepoint t1;
insert into student_1 values("riya",3,128,"nagppur");
select * from student_1
rollback to t1;
