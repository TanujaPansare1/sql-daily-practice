86. Write a query that will give you the names and cities of all salespeople in London with a commission above 0.10.

select sname, city
from salespeople
where city = 'London'
and comm > 0.10;

87. What will be the output from the following query?
    SELECT * FROM ORDERS
    where (amt < 1000 OR NOT (odate = 10/03/1996 AND cnum > 2003));
   
    returns all orders where amount is less than 1000 or orders that do not satisfy both conditions (odate = '10/03/1996' and cnum > 2003).

88. Write a query that selects each customer’s smallest order.
 
select cnum, min(amt)
from orders
group by cnum;


89. Write a query that selects the first customer in alphabetical order whose name begins with G.

select *
from customers
where cname like 'G%'
order by cname
limit 1;


90. Write a query that counts the number of different nonNULL city values in the Customers table.

select count(distinct city)
from customers
where city is not null;

