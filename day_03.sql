q11. match salespeople to customers according to what city they lived in.
select s.sname, c.cname, s.city
from salespeople s
join customers c
on s.city = c.city;


12. find the largest order taken by each salesperson.
select snum, max(amt) as largest_order
from orders
group by snum;


q13. find customers in san jose who have a rating above 200.
select *
from customers
where city = 'san jose' and rating > 200;


q14. list the names and commissions of all salespeople in london.
select sname, comm
from salespeople
where city = 'london';


q15. list all the orders of salesperson motika from the orders table.
select o.*
from orders o
join salespeople s
on o.snum = s.snum
where s.sname = 'motika';
