56. Find only those customers whose ratings are higher than every customer in Rome.
select * from customers 
where rating > all (
    select rating from customers where city = 'Rome'
);

57. Write a query on the Customers table whose output will exclude all customers with a rating <= 100.00, unless they are located in Rome.
select * from customers 
where rating > 100 or city = 'Rome';

58. Find all rows from the Customers table for which the salesperson number is 1001.
select * from customers 
where snum = 1001;

59. Find the total amount in Orders for each salesperson for whom this total is greater than the amount of the largest order in the table.
select snum, sum(amt) 
from orders 
group by snum 
having sum(amt) > (select max(amt) from orders);

60. Write a query that selects all orders save those with zeroes or NULLs in the amount field.
select * from orders 
where amt > 0 and amt is not null;