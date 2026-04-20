51. Write a query that lists each order number followed by the name of the customer who made that order.
select o.onum, c.cname 
from orders o, customers c 
where o.cnum = c.cnum;

52. Write 2 queries that select all salespeople (by name and number) who have customers in their cities who they do not service, one using a join and one a corelated subquery. Which solution is more elegant?

using a join:
select distinct s.snum, s.sname
from salespeople s
join customers c on s.city = c.city
where s.snum != c.snum;

using a correlated subquery:
select snum, sname
from salespeople s
where exists (
    select 1 
    from customers c 
    where c.city = s.city 
    and c.snum != s.snum
);


53. Write a query that selects all customers whose ratings are equal to or greater than ANY (in the SQL sense) of Serres’?
select * from customers
where rating >= any (
    select rating 
    from customers 
    where snum = (select snum from salespeople where sname = 'Serres')
);

54. Write 2 queries that will produce all orders taken on October 3 or October 4.
1: using IN
select * from orders 
where odate in ('1990-10-03', '1990-10-04');

2: using OR
select * from orders 
where odate = '1990-10-03' or odate = '1990-10-04';

55. Write a query that produces all pairs of orders by a given customer. Name that customer and eliminate duplicates
select c.cname, o1.onum, o2.onum
from orders o1, orders o2, customers c
where o1.cnum = o2.cnum 
and o1.cnum = c.cnum
and o1.onum < o2.onum;