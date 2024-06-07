use h1;
drop table t1;
create table t1(id int, name char(20));
insert into t1 values(1,"Chetana"),(2,"Sejal"),("3","Ketki"),(4,"Harshada");
select * from t1;

drop table t2;
create table t2(id int, name char(20));
insert into t2 values(0,"priyanka"),(1,"Chetana"),("3","trupti"),(2,"Harshada");
select * from t2;
/*union 
UNION is used to combine the result sets of two or more SELECT statements into a single result set.
It removes duplicate rows from the combined result set
*/
select id from t1 union select id from t2;
select name from t1 union select name from t2;
select * from t1 union select * from t2;
select id,name from t1 union select id,name from t2;

/*union all
UNION ALL is similar to UNION, but it does not remove duplicate rows. 
It combines all rows from the SELECT statements without any elimination of duplicates.
Use UNION ALL when you want to combine all rows from multiple queries, including duplicate rows if they exist.
*/

select id from t1 union all select id from t2;
select name from t1 union all select name from t2;
select * from t1 union all select * from t2;
select id,name from t1 union all select id,name from t2;

select id,name from t1 
where name="sejal"
union 
select id ,name from t2
where name="harshada";


