
36. Select all the possible combinations of customers that you can assign.

select a.cname, b.cname 
from customers a, customers b 
where a.cnum < b.cnum;

37. Select all orders that are greater than the average for October 4.

select * from orders 
where amt > (
    select avg(amt) 
    from orders 
    where odate = '1990-10-04'
);

38. Write a select command using a corelated subquery that selects the names and numbers of all customers with ratings equal to the maximum for their city.

select cnum, cname 
from customers a 
where rating = (
    select max(rating) 
    from customers b 
    where a.city = b.city
);

39. Write a query that totals the orders for each day and places the results in descending order.

select odate, sum(amt) 
from orders 
group by odate 
order by sum(amt) desc;

40. Write a select command that produces the rating followed by the name of each customer in San Jose.

select rating, cname 
from customers 
where city = 'San Jose';