/* Date: 09/04/26
   Day 2: SQL Practice - Queries 6 to 10
*/

6. Find distinct salesperson IDs currently linked to orders
select distinct snum 
from orders;

7. List customer names alongside their assigned salesperson names
select c.cname, s.sname 
from customers c, salespeople s 
where c.snum = s.snum;

8. Find salespeople who are managing more than one customer
select sname, snum 
from salespeople 
where snum in (
    select snum 
    from customers 
    group by snum 
    having count(*) > 1
);

9. Count total orders for each rep and sort by highest count
select snum, count(*) 
from orders 
group by snum 
order by count(*) desc;

10. Display all customers if any customer is based in San Jose
select * from customers 
where exists (
    select 1 
    from customers 
    where city = 'San Jose'
);