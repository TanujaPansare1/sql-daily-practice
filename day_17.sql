81. Write a query that will produce the SNUM values of all salespeople with orders currently in the Orders table (without any repeats).

select distinct snum
from orders;


82. Write a query that lists customers in descending order of rating. Output the rating field first, followed by the customer’s names and numbers.

select rating, cname, cnum
from customers
order by rating desc;


83. Find the average commission for salespeople in London.

select avg(comm)
from salespeople
where city = 'London';


84. Find all orders credited to the same salesperson who services Hoffman (CNUM 2001).

select *
from orders
where snum = (
    select snum
    from customers
    where cnum = 2001
);

85. Find all salespeople whose commission is in between 0.10 and 0.12 (both inclusive).

select *
from salespeople
where comm between 0.10 and 0.12;
