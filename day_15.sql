71. Write a query using ANY or ALL that will find all salespeople who have no customers located in their city.

select sname
from salespeople
where city <> all (
    select city
    from customers
);


72. Write a query using the EXISTS operator that selects all salespeople with customers located in their cities who are not assigned to them.

select s.sname
from salespeople s
where exists (
    select *
    from customers c
    where c.city = s.city
    and c.snum <> s.snum
);


73. Write a query that selects all customers serviced by Peel or Motika.

select c.cname
from customers c, salespeople s
where c.snum = s.snum
and s.sname in ('Peel', 'Motika');


74. Count the number of salespeople registering orders for each day. (If a salesperson has more than one order on a given day, he or she should be counted only once.)

select odate, count(distinct snum)
from orders
group by odate;


75. Find all orders attributed to salespeople in London.

select o.*
from orders o, salespeople s
where o.snum = s.snum
and s.city = 'London';


