76. Find all orders by customers not located in the same cities as their salespeople.

select o.*
from orders o, customers c, salespeople s
where o.cnum = c.cnum
and o.snum = s.snum
and c.city <> s.city;


77. Find all salespeople who have customers with more than one current order.

select distinct s.sname
from salespeople s, customers c, orders o
where s.snum = c.snum
and c.cnum = o.cnum
group by s.sname, c.cnum
having count(o.onum) > 1;


78. Write a query that extracts from the Customers table every customer assigned to a salesperson who currently has at least one other customer (besides the customer being selected) with orders in the Orders table.

select *
from customers c
where exists (
    select *
    from customers c1, orders o
    where c.snum = c1.snum
    and c.cnum <> c1.cnum
    and c1.cnum = o.cnum
);

79. Write a query that selects all customers whose names begin with ‘C’.

select *
from customers
where cname like 'C%';


80. Write a query on the Customers table that will find the highest rating in each city. Put the output in this form : for the city (city) the highest rating is : (rating).

select 'for the city ' || city || ' the highest rating is : ' || max(rating)
from customers
group by city;
