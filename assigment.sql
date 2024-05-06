/*QUESTION: Report the total number of payments received before October 28, 2004.*/
use classicmodels;
select * from payments;
select count(*) from payments where paymentDate< "2004-10-28"; 

/*QUESTION: Retrieve the list of customer numbers for customer who have made a payment before October 28, 2004.*/
select distinct customerNumber from payments where paymentDate< "2004-10-28";

/*QUESTION: Retrieve the details all customers who have made a payment before October 28, 2004.*/
select * from payments where paymentDate< "2004-10-28"; 

/*
 **EXERCISE**: Retrieve details of all the customers in the United States who have made payments between April 1st 2003 and March 31st 2004.
*/

select * from customers;

select * from customers where city='London';


/*QUESTION: Find the total number of payments made each customer before October 28, 2004.

*/
select customerNumber,count(*) as totalpayments from payments where paymentdate < "2004-10-28" group by customerNumber;
select * from payments;


/*QUESTION**: Find the total amount paid by each customer payment before October 28, 2004.*/
select customerNumber,sum(amount) from payments where paymentdate < "2004-10-28" group by customerNumber;

/*QUESTION: Find the total no. of payments and total payment amount for each customer for payments made before October 28, 2004.*/

select customerNumber,sum(amount),count(*) as total_no_payments from payments where paymentdate < "2004-10-28" group by customerNumber;


/*Modify the above query to also show the minimum, maximum and average payment value for each customer.

???*/
select customerNumber,min(amount) as min_payments from payments where paymentdate < "2004-10-28" group by customerNumber;

select customerNumber,max(amount) as max_payments from payments where paymentdate < "2004-10-28" group by customerNumber;

select customerNumber,avg(amount) as avg_payments from payments where paymentdate < "2004-10-28" group by customerNumber;