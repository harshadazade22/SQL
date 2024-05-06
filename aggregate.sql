show databases;
use sarthak;
select * from employees_1;
select department, avg(salary) as avg_salary from employees_1 
group by department having avg(salary) < 50000;

/*1.The following SQL statement lists the number of customers in each country. 
Only include countries with more than 5 customers:*/
use classicmodels;
select * from customers;
select count(customerName),country from customers group by country having count(customerName)>5;

select count (customerName),customerName from customers group by customerName;

/*2.The following SQL statement lists the number of customers in each country,
 sorted high to low (Only include countries with more than 5 customers):*/
 use w3schools;
 select * from customers;
 select count(customerID),country from customers group by country having count(customerID)>5 order by count(customerID) desc;

/*3.The following SQL statement lists the employees that have registered more than 10 orders:*/
