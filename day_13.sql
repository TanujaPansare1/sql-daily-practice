61. Produce all combinations of salespeople and customer names such that the former precedes the latter alphabetically, and the latter has a rating of less than 200.

select s.sname, c.cname
from salespeople s, customers c
where s.sname < c.cname
and c.rating < 200;


62. List all Salespeople’s names and the Commission they have earned.
 
select sname, comm
from salespeople;


63. Write a query that produces the names and cities of all customers with the same rating as Hoffman. Write the query using Hoffman’s CNUM rather than his rating, so that it would still be usable if his rating changed.
 
select cname, city
from customers
where rating = (
    select rating
    from customers
    where cnum = 2001
);


64. Find all salespeople for whom there are customers that follow them in alphabetical order.

select distinct s.sname
from salespeople s, customers c
where c.cname > s.sname;


65. Write a query that produces the names and ratings of all customers of all who have above average orders.

select distinct c.cname, c.rating
from customers c, orders o
where c.cnum = o.cnum
and o.amt > (select avg(amt) from orders);


