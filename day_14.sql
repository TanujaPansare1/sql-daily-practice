
66. Find the SUM of all purchases from the Orders table.

select sum(amt)
from orders;


67. Write a SELECT command that produces the order number, amount and date for all rows in the order table.
 
select onum, amt, odate
from orders;


68. Count the number of nonNULL rating fields in the Customers table (including repeats).
 
select count(rating)
from customers;


69. Write a query that gives the names of both the salesperson and the customer for each order after the order number.

select o.onum, s.sname, c.cname
from orders o, salespeople s, customers c
where o.snum = s.snum
and o.cnum = c.cnum;


70. List the commissions of all salespeople servicing customers in London.
 
select distinct s.comm
from salespeople s, customers c
where s.snum = c.snum
and c.city = 'London';

