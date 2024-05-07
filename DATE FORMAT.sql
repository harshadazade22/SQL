use classicmodels;
/*QUESTION: List the largest single payment done by every customer in the year 2004, ordered by the transaction value (highest to lowest).
*/
select * from payments;
select customerNumber,paymentDate, MAX(amount) AS largestPayment from payments 
WHERE YEAR(paymentDate)=2004
group by customerNumber,paymentDate
order by largestPayment DESC limit 5;

/*QUESTION: Show the total payments received month by month for every year.*/
SELECT YEAR(paymentDate) as Years, MONTH(paymentDate) as months, 
ROUND(SUM(amount),2) as totalPayments
from payments 
group by Years,months
order by Years,months;

/*QUESTION: For the above query, format the amount properly with a dollar symbol and comma separation (e.g $26,267.62), and also show the month as a string.*/
DATE_FORMAT(paymentDate, "%b") AS monthName, 
CONCAT("$", FORMAT(SUM(amount), 0)) AS totalPayments
FROM payments 
GROUP BY year, MONTH(paymentDate), monthName
ORDER BY year, MONTH(paymentDate);