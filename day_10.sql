46. Write a query that produces all pairs of salespeople with themselves as well as duplicate rows with the order reversed.

select s1.sname, s2.sname
from salespeople s1, salespeople s2;

47. Find all salespeople that are located in either Barcelona or London.

select * from salespeople 
where city in ('Barcelona', 'London');

48. Find all salespeople with only one customer.

select * from salespeople 
where snum in (
    select snum 
    from customers 
    group by snum 
    having count(*) = 1
);

49. Write a query that joins the Customer table to itself to find all pairs of customers served by a single salesperson.

select c1.cname, c2.cname, snum
from customers c1, customers c2
where c1.snum = c2.snum 
and c1.cnum < c2.cnum;

50. Write a query that will give you all orders for more than $1000.00 

select * from orders 
where amt > 1000;