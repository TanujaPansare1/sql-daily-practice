41. Find all orders with amounts smaller than any amount for a customer in San Jose.
select * from orders 
where amt < any (
    select amt from orders 
    where cnum in (select cnum from customers where city = 'San Jose')
);

42. Find all orders with above average amounts for their customers.
select * from orders o1
where amt > (
    select avg(amt) 
    from orders o2 
    where o1.cnum = o2.cnum
);

 43. Write a query that selects the highest rating in each city.
select city, max(rating) 
from customers 
group by city;

44. Write a query that calculates the amount of the salesperson’s commission on each order by a customer with a rating above 100.00.
select o.onum, s.comm * o.amt as comm_amount
from orders o, customers c, salespeople s
where o.cnum = c.cnum 
and o.snum = s.snum 
and c.rating > 100;

45. Count the customers with ratings above San Jose’s average.
select count(*) 
from customers 
where rating > (
    select avg(rating) 
    from customers 
    where city = 'San Jose'
);