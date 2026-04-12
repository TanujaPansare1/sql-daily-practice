Que.16. Find all customers with orders on October 3.

select distinct c.*
from customers c
join orders o
on c.cnum = o.cnum
where o.odate = '10/03/96';

Q.17)) Give the sums of the amounts from the Orders table, grouped by date, eliminating all those dates where the SUM was not at least 2000.00 above the MAX amount.

select odate, sum(amt) as total_amt
from orders
group by odate
having sum(amt) >= max(amt) + 2000;

18. Select all orders that had amounts that were greater than at least one of the orders from October 6.

select *
from orders
where amt > any (
    select amt
    from orders
    where odate = '10/06/96'
);

Q19. Write a query that uses the EXISTS operator to extract all salespeople who have customers with a rating of 300.

select *
from salespeople s
where exists (
    select 1
    from customers c
    where c.snum = s.snum
    and c.rating = 300
);

Q20. Find all pairs of customers having the same rating.

select c1.cname, c2.cname, c1.rating
from customers c1
join customers c2
on c1.rating = c2.rating
and c1.cnum < c2.cnum;