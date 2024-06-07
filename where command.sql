use harshada;
select * from customers;
select customerName,contactLastName,city from customers where city="Nantes";

Select * from customers where creditLimit>21000;
Select * from customers where creditLimit<>21000;


Select * from customers where creditLimit between 21000 and 25000;
select * from customers where creditLimit in(21000,71800,118200);