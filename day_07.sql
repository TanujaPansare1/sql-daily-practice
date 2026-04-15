//Day 7: SQL Practice - Queries 31 to 35


31. Find all salespeople whose name starts with ‘P’ and the fourth character is ‘l’.
select * from salespeople 
where sname like 'P__l%';

32. Write a query that uses a subquery to obtain all orders for the customer named Cisneros. Assume you do not know his customer number.
select * from orders 
where cnum = (
    select cnum from customers where cname = 'Cisneros'
);

33. Find the largest orders for Serres and Rifkin.
select s.sname, max(o.amt) as largest_order
from orders o
join salespeople s on o.snum = s.snum
where s.sname in ('Serres', 'Rifkin')
group by s.sname;

34. Extract the Salespeople table in the following order : SNUM, SNAME, COMMISSION, CITY.
select snum, sname, comm, city 
from salespeople;

35. Select all customers whose names fall in between ‘A’ and ‘G’ alphabetical range.
select * from customers 
where cname >= 'A' and cname < 'H';