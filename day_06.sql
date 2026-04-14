26. Select all customers with a rating above 200.00.

select * from customers 
where rating > 200;

27. Count the number of salespeople currently listing orders in the Orders table.

select count(distinct snum) 
from orders;

28. Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer's name and the salesperson's rate of commission.

select c.cname, s.comm
from customers c
join salespeople s on c.snum = s.snum
where s.comm > 0.12;

29. Find salespeople who have multiple customers.

select sname 
from salespeople 
where snum in (
    select snum 
    from customers 
    group by snum 
    having count(*) > 1
);

30. Find salespeople with customers located in their city.

select sname 
from salespeople s
where exists (
    select 1 
    from customers c 
    where c.snum = s.snum 
    and c.city = s.city
);